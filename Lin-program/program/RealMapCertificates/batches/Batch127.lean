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
  | 64 => []
  | 67 => []
  | 75 => []
  | 78 => [[4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 246 => []
  | 250 => []
  | 261 => []
  | 267 => []
  | 279 => []
  | 280 => []
  | 291 => []
  | 294 => []
  | 316 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 382 => []
  | 408 => []
  | 476 => []
  | 569 => []
  | 628 => []
  | 677 => []
  | 761 => []
  | 762 => []
  | 876 => []
  | 877 => []
  | 959 => []
  | 1038 => []
  | 1125 => []
  | 1150 => []
  | 1430 => []
  | 1443 => []
  | 1539 => []
  | 1540 => []
  | 1642 => []
  | 1656 => []
  | 1692 => []
  | 1755 => []
  | 1756 => []
  | 1758 => []
  | 1759 => []
  | 1760 => []
  | 1762 => []
  | 1779 => []
  | 1781 => []
  | 1815 => []
  | 1904 => []
  | 1906 => []
  | 1908 => []
  | 1912 => []
  | 1936 => []
  | 1938 => []
  | 1940 => []
  | 1969 => []
  | 1971 => []
  | 1998 => []
  | 1999 => []
  | 2042 => []
  | 2045 => []
  | 2061 => []
  | 2062 => []
  | 2099 => []
  | 2100 => []
  | 2102 => []
  | 2104 => []
  | 2129 => []
  | 2130 => []
  | 2131 => []
  | 2135 => []
  | 2136 => []
  | 2168 => []
  | 2172 => []
  | 2204 => []
  | 2205 => []
  | 2207 => []
  | 2209 => []
  | 2244 => []
  | 2245 => []
  | 2246 => []
  | 2280 => []
  | 2309 => []
  | 2310 => []
  | 2311 => []
  | 2312 => []
  | 2314 => []
  | _ => []
def map_28_231 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15478 : InImage map_28_231 image15478 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15478 : Bundle := named_bundle% "RealMapCertificates/relations/basis15478.json"
theorem reductionProof15478 : EqualModuloRelations reduction15478.relations reduction15478.input reduction15478.output := by lin_cert using reduction15478.terms
theorem substitutionProof15478 : IsMapEvaluation generatorImages reduction15478.relations [1755] reduction15478.output := by lin_cert using reduction15478.terms
def image15479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15479 : InImage map_28_231 image15479 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15479 : Bundle := named_bundle% "RealMapCertificates/relations/basis15479.json"
theorem reductionProof15479 : EqualModuloRelations reduction15479.relations reduction15479.input reduction15479.output := by lin_cert using reduction15479.terms
theorem substitutionProof15479 : IsMapEvaluation generatorImages reduction15479.relations [13,13,13,13,408] reduction15479.output := by lin_cert using reduction15479.terms
def image15480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15480 : InImage map_28_231 image15480 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15480 : Bundle := named_bundle% "RealMapCertificates/relations/basis15480.json"
theorem reductionProof15480 : EqualModuloRelations reduction15480.relations reduction15480.input reduction15480.output := by lin_cert using reduction15480.terms
theorem substitutionProof15480 : IsMapEvaluation generatorImages reduction15480.relations [8,201,212] reduction15480.output := by lin_cert using reduction15480.terms
def map_28_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15650 : InImage map_28_232 image15650 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15650 : Bundle := named_bundle% "RealMapCertificates/relations/basis15650.json"
theorem reductionProof15650 : EqualModuloRelations reduction15650.relations reduction15650.input reduction15650.output := by lin_cert using reduction15650.terms
theorem substitutionProof15650 : IsMapEvaluation generatorImages reduction15650.relations [209,291] reduction15650.output := by lin_cert using reduction15650.terms
def image15651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15651 : InImage map_28_232 image15651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15651 : Bundle := named_bundle% "RealMapCertificates/relations/basis15651.json"
theorem reductionProof15651 : EqualModuloRelations reduction15651.relations reduction15651.input reduction15651.output := by lin_cert using reduction15651.terms
theorem substitutionProof15651 : IsMapEvaluation generatorImages reduction15651.relations [9,13,13,677] reduction15651.output := by lin_cert using reduction15651.terms
def map_28_233 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15879 : InImage map_28_233 image15879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15879 : Bundle := named_bundle% "RealMapCertificates/relations/basis15879.json"
theorem reductionProof15879 : EqualModuloRelations reduction15879.relations reduction15879.input reduction15879.output := by lin_cert using reduction15879.terms
theorem substitutionProof15879 : IsMapEvaluation generatorImages reduction15879.relations [1815] reduction15879.output := by lin_cert using reduction15879.terms
def image15880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15880 : InImage map_28_233 image15880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15880 : Bundle := named_bundle% "RealMapCertificates/relations/basis15880.json"
theorem reductionProof15880 : EqualModuloRelations reduction15880.relations reduction15880.input reduction15880.output := by lin_cert using reduction15880.terms
theorem substitutionProof15880 : IsMapEvaluation generatorImages reduction15880.relations [64,761] reduction15880.output := by lin_cert using reduction15880.terms
def image15881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15881 : InImage map_28_233 image15881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15881 : Bundle := named_bundle% "RealMapCertificates/relations/basis15881.json"
theorem reductionProof15881 : EqualModuloRelations reduction15881.relations reduction15881.input reduction15881.output := by lin_cert using reduction15881.terms
theorem substitutionProof15881 : IsMapEvaluation generatorImages reduction15881.relations [8,8,78,324] reduction15881.output := by lin_cert using reduction15881.terms
def image15882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15882 : InImage map_28_233 image15882 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15882 : Bundle := named_bundle% "RealMapCertificates/relations/basis15882.json"
theorem reductionProof15882 : EqualModuloRelations reduction15882.relations reduction15882.input reduction15882.output := by lin_cert using reduction15882.terms
theorem substitutionProof15882 : IsMapEvaluation generatorImages reduction15882.relations [0,0,1758] reduction15882.output := by lin_cert using reduction15882.terms
def map_28_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16127 : InImage map_28_234 image16127 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16127 : Bundle := named_bundle% "RealMapCertificates/relations/basis16127.json"
theorem reductionProof16127 : EqualModuloRelations reduction16127.relations reduction16127.input reduction16127.output := by lin_cert using reduction16127.terms
theorem substitutionProof16127 : IsMapEvaluation generatorImages reduction16127.relations [13,13,959] reduction16127.output := by lin_cert using reduction16127.terms
def image16128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16128 : InImage map_28_234 image16128 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16128 : Bundle := named_bundle% "RealMapCertificates/relations/basis16128.json"
theorem reductionProof16128 : EqualModuloRelations reduction16128.relations reduction16128.input reduction16128.output := by lin_cert using reduction16128.terms
theorem substitutionProof16128 : IsMapEvaluation generatorImages reduction16128.relations [8,212,212] reduction16128.output := by lin_cert using reduction16128.terms
def image16129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16129 : InImage map_28_234 image16129 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16129 : Bundle := named_bundle% "RealMapCertificates/relations/basis16129.json"
theorem reductionProof16129 : EqualModuloRelations reduction16129.relations reduction16129.input reduction16129.output := by lin_cert using reduction16129.terms
theorem substitutionProof16129 : IsMapEvaluation generatorImages reduction16129.relations [0,64,762] reduction16129.output := by lin_cert using reduction16129.terms
def image16130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16130 : InImage map_28_234 image16130 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16130 : Bundle := named_bundle% "RealMapCertificates/relations/basis16130.json"
theorem reductionProof16130 : EqualModuloRelations reduction16130.relations reduction16130.input reduction16130.output := by lin_cert using reduction16130.terms
theorem substitutionProof16130 : IsMapEvaluation generatorImages reduction16130.relations [0,0,0,1759] reduction16130.output := by lin_cert using reduction16130.terms
def map_28_235 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16319 : InImage map_28_235 image16319 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16319 : Bundle := named_bundle% "RealMapCertificates/relations/basis16319.json"
theorem reductionProof16319 : EqualModuloRelations reduction16319.relations reduction16319.input reduction16319.output := by lin_cert using reduction16319.terms
theorem substitutionProof16319 : IsMapEvaluation generatorImages reduction16319.relations [209,316] reduction16319.output := by lin_cert using reduction16319.terms
def image16320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16320 : InImage map_28_235 image16320 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16320 : Bundle := named_bundle% "RealMapCertificates/relations/basis16320.json"
theorem reductionProof16320 : EqualModuloRelations reduction16320.relations reduction16320.input reduction16320.output := by lin_cert using reduction16320.terms
theorem substitutionProof16320 : IsMapEvaluation generatorImages reduction16320.relations [13,13,13,677] reduction16320.output := by lin_cert using reduction16320.terms
def image16321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16321 : InImage map_28_235 image16321 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16321 : Bundle := named_bundle% "RealMapCertificates/relations/basis16321.json"
theorem reductionProof16321 : EqualModuloRelations reduction16321.relations reduction16321.input reduction16321.output := by lin_cert using reduction16321.terms
theorem substitutionProof16321 : IsMapEvaluation generatorImages reduction16321.relations [2,1756] reduction16321.output := by lin_cert using reduction16321.terms
def image16322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16322 : InImage map_28_235 image16322 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16322 : Bundle := named_bundle% "RealMapCertificates/relations/basis16322.json"
theorem reductionProof16322 : EqualModuloRelations reduction16322.relations reduction16322.input reduction16322.output := by lin_cert using reduction16322.terms
theorem substitutionProof16322 : IsMapEvaluation generatorImages reduction16322.relations [1,1,1758] reduction16322.output := by lin_cert using reduction16322.terms
def image16323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16323 : InImage map_28_235 image16323 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16323 : Bundle := named_bundle% "RealMapCertificates/relations/basis16323.json"
theorem reductionProof16323 : EqualModuloRelations reduction16323.relations reduction16323.input reduction16323.output := by lin_cert using reduction16323.terms
theorem substitutionProof16323 : IsMapEvaluation generatorImages reduction16323.relations [0,0,0,1781] reduction16323.output := by lin_cert using reduction16323.terms
def image16324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16324 : InImage map_28_235 image16324 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16324 : Bundle := named_bundle% "RealMapCertificates/relations/basis16324.json"
theorem reductionProof16324 : EqualModuloRelations reduction16324.relations reduction16324.input reduction16324.output := by lin_cert using reduction16324.terms
theorem substitutionProof16324 : IsMapEvaluation generatorImages reduction16324.relations [0,0,0,1779] reduction16324.output := by lin_cert using reduction16324.terms
def map_28_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16559 : InImage map_28_236 image16559 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16559 : Bundle := named_bundle% "RealMapCertificates/relations/basis16559.json"
theorem reductionProof16559 : EqualModuloRelations reduction16559.relations reduction16559.input reduction16559.output := by lin_cert using reduction16559.terms
theorem substitutionProof16559 : IsMapEvaluation generatorImages reduction16559.relations [9,13,1038] reduction16559.output := by lin_cert using reduction16559.terms
def image16560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16560 : InImage map_28_236 image16560 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16560 : Bundle := named_bundle% "RealMapCertificates/relations/basis16560.json"
theorem reductionProof16560 : EqualModuloRelations reduction16560.relations reduction16560.input reduction16560.output := by lin_cert using reduction16560.terms
theorem substitutionProof16560 : IsMapEvaluation generatorImages reduction16560.relations [8,187,250] reduction16560.output := by lin_cert using reduction16560.terms
def image16561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16561 : InImage map_28_236 image16561 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16561 : Bundle := named_bundle% "RealMapCertificates/relations/basis16561.json"
theorem reductionProof16561 : EqualModuloRelations reduction16561.relations reduction16561.input reduction16561.output := by lin_cert using reduction16561.terms
theorem substitutionProof16561 : IsMapEvaluation generatorImages reduction16561.relations [0,7,1539] reduction16561.output := by lin_cert using reduction16561.terms
def image16562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16562 : InImage map_28_236 image16562 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16562 : Bundle := named_bundle% "RealMapCertificates/relations/basis16562.json"
theorem reductionProof16562 : EqualModuloRelations reduction16562.relations reduction16562.input reduction16562.output := by lin_cert using reduction16562.terms
theorem substitutionProof16562 : IsMapEvaluation generatorImages reduction16562.relations [0,0,0,0,0,1762] reduction16562.output := by lin_cert using reduction16562.terms
def map_28_237 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16810 : InImage map_28_237 image16810 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16810 : Bundle := named_bundle% "RealMapCertificates/relations/basis16810.json"
theorem reductionProof16810 : EqualModuloRelations reduction16810.relations reduction16810.input reduction16810.output := by lin_cert using reduction16810.terms
theorem substitutionProof16810 : IsMapEvaluation generatorImages reduction16810.relations [13,1430] reduction16810.output := by lin_cert using reduction16810.terms
def image16811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16811 : InImage map_28_237 image16811 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16811 : Bundle := named_bundle% "RealMapCertificates/relations/basis16811.json"
theorem reductionProof16811 : EqualModuloRelations reduction16811.relations reduction16811.input reduction16811.output := by lin_cert using reduction16811.terms
theorem substitutionProof16811 : IsMapEvaluation generatorImages reduction16811.relations [13,13,13,13,476] reduction16811.output := by lin_cert using reduction16811.terms
def image16812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16812 : InImage map_28_237 image16812 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16812 : Bundle := named_bundle% "RealMapCertificates/relations/basis16812.json"
theorem reductionProof16812 : EqualModuloRelations reduction16812.relations reduction16812.input reduction16812.output := by lin_cert using reduction16812.terms
theorem substitutionProof16812 : IsMapEvaluation generatorImages reduction16812.relations [9,212,212] reduction16812.output := by lin_cert using reduction16812.terms
def map_28_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16986 : InImage map_28_238 image16986 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16986 : Bundle := named_bundle% "RealMapCertificates/relations/basis16986.json"
theorem reductionProof16986 : EqualModuloRelations reduction16986.relations reduction16986.input reduction16986.output := by lin_cert using reduction16986.terms
theorem substitutionProof16986 : IsMapEvaluation generatorImages reduction16986.relations [1936] reduction16986.output := by lin_cert using reduction16986.terms
def image16987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16987 : InImage map_28_238 image16987 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16987 : Bundle := named_bundle% "RealMapCertificates/relations/basis16987.json"
theorem reductionProof16987 : EqualModuloRelations reduction16987.relations reduction16987.input reduction16987.output := by lin_cert using reduction16987.terms
theorem substitutionProof16987 : IsMapEvaluation generatorImages reduction16987.relations [209,347] reduction16987.output := by lin_cert using reduction16987.terms
def image16988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16988 : InImage map_28_238 image16988 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16988 : Bundle := named_bundle% "RealMapCertificates/relations/basis16988.json"
theorem reductionProof16988 : EqualModuloRelations reduction16988.relations reduction16988.input reduction16988.output := by lin_cert using reduction16988.terms
theorem substitutionProof16988 : IsMapEvaluation generatorImages reduction16988.relations [209,346] reduction16988.output := by lin_cert using reduction16988.terms
def image16989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16989 : InImage map_28_238 image16989 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16989 : Bundle := named_bundle% "RealMapCertificates/relations/basis16989.json"
theorem reductionProof16989 : EqualModuloRelations reduction16989.relations reduction16989.input reduction16989.output := by lin_cert using reduction16989.terms
theorem substitutionProof16989 : IsMapEvaluation generatorImages reduction16989.relations [13,1443] reduction16989.output := by lin_cert using reduction16989.terms
def map_28_239 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17245 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17245 : InImage map_28_239 image17245 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17245 : Bundle := named_bundle% "RealMapCertificates/relations/basis17245.json"
theorem reductionProof17245 : EqualModuloRelations reduction17245.relations reduction17245.input reduction17245.output := by lin_cert using reduction17245.terms
theorem substitutionProof17245 : IsMapEvaluation generatorImages reduction17245.relations [13,13,1038] reduction17245.output := by lin_cert using reduction17245.terms
def image17246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17246 : InImage map_28_239 image17246 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17246 : Bundle := named_bundle% "RealMapCertificates/relations/basis17246.json"
theorem reductionProof17246 : EqualModuloRelations reduction17246.relations reduction17246.input reduction17246.output := by lin_cert using reduction17246.terms
theorem substitutionProof17246 : IsMapEvaluation generatorImages reduction17246.relations [8,187,261] reduction17246.output := by lin_cert using reduction17246.terms
def image17247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17247 : InImage map_28_239 image17247 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17247 : Bundle := named_bundle% "RealMapCertificates/relations/basis17247.json"
theorem reductionProof17247 : EqualModuloRelations reduction17247.relations reduction17247.input reduction17247.output := by lin_cert using reduction17247.terms
theorem substitutionProof17247 : IsMapEvaluation generatorImages reduction17247.relations [1,1904] reduction17247.output := by lin_cert using reduction17247.terms
def image17248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17248 : InImage map_28_239 image17248 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17248 : Bundle := named_bundle% "RealMapCertificates/relations/basis17248.json"
theorem reductionProof17248 : EqualModuloRelations reduction17248.relations reduction17248.input reduction17248.output := by lin_cert using reduction17248.terms
theorem substitutionProof17248 : IsMapEvaluation generatorImages reduction17248.relations [0,1938] reduction17248.output := by lin_cert using reduction17248.terms
def map_28_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17515 : InImage map_28_240 image17515 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17515 : Bundle := named_bundle% "RealMapCertificates/relations/basis17515.json"
theorem reductionProof17515 : EqualModuloRelations reduction17515.relations reduction17515.input reduction17515.output := by lin_cert using reduction17515.terms
theorem substitutionProof17515 : IsMapEvaluation generatorImages reduction17515.relations [1998] reduction17515.output := by lin_cert using reduction17515.terms
def image17516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17516 : InImage map_28_240 image17516 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17516 : Bundle := named_bundle% "RealMapCertificates/relations/basis17516.json"
theorem reductionProof17516 : EqualModuloRelations reduction17516.relations reduction17516.input reduction17516.output := by lin_cert using reduction17516.terms
theorem substitutionProof17516 : IsMapEvaluation generatorImages reduction17516.relations [267,267] reduction17516.output := by lin_cert using reduction17516.terms
def image17517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17517 : InImage map_28_240 image17517 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17517 : Bundle := named_bundle% "RealMapCertificates/relations/basis17517.json"
theorem reductionProof17517 : EqualModuloRelations reduction17517.relations reduction17517.input reduction17517.output := by lin_cert using reduction17517.terms
theorem substitutionProof17517 : IsMapEvaluation generatorImages reduction17517.relations [13,212,212] reduction17517.output := by lin_cert using reduction17517.terms
def image17518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17518 : InImage map_28_240 image17518 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17518 : Bundle := named_bundle% "RealMapCertificates/relations/basis17518.json"
theorem reductionProof17518 : EqualModuloRelations reduction17518.relations reduction17518.input reduction17518.output := by lin_cert using reduction17518.terms
theorem substitutionProof17518 : IsMapEvaluation generatorImages reduction17518.relations [9,1540] reduction17518.output := by lin_cert using reduction17518.terms
def image17519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17519 : InImage map_28_240 image17519 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17519 : Bundle := named_bundle% "RealMapCertificates/relations/basis17519.json"
theorem reductionProof17519 : EqualModuloRelations reduction17519.relations reduction17519.input reduction17519.output := by lin_cert using reduction17519.terms
theorem substitutionProof17519 : IsMapEvaluation generatorImages reduction17519.relations [0,224,324] reduction17519.output := by lin_cert using reduction17519.terms
def image17520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17520 : InImage map_28_240 image17520 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17520 : Bundle := named_bundle% "RealMapCertificates/relations/basis17520.json"
theorem reductionProof17520 : EqualModuloRelations reduction17520.relations reduction17520.input reduction17520.output := by lin_cert using reduction17520.terms
theorem substitutionProof17520 : IsMapEvaluation generatorImages reduction17520.relations [0,0,0,1906] reduction17520.output := by lin_cert using reduction17520.terms
def map_28_241 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17755 : InImage map_28_241 image17755 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17755 : Bundle := named_bundle% "RealMapCertificates/relations/basis17755.json"
theorem reductionProof17755 : EqualModuloRelations reduction17755.relations reduction17755.input reduction17755.output := by lin_cert using reduction17755.terms
theorem substitutionProof17755 : IsMapEvaluation generatorImages reduction17755.relations [2042] reduction17755.output := by lin_cert using reduction17755.terms
def image17756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17756 : InImage map_28_241 image17756 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17756 : Bundle := named_bundle% "RealMapCertificates/relations/basis17756.json"
theorem reductionProof17756 : EqualModuloRelations reduction17756.relations reduction17756.input reduction17756.output := by lin_cert using reduction17756.terms
theorem substitutionProof17756 : IsMapEvaluation generatorImages reduction17756.relations [209,382] reduction17756.output := by lin_cert using reduction17756.terms
def image17757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17757 : InImage map_28_241 image17757 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17757 : Bundle := named_bundle% "RealMapCertificates/relations/basis17757.json"
theorem reductionProof17757 : EqualModuloRelations reduction17757.relations reduction17757.input reduction17757.output := by lin_cert using reduction17757.terms
theorem substitutionProof17757 : IsMapEvaluation generatorImages reduction17757.relations [13,13,13,75,189] reduction17757.output := by lin_cert using reduction17757.terms
def image17758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17758 : InImage map_28_241 image17758 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17758 : Bundle := named_bundle% "RealMapCertificates/relations/basis17758.json"
theorem reductionProof17758 : EqualModuloRelations reduction17758.relations reduction17758.input reduction17758.output := by lin_cert using reduction17758.terms
theorem substitutionProof17758 : IsMapEvaluation generatorImages reduction17758.relations [1,224,324] reduction17758.output := by lin_cert using reduction17758.terms
def image17759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17759 : InImage map_28_241 image17759 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17759 : Bundle := named_bundle% "RealMapCertificates/relations/basis17759.json"
theorem reductionProof17759 : EqualModuloRelations reduction17759.relations reduction17759.input reduction17759.output := by lin_cert using reduction17759.terms
theorem substitutionProof17759 : IsMapEvaluation generatorImages reduction17759.relations [0,0,1969] reduction17759.output := by lin_cert using reduction17759.terms
def image17760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17760 : InImage map_28_241 image17760 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17760 : Bundle := named_bundle% "RealMapCertificates/relations/basis17760.json"
theorem reductionProof17760 : EqualModuloRelations reduction17760.relations reduction17760.input reduction17760.output := by lin_cert using reduction17760.terms
theorem substitutionProof17760 : IsMapEvaluation generatorImages reduction17760.relations [0,0,225,324] reduction17760.output := by lin_cert using reduction17760.terms
def image17761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17761 : InImage map_28_241 image17761 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17761 : Bundle := named_bundle% "RealMapCertificates/relations/basis17761.json"
theorem reductionProof17761 : EqualModuloRelations reduction17761.relations reduction17761.input reduction17761.output := by lin_cert using reduction17761.terms
theorem substitutionProof17761 : IsMapEvaluation generatorImages reduction17761.relations [0,0,0,1940] reduction17761.output := by lin_cert using reduction17761.terms
def image17762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17762 : InImage map_28_241 image17762 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17762 : Bundle := named_bundle% "RealMapCertificates/relations/basis17762.json"
theorem reductionProof17762 : EqualModuloRelations reduction17762.relations reduction17762.input reduction17762.output := by lin_cert using reduction17762.terms
theorem substitutionProof17762 : IsMapEvaluation generatorImages reduction17762.relations [0,0,0,0,1908] reduction17762.output := by lin_cert using reduction17762.terms
def map_28_242 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18027 : InImage map_28_242 image18027 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18027 : Bundle := named_bundle% "RealMapCertificates/relations/basis18027.json"
theorem reductionProof18027 : EqualModuloRelations reduction18027.relations reduction18027.input reduction18027.output := by lin_cert using reduction18027.terms
theorem substitutionProof18027 : IsMapEvaluation generatorImages reduction18027.relations [2061] reduction18027.output := by lin_cert using reduction18027.terms
def image18028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18028 : InImage map_28_242 image18028 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18028 : Bundle := named_bundle% "RealMapCertificates/relations/basis18028.json"
theorem reductionProof18028 : EqualModuloRelations reduction18028.relations reduction18028.input reduction18028.output := by lin_cert using reduction18028.terms
theorem substitutionProof18028 : IsMapEvaluation generatorImages reduction18028.relations [8,188,280] reduction18028.output := by lin_cert using reduction18028.terms
def image18029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18029 : InImage map_28_242 image18029 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18029 : Bundle := named_bundle% "RealMapCertificates/relations/basis18029.json"
theorem reductionProof18029 : EqualModuloRelations reduction18029.relations reduction18029.input reduction18029.output := by lin_cert using reduction18029.terms
theorem substitutionProof18029 : IsMapEvaluation generatorImages reduction18029.relations [1,1999] reduction18029.output := by lin_cert using reduction18029.terms
def image18030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18030 : InImage map_28_242 image18030 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18030 : Bundle := named_bundle% "RealMapCertificates/relations/basis18030.json"
theorem reductionProof18030 : EqualModuloRelations reduction18030.relations reduction18030.input reduction18030.output := by lin_cert using reduction18030.terms
theorem substitutionProof18030 : IsMapEvaluation generatorImages reduction18030.relations [0,0,0,1971] reduction18030.output := by lin_cert using reduction18030.terms
def image18031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18031 : InImage map_28_242 image18031 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18031 : Bundle := named_bundle% "RealMapCertificates/relations/basis18031.json"
theorem reductionProof18031 : EqualModuloRelations reduction18031.relations reduction18031.input reduction18031.output := by lin_cert using reduction18031.terms
theorem substitutionProof18031 : IsMapEvaluation generatorImages reduction18031.relations [0,0,0,0,0,1912] reduction18031.output := by lin_cert using reduction18031.terms
def map_28_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18299 : InImage map_28_243 image18299 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18299 : Bundle := named_bundle% "RealMapCertificates/relations/basis18299.json"
theorem reductionProof18299 : EqualModuloRelations reduction18299.relations reduction18299.input reduction18299.output := by lin_cert using reduction18299.terms
theorem substitutionProof18299 : IsMapEvaluation generatorImages reduction18299.relations [2099] reduction18299.output := by lin_cert using reduction18299.terms
def image18300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18300 : InImage map_28_243 image18300 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18300 : Bundle := named_bundle% "RealMapCertificates/relations/basis18300.json"
theorem reductionProof18300 : EqualModuloRelations reduction18300.relations reduction18300.input reduction18300.output := by lin_cert using reduction18300.terms
theorem substitutionProof18300 : IsMapEvaluation generatorImages reduction18300.relations [67,877] reduction18300.output := by lin_cert using reduction18300.terms
def image18301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18301 : InImage map_28_243 image18301 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18301 : Bundle := named_bundle% "RealMapCertificates/relations/basis18301.json"
theorem reductionProof18301 : EqualModuloRelations reduction18301.relations reduction18301.input reduction18301.output := by lin_cert using reduction18301.terms
theorem substitutionProof18301 : IsMapEvaluation generatorImages reduction18301.relations [13,1540] reduction18301.output := by lin_cert using reduction18301.terms
def image18302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18302 : InImage map_28_243 image18302 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18302 : Bundle := named_bundle% "RealMapCertificates/relations/basis18302.json"
theorem reductionProof18302 : EqualModuloRelations reduction18302.relations reduction18302.input reduction18302.output := by lin_cert using reduction18302.terms
theorem substitutionProof18302 : IsMapEvaluation generatorImages reduction18302.relations [0,2062] reduction18302.output := by lin_cert using reduction18302.terms
def image18303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18303 : InImage map_28_243 image18303 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18303 : Bundle := named_bundle% "RealMapCertificates/relations/basis18303.json"
theorem reductionProof18303 : EqualModuloRelations reduction18303.relations reduction18303.input reduction18303.output := by lin_cert using reduction18303.terms
theorem substitutionProof18303 : IsMapEvaluation generatorImages reduction18303.relations [0,237,324] reduction18303.output := by lin_cert using reduction18303.terms
def map_28_244 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18498 : InImage map_28_244 image18498 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18498 : Bundle := named_bundle% "RealMapCertificates/relations/basis18498.json"
theorem reductionProof18498 : EqualModuloRelations reduction18498.relations reduction18498.input reduction18498.output := by lin_cert using reduction18498.terms
theorem substitutionProof18498 : IsMapEvaluation generatorImages reduction18498.relations [2130] reduction18498.output := by lin_cert using reduction18498.terms
def image18499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18499 : InImage map_28_244 image18499 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18499 : Bundle := named_bundle% "RealMapCertificates/relations/basis18499.json"
theorem reductionProof18499 : EqualModuloRelations reduction18499.relations reduction18499.input reduction18499.output := by lin_cert using reduction18499.terms
theorem substitutionProof18499 : IsMapEvaluation generatorImages reduction18499.relations [2129] reduction18499.output := by lin_cert using reduction18499.terms
def image18500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18500 : InImage map_28_244 image18500 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18500 : Bundle := named_bundle% "RealMapCertificates/relations/basis18500.json"
theorem reductionProof18500 : EqualModuloRelations reduction18500.relations reduction18500.input reduction18500.output := by lin_cert using reduction18500.terms
theorem substitutionProof18500 : IsMapEvaluation generatorImages reduction18500.relations [9,13,13,13,569] reduction18500.output := by lin_cert using reduction18500.terms
def image18501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18501 : InImage map_28_244 image18501 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18501 : Bundle := named_bundle% "RealMapCertificates/relations/basis18501.json"
theorem reductionProof18501 : EqualModuloRelations reduction18501.relations reduction18501.input reduction18501.output := by lin_cert using reduction18501.terms
theorem substitutionProof18501 : IsMapEvaluation generatorImages reduction18501.relations [8,1656] reduction18501.output := by lin_cert using reduction18501.terms
def image18502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18502 : InImage map_28_244 image18502 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18502 : Bundle := named_bundle% "RealMapCertificates/relations/basis18502.json"
theorem reductionProof18502 : EqualModuloRelations reduction18502.relations reduction18502.input reduction18502.output := by lin_cert using reduction18502.terms
theorem substitutionProof18502 : IsMapEvaluation generatorImages reduction18502.relations [0,2100] reduction18502.output := by lin_cert using reduction18502.terms
def image18503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18503 : InImage map_28_244 image18503 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18503 : Bundle := named_bundle% "RealMapCertificates/relations/basis18503.json"
theorem reductionProof18503 : EqualModuloRelations reduction18503.relations reduction18503.input reduction18503.output := by lin_cert using reduction18503.terms
theorem substitutionProof18503 : IsMapEvaluation generatorImages reduction18503.relations [0,0,238,324] reduction18503.output := by lin_cert using reduction18503.terms
def image18504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18504 : InImage map_28_244 image18504 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18504 : Bundle := named_bundle% "RealMapCertificates/relations/basis18504.json"
theorem reductionProof18504 : EqualModuloRelations reduction18504.relations reduction18504.input reduction18504.output := by lin_cert using reduction18504.terms
theorem substitutionProof18504 : IsMapEvaluation generatorImages reduction18504.relations [0,0,0,2045] reduction18504.output := by lin_cert using reduction18504.terms
def map_28_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18767 : InImage map_28_245 image18767 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18767 : Bundle := named_bundle% "RealMapCertificates/relations/basis18767.json"
theorem reductionProof18767 : EqualModuloRelations reduction18767.relations reduction18767.input reduction18767.output := by lin_cert using reduction18767.terms
theorem substitutionProof18767 : IsMapEvaluation generatorImages reduction18767.relations [13,13,1125] reduction18767.output := by lin_cert using reduction18767.terms
def image18768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18768 : InImage map_28_245 image18768 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18768 : Bundle := named_bundle% "RealMapCertificates/relations/basis18768.json"
theorem reductionProof18768 : EqualModuloRelations reduction18768.relations reduction18768.input reduction18768.output := by lin_cert using reduction18768.terms
theorem substitutionProof18768 : IsMapEvaluation generatorImages reduction18768.relations [8,188,294] reduction18768.output := by lin_cert using reduction18768.terms
def image18769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18769 : InImage map_28_245 image18769 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18769 : Bundle := named_bundle% "RealMapCertificates/relations/basis18769.json"
theorem reductionProof18769 : EqualModuloRelations reduction18769.relations reduction18769.input reduction18769.output := by lin_cert using reduction18769.terms
theorem substitutionProof18769 : IsMapEvaluation generatorImages reduction18769.relations [1,2100] reduction18769.output := by lin_cert using reduction18769.terms
def image18770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18770 : InImage map_28_245 image18770 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18770 : Bundle := named_bundle% "RealMapCertificates/relations/basis18770.json"
theorem reductionProof18770 : EqualModuloRelations reduction18770.relations reduction18770.input reduction18770.output := by lin_cert using reduction18770.terms
theorem substitutionProof18770 : IsMapEvaluation generatorImages reduction18770.relations [1,8,1642] reduction18770.output := by lin_cert using reduction18770.terms
def image18771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18771 : InImage map_28_245 image18771 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18771 : Bundle := named_bundle% "RealMapCertificates/relations/basis18771.json"
theorem reductionProof18771 : EqualModuloRelations reduction18771.relations reduction18771.input reduction18771.output := by lin_cert using reduction18771.terms
theorem substitutionProof18771 : IsMapEvaluation generatorImages reduction18771.relations [0,2131] reduction18771.output := by lin_cert using reduction18771.terms
def image18772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18772 : InImage map_28_245 image18772 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18772 : Bundle := named_bundle% "RealMapCertificates/relations/basis18772.json"
theorem reductionProof18772 : EqualModuloRelations reduction18772.relations reduction18772.input reduction18772.output := by lin_cert using reduction18772.terms
theorem substitutionProof18772 : IsMapEvaluation generatorImages reduction18772.relations [0,0,2102] reduction18772.output := by lin_cert using reduction18772.terms
def map_28_246 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19058 : InImage map_28_246 image19058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19058 : Bundle := named_bundle% "RealMapCertificates/relations/basis19058.json"
theorem reductionProof19058 : EqualModuloRelations reduction19058.relations reduction19058.input reduction19058.output := by lin_cert using reduction19058.terms
theorem substitutionProof19058 : IsMapEvaluation generatorImages reduction19058.relations [75,876] reduction19058.output := by lin_cert using reduction19058.terms
def image19059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19059 : InImage map_28_246 image19059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19059 : Bundle := named_bundle% "RealMapCertificates/relations/basis19059.json"
theorem reductionProof19059 : EqualModuloRelations reduction19059.relations reduction19059.input reduction19059.output := by lin_cert using reduction19059.terms
theorem substitutionProof19059 : IsMapEvaluation generatorImages reduction19059.relations [13,13,1150] reduction19059.output := by lin_cert using reduction19059.terms
def image19060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19060 : InImage map_28_246 image19060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19060 : Bundle := named_bundle% "RealMapCertificates/relations/basis19060.json"
theorem reductionProof19060 : EqualModuloRelations reduction19060.relations reduction19060.input reduction19060.output := by lin_cert using reduction19060.terms
theorem substitutionProof19060 : IsMapEvaluation generatorImages reduction19060.relations [8,1692] reduction19060.output := by lin_cert using reduction19060.terms
def image19061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19061 : InImage map_28_246 image19061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19061 : Bundle := named_bundle% "RealMapCertificates/relations/basis19061.json"
theorem reductionProof19061 : EqualModuloRelations reduction19061.relations reduction19061.input reduction19061.output := by lin_cert using reduction19061.terms
theorem substitutionProof19061 : IsMapEvaluation generatorImages reduction19061.relations [0,2168] reduction19061.output := by lin_cert using reduction19061.terms
def image19062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19062 : InImage map_28_246 image19062 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19062 : Bundle := named_bundle% "RealMapCertificates/relations/basis19062.json"
theorem reductionProof19062 : EqualModuloRelations reduction19062.relations reduction19062.input reduction19062.output := by lin_cert using reduction19062.terms
theorem substitutionProof19062 : IsMapEvaluation generatorImages reduction19062.relations [0,16,137,324] reduction19062.output := by lin_cert using reduction19062.terms
def map_28_247 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19293 : InImage map_28_247 image19293 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19293 : Bundle := named_bundle% "RealMapCertificates/relations/basis19293.json"
theorem reductionProof19293 : EqualModuloRelations reduction19293.relations reduction19293.input reduction19293.output := by lin_cert using reduction19293.terms
theorem substitutionProof19293 : IsMapEvaluation generatorImages reduction19293.relations [2244] reduction19293.output := by lin_cert using reduction19293.terms
def image19294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19294 : InImage map_28_247 image19294 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19294 : Bundle := named_bundle% "RealMapCertificates/relations/basis19294.json"
theorem reductionProof19294 : EqualModuloRelations reduction19294.relations reduction19294.input reduction19294.output := by lin_cert using reduction19294.terms
theorem substitutionProof19294 : IsMapEvaluation generatorImages reduction19294.relations [13,13,13,13,569] reduction19294.output := by lin_cert using reduction19294.terms
def image19295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19295 : InImage map_28_247 image19295 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19295 : Bundle := named_bundle% "RealMapCertificates/relations/basis19295.json"
theorem reductionProof19295 : EqualModuloRelations reduction19295.relations reduction19295.input reduction19295.output := by lin_cert using reduction19295.terms
theorem substitutionProof19295 : IsMapEvaluation generatorImages reduction19295.relations [8,209,279] reduction19295.output := by lin_cert using reduction19295.terms
def image19296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19296 : InImage map_28_247 image19296 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19296 : Bundle := named_bundle% "RealMapCertificates/relations/basis19296.json"
theorem reductionProof19296 : EqualModuloRelations reduction19296.relations reduction19296.input reduction19296.output := by lin_cert using reduction19296.terms
theorem substitutionProof19296 : IsMapEvaluation generatorImages reduction19296.relations [1,1,2102] reduction19296.output := by lin_cert using reduction19296.terms
def image19297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19297 : InImage map_28_247 image19297 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19297 : Bundle := named_bundle% "RealMapCertificates/relations/basis19297.json"
theorem reductionProof19297 : EqualModuloRelations reduction19297.relations reduction19297.input reduction19297.output := by lin_cert using reduction19297.terms
theorem substitutionProof19297 : IsMapEvaluation generatorImages reduction19297.relations [0,2204] reduction19297.output := by lin_cert using reduction19297.terms
def image19298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19298 : InImage map_28_247 image19298 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19298 : Bundle := named_bundle% "RealMapCertificates/relations/basis19298.json"
theorem reductionProof19298 : EqualModuloRelations reduction19298.relations reduction19298.input reduction19298.output := by lin_cert using reduction19298.terms
theorem substitutionProof19298 : IsMapEvaluation generatorImages reduction19298.relations [0,0,16,138,324] reduction19298.output := by lin_cert using reduction19298.terms
def image19299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19299 : InImage map_28_247 image19299 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19299 : Bundle := named_bundle% "RealMapCertificates/relations/basis19299.json"
theorem reductionProof19299 : EqualModuloRelations reduction19299.relations reduction19299.input reduction19299.output := by lin_cert using reduction19299.terms
theorem substitutionProof19299 : IsMapEvaluation generatorImages reduction19299.relations [0,0,0,0,2104] reduction19299.output := by lin_cert using reduction19299.terms
def map_28_248 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19571 : InImage map_28_248 image19571 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19571 : Bundle := named_bundle% "RealMapCertificates/relations/basis19571.json"
theorem reductionProof19571 : EqualModuloRelations reduction19571.relations reduction19571.input reduction19571.output := by lin_cert using reduction19571.terms
theorem substitutionProof19571 : IsMapEvaluation generatorImages reduction19571.relations [9,188,294] reduction19571.output := by lin_cert using reduction19571.terms
def image19572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19572 : InImage map_28_248 image19572 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19572 : Bundle := named_bundle% "RealMapCertificates/relations/basis19572.json"
theorem reductionProof19572 : EqualModuloRelations reduction19572.relations reduction19572.input reduction19572.output := by lin_cert using reduction19572.terms
theorem substitutionProof19572 : IsMapEvaluation generatorImages reduction19572.relations [1,2205] reduction19572.output := by lin_cert using reduction19572.terms
def image19573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19573 : InImage map_28_248 image19573 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19573 : Bundle := named_bundle% "RealMapCertificates/relations/basis19573.json"
theorem reductionProof19573 : EqualModuloRelations reduction19573.relations reduction19573.input reduction19573.output := by lin_cert using reduction19573.terms
theorem substitutionProof19573 : IsMapEvaluation generatorImages reduction19573.relations [0,2246] reduction19573.output := by lin_cert using reduction19573.terms
def image19574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19574 : InImage map_28_248 image19574 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19574 : Bundle := named_bundle% "RealMapCertificates/relations/basis19574.json"
theorem reductionProof19574 : EqualModuloRelations reduction19574.relations reduction19574.input reduction19574.output := by lin_cert using reduction19574.terms
theorem substitutionProof19574 : IsMapEvaluation generatorImages reduction19574.relations [0,2245] reduction19574.output := by lin_cert using reduction19574.terms
def image19575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19575 : InImage map_28_248 image19575 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19575 : Bundle := named_bundle% "RealMapCertificates/relations/basis19575.json"
theorem reductionProof19575 : EqualModuloRelations reduction19575.relations reduction19575.input reduction19575.output := by lin_cert using reduction19575.terms
theorem substitutionProof19575 : IsMapEvaluation generatorImages reduction19575.relations [0,0,2207] reduction19575.output := by lin_cert using reduction19575.terms
def image19576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19576 : InImage map_28_248 image19576 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19576 : Bundle := named_bundle% "RealMapCertificates/relations/basis19576.json"
theorem reductionProof19576 : EqualModuloRelations reduction19576.relations reduction19576.input reduction19576.output := by lin_cert using reduction19576.terms
theorem substitutionProof19576 : IsMapEvaluation generatorImages reduction19576.relations [0,0,0,0,2136] reduction19576.output := by lin_cert using reduction19576.terms
def image19577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19577 : InImage map_28_248 image19577 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19577 : Bundle := named_bundle% "RealMapCertificates/relations/basis19577.json"
theorem reductionProof19577 : EqualModuloRelations reduction19577.relations reduction19577.input reduction19577.output := by lin_cert using reduction19577.terms
theorem substitutionProof19577 : IsMapEvaluation generatorImages reduction19577.relations [0,0,0,0,2135] reduction19577.output := by lin_cert using reduction19577.terms
def map_28_249 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19867 : InImage map_28_249 image19867 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19867 : Bundle := named_bundle% "RealMapCertificates/relations/basis19867.json"
theorem reductionProof19867 : EqualModuloRelations reduction19867.relations reduction19867.input reduction19867.output := by lin_cert using reduction19867.terms
theorem substitutionProof19867 : IsMapEvaluation generatorImages reduction19867.relations [2311] reduction19867.output := by lin_cert using reduction19867.terms
def image19868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19868 : InImage map_28_249 image19868 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19868 : Bundle := named_bundle% "RealMapCertificates/relations/basis19868.json"
theorem reductionProof19868 : EqualModuloRelations reduction19868.relations reduction19868.input reduction19868.output := by lin_cert using reduction19868.terms
theorem substitutionProof19868 : IsMapEvaluation generatorImages reduction19868.relations [2310] reduction19868.output := by lin_cert using reduction19868.terms
def image19869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19869 : InImage map_28_249 image19869 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19869 : Bundle := named_bundle% "RealMapCertificates/relations/basis19869.json"
theorem reductionProof19869 : EqualModuloRelations reduction19869.relations reduction19869.input reduction19869.output := by lin_cert using reduction19869.terms
theorem substitutionProof19869 : IsMapEvaluation generatorImages reduction19869.relations [2309] reduction19869.output := by lin_cert using reduction19869.terms
def image19870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19870 : InImage map_28_249 image19870 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19870 : Bundle := named_bundle% "RealMapCertificates/relations/basis19870.json"
theorem reductionProof19870 : EqualModuloRelations reduction19870.relations reduction19870.input reduction19870.output := by lin_cert using reduction19870.terms
theorem substitutionProof19870 : IsMapEvaluation generatorImages reduction19870.relations [13,75,628] reduction19870.output := by lin_cert using reduction19870.terms
def image19871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19871 : InImage map_28_249 image19871 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19871 : Bundle := named_bundle% "RealMapCertificates/relations/basis19871.json"
theorem reductionProof19871 : EqualModuloRelations reduction19871.relations reduction19871.input reduction19871.output := by lin_cert using reduction19871.terms
theorem substitutionProof19871 : IsMapEvaluation generatorImages reduction19871.relations [8,1760] reduction19871.output := by lin_cert using reduction19871.terms
def image19872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19872 : InImage map_28_249 image19872 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19872 : Bundle := named_bundle% "RealMapCertificates/relations/basis19872.json"
theorem reductionProof19872 : EqualModuloRelations reduction19872.relations reduction19872.input reduction19872.output := by lin_cert using reduction19872.terms
theorem substitutionProof19872 : IsMapEvaluation generatorImages reduction19872.relations [0,8,184,324] reduction19872.output := by lin_cert using reduction19872.terms
def image19873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19873 : InImage map_28_249 image19873 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19873 : Bundle := named_bundle% "RealMapCertificates/relations/basis19873.json"
theorem reductionProof19873 : EqualModuloRelations reduction19873.relations reduction19873.input reduction19873.output := by lin_cert using reduction19873.terms
theorem substitutionProof19873 : IsMapEvaluation generatorImages reduction19873.relations [0,0,0,2209] reduction19873.output := by lin_cert using reduction19873.terms
def image19874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19874 : InImage map_28_249 image19874 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19874 : Bundle := named_bundle% "RealMapCertificates/relations/basis19874.json"
theorem reductionProof19874 : EqualModuloRelations reduction19874.relations reduction19874.input reduction19874.output := by lin_cert using reduction19874.terms
theorem substitutionProof19874 : IsMapEvaluation generatorImages reduction19874.relations [0,0,0,0,2172] reduction19874.output := by lin_cert using reduction19874.terms
def map_28_250 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20093 : InImage map_28_250 image20093 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20093 : Bundle := named_bundle% "RealMapCertificates/relations/basis20093.json"
theorem reductionProof20093 : EqualModuloRelations reduction20093.relations reduction20093.input reduction20093.output := by lin_cert using reduction20093.terms
theorem substitutionProof20093 : IsMapEvaluation generatorImages reduction20093.relations [8,8,209,209] reduction20093.output := by lin_cert using reduction20093.terms
def image20094 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20094 : InImage map_28_250 image20094 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20094 : Bundle := named_bundle% "RealMapCertificates/relations/basis20094.json"
theorem reductionProof20094 : EqualModuloRelations reduction20094.relations reduction20094.input reduction20094.output := by lin_cert using reduction20094.terms
theorem substitutionProof20094 : IsMapEvaluation generatorImages reduction20094.relations [3,2062] reduction20094.output := by lin_cert using reduction20094.terms
def image20095 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20095 : InImage map_28_250 image20095 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20095 : Bundle := named_bundle% "RealMapCertificates/relations/basis20095.json"
theorem reductionProof20095 : EqualModuloRelations reduction20095.relations reduction20095.input reduction20095.output := by lin_cert using reduction20095.terms
theorem substitutionProof20095 : IsMapEvaluation generatorImages reduction20095.relations [1,2280] reduction20095.output := by lin_cert using reduction20095.terms
def image20096 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20096 : InImage map_28_250 image20096 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20096 : Bundle := named_bundle% "RealMapCertificates/relations/basis20096.json"
theorem reductionProof20096 : EqualModuloRelations reduction20096.relations reduction20096.input reduction20096.output := by lin_cert using reduction20096.terms
theorem substitutionProof20096 : IsMapEvaluation generatorImages reduction20096.relations [0,2314] reduction20096.output := by lin_cert using reduction20096.terms
def image20097 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20097 : InImage map_28_250 image20097 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20097 : Bundle := named_bundle% "RealMapCertificates/relations/basis20097.json"
theorem reductionProof20097 : EqualModuloRelations reduction20097.relations reduction20097.input reduction20097.output := by lin_cert using reduction20097.terms
theorem substitutionProof20097 : IsMapEvaluation generatorImages reduction20097.relations [0,2312] reduction20097.output := by lin_cert using reduction20097.terms
def image20098 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20098 : InImage map_28_250 image20098 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20098 : Bundle := named_bundle% "RealMapCertificates/relations/basis20098.json"
theorem reductionProof20098 : EqualModuloRelations reduction20098.relations reduction20098.input reduction20098.output := by lin_cert using reduction20098.terms
theorem substitutionProof20098 : IsMapEvaluation generatorImages reduction20098.relations [0,0,8,185,324] reduction20098.output := by lin_cert using reduction20098.terms
def image20099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20099 : InImage map_28_250 image20099 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20099 : Bundle := named_bundle% "RealMapCertificates/relations/basis20099.json"
theorem reductionProof20099 : EqualModuloRelations reduction20099.relations reduction20099.input reduction20099.output := by lin_cert using reduction20099.terms
theorem substitutionProof20099 : IsMapEvaluation generatorImages reduction20099.relations [0,0,0,0,0,0,246,324] reduction20099.output := by lin_cert using reduction20099.terms
end RealMapCertificates
