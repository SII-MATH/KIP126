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
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 55 => [[4,4,4,8]]
  | 64 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 77 => [[4,4,4,4,8]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 123 => [[3,4,4,4,4,4,4]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 146 => []
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 184 => []
  | 188 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 324 => []
  | 335 => []
  | 629 => []
  | 691 => []
  | 933 => []
  | 1050 => []
  | 1319 => []
  | 1434 => []
  | 1445 => []
  | 1644 => []
  | 1910 => []
  | 1911 => []
  | 1971 => []
  | 2003 => []
  | 2006 => []
  | 2007 => []
  | 2009 => []
  | 2045 => []
  | 2067 => []
  | 2104 => []
  | 2108 => []
  | 2134 => []
  | 2207 => []
  | 2209 => []
  | 2210 => []
  | 2248 => []
  | 2286 => []
  | 2315 => []
  | 2349 => []
  | 2352 => []
  | 2382 => []
  | 2383 => []
  | 2444 => []
  | 2445 => []
  | 2446 => []
  | 2447 => []
  | 2496 => []
  | 2497 => []
  | 2498 => []
  | 2501 => []
  | 2555 => []
  | 2556 => []
  | 2557 => []
  | 2560 => []
  | 2585 => []
  | 2586 => []
  | 2587 => []
  | 2588 => []
  | 2632 => []
  | 2633 => []
  | 2634 => []
  | 2635 => []
  | 2636 => []
  | 2682 => []
  | 2683 => []
  | 2684 => []
  | 2748 => []
  | 2750 => []
  | 2805 => []
  | 2806 => []
  | 2807 => []
  | _ => []
def map_27_253 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20928 : InImage map_27_253 image20928 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20928 : Bundle := named_bundle% "RealMapCertificates/relations/basis20928.json"
theorem reductionProof20928 : EqualModuloRelations reduction20928.relations reduction20928.input reduction20928.output := by lin_cert using reduction20928.terms
theorem substitutionProof20928 : IsMapEvaluation generatorImages reduction20928.relations [2445] reduction20928.output := by lin_cert using reduction20928.terms
def image20929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20929 : InImage map_27_253 image20929 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20929 : Bundle := named_bundle% "RealMapCertificates/relations/basis20929.json"
theorem reductionProof20929 : EqualModuloRelations reduction20929.relations reduction20929.input reduction20929.output := by lin_cert using reduction20929.terms
theorem substitutionProof20929 : IsMapEvaluation generatorImages reduction20929.relations [2444] reduction20929.output := by lin_cert using reduction20929.terms
def image20930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20930 : InImage map_27_253 image20930 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20930 : Bundle := named_bundle% "RealMapCertificates/relations/basis20930.json"
theorem reductionProof20930 : EqualModuloRelations reduction20930.relations reduction20930.input reduction20930.output := by lin_cert using reduction20930.terms
theorem substitutionProof20930 : IsMapEvaluation generatorImages reduction20930.relations [9,13,13,933] reduction20930.output := by lin_cert using reduction20930.terms
def image20931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20931 : InImage map_27_253 image20931 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20931 : Bundle := named_bundle% "RealMapCertificates/relations/basis20931.json"
theorem reductionProof20931 : EqualModuloRelations reduction20931.relations reduction20931.input reduction20931.output := by lin_cert using reduction20931.terms
theorem substitutionProof20931 : IsMapEvaluation generatorImages reduction20931.relations [8,9,1445] reduction20931.output := by lin_cert using reduction20931.terms
def image20932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20932 : InImage map_27_253 image20932 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20932 : Bundle := named_bundle% "RealMapCertificates/relations/basis20932.json"
theorem reductionProof20932 : EqualModuloRelations reduction20932.relations reduction20932.input reduction20932.output := by lin_cert using reduction20932.terms
theorem substitutionProof20932 : IsMapEvaluation generatorImages reduction20932.relations [1,2382] reduction20932.output := by lin_cert using reduction20932.terms
def image20933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20933 : InImage map_27_253 image20933 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20933 : Bundle := named_bundle% "RealMapCertificates/relations/basis20933.json"
theorem reductionProof20933 : EqualModuloRelations reduction20933.relations reduction20933.input reduction20933.output := by lin_cert using reduction20933.terms
theorem substitutionProof20933 : IsMapEvaluation generatorImages reduction20933.relations [0,0,0,0,0,2286] reduction20933.output := by lin_cert using reduction20933.terms
def map_27_254 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21222 : InImage map_27_254 image21222 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21222 : Bundle := named_bundle% "RealMapCertificates/relations/basis21222.json"
theorem reductionProof21222 : EqualModuloRelations reduction21222.relations reduction21222.input reduction21222.output := by lin_cert using reduction21222.terms
theorem substitutionProof21222 : IsMapEvaluation generatorImages reduction21222.relations [2497] reduction21222.output := by lin_cert using reduction21222.terms
def image21223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21223 : InImage map_27_254 image21223 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21223 : Bundle := named_bundle% "RealMapCertificates/relations/basis21223.json"
theorem reductionProof21223 : EqualModuloRelations reduction21223.relations reduction21223.input reduction21223.output := by lin_cert using reduction21223.terms
theorem substitutionProof21223 : IsMapEvaluation generatorImages reduction21223.relations [2496] reduction21223.output := by lin_cert using reduction21223.terms
def image21224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21224 : InImage map_27_254 image21224 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21224 : Bundle := named_bundle% "RealMapCertificates/relations/basis21224.json"
theorem reductionProof21224 : EqualModuloRelations reduction21224.relations reduction21224.input reduction21224.output := by lin_cert using reduction21224.terms
theorem substitutionProof21224 : IsMapEvaluation generatorImages reduction21224.relations [8,8,146,324] reduction21224.output := by lin_cert using reduction21224.terms
def image21225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21225 : InImage map_27_254 image21225 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21225 : Bundle := named_bundle% "RealMapCertificates/relations/basis21225.json"
theorem reductionProof21225 : EqualModuloRelations reduction21225.relations reduction21225.input reduction21225.output := by lin_cert using reduction21225.terms
theorem substitutionProof21225 : IsMapEvaluation generatorImages reduction21225.relations [3,2207] reduction21225.output := by lin_cert using reduction21225.terms
def image21226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21226 : InImage map_27_254 image21226 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21226 : Bundle := named_bundle% "RealMapCertificates/relations/basis21226.json"
theorem reductionProof21226 : EqualModuloRelations reduction21226.relations reduction21226.input reduction21226.output := by lin_cert using reduction21226.terms
theorem substitutionProof21226 : IsMapEvaluation generatorImages reduction21226.relations [0,0,0,0,2349] reduction21226.output := by lin_cert using reduction21226.terms
def map_27_255 : Matrix 0 14 := fun i j => ([] : List Bool)[i.val*14+j.val]!
def image21571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21571 : InImage map_27_255 image21571 := by lin_cert using (fun j : Fin 14 => decide (j.val = 0))
def reduction21571 : Bundle := named_bundle% "RealMapCertificates/relations/basis21571.json"
theorem reductionProof21571 : EqualModuloRelations reduction21571.relations reduction21571.input reduction21571.output := by lin_cert using reduction21571.terms
theorem substitutionProof21571 : IsMapEvaluation generatorImages reduction21571.relations [2556] reduction21571.output := by lin_cert using reduction21571.terms
def image21572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21572 : InImage map_27_255 image21572 := by lin_cert using (fun j : Fin 14 => decide (j.val = 1))
def reduction21572 : Bundle := named_bundle% "RealMapCertificates/relations/basis21572.json"
theorem reductionProof21572 : EqualModuloRelations reduction21572.relations reduction21572.input reduction21572.output := by lin_cert using reduction21572.terms
theorem substitutionProof21572 : IsMapEvaluation generatorImages reduction21572.relations [2555] reduction21572.output := by lin_cert using reduction21572.terms
def image21573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21573 : InImage map_27_255 image21573 := by lin_cert using (fun j : Fin 14 => decide (j.val = 2))
def reduction21573 : Bundle := named_bundle% "RealMapCertificates/relations/basis21573.json"
theorem reductionProof21573 : EqualModuloRelations reduction21573.relations reduction21573.input reduction21573.output := by lin_cert using reduction21573.terms
theorem substitutionProof21573 : IsMapEvaluation generatorImages reduction21573.relations [13,75,691] reduction21573.output := by lin_cert using reduction21573.terms
def image21574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21574 : InImage map_27_255 image21574 := by lin_cert using (fun j : Fin 14 => decide (j.val = 3))
def reduction21574 : Bundle := named_bundle% "RealMapCertificates/relations/basis21574.json"
theorem reductionProof21574 : EqualModuloRelations reduction21574.relations reduction21574.input reduction21574.output := by lin_cert using reduction21574.terms
theorem substitutionProof21574 : IsMapEvaluation generatorImages reduction21574.relations [13,13,1319] reduction21574.output := by lin_cert using reduction21574.terms
def image21575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21575 : InImage map_27_255 image21575 := by lin_cert using (fun j : Fin 14 => decide (j.val = 4))
def reduction21575 : Bundle := named_bundle% "RealMapCertificates/relations/basis21575.json"
theorem reductionProof21575 : EqualModuloRelations reduction21575.relations reduction21575.input reduction21575.output := by lin_cert using reduction21575.terms
theorem substitutionProof21575 : IsMapEvaluation generatorImages reduction21575.relations [8,1911] reduction21575.output := by lin_cert using reduction21575.terms
def image21576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21576 : InImage map_27_255 image21576 := by lin_cert using (fun j : Fin 14 => decide (j.val = 5))
def reduction21576 : Bundle := named_bundle% "RealMapCertificates/relations/basis21576.json"
theorem reductionProof21576 : EqualModuloRelations reduction21576.relations reduction21576.input reduction21576.output := by lin_cert using reduction21576.terms
theorem substitutionProof21576 : IsMapEvaluation generatorImages reduction21576.relations [8,1910] reduction21576.output := by lin_cert using reduction21576.terms
def image21577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21577 : InImage map_27_255 image21577 := by lin_cert using (fun j : Fin 14 => decide (j.val = 6))
def reduction21577 : Bundle := named_bundle% "RealMapCertificates/relations/basis21577.json"
theorem reductionProof21577 : EqualModuloRelations reduction21577.relations reduction21577.input reduction21577.output := by lin_cert using reduction21577.terms
theorem substitutionProof21577 : IsMapEvaluation generatorImages reduction21577.relations [3,2248] reduction21577.output := by lin_cert using reduction21577.terms
def image21578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21578 : InImage map_27_255 image21578 := by lin_cert using (fun j : Fin 14 => decide (j.val = 7))
def reduction21578 : Bundle := named_bundle% "RealMapCertificates/relations/basis21578.json"
theorem reductionProof21578 : EqualModuloRelations reduction21578.relations reduction21578.input reduction21578.output := by lin_cert using reduction21578.terms
theorem substitutionProof21578 : IsMapEvaluation generatorImages reduction21578.relations [2,2382] reduction21578.output := by lin_cert using reduction21578.terms
def image21579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21579 : InImage map_27_255 image21579 := by lin_cert using (fun j : Fin 14 => decide (j.val = 8))
def reduction21579 : Bundle := named_bundle% "RealMapCertificates/relations/basis21579.json"
theorem reductionProof21579 : EqualModuloRelations reduction21579.relations reduction21579.input reduction21579.output := by lin_cert using reduction21579.terms
theorem substitutionProof21579 : IsMapEvaluation generatorImages reduction21579.relations [1,2446] reduction21579.output := by lin_cert using reduction21579.terms
def image21580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21580 : InImage map_27_255 image21580 := by lin_cert using (fun j : Fin 14 => decide (j.val = 9))
def reduction21580 : Bundle := named_bundle% "RealMapCertificates/relations/basis21580.json"
theorem reductionProof21580 : EqualModuloRelations reduction21580.relations reduction21580.input reduction21580.output := by lin_cert using reduction21580.terms
theorem substitutionProof21580 : IsMapEvaluation generatorImages reduction21580.relations [0,2498] reduction21580.output := by lin_cert using reduction21580.terms
def image21581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21581 : InImage map_27_255 image21581 := by lin_cert using (fun j : Fin 14 => decide (j.val = 10))
def reduction21581 : Bundle := named_bundle% "RealMapCertificates/relations/basis21581.json"
theorem reductionProof21581 : EqualModuloRelations reduction21581.relations reduction21581.input reduction21581.output := by lin_cert using reduction21581.terms
theorem substitutionProof21581 : IsMapEvaluation generatorImages reduction21581.relations [0,3,2210] reduction21581.output := by lin_cert using reduction21581.terms
def image21582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21582 : InImage map_27_255 image21582 := by lin_cert using (fun j : Fin 14 => decide (j.val = 11))
def reduction21582 : Bundle := named_bundle% "RealMapCertificates/relations/basis21582.json"
theorem reductionProof21582 : EqualModuloRelations reduction21582.relations reduction21582.input reduction21582.output := by lin_cert using reduction21582.terms
theorem substitutionProof21582 : IsMapEvaluation generatorImages reduction21582.relations [0,3,2209] reduction21582.output := by lin_cert using reduction21582.terms
def image21583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21583 : InImage map_27_255 image21583 := by lin_cert using (fun j : Fin 14 => decide (j.val = 12))
def reduction21583 : Bundle := named_bundle% "RealMapCertificates/relations/basis21583.json"
theorem reductionProof21583 : EqualModuloRelations reduction21583.relations reduction21583.input reduction21583.output := by lin_cert using reduction21583.terms
theorem substitutionProof21583 : IsMapEvaluation generatorImages reduction21583.relations [0,0,2447] reduction21583.output := by lin_cert using reduction21583.terms
def image21584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21584 : InImage map_27_255 image21584 := by lin_cert using (fun j : Fin 14 => decide (j.val = 13))
def reduction21584 : Bundle := named_bundle% "RealMapCertificates/relations/basis21584.json"
theorem reductionProof21584 : EqualModuloRelations reduction21584.relations reduction21584.input reduction21584.output := by lin_cert using reduction21584.terms
theorem substitutionProof21584 : IsMapEvaluation generatorImages reduction21584.relations [0,0,0,0,0,2352] reduction21584.output := by lin_cert using reduction21584.terms
def map_27_256 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21828 : InImage map_27_256 image21828 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21828 : Bundle := named_bundle% "RealMapCertificates/relations/basis21828.json"
theorem reductionProof21828 : EqualModuloRelations reduction21828.relations reduction21828.input reduction21828.output := by lin_cert using reduction21828.terms
theorem substitutionProof21828 : IsMapEvaluation generatorImages reduction21828.relations [2585] reduction21828.output := by lin_cert using reduction21828.terms
def image21829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21829 : InImage map_27_256 image21829 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21829 : Bundle := named_bundle% "RealMapCertificates/relations/basis21829.json"
theorem reductionProof21829 : EqualModuloRelations reduction21829.relations reduction21829.input reduction21829.output := by lin_cert using reduction21829.terms
theorem substitutionProof21829 : IsMapEvaluation generatorImages reduction21829.relations [13,188,335] reduction21829.output := by lin_cert using reduction21829.terms
def image21830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21830 : InImage map_27_256 image21830 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21830 : Bundle := named_bundle% "RealMapCertificates/relations/basis21830.json"
theorem reductionProof21830 : EqualModuloRelations reduction21830.relations reduction21830.input reduction21830.output := by lin_cert using reduction21830.terms
theorem substitutionProof21830 : IsMapEvaluation generatorImages reduction21830.relations [13,13,13,933] reduction21830.output := by lin_cert using reduction21830.terms
def image21831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21831 : InImage map_27_256 image21831 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21831 : Bundle := named_bundle% "RealMapCertificates/relations/basis21831.json"
theorem reductionProof21831 : EqualModuloRelations reduction21831.relations reduction21831.input reduction21831.output := by lin_cert using reduction21831.terms
theorem substitutionProof21831 : IsMapEvaluation generatorImages reduction21831.relations [8,13,1445] reduction21831.output := by lin_cert using reduction21831.terms
def image21832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21832 : InImage map_27_256 image21832 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21832 : Bundle := named_bundle% "RealMapCertificates/relations/basis21832.json"
theorem reductionProof21832 : EqualModuloRelations reduction21832.relations reduction21832.input reduction21832.output := by lin_cert using reduction21832.terms
theorem substitutionProof21832 : IsMapEvaluation generatorImages reduction21832.relations [1,2498] reduction21832.output := by lin_cert using reduction21832.terms
def image21833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21833 : InImage map_27_256 image21833 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21833 : Bundle := named_bundle% "RealMapCertificates/relations/basis21833.json"
theorem reductionProof21833 : EqualModuloRelations reduction21833.relations reduction21833.input reduction21833.output := by lin_cert using reduction21833.terms
theorem substitutionProof21833 : IsMapEvaluation generatorImages reduction21833.relations [0,2557] reduction21833.output := by lin_cert using reduction21833.terms
def image21834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21834 : InImage map_27_256 image21834 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21834 : Bundle := named_bundle% "RealMapCertificates/relations/basis21834.json"
theorem reductionProof21834 : EqualModuloRelations reduction21834.relations reduction21834.input reduction21834.output := by lin_cert using reduction21834.terms
theorem substitutionProof21834 : IsMapEvaluation generatorImages reduction21834.relations [0,7,1971] reduction21834.output := by lin_cert using reduction21834.terms
def image21835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21835 : InImage map_27_256 image21835 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21835 : Bundle := named_bundle% "RealMapCertificates/relations/basis21835.json"
theorem reductionProof21835 : EqualModuloRelations reduction21835.relations reduction21835.input reduction21835.output := by lin_cert using reduction21835.terms
theorem substitutionProof21835 : IsMapEvaluation generatorImages reduction21835.relations [0,0,2501] reduction21835.output := by lin_cert using reduction21835.terms
def map_27_257 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22174 : InImage map_27_257 image22174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22174 : Bundle := named_bundle% "RealMapCertificates/relations/basis22174.json"
theorem reductionProof22174 : EqualModuloRelations reduction22174.relations reduction22174.input reduction22174.output := by lin_cert using reduction22174.terms
theorem substitutionProof22174 : IsMapEvaluation generatorImages reduction22174.relations [2632] reduction22174.output := by lin_cert using reduction22174.terms
def image22175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22175 : InImage map_27_257 image22175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22175 : Bundle := named_bundle% "RealMapCertificates/relations/basis22175.json"
theorem reductionProof22175 : EqualModuloRelations reduction22175.relations reduction22175.input reduction22175.output := by lin_cert using reduction22175.terms
theorem substitutionProof22175 : IsMapEvaluation generatorImages reduction22175.relations [8,8,16,64,324] reduction22175.output := by lin_cert using reduction22175.terms
def image22176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22176 : InImage map_27_257 image22176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22176 : Bundle := named_bundle% "RealMapCertificates/relations/basis22176.json"
theorem reductionProof22176 : EqualModuloRelations reduction22176.relations reduction22176.input reduction22176.output := by lin_cert using reduction22176.terms
theorem substitutionProof22176 : IsMapEvaluation generatorImages reduction22176.relations [3,2315] reduction22176.output := by lin_cert using reduction22176.terms
def image22177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22177 : InImage map_27_257 image22177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22177 : Bundle := named_bundle% "RealMapCertificates/relations/basis22177.json"
theorem reductionProof22177 : EqualModuloRelations reduction22177.relations reduction22177.input reduction22177.output := by lin_cert using reduction22177.terms
theorem substitutionProof22177 : IsMapEvaluation generatorImages reduction22177.relations [3,3,2045] reduction22177.output := by lin_cert using reduction22177.terms
def image22178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22178 : InImage map_27_257 image22178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22178 : Bundle := named_bundle% "RealMapCertificates/relations/basis22178.json"
theorem reductionProof22178 : EqualModuloRelations reduction22178.relations reduction22178.input reduction22178.output := by lin_cert using reduction22178.terms
theorem substitutionProof22178 : IsMapEvaluation generatorImages reduction22178.relations [0,7,2003] reduction22178.output := by lin_cert using reduction22178.terms
def map_27_258 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image22537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22537 : InImage map_27_258 image22537 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction22537 : Bundle := named_bundle% "RealMapCertificates/relations/basis22537.json"
theorem reductionProof22537 : EqualModuloRelations reduction22537.relations reduction22537.input reduction22537.output := by lin_cert using reduction22537.terms
theorem substitutionProof22537 : IsMapEvaluation generatorImages reduction22537.relations [9,13,1434] reduction22537.output := by lin_cert using reduction22537.terms
def image22538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22538 : InImage map_27_258 image22538 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction22538 : Bundle := named_bundle% "RealMapCertificates/relations/basis22538.json"
theorem reductionProof22538 : EqualModuloRelations reduction22538.relations reduction22538.input reduction22538.output := by lin_cert using reduction22538.terms
theorem substitutionProof22538 : IsMapEvaluation generatorImages reduction22538.relations [8,2009] reduction22538.output := by lin_cert using reduction22538.terms
def image22539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22539 : InImage map_27_258 image22539 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction22539 : Bundle := named_bundle% "RealMapCertificates/relations/basis22539.json"
theorem reductionProof22539 : EqualModuloRelations reduction22539.relations reduction22539.input reduction22539.output := by lin_cert using reduction22539.terms
theorem substitutionProof22539 : IsMapEvaluation generatorImages reduction22539.relations [8,2006] reduction22539.output := by lin_cert using reduction22539.terms
def image22540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22540 : InImage map_27_258 image22540 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction22540 : Bundle := named_bundle% "RealMapCertificates/relations/basis22540.json"
theorem reductionProof22540 : EqualModuloRelations reduction22540.relations reduction22540.input reduction22540.output := by lin_cert using reduction22540.terms
theorem substitutionProof22540 : IsMapEvaluation generatorImages reduction22540.relations [1,7,2003] reduction22540.output := by lin_cert using reduction22540.terms
def image22541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22541 : InImage map_27_258 image22541 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction22541 : Bundle := named_bundle% "RealMapCertificates/relations/basis22541.json"
theorem reductionProof22541 : EqualModuloRelations reduction22541.relations reduction22541.input reduction22541.output := by lin_cert using reduction22541.terms
theorem substitutionProof22541 : IsMapEvaluation generatorImages reduction22541.relations [1,5,2067] reduction22541.output := by lin_cert using reduction22541.terms
def image22542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22542 : InImage map_27_258 image22542 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction22542 : Bundle := named_bundle% "RealMapCertificates/relations/basis22542.json"
theorem reductionProof22542 : EqualModuloRelations reduction22542.relations reduction22542.input reduction22542.output := by lin_cert using reduction22542.terms
theorem substitutionProof22542 : IsMapEvaluation generatorImages reduction22542.relations [0,2634] reduction22542.output := by lin_cert using reduction22542.terms
def image22543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22543 : InImage map_27_258 image22543 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction22543 : Bundle := named_bundle% "RealMapCertificates/relations/basis22543.json"
theorem reductionProof22543 : EqualModuloRelations reduction22543.relations reduction22543.input reduction22543.output := by lin_cert using reduction22543.terms
theorem substitutionProof22543 : IsMapEvaluation generatorImages reduction22543.relations [0,2633] reduction22543.output := by lin_cert using reduction22543.terms
def image22544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22544 : InImage map_27_258 image22544 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction22544 : Bundle := named_bundle% "RealMapCertificates/relations/basis22544.json"
theorem reductionProof22544 : EqualModuloRelations reduction22544.relations reduction22544.input reduction22544.output := by lin_cert using reduction22544.terms
theorem substitutionProof22544 : IsMapEvaluation generatorImages reduction22544.relations [0,7,2045] reduction22544.output := by lin_cert using reduction22544.terms
def image22545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22545 : InImage map_27_258 image22545 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction22545 : Bundle := named_bundle% "RealMapCertificates/relations/basis22545.json"
theorem reductionProof22545 : EqualModuloRelations reduction22545.relations reduction22545.input reduction22545.output := by lin_cert using reduction22545.terms
theorem substitutionProof22545 : IsMapEvaluation generatorImages reduction22545.relations [0,0,2588] reduction22545.output := by lin_cert using reduction22545.terms
def image22546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22546 : InImage map_27_258 image22546 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction22546 : Bundle := named_bundle% "RealMapCertificates/relations/basis22546.json"
theorem reductionProof22546 : EqualModuloRelations reduction22546.relations reduction22546.input reduction22546.output := by lin_cert using reduction22546.terms
theorem substitutionProof22546 : IsMapEvaluation generatorImages reduction22546.relations [0,0,2587] reduction22546.output := by lin_cert using reduction22546.terms
def image22547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22547 : InImage map_27_258 image22547 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction22547 : Bundle := named_bundle% "RealMapCertificates/relations/basis22547.json"
theorem reductionProof22547 : EqualModuloRelations reduction22547.relations reduction22547.input reduction22547.output := by lin_cert using reduction22547.terms
theorem substitutionProof22547 : IsMapEvaluation generatorImages reduction22547.relations [0,0,2586] reduction22547.output := by lin_cert using reduction22547.terms
def map_27_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22833 : InImage map_27_259 image22833 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22833 : Bundle := named_bundle% "RealMapCertificates/relations/basis22833.json"
theorem reductionProof22833 : EqualModuloRelations reduction22833.relations reduction22833.input reduction22833.output := by lin_cert using reduction22833.terms
theorem substitutionProof22833 : IsMapEvaluation generatorImages reduction22833.relations [2748] reduction22833.output := by lin_cert using reduction22833.terms
def image22834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22834 : InImage map_27_259 image22834 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22834 : Bundle := named_bundle% "RealMapCertificates/relations/basis22834.json"
theorem reductionProof22834 : EqualModuloRelations reduction22834.relations reduction22834.input reduction22834.output := by lin_cert using reduction22834.terms
theorem substitutionProof22834 : IsMapEvaluation generatorImages reduction22834.relations [75,1050] reduction22834.output := by lin_cert using reduction22834.terms
def image22835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22835 : InImage map_27_259 image22835 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22835 : Bundle := named_bundle% "RealMapCertificates/relations/basis22835.json"
theorem reductionProof22835 : EqualModuloRelations reduction22835.relations reduction22835.input reduction22835.output := by lin_cert using reduction22835.terms
theorem substitutionProof22835 : IsMapEvaluation generatorImages reduction22835.relations [9,13,1445] reduction22835.output := by lin_cert using reduction22835.terms
def image22836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22836 : InImage map_27_259 image22836 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22836 : Bundle := named_bundle% "RealMapCertificates/relations/basis22836.json"
theorem reductionProof22836 : EqualModuloRelations reduction22836.relations reduction22836.input reduction22836.output := by lin_cert using reduction22836.terms
theorem substitutionProof22836 : IsMapEvaluation generatorImages reduction22836.relations [0,2683] reduction22836.output := by lin_cert using reduction22836.terms
def image22837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22837 : InImage map_27_259 image22837 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22837 : Bundle := named_bundle% "RealMapCertificates/relations/basis22837.json"
theorem reductionProof22837 : EqualModuloRelations reduction22837.relations reduction22837.input reduction22837.output := by lin_cert using reduction22837.terms
theorem substitutionProof22837 : IsMapEvaluation generatorImages reduction22837.relations [0,2682] reduction22837.output := by lin_cert using reduction22837.terms
def image22838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22838 : InImage map_27_259 image22838 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22838 : Bundle := named_bundle% "RealMapCertificates/relations/basis22838.json"
theorem reductionProof22838 : EqualModuloRelations reduction22838.relations reduction22838.input reduction22838.output := by lin_cert using reduction22838.terms
theorem substitutionProof22838 : IsMapEvaluation generatorImages reduction22838.relations [0,0,2636] reduction22838.output := by lin_cert using reduction22838.terms
def map_27_260 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23211 : InImage map_27_260 image23211 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23211 : Bundle := named_bundle% "RealMapCertificates/relations/basis23211.json"
theorem reductionProof23211 : EqualModuloRelations reduction23211.relations reduction23211.input reduction23211.output := by lin_cert using reduction23211.terms
theorem substitutionProof23211 : IsMapEvaluation generatorImages reduction23211.relations [2806] reduction23211.output := by lin_cert using reduction23211.terms
def image23212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23212 : InImage map_27_260 image23212 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23212 : Bundle := named_bundle% "RealMapCertificates/relations/basis23212.json"
theorem reductionProof23212 : EqualModuloRelations reduction23212.relations reduction23212.input reduction23212.output := by lin_cert using reduction23212.terms
theorem substitutionProof23212 : IsMapEvaluation generatorImages reduction23212.relations [2805] reduction23212.output := by lin_cert using reduction23212.terms
def image23213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23213 : InImage map_27_260 image23213 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23213 : Bundle := named_bundle% "RealMapCertificates/relations/basis23213.json"
theorem reductionProof23213 : EqualModuloRelations reduction23213.relations reduction23213.input reduction23213.output := by lin_cert using reduction23213.terms
theorem substitutionProof23213 : IsMapEvaluation generatorImages reduction23213.relations [188,629] reduction23213.output := by lin_cert using reduction23213.terms
def image23214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23214 : InImage map_27_260 image23214 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23214 : Bundle := named_bundle% "RealMapCertificates/relations/basis23214.json"
theorem reductionProof23214 : EqualModuloRelations reduction23214.relations reduction23214.input reduction23214.output := by lin_cert using reduction23214.terms
theorem substitutionProof23214 : IsMapEvaluation generatorImages reduction23214.relations [8,8,8,112,324] reduction23214.output := by lin_cert using reduction23214.terms
def image23215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23215 : InImage map_27_260 image23215 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23215 : Bundle := named_bundle% "RealMapCertificates/relations/basis23215.json"
theorem reductionProof23215 : EqualModuloRelations reduction23215.relations reduction23215.input reduction23215.output := by lin_cert using reduction23215.terms
theorem substitutionProof23215 : IsMapEvaluation generatorImages reduction23215.relations [0,3,2383] reduction23215.output := by lin_cert using reduction23215.terms
def image23216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23216 : InImage map_27_260 image23216 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23216 : Bundle := named_bundle% "RealMapCertificates/relations/basis23216.json"
theorem reductionProof23216 : EqualModuloRelations reduction23216.relations reduction23216.input reduction23216.output := by lin_cert using reduction23216.terms
theorem substitutionProof23216 : IsMapEvaluation generatorImages reduction23216.relations [0,3,3,2104] reduction23216.output := by lin_cert using reduction23216.terms
def image23217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23217 : InImage map_27_260 image23217 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23217 : Bundle := named_bundle% "RealMapCertificates/relations/basis23217.json"
theorem reductionProof23217 : EqualModuloRelations reduction23217.relations reduction23217.input reduction23217.output := by lin_cert using reduction23217.terms
theorem substitutionProof23217 : IsMapEvaluation generatorImages reduction23217.relations [0,0,2684] reduction23217.output := by lin_cert using reduction23217.terms
def image23218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23218 : InImage map_27_260 image23218 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23218 : Bundle := named_bundle% "RealMapCertificates/relations/basis23218.json"
theorem reductionProof23218 : EqualModuloRelations reduction23218.relations reduction23218.input reduction23218.output := by lin_cert using reduction23218.terms
theorem substitutionProof23218 : IsMapEvaluation generatorImages reduction23218.relations [0,0,0,0,0,2560] reduction23218.output := by lin_cert using reduction23218.terms
def map_27_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23656 : InImage map_27_261 image23656 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23656 : Bundle := named_bundle% "RealMapCertificates/relations/basis23656.json"
theorem reductionProof23656 : EqualModuloRelations reduction23656.relations reduction23656.input reduction23656.output := by lin_cert using reduction23656.terms
theorem substitutionProof23656 : IsMapEvaluation generatorImages reduction23656.relations [13,13,1434] reduction23656.output := by lin_cert using reduction23656.terms
def image23657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23657 : InImage map_27_261 image23657 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23657 : Bundle := named_bundle% "RealMapCertificates/relations/basis23657.json"
theorem reductionProof23657 : EqualModuloRelations reduction23657.relations reduction23657.input reduction23657.output := by lin_cert using reduction23657.terms
theorem substitutionProof23657 : IsMapEvaluation generatorImages reduction23657.relations [9,2007] reduction23657.output := by lin_cert using reduction23657.terms
def image23658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23658 : InImage map_27_261 image23658 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23658 : Bundle := named_bundle% "RealMapCertificates/relations/basis23658.json"
theorem reductionProof23658 : EqualModuloRelations reduction23658.relations reduction23658.input reduction23658.output := by lin_cert using reduction23658.terms
theorem substitutionProof23658 : IsMapEvaluation generatorImages reduction23658.relations [8,2108] reduction23658.output := by lin_cert using reduction23658.terms
def image23659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23659 : InImage map_27_261 image23659 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23659 : Bundle := named_bundle% "RealMapCertificates/relations/basis23659.json"
theorem reductionProof23659 : EqualModuloRelations reduction23659.relations reduction23659.input reduction23659.output := by lin_cert using reduction23659.terms
theorem substitutionProof23659 : IsMapEvaluation generatorImages reduction23659.relations [8,8,1644] reduction23659.output := by lin_cert using reduction23659.terms
def image23660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23660 : InImage map_27_261 image23660 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23660 : Bundle := named_bundle% "RealMapCertificates/relations/basis23660.json"
theorem reductionProof23660 : EqualModuloRelations reduction23660.relations reduction23660.input reduction23660.output := by lin_cert using reduction23660.terms
theorem substitutionProof23660 : IsMapEvaluation generatorImages reduction23660.relations [1,1,2635] reduction23660.output := by lin_cert using reduction23660.terms
def image23661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23661 : InImage map_27_261 image23661 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23661 : Bundle := named_bundle% "RealMapCertificates/relations/basis23661.json"
theorem reductionProof23661 : EqualModuloRelations reduction23661.relations reduction23661.input reduction23661.output := by lin_cert using reduction23661.terms
theorem substitutionProof23661 : IsMapEvaluation generatorImages reduction23661.relations [0,2807] reduction23661.output := by lin_cert using reduction23661.terms
def image23662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23662 : InImage map_27_261 image23662 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23662 : Bundle := named_bundle% "RealMapCertificates/relations/basis23662.json"
theorem reductionProof23662 : EqualModuloRelations reduction23662.relations reduction23662.input reduction23662.output := by lin_cert using reduction23662.terms
theorem substitutionProof23662 : IsMapEvaluation generatorImages reduction23662.relations [0,7,2134] reduction23662.output := by lin_cert using reduction23662.terms
def image23663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23663 : InImage map_27_261 image23663 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23663 : Bundle := named_bundle% "RealMapCertificates/relations/basis23663.json"
theorem reductionProof23663 : EqualModuloRelations reduction23663.relations reduction23663.input reduction23663.output := by lin_cert using reduction23663.terms
theorem substitutionProof23663 : IsMapEvaluation generatorImages reduction23663.relations [0,0,2750] reduction23663.output := by lin_cert using reduction23663.terms
def image23664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23664 : InImage map_27_261 image23664 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23664 : Bundle := named_bundle% "RealMapCertificates/relations/basis23664.json"
theorem reductionProof23664 : EqualModuloRelations reduction23664.relations reduction23664.input reduction23664.output := by lin_cert using reduction23664.terms
theorem substitutionProof23664 : IsMapEvaluation generatorImages reduction23664.relations [0,0,0,3,2349] reduction23664.output := by lin_cert using reduction23664.terms
def map_28_28 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image84 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation84 : InImage map_28_28 image84 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction84 : Bundle := named_bundle% "RealMapCertificates/relations/basis84.json"
theorem reductionProof84 : EqualModuloRelations reduction84.relations reduction84.input reduction84.output := by lin_cert using reduction84.terms
theorem substitutionProof84 : IsMapEvaluation generatorImages reduction84.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction84.output := by lin_cert using reduction84.terms
def map_28_83 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation781 : InImage map_28_83 image781 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction781 : Bundle := named_bundle% "RealMapCertificates/relations/basis781.json"
theorem reductionProof781 : EqualModuloRelations reduction781.relations reduction781.input reduction781.output := by lin_cert using reduction781.terms
theorem substitutionProof781 : IsMapEvaluation generatorImages reduction781.relations [0,0,0,0,0,111] reduction781.output := by lin_cert using reduction781.terms
def map_28_85 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image837 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation837 : InImage map_28_85 image837 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction837 : Bundle := named_bundle% "RealMapCertificates/relations/basis837.json"
theorem reductionProof837 : EqualModuloRelations reduction837.relations reduction837.input reduction837.output := by lin_cert using reduction837.terms
theorem substitutionProof837 : IsMapEvaluation generatorImages reduction837.relations [1,123] reduction837.output := by lin_cert using reduction837.terms
def map_28_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image960 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation960 : InImage map_28_90 image960 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction960 : Bundle := named_bundle% "RealMapCertificates/relations/basis960.json"
theorem reductionProof960 : EqualModuloRelations reduction960.relations reduction960.input reduction960.output := by lin_cert using reduction960.terms
theorem substitutionProof960 : IsMapEvaluation generatorImages reduction960.relations [145] reduction960.output := by lin_cert using reduction960.terms
def map_28_91 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation996 : InImage map_28_91 image996 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction996 : Bundle := named_bundle% "RealMapCertificates/relations/basis996.json"
theorem reductionProof996 : EqualModuloRelations reduction996.relations reduction996.input reduction996.output := by lin_cert using reduction996.terms
theorem substitutionProof996 : IsMapEvaluation generatorImages reduction996.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction996.output := by lin_cert using reduction996.terms
def map_28_93 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1040 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1040 : InImage map_28_93 image1040 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1040 : Bundle := named_bundle% "RealMapCertificates/relations/basis1040.json"
theorem reductionProof1040 : EqualModuloRelations reduction1040.relations reduction1040.input reduction1040.output := by lin_cert using reduction1040.terms
theorem substitutionProof1040 : IsMapEvaluation generatorImages reduction1040.relations [152] reduction1040.output := by lin_cert using reduction1040.terms
def map_28_94 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1072 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1072 : InImage map_28_94 image1072 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1072 : Bundle := named_bundle% "RealMapCertificates/relations/basis1072.json"
theorem reductionProof1072 : EqualModuloRelations reduction1072.relations reduction1072.input reduction1072.output := by lin_cert using reduction1072.terms
theorem substitutionProof1072 : IsMapEvaluation generatorImages reduction1072.relations [0,153] reduction1072.output := by lin_cert using reduction1072.terms
def map_28_96 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1108 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1108 : InImage map_28_96 image1108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1108 : Bundle := named_bundle% "RealMapCertificates/relations/basis1108.json"
theorem reductionProof1108 : EqualModuloRelations reduction1108.relations reduction1108.input reduction1108.output := by lin_cert using reduction1108.terms
theorem substitutionProof1108 : IsMapEvaluation generatorImages reduction1108.relations [8,110] reduction1108.output := by lin_cert using reduction1108.terms
def map_28_97 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1145 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1145 : InImage map_28_97 image1145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1145 : Bundle := named_bundle% "RealMapCertificates/relations/basis1145.json"
theorem reductionProof1145 : EqualModuloRelations reduction1145.relations reduction1145.input reduction1145.output := by lin_cert using reduction1145.terms
theorem substitutionProof1145 : IsMapEvaluation generatorImages reduction1145.relations [0,8,111] reduction1145.output := by lin_cert using reduction1145.terms
def map_28_99 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1185 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1185 : InImage map_28_99 image1185 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1185 : Bundle := named_bundle% "RealMapCertificates/relations/basis1185.json"
theorem reductionProof1185 : EqualModuloRelations reduction1185.relations reduction1185.input reduction1185.output := by lin_cert using reduction1185.terms
theorem substitutionProof1185 : IsMapEvaluation generatorImages reduction1185.relations [8,116] reduction1185.output := by lin_cert using reduction1185.terms
def map_28_100 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1218 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1218 : InImage map_28_100 image1218 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1218 : Bundle := named_bundle% "RealMapCertificates/relations/basis1218.json"
theorem reductionProof1218 : EqualModuloRelations reduction1218.relations reduction1218.input reduction1218.output := by lin_cert using reduction1218.terms
theorem substitutionProof1218 : IsMapEvaluation generatorImages reduction1218.relations [0,8,117] reduction1218.output := by lin_cert using reduction1218.terms
def map_28_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1275 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1275 : InImage map_28_102 image1275 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1275 : Bundle := named_bundle% "RealMapCertificates/relations/basis1275.json"
theorem reductionProof1275 : EqualModuloRelations reduction1275.relations reduction1275.input reduction1275.output := by lin_cert using reduction1275.terms
theorem substitutionProof1275 : IsMapEvaluation generatorImages reduction1275.relations [8,8,71] reduction1275.output := by lin_cert using reduction1275.terms
def map_28_103 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1316 : InImage map_28_103 image1316 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1316 : Bundle := named_bundle% "RealMapCertificates/relations/basis1316.json"
theorem reductionProof1316 : EqualModuloRelations reduction1316.relations reduction1316.input reduction1316.output := by lin_cert using reduction1316.terms
theorem substitutionProof1316 : IsMapEvaluation generatorImages reduction1316.relations [0,8,16,50] reduction1316.output := by lin_cert using reduction1316.terms
def map_28_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1377 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1377 : InImage map_28_105 image1377 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1377 : Bundle := named_bundle% "RealMapCertificates/relations/basis1377.json"
theorem reductionProof1377 : EqualModuloRelations reduction1377.relations reduction1377.input reduction1377.output := by lin_cert using reduction1377.terms
theorem substitutionProof1377 : IsMapEvaluation generatorImages reduction1377.relations [8,8,77] reduction1377.output := by lin_cert using reduction1377.terms
def map_28_108 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1475 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1475 : InImage map_28_108 image1475 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1475 : Bundle := named_bundle% "RealMapCertificates/relations/basis1475.json"
theorem reductionProof1475 : EqualModuloRelations reduction1475.relations reduction1475.input reduction1475.output := by lin_cert using reduction1475.terms
theorem substitutionProof1475 : IsMapEvaluation generatorImages reduction1475.relations [8,8,8,49] reduction1475.output := by lin_cert using reduction1475.terms
def map_28_111 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1595 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1595 : InImage map_28_111 image1595 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1595 : Bundle := named_bundle% "RealMapCertificates/relations/basis1595.json"
theorem reductionProof1595 : EqualModuloRelations reduction1595.relations reduction1595.input reduction1595.output := by lin_cert using reduction1595.terms
theorem substitutionProof1595 : IsMapEvaluation generatorImages reduction1595.relations [8,8,8,55] reduction1595.output := by lin_cert using reduction1595.terms
def map_28_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1673 : InImage map_28_113 image1673 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1673 : Bundle := named_bundle% "RealMapCertificates/relations/basis1673.json"
theorem reductionProof1673 : EqualModuloRelations reduction1673.relations reduction1673.input reduction1673.output := by lin_cert using reduction1673.terms
theorem substitutionProof1673 : IsMapEvaluation generatorImages reduction1673.relations [0,0,224] reduction1673.output := by lin_cert using reduction1673.terms
def map_28_114 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1707 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1707 : InImage map_28_114 image1707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1707 : Bundle := named_bundle% "RealMapCertificates/relations/basis1707.json"
theorem reductionProof1707 : EqualModuloRelations reduction1707.relations reduction1707.input reduction1707.output := by lin_cert using reduction1707.terms
theorem substitutionProof1707 : IsMapEvaluation generatorImages reduction1707.relations [8,8,8,8,31] reduction1707.output := by lin_cert using reduction1707.terms
def image1708 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1708 : InImage map_28_114 image1708 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1708 : Bundle := named_bundle% "RealMapCertificates/relations/basis1708.json"
theorem reductionProof1708 : EqualModuloRelations reduction1708.relations reduction1708.input reduction1708.output := by lin_cert using reduction1708.terms
theorem substitutionProof1708 : IsMapEvaluation generatorImages reduction1708.relations [0,0,0,225] reduction1708.output := by lin_cert using reduction1708.terms
def map_28_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1747 : InImage map_28_115 image1747 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1747 : Bundle := named_bundle% "RealMapCertificates/relations/basis1747.json"
theorem reductionProof1747 : EqualModuloRelations reduction1747.relations reduction1747.input reduction1747.output := by lin_cert using reduction1747.terms
theorem substitutionProof1747 : IsMapEvaluation generatorImages reduction1747.relations [1,1,224] reduction1747.output := by lin_cert using reduction1747.terms
def map_28_116 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1776 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1776 : InImage map_28_116 image1776 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1776 : Bundle := named_bundle% "RealMapCertificates/relations/basis1776.json"
theorem reductionProof1776 : EqualModuloRelations reduction1776.relations reduction1776.input reduction1776.output := by lin_cert using reduction1776.terms
theorem substitutionProof1776 : IsMapEvaluation generatorImages reduction1776.relations [0,0,237] reduction1776.output := by lin_cert using reduction1776.terms
def map_28_117 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1814 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1814 : InImage map_28_117 image1814 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1814 : Bundle := named_bundle% "RealMapCertificates/relations/basis1814.json"
theorem reductionProof1814 : EqualModuloRelations reduction1814.relations reduction1814.input reduction1814.output := by lin_cert using reduction1814.terms
theorem substitutionProof1814 : IsMapEvaluation generatorImages reduction1814.relations [8,8,8,8,39] reduction1814.output := by lin_cert using reduction1814.terms
def map_28_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1889 : InImage map_28_119 image1889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1889 : Bundle := named_bundle% "RealMapCertificates/relations/basis1889.json"
theorem reductionProof1889 : EqualModuloRelations reduction1889.relations reduction1889.input reduction1889.output := by lin_cert using reduction1889.terms
theorem substitutionProof1889 : IsMapEvaluation generatorImages reduction1889.relations [0,0,16,137] reduction1889.output := by lin_cert using reduction1889.terms
def map_28_120 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image1924 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1924 : InImage map_28_120 image1924 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1924 : Bundle := named_bundle% "RealMapCertificates/relations/basis1924.json"
theorem reductionProof1924 : EqualModuloRelations reduction1924.relations reduction1924.input reduction1924.output := by lin_cert using reduction1924.terms
theorem substitutionProof1924 : IsMapEvaluation generatorImages reduction1924.relations [8,8,8,8,8,16] reduction1924.output := by lin_cert using reduction1924.terms
def image1925 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1925 : InImage map_28_120 image1925 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1925 : Bundle := named_bundle% "RealMapCertificates/relations/basis1925.json"
theorem reductionProof1925 : EqualModuloRelations reduction1925.relations reduction1925.input reduction1925.output := by lin_cert using reduction1925.terms
theorem substitutionProof1925 : IsMapEvaluation generatorImages reduction1925.relations [0,0,0,0,244] reduction1925.output := by lin_cert using reduction1925.terms
def map_28_121 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1975 : InImage map_28_121 image1975 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1975 : Bundle := named_bundle% "RealMapCertificates/relations/basis1975.json"
theorem reductionProof1975 : EqualModuloRelations reduction1975.relations reduction1975.input reduction1975.output := by lin_cert using reduction1975.terms
theorem substitutionProof1975 : IsMapEvaluation generatorImages reduction1975.relations [0,0,0,0,17,138] reduction1975.output := by lin_cert using reduction1975.terms
def map_28_122 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2009 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2009 : InImage map_28_122 image2009 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2009 : Bundle := named_bundle% "RealMapCertificates/relations/basis2009.json"
theorem reductionProof2009 : EqualModuloRelations reduction2009.relations reduction2009.input reduction2009.output := by lin_cert using reduction2009.terms
theorem substitutionProof2009 : IsMapEvaluation generatorImages reduction2009.relations [0,0,8,184] reduction2009.output := by lin_cert using reduction2009.terms
def image2010 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2010 : InImage map_28_122 image2010 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2010 : Bundle := named_bundle% "RealMapCertificates/relations/basis2010.json"
theorem reductionProof2010 : EqualModuloRelations reduction2010.relations reduction2010.input reduction2010.output := by lin_cert using reduction2010.terms
theorem substitutionProof2010 : IsMapEvaluation generatorImages reduction2010.relations [0,0,0,0,0,0,245] reduction2010.output := by lin_cert using reduction2010.terms
end RealMapCertificates
