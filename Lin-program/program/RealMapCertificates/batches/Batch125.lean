import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 64 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 220 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 278 => []
  | 279 => []
  | 286 => []
  | 292 => []
  | 301 => []
  | 303 => []
  | 316 => []
  | 318 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 349 => []
  | 382 => []
  | 418 => []
  | 492 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 655 => []
  | 667 => []
  | 690 => []
  | 704 => []
  | 716 => []
  | 738 => []
  | 797 => []
  | 812 => []
  | 832 => []
  | 854 => []
  | 874 => []
  | 897 => []
  | 898 => []
  | 901 => []
  | 919 => []
  | 921 => []
  | 940 => []
  | 956 => []
  | 963 => []
  | 973 => []
  | 974 => []
  | 976 => []
  | 977 => []
  | 978 => []
  | 997 => []
  | 1010 => []
  | 1051 => []
  | 1063 => []
  | 1078 => []
  | 1079 => []
  | 1081 => []
  | 1084 => []
  | 1095 => []
  | 1105 => []
  | 1146 => []
  | 1147 => []
  | 1169 => []
  | 1182 => []
  | 1204 => []
  | 1256 => []
  | _ => []
def map_28_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6710 : InImage map_28_177 image6710 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6710 : Bundle := named_bundle% "RealMapCertificates/relations/basis6710.json"
theorem reductionProof6710 : EqualModuloRelations reduction6710.relations reduction6710.input reduction6710.output := by lin_cert using reduction6710.terms
theorem substitutionProof6710 : IsMapEvaluation generatorImages reduction6710.relations [8,13,13,23,101] reduction6710.output := by lin_cert using reduction6710.terms
def image6711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6711 : InImage map_28_177 image6711 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6711 : Bundle := named_bundle% "RealMapCertificates/relations/basis6711.json"
theorem reductionProof6711 : EqualModuloRelations reduction6711.relations reduction6711.input reduction6711.output := by lin_cert using reduction6711.terms
theorem substitutionProof6711 : IsMapEvaluation generatorImages reduction6711.relations [8,8,8,8,201] reduction6711.output := by lin_cert using reduction6711.terms
def map_28_178 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6809 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6809 : InImage map_28_178 image6809 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6809 : Bundle := named_bundle% "RealMapCertificates/relations/basis6809.json"
theorem reductionProof6809 : EqualModuloRelations reduction6809.relations reduction6809.input reduction6809.output := by lin_cert using reduction6809.terms
theorem substitutionProof6809 : IsMapEvaluation generatorImages reduction6809.relations [8,642] reduction6809.output := by lin_cert using reduction6809.terms
def map_28_179 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6934 : InImage map_28_179 image6934 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6934 : Bundle := named_bundle% "RealMapCertificates/relations/basis6934.json"
theorem reductionProof6934 : EqualModuloRelations reduction6934.relations reduction6934.input reduction6934.output := by lin_cert using reduction6934.terms
theorem substitutionProof6934 : IsMapEvaluation generatorImages reduction6934.relations [8,22,292] reduction6934.output := by lin_cert using reduction6934.terms
def image6935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6935 : InImage map_28_179 image6935 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6935 : Bundle := named_bundle% "RealMapCertificates/relations/basis6935.json"
theorem reductionProof6935 : EqualModuloRelations reduction6935.relations reduction6935.input reduction6935.output := by lin_cert using reduction6935.terms
theorem substitutionProof6935 : IsMapEvaluation generatorImages reduction6935.relations [8,8,492] reduction6935.output := by lin_cert using reduction6935.terms
def map_28_180 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7077 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7077 : InImage map_28_180 image7077 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7077 : Bundle := named_bundle% "RealMapCertificates/relations/basis7077.json"
theorem reductionProof7077 : EqualModuloRelations reduction7077.relations reduction7077.input reduction7077.output := by lin_cert using reduction7077.terms
theorem substitutionProof7077 : IsMapEvaluation generatorImages reduction7077.relations [9,13,13,23,101] reduction7077.output := by lin_cert using reduction7077.terms
def image7078 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7078 : InImage map_28_180 image7078 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7078 : Bundle := named_bundle% "RealMapCertificates/relations/basis7078.json"
theorem reductionProof7078 : EqualModuloRelations reduction7078.relations reduction7078.input reduction7078.output := by lin_cert using reduction7078.terms
theorem substitutionProof7078 : IsMapEvaluation generatorImages reduction7078.relations [8,8,8,8,212] reduction7078.output := by lin_cert using reduction7078.terms
def map_28_181 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7188 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7188 : InImage map_28_181 image7188 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7188 : Bundle := named_bundle% "RealMapCertificates/relations/basis7188.json"
theorem reductionProof7188 : EqualModuloRelations reduction7188.relations reduction7188.input reduction7188.output := by lin_cert using reduction7188.terms
theorem substitutionProof7188 : IsMapEvaluation generatorImages reduction7188.relations [9,642] reduction7188.output := by lin_cert using reduction7188.terms
def image7189 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7189 : InImage map_28_181 image7189 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7189 : Bundle := named_bundle% "RealMapCertificates/relations/basis7189.json"
theorem reductionProof7189 : EqualModuloRelations reduction7189.relations reduction7189.input reduction7189.output := by lin_cert using reduction7189.terms
theorem substitutionProof7189 : IsMapEvaluation generatorImages reduction7189.relations [1,5,64,187] reduction7189.output := by lin_cert using reduction7189.terms
def map_28_182 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7293 : InImage map_28_182 image7293 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7293 : Bundle := named_bundle% "RealMapCertificates/relations/basis7293.json"
theorem reductionProof7293 : EqualModuloRelations reduction7293.relations reduction7293.input reduction7293.output := by lin_cert using reduction7293.terms
theorem substitutionProof7293 : IsMapEvaluation generatorImages reduction7293.relations [64,260] reduction7293.output := by lin_cert using reduction7293.terms
def image7294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7294 : InImage map_28_182 image7294 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7294 : Bundle := named_bundle% "RealMapCertificates/relations/basis7294.json"
theorem reductionProof7294 : EqualModuloRelations reduction7294.relations reduction7294.input reduction7294.output := by lin_cert using reduction7294.terms
theorem substitutionProof7294 : IsMapEvaluation generatorImages reduction7294.relations [13,13,13,220] reduction7294.output := by lin_cert using reduction7294.terms
def image7295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7295 : InImage map_28_182 image7295 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7295 : Bundle := named_bundle% "RealMapCertificates/relations/basis7295.json"
theorem reductionProof7295 : EqualModuloRelations reduction7295.relations reduction7295.input reduction7295.output := by lin_cert using reduction7295.terms
theorem substitutionProof7295 : IsMapEvaluation generatorImages reduction7295.relations [8,23,316] reduction7295.output := by lin_cert using reduction7295.terms
def image7296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7296 : InImage map_28_182 image7296 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7296 : Bundle := named_bundle% "RealMapCertificates/relations/basis7296.json"
theorem reductionProof7296 : EqualModuloRelations reduction7296.relations reduction7296.input reduction7296.output := by lin_cert using reduction7296.terms
theorem substitutionProof7296 : IsMapEvaluation generatorImages reduction7296.relations [8,8,8,318] reduction7296.output := by lin_cert using reduction7296.terms
def map_28_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7442 : InImage map_28_183 image7442 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7442 : Bundle := named_bundle% "RealMapCertificates/relations/basis7442.json"
theorem reductionProof7442 : EqualModuloRelations reduction7442.relations reduction7442.input reduction7442.output := by lin_cert using reduction7442.terms
theorem substitutionProof7442 : IsMapEvaluation generatorImages reduction7442.relations [13,13,13,23,101] reduction7442.output := by lin_cert using reduction7442.terms
def image7443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7443 : InImage map_28_183 image7443 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7443 : Bundle := named_bundle% "RealMapCertificates/relations/basis7443.json"
theorem reductionProof7443 : EqualModuloRelations reduction7443.relations reduction7443.input reduction7443.output := by lin_cert using reduction7443.terms
theorem substitutionProof7443 : IsMapEvaluation generatorImages reduction7443.relations [8,8,8,9,212] reduction7443.output := by lin_cert using reduction7443.terms
def image7444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7444 : InImage map_28_183 image7444 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7444 : Bundle := named_bundle% "RealMapCertificates/relations/basis7444.json"
theorem reductionProof7444 : EqualModuloRelations reduction7444.relations reduction7444.input reduction7444.output := by lin_cert using reduction7444.terms
theorem substitutionProof7444 : IsMapEvaluation generatorImages reduction7444.relations [0,897] reduction7444.output := by lin_cert using reduction7444.terms
def map_28_184 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7543 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7543 : InImage map_28_184 image7543 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7543 : Bundle := named_bundle% "RealMapCertificates/relations/basis7543.json"
theorem reductionProof7543 : EqualModuloRelations reduction7543.relations reduction7543.input reduction7543.output := by lin_cert using reduction7543.terms
theorem substitutionProof7543 : IsMapEvaluation generatorImages reduction7543.relations [13,642] reduction7543.output := by lin_cert using reduction7543.terms
def image7544 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7544 : InImage map_28_184 image7544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7544 : Bundle := named_bundle% "RealMapCertificates/relations/basis7544.json"
theorem reductionProof7544 : EqualModuloRelations reduction7544.relations reduction7544.input reduction7544.output := by lin_cert using reduction7544.terms
theorem substitutionProof7544 : IsMapEvaluation generatorImages reduction7544.relations [0,921] reduction7544.output := by lin_cert using reduction7544.terms
def image7545 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7545 : InImage map_28_184 image7545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7545 : Bundle := named_bundle% "RealMapCertificates/relations/basis7545.json"
theorem reductionProof7545 : EqualModuloRelations reduction7545.relations reduction7545.input reduction7545.output := by lin_cert using reduction7545.terms
theorem substitutionProof7545 : IsMapEvaluation generatorImages reduction7545.relations [0,919] reduction7545.output := by lin_cert using reduction7545.terms
def map_28_185 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image7661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7661 : InImage map_28_185 image7661 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7661 : Bundle := named_bundle% "RealMapCertificates/relations/basis7661.json"
theorem reductionProof7661 : EqualModuloRelations reduction7661.relations reduction7661.input reduction7661.output := by lin_cert using reduction7661.terms
theorem substitutionProof7661 : IsMapEvaluation generatorImages reduction7661.relations [64,278] reduction7661.output := by lin_cert using reduction7661.terms
def image7662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7662 : InImage map_28_185 image7662 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7662 : Bundle := named_bundle% "RealMapCertificates/relations/basis7662.json"
theorem reductionProof7662 : EqualModuloRelations reduction7662.relations reduction7662.input reduction7662.output := by lin_cert using reduction7662.terms
theorem substitutionProof7662 : IsMapEvaluation generatorImages reduction7662.relations [8,23,346] reduction7662.output := by lin_cert using reduction7662.terms
def image7663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7663 : InImage map_28_185 image7663 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7663 : Bundle := named_bundle% "RealMapCertificates/relations/basis7663.json"
theorem reductionProof7663 : EqualModuloRelations reduction7663.relations reduction7663.input reduction7663.output := by lin_cert using reduction7663.terms
theorem substitutionProof7663 : IsMapEvaluation generatorImages reduction7663.relations [8,8,8,348] reduction7663.output := by lin_cert using reduction7663.terms
def image7664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7664 : InImage map_28_185 image7664 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7664 : Bundle := named_bundle% "RealMapCertificates/relations/basis7664.json"
theorem reductionProof7664 : EqualModuloRelations reduction7664.relations reduction7664.input reduction7664.output := by lin_cert using reduction7664.terms
theorem substitutionProof7664 : IsMapEvaluation generatorImages reduction7664.relations [1,919] reduction7664.output := by lin_cert using reduction7664.terms
def image7665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7665 : InImage map_28_185 image7665 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7665 : Bundle := named_bundle% "RealMapCertificates/relations/basis7665.json"
theorem reductionProof7665 : EqualModuloRelations reduction7665.relations reduction7665.input reduction7665.output := by lin_cert using reduction7665.terms
theorem substitutionProof7665 : IsMapEvaluation generatorImages reduction7665.relations [0,0,0,898] reduction7665.output := by lin_cert using reduction7665.terms
def map_28_186 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image7805 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7805 : InImage map_28_186 image7805 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7805 : Bundle := named_bundle% "RealMapCertificates/relations/basis7805.json"
theorem reductionProof7805 : EqualModuloRelations reduction7805.relations reduction7805.input reduction7805.output := by lin_cert using reduction7805.terms
theorem substitutionProof7805 : IsMapEvaluation generatorImages reduction7805.relations [956] reduction7805.output := by lin_cert using reduction7805.terms
def image7806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7806 : InImage map_28_186 image7806 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7806 : Bundle := named_bundle% "RealMapCertificates/relations/basis7806.json"
theorem reductionProof7806 : EqualModuloRelations reduction7806.relations reduction7806.input reduction7806.output := by lin_cert using reduction7806.terms
theorem substitutionProof7806 : IsMapEvaluation generatorImages reduction7806.relations [8,8,8,13,212] reduction7806.output := by lin_cert using reduction7806.terms
def image7807 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7807 : InImage map_28_186 image7807 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7807 : Bundle := named_bundle% "RealMapCertificates/relations/basis7807.json"
theorem reductionProof7807 : EqualModuloRelations reduction7807.relations reduction7807.input reduction7807.output := by lin_cert using reduction7807.terms
theorem substitutionProof7807 : IsMapEvaluation generatorImages reduction7807.relations [0,940] reduction7807.output := by lin_cert using reduction7807.terms
def map_28_188 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8003 : InImage map_28_188 image8003 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8003 : Bundle := named_bundle% "RealMapCertificates/relations/basis8003.json"
theorem reductionProof8003 : EqualModuloRelations reduction8003.relations reduction8003.input reduction8003.output := by lin_cert using reduction8003.terms
theorem substitutionProof8003 : IsMapEvaluation generatorImages reduction8003.relations [16,627] reduction8003.output := by lin_cert using reduction8003.terms
def image8004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8004 : InImage map_28_188 image8004 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8004 : Bundle := named_bundle% "RealMapCertificates/relations/basis8004.json"
theorem reductionProof8004 : EqualModuloRelations reduction8004.relations reduction8004.input reduction8004.output := by lin_cert using reduction8004.terms
theorem substitutionProof8004 : IsMapEvaluation generatorImages reduction8004.relations [9,23,346] reduction8004.output := by lin_cert using reduction8004.terms
def image8005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8005 : InImage map_28_188 image8005 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8005 : Bundle := named_bundle% "RealMapCertificates/relations/basis8005.json"
theorem reductionProof8005 : EqualModuloRelations reduction8005.relations reduction8005.input reduction8005.output := by lin_cert using reduction8005.terms
theorem substitutionProof8005 : IsMapEvaluation generatorImages reduction8005.relations [8,8,8,8,250] reduction8005.output := by lin_cert using reduction8005.terms
def map_28_189 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8156 : InImage map_28_189 image8156 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8156 : Bundle := named_bundle% "RealMapCertificates/relations/basis8156.json"
theorem reductionProof8156 : EqualModuloRelations reduction8156.relations reduction8156.input reduction8156.output := by lin_cert using reduction8156.terms
theorem substitutionProof8156 : IsMapEvaluation generatorImages reduction8156.relations [997] reduction8156.output := by lin_cert using reduction8156.terms
def image8157 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8157 : InImage map_28_189 image8157 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8157 : Bundle := named_bundle% "RealMapCertificates/relations/basis8157.json"
theorem reductionProof8157 : EqualModuloRelations reduction8157.relations reduction8157.input reduction8157.output := by lin_cert using reduction8157.terms
theorem substitutionProof8157 : IsMapEvaluation generatorImages reduction8157.relations [138,188] reduction8157.output := by lin_cert using reduction8157.terms
def image8158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8158 : InImage map_28_189 image8158 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8158 : Bundle := named_bundle% "RealMapCertificates/relations/basis8158.json"
theorem reductionProof8158 : EqualModuloRelations reduction8158.relations reduction8158.input reduction8158.output := by lin_cert using reduction8158.terms
theorem substitutionProof8158 : IsMapEvaluation generatorImages reduction8158.relations [8,8,9,13,212] reduction8158.output := by lin_cert using reduction8158.terms
def image8159 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8159 : InImage map_28_189 image8159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8159 : Bundle := named_bundle% "RealMapCertificates/relations/basis8159.json"
theorem reductionProof8159 : EqualModuloRelations reduction8159.relations reduction8159.input reduction8159.output := by lin_cert using reduction8159.terms
theorem substitutionProof8159 : IsMapEvaluation generatorImages reduction8159.relations [0,17,627] reduction8159.output := by lin_cert using reduction8159.terms
def image8160 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8160 : InImage map_28_189 image8160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8160 : Bundle := named_bundle% "RealMapCertificates/relations/basis8160.json"
theorem reductionProof8160 : EqualModuloRelations reduction8160.relations reduction8160.input reduction8160.output := by lin_cert using reduction8160.terms
theorem substitutionProof8160 : IsMapEvaluation generatorImages reduction8160.relations [0,0,963] reduction8160.output := by lin_cert using reduction8160.terms
def map_28_190 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8256 : InImage map_28_190 image8256 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8256 : Bundle := named_bundle% "RealMapCertificates/relations/basis8256.json"
theorem reductionProof8256 : EqualModuloRelations reduction8256.relations reduction8256.input reduction8256.output := by lin_cert using reduction8256.terms
theorem substitutionProof8256 : IsMapEvaluation generatorImages reduction8256.relations [13,716] reduction8256.output := by lin_cert using reduction8256.terms
def image8257 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8257 : InImage map_28_190 image8257 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8257 : Bundle := named_bundle% "RealMapCertificates/relations/basis8257.json"
theorem reductionProof8257 : EqualModuloRelations reduction8257.relations reduction8257.input reduction8257.output := by lin_cert using reduction8257.terms
theorem substitutionProof8257 : IsMapEvaluation generatorImages reduction8257.relations [13,13,13,13,13,83] reduction8257.output := by lin_cert using reduction8257.terms
def image8258 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8258 : InImage map_28_190 image8258 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8258 : Bundle := named_bundle% "RealMapCertificates/relations/basis8258.json"
theorem reductionProof8258 : EqualModuloRelations reduction8258.relations reduction8258.input reduction8258.output := by lin_cert using reduction8258.terms
theorem substitutionProof8258 : IsMapEvaluation generatorImages reduction8258.relations [0,64,301] reduction8258.output := by lin_cert using reduction8258.terms
def image8259 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8259 : InImage map_28_190 image8259 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8259 : Bundle := named_bundle% "RealMapCertificates/relations/basis8259.json"
theorem reductionProof8259 : EqualModuloRelations reduction8259.relations reduction8259.input reduction8259.output := by lin_cert using reduction8259.terms
theorem substitutionProof8259 : IsMapEvaluation generatorImages reduction8259.relations [0,0,974] reduction8259.output := by lin_cert using reduction8259.terms
def image8260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8260 : InImage map_28_190 image8260 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8260 : Bundle := named_bundle% "RealMapCertificates/relations/basis8260.json"
theorem reductionProof8260 : EqualModuloRelations reduction8260.relations reduction8260.input reduction8260.output := by lin_cert using reduction8260.terms
theorem substitutionProof8260 : IsMapEvaluation generatorImages reduction8260.relations [0,0,973] reduction8260.output := by lin_cert using reduction8260.terms
def map_28_191 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8383 : InImage map_28_191 image8383 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8383 : Bundle := named_bundle% "RealMapCertificates/relations/basis8383.json"
theorem reductionProof8383 : EqualModuloRelations reduction8383.relations reduction8383.input reduction8383.output := by lin_cert using reduction8383.terms
theorem substitutionProof8383 : IsMapEvaluation generatorImages reduction8383.relations [13,23,346] reduction8383.output := by lin_cert using reduction8383.terms
def image8384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8384 : InImage map_28_191 image8384 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8384 : Bundle := named_bundle% "RealMapCertificates/relations/basis8384.json"
theorem reductionProof8384 : EqualModuloRelations reduction8384.relations reduction8384.input reduction8384.output := by lin_cert using reduction8384.terms
theorem substitutionProof8384 : IsMapEvaluation generatorImages reduction8384.relations [8,797] reduction8384.output := by lin_cert using reduction8384.terms
def image8385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8385 : InImage map_28_191 image8385 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8385 : Bundle := named_bundle% "RealMapCertificates/relations/basis8385.json"
theorem reductionProof8385 : EqualModuloRelations reduction8385.relations reduction8385.input reduction8385.output := by lin_cert using reduction8385.terms
theorem substitutionProof8385 : IsMapEvaluation generatorImages reduction8385.relations [8,8,8,8,261] reduction8385.output := by lin_cert using reduction8385.terms
def image8386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8386 : InImage map_28_191 image8386 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8386 : Bundle := named_bundle% "RealMapCertificates/relations/basis8386.json"
theorem reductionProof8386 : EqualModuloRelations reduction8386.relations reduction8386.input reduction8386.output := by lin_cert using reduction8386.terms
theorem substitutionProof8386 : IsMapEvaluation generatorImages reduction8386.relations [1,1,963] reduction8386.output := by lin_cert using reduction8386.terms
def image8387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8387 : InImage map_28_191 image8387 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8387 : Bundle := named_bundle% "RealMapCertificates/relations/basis8387.json"
theorem reductionProof8387 : EqualModuloRelations reduction8387.relations reduction8387.input reduction8387.output := by lin_cert using reduction8387.terms
theorem substitutionProof8387 : IsMapEvaluation generatorImages reduction8387.relations [0,0,0,977] reduction8387.output := by lin_cert using reduction8387.terms
def image8388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8388 : InImage map_28_191 image8388 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8388 : Bundle := named_bundle% "RealMapCertificates/relations/basis8388.json"
theorem reductionProof8388 : EqualModuloRelations reduction8388.relations reduction8388.input reduction8388.output := by lin_cert using reduction8388.terms
theorem substitutionProof8388 : IsMapEvaluation generatorImages reduction8388.relations [0,0,0,976] reduction8388.output := by lin_cert using reduction8388.terms
def map_28_192 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8529 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8529 : InImage map_28_192 image8529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8529 : Bundle := named_bundle% "RealMapCertificates/relations/basis8529.json"
theorem reductionProof8529 : EqualModuloRelations reduction8529.relations reduction8529.input reduction8529.output := by lin_cert using reduction8529.terms
theorem substitutionProof8529 : IsMapEvaluation generatorImages reduction8529.relations [8,812] reduction8529.output := by lin_cert using reduction8529.terms
def image8530 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8530 : InImage map_28_192 image8530 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8530 : Bundle := named_bundle% "RealMapCertificates/relations/basis8530.json"
theorem reductionProof8530 : EqualModuloRelations reduction8530.relations reduction8530.input reduction8530.output := by lin_cert using reduction8530.terms
theorem substitutionProof8530 : IsMapEvaluation generatorImages reduction8530.relations [8,8,13,13,212] reduction8530.output := by lin_cert using reduction8530.terms
def image8531 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8531 : InImage map_28_192 image8531 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8531 : Bundle := named_bundle% "RealMapCertificates/relations/basis8531.json"
theorem reductionProof8531 : EqualModuloRelations reduction8531.relations reduction8531.input reduction8531.output := by lin_cert using reduction8531.terms
theorem substitutionProof8531 : IsMapEvaluation generatorImages reduction8531.relations [0,17,655] reduction8531.output := by lin_cert using reduction8531.terms
def image8532 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8532 : InImage map_28_192 image8532 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8532 : Bundle := named_bundle% "RealMapCertificates/relations/basis8532.json"
theorem reductionProof8532 : EqualModuloRelations reduction8532.relations reduction8532.input reduction8532.output := by lin_cert using reduction8532.terms
theorem substitutionProof8532 : IsMapEvaluation generatorImages reduction8532.relations [0,2,963] reduction8532.output := by lin_cert using reduction8532.terms
def image8533 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8533 : InImage map_28_192 image8533 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8533 : Bundle := named_bundle% "RealMapCertificates/relations/basis8533.json"
theorem reductionProof8533 : EqualModuloRelations reduction8533.relations reduction8533.input reduction8533.output := by lin_cert using reduction8533.terms
theorem substitutionProof8533 : IsMapEvaluation generatorImages reduction8533.relations [0,0,0,0,978] reduction8533.output := by lin_cert using reduction8533.terms
def map_28_194 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8762 : InImage map_28_194 image8762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8762 : Bundle := named_bundle% "RealMapCertificates/relations/basis8762.json"
theorem reductionProof8762 : EqualModuloRelations reduction8762.relations reduction8762.input reduction8762.output := by lin_cert using reduction8762.terms
theorem substitutionProof8762 : IsMapEvaluation generatorImages reduction8762.relations [64,347] reduction8762.output := by lin_cert using reduction8762.terms
def image8763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8763 : InImage map_28_194 image8763 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8763 : Bundle := named_bundle% "RealMapCertificates/relations/basis8763.json"
theorem reductionProof8763 : EqualModuloRelations reduction8763.relations reduction8763.input reduction8763.output := by lin_cert using reduction8763.terms
theorem substitutionProof8763 : IsMapEvaluation generatorImages reduction8763.relations [8,8,627] reduction8763.output := by lin_cert using reduction8763.terms
def image8764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8764 : InImage map_28_194 image8764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8764 : Bundle := named_bundle% "RealMapCertificates/relations/basis8764.json"
theorem reductionProof8764 : EqualModuloRelations reduction8764.relations reduction8764.input reduction8764.output := by lin_cert using reduction8764.terms
theorem substitutionProof8764 : IsMapEvaluation generatorImages reduction8764.relations [8,8,8,9,261] reduction8764.output := by lin_cert using reduction8764.terms
def image8765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8765 : InImage map_28_194 image8765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8765 : Bundle := named_bundle% "RealMapCertificates/relations/basis8765.json"
theorem reductionProof8765 : EqualModuloRelations reduction8765.relations reduction8765.input reduction8765.output := by lin_cert using reduction8765.terms
theorem substitutionProof8765 : IsMapEvaluation generatorImages reduction8765.relations [2,1010] reduction8765.output := by lin_cert using reduction8765.terms
def map_28_195 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image8932 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8932 : InImage map_28_195 image8932 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction8932 : Bundle := named_bundle% "RealMapCertificates/relations/basis8932.json"
theorem reductionProof8932 : EqualModuloRelations reduction8932.relations reduction8932.input reduction8932.output := by lin_cert using reduction8932.terms
theorem substitutionProof8932 : IsMapEvaluation generatorImages reduction8932.relations [1095] reduction8932.output := by lin_cert using reduction8932.terms
def image8933 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8933 : InImage map_28_195 image8933 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction8933 : Bundle := named_bundle% "RealMapCertificates/relations/basis8933.json"
theorem reductionProof8933 : EqualModuloRelations reduction8933.relations reduction8933.input reduction8933.output := by lin_cert using reduction8933.terms
theorem substitutionProof8933 : IsMapEvaluation generatorImages reduction8933.relations [8,854] reduction8933.output := by lin_cert using reduction8933.terms
def image8934 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8934 : InImage map_28_195 image8934 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction8934 : Bundle := named_bundle% "RealMapCertificates/relations/basis8934.json"
theorem reductionProof8934 : EqualModuloRelations reduction8934.relations reduction8934.input reduction8934.output := by lin_cert using reduction8934.terms
theorem substitutionProof8934 : IsMapEvaluation generatorImages reduction8934.relations [8,9,13,13,212] reduction8934.output := by lin_cert using reduction8934.terms
def image8935 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8935 : InImage map_28_195 image8935 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction8935 : Bundle := named_bundle% "RealMapCertificates/relations/basis8935.json"
theorem reductionProof8935 : EqualModuloRelations reduction8935.relations reduction8935.input reduction8935.output := by lin_cert using reduction8935.terms
theorem substitutionProof8935 : IsMapEvaluation generatorImages reduction8935.relations [0,138,209] reduction8935.output := by lin_cert using reduction8935.terms
def image8936 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8936 : InImage map_28_195 image8936 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction8936 : Bundle := named_bundle% "RealMapCertificates/relations/basis8936.json"
theorem reductionProof8936 : EqualModuloRelations reduction8936.relations reduction8936.input reduction8936.output := by lin_cert using reduction8936.terms
theorem substitutionProof8936 : IsMapEvaluation generatorImages reduction8936.relations [0,17,690] reduction8936.output := by lin_cert using reduction8936.terms
def image8937 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8937 : InImage map_28_195 image8937 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction8937 : Bundle := named_bundle% "RealMapCertificates/relations/basis8937.json"
theorem reductionProof8937 : EqualModuloRelations reduction8937.relations reduction8937.input reduction8937.output := by lin_cert using reduction8937.terms
theorem substitutionProof8937 : IsMapEvaluation generatorImages reduction8937.relations [0,8,832] reduction8937.output := by lin_cert using reduction8937.terms
def map_28_196 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9039 : InImage map_28_196 image9039 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9039 : Bundle := named_bundle% "RealMapCertificates/relations/basis9039.json"
theorem reductionProof9039 : EqualModuloRelations reduction9039.relations reduction9039.input reduction9039.output := by lin_cert using reduction9039.terms
theorem substitutionProof9039 : IsMapEvaluation generatorImages reduction9039.relations [9,13,13,13,23,75] reduction9039.output := by lin_cert using reduction9039.terms
def image9040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9040 : InImage map_28_196 image9040 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9040 : Bundle := named_bundle% "RealMapCertificates/relations/basis9040.json"
theorem reductionProof9040 : EqualModuloRelations reduction9040.relations reduction9040.input reduction9040.output := by lin_cert using reduction9040.terms
theorem substitutionProof9040 : IsMapEvaluation generatorImages reduction9040.relations [0,0,1078] reduction9040.output := by lin_cert using reduction9040.terms
def image9041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9041 : InImage map_28_196 image9041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9041 : Bundle := named_bundle% "RealMapCertificates/relations/basis9041.json"
theorem reductionProof9041 : EqualModuloRelations reduction9041.relations reduction9041.input reduction9041.output := by lin_cert using reduction9041.terms
theorem substitutionProof9041 : IsMapEvaluation generatorImages reduction9041.relations [0,0,23,627] reduction9041.output := by lin_cert using reduction9041.terms
def map_28_197 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9190 : InImage map_28_197 image9190 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9190 : Bundle := named_bundle% "RealMapCertificates/relations/basis9190.json"
theorem reductionProof9190 : EqualModuloRelations reduction9190.relations reduction9190.input reduction9190.output := by lin_cert using reduction9190.terms
theorem substitutionProof9190 : IsMapEvaluation generatorImages reduction9190.relations [64,382] reduction9190.output := by lin_cert using reduction9190.terms
def image9191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9191 : InImage map_28_197 image9191 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9191 : Bundle := named_bundle% "RealMapCertificates/relations/basis9191.json"
theorem reductionProof9191 : EqualModuloRelations reduction9191.relations reduction9191.input reduction9191.output := by lin_cert using reduction9191.terms
theorem substitutionProof9191 : IsMapEvaluation generatorImages reduction9191.relations [8,8,655] reduction9191.output := by lin_cert using reduction9191.terms
def image9192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9192 : InImage map_28_197 image9192 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9192 : Bundle := named_bundle% "RealMapCertificates/relations/basis9192.json"
theorem reductionProof9192 : EqualModuloRelations reduction9192.relations reduction9192.input reduction9192.output := by lin_cert using reduction9192.terms
theorem substitutionProof9192 : IsMapEvaluation generatorImages reduction9192.relations [8,8,8,13,261] reduction9192.output := by lin_cert using reduction9192.terms
def image9193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9193 : InImage map_28_197 image9193 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9193 : Bundle := named_bundle% "RealMapCertificates/relations/basis9193.json"
theorem reductionProof9193 : EqualModuloRelations reduction9193.relations reduction9193.input reduction9193.output := by lin_cert using reduction9193.terms
theorem substitutionProof9193 : IsMapEvaluation generatorImages reduction9193.relations [0,0,0,1079] reduction9193.output := by lin_cert using reduction9193.terms
def image9194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9194 : InImage map_28_197 image9194 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9194 : Bundle := named_bundle% "RealMapCertificates/relations/basis9194.json"
theorem reductionProof9194 : EqualModuloRelations reduction9194.relations reduction9194.input reduction9194.output := by lin_cert using reduction9194.terms
theorem substitutionProof9194 : IsMapEvaluation generatorImages reduction9194.relations [0,0,0,64,349] reduction9194.output := by lin_cert using reduction9194.terms
def map_28_198 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9377 : InImage map_28_198 image9377 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9377 : Bundle := named_bundle% "RealMapCertificates/relations/basis9377.json"
theorem reductionProof9377 : EqualModuloRelations reduction9377.relations reduction9377.input reduction9377.output := by lin_cert using reduction9377.terms
theorem substitutionProof9377 : IsMapEvaluation generatorImages reduction9377.relations [13,13,13,303] reduction9377.output := by lin_cert using reduction9377.terms
def image9378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9378 : InImage map_28_198 image9378 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9378 : Bundle := named_bundle% "RealMapCertificates/relations/basis9378.json"
theorem reductionProof9378 : EqualModuloRelations reduction9378.relations reduction9378.input reduction9378.output := by lin_cert using reduction9378.terms
theorem substitutionProof9378 : IsMapEvaluation generatorImages reduction9378.relations [8,13,13,13,212] reduction9378.output := by lin_cert using reduction9378.terms
def image9379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9379 : InImage map_28_198 image9379 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9379 : Bundle := named_bundle% "RealMapCertificates/relations/basis9379.json"
theorem reductionProof9379 : EqualModuloRelations reduction9379.relations reduction9379.input reduction9379.output := by lin_cert using reduction9379.terms
theorem substitutionProof9379 : IsMapEvaluation generatorImages reduction9379.relations [8,8,667] reduction9379.output := by lin_cert using reduction9379.terms
def image9380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9380 : InImage map_28_198 image9380 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9380 : Bundle := named_bundle% "RealMapCertificates/relations/basis9380.json"
theorem reductionProof9380 : EqualModuloRelations reduction9380.relations reduction9380.input reduction9380.output := by lin_cert using reduction9380.terms
theorem substitutionProof9380 : IsMapEvaluation generatorImages reduction9380.relations [0,8,874] reduction9380.output := by lin_cert using reduction9380.terms
def image9381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9381 : InImage map_28_198 image9381 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9381 : Bundle := named_bundle% "RealMapCertificates/relations/basis9381.json"
theorem reductionProof9381 : EqualModuloRelations reduction9381.relations reduction9381.input reduction9381.output := by lin_cert using reduction9381.terms
theorem substitutionProof9381 : IsMapEvaluation generatorImages reduction9381.relations [0,0,0,0,1081] reduction9381.output := by lin_cert using reduction9381.terms
def image9382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9382 : InImage map_28_198 image9382 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9382 : Bundle := named_bundle% "RealMapCertificates/relations/basis9382.json"
theorem reductionProof9382 : EqualModuloRelations reduction9382.relations reduction9382.input reduction9382.output := by lin_cert using reduction9382.terms
theorem substitutionProof9382 : IsMapEvaluation generatorImages reduction9382.relations [0,0,0,0,0,1063] reduction9382.output := by lin_cert using reduction9382.terms
def map_28_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9507 : InImage map_28_199 image9507 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9507 : Bundle := named_bundle% "RealMapCertificates/relations/basis9507.json"
theorem reductionProof9507 : EqualModuloRelations reduction9507.relations reduction9507.input reduction9507.output := by lin_cert using reduction9507.terms
theorem substitutionProof9507 : IsMapEvaluation generatorImages reduction9507.relations [13,13,13,13,23,75] reduction9507.output := by lin_cert using reduction9507.terms
def image9508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9508 : InImage map_28_199 image9508 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9508 : Bundle := named_bundle% "RealMapCertificates/relations/basis9508.json"
theorem reductionProof9508 : EqualModuloRelations reduction9508.relations reduction9508.input reduction9508.output := by lin_cert using reduction9508.terms
theorem substitutionProof9508 : IsMapEvaluation generatorImages reduction9508.relations [0,0,0,0,0,0,0,1051] reduction9508.output := by lin_cert using reduction9508.terms
def map_28_200 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9658 : InImage map_28_200 image9658 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9658 : Bundle := named_bundle% "RealMapCertificates/relations/basis9658.json"
theorem reductionProof9658 : EqualModuloRelations reduction9658.relations reduction9658.input reduction9658.output := by lin_cert using reduction9658.terms
theorem substitutionProof9658 : IsMapEvaluation generatorImages reduction9658.relations [16,64,209] reduction9658.output := by lin_cert using reduction9658.terms
def image9659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9659 : InImage map_28_200 image9659 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9659 : Bundle := named_bundle% "RealMapCertificates/relations/basis9659.json"
theorem reductionProof9659 : EqualModuloRelations reduction9659.relations reduction9659.input reduction9659.output := by lin_cert using reduction9659.terms
theorem substitutionProof9659 : IsMapEvaluation generatorImages reduction9659.relations [8,8,690] reduction9659.output := by lin_cert using reduction9659.terms
def image9660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9660 : InImage map_28_200 image9660 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9660 : Bundle := named_bundle% "RealMapCertificates/relations/basis9660.json"
theorem reductionProof9660 : EqualModuloRelations reduction9660.relations reduction9660.input reduction9660.output := by lin_cert using reduction9660.terms
theorem substitutionProof9660 : IsMapEvaluation generatorImages reduction9660.relations [8,8,9,13,261] reduction9660.output := by lin_cert using reduction9660.terms
def image9661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9661 : InImage map_28_200 image9661 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9661 : Bundle := named_bundle% "RealMapCertificates/relations/basis9661.json"
theorem reductionProof9661 : EqualModuloRelations reduction9661.relations reduction9661.input reduction9661.output := by lin_cert using reduction9661.terms
theorem substitutionProof9661 : IsMapEvaluation generatorImages reduction9661.relations [0,0,0,0,0,0,1084] reduction9661.output := by lin_cert using reduction9661.terms
def map_28_201 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9858 : InImage map_28_201 image9858 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9858 : Bundle := named_bundle% "RealMapCertificates/relations/basis9858.json"
theorem reductionProof9858 : EqualModuloRelations reduction9858.relations reduction9858.input reduction9858.output := by lin_cert using reduction9858.terms
theorem substitutionProof9858 : IsMapEvaluation generatorImages reduction9858.relations [1204] reduction9858.output := by lin_cert using reduction9858.terms
def image9859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9859 : InImage map_28_201 image9859 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9859 : Bundle := named_bundle% "RealMapCertificates/relations/basis9859.json"
theorem reductionProof9859 : EqualModuloRelations reduction9859.relations reduction9859.input reduction9859.output := by lin_cert using reduction9859.terms
theorem substitutionProof9859 : IsMapEvaluation generatorImages reduction9859.relations [9,13,13,13,212] reduction9859.output := by lin_cert using reduction9859.terms
def image9860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9860 : InImage map_28_201 image9860 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9860 : Bundle := named_bundle% "RealMapCertificates/relations/basis9860.json"
theorem reductionProof9860 : EqualModuloRelations reduction9860.relations reduction9860.input reduction9860.output := by lin_cert using reduction9860.terms
theorem substitutionProof9860 : IsMapEvaluation generatorImages reduction9860.relations [8,8,704] reduction9860.output := by lin_cert using reduction9860.terms
def image9861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9861 : InImage map_28_201 image9861 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9861 : Bundle := named_bundle% "RealMapCertificates/relations/basis9861.json"
theorem reductionProof9861 : EqualModuloRelations reduction9861.relations reduction9861.input reduction9861.output := by lin_cert using reduction9861.terms
theorem substitutionProof9861 : IsMapEvaluation generatorImages reduction9861.relations [0,8,901] reduction9861.output := by lin_cert using reduction9861.terms
def image9862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9862 : InImage map_28_201 image9862 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9862 : Bundle := named_bundle% "RealMapCertificates/relations/basis9862.json"
theorem reductionProof9862 : EqualModuloRelations reduction9862.relations reduction9862.input reduction9862.output := by lin_cert using reduction9862.terms
theorem substitutionProof9862 : IsMapEvaluation generatorImages reduction9862.relations [0,0,149,209] reduction9862.output := by lin_cert using reduction9862.terms
def image9863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9863 : InImage map_28_201 image9863 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9863 : Bundle := named_bundle% "RealMapCertificates/relations/basis9863.json"
theorem reductionProof9863 : EqualModuloRelations reduction9863.relations reduction9863.input reduction9863.output := by lin_cert using reduction9863.terms
theorem substitutionProof9863 : IsMapEvaluation generatorImages reduction9863.relations [0,0,0,0,0,1105] reduction9863.output := by lin_cert using reduction9863.terms
def map_28_202 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9985 : InImage map_28_202 image9985 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9985 : Bundle := named_bundle% "RealMapCertificates/relations/basis9985.json"
theorem reductionProof9985 : EqualModuloRelations reduction9985.relations reduction9985.input reduction9985.output := by lin_cert using reduction9985.terms
theorem substitutionProof9985 : IsMapEvaluation generatorImages reduction9985.relations [0,0,1182] reduction9985.output := by lin_cert using reduction9985.terms
def image9986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9986 : InImage map_28_202 image9986 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9986 : Bundle := named_bundle% "RealMapCertificates/relations/basis9986.json"
theorem reductionProof9986 : EqualModuloRelations reduction9986.relations reduction9986.input reduction9986.output := by lin_cert using reduction9986.terms
theorem substitutionProof9986 : IsMapEvaluation generatorImages reduction9986.relations [0,0,0,1169] reduction9986.output := by lin_cert using reduction9986.terms
def map_28_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10160 : InImage map_28_203 image10160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10160 : Bundle := named_bundle% "RealMapCertificates/relations/basis10160.json"
theorem reductionProof10160 : EqualModuloRelations reduction10160.relations reduction10160.input reduction10160.output := by lin_cert using reduction10160.terms
theorem substitutionProof10160 : IsMapEvaluation generatorImages reduction10160.relations [8,64,279] reduction10160.output := by lin_cert using reduction10160.terms
def image10161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10161 : InImage map_28_203 image10161 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10161 : Bundle := named_bundle% "RealMapCertificates/relations/basis10161.json"
theorem reductionProof10161 : EqualModuloRelations reduction10161.relations reduction10161.input reduction10161.output := by lin_cert using reduction10161.terms
theorem substitutionProof10161 : IsMapEvaluation generatorImages reduction10161.relations [8,9,690] reduction10161.output := by lin_cert using reduction10161.terms
def image10162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10162 : InImage map_28_203 image10162 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10162 : Bundle := named_bundle% "RealMapCertificates/relations/basis10162.json"
theorem reductionProof10162 : EqualModuloRelations reduction10162.relations reduction10162.input reduction10162.output := by lin_cert using reduction10162.terms
theorem substitutionProof10162 : IsMapEvaluation generatorImages reduction10162.relations [8,8,13,13,261] reduction10162.output := by lin_cert using reduction10162.terms
def image10163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10163 : InImage map_28_203 image10163 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10163 : Bundle := named_bundle% "RealMapCertificates/relations/basis10163.json"
theorem reductionProof10163 : EqualModuloRelations reduction10163.relations reduction10163.input reduction10163.output := by lin_cert using reduction10163.terms
theorem substitutionProof10163 : IsMapEvaluation generatorImages reduction10163.relations [1,1,149,209] reduction10163.output := by lin_cert using reduction10163.terms
def image10164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10164 : InImage map_28_203 image10164 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10164 : Bundle := named_bundle% "RealMapCertificates/relations/basis10164.json"
theorem reductionProof10164 : EqualModuloRelations reduction10164.relations reduction10164.input reduction10164.output := by lin_cert using reduction10164.terms
theorem substitutionProof10164 : IsMapEvaluation generatorImages reduction10164.relations [0,0,0,0,0,1146] reduction10164.output := by lin_cert using reduction10164.terms
def map_28_204 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10362 : InImage map_28_204 image10362 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10362 : Bundle := named_bundle% "RealMapCertificates/relations/basis10362.json"
theorem reductionProof10362 : EqualModuloRelations reduction10362.relations reduction10362.input reduction10362.output := by lin_cert using reduction10362.terms
theorem substitutionProof10362 : IsMapEvaluation generatorImages reduction10362.relations [1256] reduction10362.output := by lin_cert using reduction10362.terms
def image10363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10363 : InImage map_28_204 image10363 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10363 : Bundle := named_bundle% "RealMapCertificates/relations/basis10363.json"
theorem reductionProof10363 : EqualModuloRelations reduction10363.relations reduction10363.input reduction10363.output := by lin_cert using reduction10363.terms
theorem substitutionProof10363 : IsMapEvaluation generatorImages reduction10363.relations [13,13,13,13,212] reduction10363.output := by lin_cert using reduction10363.terms
def image10364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10364 : InImage map_28_204 image10364 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10364 : Bundle := named_bundle% "RealMapCertificates/relations/basis10364.json"
theorem reductionProof10364 : EqualModuloRelations reduction10364.relations reduction10364.input reduction10364.output := by lin_cert using reduction10364.terms
theorem substitutionProof10364 : IsMapEvaluation generatorImages reduction10364.relations [9,13,23,286] reduction10364.output := by lin_cert using reduction10364.terms
def image10365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10365 : InImage map_28_204 image10365 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10365 : Bundle := named_bundle% "RealMapCertificates/relations/basis10365.json"
theorem reductionProof10365 : EqualModuloRelations reduction10365.relations reduction10365.input reduction10365.output := by lin_cert using reduction10365.terms
theorem substitutionProof10365 : IsMapEvaluation generatorImages reduction10365.relations [8,8,738] reduction10365.output := by lin_cert using reduction10365.terms
def image10366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10366 : InImage map_28_204 image10366 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10366 : Bundle := named_bundle% "RealMapCertificates/relations/basis10366.json"
theorem reductionProof10366 : EqualModuloRelations reduction10366.relations reduction10366.input reduction10366.output := by lin_cert using reduction10366.terms
theorem substitutionProof10366 : IsMapEvaluation generatorImages reduction10366.relations [0,0,0,0,0,64,418] reduction10366.output := by lin_cert using reduction10366.terms
def image10367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10367 : InImage map_28_204 image10367 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10367 : Bundle := named_bundle% "RealMapCertificates/relations/basis10367.json"
theorem reductionProof10367 : EqualModuloRelations reduction10367.relations reduction10367.input reduction10367.output := by lin_cert using reduction10367.terms
theorem substitutionProof10367 : IsMapEvaluation generatorImages reduction10367.relations [0,0,0,0,0,0,1147] reduction10367.output := by lin_cert using reduction10367.terms
end RealMapCertificates
