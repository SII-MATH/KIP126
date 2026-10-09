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
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 80 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 127 => []
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 185 => [[0,4,4,8,12]]
  | 193 => [[5,5,7,12]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 278 => []
  | 292 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 299 => []
  | 300 => []
  | 315 => [[4,4,5,5,7,12]]
  | 317 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 345 => [[4,4,5,7,7,12]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 435 => [[1,9,12,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 454 => []
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 500 => []
  | 509 => []
  | 516 => []
  | 558 => []
  | 559 => [[0,0,5,8,12,12]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 600 => []
  | 601 => []
  | 624 => []
  | 642 => [[7,10,12,12]]
  | 654 => []
  | 665 => [[0,0,4,5,8,12,12]]
  | 688 => []
  | _ => []
def map_29_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1746 : InImage map_29_115 image1746 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1746 : Bundle := named_bundle% "RealMapCertificates/relations/basis1746.json"
theorem reductionProof1746 : EqualModuloRelations reduction1746.relations reduction1746.input reduction1746.output := by lin_cert using reduction1746.terms
theorem substitutionProof1746 : IsMapEvaluation generatorImages reduction1746.relations [0,0,0,0,225] reduction1746.output := by lin_cert using reduction1746.terms
def map_29_117 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image1812 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1812 : InImage map_29_117 image1812 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1812 : Bundle := named_bundle% "RealMapCertificates/relations/basis1812.json"
theorem reductionProof1812 : EqualModuloRelations reduction1812.relations reduction1812.input reduction1812.output := by lin_cert using reduction1812.terms
theorem substitutionProof1812 : IsMapEvaluation generatorImages reduction1812.relations [8,171] reduction1812.output := by lin_cert using reduction1812.terms
def image1813 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1813 : InImage map_29_117 image1813 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1813 : Bundle := named_bundle% "RealMapCertificates/relations/basis1813.json"
theorem reductionProof1813 : EqualModuloRelations reduction1813.relations reduction1813.input reduction1813.output := by lin_cert using reduction1813.terms
theorem substitutionProof1813 : IsMapEvaluation generatorImages reduction1813.relations [0,0,0,237] reduction1813.output := by lin_cert using reduction1813.terms
def map_29_120 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1923 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1923 : InImage map_29_120 image1923 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1923 : Bundle := named_bundle% "RealMapCertificates/relations/basis1923.json"
theorem reductionProof1923 : EqualModuloRelations reduction1923.relations reduction1923.input reduction1923.output := by lin_cert using reduction1923.terms
theorem substitutionProof1923 : IsMapEvaluation generatorImages reduction1923.relations [8,8,125] reduction1923.output := by lin_cert using reduction1923.terms
def map_29_121 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1974 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1974 : InImage map_29_121 image1974 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1974 : Bundle := named_bundle% "RealMapCertificates/relations/basis1974.json"
theorem reductionProof1974 : EqualModuloRelations reduction1974.relations reduction1974.input reduction1974.output := by lin_cert using reduction1974.terms
theorem substitutionProof1974 : IsMapEvaluation generatorImages reduction1974.relations [0,0,0,0,0,244] reduction1974.output := by lin_cert using reduction1974.terms
def map_29_122 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2008 : InImage map_29_122 image2008 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2008 : Bundle := named_bundle% "RealMapCertificates/relations/basis2008.json"
theorem reductionProof2008 : EqualModuloRelations reduction2008.relations reduction2008.input reduction2008.output := by lin_cert using reduction2008.terms
theorem substitutionProof2008 : IsMapEvaluation generatorImages reduction2008.relations [0,0,0,0,0,17,138] reduction2008.output := by lin_cert using reduction2008.terms
def map_29_123 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2044 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2044 : InImage map_29_123 image2044 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2044 : Bundle := named_bundle% "RealMapCertificates/relations/basis2044.json"
theorem reductionProof2044 : EqualModuloRelations reduction2044.relations reduction2044.input reduction2044.output := by lin_cert using reduction2044.terms
theorem substitutionProof2044 : IsMapEvaluation generatorImages reduction2044.relations [8,8,136] reduction2044.output := by lin_cert using reduction2044.terms
def image2045 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2045 : InImage map_29_123 image2045 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2045 : Bundle := named_bundle% "RealMapCertificates/relations/basis2045.json"
theorem reductionProof2045 : EqualModuloRelations reduction2045.relations reduction2045.input reduction2045.output := by lin_cert using reduction2045.terms
theorem substitutionProof2045 : IsMapEvaluation generatorImages reduction2045.relations [0,0,0,0,0,0,0,245] reduction2045.output := by lin_cert using reduction2045.terms
def map_29_124 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2095 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2095 : InImage map_29_124 image2095 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2095 : Bundle := named_bundle% "RealMapCertificates/relations/basis2095.json"
theorem reductionProof2095 : EqualModuloRelations reduction2095.relations reduction2095.input reduction2095.output := by lin_cert using reduction2095.terms
theorem substitutionProof2095 : IsMapEvaluation generatorImages reduction2095.relations [0,0,0,0,0,0,0,0,246] reduction2095.output := by lin_cert using reduction2095.terms
def map_29_126 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image2174 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2174 : InImage map_29_126 image2174 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2174 : Bundle := named_bundle% "RealMapCertificates/relations/basis2174.json"
theorem reductionProof2174 : EqualModuloRelations reduction2174.relations reduction2174.input reduction2174.output := by lin_cert using reduction2174.terms
theorem substitutionProof2174 : IsMapEvaluation generatorImages reduction2174.relations [298] reduction2174.output := by lin_cert using reduction2174.terms
def image2175 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2175 : InImage map_29_126 image2175 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2175 : Bundle := named_bundle% "RealMapCertificates/relations/basis2175.json"
theorem reductionProof2175 : EqualModuloRelations reduction2175.relations reduction2175.input reduction2175.output := by lin_cert using reduction2175.terms
theorem substitutionProof2175 : IsMapEvaluation generatorImages reduction2175.relations [8,8,8,88] reduction2175.output := by lin_cert using reduction2175.terms
def map_29_129 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image2331 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation2331 : InImage map_29_129 image2331 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2331 : Bundle := named_bundle% "RealMapCertificates/relations/basis2331.json"
theorem reductionProof2331 : EqualModuloRelations reduction2331.relations reduction2331.input reduction2331.output := by lin_cert using reduction2331.terms
theorem substitutionProof2331 : IsMapEvaluation generatorImages reduction2331.relations [8,225] reduction2331.output := by lin_cert using reduction2331.terms
def image2332 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2332 : InImage map_29_129 image2332 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2332 : Bundle := named_bundle% "RealMapCertificates/relations/basis2332.json"
theorem reductionProof2332 : EqualModuloRelations reduction2332.relations reduction2332.input reduction2332.output := by lin_cert using reduction2332.terms
theorem substitutionProof2332 : IsMapEvaluation generatorImages reduction2332.relations [8,8,8,100] reduction2332.output := by lin_cert using reduction2332.terms
def map_29_130 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2391 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2391 : InImage map_29_130 image2391 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2391 : Bundle := named_bundle% "RealMapCertificates/relations/basis2391.json"
theorem reductionProof2391 : EqualModuloRelations reduction2391.relations reduction2391.input reduction2391.output := by lin_cert using reduction2391.terms
theorem substitutionProof2391 : IsMapEvaluation generatorImages reduction2391.relations [5,244] reduction2391.output := by lin_cert using reduction2391.terms
def map_29_132 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2512 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2512 : InImage map_29_132 image2512 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2512 : Bundle := named_bundle% "RealMapCertificates/relations/basis2512.json"
theorem reductionProof2512 : EqualModuloRelations reduction2512.relations reduction2512.input reduction2512.output := by lin_cert using reduction2512.terms
theorem substitutionProof2512 : IsMapEvaluation generatorImages reduction2512.relations [8,238] reduction2512.output := by lin_cert using reduction2512.terms
def image2513 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2513 : InImage map_29_132 image2513 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2513 : Bundle := named_bundle% "RealMapCertificates/relations/basis2513.json"
theorem reductionProof2513 : EqualModuloRelations reduction2513.relations reduction2513.input reduction2513.output := by lin_cert using reduction2513.terms
theorem substitutionProof2513 : IsMapEvaluation generatorImages reduction2513.relations [8,8,8,8,60] reduction2513.output := by lin_cert using reduction2513.terms
def image2514 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2514 : InImage map_29_132 image2514 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2514 : Bundle := named_bundle% "RealMapCertificates/relations/basis2514.json"
theorem reductionProof2514 : EqualModuloRelations reduction2514.relations reduction2514.input reduction2514.output := by lin_cert using reduction2514.terms
theorem substitutionProof2514 : IsMapEvaluation generatorImages reduction2514.relations [0,343] reduction2514.output := by lin_cert using reduction2514.terms
def map_29_133 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2589 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2589 : InImage map_29_133 image2589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2589 : Bundle := named_bundle% "RealMapCertificates/relations/basis2589.json"
theorem reductionProof2589 : EqualModuloRelations reduction2589.relations reduction2589.input reduction2589.output := by lin_cert using reduction2589.terms
theorem substitutionProof2589 : IsMapEvaluation generatorImages reduction2589.relations [0,17,185] reduction2589.output := by lin_cert using reduction2589.terms
def map_29_135 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image2736 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2736 : InImage map_29_135 image2736 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2736 : Bundle := named_bundle% "RealMapCertificates/relations/basis2736.json"
theorem reductionProof2736 : EqualModuloRelations reduction2736.relations reduction2736.input reduction2736.output := by lin_cert using reduction2736.terms
theorem substitutionProof2736 : IsMapEvaluation generatorImages reduction2736.relations [8,16,138] reduction2736.output := by lin_cert using reduction2736.terms
def image2737 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2737 : InImage map_29_135 image2737 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2737 : Bundle := named_bundle% "RealMapCertificates/relations/basis2737.json"
theorem reductionProof2737 : EqualModuloRelations reduction2737.relations reduction2737.input reduction2737.output := by lin_cert using reduction2737.terms
theorem substitutionProof2737 : IsMapEvaluation generatorImages reduction2737.relations [8,8,8,8,63] reduction2737.output := by lin_cert using reduction2737.terms
def image2738 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2738 : InImage map_29_135 image2738 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2738 : Bundle := named_bundle% "RealMapCertificates/relations/basis2738.json"
theorem reductionProof2738 : EqualModuloRelations reduction2738.relations reduction2738.input reduction2738.output := by lin_cert using reduction2738.terms
theorem substitutionProof2738 : IsMapEvaluation generatorImages reduction2738.relations [0,8,244] reduction2738.output := by lin_cert using reduction2738.terms
def map_29_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2817 : InImage map_29_136 image2817 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2817 : Bundle := named_bundle% "RealMapCertificates/relations/basis2817.json"
theorem reductionProof2817 : EqualModuloRelations reduction2817.relations reduction2817.input reduction2817.output := by lin_cert using reduction2817.terms
theorem substitutionProof2817 : IsMapEvaluation generatorImages reduction2817.relations [0,8,17,138] reduction2817.output := by lin_cert using reduction2817.terms
def map_29_138 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2963 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2963 : InImage map_29_138 image2963 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2963 : Bundle := named_bundle% "RealMapCertificates/relations/basis2963.json"
theorem reductionProof2963 : EqualModuloRelations reduction2963.relations reduction2963.input reduction2963.output := by lin_cert using reduction2963.terms
theorem substitutionProof2963 : IsMapEvaluation generatorImages reduction2963.relations [8,8,185] reduction2963.output := by lin_cert using reduction2963.terms
def image2964 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2964 : InImage map_29_138 image2964 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2964 : Bundle := named_bundle% "RealMapCertificates/relations/basis2964.json"
theorem reductionProof2964 : EqualModuloRelations reduction2964.relations reduction2964.input reduction2964.output := by lin_cert using reduction2964.terms
theorem substitutionProof2964 : IsMapEvaluation generatorImages reduction2964.relations [8,8,8,8,8,42] reduction2964.output := by lin_cert using reduction2964.terms
def image2965 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2965 : InImage map_29_138 image2965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2965 : Bundle := named_bundle% "RealMapCertificates/relations/basis2965.json"
theorem reductionProof2965 : EqualModuloRelations reduction2965.relations reduction2965.input reduction2965.output := by lin_cert using reduction2965.terms
theorem substitutionProof2965 : IsMapEvaluation generatorImages reduction2965.relations [0,0,0,0,0,0,0,0,0,0,0,0,300] reduction2965.output := by lin_cert using reduction2965.terms
def map_29_139 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3055 : InImage map_29_139 image3055 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3055 : Bundle := named_bundle% "RealMapCertificates/relations/basis3055.json"
theorem reductionProof3055 : EqualModuloRelations reduction3055.relations reduction3055.input reduction3055.output := by lin_cert using reduction3055.terms
theorem substitutionProof3055 : IsMapEvaluation generatorImages reduction3055.relations [0,8,17,147] reduction3055.output := by lin_cert using reduction3055.terms
def image3056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3056 : InImage map_29_139 image3056 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3056 : Bundle := named_bundle% "RealMapCertificates/relations/basis3056.json"
theorem reductionProof3056 : EqualModuloRelations reduction3056.relations reduction3056.input reduction3056.output := by lin_cert using reduction3056.terms
theorem substitutionProof3056 : IsMapEvaluation generatorImages reduction3056.relations [0,0,0,0,0,0,0,0,0,0,0,317] reduction3056.output := by lin_cert using reduction3056.terms
def map_29_140 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3120 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3120 : InImage map_29_140 image3120 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3120 : Bundle := named_bundle% "RealMapCertificates/relations/basis3120.json"
theorem reductionProof3120 : EqualModuloRelations reduction3120.relations reduction3120.input reduction3120.output := by lin_cert using reduction3120.terms
theorem substitutionProof3120 : IsMapEvaluation generatorImages reduction3120.relations [453] reduction3120.output := by lin_cert using reduction3120.terms
def map_29_141 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image3219 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3219 : InImage map_29_141 image3219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3219 : Bundle := named_bundle% "RealMapCertificates/relations/basis3219.json"
theorem reductionProof3219 : EqualModuloRelations reduction3219.relations reduction3219.input reduction3219.output := by lin_cert using reduction3219.terms
theorem substitutionProof3219 : IsMapEvaluation generatorImages reduction3219.relations [8,8,8,138] reduction3219.output := by lin_cert using reduction3219.terms
def image3220 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3220 : InImage map_29_141 image3220 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3220 : Bundle := named_bundle% "RealMapCertificates/relations/basis3220.json"
theorem reductionProof3220 : EqualModuloRelations reduction3220.relations reduction3220.input reduction3220.output := by lin_cert using reduction3220.terms
theorem substitutionProof3220 : IsMapEvaluation generatorImages reduction3220.relations [8,8,8,8,8,46] reduction3220.output := by lin_cert using reduction3220.terms
def map_29_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3375 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3375 : InImage map_29_143 image3375 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3375 : Bundle := named_bundle% "RealMapCertificates/relations/basis3375.json"
theorem reductionProof3375 : EqualModuloRelations reduction3375.relations reduction3375.input reduction3375.output := by lin_cert using reduction3375.terms
theorem substitutionProof3375 : IsMapEvaluation generatorImages reduction3375.relations [490] reduction3375.output := by lin_cert using reduction3375.terms
def map_29_144 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3463 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3463 : InImage map_29_144 image3463 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3463 : Bundle := named_bundle% "RealMapCertificates/relations/basis3463.json"
theorem reductionProof3463 : EqualModuloRelations reduction3463.relations reduction3463.input reduction3463.output := by lin_cert using reduction3463.terms
theorem substitutionProof3463 : IsMapEvaluation generatorImages reduction3463.relations [8,8,8,147] reduction3463.output := by lin_cert using reduction3463.terms
def image3464 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3464 : InImage map_29_144 image3464 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3464 : Bundle := named_bundle% "RealMapCertificates/relations/basis3464.json"
theorem reductionProof3464 : EqualModuloRelations reduction3464.relations reduction3464.input reduction3464.output := by lin_cert using reduction3464.terms
theorem substitutionProof3464 : IsMapEvaluation generatorImages reduction3464.relations [8,8,8,8,8,51] reduction3464.output := by lin_cert using reduction3464.terms
def map_29_146 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3614 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3614 : InImage map_29_146 image3614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3614 : Bundle := named_bundle% "RealMapCertificates/relations/basis3614.json"
theorem reductionProof3614 : EqualModuloRelations reduction3614.relations reduction3614.input reduction3614.output := by lin_cert using reduction3614.terms
theorem substitutionProof3614 : IsMapEvaluation generatorImages reduction3614.relations [8,315] reduction3614.output := by lin_cert using reduction3614.terms
def image3615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3615 : InImage map_29_146 image3615 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3615 : Bundle := named_bundle% "RealMapCertificates/relations/basis3615.json"
theorem reductionProof3615 : EqualModuloRelations reduction3615.relations reduction3615.input reduction3615.output := by lin_cert using reduction3615.terms
theorem substitutionProof3615 : IsMapEvaluation generatorImages reduction3615.relations [0,0,0,491] reduction3615.output := by lin_cert using reduction3615.terms
def map_29_147 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3723 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3723 : InImage map_29_147 image3723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3723 : Bundle := named_bundle% "RealMapCertificates/relations/basis3723.json"
theorem reductionProof3723 : EqualModuloRelations reduction3723.relations reduction3723.input reduction3723.output := by lin_cert using reduction3723.terms
theorem substitutionProof3723 : IsMapEvaluation generatorImages reduction3723.relations [8,8,8,17,64] reduction3723.output := by lin_cert using reduction3723.terms
def image3724 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3724 : InImage map_29_147 image3724 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3724 : Bundle := named_bundle% "RealMapCertificates/relations/basis3724.json"
theorem reductionProof3724 : EqualModuloRelations reduction3724.relations reduction3724.input reduction3724.output := by lin_cert using reduction3724.terms
theorem substitutionProof3724 : IsMapEvaluation generatorImages reduction3724.relations [8,8,8,8,9,51] reduction3724.output := by lin_cert using reduction3724.terms
def image3725 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3725 : InImage map_29_147 image3725 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3725 : Bundle := named_bundle% "RealMapCertificates/relations/basis3725.json"
theorem reductionProof3725 : EqualModuloRelations reduction3725.relations reduction3725.input reduction3725.output := by lin_cert using reduction3725.terms
theorem substitutionProof3725 : IsMapEvaluation generatorImages reduction3725.relations [0,0,509] reduction3725.output := by lin_cert using reduction3725.terms
def map_29_149 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3887 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3887 : InImage map_29_149 image3887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3887 : Bundle := named_bundle% "RealMapCertificates/relations/basis3887.json"
theorem reductionProof3887 : EqualModuloRelations reduction3887.relations reduction3887.input reduction3887.output := by lin_cert using reduction3887.terms
theorem substitutionProof3887 : IsMapEvaluation generatorImages reduction3887.relations [8,345] reduction3887.output := by lin_cert using reduction3887.terms
def image3888 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3888 : InImage map_29_149 image3888 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3888 : Bundle := named_bundle% "RealMapCertificates/relations/basis3888.json"
theorem reductionProof3888 : EqualModuloRelations reduction3888.relations reduction3888.input reduction3888.output := by lin_cert using reduction3888.terms
theorem substitutionProof3888 : IsMapEvaluation generatorImages reduction3888.relations [0,0,0,516] reduction3888.output := by lin_cert using reduction3888.terms
def map_29_150 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image3979 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3979 : InImage map_29_150 image3979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3979 : Bundle := named_bundle% "RealMapCertificates/relations/basis3979.json"
theorem reductionProof3979 : EqualModuloRelations reduction3979.relations reduction3979.input reduction3979.output := by lin_cert using reduction3979.terms
theorem substitutionProof3979 : IsMapEvaluation generatorImages reduction3979.relations [8,8,8,8,113] reduction3979.output := by lin_cert using reduction3979.terms
def image3980 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3980 : InImage map_29_150 image3980 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3980 : Bundle := named_bundle% "RealMapCertificates/relations/basis3980.json"
theorem reductionProof3980 : EqualModuloRelations reduction3980.relations reduction3980.input reduction3980.output := by lin_cert using reduction3980.terms
theorem substitutionProof3980 : IsMapEvaluation generatorImages reduction3980.relations [8,8,8,8,13,51] reduction3980.output := by lin_cert using reduction3980.terms
def map_29_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4087 : InImage map_29_151 image4087 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4087 : Bundle := named_bundle% "RealMapCertificates/relations/basis4087.json"
theorem reductionProof4087 : EqualModuloRelations reduction4087.relations reduction4087.input reduction4087.output := by lin_cert using reduction4087.terms
theorem substitutionProof4087 : IsMapEvaluation generatorImages reduction4087.relations [0,64,137] reduction4087.output := by lin_cert using reduction4087.terms
def map_29_152 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4157 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4157 : InImage map_29_152 image4157 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4157 : Bundle := named_bundle% "RealMapCertificates/relations/basis4157.json"
theorem reductionProof4157 : EqualModuloRelations reduction4157.relations reduction4157.input reduction4157.output := by lin_cert using reduction4157.terms
theorem substitutionProof4157 : IsMapEvaluation generatorImages reduction4157.relations [8,8,247] reduction4157.output := by lin_cert using reduction4157.terms
def image4158 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4158 : InImage map_29_152 image4158 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4158 : Bundle := named_bundle% "RealMapCertificates/relations/basis4158.json"
theorem reductionProof4158 : EqualModuloRelations reduction4158.relations reduction4158.input reduction4158.output := by lin_cert using reduction4158.terms
theorem substitutionProof4158 : IsMapEvaluation generatorImages reduction4158.relations [1,64,137] reduction4158.output := by lin_cert using reduction4158.terms
def image4159 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4159 : InImage map_29_152 image4159 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4159 : Bundle := named_bundle% "RealMapCertificates/relations/basis4159.json"
theorem reductionProof4159 : EqualModuloRelations reduction4159.relations reduction4159.input reduction4159.output := by lin_cert using reduction4159.terms
theorem substitutionProof4159 : IsMapEvaluation generatorImages reduction4159.relations [0,0,64,138] reduction4159.output := by lin_cert using reduction4159.terms
def map_29_153 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4260 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4260 : InImage map_29_153 image4260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4260 : Bundle := named_bundle% "RealMapCertificates/relations/basis4260.json"
theorem reductionProof4260 : EqualModuloRelations reduction4260.relations reduction4260.input reduction4260.output := by lin_cert using reduction4260.terms
theorem substitutionProof4260 : IsMapEvaluation generatorImages reduction4260.relations [8,8,8,9,13,51] reduction4260.output := by lin_cert using reduction4260.terms
def image4261 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4261 : InImage map_29_153 image4261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4261 : Bundle := named_bundle% "RealMapCertificates/relations/basis4261.json"
theorem reductionProof4261 : EqualModuloRelations reduction4261.relations reduction4261.input reduction4261.output := by lin_cert using reduction4261.terms
theorem substitutionProof4261 : IsMapEvaluation generatorImages reduction4261.relations [8,8,8,8,118] reduction4261.output := by lin_cert using reduction4261.terms
def image4262 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4262 : InImage map_29_153 image4262 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4262 : Bundle := named_bundle% "RealMapCertificates/relations/basis4262.json"
theorem reductionProof4262 : EqualModuloRelations reduction4262.relations reduction4262.input reduction4262.output := by lin_cert using reduction4262.terms
theorem substitutionProof4262 : IsMapEvaluation generatorImages reduction4262.relations [0,0,0,0,17,260] reduction4262.output := by lin_cert using reduction4262.terms
def map_29_154 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4337 : InImage map_29_154 image4337 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4337 : Bundle := named_bundle% "RealMapCertificates/relations/basis4337.json"
theorem reductionProof4337 : EqualModuloRelations reduction4337.relations reduction4337.input reduction4337.output := by lin_cert using reduction4337.terms
theorem substitutionProof4337 : IsMapEvaluation generatorImages reduction4337.relations [0,64,146] reduction4337.output := by lin_cert using reduction4337.terms
def image4338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4338 : InImage map_29_154 image4338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4338 : Bundle := named_bundle% "RealMapCertificates/relations/basis4338.json"
theorem reductionProof4338 : EqualModuloRelations reduction4338.relations reduction4338.input reduction4338.output := by lin_cert using reduction4338.terms
theorem substitutionProof4338 : IsMapEvaluation generatorImages reduction4338.relations [0,0,0,0,558] reduction4338.output := by lin_cert using reduction4338.terms
def map_29_155 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4413 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4413 : InImage map_29_155 image4413 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4413 : Bundle := named_bundle% "RealMapCertificates/relations/basis4413.json"
theorem reductionProof4413 : EqualModuloRelations reduction4413.relations reduction4413.input reduction4413.output := by lin_cert using reduction4413.terms
theorem substitutionProof4413 : IsMapEvaluation generatorImages reduction4413.relations [8,8,259] reduction4413.output := by lin_cert using reduction4413.terms
def image4414 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4414 : InImage map_29_155 image4414 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4414 : Bundle := named_bundle% "RealMapCertificates/relations/basis4414.json"
theorem reductionProof4414 : EqualModuloRelations reduction4414.relations reduction4414.input reduction4414.output := by lin_cert using reduction4414.terms
theorem substitutionProof4414 : IsMapEvaluation generatorImages reduction4414.relations [0,0,64,147] reduction4414.output := by lin_cert using reduction4414.terms
def image4415 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4415 : InImage map_29_155 image4415 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4415 : Bundle := named_bundle% "RealMapCertificates/relations/basis4415.json"
theorem reductionProof4415 : EqualModuloRelations reduction4415.relations reduction4415.input reduction4415.output := by lin_cert using reduction4415.terms
theorem substitutionProof4415 : IsMapEvaluation generatorImages reduction4415.relations [0,0,0,0,0,0,0,0,0,0,0,500] reduction4415.output := by lin_cert using reduction4415.terms
def map_29_156 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4507 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4507 : InImage map_29_156 image4507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4507 : Bundle := named_bundle% "RealMapCertificates/relations/basis4507.json"
theorem reductionProof4507 : EqualModuloRelations reduction4507.relations reduction4507.input reduction4507.output := by lin_cert using reduction4507.terms
theorem substitutionProof4507 : IsMapEvaluation generatorImages reduction4507.relations [8,8,8,13,13,51] reduction4507.output := by lin_cert using reduction4507.terms
def image4508 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4508 : InImage map_29_156 image4508 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4508 : Bundle := named_bundle% "RealMapCertificates/relations/basis4508.json"
theorem reductionProof4508 : EqualModuloRelations reduction4508.relations reduction4508.input reduction4508.output := by lin_cert using reduction4508.terms
theorem substitutionProof4508 : IsMapEvaluation generatorImages reduction4508.relations [8,8,8,8,127] reduction4508.output := by lin_cert using reduction4508.terms
def image4509 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4509 : InImage map_29_156 image4509 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4509 : Bundle := named_bundle% "RealMapCertificates/relations/basis4509.json"
theorem reductionProof4509 : EqualModuloRelations reduction4509.relations reduction4509.input reduction4509.output := by lin_cert using reduction4509.terms
theorem substitutionProof4509 : IsMapEvaluation generatorImages reduction4509.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4509.output := by lin_cert using reduction4509.terms
def map_29_157 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4601 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4601 : InImage map_29_157 image4601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4601 : Bundle := named_bundle% "RealMapCertificates/relations/basis4601.json"
theorem reductionProof4601 : EqualModuloRelations reduction4601.relations reduction4601.input reduction4601.output := by lin_cert using reduction4601.terms
theorem substitutionProof4601 : IsMapEvaluation generatorImages reduction4601.relations [0,16,64,64] reduction4601.output := by lin_cert using reduction4601.terms
def map_29_158 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4678 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4678 : InImage map_29_158 image4678 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4678 : Bundle := named_bundle% "RealMapCertificates/relations/basis4678.json"
theorem reductionProof4678 : EqualModuloRelations reduction4678.relations reduction4678.input reduction4678.output := by lin_cert using reduction4678.terms
theorem substitutionProof4678 : IsMapEvaluation generatorImages reduction4678.relations [8,8,8,193] reduction4678.output := by lin_cert using reduction4678.terms
def image4679 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4679 : InImage map_29_158 image4679 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4679 : Bundle := named_bundle% "RealMapCertificates/relations/basis4679.json"
theorem reductionProof4679 : EqualModuloRelations reduction4679.relations reduction4679.input reduction4679.output := by lin_cert using reduction4679.terms
theorem substitutionProof4679 : IsMapEvaluation generatorImages reduction4679.relations [0,0,16,299] reduction4679.output := by lin_cert using reduction4679.terms
def image4680 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4680 : InImage map_29_158 image4680 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4680 : Bundle := named_bundle% "RealMapCertificates/relations/basis4680.json"
theorem reductionProof4680 : EqualModuloRelations reduction4680.relations reduction4680.input reduction4680.output := by lin_cert using reduction4680.terms
theorem substitutionProof4680 : IsMapEvaluation generatorImages reduction4680.relations [0,0,0,64,149] reduction4680.output := by lin_cert using reduction4680.terms
def map_29_159 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4779 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4779 : InImage map_29_159 image4779 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4779 : Bundle := named_bundle% "RealMapCertificates/relations/basis4779.json"
theorem reductionProof4779 : EqualModuloRelations reduction4779.relations reduction4779.input reduction4779.output := by lin_cert using reduction4779.terms
theorem substitutionProof4779 : IsMapEvaluation generatorImages reduction4779.relations [8,8,9,13,13,51] reduction4779.output := by lin_cert using reduction4779.terms
def image4780 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4780 : InImage map_29_159 image4780 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4780 : Bundle := named_bundle% "RealMapCertificates/relations/basis4780.json"
theorem reductionProof4780 : EqualModuloRelations reduction4780.relations reduction4780.input reduction4780.output := by lin_cert using reduction4780.terms
theorem substitutionProof4780 : IsMapEvaluation generatorImages reduction4780.relations [8,8,8,8,8,80] reduction4780.output := by lin_cert using reduction4780.terms
def image4781 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4781 : InImage map_29_159 image4781 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4781 : Bundle := named_bundle% "RealMapCertificates/relations/basis4781.json"
theorem reductionProof4781 : EqualModuloRelations reduction4781.relations reduction4781.input reduction4781.output := by lin_cert using reduction4781.terms
theorem substitutionProof4781 : IsMapEvaluation generatorImages reduction4781.relations [0,0,0,0,598] reduction4781.output := by lin_cert using reduction4781.terms
def map_29_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4858 : InImage map_29_160 image4858 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4858 : Bundle := named_bundle% "RealMapCertificates/relations/basis4858.json"
theorem reductionProof4858 : EqualModuloRelations reduction4858.relations reduction4858.input reduction4858.output := by lin_cert using reduction4858.terms
theorem substitutionProof4858 : IsMapEvaluation generatorImages reduction4858.relations [0,0,0,0,0,17,292] reduction4858.output := by lin_cert using reduction4858.terms
def map_29_161 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4943 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4943 : InImage map_29_161 image4943 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4943 : Bundle := named_bundle% "RealMapCertificates/relations/basis4943.json"
theorem reductionProof4943 : EqualModuloRelations reduction4943.relations reduction4943.input reduction4943.output := by lin_cert using reduction4943.terms
theorem substitutionProof4943 : IsMapEvaluation generatorImages reduction4943.relations [8,8,8,208] reduction4943.output := by lin_cert using reduction4943.terms
def image4944 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4944 : InImage map_29_161 image4944 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4944 : Bundle := named_bundle% "RealMapCertificates/relations/basis4944.json"
theorem reductionProof4944 : EqualModuloRelations reduction4944.relations reduction4944.input reduction4944.output := by lin_cert using reduction4944.terms
theorem substitutionProof4944 : IsMapEvaluation generatorImages reduction4944.relations [0,0,0,0,0,0,601] reduction4944.output := by lin_cert using reduction4944.terms
def image4945 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4945 : InImage map_29_161 image4945 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4945 : Bundle := named_bundle% "RealMapCertificates/relations/basis4945.json"
theorem reductionProof4945 : EqualModuloRelations reduction4945.relations reduction4945.input reduction4945.output := by lin_cert using reduction4945.terms
theorem substitutionProof4945 : IsMapEvaluation generatorImages reduction4945.relations [0,0,0,0,0,0,600] reduction4945.output := by lin_cert using reduction4945.terms
def map_29_162 : Matrix 2 3 := fun i j => ([false,true,false,true,false,false] : List Bool)[i.val*3+j.val]!
def image5047 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5047 : InImage map_29_162 image5047 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5047 : Bundle := named_bundle% "RealMapCertificates/relations/basis5047.json"
theorem reductionProof5047 : EqualModuloRelations reduction5047.relations reduction5047.input reduction5047.output := by lin_cert using reduction5047.terms
theorem substitutionProof5047 : IsMapEvaluation generatorImages reduction5047.relations [665] reduction5047.output := by lin_cert using reduction5047.terms
def image5048 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5048 : InImage map_29_162 image5048 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5048 : Bundle := named_bundle% "RealMapCertificates/relations/basis5048.json"
theorem reductionProof5048 : EqualModuloRelations reduction5048.relations reduction5048.input reduction5048.output := by lin_cert using reduction5048.terms
theorem substitutionProof5048 : IsMapEvaluation generatorImages reduction5048.relations [8,8,13,13,13,51] reduction5048.output := by lin_cert using reduction5048.terms
def image5049 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5049 : InImage map_29_162 image5049 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5049 : Bundle := named_bundle% "RealMapCertificates/relations/basis5049.json"
theorem reductionProof5049 : EqualModuloRelations reduction5049.relations reduction5049.input reduction5049.output := by lin_cert using reduction5049.terms
theorem substitutionProof5049 : IsMapEvaluation generatorImages reduction5049.relations [8,8,8,8,9,80] reduction5049.output := by lin_cert using reduction5049.terms
def map_29_164 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5231 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5231 : InImage map_29_164 image5231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5231 : Bundle := named_bundle% "RealMapCertificates/relations/basis5231.json"
theorem reductionProof5231 : EqualModuloRelations reduction5231.relations reduction5231.input reduction5231.output := by lin_cert using reduction5231.terms
theorem substitutionProof5231 : IsMapEvaluation generatorImages reduction5231.relations [17,380] reduction5231.output := by lin_cert using reduction5231.terms
def image5232 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5232 : InImage map_29_164 image5232 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5232 : Bundle := named_bundle% "RealMapCertificates/relations/basis5232.json"
theorem reductionProof5232 : EqualModuloRelations reduction5232.relations reduction5232.input reduction5232.output := by lin_cert using reduction5232.terms
theorem substitutionProof5232 : IsMapEvaluation generatorImages reduction5232.relations [8,8,8,219] reduction5232.output := by lin_cert using reduction5232.terms
def map_29_165 : Matrix 2 5 := fun i j => ([false,true,false,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image5354 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5354 : InImage map_29_165 image5354 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction5354 : Bundle := named_bundle% "RealMapCertificates/relations/basis5354.json"
theorem reductionProof5354 : EqualModuloRelations reduction5354.relations reduction5354.input reduction5354.output := by lin_cert using reduction5354.terms
theorem substitutionProof5354 : IsMapEvaluation generatorImages reduction5354.relations [17,404] reduction5354.output := by lin_cert using reduction5354.terms
def image5355 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5355 : InImage map_29_165 image5355 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction5355 : Bundle := named_bundle% "RealMapCertificates/relations/basis5355.json"
theorem reductionProof5355 : EqualModuloRelations reduction5355.relations reduction5355.input reduction5355.output := by lin_cert using reduction5355.terms
theorem substitutionProof5355 : IsMapEvaluation generatorImages reduction5355.relations [8,9,13,13,13,51] reduction5355.output := by lin_cert using reduction5355.terms
def image5356 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5356 : InImage map_29_165 image5356 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction5356 : Bundle := named_bundle% "RealMapCertificates/relations/basis5356.json"
theorem reductionProof5356 : EqualModuloRelations reduction5356.relations reduction5356.input reduction5356.output := by lin_cert using reduction5356.terms
theorem substitutionProof5356 : IsMapEvaluation generatorImages reduction5356.relations [8,8,8,8,13,80] reduction5356.output := by lin_cert using reduction5356.terms
def image5357 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5357 : InImage map_29_165 image5357 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction5357 : Bundle := named_bundle% "RealMapCertificates/relations/basis5357.json"
theorem reductionProof5357 : EqualModuloRelations reduction5357.relations reduction5357.input reduction5357.output := by lin_cert using reduction5357.terms
theorem substitutionProof5357 : IsMapEvaluation generatorImages reduction5357.relations [0,688] reduction5357.output := by lin_cert using reduction5357.terms
def image5358 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5358 : InImage map_29_165 image5358 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction5358 : Bundle := named_bundle% "RealMapCertificates/relations/basis5358.json"
theorem reductionProof5358 : EqualModuloRelations reduction5358.relations reduction5358.input reduction5358.output := by lin_cert using reduction5358.terms
theorem substitutionProof5358 : IsMapEvaluation generatorImages reduction5358.relations [0,0,0,0,0,642] reduction5358.output := by lin_cert using reduction5358.terms
def map_29_166 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5455 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5455 : InImage map_29_166 image5455 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5455 : Bundle := named_bundle% "RealMapCertificates/relations/basis5455.json"
theorem reductionProof5455 : EqualModuloRelations reduction5455.relations reduction5455.input reduction5455.output := by lin_cert using reduction5455.terms
theorem substitutionProof5455 : IsMapEvaluation generatorImages reduction5455.relations [0,0,0,0,0,654] reduction5455.output := by lin_cert using reduction5455.terms
def map_29_167 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5557 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5557 : InImage map_29_167 image5557 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5557 : Bundle := named_bundle% "RealMapCertificates/relations/basis5557.json"
theorem reductionProof5557 : EqualModuloRelations reduction5557.relations reduction5557.input reduction5557.output := by lin_cert using reduction5557.terms
theorem substitutionProof5557 : IsMapEvaluation generatorImages reduction5557.relations [8,17,260] reduction5557.output := by lin_cert using reduction5557.terms
def image5558 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5558 : InImage map_29_167 image5558 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5558 : Bundle := named_bundle% "RealMapCertificates/relations/basis5558.json"
theorem reductionProof5558 : EqualModuloRelations reduction5558.relations reduction5558.input reduction5558.output := by lin_cert using reduction5558.terms
theorem substitutionProof5558 : IsMapEvaluation generatorImages reduction5558.relations [8,8,9,219] reduction5558.output := by lin_cert using reduction5558.terms
def map_29_168 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5673 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5673 : InImage map_29_168 image5673 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5673 : Bundle := named_bundle% "RealMapCertificates/relations/basis5673.json"
theorem reductionProof5673 : EqualModuloRelations reduction5673.relations reduction5673.input reduction5673.output := by lin_cert using reduction5673.terms
theorem substitutionProof5673 : IsMapEvaluation generatorImages reduction5673.relations [8,559] reduction5673.output := by lin_cert using reduction5673.terms
def image5674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5674 : InImage map_29_168 image5674 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5674 : Bundle := named_bundle% "RealMapCertificates/relations/basis5674.json"
theorem reductionProof5674 : EqualModuloRelations reduction5674.relations reduction5674.input reduction5674.output := by lin_cert using reduction5674.terms
theorem substitutionProof5674 : IsMapEvaluation generatorImages reduction5674.relations [8,13,13,13,13,51] reduction5674.output := by lin_cert using reduction5674.terms
def image5675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5675 : InImage map_29_168 image5675 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5675 : Bundle := named_bundle% "RealMapCertificates/relations/basis5675.json"
theorem reductionProof5675 : EqualModuloRelations reduction5675.relations reduction5675.input reduction5675.output := by lin_cert using reduction5675.terms
theorem substitutionProof5675 : IsMapEvaluation generatorImages reduction5675.relations [8,8,8,9,13,80] reduction5675.output := by lin_cert using reduction5675.terms
def map_29_170 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image5885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5885 : InImage map_29_170 image5885 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5885 : Bundle := named_bundle% "RealMapCertificates/relations/basis5885.json"
theorem reductionProof5885 : EqualModuloRelations reduction5885.relations reduction5885.input reduction5885.output := by lin_cert using reduction5885.terms
theorem substitutionProof5885 : IsMapEvaluation generatorImages reduction5885.relations [113,149] reduction5885.output := by lin_cert using reduction5885.terms
def image5886 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5886 : InImage map_29_170 image5886 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5886 : Bundle := named_bundle% "RealMapCertificates/relations/basis5886.json"
theorem reductionProof5886 : EqualModuloRelations reduction5886.relations reduction5886.input reduction5886.output := by lin_cert using reduction5886.terms
theorem substitutionProof5886 : IsMapEvaluation generatorImages reduction5886.relations [8,17,278] reduction5886.output := by lin_cert using reduction5886.terms
def image5887 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5887 : InImage map_29_170 image5887 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5887 : Bundle := named_bundle% "RealMapCertificates/relations/basis5887.json"
theorem reductionProof5887 : EqualModuloRelations reduction5887.relations reduction5887.input reduction5887.output := by lin_cert using reduction5887.terms
theorem substitutionProof5887 : IsMapEvaluation generatorImages reduction5887.relations [8,8,13,219] reduction5887.output := by lin_cert using reduction5887.terms
def map_29_171 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image6023 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6023 : InImage map_29_171 image6023 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6023 : Bundle := named_bundle% "RealMapCertificates/relations/basis6023.json"
theorem reductionProof6023 : EqualModuloRelations reduction6023.relations reduction6023.input reduction6023.output := by lin_cert using reduction6023.terms
theorem substitutionProof6023 : IsMapEvaluation generatorImages reduction6023.relations [9,13,13,13,13,51] reduction6023.output := by lin_cert using reduction6023.terms
def image6024 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6024 : InImage map_29_171 image6024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6024 : Bundle := named_bundle% "RealMapCertificates/relations/basis6024.json"
theorem reductionProof6024 : EqualModuloRelations reduction6024.relations reduction6024.input reduction6024.output := by lin_cert using reduction6024.terms
theorem substitutionProof6024 : IsMapEvaluation generatorImages reduction6024.relations [8,580] reduction6024.output := by lin_cert using reduction6024.terms
def image6025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6025 : InImage map_29_171 image6025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6025 : Bundle := named_bundle% "RealMapCertificates/relations/basis6025.json"
theorem reductionProof6025 : EqualModuloRelations reduction6025.relations reduction6025.input reduction6025.output := by lin_cert using reduction6025.terms
theorem substitutionProof6025 : IsMapEvaluation generatorImages reduction6025.relations [8,8,8,13,13,80] reduction6025.output := by lin_cert using reduction6025.terms
def image6026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6026 : InImage map_29_171 image6026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6026 : Bundle := named_bundle% "RealMapCertificates/relations/basis6026.json"
theorem reductionProof6026 : EqualModuloRelations reduction6026.relations reduction6026.input reduction6026.output := by lin_cert using reduction6026.terms
theorem substitutionProof6026 : IsMapEvaluation generatorImages reduction6026.relations [0,17,454] reduction6026.output := by lin_cert using reduction6026.terms
def map_29_173 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image6226 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6226 : InImage map_29_173 image6226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6226 : Bundle := named_bundle% "RealMapCertificates/relations/basis6226.json"
theorem reductionProof6226 : EqualModuloRelations reduction6226.relations reduction6226.input reduction6226.output := by lin_cert using reduction6226.terms
theorem substitutionProof6226 : IsMapEvaluation generatorImages reduction6226.relations [8,598] reduction6226.output := by lin_cert using reduction6226.terms
def image6227 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6227 : InImage map_29_173 image6227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6227 : Bundle := named_bundle% "RealMapCertificates/relations/basis6227.json"
theorem reductionProof6227 : EqualModuloRelations reduction6227.relations reduction6227.input reduction6227.output := by lin_cert using reduction6227.terms
theorem substitutionProof6227 : IsMapEvaluation generatorImages reduction6227.relations [8,16,292] reduction6227.output := by lin_cert using reduction6227.terms
def image6228 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6228 : InImage map_29_173 image6228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6228 : Bundle := named_bundle% "RealMapCertificates/relations/basis6228.json"
theorem reductionProof6228 : EqualModuloRelations reduction6228.relations reduction6228.input reduction6228.output := by lin_cert using reduction6228.terms
theorem substitutionProof6228 : IsMapEvaluation generatorImages reduction6228.relations [8,9,13,219] reduction6228.output := by lin_cert using reduction6228.terms
def map_29_174 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image6351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6351 : InImage map_29_174 image6351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6351 : Bundle := named_bundle% "RealMapCertificates/relations/basis6351.json"
theorem reductionProof6351 : EqualModuloRelations reduction6351.relations reduction6351.input reduction6351.output := by lin_cert using reduction6351.terms
theorem substitutionProof6351 : IsMapEvaluation generatorImages reduction6351.relations [13,13,13,13,13,51] reduction6351.output := by lin_cert using reduction6351.terms
def image6352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6352 : InImage map_29_174 image6352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6352 : Bundle := named_bundle% "RealMapCertificates/relations/basis6352.json"
theorem reductionProof6352 : EqualModuloRelations reduction6352.relations reduction6352.input reduction6352.output := by lin_cert using reduction6352.terms
theorem substitutionProof6352 : IsMapEvaluation generatorImages reduction6352.relations [8,8,435] reduction6352.output := by lin_cert using reduction6352.terms
def image6353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6353 : InImage map_29_174 image6353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6353 : Bundle := named_bundle% "RealMapCertificates/relations/basis6353.json"
theorem reductionProof6353 : EqualModuloRelations reduction6353.relations reduction6353.input reduction6353.output := by lin_cert using reduction6353.terms
theorem substitutionProof6353 : IsMapEvaluation generatorImages reduction6353.relations [8,8,9,13,13,80] reduction6353.output := by lin_cert using reduction6353.terms
def image6354 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6354 : InImage map_29_174 image6354 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6354 : Bundle := named_bundle% "RealMapCertificates/relations/basis6354.json"
theorem reductionProof6354 : EqualModuloRelations reduction6354.relations reduction6354.input reduction6354.output := by lin_cert using reduction6354.terms
theorem substitutionProof6354 : IsMapEvaluation generatorImages reduction6354.relations [5,642] reduction6354.output := by lin_cert using reduction6354.terms
def map_29_176 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6567 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6567 : InImage map_29_176 image6567 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6567 : Bundle := named_bundle% "RealMapCertificates/relations/basis6567.json"
theorem reductionProof6567 : EqualModuloRelations reduction6567.relations reduction6567.input reduction6567.output := by lin_cert using reduction6567.terms
theorem substitutionProof6567 : IsMapEvaluation generatorImages reduction6567.relations [8,624] reduction6567.output := by lin_cert using reduction6567.terms
def image6568 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6568 : InImage map_29_176 image6568 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6568 : Bundle := named_bundle% "RealMapCertificates/relations/basis6568.json"
theorem reductionProof6568 : EqualModuloRelations reduction6568.relations reduction6568.input reduction6568.output := by lin_cert using reduction6568.terms
theorem substitutionProof6568 : IsMapEvaluation generatorImages reduction6568.relations [8,13,13,219] reduction6568.output := by lin_cert using reduction6568.terms
def image6569 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6569 : InImage map_29_176 image6569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6569 : Bundle := named_bundle% "RealMapCertificates/relations/basis6569.json"
theorem reductionProof6569 : EqualModuloRelations reduction6569.relations reduction6569.input reduction6569.output := by lin_cert using reduction6569.terms
theorem substitutionProof6569 : IsMapEvaluation generatorImages reduction6569.relations [8,8,454] reduction6569.output := by lin_cert using reduction6569.terms
end RealMapCertificates
