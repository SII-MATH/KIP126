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
  | 43 => []
  | 50 => [[4,4,4,7]]
  | 67 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 75 => []
  | 95 => []
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 135 => [[1,4,4,4,4,4,4,4]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 188 => []
  | 189 => []
  | 210 => []
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 213 => []
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 224 => []
  | 288 => []
  | 294 => []
  | 324 => []
  | 376 => []
  | 417 => []
  | 628 => []
  | 691 => []
  | 982 => []
  | 1004 => []
  | 1318 => []
  | 1386 => []
  | 1507 => []
  | 1559 => []
  | 1760 => []
  | 1908 => []
  | 1911 => []
  | 1971 => []
  | 2004 => []
  | 2005 => []
  | 2006 => []
  | 2045 => []
  | 2100 => []
  | 2104 => []
  | 2107 => []
  | 2131 => []
  | 2168 => []
  | 2204 => []
  | 2207 => []
  | 2209 => []
  | 2248 => []
  | 2280 => []
  | 2312 => []
  | 2313 => []
  | 2315 => []
  | 2345 => []
  | 2349 => []
  | 2352 => []
  | 2412 => []
  | 2413 => []
  | 2414 => []
  | 2415 => []
  | 2416 => []
  | 2443 => []
  | 2444 => []
  | 2445 => []
  | 2494 => []
  | 2495 => []
  | 2496 => []
  | 2497 => []
  | 2498 => []
  | 2553 => []
  | 2554 => []
  | 2555 => []
  | 2556 => []
  | 2560 => []
  | 2585 => []
  | 2631 => []
  | 2632 => []
  | 2682 => []
  | 2747 => []
  | 2748 => []
  | 2801 => []
  | 2802 => []
  | 2803 => []
  | 2804 => []
  | 2805 => []
  | 2806 => []
  | _ => []
def map_28_251 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20389 : InImage map_28_251 image20389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20389 : Bundle := named_bundle% "RealMapCertificates/relations/basis20389.json"
theorem reductionProof20389 : EqualModuloRelations reduction20389.relations reduction20389.input reduction20389.output := by lin_cert using reduction20389.terms
theorem substitutionProof20389 : IsMapEvaluation generatorImages reduction20389.relations [13,188,294] reduction20389.output := by lin_cert using reduction20389.terms
def image20390 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20390 : InImage map_28_251 image20390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20390 : Bundle := named_bundle% "RealMapCertificates/relations/basis20390.json"
theorem reductionProof20390 : EqualModuloRelations reduction20390.relations reduction20390.input reduction20390.output := by lin_cert using reduction20390.terms
theorem substitutionProof20390 : IsMapEvaluation generatorImages reduction20390.relations [1,2313] reduction20390.output := by lin_cert using reduction20390.terms
def image20391 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20391 : InImage map_28_251 image20391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20391 : Bundle := named_bundle% "RealMapCertificates/relations/basis20391.json"
theorem reductionProof20391 : EqualModuloRelations reduction20391.relations reduction20391.input reduction20391.output := by lin_cert using reduction20391.terms
theorem substitutionProof20391 : IsMapEvaluation generatorImages reduction20391.relations [1,2312] reduction20391.output := by lin_cert using reduction20391.terms
def image20392 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20392 : InImage map_28_251 image20392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20392 : Bundle := named_bundle% "RealMapCertificates/relations/basis20392.json"
theorem reductionProof20392 : EqualModuloRelations reduction20392.relations reduction20392.input reduction20392.output := by lin_cert using reduction20392.terms
theorem substitutionProof20392 : IsMapEvaluation generatorImages reduction20392.relations [0,0,2315] reduction20392.output := by lin_cert using reduction20392.terms
def map_28_252 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20692 : InImage map_28_252 image20692 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20692 : Bundle := named_bundle% "RealMapCertificates/relations/basis20692.json"
theorem reductionProof20692 : EqualModuloRelations reduction20692.relations reduction20692.input reduction20692.output := by lin_cert using reduction20692.terms
theorem substitutionProof20692 : IsMapEvaluation generatorImages reduction20692.relations [2415] reduction20692.output := by lin_cert using reduction20692.terms
def image20693 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20693 : InImage map_28_252 image20693 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20693 : Bundle := named_bundle% "RealMapCertificates/relations/basis20693.json"
theorem reductionProof20693 : EqualModuloRelations reduction20693.relations reduction20693.input reduction20693.output := by lin_cert using reduction20693.terms
theorem substitutionProof20693 : IsMapEvaluation generatorImages reduction20693.relations [2414] reduction20693.output := by lin_cert using reduction20693.terms
def image20694 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20694 : InImage map_28_252 image20694 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20694 : Bundle := named_bundle% "RealMapCertificates/relations/basis20694.json"
theorem reductionProof20694 : EqualModuloRelations reduction20694.relations reduction20694.input reduction20694.output := by lin_cert using reduction20694.terms
theorem substitutionProof20694 : IsMapEvaluation generatorImages reduction20694.relations [2413] reduction20694.output := by lin_cert using reduction20694.terms
def image20695 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20695 : InImage map_28_252 image20695 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20695 : Bundle := named_bundle% "RealMapCertificates/relations/basis20695.json"
theorem reductionProof20695 : EqualModuloRelations reduction20695.relations reduction20695.input reduction20695.output := by lin_cert using reduction20695.terms
theorem substitutionProof20695 : IsMapEvaluation generatorImages reduction20695.relations [2412] reduction20695.output := by lin_cert using reduction20695.terms
def image20696 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20696 : InImage map_28_252 image20696 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20696 : Bundle := named_bundle% "RealMapCertificates/relations/basis20696.json"
theorem reductionProof20696 : EqualModuloRelations reduction20696.relations reduction20696.input reduction20696.output := by lin_cert using reduction20696.terms
theorem substitutionProof20696 : IsMapEvaluation generatorImages reduction20696.relations [9,1760] reduction20696.output := by lin_cert using reduction20696.terms
def image20697 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20697 : InImage map_28_252 image20697 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20697 : Bundle := named_bundle% "RealMapCertificates/relations/basis20697.json"
theorem reductionProof20697 : EqualModuloRelations reduction20697.relations reduction20697.input reduction20697.output := by lin_cert using reduction20697.terms
theorem substitutionProof20697 : IsMapEvaluation generatorImages reduction20697.relations [9,13,1318] reduction20697.output := by lin_cert using reduction20697.terms
def image20698 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20698 : InImage map_28_252 image20698 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20698 : Bundle := named_bundle% "RealMapCertificates/relations/basis20698.json"
theorem reductionProof20698 : EqualModuloRelations reduction20698.relations reduction20698.input reduction20698.output := by lin_cert using reduction20698.terms
theorem substitutionProof20698 : IsMapEvaluation generatorImages reduction20698.relations [3,2131] reduction20698.output := by lin_cert using reduction20698.terms
def image20699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20699 : InImage map_28_252 image20699 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20699 : Bundle := named_bundle% "RealMapCertificates/relations/basis20699.json"
theorem reductionProof20699 : EqualModuloRelations reduction20699.relations reduction20699.input reduction20699.output := by lin_cert using reduction20699.terms
theorem substitutionProof20699 : IsMapEvaluation generatorImages reduction20699.relations [2,2280] reduction20699.output := by lin_cert using reduction20699.terms
def image20700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20700 : InImage map_28_252 image20700 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20700 : Bundle := named_bundle% "RealMapCertificates/relations/basis20700.json"
theorem reductionProof20700 : EqualModuloRelations reduction20700.relations reduction20700.input reduction20700.output := by lin_cert using reduction20700.terms
theorem substitutionProof20700 : IsMapEvaluation generatorImages reduction20700.relations [0,8,8,137,324] reduction20700.output := by lin_cert using reduction20700.terms
def map_28_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20921 : InImage map_28_253 image20921 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20921 : Bundle := named_bundle% "RealMapCertificates/relations/basis20921.json"
theorem reductionProof20921 : EqualModuloRelations reduction20921.relations reduction20921.input reduction20921.output := by lin_cert using reduction20921.terms
theorem substitutionProof20921 : IsMapEvaluation generatorImages reduction20921.relations [2443] reduction20921.output := by lin_cert using reduction20921.terms
def image20922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20922 : InImage map_28_253 image20922 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20922 : Bundle := named_bundle% "RealMapCertificates/relations/basis20922.json"
theorem reductionProof20922 : EqualModuloRelations reduction20922.relations reduction20922.input reduction20922.output := by lin_cert using reduction20922.terms
theorem substitutionProof20922 : IsMapEvaluation generatorImages reduction20922.relations [13,13,13,95,213] reduction20922.output := by lin_cert using reduction20922.terms
def image20923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20923 : InImage map_28_253 image20923 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20923 : Bundle := named_bundle% "RealMapCertificates/relations/basis20923.json"
theorem reductionProof20923 : EqualModuloRelations reduction20923.relations reduction20923.input reduction20923.output := by lin_cert using reduction20923.terms
theorem substitutionProof20923 : IsMapEvaluation generatorImages reduction20923.relations [13,13,13,13,13,376] reduction20923.output := by lin_cert using reduction20923.terms
def image20924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20924 : InImage map_28_253 image20924 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20924 : Bundle := named_bundle% "RealMapCertificates/relations/basis20924.json"
theorem reductionProof20924 : EqualModuloRelations reduction20924.relations reduction20924.input reduction20924.output := by lin_cert using reduction20924.terms
theorem substitutionProof20924 : IsMapEvaluation generatorImages reduction20924.relations [8,8,1507] reduction20924.output := by lin_cert using reduction20924.terms
def image20925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20925 : InImage map_28_253 image20925 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20925 : Bundle := named_bundle% "RealMapCertificates/relations/basis20925.json"
theorem reductionProof20925 : EqualModuloRelations reduction20925.relations reduction20925.input reduction20925.output := by lin_cert using reduction20925.terms
theorem substitutionProof20925 : IsMapEvaluation generatorImages reduction20925.relations [0,2416] reduction20925.output := by lin_cert using reduction20925.terms
def image20926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20926 : InImage map_28_253 image20926 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20926 : Bundle := named_bundle% "RealMapCertificates/relations/basis20926.json"
theorem reductionProof20926 : EqualModuloRelations reduction20926.relations reduction20926.input reduction20926.output := by lin_cert using reduction20926.terms
theorem substitutionProof20926 : IsMapEvaluation generatorImages reduction20926.relations [0,67,982] reduction20926.output := by lin_cert using reduction20926.terms
def image20927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20927 : InImage map_28_253 image20927 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20927 : Bundle := named_bundle% "RealMapCertificates/relations/basis20927.json"
theorem reductionProof20927 : EqualModuloRelations reduction20927.relations reduction20927.input reduction20927.output := by lin_cert using reduction20927.terms
theorem substitutionProof20927 : IsMapEvaluation generatorImages reduction20927.relations [0,0,8,8,138,324] reduction20927.output := by lin_cert using reduction20927.terms
def map_28_254 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21218 : InImage map_28_254 image21218 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21218 : Bundle := named_bundle% "RealMapCertificates/relations/basis21218.json"
theorem reductionProof21218 : EqualModuloRelations reduction21218.relations reduction21218.input reduction21218.output := by lin_cert using reduction21218.terms
theorem substitutionProof21218 : IsMapEvaluation generatorImages reduction21218.relations [2495] reduction21218.output := by lin_cert using reduction21218.terms
def image21219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21219 : InImage map_28_254 image21219 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21219 : Bundle := named_bundle% "RealMapCertificates/relations/basis21219.json"
theorem reductionProof21219 : EqualModuloRelations reduction21219.relations reduction21219.input reduction21219.output := by lin_cert using reduction21219.terms
theorem substitutionProof21219 : IsMapEvaluation generatorImages reduction21219.relations [2494] reduction21219.output := by lin_cert using reduction21219.terms
def image21220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21220 : InImage map_28_254 image21220 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21220 : Bundle := named_bundle% "RealMapCertificates/relations/basis21220.json"
theorem reductionProof21220 : EqualModuloRelations reduction21220.relations reduction21220.input reduction21220.output := by lin_cert using reduction21220.terms
theorem substitutionProof21220 : IsMapEvaluation generatorImages reduction21220.relations [3,2204] reduction21220.output := by lin_cert using reduction21220.terms
def image21221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21221 : InImage map_28_254 image21221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21221 : Bundle := named_bundle% "RealMapCertificates/relations/basis21221.json"
theorem reductionProof21221 : EqualModuloRelations reduction21221.relations reduction21221.input reduction21221.output := by lin_cert using reduction21221.terms
theorem substitutionProof21221 : IsMapEvaluation generatorImages reduction21221.relations [1,1,2345] reduction21221.output := by lin_cert using reduction21221.terms
def map_28_255 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image21560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21560 : InImage map_28_255 image21560 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction21560 : Bundle := named_bundle% "RealMapCertificates/relations/basis21560.json"
theorem reductionProof21560 : EqualModuloRelations reduction21560.relations reduction21560.input reduction21560.output := by lin_cert using reduction21560.terms
theorem substitutionProof21560 : IsMapEvaluation generatorImages reduction21560.relations [2554] reduction21560.output := by lin_cert using reduction21560.terms
def image21561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21561 : InImage map_28_255 image21561 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction21561 : Bundle := named_bundle% "RealMapCertificates/relations/basis21561.json"
theorem reductionProof21561 : EqualModuloRelations reduction21561.relations reduction21561.input reduction21561.output := by lin_cert using reduction21561.terms
theorem substitutionProof21561 : IsMapEvaluation generatorImages reduction21561.relations [2553] reduction21561.output := by lin_cert using reduction21561.terms
def image21562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21562 : InImage map_28_255 image21562 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction21562 : Bundle := named_bundle% "RealMapCertificates/relations/basis21562.json"
theorem reductionProof21562 : EqualModuloRelations reduction21562.relations reduction21562.input reduction21562.output := by lin_cert using reduction21562.terms
theorem substitutionProof21562 : IsMapEvaluation generatorImages reduction21562.relations [13,1760] reduction21562.output := by lin_cert using reduction21562.terms
def image21563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21563 : InImage map_28_255 image21563 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction21563 : Bundle := named_bundle% "RealMapCertificates/relations/basis21563.json"
theorem reductionProof21563 : EqualModuloRelations reduction21563.relations reduction21563.input reduction21563.output := by lin_cert using reduction21563.terms
theorem substitutionProof21563 : IsMapEvaluation generatorImages reduction21563.relations [13,13,1318] reduction21563.output := by lin_cert using reduction21563.terms
def image21564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21564 : InImage map_28_255 image21564 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction21564 : Bundle := named_bundle% "RealMapCertificates/relations/basis21564.json"
theorem reductionProof21564 : EqualModuloRelations reduction21564.relations reduction21564.input reduction21564.output := by lin_cert using reduction21564.terms
theorem substitutionProof21564 : IsMapEvaluation generatorImages reduction21564.relations [8,1908] reduction21564.output := by lin_cert using reduction21564.terms
def image21565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21565 : InImage map_28_255 image21565 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction21565 : Bundle := named_bundle% "RealMapCertificates/relations/basis21565.json"
theorem reductionProof21565 : EqualModuloRelations reduction21565.relations reduction21565.input reduction21565.output := by lin_cert using reduction21565.terms
theorem substitutionProof21565 : IsMapEvaluation generatorImages reduction21565.relations [1,2445] reduction21565.output := by lin_cert using reduction21565.terms
def image21566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21566 : InImage map_28_255 image21566 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction21566 : Bundle := named_bundle% "RealMapCertificates/relations/basis21566.json"
theorem reductionProof21566 : EqualModuloRelations reduction21566.relations reduction21566.input reduction21566.output := by lin_cert using reduction21566.terms
theorem substitutionProof21566 : IsMapEvaluation generatorImages reduction21566.relations [1,2444] reduction21566.output := by lin_cert using reduction21566.terms
def image21567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21567 : InImage map_28_255 image21567 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction21567 : Bundle := named_bundle% "RealMapCertificates/relations/basis21567.json"
theorem reductionProof21567 : EqualModuloRelations reduction21567.relations reduction21567.input reduction21567.output := by lin_cert using reduction21567.terms
theorem substitutionProof21567 : IsMapEvaluation generatorImages reduction21567.relations [0,2497] reduction21567.output := by lin_cert using reduction21567.terms
def image21568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21568 : InImage map_28_255 image21568 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction21568 : Bundle := named_bundle% "RealMapCertificates/relations/basis21568.json"
theorem reductionProof21568 : EqualModuloRelations reduction21568.relations reduction21568.input reduction21568.output := by lin_cert using reduction21568.terms
theorem substitutionProof21568 : IsMapEvaluation generatorImages reduction21568.relations [0,2496] reduction21568.output := by lin_cert using reduction21568.terms
def image21569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21569 : InImage map_28_255 image21569 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction21569 : Bundle := named_bundle% "RealMapCertificates/relations/basis21569.json"
theorem reductionProof21569 : EqualModuloRelations reduction21569.relations reduction21569.input reduction21569.output := by lin_cert using reduction21569.terms
theorem substitutionProof21569 : IsMapEvaluation generatorImages reduction21569.relations [0,3,2207] reduction21569.output := by lin_cert using reduction21569.terms
def image21570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21570 : InImage map_28_255 image21570 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction21570 : Bundle := named_bundle% "RealMapCertificates/relations/basis21570.json"
theorem reductionProof21570 : EqualModuloRelations reduction21570.relations reduction21570.input reduction21570.output := by lin_cert using reduction21570.terms
theorem substitutionProof21570 : IsMapEvaluation generatorImages reduction21570.relations [0,0,0,0,0,2349] reduction21570.output := by lin_cert using reduction21570.terms
def map_28_256 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21819 : InImage map_28_256 image21819 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21819 : Bundle := named_bundle% "RealMapCertificates/relations/basis21819.json"
theorem reductionProof21819 : EqualModuloRelations reduction21819.relations reduction21819.input reduction21819.output := by lin_cert using reduction21819.terms
theorem substitutionProof21819 : IsMapEvaluation generatorImages reduction21819.relations [8,8,1559] reduction21819.output := by lin_cert using reduction21819.terms
def image21820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21820 : InImage map_28_256 image21820 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21820 : Bundle := named_bundle% "RealMapCertificates/relations/basis21820.json"
theorem reductionProof21820 : EqualModuloRelations reduction21820.relations reduction21820.input reduction21820.output := by lin_cert using reduction21820.terms
theorem substitutionProof21820 : IsMapEvaluation generatorImages reduction21820.relations [1,2497] reduction21820.output := by lin_cert using reduction21820.terms
def image21821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21821 : InImage map_28_256 image21821 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21821 : Bundle := named_bundle% "RealMapCertificates/relations/basis21821.json"
theorem reductionProof21821 : EqualModuloRelations reduction21821.relations reduction21821.input reduction21821.output := by lin_cert using reduction21821.terms
theorem substitutionProof21821 : IsMapEvaluation generatorImages reduction21821.relations [1,2496] reduction21821.output := by lin_cert using reduction21821.terms
def image21822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21822 : InImage map_28_256 image21822 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21822 : Bundle := named_bundle% "RealMapCertificates/relations/basis21822.json"
theorem reductionProof21822 : EqualModuloRelations reduction21822.relations reduction21822.input reduction21822.output := by lin_cert using reduction21822.terms
theorem substitutionProof21822 : IsMapEvaluation generatorImages reduction21822.relations [0,2556] reduction21822.output := by lin_cert using reduction21822.terms
def image21823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21823 : InImage map_28_256 image21823 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21823 : Bundle := named_bundle% "RealMapCertificates/relations/basis21823.json"
theorem reductionProof21823 : EqualModuloRelations reduction21823.relations reduction21823.input reduction21823.output := by lin_cert using reduction21823.terms
theorem substitutionProof21823 : IsMapEvaluation generatorImages reduction21823.relations [0,2555] reduction21823.output := by lin_cert using reduction21823.terms
def image21824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21824 : InImage map_28_256 image21824 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21824 : Bundle := named_bundle% "RealMapCertificates/relations/basis21824.json"
theorem reductionProof21824 : EqualModuloRelations reduction21824.relations reduction21824.input reduction21824.output := by lin_cert using reduction21824.terms
theorem substitutionProof21824 : IsMapEvaluation generatorImages reduction21824.relations [0,8,1911] reduction21824.output := by lin_cert using reduction21824.terms
def image21825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21825 : InImage map_28_256 image21825 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21825 : Bundle := named_bundle% "RealMapCertificates/relations/basis21825.json"
theorem reductionProof21825 : EqualModuloRelations reduction21825.relations reduction21825.input reduction21825.output := by lin_cert using reduction21825.terms
theorem substitutionProof21825 : IsMapEvaluation generatorImages reduction21825.relations [0,0,2498] reduction21825.output := by lin_cert using reduction21825.terms
def image21826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21826 : InImage map_28_256 image21826 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21826 : Bundle := named_bundle% "RealMapCertificates/relations/basis21826.json"
theorem reductionProof21826 : EqualModuloRelations reduction21826.relations reduction21826.input reduction21826.output := by lin_cert using reduction21826.terms
theorem substitutionProof21826 : IsMapEvaluation generatorImages reduction21826.relations [0,0,3,2209] reduction21826.output := by lin_cert using reduction21826.terms
def image21827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21827 : InImage map_28_256 image21827 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21827 : Bundle := named_bundle% "RealMapCertificates/relations/basis21827.json"
theorem reductionProof21827 : EqualModuloRelations reduction21827.relations reduction21827.input reduction21827.output := by lin_cert using reduction21827.terms
theorem substitutionProof21827 : IsMapEvaluation generatorImages reduction21827.relations [0,0,0,0,0,0,2352] reduction21827.output := by lin_cert using reduction21827.terms
def map_28_257 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22169 : InImage map_28_257 image22169 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22169 : Bundle := named_bundle% "RealMapCertificates/relations/basis22169.json"
theorem reductionProof22169 : EqualModuloRelations reduction22169.relations reduction22169.input reduction22169.output := by lin_cert using reduction22169.terms
theorem substitutionProof22169 : IsMapEvaluation generatorImages reduction22169.relations [2631] reduction22169.output := by lin_cert using reduction22169.terms
def image22170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22170 : InImage map_28_257 image22170 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22170 : Bundle := named_bundle% "RealMapCertificates/relations/basis22170.json"
theorem reductionProof22170 : EqualModuloRelations reduction22170.relations reduction22170.input reduction22170.output := by lin_cert using reduction22170.terms
theorem substitutionProof22170 : IsMapEvaluation generatorImages reduction22170.relations [13,13,95,417] reduction22170.output := by lin_cert using reduction22170.terms
def image22171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22171 : InImage map_28_257 image22171 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22171 : Bundle := named_bundle% "RealMapCertificates/relations/basis22171.json"
theorem reductionProof22171 : EqualModuloRelations reduction22171.relations reduction22171.input reduction22171.output := by lin_cert using reduction22171.terms
theorem substitutionProof22171 : IsMapEvaluation generatorImages reduction22171.relations [1,2555] reduction22171.output := by lin_cert using reduction22171.terms
def image22172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22172 : InImage map_28_257 image22172 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22172 : Bundle := named_bundle% "RealMapCertificates/relations/basis22172.json"
theorem reductionProof22172 : EqualModuloRelations reduction22172.relations reduction22172.input reduction22172.output := by lin_cert using reduction22172.terms
theorem substitutionProof22172 : IsMapEvaluation generatorImages reduction22172.relations [1,3,2248] reduction22172.output := by lin_cert using reduction22172.terms
def image22173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22173 : InImage map_28_257 image22173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22173 : Bundle := named_bundle% "RealMapCertificates/relations/basis22173.json"
theorem reductionProof22173 : EqualModuloRelations reduction22173.relations reduction22173.input reduction22173.output := by lin_cert using reduction22173.terms
theorem substitutionProof22173 : IsMapEvaluation generatorImages reduction22173.relations [0,0,7,1971] reduction22173.output := by lin_cert using reduction22173.terms
def map_28_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22529 : InImage map_28_258 image22529 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22529 : Bundle := named_bundle% "RealMapCertificates/relations/basis22529.json"
theorem reductionProof22529 : EqualModuloRelations reduction22529.relations reduction22529.input reduction22529.output := by lin_cert using reduction22529.terms
theorem substitutionProof22529 : IsMapEvaluation generatorImages reduction22529.relations [13,13,188,213] reduction22529.output := by lin_cert using reduction22529.terms
def image22530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22530 : InImage map_28_258 image22530 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22530 : Bundle := named_bundle% "RealMapCertificates/relations/basis22530.json"
theorem reductionProof22530 : EqualModuloRelations reduction22530.relations reduction22530.input reduction22530.output := by lin_cert using reduction22530.terms
theorem substitutionProof22530 : IsMapEvaluation generatorImages reduction22530.relations [8,2005] reduction22530.output := by lin_cert using reduction22530.terms
def image22531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22531 : InImage map_28_258 image22531 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22531 : Bundle := named_bundle% "RealMapCertificates/relations/basis22531.json"
theorem reductionProof22531 : EqualModuloRelations reduction22531.relations reduction22531.input reduction22531.output := by lin_cert using reduction22531.terms
theorem substitutionProof22531 : IsMapEvaluation generatorImages reduction22531.relations [8,2004] reduction22531.output := by lin_cert using reduction22531.terms
def image22532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22532 : InImage map_28_258 image22532 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22532 : Bundle := named_bundle% "RealMapCertificates/relations/basis22532.json"
theorem reductionProof22532 : EqualModuloRelations reduction22532.relations reduction22532.input reduction22532.output := by lin_cert using reduction22532.terms
theorem substitutionProof22532 : IsMapEvaluation generatorImages reduction22532.relations [2,2496] reduction22532.output := by lin_cert using reduction22532.terms
def image22533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22533 : InImage map_28_258 image22533 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22533 : Bundle := named_bundle% "RealMapCertificates/relations/basis22533.json"
theorem reductionProof22533 : EqualModuloRelations reduction22533.relations reduction22533.input reduction22533.output := by lin_cert using reduction22533.terms
theorem substitutionProof22533 : IsMapEvaluation generatorImages reduction22533.relations [1,2585] reduction22533.output := by lin_cert using reduction22533.terms
def image22534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22534 : InImage map_28_258 image22534 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22534 : Bundle := named_bundle% "RealMapCertificates/relations/basis22534.json"
theorem reductionProof22534 : EqualModuloRelations reduction22534.relations reduction22534.input reduction22534.output := by lin_cert using reduction22534.terms
theorem substitutionProof22534 : IsMapEvaluation generatorImages reduction22534.relations [1,1,2498] reduction22534.output := by lin_cert using reduction22534.terms
def image22535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22535 : InImage map_28_258 image22535 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22535 : Bundle := named_bundle% "RealMapCertificates/relations/basis22535.json"
theorem reductionProof22535 : EqualModuloRelations reduction22535.relations reduction22535.input reduction22535.output := by lin_cert using reduction22535.terms
theorem substitutionProof22535 : IsMapEvaluation generatorImages reduction22535.relations [0,3,2315] reduction22535.output := by lin_cert using reduction22535.terms
def image22536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22536 : InImage map_28_258 image22536 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22536 : Bundle := named_bundle% "RealMapCertificates/relations/basis22536.json"
theorem reductionProof22536 : EqualModuloRelations reduction22536.relations reduction22536.input reduction22536.output := by lin_cert using reduction22536.terms
theorem substitutionProof22536 : IsMapEvaluation generatorImages reduction22536.relations [0,3,3,2045] reduction22536.output := by lin_cert using reduction22536.terms
def map_28_259 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22825 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22825 : InImage map_28_259 image22825 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22825 : Bundle := named_bundle% "RealMapCertificates/relations/basis22825.json"
theorem reductionProof22825 : EqualModuloRelations reduction22825.relations reduction22825.input reduction22825.output := by lin_cert using reduction22825.terms
theorem substitutionProof22825 : IsMapEvaluation generatorImages reduction22825.relations [2747] reduction22825.output := by lin_cert using reduction22825.terms
def image22826 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22826 : InImage map_28_259 image22826 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22826 : Bundle := named_bundle% "RealMapCertificates/relations/basis22826.json"
theorem reductionProof22826 : EqualModuloRelations reduction22826.relations reduction22826.input reduction22826.output := by lin_cert using reduction22826.terms
theorem substitutionProof22826 : IsMapEvaluation generatorImages reduction22826.relations [43,1386] reduction22826.output := by lin_cert using reduction22826.terms
def image22827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22827 : InImage map_28_259 image22827 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22827 : Bundle := named_bundle% "RealMapCertificates/relations/basis22827.json"
theorem reductionProof22827 : EqualModuloRelations reduction22827.relations reduction22827.input reduction22827.output := by lin_cert using reduction22827.terms
theorem substitutionProof22827 : IsMapEvaluation generatorImages reduction22827.relations [9,13,13,75,288] reduction22827.output := by lin_cert using reduction22827.terms
def image22828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22828 : InImage map_28_259 image22828 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22828 : Bundle := named_bundle% "RealMapCertificates/relations/basis22828.json"
theorem reductionProof22828 : EqualModuloRelations reduction22828.relations reduction22828.input reduction22828.output := by lin_cert using reduction22828.terms
theorem substitutionProof22828 : IsMapEvaluation generatorImages reduction22828.relations [8,9,1559] reduction22828.output := by lin_cert using reduction22828.terms
def image22829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22829 : InImage map_28_259 image22829 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22829 : Bundle := named_bundle% "RealMapCertificates/relations/basis22829.json"
theorem reductionProof22829 : EqualModuloRelations reduction22829.relations reduction22829.input reduction22829.output := by lin_cert using reduction22829.terms
theorem substitutionProof22829 : IsMapEvaluation generatorImages reduction22829.relations [7,2100] reduction22829.output := by lin_cert using reduction22829.terms
def image22830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22830 : InImage map_28_259 image22830 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22830 : Bundle := named_bundle% "RealMapCertificates/relations/basis22830.json"
theorem reductionProof22830 : EqualModuloRelations reduction22830.relations reduction22830.input reduction22830.output := by lin_cert using reduction22830.terms
theorem substitutionProof22830 : IsMapEvaluation generatorImages reduction22830.relations [1,2632] reduction22830.output := by lin_cert using reduction22830.terms
def image22831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22831 : InImage map_28_259 image22831 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22831 : Bundle := named_bundle% "RealMapCertificates/relations/basis22831.json"
theorem reductionProof22831 : EqualModuloRelations reduction22831.relations reduction22831.input reduction22831.output := by lin_cert using reduction22831.terms
theorem substitutionProof22831 : IsMapEvaluation generatorImages reduction22831.relations [0,8,2006] reduction22831.output := by lin_cert using reduction22831.terms
def image22832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22832 : InImage map_28_259 image22832 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22832 : Bundle := named_bundle% "RealMapCertificates/relations/basis22832.json"
theorem reductionProof22832 : EqualModuloRelations reduction22832.relations reduction22832.input reduction22832.output := by lin_cert using reduction22832.terms
theorem substitutionProof22832 : IsMapEvaluation generatorImages reduction22832.relations [0,0,7,2045] reduction22832.output := by lin_cert using reduction22832.terms
def map_28_260 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image23204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23204 : InImage map_28_260 image23204 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23204 : Bundle := named_bundle% "RealMapCertificates/relations/basis23204.json"
theorem reductionProof23204 : EqualModuloRelations reduction23204.relations reduction23204.input reduction23204.output := by lin_cert using reduction23204.terms
theorem substitutionProof23204 : IsMapEvaluation generatorImages reduction23204.relations [2804] reduction23204.output := by lin_cert using reduction23204.terms
def image23205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23205 : InImage map_28_260 image23205 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23205 : Bundle := named_bundle% "RealMapCertificates/relations/basis23205.json"
theorem reductionProof23205 : EqualModuloRelations reduction23205.relations reduction23205.input reduction23205.output := by lin_cert using reduction23205.terms
theorem substitutionProof23205 : IsMapEvaluation generatorImages reduction23205.relations [2803] reduction23205.output := by lin_cert using reduction23205.terms
def image23206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23206 : InImage map_28_260 image23206 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23206 : Bundle := named_bundle% "RealMapCertificates/relations/basis23206.json"
theorem reductionProof23206 : EqualModuloRelations reduction23206.relations reduction23206.input reduction23206.output := by lin_cert using reduction23206.terms
theorem substitutionProof23206 : IsMapEvaluation generatorImages reduction23206.relations [2802] reduction23206.output := by lin_cert using reduction23206.terms
def image23207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23207 : InImage map_28_260 image23207 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23207 : Bundle := named_bundle% "RealMapCertificates/relations/basis23207.json"
theorem reductionProof23207 : EqualModuloRelations reduction23207.relations reduction23207.input reduction23207.output := by lin_cert using reduction23207.terms
theorem substitutionProof23207 : IsMapEvaluation generatorImages reduction23207.relations [2801] reduction23207.output := by lin_cert using reduction23207.terms
def image23208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23208 : InImage map_28_260 image23208 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23208 : Bundle := named_bundle% "RealMapCertificates/relations/basis23208.json"
theorem reductionProof23208 : EqualModuloRelations reduction23208.relations reduction23208.input reduction23208.output := by lin_cert using reduction23208.terms
theorem substitutionProof23208 : IsMapEvaluation generatorImages reduction23208.relations [189,628] reduction23208.output := by lin_cert using reduction23208.terms
def image23209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23209 : InImage map_28_260 image23209 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23209 : Bundle := named_bundle% "RealMapCertificates/relations/basis23209.json"
theorem reductionProof23209 : EqualModuloRelations reduction23209.relations reduction23209.input reduction23209.output := by lin_cert using reduction23209.terms
theorem substitutionProof23209 : IsMapEvaluation generatorImages reduction23209.relations [0,2748] reduction23209.output := by lin_cert using reduction23209.terms
def image23210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23210 : InImage map_28_260 image23210 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23210 : Bundle := named_bundle% "RealMapCertificates/relations/basis23210.json"
theorem reductionProof23210 : EqualModuloRelations reduction23210.relations reduction23210.input reduction23210.output := by lin_cert using reduction23210.terms
theorem substitutionProof23210 : IsMapEvaluation generatorImages reduction23210.relations [0,0,2682] reduction23210.output := by lin_cert using reduction23210.terms
def map_28_261 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image23646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23646 : InImage map_28_261 image23646 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction23646 : Bundle := named_bundle% "RealMapCertificates/relations/basis23646.json"
theorem reductionProof23646 : EqualModuloRelations reduction23646.relations reduction23646.input reduction23646.output := by lin_cert using reduction23646.terms
theorem substitutionProof23646 : IsMapEvaluation generatorImages reduction23646.relations [13,95,691] reduction23646.output := by lin_cert using reduction23646.terms
def image23647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23647 : InImage map_28_261 image23647 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction23647 : Bundle := named_bundle% "RealMapCertificates/relations/basis23647.json"
theorem reductionProof23647 : EqualModuloRelations reduction23647.relations reduction23647.input reduction23647.output := by lin_cert using reduction23647.terms
theorem substitutionProof23647 : IsMapEvaluation generatorImages reduction23647.relations [13,13,13,1004] reduction23647.output := by lin_cert using reduction23647.terms
def image23648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23648 : InImage map_28_261 image23648 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction23648 : Bundle := named_bundle% "RealMapCertificates/relations/basis23648.json"
theorem reductionProof23648 : EqualModuloRelations reduction23648.relations reduction23648.input reduction23648.output := by lin_cert using reduction23648.terms
theorem substitutionProof23648 : IsMapEvaluation generatorImages reduction23648.relations [8,2107] reduction23648.output := by lin_cert using reduction23648.terms
def image23649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23649 : InImage map_28_261 image23649 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction23649 : Bundle := named_bundle% "RealMapCertificates/relations/basis23649.json"
theorem reductionProof23649 : EqualModuloRelations reduction23649.relations reduction23649.input reduction23649.output := by lin_cert using reduction23649.terms
theorem substitutionProof23649 : IsMapEvaluation generatorImages reduction23649.relations [8,2104] reduction23649.output := by lin_cert using reduction23649.terms
def image23650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23650 : InImage map_28_261 image23650 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction23650 : Bundle := named_bundle% "RealMapCertificates/relations/basis23650.json"
theorem reductionProof23650 : EqualModuloRelations reduction23650.relations reduction23650.input reduction23650.output := by lin_cert using reduction23650.terms
theorem substitutionProof23650 : IsMapEvaluation generatorImages reduction23650.relations [7,2168] reduction23650.output := by lin_cert using reduction23650.terms
def image23651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23651 : InImage map_28_261 image23651 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction23651 : Bundle := named_bundle% "RealMapCertificates/relations/basis23651.json"
theorem reductionProof23651 : EqualModuloRelations reduction23651.relations reduction23651.input reduction23651.output := by lin_cert using reduction23651.terms
theorem substitutionProof23651 : IsMapEvaluation generatorImages reduction23651.relations [3,2444] reduction23651.output := by lin_cert using reduction23651.terms
def image23652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23652 : InImage map_28_261 image23652 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction23652 : Bundle := named_bundle% "RealMapCertificates/relations/basis23652.json"
theorem reductionProof23652 : EqualModuloRelations reduction23652.relations reduction23652.input reduction23652.output := by lin_cert using reduction23652.terms
theorem substitutionProof23652 : IsMapEvaluation generatorImages reduction23652.relations [1,2748] reduction23652.output := by lin_cert using reduction23652.terms
def image23653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23653 : InImage map_28_261 image23653 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction23653 : Bundle := named_bundle% "RealMapCertificates/relations/basis23653.json"
theorem reductionProof23653 : EqualModuloRelations reduction23653.relations reduction23653.input reduction23653.output := by lin_cert using reduction23653.terms
theorem substitutionProof23653 : IsMapEvaluation generatorImages reduction23653.relations [0,2806] reduction23653.output := by lin_cert using reduction23653.terms
def image23654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23654 : InImage map_28_261 image23654 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction23654 : Bundle := named_bundle% "RealMapCertificates/relations/basis23654.json"
theorem reductionProof23654 : EqualModuloRelations reduction23654.relations reduction23654.input reduction23654.output := by lin_cert using reduction23654.terms
theorem substitutionProof23654 : IsMapEvaluation generatorImages reduction23654.relations [0,2805] reduction23654.output := by lin_cert using reduction23654.terms
def image23655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23655 : InImage map_28_261 image23655 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction23655 : Bundle := named_bundle% "RealMapCertificates/relations/basis23655.json"
theorem reductionProof23655 : EqualModuloRelations reduction23655.relations reduction23655.input reduction23655.output := by lin_cert using reduction23655.terms
theorem substitutionProof23655 : IsMapEvaluation generatorImages reduction23655.relations [0,0,0,0,0,0,2560] reduction23655.output := by lin_cert using reduction23655.terms
def map_29_29 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image88 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation88 : InImage map_29_29 image88 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction88 : Bundle := named_bundle% "RealMapCertificates/relations/basis88.json"
theorem reductionProof88 : EqualModuloRelations reduction88.relations reduction88.input reduction88.output := by lin_cert using reduction88.terms
theorem substitutionProof88 : IsMapEvaluation generatorImages reduction88.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction88.output := by lin_cert using reduction88.terms
def map_29_86 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image860 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation860 : InImage map_29_86 image860 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction860 : Bundle := named_bundle% "RealMapCertificates/relations/basis860.json"
theorem reductionProof860 : EqualModuloRelations reduction860.relations reduction860.input reduction860.output := by lin_cert using reduction860.terms
theorem substitutionProof860 : IsMapEvaluation generatorImages reduction860.relations [135] reduction860.output := by lin_cert using reduction860.terms
def map_29_88 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image910 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation910 : InImage map_29_88 image910 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction910 : Bundle := named_bundle% "RealMapCertificates/relations/basis910.json"
theorem reductionProof910 : EqualModuloRelations reduction910.relations reduction910.input reduction910.output := by lin_cert using reduction910.terms
theorem substitutionProof910 : IsMapEvaluation generatorImages reduction910.relations [140] reduction910.output := by lin_cert using reduction910.terms
def map_29_91 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image995 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation995 : InImage map_29_91 image995 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction995 : Bundle := named_bundle% "RealMapCertificates/relations/basis995.json"
theorem reductionProof995 : EqualModuloRelations reduction995.relations reduction995.input reduction995.output := by lin_cert using reduction995.terms
theorem substitutionProof995 : IsMapEvaluation generatorImages reduction995.relations [0,145] reduction995.output := by lin_cert using reduction995.terms
def map_29_92 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1018 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1018 : InImage map_29_92 image1018 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1018 : Bundle := named_bundle% "RealMapCertificates/relations/basis1018.json"
theorem reductionProof1018 : EqualModuloRelations reduction1018.relations reduction1018.input reduction1018.output := by lin_cert using reduction1018.terms
theorem substitutionProof1018 : IsMapEvaluation generatorImages reduction1018.relations [1,145] reduction1018.output := by lin_cert using reduction1018.terms
def image1019 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1019 : InImage map_29_92 image1019 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1019 : Bundle := named_bundle% "RealMapCertificates/relations/basis1019.json"
theorem reductionProof1019 : EqualModuloRelations reduction1019.relations reduction1019.input reduction1019.output := by lin_cert using reduction1019.terms
theorem substitutionProof1019 : IsMapEvaluation generatorImages reduction1019.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction1019.output := by lin_cert using reduction1019.terms
def map_29_94 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1071 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1071 : InImage map_29_94 image1071 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1071 : Bundle := named_bundle% "RealMapCertificates/relations/basis1071.json"
theorem reductionProof1071 : EqualModuloRelations reduction1071.relations reduction1071.input reduction1071.output := by lin_cert using reduction1071.terms
theorem substitutionProof1071 : IsMapEvaluation generatorImages reduction1071.relations [0,152] reduction1071.output := by lin_cert using reduction1071.terms
def map_29_95 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1095 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1095 : InImage map_29_95 image1095 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1095 : Bundle := named_bundle% "RealMapCertificates/relations/basis1095.json"
theorem reductionProof1095 : EqualModuloRelations reduction1095.relations reduction1095.input reduction1095.output := by lin_cert using reduction1095.terms
theorem substitutionProof1095 : IsMapEvaluation generatorImages reduction1095.relations [0,0,153] reduction1095.output := by lin_cert using reduction1095.terms
def map_29_97 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1144 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1144 : InImage map_29_97 image1144 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1144 : Bundle := named_bundle% "RealMapCertificates/relations/basis1144.json"
theorem reductionProof1144 : EqualModuloRelations reduction1144.relations reduction1144.input reduction1144.output := by lin_cert using reduction1144.terms
theorem substitutionProof1144 : IsMapEvaluation generatorImages reduction1144.relations [0,8,110] reduction1144.output := by lin_cert using reduction1144.terms
def map_29_98 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1164 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1164 : InImage map_29_98 image1164 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1164 : Bundle := named_bundle% "RealMapCertificates/relations/basis1164.json"
theorem reductionProof1164 : EqualModuloRelations reduction1164.relations reduction1164.input reduction1164.output := by lin_cert using reduction1164.terms
theorem substitutionProof1164 : IsMapEvaluation generatorImages reduction1164.relations [0,0,8,111] reduction1164.output := by lin_cert using reduction1164.terms
def map_29_100 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1217 : InImage map_29_100 image1217 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1217 : Bundle := named_bundle% "RealMapCertificates/relations/basis1217.json"
theorem reductionProof1217 : EqualModuloRelations reduction1217.relations reduction1217.input reduction1217.output := by lin_cert using reduction1217.terms
theorem substitutionProof1217 : IsMapEvaluation generatorImages reduction1217.relations [0,8,116] reduction1217.output := by lin_cert using reduction1217.terms
def map_29_101 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1249 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1249 : InImage map_29_101 image1249 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1249 : Bundle := named_bundle% "RealMapCertificates/relations/basis1249.json"
theorem reductionProof1249 : EqualModuloRelations reduction1249.relations reduction1249.input reduction1249.output := by lin_cert using reduction1249.terms
theorem substitutionProof1249 : IsMapEvaluation generatorImages reduction1249.relations [0,0,8,117] reduction1249.output := by lin_cert using reduction1249.terms
def map_29_103 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1315 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1315 : InImage map_29_103 image1315 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1315 : Bundle := named_bundle% "RealMapCertificates/relations/basis1315.json"
theorem reductionProof1315 : EqualModuloRelations reduction1315.relations reduction1315.input reduction1315.output := by lin_cert using reduction1315.terms
theorem substitutionProof1315 : IsMapEvaluation generatorImages reduction1315.relations [0,8,8,71] reduction1315.output := by lin_cert using reduction1315.terms
def map_29_104 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1345 : InImage map_29_104 image1345 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1345 : Bundle := named_bundle% "RealMapCertificates/relations/basis1345.json"
theorem reductionProof1345 : EqualModuloRelations reduction1345.relations reduction1345.input reduction1345.output := by lin_cert using reduction1345.terms
theorem substitutionProof1345 : IsMapEvaluation generatorImages reduction1345.relations [0,0,8,16,50] reduction1345.output := by lin_cert using reduction1345.terms
def map_29_108 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1473 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1473 : InImage map_29_108 image1473 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1473 : Bundle := named_bundle% "RealMapCertificates/relations/basis1473.json"
theorem reductionProof1473 : EqualModuloRelations reduction1473.relations reduction1473.input reduction1473.output := by lin_cert using reduction1473.terms
theorem substitutionProof1473 : IsMapEvaluation generatorImages reduction1473.relations [211] reduction1473.output := by lin_cert using reduction1473.terms
def image1474 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1474 : InImage map_29_108 image1474 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1474 : Bundle := named_bundle% "RealMapCertificates/relations/basis1474.json"
theorem reductionProof1474 : EqualModuloRelations reduction1474.relations reduction1474.input reduction1474.output := by lin_cert using reduction1474.terms
theorem substitutionProof1474 : IsMapEvaluation generatorImages reduction1474.relations [210] reduction1474.output := by lin_cert using reduction1474.terms
def map_29_111 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1594 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1594 : InImage map_29_111 image1594 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1594 : Bundle := named_bundle% "RealMapCertificates/relations/basis1594.json"
theorem reductionProof1594 : EqualModuloRelations reduction1594.relations reduction1594.input reduction1594.output := by lin_cert using reduction1594.terms
theorem substitutionProof1594 : IsMapEvaluation generatorImages reduction1594.relations [223] reduction1594.output := by lin_cert using reduction1594.terms
def map_29_114 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1705 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1705 : InImage map_29_114 image1705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1705 : Bundle := named_bundle% "RealMapCertificates/relations/basis1705.json"
theorem reductionProof1705 : EqualModuloRelations reduction1705.relations reduction1705.input reduction1705.output := by lin_cert using reduction1705.terms
theorem substitutionProof1705 : IsMapEvaluation generatorImages reduction1705.relations [8,161] reduction1705.output := by lin_cert using reduction1705.terms
def image1706 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1706 : InImage map_29_114 image1706 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1706 : Bundle := named_bundle% "RealMapCertificates/relations/basis1706.json"
theorem reductionProof1706 : EqualModuloRelations reduction1706.relations reduction1706.input reduction1706.output := by lin_cert using reduction1706.terms
theorem substitutionProof1706 : IsMapEvaluation generatorImages reduction1706.relations [0,0,0,224] reduction1706.output := by lin_cert using reduction1706.terms
end RealMapCertificates
