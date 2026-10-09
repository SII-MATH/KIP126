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
  | 43 => []
  | 48 => []
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 68 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 102 => [[2,4,4,4,4,4,4]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 123 => [[3,4,4,4,4,4,4]]
  | 134 => []
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 181 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 190 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 278 => []
  | 286 => []
  | 292 => []
  | 324 => []
  | 335 => []
  | 408 => []
  | 473 => []
  | 610 => []
  | 618 => []
  | 627 => []
  | 628 => []
  | 629 => []
  | 646 => []
  | 690 => []
  | 692 => []
  | 693 => []
  | 729 => []
  | 832 => []
  | 876 => []
  | 900 => []
  | 978 => []
  | 1104 => []
  | 1123 => []
  | 1170 => []
  | 1263 => []
  | 1289 => []
  | 1290 => []
  | 1368 => []
  | 1403 => []
  | 1404 => []
  | 1441 => []
  | 1442 => []
  | 1473 => []
  | 1484 => []
  | 1504 => []
  | 1516 => []
  | 1517 => []
  | 1539 => []
  | 1554 => []
  | 1569 => []
  | 1571 => []
  | 1572 => []
  | 1597 => []
  | 1598 => []
  | 1622 => []
  | 1641 => []
  | 1652 => []
  | 1655 => []
  | 1656 => []
  | 1683 => []
  | 1690 => []
  | _ => []
def map_28_205 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10510 : InImage map_28_205 image10510 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10510 : Bundle := named_bundle% "RealMapCertificates/relations/basis10510.json"
theorem reductionProof10510 : EqualModuloRelations reduction10510.relations reduction10510.input reduction10510.output := by lin_cert using reduction10510.terms
theorem substitutionProof10510 : IsMapEvaluation generatorImages reduction10510.relations [1289] reduction10510.output := by lin_cert using reduction10510.terms
def image10511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10511 : InImage map_28_205 image10511 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10511 : Bundle := named_bundle% "RealMapCertificates/relations/basis10511.json"
theorem reductionProof10511 : EqualModuloRelations reduction10511.relations reduction10511.input reduction10511.output := by lin_cert using reduction10511.terms
theorem substitutionProof10511 : IsMapEvaluation generatorImages reduction10511.relations [13,13,13,13,13,134] reduction10511.output := by lin_cert using reduction10511.terms
def map_28_206 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10685 : InImage map_28_206 image10685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10685 : Bundle := named_bundle% "RealMapCertificates/relations/basis10685.json"
theorem reductionProof10685 : EqualModuloRelations reduction10685.relations reduction10685.input reduction10685.output := by lin_cert using reduction10685.terms
theorem substitutionProof10685 : IsMapEvaluation generatorImages reduction10685.relations [13,900] reduction10685.output := by lin_cert using reduction10685.terms
def image10686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10686 : InImage map_28_206 image10686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10686 : Bundle := named_bundle% "RealMapCertificates/relations/basis10686.json"
theorem reductionProof10686 : EqualModuloRelations reduction10686.relations reduction10686.input reduction10686.output := by lin_cert using reduction10686.terms
theorem substitutionProof10686 : IsMapEvaluation generatorImages reduction10686.relations [8,13,690] reduction10686.output := by lin_cert using reduction10686.terms
def image10687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10687 : InImage map_28_206 image10687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10687 : Bundle := named_bundle% "RealMapCertificates/relations/basis10687.json"
theorem reductionProof10687 : EqualModuloRelations reduction10687.relations reduction10687.input reduction10687.output := by lin_cert using reduction10687.terms
theorem substitutionProof10687 : IsMapEvaluation generatorImages reduction10687.relations [8,9,13,13,261] reduction10687.output := by lin_cert using reduction10687.terms
def image10688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10688 : InImage map_28_206 image10688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10688 : Bundle := named_bundle% "RealMapCertificates/relations/basis10688.json"
theorem reductionProof10688 : EqualModuloRelations reduction10688.relations reduction10688.input reduction10688.output := by lin_cert using reduction10688.terms
theorem substitutionProof10688 : IsMapEvaluation generatorImages reduction10688.relations [8,8,64,209] reduction10688.output := by lin_cert using reduction10688.terms
def image10689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10689 : InImage map_28_206 image10689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10689 : Bundle := named_bundle% "RealMapCertificates/relations/basis10689.json"
theorem reductionProof10689 : EqualModuloRelations reduction10689.relations reduction10689.input reduction10689.output := by lin_cert using reduction10689.terms
theorem substitutionProof10689 : IsMapEvaluation generatorImages reduction10689.relations [0,0,102,324] reduction10689.output := by lin_cert using reduction10689.terms
def map_28_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10910 : InImage map_28_207 image10910 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10910 : Bundle := named_bundle% "RealMapCertificates/relations/basis10910.json"
theorem reductionProof10910 : EqualModuloRelations reduction10910.relations reduction10910.input reduction10910.output := by lin_cert using reduction10910.terms
theorem substitutionProof10910 : IsMapEvaluation generatorImages reduction10910.relations [13,13,23,286] reduction10910.output := by lin_cert using reduction10910.terms
def image10911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10911 : InImage map_28_207 image10911 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10911 : Bundle := named_bundle% "RealMapCertificates/relations/basis10911.json"
theorem reductionProof10911 : EqualModuloRelations reduction10911.relations reduction10911.input reduction10911.output := by lin_cert using reduction10911.terms
theorem substitutionProof10911 : IsMapEvaluation generatorImages reduction10911.relations [8,8,80,188] reduction10911.output := by lin_cert using reduction10911.terms
def image10912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10912 : InImage map_28_207 image10912 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10912 : Bundle := named_bundle% "RealMapCertificates/relations/basis10912.json"
theorem reductionProof10912 : EqualModuloRelations reduction10912.relations reduction10912.input reduction10912.output := by lin_cert using reduction10912.terms
theorem substitutionProof10912 : IsMapEvaluation generatorImages reduction10912.relations [1,1290] reduction10912.output := by lin_cert using reduction10912.terms
def map_28_208 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11036 : InImage map_28_208 image11036 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11036 : Bundle := named_bundle% "RealMapCertificates/relations/basis11036.json"
theorem reductionProof11036 : EqualModuloRelations reduction11036.relations reduction11036.input reduction11036.output := by lin_cert using reduction11036.terms
theorem substitutionProof11036 : IsMapEvaluation generatorImages reduction11036.relations [149,250] reduction11036.output := by lin_cert using reduction11036.terms
def image11037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11037 : InImage map_28_208 image11037 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11037 : Bundle := named_bundle% "RealMapCertificates/relations/basis11037.json"
theorem reductionProof11037 : EqualModuloRelations reduction11037.relations reduction11037.input reduction11037.output := by lin_cert using reduction11037.terms
theorem substitutionProof11037 : IsMapEvaluation generatorImages reduction11037.relations [0,0,0,0,187,187] reduction11037.output := by lin_cert using reduction11037.terms
def map_28_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11220 : InImage map_28_209 image11220 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11220 : Bundle := named_bundle% "RealMapCertificates/relations/basis11220.json"
theorem reductionProof11220 : EqualModuloRelations reduction11220.relations reduction11220.input reduction11220.output := by lin_cert using reduction11220.terms
theorem substitutionProof11220 : IsMapEvaluation generatorImages reduction11220.relations [9,13,690] reduction11220.output := by lin_cert using reduction11220.terms
def image11221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11221 : InImage map_28_209 image11221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11221 : Bundle := named_bundle% "RealMapCertificates/relations/basis11221.json"
theorem reductionProof11221 : EqualModuloRelations reduction11221.relations reduction11221.input reduction11221.output := by lin_cert using reduction11221.terms
theorem substitutionProof11221 : IsMapEvaluation generatorImages reduction11221.relations [8,13,13,13,261] reduction11221.output := by lin_cert using reduction11221.terms
def image11222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11222 : InImage map_28_209 image11222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11222 : Bundle := named_bundle% "RealMapCertificates/relations/basis11222.json"
theorem reductionProof11222 : EqualModuloRelations reduction11222.relations reduction11222.input reduction11222.output := by lin_cert using reduction11222.terms
theorem substitutionProof11222 : IsMapEvaluation generatorImages reduction11222.relations [8,8,72,209] reduction11222.output := by lin_cert using reduction11222.terms
def image11223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11223 : InImage map_28_209 image11223 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11223 : Bundle := named_bundle% "RealMapCertificates/relations/basis11223.json"
theorem reductionProof11223 : EqualModuloRelations reduction11223.relations reduction11223.input reduction11223.output := by lin_cert using reduction11223.terms
theorem substitutionProof11223 : IsMapEvaluation generatorImages reduction11223.relations [0,0,0,0,0,187,188] reduction11223.output := by lin_cert using reduction11223.terms
def map_28_210 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11425 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11425 : InImage map_28_210 image11425 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11425 : Bundle := named_bundle% "RealMapCertificates/relations/basis11425.json"
theorem reductionProof11425 : EqualModuloRelations reduction11425.relations reduction11425.input reduction11425.output := by lin_cert using reduction11425.terms
theorem substitutionProof11425 : IsMapEvaluation generatorImages reduction11425.relations [1368] reduction11425.output := by lin_cert using reduction11425.terms
def image11426 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11426 : InImage map_28_210 image11426 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11426 : Bundle := named_bundle% "RealMapCertificates/relations/basis11426.json"
theorem reductionProof11426 : EqualModuloRelations reduction11426.relations reduction11426.input reduction11426.output := by lin_cert using reduction11426.terms
theorem substitutionProof11426 : IsMapEvaluation generatorImages reduction11426.relations [13,13,13,23,189] reduction11426.output := by lin_cert using reduction11426.terms
def image11427 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11427 : InImage map_28_210 image11427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11427 : Bundle := named_bundle% "RealMapCertificates/relations/basis11427.json"
theorem reductionProof11427 : EqualModuloRelations reduction11427.relations reduction11427.input reduction11427.output := by lin_cert using reduction11427.terms
theorem substitutionProof11427 : IsMapEvaluation generatorImages reduction11427.relations [8,9,80,188] reduction11427.output := by lin_cert using reduction11427.terms
def image11428 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11428 : InImage map_28_210 image11428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11428 : Bundle := named_bundle% "RealMapCertificates/relations/basis11428.json"
theorem reductionProof11428 : EqualModuloRelations reduction11428.relations reduction11428.input reduction11428.output := by lin_cert using reduction11428.terms
theorem substitutionProof11428 : IsMapEvaluation generatorImages reduction11428.relations [0,0,0,0,111,324] reduction11428.output := by lin_cert using reduction11428.terms
def map_28_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11579 : InImage map_28_211 image11579 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11579 : Bundle := named_bundle% "RealMapCertificates/relations/basis11579.json"
theorem reductionProof11579 : EqualModuloRelations reduction11579.relations reduction11579.input reduction11579.output := by lin_cert using reduction11579.terms
theorem substitutionProof11579 : IsMapEvaluation generatorImages reduction11579.relations [149,261] reduction11579.output := by lin_cert using reduction11579.terms
def image11580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11580 : InImage map_28_211 image11580 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11580 : Bundle := named_bundle% "RealMapCertificates/relations/basis11580.json"
theorem reductionProof11580 : EqualModuloRelations reduction11580.relations reduction11580.input reduction11580.output := by lin_cert using reduction11580.terms
theorem substitutionProof11580 : IsMapEvaluation generatorImages reduction11580.relations [123,324] reduction11580.output := by lin_cert using reduction11580.terms
def map_28_212 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image11762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11762 : InImage map_28_212 image11762 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11762 : Bundle := named_bundle% "RealMapCertificates/relations/basis11762.json"
theorem reductionProof11762 : EqualModuloRelations reduction11762.relations reduction11762.input reduction11762.output := by lin_cert using reduction11762.terms
theorem substitutionProof11762 : IsMapEvaluation generatorImages reduction11762.relations [1403] reduction11762.output := by lin_cert using reduction11762.terms
def image11763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11763 : InImage map_28_212 image11763 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11763 : Bundle := named_bundle% "RealMapCertificates/relations/basis11763.json"
theorem reductionProof11763 : EqualModuloRelations reduction11763.relations reduction11763.input reduction11763.output := by lin_cert using reduction11763.terms
theorem substitutionProof11763 : IsMapEvaluation generatorImages reduction11763.relations [13,978] reduction11763.output := by lin_cert using reduction11763.terms
def image11764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11764 : InImage map_28_212 image11764 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11764 : Bundle := named_bundle% "RealMapCertificates/relations/basis11764.json"
theorem reductionProof11764 : EqualModuloRelations reduction11764.relations reduction11764.input reduction11764.output := by lin_cert using reduction11764.terms
theorem substitutionProof11764 : IsMapEvaluation generatorImages reduction11764.relations [13,13,690] reduction11764.output := by lin_cert using reduction11764.terms
def image11765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11765 : InImage map_28_212 image11765 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11765 : Bundle := named_bundle% "RealMapCertificates/relations/basis11765.json"
theorem reductionProof11765 : EqualModuloRelations reduction11765.relations reduction11765.input reduction11765.output := by lin_cert using reduction11765.terms
theorem substitutionProof11765 : IsMapEvaluation generatorImages reduction11765.relations [9,13,13,13,261] reduction11765.output := by lin_cert using reduction11765.terms
def image11766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11766 : InImage map_28_212 image11766 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11766 : Bundle := named_bundle% "RealMapCertificates/relations/basis11766.json"
theorem reductionProof11766 : EqualModuloRelations reduction11766.relations reduction11766.input reduction11766.output := by lin_cert using reduction11766.terms
theorem substitutionProof11766 : IsMapEvaluation generatorImages reduction11766.relations [8,8,79,209] reduction11766.output := by lin_cert using reduction11766.terms
def image11767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11767 : InImage map_28_212 image11767 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11767 : Bundle := named_bundle% "RealMapCertificates/relations/basis11767.json"
theorem reductionProof11767 : EqualModuloRelations reduction11767.relations reduction11767.input reduction11767.output := by lin_cert using reduction11767.terms
theorem substitutionProof11767 : IsMapEvaluation generatorImages reduction11767.relations [0,0,0,116,324] reduction11767.output := by lin_cert using reduction11767.terms
def map_28_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12008 : InImage map_28_213 image12008 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12008 : Bundle := named_bundle% "RealMapCertificates/relations/basis12008.json"
theorem reductionProof12008 : EqualModuloRelations reduction12008.relations reduction12008.input reduction12008.output := by lin_cert using reduction12008.terms
theorem substitutionProof12008 : IsMapEvaluation generatorImages reduction12008.relations [13,13,13,473] reduction12008.output := by lin_cert using reduction12008.terms
def image12009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12009 : InImage map_28_213 image12009 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12009 : Bundle := named_bundle% "RealMapCertificates/relations/basis12009.json"
theorem reductionProof12009 : EqualModuloRelations reduction12009.relations reduction12009.input reduction12009.output := by lin_cert using reduction12009.terms
theorem substitutionProof12009 : IsMapEvaluation generatorImages reduction12009.relations [8,13,80,188] reduction12009.output := by lin_cert using reduction12009.terms
def image12010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12010 : InImage map_28_213 image12010 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12010 : Bundle := named_bundle% "RealMapCertificates/relations/basis12010.json"
theorem reductionProof12010 : EqualModuloRelations reduction12010.relations reduction12010.input reduction12010.output := by lin_cert using reduction12010.terms
theorem substitutionProof12010 : IsMapEvaluation generatorImages reduction12010.relations [1,48,627] reduction12010.output := by lin_cert using reduction12010.terms
def image12011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12011 : InImage map_28_213 image12011 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12011 : Bundle := named_bundle% "RealMapCertificates/relations/basis12011.json"
theorem reductionProof12011 : EqualModuloRelations reduction12011.relations reduction12011.input reduction12011.output := by lin_cert using reduction12011.terms
theorem substitutionProof12011 : IsMapEvaluation generatorImages reduction12011.relations [0,1404] reduction12011.output := by lin_cert using reduction12011.terms
def map_28_214 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12167 : InImage map_28_214 image12167 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12167 : Bundle := named_bundle% "RealMapCertificates/relations/basis12167.json"
theorem reductionProof12167 : EqualModuloRelations reduction12167.relations reduction12167.input reduction12167.output := by lin_cert using reduction12167.terms
theorem substitutionProof12167 : IsMapEvaluation generatorImages reduction12167.relations [1441] reduction12167.output := by lin_cert using reduction12167.terms
def image12168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12168 : InImage map_28_214 image12168 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12168 : Bundle := named_bundle% "RealMapCertificates/relations/basis12168.json"
theorem reductionProof12168 : EqualModuloRelations reduction12168.relations reduction12168.input reduction12168.output := by lin_cert using reduction12168.terms
theorem substitutionProof12168 : IsMapEvaluation generatorImages reduction12168.relations [8,1104] reduction12168.output := by lin_cert using reduction12168.terms
def map_28_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12362 : InImage map_28_215 image12362 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12362 : Bundle := named_bundle% "RealMapCertificates/relations/basis12362.json"
theorem reductionProof12362 : EqualModuloRelations reduction12362.relations reduction12362.input reduction12362.output := by lin_cert using reduction12362.terms
theorem substitutionProof12362 : IsMapEvaluation generatorImages reduction12362.relations [23,876] reduction12362.output := by lin_cert using reduction12362.terms
def image12363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12363 : InImage map_28_215 image12363 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12363 : Bundle := named_bundle% "RealMapCertificates/relations/basis12363.json"
theorem reductionProof12363 : EqualModuloRelations reduction12363.relations reduction12363.input reduction12363.output := by lin_cert using reduction12363.terms
theorem substitutionProof12363 : IsMapEvaluation generatorImages reduction12363.relations [13,13,13,13,261] reduction12363.output := by lin_cert using reduction12363.terms
def image12364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12364 : InImage map_28_215 image12364 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12364 : Bundle := named_bundle% "RealMapCertificates/relations/basis12364.json"
theorem reductionProof12364 : EqualModuloRelations reduction12364.relations reduction12364.input reduction12364.output := by lin_cert using reduction12364.terms
theorem substitutionProof12364 : IsMapEvaluation generatorImages reduction12364.relations [8,8,89,209] reduction12364.output := by lin_cert using reduction12364.terms
def image12365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12365 : InImage map_28_215 image12365 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12365 : Bundle := named_bundle% "RealMapCertificates/relations/basis12365.json"
theorem reductionProof12365 : EqualModuloRelations reduction12365.relations reduction12365.input reduction12365.output := by lin_cert using reduction12365.terms
theorem substitutionProof12365 : IsMapEvaluation generatorImages reduction12365.relations [0,0,0,0,0,0,0,0,0,0,0,1263] reduction12365.output := by lin_cert using reduction12365.terms
def map_28_216 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12571 : InImage map_28_216 image12571 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12571 : Bundle := named_bundle% "RealMapCertificates/relations/basis12571.json"
theorem reductionProof12571 : EqualModuloRelations reduction12571.relations reduction12571.input reduction12571.output := by lin_cert using reduction12571.terms
theorem substitutionProof12571 : IsMapEvaluation generatorImages reduction12571.relations [1484] reduction12571.output := by lin_cert using reduction12571.terms
def image12572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12572 : InImage map_28_216 image12572 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12572 : Bundle := named_bundle% "RealMapCertificates/relations/basis12572.json"
theorem reductionProof12572 : EqualModuloRelations reduction12572.relations reduction12572.input reduction12572.output := by lin_cert using reduction12572.terms
theorem substitutionProof12572 : IsMapEvaluation generatorImages reduction12572.relations [9,13,80,188] reduction12572.output := by lin_cert using reduction12572.terms
def image12573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12573 : InImage map_28_216 image12573 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12573 : Bundle := named_bundle% "RealMapCertificates/relations/basis12573.json"
theorem reductionProof12573 : EqualModuloRelations reduction12573.relations reduction12573.input reduction12573.output := by lin_cert using reduction12573.terms
theorem substitutionProof12573 : IsMapEvaluation generatorImages reduction12573.relations [0,0,1442] reduction12573.output := by lin_cert using reduction12573.terms
def map_28_217 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12732 : InImage map_28_217 image12732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12732 : Bundle := named_bundle% "RealMapCertificates/relations/basis12732.json"
theorem reductionProof12732 : EqualModuloRelations reduction12732.relations reduction12732.input reduction12732.output := by lin_cert using reduction12732.terms
theorem substitutionProof12732 : IsMapEvaluation generatorImages reduction12732.relations [1504] reduction12732.output := by lin_cert using reduction12732.terms
def image12733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12733 : InImage map_28_217 image12733 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12733 : Bundle := named_bundle% "RealMapCertificates/relations/basis12733.json"
theorem reductionProof12733 : EqualModuloRelations reduction12733.relations reduction12733.input reduction12733.output := by lin_cert using reduction12733.terms
theorem substitutionProof12733 : IsMapEvaluation generatorImages reduction12733.relations [8,1170] reduction12733.output := by lin_cert using reduction12733.terms
def image12734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12734 : InImage map_28_217 image12734 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12734 : Bundle := named_bundle% "RealMapCertificates/relations/basis12734.json"
theorem reductionProof12734 : EqualModuloRelations reduction12734.relations reduction12734.input reduction12734.output := by lin_cert using reduction12734.terms
theorem substitutionProof12734 : IsMapEvaluation generatorImages reduction12734.relations [1,1473] reduction12734.output := by lin_cert using reduction12734.terms
def image12735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12735 : InImage map_28_217 image12735 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12735 : Bundle := named_bundle% "RealMapCertificates/relations/basis12735.json"
theorem reductionProof12735 : EqualModuloRelations reduction12735.relations reduction12735.input reduction12735.output := by lin_cert using reduction12735.terms
theorem substitutionProof12735 : IsMapEvaluation generatorImages reduction12735.relations [0,0,0,0,0,17,50,324] reduction12735.output := by lin_cert using reduction12735.terms
def map_28_218 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12924 : InImage map_28_218 image12924 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12924 : Bundle := named_bundle% "RealMapCertificates/relations/basis12924.json"
theorem reductionProof12924 : EqualModuloRelations reduction12924.relations reduction12924.input reduction12924.output := by lin_cert using reduction12924.terms
theorem substitutionProof12924 : IsMapEvaluation generatorImages reduction12924.relations [1517] reduction12924.output := by lin_cert using reduction12924.terms
def image12925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12925 : InImage map_28_218 image12925 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12925 : Bundle := named_bundle% "RealMapCertificates/relations/basis12925.json"
theorem reductionProof12925 : EqualModuloRelations reduction12925.relations reduction12925.input reduction12925.output := by lin_cert using reduction12925.terms
theorem substitutionProof12925 : IsMapEvaluation generatorImages reduction12925.relations [1516] reduction12925.output := by lin_cert using reduction12925.terms
def image12926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12926 : InImage map_28_218 image12926 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12926 : Bundle := named_bundle% "RealMapCertificates/relations/basis12926.json"
theorem reductionProof12926 : EqualModuloRelations reduction12926.relations reduction12926.input reduction12926.output := by lin_cert using reduction12926.terms
theorem substitutionProof12926 : IsMapEvaluation generatorImages reduction12926.relations [13,23,628] reduction12926.output := by lin_cert using reduction12926.terms
def image12927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12927 : InImage map_28_218 image12927 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12927 : Bundle := named_bundle% "RealMapCertificates/relations/basis12927.json"
theorem reductionProof12927 : EqualModuloRelations reduction12927.relations reduction12927.input reduction12927.output := by lin_cert using reduction12927.terms
theorem substitutionProof12927 : IsMapEvaluation generatorImages reduction12927.relations [8,8,101,209] reduction12927.output := by lin_cert using reduction12927.terms
def image12928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12928 : InImage map_28_218 image12928 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12928 : Bundle := named_bundle% "RealMapCertificates/relations/basis12928.json"
theorem reductionProof12928 : EqualModuloRelations reduction12928.relations reduction12928.input reduction12928.output := by lin_cert using reduction12928.terms
theorem substitutionProof12928 : IsMapEvaluation generatorImages reduction12928.relations [1,1,1442] reduction12928.output := by lin_cert using reduction12928.terms
def map_28_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13159 : InImage map_28_219 image13159 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13159 : Bundle := named_bundle% "RealMapCertificates/relations/basis13159.json"
theorem reductionProof13159 : EqualModuloRelations reduction13159.relations reduction13159.input reduction13159.output := by lin_cert using reduction13159.terms
theorem substitutionProof13159 : IsMapEvaluation generatorImages reduction13159.relations [64,610] reduction13159.output := by lin_cert using reduction13159.terms
def image13160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13160 : InImage map_28_219 image13160 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13160 : Bundle := named_bundle% "RealMapCertificates/relations/basis13160.json"
theorem reductionProof13160 : EqualModuloRelations reduction13160.relations reduction13160.input reduction13160.output := by lin_cert using reduction13160.terms
theorem substitutionProof13160 : IsMapEvaluation generatorImages reduction13160.relations [13,13,80,188] reduction13160.output := by lin_cert using reduction13160.terms
def map_28_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13293 : InImage map_28_220 image13293 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13293 : Bundle := named_bundle% "RealMapCertificates/relations/basis13293.json"
theorem reductionProof13293 : EqualModuloRelations reduction13293.relations reduction13293.input reduction13293.output := by lin_cert using reduction13293.terms
theorem substitutionProof13293 : IsMapEvaluation generatorImages reduction13293.relations [1554] reduction13293.output := by lin_cert using reduction13293.terms
def image13294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13294 : InImage map_28_220 image13294 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13294 : Bundle := named_bundle% "RealMapCertificates/relations/basis13294.json"
theorem reductionProof13294 : EqualModuloRelations reduction13294.relations reduction13294.input reduction13294.output := by lin_cert using reduction13294.terms
theorem substitutionProof13294 : IsMapEvaluation generatorImages reduction13294.relations [9,1170] reduction13294.output := by lin_cert using reduction13294.terms
def image13295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13295 : InImage map_28_220 image13295 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13295 : Bundle := named_bundle% "RealMapCertificates/relations/basis13295.json"
theorem reductionProof13295 : EqualModuloRelations reduction13295.relations reduction13295.input reduction13295.output := by lin_cert using reduction13295.terms
theorem substitutionProof13295 : IsMapEvaluation generatorImages reduction13295.relations [3,1404] reduction13295.output := by lin_cert using reduction13295.terms
def map_28_221 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13492 : InImage map_28_221 image13492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13492 : Bundle := named_bundle% "RealMapCertificates/relations/basis13492.json"
theorem reductionProof13492 : EqualModuloRelations reduction13492.relations reduction13492.input reduction13492.output := by lin_cert using reduction13492.terms
theorem substitutionProof13492 : IsMapEvaluation generatorImages reduction13492.relations [1569] reduction13492.output := by lin_cert using reduction13492.terms
def image13493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13493 : InImage map_28_221 image13493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13493 : Bundle := named_bundle% "RealMapCertificates/relations/basis13493.json"
theorem reductionProof13493 : EqualModuloRelations reduction13493.relations reduction13493.input reduction13493.output := by lin_cert using reduction13493.terms
theorem substitutionProof13493 : IsMapEvaluation generatorImages reduction13493.relations [153,324] reduction13493.output := by lin_cert using reduction13493.terms
def image13494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13494 : InImage map_28_221 image13494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13494 : Bundle := named_bundle% "RealMapCertificates/relations/basis13494.json"
theorem reductionProof13494 : EqualModuloRelations reduction13494.relations reduction13494.input reduction13494.output := by lin_cert using reduction13494.terms
theorem substitutionProof13494 : IsMapEvaluation generatorImages reduction13494.relations [13,1123] reduction13494.output := by lin_cert using reduction13494.terms
def image13495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13495 : InImage map_28_221 image13495 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13495 : Bundle := named_bundle% "RealMapCertificates/relations/basis13495.json"
theorem reductionProof13495 : EqualModuloRelations reduction13495.relations reduction13495.input reduction13495.output := by lin_cert using reduction13495.terms
theorem substitutionProof13495 : IsMapEvaluation generatorImages reduction13495.relations [13,13,13,13,13,181] reduction13495.output := by lin_cert using reduction13495.terms
def image13496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13496 : InImage map_28_221 image13496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13496 : Bundle := named_bundle% "RealMapCertificates/relations/basis13496.json"
theorem reductionProof13496 : EqualModuloRelations reduction13496.relations reduction13496.input reduction13496.output := by lin_cert using reduction13496.terms
theorem substitutionProof13496 : IsMapEvaluation generatorImages reduction13496.relations [8,9,101,209] reduction13496.output := by lin_cert using reduction13496.terms
def image13497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13497 : InImage map_28_221 image13497 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13497 : Bundle := named_bundle% "RealMapCertificates/relations/basis13497.json"
theorem reductionProof13497 : EqualModuloRelations reduction13497.relations reduction13497.input reduction13497.output := by lin_cert using reduction13497.terms
theorem substitutionProof13497 : IsMapEvaluation generatorImages reduction13497.relations [0,0,1539] reduction13497.output := by lin_cert using reduction13497.terms
def map_28_222 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13720 : InImage map_28_222 image13720 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13720 : Bundle := named_bundle% "RealMapCertificates/relations/basis13720.json"
theorem reductionProof13720 : EqualModuloRelations reduction13720.relations reduction13720.input reduction13720.output := by lin_cert using reduction13720.terms
theorem substitutionProof13720 : IsMapEvaluation generatorImages reduction13720.relations [1597] reduction13720.output := by lin_cert using reduction13720.terms
def image13721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13721 : InImage map_28_222 image13721 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13721 : Bundle := named_bundle% "RealMapCertificates/relations/basis13721.json"
theorem reductionProof13721 : EqualModuloRelations reduction13721.relations reduction13721.input reduction13721.output := by lin_cert using reduction13721.terms
theorem substitutionProof13721 : IsMapEvaluation generatorImages reduction13721.relations [13,13,13,13,13,190] reduction13721.output := by lin_cert using reduction13721.terms
def image13722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13722 : InImage map_28_222 image13722 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13722 : Bundle := named_bundle% "RealMapCertificates/relations/basis13722.json"
theorem reductionProof13722 : EqualModuloRelations reduction13722.relations reduction13722.input reduction13722.output := by lin_cert using reduction13722.terms
theorem substitutionProof13722 : IsMapEvaluation generatorImages reduction13722.relations [8,187,187] reduction13722.output := by lin_cert using reduction13722.terms
def image13723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13723 : InImage map_28_222 image13723 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13723 : Bundle := named_bundle% "RealMapCertificates/relations/basis13723.json"
theorem reductionProof13723 : EqualModuloRelations reduction13723.relations reduction13723.input reduction13723.output := by lin_cert using reduction13723.terms
theorem substitutionProof13723 : IsMapEvaluation generatorImages reduction13723.relations [2,2,1442] reduction13723.output := by lin_cert using reduction13723.terms
def image13724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13724 : InImage map_28_222 image13724 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13724 : Bundle := named_bundle% "RealMapCertificates/relations/basis13724.json"
theorem reductionProof13724 : EqualModuloRelations reduction13724.relations reduction13724.input reduction13724.output := by lin_cert using reduction13724.terms
theorem substitutionProof13724 : IsMapEvaluation generatorImages reduction13724.relations [0,1571] reduction13724.output := by lin_cert using reduction13724.terms
def map_28_223 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13870 : InImage map_28_223 image13870 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13870 : Bundle := named_bundle% "RealMapCertificates/relations/basis13870.json"
theorem reductionProof13870 : EqualModuloRelations reduction13870.relations reduction13870.input reduction13870.output := by lin_cert using reduction13870.terms
theorem substitutionProof13870 : IsMapEvaluation generatorImages reduction13870.relations [13,1170] reduction13870.output := by lin_cert using reduction13870.terms
def image13871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13871 : InImage map_28_223 image13871 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13871 : Bundle := named_bundle% "RealMapCertificates/relations/basis13871.json"
theorem reductionProof13871 : EqualModuloRelations reduction13871.relations reduction13871.input reduction13871.output := by lin_cert using reduction13871.terms
theorem substitutionProof13871 : IsMapEvaluation generatorImages reduction13871.relations [1,1,1539] reduction13871.output := by lin_cert using reduction13871.terms
def image13872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13872 : InImage map_28_223 image13872 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13872 : Bundle := named_bundle% "RealMapCertificates/relations/basis13872.json"
theorem reductionProof13872 : EqualModuloRelations reduction13872.relations reduction13872.input reduction13872.output := by lin_cert using reduction13872.terms
theorem substitutionProof13872 : IsMapEvaluation generatorImages reduction13872.relations [0,3,1442] reduction13872.output := by lin_cert using reduction13872.terms
def image13873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13873 : InImage map_28_223 image13873 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13873 : Bundle := named_bundle% "RealMapCertificates/relations/basis13873.json"
theorem reductionProof13873 : EqualModuloRelations reduction13873.relations reduction13873.input reduction13873.output := by lin_cert using reduction13873.terms
theorem substitutionProof13873 : IsMapEvaluation generatorImages reduction13873.relations [0,0,1572] reduction13873.output := by lin_cert using reduction13873.terms
def map_28_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14053 : InImage map_28_224 image14053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14053 : Bundle := named_bundle% "RealMapCertificates/relations/basis14053.json"
theorem reductionProof14053 : EqualModuloRelations reduction14053.relations reduction14053.input reduction14053.output := by lin_cert using reduction14053.terms
theorem substitutionProof14053 : IsMapEvaluation generatorImages reduction14053.relations [1622] reduction14053.output := by lin_cert using reduction14053.terms
def image14054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14054 : InImage map_28_224 image14054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14054 : Bundle := named_bundle% "RealMapCertificates/relations/basis14054.json"
theorem reductionProof14054 : EqualModuloRelations reduction14054.relations reduction14054.input reduction14054.output := by lin_cert using reduction14054.terms
theorem substitutionProof14054 : IsMapEvaluation generatorImages reduction14054.relations [8,111,324] reduction14054.output := by lin_cert using reduction14054.terms
def image14055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14055 : InImage map_28_224 image14055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14055 : Bundle := named_bundle% "RealMapCertificates/relations/basis14055.json"
theorem reductionProof14055 : EqualModuloRelations reduction14055.relations reduction14055.input reduction14055.output := by lin_cert using reduction14055.terms
theorem substitutionProof14055 : IsMapEvaluation generatorImages reduction14055.relations [8,13,101,209] reduction14055.output := by lin_cert using reduction14055.terms
def image14056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14056 : InImage map_28_224 image14056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14056 : Bundle := named_bundle% "RealMapCertificates/relations/basis14056.json"
theorem reductionProof14056 : EqualModuloRelations reduction14056.relations reduction14056.input reduction14056.output := by lin_cert using reduction14056.terms
theorem substitutionProof14056 : IsMapEvaluation generatorImages reduction14056.relations [1,3,1442] reduction14056.output := by lin_cert using reduction14056.terms
def image14057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14057 : InImage map_28_224 image14057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14057 : Bundle := named_bundle% "RealMapCertificates/relations/basis14057.json"
theorem reductionProof14057 : EqualModuloRelations reduction14057.relations reduction14057.input reduction14057.output := by lin_cert using reduction14057.terms
theorem substitutionProof14057 : IsMapEvaluation generatorImages reduction14057.relations [0,0,1598] reduction14057.output := by lin_cert using reduction14057.terms
def map_28_225 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14287 : InImage map_28_225 image14287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14287 : Bundle := named_bundle% "RealMapCertificates/relations/basis14287.json"
theorem reductionProof14287 : EqualModuloRelations reduction14287.relations reduction14287.input reduction14287.output := by lin_cert using reduction14287.terms
theorem substitutionProof14287 : IsMapEvaluation generatorImages reduction14287.relations [8,187,201] reduction14287.output := by lin_cert using reduction14287.terms
def image14288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14288 : InImage map_28_225 image14288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14288 : Bundle := named_bundle% "RealMapCertificates/relations/basis14288.json"
theorem reductionProof14288 : EqualModuloRelations reduction14288.relations reduction14288.input reduction14288.output := by lin_cert using reduction14288.terms
theorem substitutionProof14288 : IsMapEvaluation generatorImages reduction14288.relations [1,1,1572] reduction14288.output := by lin_cert using reduction14288.terms
def image14289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14289 : InImage map_28_225 image14289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14289 : Bundle := named_bundle% "RealMapCertificates/relations/basis14289.json"
theorem reductionProof14289 : EqualModuloRelations reduction14289.relations reduction14289.input reduction14289.output := by lin_cert using reduction14289.terms
theorem substitutionProof14289 : IsMapEvaluation generatorImages reduction14289.relations [0,43,832] reduction14289.output := by lin_cert using reduction14289.terms
def map_28_226 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14417 : InImage map_28_226 image14417 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14417 : Bundle := named_bundle% "RealMapCertificates/relations/basis14417.json"
theorem reductionProof14417 : EqualModuloRelations reduction14417.relations reduction14417.input reduction14417.output := by lin_cert using reduction14417.terms
theorem substitutionProof14417 : IsMapEvaluation generatorImages reduction14417.relations [209,260] reduction14417.output := by lin_cert using reduction14417.terms
def image14418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14418 : InImage map_28_226 image14418 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14418 : Bundle := named_bundle% "RealMapCertificates/relations/basis14418.json"
theorem reductionProof14418 : EqualModuloRelations reduction14418.relations reduction14418.input reduction14418.output := by lin_cert using reduction14418.terms
theorem substitutionProof14418 : IsMapEvaluation generatorImages reduction14418.relations [13,13,13,13,335] reduction14418.output := by lin_cert using reduction14418.terms
def image14419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14419 : InImage map_28_226 image14419 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14419 : Bundle := named_bundle% "RealMapCertificates/relations/basis14419.json"
theorem reductionProof14419 : EqualModuloRelations reduction14419.relations reduction14419.input reduction14419.output := by lin_cert using reduction14419.terms
theorem substitutionProof14419 : IsMapEvaluation generatorImages reduction14419.relations [0,0,68,646] reduction14419.output := by lin_cert using reduction14419.terms
def map_28_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14622 : InImage map_28_227 image14622 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14622 : Bundle := named_bundle% "RealMapCertificates/relations/basis14622.json"
theorem reductionProof14622 : EqualModuloRelations reduction14622.relations reduction14622.input reduction14622.output := by lin_cert using reduction14622.terms
theorem substitutionProof14622 : IsMapEvaluation generatorImages reduction14622.relations [1683] reduction14622.output := by lin_cert using reduction14622.terms
def image14623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14623 : InImage map_28_227 image14623 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14623 : Bundle := named_bundle% "RealMapCertificates/relations/basis14623.json"
theorem reductionProof14623 : EqualModuloRelations reduction14623.relations reduction14623.input reduction14623.output := by lin_cert using reduction14623.terms
theorem substitutionProof14623 : IsMapEvaluation generatorImages reduction14623.relations [188,292] reduction14623.output := by lin_cert using reduction14623.terms
def image14624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14624 : InImage map_28_227 image14624 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14624 : Bundle := named_bundle% "RealMapCertificates/relations/basis14624.json"
theorem reductionProof14624 : EqualModuloRelations reduction14624.relations reduction14624.input reduction14624.output := by lin_cert using reduction14624.terms
theorem substitutionProof14624 : IsMapEvaluation generatorImages reduction14624.relations [9,13,101,209] reduction14624.output := by lin_cert using reduction14624.terms
def image14625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14625 : InImage map_28_227 image14625 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14625 : Bundle := named_bundle% "RealMapCertificates/relations/basis14625.json"
theorem reductionProof14625 : EqualModuloRelations reduction14625.relations reduction14625.input reduction14625.output := by lin_cert using reduction14625.terms
theorem substitutionProof14625 : IsMapEvaluation generatorImages reduction14625.relations [8,117,324] reduction14625.output := by lin_cert using reduction14625.terms
def image14626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14626 : InImage map_28_227 image14626 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14626 : Bundle := named_bundle% "RealMapCertificates/relations/basis14626.json"
theorem reductionProof14626 : EqualModuloRelations reduction14626.relations reduction14626.input reduction14626.output := by lin_cert using reduction14626.terms
theorem substitutionProof14626 : IsMapEvaluation generatorImages reduction14626.relations [0,1652] reduction14626.output := by lin_cert using reduction14626.terms
def map_28_228 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14856 : InImage map_28_228 image14856 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14856 : Bundle := named_bundle% "RealMapCertificates/relations/basis14856.json"
theorem reductionProof14856 : EqualModuloRelations reduction14856.relations reduction14856.input reduction14856.output := by lin_cert using reduction14856.terms
theorem substitutionProof14856 : IsMapEvaluation generatorImages reduction14856.relations [1690] reduction14856.output := by lin_cert using reduction14856.terms
def image14857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14857 : InImage map_28_228 image14857 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14857 : Bundle := named_bundle% "RealMapCertificates/relations/basis14857.json"
theorem reductionProof14857 : EqualModuloRelations reduction14857.relations reduction14857.input reduction14857.output := by lin_cert using reduction14857.terms
theorem substitutionProof14857 : IsMapEvaluation generatorImages reduction14857.relations [9,13,13,13,408] reduction14857.output := by lin_cert using reduction14857.terms
def image14858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14858 : InImage map_28_228 image14858 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14858 : Bundle := named_bundle% "RealMapCertificates/relations/basis14858.json"
theorem reductionProof14858 : EqualModuloRelations reduction14858.relations reduction14858.input reduction14858.output := by lin_cert using reduction14858.terms
theorem substitutionProof14858 : IsMapEvaluation generatorImages reduction14858.relations [8,187,212] reduction14858.output := by lin_cert using reduction14858.terms
def image14859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14859 : InImage map_28_228 image14859 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14859 : Bundle := named_bundle% "RealMapCertificates/relations/basis14859.json"
theorem reductionProof14859 : EqualModuloRelations reduction14859.relations reduction14859.input reduction14859.output := by lin_cert using reduction14859.terms
theorem substitutionProof14859 : IsMapEvaluation generatorImages reduction14859.relations [0,64,693] reduction14859.output := by lin_cert using reduction14859.terms
def image14860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14860 : InImage map_28_228 image14860 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14860 : Bundle := named_bundle% "RealMapCertificates/relations/basis14860.json"
theorem reductionProof14860 : EqualModuloRelations reduction14860.relations reduction14860.input reduction14860.output := by lin_cert using reduction14860.terms
theorem substitutionProof14860 : IsMapEvaluation generatorImages reduction14860.relations [0,3,1539] reduction14860.output := by lin_cert using reduction14860.terms
def image14861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14861 : InImage map_28_228 image14861 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14861 : Bundle := named_bundle% "RealMapCertificates/relations/basis14861.json"
theorem reductionProof14861 : EqualModuloRelations reduction14861.relations reduction14861.input reduction14861.output := by lin_cert using reduction14861.terms
theorem substitutionProof14861 : IsMapEvaluation generatorImages reduction14861.relations [0,0,0,1641] reduction14861.output := by lin_cert using reduction14861.terms
def map_28_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15019 : InImage map_28_229 image15019 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15019 : Bundle := named_bundle% "RealMapCertificates/relations/basis15019.json"
theorem reductionProof15019 : EqualModuloRelations reduction15019.relations reduction15019.input reduction15019.output := by lin_cert using reduction15019.terms
theorem substitutionProof15019 : IsMapEvaluation generatorImages reduction15019.relations [209,278] reduction15019.output := by lin_cert using reduction15019.terms
def image15020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15020 : InImage map_28_229 image15020 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15020 : Bundle := named_bundle% "RealMapCertificates/relations/basis15020.json"
theorem reductionProof15020 : EqualModuloRelations reduction15020.relations reduction15020.input reduction15020.output := by lin_cert using reduction15020.terms
theorem substitutionProof15020 : IsMapEvaluation generatorImages reduction15020.relations [13,13,13,618] reduction15020.output := by lin_cert using reduction15020.terms
def image15021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15021 : InImage map_28_229 image15021 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15021 : Bundle := named_bundle% "RealMapCertificates/relations/basis15021.json"
theorem reductionProof15021 : EqualModuloRelations reduction15021.relations reduction15021.input reduction15021.output := by lin_cert using reduction15021.terms
theorem substitutionProof15021 : IsMapEvaluation generatorImages reduction15021.relations [1,64,692] reduction15021.output := by lin_cert using reduction15021.terms
def image15022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15022 : InImage map_28_229 image15022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15022 : Bundle := named_bundle% "RealMapCertificates/relations/basis15022.json"
theorem reductionProof15022 : EqualModuloRelations reduction15022.relations reduction15022.input reduction15022.output := by lin_cert using reduction15022.terms
theorem substitutionProof15022 : IsMapEvaluation generatorImages reduction15022.relations [0,0,0,1655] reduction15022.output := by lin_cert using reduction15022.terms
def map_28_230 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15228 : InImage map_28_230 image15228 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15228 : Bundle := named_bundle% "RealMapCertificates/relations/basis15228.json"
theorem reductionProof15228 : EqualModuloRelations reduction15228.relations reduction15228.input reduction15228.output := by lin_cert using reduction15228.terms
theorem substitutionProof15228 : IsMapEvaluation generatorImages reduction15228.relations [64,729] reduction15228.output := by lin_cert using reduction15228.terms
def image15229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15229 : InImage map_28_230 image15229 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15229 : Bundle := named_bundle% "RealMapCertificates/relations/basis15229.json"
theorem reductionProof15229 : EqualModuloRelations reduction15229.relations reduction15229.input reduction15229.output := by lin_cert using reduction15229.terms
theorem substitutionProof15229 : IsMapEvaluation generatorImages reduction15229.relations [13,13,101,209] reduction15229.output := by lin_cert using reduction15229.terms
def image15230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15230 : InImage map_28_230 image15230 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15230 : Bundle := named_bundle% "RealMapCertificates/relations/basis15230.json"
theorem reductionProof15230 : EqualModuloRelations reduction15230.relations reduction15230.input reduction15230.output := by lin_cert using reduction15230.terms
theorem substitutionProof15230 : IsMapEvaluation generatorImages reduction15230.relations [13,13,13,629] reduction15230.output := by lin_cert using reduction15230.terms
def image15231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15231 : InImage map_28_230 image15231 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15231 : Bundle := named_bundle% "RealMapCertificates/relations/basis15231.json"
theorem reductionProof15231 : EqualModuloRelations reduction15231.relations reduction15231.input reduction15231.output := by lin_cert using reduction15231.terms
theorem substitutionProof15231 : IsMapEvaluation generatorImages reduction15231.relations [8,16,50,324] reduction15231.output := by lin_cert using reduction15231.terms
def image15232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15232 : InImage map_28_230 image15232 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15232 : Bundle := named_bundle% "RealMapCertificates/relations/basis15232.json"
theorem reductionProof15232 : EqualModuloRelations reduction15232.relations reduction15232.input reduction15232.output := by lin_cert using reduction15232.terms
theorem substitutionProof15232 : IsMapEvaluation generatorImages reduction15232.relations [3,3,1442] reduction15232.output := by lin_cert using reduction15232.terms
def image15233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15233 : InImage map_28_230 image15233 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15233 : Bundle := named_bundle% "RealMapCertificates/relations/basis15233.json"
theorem reductionProof15233 : EqualModuloRelations reduction15233.relations reduction15233.input reduction15233.output := by lin_cert using reduction15233.terms
theorem substitutionProof15233 : IsMapEvaluation generatorImages reduction15233.relations [0,0,0,0,1656] reduction15233.output := by lin_cert using reduction15233.terms
end RealMapCertificates
