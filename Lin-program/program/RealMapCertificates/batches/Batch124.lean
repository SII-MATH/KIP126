import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 42 => [[5,5,7]]
  | 52 => []
  | 64 => []
  | 72 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 254 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 299 => []
  | 300 => []
  | 317 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 380 => []
  | 454 => []
  | 455 => []
  | 491 => []
  | 500 => []
  | 509 => []
  | 516 => []
  | 558 => []
  | 573 => []
  | 598 => [[0,6,9,12,12]]
  | 599 => []
  | 600 => []
  | 601 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 653 => []
  | 654 => []
  | 688 => []
  | 726 => []
  | 820 => [[5,5,5,7,12,12]]
  | _ => []
def map_28_123 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2046 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2046 : InImage map_28_123 image2046 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2046 : Bundle := named_bundle% "RealMapCertificates/relations/basis2046.json"
theorem reductionProof2046 : EqualModuloRelations reduction2046.relations reduction2046.input reduction2046.output := by lin_cert using reduction2046.terms
theorem substitutionProof2046 : IsMapEvaluation generatorImages reduction2046.relations [8,8,8,8,8,19] reduction2046.output := by lin_cert using reduction2046.terms
def image2047 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2047 : InImage map_28_123 image2047 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2047 : Bundle := named_bundle% "RealMapCertificates/relations/basis2047.json"
theorem reductionProof2047 : EqualModuloRelations reduction2047.relations reduction2047.input reduction2047.output := by lin_cert using reduction2047.terms
theorem substitutionProof2047 : IsMapEvaluation generatorImages reduction2047.relations [0,0,0,0,0,0,0,246] reduction2047.output := by lin_cert using reduction2047.terms
def map_28_125 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2133 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2133 : InImage map_28_125 image2133 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2133 : Bundle := named_bundle% "RealMapCertificates/relations/basis2133.json"
theorem reductionProof2133 : EqualModuloRelations reduction2133.relations reduction2133.input reduction2133.output := by lin_cert using reduction2133.terms
theorem substitutionProof2133 : IsMapEvaluation generatorImages reduction2133.relations [0,0,8,8,137] reduction2133.output := by lin_cert using reduction2133.terms
def map_28_126 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2176 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2176 : InImage map_28_126 image2176 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2176 : Bundle := named_bundle% "RealMapCertificates/relations/basis2176.json"
theorem reductionProof2176 : EqualModuloRelations reduction2176.relations reduction2176.input reduction2176.output := by lin_cert using reduction2176.terms
theorem substitutionProof2176 : IsMapEvaluation generatorImages reduction2176.relations [8,8,8,8,8,8,8] reduction2176.output := by lin_cert using reduction2176.terms
def map_28_127 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2228 : InImage map_28_127 image2228 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2228 : Bundle := named_bundle% "RealMapCertificates/relations/basis2228.json"
theorem reductionProof2228 : EqualModuloRelations reduction2228.relations reduction2228.input reduction2228.output := by lin_cert using reduction2228.terms
theorem substitutionProof2228 : IsMapEvaluation generatorImages reduction2228.relations [0,0,0,0,0,17,149] reduction2228.output := by lin_cert using reduction2228.terms
def map_28_128 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image2269 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2269 : InImage map_28_128 image2269 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2269 : Bundle := named_bundle% "RealMapCertificates/relations/basis2269.json"
theorem reductionProof2269 : EqualModuloRelations reduction2269.relations reduction2269.input reduction2269.output := by lin_cert using reduction2269.terms
theorem substitutionProof2269 : IsMapEvaluation generatorImages reduction2269.relations [0,0,0,0,0,17,154] reduction2269.output := by lin_cert using reduction2269.terms
def map_28_129 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2333 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2333 : InImage map_28_129 image2333 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2333 : Bundle := named_bundle% "RealMapCertificates/relations/basis2333.json"
theorem reductionProof2333 : EqualModuloRelations reduction2333.relations reduction2333.input reduction2333.output := by lin_cert using reduction2333.terms
theorem substitutionProof2333 : IsMapEvaluation generatorImages reduction2333.relations [8,8,8,8,8,8,9] reduction2333.output := by lin_cert using reduction2333.terms
def map_28_131 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2450 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2450 : InImage map_28_131 image2450 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2450 : Bundle := named_bundle% "RealMapCertificates/relations/basis2450.json"
theorem reductionProof2450 : EqualModuloRelations reduction2450.relations reduction2450.input reduction2450.output := by lin_cert using reduction2450.terms
theorem substitutionProof2450 : IsMapEvaluation generatorImages reduction2450.relations [343] reduction2450.output := by lin_cert using reduction2450.terms
def map_28_132 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2515 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation2515 : InImage map_28_132 image2515 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2515 : Bundle := named_bundle% "RealMapCertificates/relations/basis2515.json"
theorem reductionProof2515 : EqualModuloRelations reduction2515.relations reduction2515.input reduction2515.output := by lin_cert using reduction2515.terms
theorem substitutionProof2515 : IsMapEvaluation generatorImages reduction2515.relations [17,185] reduction2515.output := by lin_cert using reduction2515.terms
def image2516 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2516 : InImage map_28_132 image2516 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2516 : Bundle := named_bundle% "RealMapCertificates/relations/basis2516.json"
theorem reductionProof2516 : EqualModuloRelations reduction2516.relations reduction2516.input reduction2516.output := by lin_cert using reduction2516.terms
theorem substitutionProof2516 : IsMapEvaluation generatorImages reduction2516.relations [8,8,8,8,8,8,13] reduction2516.output := by lin_cert using reduction2516.terms
def map_28_134 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2648 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2648 : InImage map_28_134 image2648 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2648 : Bundle := named_bundle% "RealMapCertificates/relations/basis2648.json"
theorem reductionProof2648 : EqualModuloRelations reduction2648.relations reduction2648.input reduction2648.output := by lin_cert using reduction2648.terms
theorem substitutionProof2648 : IsMapEvaluation generatorImages reduction2648.relations [8,244] reduction2648.output := by lin_cert using reduction2648.terms
def map_28_135 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2739 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2739 : InImage map_28_135 image2739 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2739 : Bundle := named_bundle% "RealMapCertificates/relations/basis2739.json"
theorem reductionProof2739 : EqualModuloRelations reduction2739.relations reduction2739.input reduction2739.output := by lin_cert using reduction2739.terms
theorem substitutionProof2739 : IsMapEvaluation generatorImages reduction2739.relations [8,17,138] reduction2739.output := by lin_cert using reduction2739.terms
def image2740 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2740 : InImage map_28_135 image2740 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2740 : Bundle := named_bundle% "RealMapCertificates/relations/basis2740.json"
theorem reductionProof2740 : EqualModuloRelations reduction2740.relations reduction2740.input reduction2740.output := by lin_cert using reduction2740.terms
theorem substitutionProof2740 : IsMapEvaluation generatorImages reduction2740.relations [8,8,8,8,8,9,13] reduction2740.output := by lin_cert using reduction2740.terms
def map_28_137 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image2883 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2883 : InImage map_28_137 image2883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2883 : Bundle := named_bundle% "RealMapCertificates/relations/basis2883.json"
theorem reductionProof2883 : EqualModuloRelations reduction2883.relations reduction2883.input reduction2883.output := by lin_cert using reduction2883.terms
theorem substitutionProof2883 : IsMapEvaluation generatorImages reduction2883.relations [8,257] reduction2883.output := by lin_cert using reduction2883.terms
def image2884 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2884 : InImage map_28_137 image2884 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2884 : Bundle := named_bundle% "RealMapCertificates/relations/basis2884.json"
theorem reductionProof2884 : EqualModuloRelations reduction2884.relations reduction2884.input reduction2884.output := by lin_cert using reduction2884.terms
theorem substitutionProof2884 : IsMapEvaluation generatorImages reduction2884.relations [1,42,137] reduction2884.output := by lin_cert using reduction2884.terms
def image2885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2885 : InImage map_28_137 image2885 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2885 : Bundle := named_bundle% "RealMapCertificates/relations/basis2885.json"
theorem reductionProof2885 : EqualModuloRelations reduction2885.relations reduction2885.input reduction2885.output := by lin_cert using reduction2885.terms
theorem substitutionProof2885 : IsMapEvaluation generatorImages reduction2885.relations [0,0,0,0,0,0,0,0,0,0,0,300] reduction2885.output := by lin_cert using reduction2885.terms
def map_28_138 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2966 : InImage map_28_138 image2966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2966 : Bundle := named_bundle% "RealMapCertificates/relations/basis2966.json"
theorem reductionProof2966 : EqualModuloRelations reduction2966.relations reduction2966.input reduction2966.output := by lin_cert using reduction2966.terms
theorem substitutionProof2966 : IsMapEvaluation generatorImages reduction2966.relations [8,17,147] reduction2966.output := by lin_cert using reduction2966.terms
def image2967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2967 : InImage map_28_138 image2967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2967 : Bundle := named_bundle% "RealMapCertificates/relations/basis2967.json"
theorem reductionProof2967 : EqualModuloRelations reduction2967.relations reduction2967.input reduction2967.output := by lin_cert using reduction2967.terms
theorem substitutionProof2967 : IsMapEvaluation generatorImages reduction2967.relations [8,8,8,8,8,13,13] reduction2967.output := by lin_cert using reduction2967.terms
def image2968 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2968 : InImage map_28_138 image2968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2968 : Bundle := named_bundle% "RealMapCertificates/relations/basis2968.json"
theorem reductionProof2968 : EqualModuloRelations reduction2968.relations reduction2968.input reduction2968.output := by lin_cert using reduction2968.terms
theorem substitutionProof2968 : IsMapEvaluation generatorImages reduction2968.relations [0,0,0,0,0,0,0,0,0,0,317] reduction2968.output := by lin_cert using reduction2968.terms
def map_28_140 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3121 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3121 : InImage map_28_140 image3121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3121 : Bundle := named_bundle% "RealMapCertificates/relations/basis3121.json"
theorem reductionProof3121 : EqualModuloRelations reduction3121.relations reduction3121.input reduction3121.output := by lin_cert using reduction3121.terms
theorem substitutionProof3121 : IsMapEvaluation generatorImages reduction3121.relations [8,16,149] reduction3121.output := by lin_cert using reduction3121.terms
def map_28_141 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3221 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3221 : InImage map_28_141 image3221 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3221 : Bundle := named_bundle% "RealMapCertificates/relations/basis3221.json"
theorem reductionProof3221 : EqualModuloRelations reduction3221.relations reduction3221.input reduction3221.output := by lin_cert using reduction3221.terms
theorem substitutionProof3221 : IsMapEvaluation generatorImages reduction3221.relations [8,16,154] reduction3221.output := by lin_cert using reduction3221.terms
def image3222 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3222 : InImage map_28_141 image3222 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3222 : Bundle := named_bundle% "RealMapCertificates/relations/basis3222.json"
theorem reductionProof3222 : EqualModuloRelations reduction3222.relations reduction3222.input reduction3222.output := by lin_cert using reduction3222.terms
theorem substitutionProof3222 : IsMapEvaluation generatorImages reduction3222.relations [8,8,8,8,9,13,13] reduction3222.output := by lin_cert using reduction3222.terms
def map_28_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3376 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3376 : InImage map_28_143 image3376 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3376 : Bundle := named_bundle% "RealMapCertificates/relations/basis3376.json"
theorem reductionProof3376 : EqualModuloRelations reduction3376.relations reduction3376.input reduction3376.output := by lin_cert using reduction3376.terms
theorem substitutionProof3376 : IsMapEvaluation generatorImages reduction3376.relations [8,8,206] reduction3376.output := by lin_cert using reduction3376.terms
def map_28_144 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image3465 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3465 : InImage map_28_144 image3465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3465 : Bundle := named_bundle% "RealMapCertificates/relations/basis3465.json"
theorem reductionProof3465 : EqualModuloRelations reduction3465.relations reduction3465.input reduction3465.output := by lin_cert using reduction3465.terms
theorem substitutionProof3465 : IsMapEvaluation generatorImages reduction3465.relations [8,8,17,113] reduction3465.output := by lin_cert using reduction3465.terms
def image3466 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3466 : InImage map_28_144 image3466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3466 : Bundle := named_bundle% "RealMapCertificates/relations/basis3466.json"
theorem reductionProof3466 : EqualModuloRelations reduction3466.relations reduction3466.input reduction3466.output := by lin_cert using reduction3466.terms
theorem substitutionProof3466 : IsMapEvaluation generatorImages reduction3466.relations [8,8,8,8,13,13,13] reduction3466.output := by lin_cert using reduction3466.terms
def map_28_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3546 : InImage map_28_145 image3546 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3546 : Bundle := named_bundle% "RealMapCertificates/relations/basis3546.json"
theorem reductionProof3546 : EqualModuloRelations reduction3546.relations reduction3546.input reduction3546.output := by lin_cert using reduction3546.terms
theorem substitutionProof3546 : IsMapEvaluation generatorImages reduction3546.relations [0,0,491] reduction3546.output := by lin_cert using reduction3546.terms
def map_28_146 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3616 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3616 : InImage map_28_146 image3616 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3616 : Bundle := named_bundle% "RealMapCertificates/relations/basis3616.json"
theorem reductionProof3616 : EqualModuloRelations reduction3616.relations reduction3616.input reduction3616.output := by lin_cert using reduction3616.terms
theorem substitutionProof3616 : IsMapEvaluation generatorImages reduction3616.relations [8,8,8,149] reduction3616.output := by lin_cert using reduction3616.terms
def image3617 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3617 : InImage map_28_146 image3617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3617 : Bundle := named_bundle% "RealMapCertificates/relations/basis3617.json"
theorem reductionProof3617 : EqualModuloRelations reduction3617.relations reduction3617.input reduction3617.output := by lin_cert using reduction3617.terms
theorem substitutionProof3617 : IsMapEvaluation generatorImages reduction3617.relations [0,509] reduction3617.output := by lin_cert using reduction3617.terms
def map_28_147 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3726 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3726 : InImage map_28_147 image3726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3726 : Bundle := named_bundle% "RealMapCertificates/relations/basis3726.json"
theorem reductionProof3726 : EqualModuloRelations reduction3726.relations reduction3726.input reduction3726.output := by lin_cert using reduction3726.terms
theorem substitutionProof3726 : IsMapEvaluation generatorImages reduction3726.relations [8,8,8,154] reduction3726.output := by lin_cert using reduction3726.terms
def image3727 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3727 : InImage map_28_147 image3727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3727 : Bundle := named_bundle% "RealMapCertificates/relations/basis3727.json"
theorem reductionProof3727 : EqualModuloRelations reduction3727.relations reduction3727.input reduction3727.output := by lin_cert using reduction3727.terms
theorem substitutionProof3727 : IsMapEvaluation generatorImages reduction3727.relations [8,8,8,9,13,13,13] reduction3727.output := by lin_cert using reduction3727.terms
def image3728 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3728 : InImage map_28_147 image3728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3728 : Bundle := named_bundle% "RealMapCertificates/relations/basis3728.json"
theorem reductionProof3728 : EqualModuloRelations reduction3728.relations reduction3728.input reduction3728.output := by lin_cert using reduction3728.terms
theorem substitutionProof3728 : IsMapEvaluation generatorImages reduction3728.relations [1,1,491] reduction3728.output := by lin_cert using reduction3728.terms
def map_28_148 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image3808 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3808 : InImage map_28_148 image3808 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3808 : Bundle := named_bundle% "RealMapCertificates/relations/basis3808.json"
theorem reductionProof3808 : EqualModuloRelations reduction3808.relations reduction3808.input reduction3808.output := by lin_cert using reduction3808.terms
theorem substitutionProof3808 : IsMapEvaluation generatorImages reduction3808.relations [0,0,516] reduction3808.output := by lin_cert using reduction3808.terms
def map_28_149 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3889 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3889 : InImage map_28_149 image3889 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3889 : Bundle := named_bundle% "RealMapCertificates/relations/basis3889.json"
theorem reductionProof3889 : EqualModuloRelations reduction3889.relations reduction3889.input reduction3889.output := by lin_cert using reduction3889.terms
theorem substitutionProof3889 : IsMapEvaluation generatorImages reduction3889.relations [8,8,8,160] reduction3889.output := by lin_cert using reduction3889.terms
def map_28_150 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image3981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3981 : InImage map_28_150 image3981 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3981 : Bundle := named_bundle% "RealMapCertificates/relations/basis3981.json"
theorem reductionProof3981 : EqualModuloRelations reduction3981.relations reduction3981.input reduction3981.output := by lin_cert using reduction3981.terms
theorem substitutionProof3981 : IsMapEvaluation generatorImages reduction3981.relations [64,137] reduction3981.output := by lin_cert using reduction3981.terms
def image3982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3982 : InImage map_28_150 image3982 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3982 : Bundle := named_bundle% "RealMapCertificates/relations/basis3982.json"
theorem reductionProof3982 : EqualModuloRelations reduction3982.relations reduction3982.input reduction3982.output := by lin_cert using reduction3982.terms
theorem substitutionProof3982 : IsMapEvaluation generatorImages reduction3982.relations [8,8,8,162] reduction3982.output := by lin_cert using reduction3982.terms
def image3983 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3983 : InImage map_28_150 image3983 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3983 : Bundle := named_bundle% "RealMapCertificates/relations/basis3983.json"
theorem reductionProof3983 : EqualModuloRelations reduction3983.relations reduction3983.input reduction3983.output := by lin_cert using reduction3983.terms
theorem substitutionProof3983 : IsMapEvaluation generatorImages reduction3983.relations [8,8,8,13,13,13,13] reduction3983.output := by lin_cert using reduction3983.terms
def map_28_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4088 : InImage map_28_151 image4088 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4088 : Bundle := named_bundle% "RealMapCertificates/relations/basis4088.json"
theorem reductionProof4088 : EqualModuloRelations reduction4088.relations reduction4088.input reduction4088.output := by lin_cert using reduction4088.terms
theorem substitutionProof4088 : IsMapEvaluation generatorImages reduction4088.relations [0,64,138] reduction4088.output := by lin_cert using reduction4088.terms
def image4089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4089 : InImage map_28_151 image4089 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4089 : Bundle := named_bundle% "RealMapCertificates/relations/basis4089.json"
theorem reductionProof4089 : EqualModuloRelations reduction4089.relations reduction4089.input reduction4089.output := by lin_cert using reduction4089.terms
theorem substitutionProof4089 : IsMapEvaluation generatorImages reduction4089.relations [0,0,16,260] reduction4089.output := by lin_cert using reduction4089.terms
def map_28_152 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image4160 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4160 : InImage map_28_152 image4160 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4160 : Bundle := named_bundle% "RealMapCertificates/relations/basis4160.json"
theorem reductionProof4160 : EqualModuloRelations reduction4160.relations reduction4160.input reduction4160.output := by lin_cert using reduction4160.terms
theorem substitutionProof4160 : IsMapEvaluation generatorImages reduction4160.relations [8,8,8,166] reduction4160.output := by lin_cert using reduction4160.terms
def image4161 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4161 : InImage map_28_152 image4161 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4161 : Bundle := named_bundle% "RealMapCertificates/relations/basis4161.json"
theorem reductionProof4161 : EqualModuloRelations reduction4161.relations reduction4161.input reduction4161.output := by lin_cert using reduction4161.terms
theorem substitutionProof4161 : IsMapEvaluation generatorImages reduction4161.relations [0,0,0,17,260] reduction4161.output := by lin_cert using reduction4161.terms
def map_28_153 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image4263 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4263 : InImage map_28_153 image4263 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4263 : Bundle := named_bundle% "RealMapCertificates/relations/basis4263.json"
theorem reductionProof4263 : EqualModuloRelations reduction4263.relations reduction4263.input reduction4263.output := by lin_cert using reduction4263.terms
theorem substitutionProof4263 : IsMapEvaluation generatorImages reduction4263.relations [64,146] reduction4263.output := by lin_cert using reduction4263.terms
def image4264 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4264 : InImage map_28_153 image4264 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4264 : Bundle := named_bundle% "RealMapCertificates/relations/basis4264.json"
theorem reductionProof4264 : EqualModuloRelations reduction4264.relations reduction4264.input reduction4264.output := by lin_cert using reduction4264.terms
theorem substitutionProof4264 : IsMapEvaluation generatorImages reduction4264.relations [8,8,9,13,13,13,13] reduction4264.output := by lin_cert using reduction4264.terms
def image4265 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4265 : InImage map_28_153 image4265 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4265 : Bundle := named_bundle% "RealMapCertificates/relations/basis4265.json"
theorem reductionProof4265 : EqualModuloRelations reduction4265.relations reduction4265.input reduction4265.output := by lin_cert using reduction4265.terms
theorem substitutionProof4265 : IsMapEvaluation generatorImages reduction4265.relations [8,8,8,17,80] reduction4265.output := by lin_cert using reduction4265.terms
def image4266 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4266 : InImage map_28_153 image4266 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4266 : Bundle := named_bundle% "RealMapCertificates/relations/basis4266.json"
theorem reductionProof4266 : EqualModuloRelations reduction4266.relations reduction4266.input reduction4266.output := by lin_cert using reduction4266.terms
theorem substitutionProof4266 : IsMapEvaluation generatorImages reduction4266.relations [0,0,0,558] reduction4266.output := by lin_cert using reduction4266.terms
def map_28_154 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4339 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4339 : InImage map_28_154 image4339 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4339 : Bundle := named_bundle% "RealMapCertificates/relations/basis4339.json"
theorem reductionProof4339 : EqualModuloRelations reduction4339.relations reduction4339.input reduction4339.output := by lin_cert using reduction4339.terms
theorem substitutionProof4339 : IsMapEvaluation generatorImages reduction4339.relations [0,64,147] reduction4339.output := by lin_cert using reduction4339.terms
def image4340 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4340 : InImage map_28_154 image4340 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4340 : Bundle := named_bundle% "RealMapCertificates/relations/basis4340.json"
theorem reductionProof4340 : EqualModuloRelations reduction4340.relations reduction4340.input reduction4340.output := by lin_cert using reduction4340.terms
theorem substitutionProof4340 : IsMapEvaluation generatorImages reduction4340.relations [0,0,8,380] reduction4340.output := by lin_cert using reduction4340.terms
def image4341 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4341 : InImage map_28_154 image4341 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4341 : Bundle := named_bundle% "RealMapCertificates/relations/basis4341.json"
theorem reductionProof4341 : EqualModuloRelations reduction4341.relations reduction4341.input reduction4341.output := by lin_cert using reduction4341.terms
theorem substitutionProof4341 : IsMapEvaluation generatorImages reduction4341.relations [0,0,0,0,0,0,0,0,0,0,500] reduction4341.output := by lin_cert using reduction4341.terms
def map_28_155 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image4416 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4416 : InImage map_28_155 image4416 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4416 : Bundle := named_bundle% "RealMapCertificates/relations/basis4416.json"
theorem reductionProof4416 : EqualModuloRelations reduction4416.relations reduction4416.input reduction4416.output := by lin_cert using reduction4416.terms
theorem substitutionProof4416 : IsMapEvaluation generatorImages reduction4416.relations [8,8,8,180] reduction4416.output := by lin_cert using reduction4416.terms
def image4417 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4417 : InImage map_28_155 image4417 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4417 : Bundle := named_bundle% "RealMapCertificates/relations/basis4417.json"
theorem reductionProof4417 : EqualModuloRelations reduction4417.relations reduction4417.input reduction4417.output := by lin_cert using reduction4417.terms
theorem substitutionProof4417 : IsMapEvaluation generatorImages reduction4417.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4417.output := by lin_cert using reduction4417.terms
def map_28_156 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4510 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4510 : InImage map_28_156 image4510 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4510 : Bundle := named_bundle% "RealMapCertificates/relations/basis4510.json"
theorem reductionProof4510 : EqualModuloRelations reduction4510.relations reduction4510.input reduction4510.output := by lin_cert using reduction4510.terms
theorem substitutionProof4510 : IsMapEvaluation generatorImages reduction4510.relations [16,64,64] reduction4510.output := by lin_cert using reduction4510.terms
def image4511 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4511 : InImage map_28_156 image4511 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4511 : Bundle := named_bundle% "RealMapCertificates/relations/basis4511.json"
theorem reductionProof4511 : EqualModuloRelations reduction4511.relations reduction4511.input reduction4511.output := by lin_cert using reduction4511.terms
theorem substitutionProof4511 : IsMapEvaluation generatorImages reduction4511.relations [8,8,13,13,13,13,13] reduction4511.output := by lin_cert using reduction4511.terms
def image4512 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4512 : InImage map_28_156 image4512 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4512 : Bundle := named_bundle% "RealMapCertificates/relations/basis4512.json"
theorem reductionProof4512 : EqualModuloRelations reduction4512.relations reduction4512.input reduction4512.output := by lin_cert using reduction4512.terms
theorem substitutionProof4512 : IsMapEvaluation generatorImages reduction4512.relations [8,8,8,20,80] reduction4512.output := by lin_cert using reduction4512.terms
def map_28_157 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image4602 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4602 : InImage map_28_157 image4602 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4602 : Bundle := named_bundle% "RealMapCertificates/relations/basis4602.json"
theorem reductionProof4602 : EqualModuloRelations reduction4602.relations reduction4602.input reduction4602.output := by lin_cert using reduction4602.terms
theorem substitutionProof4602 : IsMapEvaluation generatorImages reduction4602.relations [0,16,299] reduction4602.output := by lin_cert using reduction4602.terms
def image4603 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4603 : InImage map_28_157 image4603 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4603 : Bundle := named_bundle% "RealMapCertificates/relations/basis4603.json"
theorem reductionProof4603 : EqualModuloRelations reduction4603.relations reduction4603.input reduction4603.output := by lin_cert using reduction4603.terms
theorem substitutionProof4603 : IsMapEvaluation generatorImages reduction4603.relations [0,0,64,149] reduction4603.output := by lin_cert using reduction4603.terms
def image4604 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4604 : InImage map_28_157 image4604 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4604 : Bundle := named_bundle% "RealMapCertificates/relations/basis4604.json"
theorem reductionProof4604 : EqualModuloRelations reduction4604.relations reduction4604.input reduction4604.output := by lin_cert using reduction4604.terms
theorem substitutionProof4604 : IsMapEvaluation generatorImages reduction4604.relations [0,0,8,8,260] reduction4604.output := by lin_cert using reduction4604.terms
def map_28_158 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image4681 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4681 : InImage map_28_158 image4681 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4681 : Bundle := named_bundle% "RealMapCertificates/relations/basis4681.json"
theorem reductionProof4681 : EqualModuloRelations reduction4681.relations reduction4681.input reduction4681.output := by lin_cert using reduction4681.terms
theorem substitutionProof4681 : IsMapEvaluation generatorImages reduction4681.relations [8,8,8,194] reduction4681.output := by lin_cert using reduction4681.terms
def image4682 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4682 : InImage map_28_158 image4682 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4682 : Bundle := named_bundle% "RealMapCertificates/relations/basis4682.json"
theorem reductionProof4682 : EqualModuloRelations reduction4682.relations reduction4682.input reduction4682.output := by lin_cert using reduction4682.terms
theorem substitutionProof4682 : IsMapEvaluation generatorImages reduction4682.relations [0,0,0,598] reduction4682.output := by lin_cert using reduction4682.terms
def map_28_159 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image4782 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4782 : InImage map_28_159 image4782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction4782 : Bundle := named_bundle% "RealMapCertificates/relations/basis4782.json"
theorem reductionProof4782 : EqualModuloRelations reduction4782.relations reduction4782.input reduction4782.output := by lin_cert using reduction4782.terms
theorem substitutionProof4782 : IsMapEvaluation generatorImages reduction4782.relations [8,64,112] reduction4782.output := by lin_cert using reduction4782.terms
def image4783 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4783 : InImage map_28_159 image4783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction4783 : Bundle := named_bundle% "RealMapCertificates/relations/basis4783.json"
theorem reductionProof4783 : EqualModuloRelations reduction4783.relations reduction4783.input reduction4783.output := by lin_cert using reduction4783.terms
theorem substitutionProof4783 : IsMapEvaluation generatorImages reduction4783.relations [8,9,13,13,13,13,13] reduction4783.output := by lin_cert using reduction4783.terms
def image4784 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4784 : InImage map_28_159 image4784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction4784 : Bundle := named_bundle% "RealMapCertificates/relations/basis4784.json"
theorem reductionProof4784 : EqualModuloRelations reduction4784.relations reduction4784.input reduction4784.output := by lin_cert using reduction4784.terms
theorem substitutionProof4784 : IsMapEvaluation generatorImages reduction4784.relations [8,8,8,22,80] reduction4784.output := by lin_cert using reduction4784.terms
def image4785 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4785 : InImage map_28_159 image4785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction4785 : Bundle := named_bundle% "RealMapCertificates/relations/basis4785.json"
theorem reductionProof4785 : EqualModuloRelations reduction4785.relations reduction4785.input reduction4785.output := by lin_cert using reduction4785.terms
theorem substitutionProof4785 : IsMapEvaluation generatorImages reduction4785.relations [1,1,64,149] reduction4785.output := by lin_cert using reduction4785.terms
def image4786 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4786 : InImage map_28_159 image4786 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction4786 : Bundle := named_bundle% "RealMapCertificates/relations/basis4786.json"
theorem reductionProof4786 : EqualModuloRelations reduction4786.relations reduction4786.input reduction4786.output := by lin_cert using reduction4786.terms
theorem substitutionProof4786 : IsMapEvaluation generatorImages reduction4786.relations [0,0,0,0,17,292] reduction4786.output := by lin_cert using reduction4786.terms
def map_28_160 : Matrix 2 3 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4859 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4859 : InImage map_28_160 image4859 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4859 : Bundle := named_bundle% "RealMapCertificates/relations/basis4859.json"
theorem reductionProof4859 : EqualModuloRelations reduction4859.relations reduction4859.input reduction4859.output := by lin_cert using reduction4859.terms
theorem substitutionProof4859 : IsMapEvaluation generatorImages reduction4859.relations [0,0,8,8,278] reduction4859.output := by lin_cert using reduction4859.terms
def image4860 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4860 : InImage map_28_160 image4860 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4860 : Bundle := named_bundle% "RealMapCertificates/relations/basis4860.json"
theorem reductionProof4860 : EqualModuloRelations reduction4860.relations reduction4860.input reduction4860.output := by lin_cert using reduction4860.terms
theorem substitutionProof4860 : IsMapEvaluation generatorImages reduction4860.relations [0,0,0,0,0,601] reduction4860.output := by lin_cert using reduction4860.terms
def image4861 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4861 : InImage map_28_160 image4861 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4861 : Bundle := named_bundle% "RealMapCertificates/relations/basis4861.json"
theorem reductionProof4861 : EqualModuloRelations reduction4861.relations reduction4861.input reduction4861.output := by lin_cert using reduction4861.terms
theorem substitutionProof4861 : IsMapEvaluation generatorImages reduction4861.relations [0,0,0,0,0,600] reduction4861.output := by lin_cert using reduction4861.terms
def map_28_161 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4946 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4946 : InImage map_28_161 image4946 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4946 : Bundle := named_bundle% "RealMapCertificates/relations/basis4946.json"
theorem reductionProof4946 : EqualModuloRelations reduction4946.relations reduction4946.input reduction4946.output := by lin_cert using reduction4946.terms
theorem substitutionProof4946 : IsMapEvaluation generatorImages reduction4946.relations [8,8,9,194] reduction4946.output := by lin_cert using reduction4946.terms
def map_28_162 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image5050 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5050 : InImage map_28_162 image5050 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5050 : Bundle := named_bundle% "RealMapCertificates/relations/basis5050.json"
theorem reductionProof5050 : EqualModuloRelations reduction5050.relations reduction5050.input reduction5050.output := by lin_cert using reduction5050.terms
theorem substitutionProof5050 : IsMapEvaluation generatorImages reduction5050.relations [8,13,13,13,13,13,13] reduction5050.output := by lin_cert using reduction5050.terms
def image5051 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5051 : InImage map_28_162 image5051 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5051 : Bundle := named_bundle% "RealMapCertificates/relations/basis5051.json"
theorem reductionProof5051 : EqualModuloRelations reduction5051.relations reduction5051.input reduction5051.output := by lin_cert using reduction5051.terms
theorem substitutionProof5051 : IsMapEvaluation generatorImages reduction5051.relations [8,8,64,64] reduction5051.output := by lin_cert using reduction5051.terms
def image5052 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5052 : InImage map_28_162 image5052 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5052 : Bundle := named_bundle% "RealMapCertificates/relations/basis5052.json"
theorem reductionProof5052 : EqualModuloRelations reduction5052.relations reduction5052.input reduction5052.output := by lin_cert using reduction5052.terms
theorem substitutionProof5052 : IsMapEvaluation generatorImages reduction5052.relations [8,8,8,23,89] reduction5052.output := by lin_cert using reduction5052.terms
def map_28_163 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5149 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5149 : InImage map_28_163 image5149 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5149 : Bundle := named_bundle% "RealMapCertificates/relations/basis5149.json"
theorem reductionProof5149 : EqualModuloRelations reduction5149.relations reduction5149.input reduction5149.output := by lin_cert using reduction5149.terms
theorem substitutionProof5149 : IsMapEvaluation generatorImages reduction5149.relations [1,653] reduction5149.output := by lin_cert using reduction5149.terms
def image5150 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5150 : InImage map_28_163 image5150 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5150 : Bundle := named_bundle% "RealMapCertificates/relations/basis5150.json"
theorem reductionProof5150 : EqualModuloRelations reduction5150.relations reduction5150.input reduction5150.output := by lin_cert using reduction5150.terms
theorem substitutionProof5150 : IsMapEvaluation generatorImages reduction5150.relations [0,0,8,8,291] reduction5150.output := by lin_cert using reduction5150.terms
def map_28_164 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image5233 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5233 : InImage map_28_164 image5233 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5233 : Bundle := named_bundle% "RealMapCertificates/relations/basis5233.json"
theorem reductionProof5233 : EqualModuloRelations reduction5233.relations reduction5233.input reduction5233.output := by lin_cert using reduction5233.terms
theorem substitutionProof5233 : IsMapEvaluation generatorImages reduction5233.relations [688] reduction5233.output := by lin_cert using reduction5233.terms
def image5234 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5234 : InImage map_28_164 image5234 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5234 : Bundle := named_bundle% "RealMapCertificates/relations/basis5234.json"
theorem reductionProof5234 : EqualModuloRelations reduction5234.relations reduction5234.input reduction5234.output := by lin_cert using reduction5234.terms
theorem substitutionProof5234 : IsMapEvaluation generatorImages reduction5234.relations [8,8,13,194] reduction5234.output := by lin_cert using reduction5234.terms
def image5235 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5235 : InImage map_28_164 image5235 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5235 : Bundle := named_bundle% "RealMapCertificates/relations/basis5235.json"
theorem reductionProof5235 : EqualModuloRelations reduction5235.relations reduction5235.input reduction5235.output := by lin_cert using reduction5235.terms
theorem substitutionProof5235 : IsMapEvaluation generatorImages reduction5235.relations [0,0,0,0,642] reduction5235.output := by lin_cert using reduction5235.terms
def map_28_165 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image5359 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5359 : InImage map_28_165 image5359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5359 : Bundle := named_bundle% "RealMapCertificates/relations/basis5359.json"
theorem reductionProof5359 : EqualModuloRelations reduction5359.relations reduction5359.input reduction5359.output := by lin_cert using reduction5359.terms
theorem substitutionProof5359 : IsMapEvaluation generatorImages reduction5359.relations [9,13,13,13,13,13,13] reduction5359.output := by lin_cert using reduction5359.terms
def image5360 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5360 : InImage map_28_165 image5360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5360 : Bundle := named_bundle% "RealMapCertificates/relations/basis5360.json"
theorem reductionProof5360 : EqualModuloRelations reduction5360.relations reduction5360.input reduction5360.output := by lin_cert using reduction5360.terms
theorem substitutionProof5360 : IsMapEvaluation generatorImages reduction5360.relations [8,8,64,72] reduction5360.output := by lin_cert using reduction5360.terms
def image5361 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5361 : InImage map_28_165 image5361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5361 : Bundle := named_bundle% "RealMapCertificates/relations/basis5361.json"
theorem reductionProof5361 : EqualModuloRelations reduction5361.relations reduction5361.input reduction5361.output := by lin_cert using reduction5361.terms
theorem substitutionProof5361 : IsMapEvaluation generatorImages reduction5361.relations [8,8,8,23,101] reduction5361.output := by lin_cert using reduction5361.terms
def image5362 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5362 : InImage map_28_165 image5362 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5362 : Bundle := named_bundle% "RealMapCertificates/relations/basis5362.json"
theorem reductionProof5362 : EqualModuloRelations reduction5362.relations reduction5362.input reduction5362.output := by lin_cert using reduction5362.terms
theorem substitutionProof5362 : IsMapEvaluation generatorImages reduction5362.relations [0,0,0,0,654] reduction5362.output := by lin_cert using reduction5362.terms
def map_28_166 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5456 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5456 : InImage map_28_166 image5456 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5456 : Bundle := named_bundle% "RealMapCertificates/relations/basis5456.json"
theorem reductionProof5456 : EqualModuloRelations reduction5456.relations reduction5456.input reduction5456.output := by lin_cert using reduction5456.terms
theorem substitutionProof5456 : IsMapEvaluation generatorImages reduction5456.relations [0,0,0,0,0,0,0,0,627] reduction5456.output := by lin_cert using reduction5456.terms
def map_28_167 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5559 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5559 : InImage map_28_167 image5559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5559 : Bundle := named_bundle% "RealMapCertificates/relations/basis5559.json"
theorem reductionProof5559 : EqualModuloRelations reduction5559.relations reduction5559.input reduction5559.output := by lin_cert using reduction5559.terms
theorem substitutionProof5559 : IsMapEvaluation generatorImages reduction5559.relations [726] reduction5559.output := by lin_cert using reduction5559.terms
def image5560 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5560 : InImage map_28_167 image5560 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5560 : Bundle := named_bundle% "RealMapCertificates/relations/basis5560.json"
theorem reductionProof5560 : EqualModuloRelations reduction5560.relations reduction5560.input reduction5560.output := by lin_cert using reduction5560.terms
theorem substitutionProof5560 : IsMapEvaluation generatorImages reduction5560.relations [8,9,13,194] reduction5560.output := by lin_cert using reduction5560.terms
def map_28_168 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image5676 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5676 : InImage map_28_168 image5676 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5676 : Bundle := named_bundle% "RealMapCertificates/relations/basis5676.json"
theorem reductionProof5676 : EqualModuloRelations reduction5676.relations reduction5676.input reduction5676.output := by lin_cert using reduction5676.terms
theorem substitutionProof5676 : IsMapEvaluation generatorImages reduction5676.relations [13,13,13,13,13,13,13] reduction5676.output := by lin_cert using reduction5676.terms
def image5677 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5677 : InImage map_28_168 image5677 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5677 : Bundle := named_bundle% "RealMapCertificates/relations/basis5677.json"
theorem reductionProof5677 : EqualModuloRelations reduction5677.relations reduction5677.input reduction5677.output := by lin_cert using reduction5677.terms
theorem substitutionProof5677 : IsMapEvaluation generatorImages reduction5677.relations [8,8,16,187] reduction5677.output := by lin_cert using reduction5677.terms
def image5678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5678 : InImage map_28_168 image5678 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5678 : Bundle := named_bundle% "RealMapCertificates/relations/basis5678.json"
theorem reductionProof5678 : EqualModuloRelations reduction5678.relations reduction5678.input reduction5678.output := by lin_cert using reduction5678.terms
theorem substitutionProof5678 : IsMapEvaluation generatorImages reduction5678.relations [8,8,9,23,101] reduction5678.output := by lin_cert using reduction5678.terms
def map_28_169 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5787 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5787 : InImage map_28_169 image5787 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5787 : Bundle := named_bundle% "RealMapCertificates/relations/basis5787.json"
theorem reductionProof5787 : EqualModuloRelations reduction5787.relations reduction5787.input reduction5787.output := by lin_cert using reduction5787.terms
theorem substitutionProof5787 : IsMapEvaluation generatorImages reduction5787.relations [1,42,260] reduction5787.output := by lin_cert using reduction5787.terms
def map_28_170 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image5888 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5888 : InImage map_28_170 image5888 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5888 : Bundle := named_bundle% "RealMapCertificates/relations/basis5888.json"
theorem reductionProof5888 : EqualModuloRelations reduction5888.relations reduction5888.input reduction5888.output := by lin_cert using reduction5888.terms
theorem substitutionProof5888 : IsMapEvaluation generatorImages reduction5888.relations [17,454] reduction5888.output := by lin_cert using reduction5888.terms
def image5889 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5889 : InImage map_28_170 image5889 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5889 : Bundle := named_bundle% "RealMapCertificates/relations/basis5889.json"
theorem reductionProof5889 : EqualModuloRelations reduction5889.relations reduction5889.input reduction5889.output := by lin_cert using reduction5889.terms
theorem substitutionProof5889 : IsMapEvaluation generatorImages reduction5889.relations [8,573] reduction5889.output := by lin_cert using reduction5889.terms
def image5890 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5890 : InImage map_28_170 image5890 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5890 : Bundle := named_bundle% "RealMapCertificates/relations/basis5890.json"
theorem reductionProof5890 : EqualModuloRelations reduction5890.relations reduction5890.input reduction5890.output := by lin_cert using reduction5890.terms
theorem substitutionProof5890 : IsMapEvaluation generatorImages reduction5890.relations [8,13,13,194] reduction5890.output := by lin_cert using reduction5890.terms
def map_28_171 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6027 : InImage map_28_171 image6027 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6027 : Bundle := named_bundle% "RealMapCertificates/relations/basis6027.json"
theorem reductionProof6027 : EqualModuloRelations reduction6027.relations reduction6027.input reduction6027.output := by lin_cert using reduction6027.terms
theorem substitutionProof6027 : IsMapEvaluation generatorImages reduction6027.relations [8,8,13,23,101] reduction6027.output := by lin_cert using reduction6027.terms
def image6028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6028 : InImage map_28_171 image6028 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6028 : Bundle := named_bundle% "RealMapCertificates/relations/basis6028.json"
theorem reductionProof6028 : EqualModuloRelations reduction6028.relations reduction6028.input reduction6028.output := by lin_cert using reduction6028.terms
theorem substitutionProof6028 : IsMapEvaluation generatorImages reduction6028.relations [8,8,8,254] reduction6028.output := by lin_cert using reduction6028.terms
def image6029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6029 : InImage map_28_171 image6029 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6029 : Bundle := named_bundle% "RealMapCertificates/relations/basis6029.json"
theorem reductionProof6029 : EqualModuloRelations reduction6029.relations reduction6029.input reduction6029.output := by lin_cert using reduction6029.terms
theorem substitutionProof6029 : IsMapEvaluation generatorImages reduction6029.relations [0,0,0,0,0,0,64,187] reduction6029.output := by lin_cert using reduction6029.terms
def map_28_173 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6229 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6229 : InImage map_28_173 image6229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6229 : Bundle := named_bundle% "RealMapCertificates/relations/basis6229.json"
theorem reductionProof6229 : EqualModuloRelations reduction6229.relations reduction6229.input reduction6229.output := by lin_cert using reduction6229.terms
theorem substitutionProof6229 : IsMapEvaluation generatorImages reduction6229.relations [9,13,13,194] reduction6229.output := by lin_cert using reduction6229.terms
def image6230 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6230 : InImage map_28_173 image6230 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6230 : Bundle := named_bundle% "RealMapCertificates/relations/basis6230.json"
theorem reductionProof6230 : EqualModuloRelations reduction6230.relations reduction6230.input reduction6230.output := by lin_cert using reduction6230.terms
theorem substitutionProof6230 : IsMapEvaluation generatorImages reduction6230.relations [8,599] reduction6230.output := by lin_cert using reduction6230.terms
def image6231 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6231 : InImage map_28_173 image6231 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6231 : Bundle := named_bundle% "RealMapCertificates/relations/basis6231.json"
theorem reductionProof6231 : EqualModuloRelations reduction6231.relations reduction6231.input reduction6231.output := by lin_cert using reduction6231.terms
theorem substitutionProof6231 : IsMapEvaluation generatorImages reduction6231.relations [8,17,292] reduction6231.output := by lin_cert using reduction6231.terms
def map_28_174 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6355 : InImage map_28_174 image6355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6355 : Bundle := named_bundle% "RealMapCertificates/relations/basis6355.json"
theorem reductionProof6355 : EqualModuloRelations reduction6355.relations reduction6355.input reduction6355.output := by lin_cert using reduction6355.terms
theorem substitutionProof6355 : IsMapEvaluation generatorImages reduction6355.relations [13,13,13,13,13,52] reduction6355.output := by lin_cert using reduction6355.terms
def image6356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6356 : InImage map_28_174 image6356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6356 : Bundle := named_bundle% "RealMapCertificates/relations/basis6356.json"
theorem reductionProof6356 : EqualModuloRelations reduction6356.relations reduction6356.input reduction6356.output := by lin_cert using reduction6356.terms
theorem substitutionProof6356 : IsMapEvaluation generatorImages reduction6356.relations [8,9,13,23,101] reduction6356.output := by lin_cert using reduction6356.terms
def image6357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6357 : InImage map_28_174 image6357 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6357 : Bundle := named_bundle% "RealMapCertificates/relations/basis6357.json"
theorem reductionProof6357 : EqualModuloRelations reduction6357.relations reduction6357.input reduction6357.output := by lin_cert using reduction6357.terms
theorem substitutionProof6357 : IsMapEvaluation generatorImages reduction6357.relations [8,8,8,8,187] reduction6357.output := by lin_cert using reduction6357.terms
def map_28_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6468 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6468 : InImage map_28_175 image6468 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6468 : Bundle := named_bundle% "RealMapCertificates/relations/basis6468.json"
theorem reductionProof6468 : EqualModuloRelations reduction6468.relations reduction6468.input reduction6468.output := by lin_cert using reduction6468.terms
theorem substitutionProof6468 : IsMapEvaluation generatorImages reduction6468.relations [820] reduction6468.output := by lin_cert using reduction6468.terms
def map_28_176 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6570 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6570 : InImage map_28_176 image6570 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6570 : Bundle := named_bundle% "RealMapCertificates/relations/basis6570.json"
theorem reductionProof6570 : EqualModuloRelations reduction6570.relations reduction6570.input reduction6570.output := by lin_cert using reduction6570.terms
theorem substitutionProof6570 : IsMapEvaluation generatorImages reduction6570.relations [13,13,13,194] reduction6570.output := by lin_cert using reduction6570.terms
def image6571 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6571 : InImage map_28_176 image6571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6571 : Bundle := named_bundle% "RealMapCertificates/relations/basis6571.json"
theorem reductionProof6571 : EqualModuloRelations reduction6571.relations reduction6571.input reduction6571.output := by lin_cert using reduction6571.terms
theorem substitutionProof6571 : IsMapEvaluation generatorImages reduction6571.relations [8,20,292] reduction6571.output := by lin_cert using reduction6571.terms
def image6572 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6572 : InImage map_28_176 image6572 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6572 : Bundle := named_bundle% "RealMapCertificates/relations/basis6572.json"
theorem reductionProof6572 : EqualModuloRelations reduction6572.relations reduction6572.input reduction6572.output := by lin_cert using reduction6572.terms
theorem substitutionProof6572 : IsMapEvaluation generatorImages reduction6572.relations [8,8,455] reduction6572.output := by lin_cert using reduction6572.terms
end RealMapCertificates
