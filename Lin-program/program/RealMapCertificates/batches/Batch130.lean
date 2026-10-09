import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 24 => []
  | 64 => []
  | 72 => []
  | 80 => []
  | 105 => []
  | 133 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 188 => []
  | 209 => []
  | 219 => [[7,7,7,12]]
  | 255 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 280 => []
  | 292 => []
  | 294 => []
  | 299 => []
  | 301 => []
  | 327 => []
  | 347 => []
  | 349 => []
  | 357 => []
  | 383 => []
  | 418 => []
  | 420 => []
  | 435 => [[1,9,12,12]]
  | 518 => []
  | 530 => []
  | 537 => []
  | 550 => []
  | 627 => []
  | 655 => []
  | 690 => []
  | 715 => [[7,7,7,12,12]]
  | 797 => []
  | 832 => []
  | 862 => []
  | 863 => [[4,7,7,7,12,12]]
  | 874 => []
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 898 => []
  | 901 => []
  | 919 => []
  | 921 => []
  | 940 => []
  | 956 => []
  | 963 => []
  | 974 => []
  | 976 => []
  | 978 => []
  | 1051 => []
  | 1063 => []
  | 1077 => [[1,9,12,12,12]]
  | 1079 => []
  | 1084 => []
  | 1095 => []
  | 1103 => []
  | 1105 => []
  | 1146 => []
  | 1147 => []
  | 1169 => []
  | 1182 => []
  | 1204 => []
  | 1255 => []
  | _ => []
def map_29_177 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6708 : InImage map_29_177 image6708 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6708 : Bundle := named_bundle% "RealMapCertificates/relations/basis6708.json"
theorem reductionProof6708 : EqualModuloRelations reduction6708.relations reduction6708.input reduction6708.output := by lin_cert using reduction6708.terms
theorem substitutionProof6708 : IsMapEvaluation generatorImages reduction6708.relations [8,9,435] reduction6708.output := by lin_cert using reduction6708.terms
def image6709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6709 : InImage map_29_177 image6709 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6709 : Bundle := named_bundle% "RealMapCertificates/relations/basis6709.json"
theorem reductionProof6709 : EqualModuloRelations reduction6709.relations reduction6709.input reduction6709.output := by lin_cert using reduction6709.terms
theorem substitutionProof6709 : IsMapEvaluation generatorImages reduction6709.relations [8,8,13,13,13,80] reduction6709.output := by lin_cert using reduction6709.terms
def map_29_178 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6807 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6807 : InImage map_29_178 image6807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6807 : Bundle := named_bundle% "RealMapCertificates/relations/basis6807.json"
theorem reductionProof6807 : EqualModuloRelations reduction6807.relations reduction6807.input reduction6807.output := by lin_cert using reduction6807.terms
theorem substitutionProof6807 : IsMapEvaluation generatorImages reduction6807.relations [863] reduction6807.output := by lin_cert using reduction6807.terms
def image6808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6808 : InImage map_29_178 image6808 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6808 : Bundle := named_bundle% "RealMapCertificates/relations/basis6808.json"
theorem reductionProof6808 : EqualModuloRelations reduction6808.relations reduction6808.input reduction6808.output := by lin_cert using reduction6808.terms
theorem substitutionProof6808 : IsMapEvaluation generatorImages reduction6808.relations [862] reduction6808.output := by lin_cert using reduction6808.terms
def map_29_179 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6931 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6931 : InImage map_29_179 image6931 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6931 : Bundle := named_bundle% "RealMapCertificates/relations/basis6931.json"
theorem reductionProof6931 : EqualModuloRelations reduction6931.relations reduction6931.input reduction6931.output := by lin_cert using reduction6931.terms
theorem substitutionProof6931 : IsMapEvaluation generatorImages reduction6931.relations [9,13,13,219] reduction6931.output := by lin_cert using reduction6931.terms
def image6932 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6932 : InImage map_29_179 image6932 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6932 : Bundle := named_bundle% "RealMapCertificates/relations/basis6932.json"
theorem reductionProof6932 : EqualModuloRelations reduction6932.relations reduction6932.input reduction6932.output := by lin_cert using reduction6932.terms
theorem substitutionProof6932 : IsMapEvaluation generatorImages reduction6932.relations [8,17,347] reduction6932.output := by lin_cert using reduction6932.terms
def image6933 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6933 : InImage map_29_179 image6933 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6933 : Bundle := named_bundle% "RealMapCertificates/relations/basis6933.json"
theorem reductionProof6933 : EqualModuloRelations reduction6933.relations reduction6933.input reduction6933.output := by lin_cert using reduction6933.terms
theorem substitutionProof6933 : IsMapEvaluation generatorImages reduction6933.relations [8,8,8,292] reduction6933.output := by lin_cert using reduction6933.terms
def map_29_180 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7074 : InImage map_29_180 image7074 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7074 : Bundle := named_bundle% "RealMapCertificates/relations/basis7074.json"
theorem reductionProof7074 : EqualModuloRelations reduction7074.relations reduction7074.input reduction7074.output := by lin_cert using reduction7074.terms
theorem substitutionProof7074 : IsMapEvaluation generatorImages reduction7074.relations [13,13,13,13,13,13,24] reduction7074.output := by lin_cert using reduction7074.terms
def image7075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7075 : InImage map_29_180 image7075 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7075 : Bundle := named_bundle% "RealMapCertificates/relations/basis7075.json"
theorem reductionProof7075 : EqualModuloRelations reduction7075.relations reduction7075.input reduction7075.output := by lin_cert using reduction7075.terms
theorem substitutionProof7075 : IsMapEvaluation generatorImages reduction7075.relations [8,13,435] reduction7075.output := by lin_cert using reduction7075.terms
def image7076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7076 : InImage map_29_180 image7076 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7076 : Bundle := named_bundle% "RealMapCertificates/relations/basis7076.json"
theorem reductionProof7076 : EqualModuloRelations reduction7076.relations reduction7076.input reduction7076.output := by lin_cert using reduction7076.terms
theorem substitutionProof7076 : IsMapEvaluation generatorImages reduction7076.relations [8,9,13,13,13,80] reduction7076.output := by lin_cert using reduction7076.terms
def map_29_181 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7187 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7187 : InImage map_29_181 image7187 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7187 : Bundle := named_bundle% "RealMapCertificates/relations/basis7187.json"
theorem reductionProof7187 : EqualModuloRelations reduction7187.relations reduction7187.input reduction7187.output := by lin_cert using reduction7187.terms
theorem substitutionProof7187 : IsMapEvaluation generatorImages reduction7187.relations [890] reduction7187.output := by lin_cert using reduction7187.terms
def map_29_182 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7290 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7290 : InImage map_29_182 image7290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7290 : Bundle := named_bundle% "RealMapCertificates/relations/basis7290.json"
theorem reductionProof7290 : EqualModuloRelations reduction7290.relations reduction7290.input reduction7290.output := by lin_cert using reduction7290.terms
theorem substitutionProof7290 : IsMapEvaluation generatorImages reduction7290.relations [13,13,13,219] reduction7290.output := by lin_cert using reduction7290.terms
def image7291 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7291 : InImage map_29_182 image7291 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7291 : Bundle := named_bundle% "RealMapCertificates/relations/basis7291.json"
theorem reductionProof7291 : EqualModuloRelations reduction7291.relations reduction7291.input reduction7291.output := by lin_cert using reduction7291.terms
theorem substitutionProof7291 : IsMapEvaluation generatorImages reduction7291.relations [8,8,518] reduction7291.output := by lin_cert using reduction7291.terms
def image7292 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7292 : InImage map_29_182 image7292 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7292 : Bundle := named_bundle% "RealMapCertificates/relations/basis7292.json"
theorem reductionProof7292 : EqualModuloRelations reduction7292.relations reduction7292.input reduction7292.output := by lin_cert using reduction7292.terms
theorem substitutionProof7292 : IsMapEvaluation generatorImages reduction7292.relations [8,8,9,292] reduction7292.output := by lin_cert using reduction7292.terms
def map_29_183 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image7439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7439 : InImage map_29_183 image7439 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7439 : Bundle := named_bundle% "RealMapCertificates/relations/basis7439.json"
theorem reductionProof7439 : EqualModuloRelations reduction7439.relations reduction7439.input reduction7439.output := by lin_cert using reduction7439.terms
theorem substitutionProof7439 : IsMapEvaluation generatorImages reduction7439.relations [8,13,13,13,13,80] reduction7439.output := by lin_cert using reduction7439.terms
def image7440 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7440 : InImage map_29_183 image7440 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7440 : Bundle := named_bundle% "RealMapCertificates/relations/basis7440.json"
theorem reductionProof7440 : EqualModuloRelations reduction7440.relations reduction7440.input reduction7440.output := by lin_cert using reduction7440.terms
theorem substitutionProof7440 : IsMapEvaluation generatorImages reduction7440.relations [8,8,530] reduction7440.output := by lin_cert using reduction7440.terms
def image7441 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7441 : InImage map_29_183 image7441 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7441 : Bundle := named_bundle% "RealMapCertificates/relations/basis7441.json"
theorem reductionProof7441 : EqualModuloRelations reduction7441.relations reduction7441.input reduction7441.output := by lin_cert using reduction7441.terms
theorem substitutionProof7441 : IsMapEvaluation generatorImages reduction7441.relations [0,64,260] reduction7441.output := by lin_cert using reduction7441.terms
def map_29_184 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image7539 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7539 : InImage map_29_184 image7539 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7539 : Bundle := named_bundle% "RealMapCertificates/relations/basis7539.json"
theorem reductionProof7539 : EqualModuloRelations reduction7539.relations reduction7539.input reduction7539.output := by lin_cert using reduction7539.terms
theorem substitutionProof7539 : IsMapEvaluation generatorImages reduction7539.relations [64,274] reduction7539.output := by lin_cert using reduction7539.terms
def image7540 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7540 : InImage map_29_184 image7540 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7540 : Bundle := named_bundle% "RealMapCertificates/relations/basis7540.json"
theorem reductionProof7540 : EqualModuloRelations reduction7540.relations reduction7540.input reduction7540.output := by lin_cert using reduction7540.terms
theorem substitutionProof7540 : IsMapEvaluation generatorImages reduction7540.relations [8,715] reduction7540.output := by lin_cert using reduction7540.terms
def image7541 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7541 : InImage map_29_184 image7541 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7541 : Bundle := named_bundle% "RealMapCertificates/relations/basis7541.json"
theorem reductionProof7541 : EqualModuloRelations reduction7541.relations reduction7541.input reduction7541.output := by lin_cert using reduction7541.terms
theorem substitutionProof7541 : IsMapEvaluation generatorImages reduction7541.relations [1,64,260] reduction7541.output := by lin_cert using reduction7541.terms
def image7542 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7542 : InImage map_29_184 image7542 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7542 : Bundle := named_bundle% "RealMapCertificates/relations/basis7542.json"
theorem reductionProof7542 : EqualModuloRelations reduction7542.relations reduction7542.input reduction7542.output := by lin_cert using reduction7542.terms
theorem substitutionProof7542 : IsMapEvaluation generatorImages reduction7542.relations [0,0,897] reduction7542.output := by lin_cert using reduction7542.terms
def map_29_185 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image7657 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7657 : InImage map_29_185 image7657 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7657 : Bundle := named_bundle% "RealMapCertificates/relations/basis7657.json"
theorem reductionProof7657 : EqualModuloRelations reduction7657.relations reduction7657.input reduction7657.output := by lin_cert using reduction7657.terms
theorem substitutionProof7657 : IsMapEvaluation generatorImages reduction7657.relations [8,8,550] reduction7657.output := by lin_cert using reduction7657.terms
def image7658 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7658 : InImage map_29_185 image7658 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7658 : Bundle := named_bundle% "RealMapCertificates/relations/basis7658.json"
theorem reductionProof7658 : EqualModuloRelations reduction7658.relations reduction7658.input reduction7658.output := by lin_cert using reduction7658.terms
theorem substitutionProof7658 : IsMapEvaluation generatorImages reduction7658.relations [8,8,13,292] reduction7658.output := by lin_cert using reduction7658.terms
def image7659 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7659 : InImage map_29_185 image7659 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7659 : Bundle := named_bundle% "RealMapCertificates/relations/basis7659.json"
theorem reductionProof7659 : EqualModuloRelations reduction7659.relations reduction7659.input reduction7659.output := by lin_cert using reduction7659.terms
theorem substitutionProof7659 : IsMapEvaluation generatorImages reduction7659.relations [0,0,921] reduction7659.output := by lin_cert using reduction7659.terms
def image7660 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7660 : InImage map_29_185 image7660 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7660 : Bundle := named_bundle% "RealMapCertificates/relations/basis7660.json"
theorem reductionProof7660 : EqualModuloRelations reduction7660.relations reduction7660.input reduction7660.output := by lin_cert using reduction7660.terms
theorem substitutionProof7660 : IsMapEvaluation generatorImages reduction7660.relations [0,0,919] reduction7660.output := by lin_cert using reduction7660.terms
def map_29_186 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image7801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7801 : InImage map_29_186 image7801 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7801 : Bundle := named_bundle% "RealMapCertificates/relations/basis7801.json"
theorem reductionProof7801 : EqualModuloRelations reduction7801.relations reduction7801.input reduction7801.output := by lin_cert using reduction7801.terms
theorem substitutionProof7801 : IsMapEvaluation generatorImages reduction7801.relations [9,13,13,13,13,80] reduction7801.output := by lin_cert using reduction7801.terms
def image7802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7802 : InImage map_29_186 image7802 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7802 : Bundle := named_bundle% "RealMapCertificates/relations/basis7802.json"
theorem reductionProof7802 : EqualModuloRelations reduction7802.relations reduction7802.input reduction7802.output := by lin_cert using reduction7802.terms
theorem substitutionProof7802 : IsMapEvaluation generatorImages reduction7802.relations [8,8,17,267] reduction7802.output := by lin_cert using reduction7802.terms
def image7803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7803 : InImage map_29_186 image7803 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7803 : Bundle := named_bundle% "RealMapCertificates/relations/basis7803.json"
theorem reductionProof7803 : EqualModuloRelations reduction7803.relations reduction7803.input reduction7803.output := by lin_cert using reduction7803.terms
theorem substitutionProof7803 : IsMapEvaluation generatorImages reduction7803.relations [0,64,278] reduction7803.output := by lin_cert using reduction7803.terms
def image7804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7804 : InImage map_29_186 image7804 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7804 : Bundle := named_bundle% "RealMapCertificates/relations/basis7804.json"
theorem reductionProof7804 : EqualModuloRelations reduction7804.relations reduction7804.input reduction7804.output := by lin_cert using reduction7804.terms
theorem substitutionProof7804 : IsMapEvaluation generatorImages reduction7804.relations [0,0,0,0,898] reduction7804.output := by lin_cert using reduction7804.terms
def map_29_187 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7902 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7902 : InImage map_29_187 image7902 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7902 : Bundle := named_bundle% "RealMapCertificates/relations/basis7902.json"
theorem reductionProof7902 : EqualModuloRelations reduction7902.relations reduction7902.input reduction7902.output := by lin_cert using reduction7902.terms
theorem substitutionProof7902 : IsMapEvaluation generatorImages reduction7902.relations [9,715] reduction7902.output := by lin_cert using reduction7902.terms
def image7903 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7903 : InImage map_29_187 image7903 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7903 : Bundle := named_bundle% "RealMapCertificates/relations/basis7903.json"
theorem reductionProof7903 : EqualModuloRelations reduction7903.relations reduction7903.input reduction7903.output := by lin_cert using reduction7903.terms
theorem substitutionProof7903 : IsMapEvaluation generatorImages reduction7903.relations [0,956] reduction7903.output := by lin_cert using reduction7903.terms
def image7904 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7904 : InImage map_29_187 image7904 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7904 : Bundle := named_bundle% "RealMapCertificates/relations/basis7904.json"
theorem reductionProof7904 : EqualModuloRelations reduction7904.relations reduction7904.input reduction7904.output := by lin_cert using reduction7904.terms
theorem substitutionProof7904 : IsMapEvaluation generatorImages reduction7904.relations [0,0,940] reduction7904.output := by lin_cert using reduction7904.terms
def map_29_188 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image8000 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8000 : InImage map_29_188 image8000 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8000 : Bundle := named_bundle% "RealMapCertificates/relations/basis8000.json"
theorem reductionProof8000 : EqualModuloRelations reduction8000.relations reduction8000.input reduction8000.output := by lin_cert using reduction8000.terms
theorem substitutionProof8000 : IsMapEvaluation generatorImages reduction8000.relations [13,13,13,13,150] reduction8000.output := by lin_cert using reduction8000.terms
def image8001 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8001 : InImage map_29_188 image8001 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8001 : Bundle := named_bundle% "RealMapCertificates/relations/basis8001.json"
theorem reductionProof8001 : EqualModuloRelations reduction8001.relations reduction8001.input reduction8001.output := by lin_cert using reduction8001.terms
theorem substitutionProof8001 : IsMapEvaluation generatorImages reduction8001.relations [8,9,13,292] reduction8001.output := by lin_cert using reduction8001.terms
def image8002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8002 : InImage map_29_188 image8002 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8002 : Bundle := named_bundle% "RealMapCertificates/relations/basis8002.json"
theorem reductionProof8002 : EqualModuloRelations reduction8002.relations reduction8002.input reduction8002.output := by lin_cert using reduction8002.terms
theorem substitutionProof8002 : IsMapEvaluation generatorImages reduction8002.relations [8,8,8,383] reduction8002.output := by lin_cert using reduction8002.terms
def map_29_189 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8152 : InImage map_29_189 image8152 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8152 : Bundle := named_bundle% "RealMapCertificates/relations/basis8152.json"
theorem reductionProof8152 : EqualModuloRelations reduction8152.relations reduction8152.input reduction8152.output := by lin_cert using reduction8152.terms
theorem substitutionProof8152 : IsMapEvaluation generatorImages reduction8152.relations [64,299] reduction8152.output := by lin_cert using reduction8152.terms
def image8153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8153 : InImage map_29_189 image8153 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8153 : Bundle := named_bundle% "RealMapCertificates/relations/basis8153.json"
theorem reductionProof8153 : EqualModuloRelations reduction8153.relations reduction8153.input reduction8153.output := by lin_cert using reduction8153.terms
theorem substitutionProof8153 : IsMapEvaluation generatorImages reduction8153.relations [13,13,13,13,13,80] reduction8153.output := by lin_cert using reduction8153.terms
def image8154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8154 : InImage map_29_189 image8154 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8154 : Bundle := named_bundle% "RealMapCertificates/relations/basis8154.json"
theorem reductionProof8154 : EqualModuloRelations reduction8154.relations reduction8154.input reduction8154.output := by lin_cert using reduction8154.terms
theorem substitutionProof8154 : IsMapEvaluation generatorImages reduction8154.relations [8,8,20,267] reduction8154.output := by lin_cert using reduction8154.terms
def image8155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8155 : InImage map_29_189 image8155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8155 : Bundle := named_bundle% "RealMapCertificates/relations/basis8155.json"
theorem reductionProof8155 : EqualModuloRelations reduction8155.relations reduction8155.input reduction8155.output := by lin_cert using reduction8155.terms
theorem substitutionProof8155 : IsMapEvaluation generatorImages reduction8155.relations [0,16,627] reduction8155.output := by lin_cert using reduction8155.terms
def map_29_190 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8253 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8253 : InImage map_29_190 image8253 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8253 : Bundle := named_bundle% "RealMapCertificates/relations/basis8253.json"
theorem reductionProof8253 : EqualModuloRelations reduction8253.relations reduction8253.input reduction8253.output := by lin_cert using reduction8253.terms
theorem substitutionProof8253 : IsMapEvaluation generatorImages reduction8253.relations [13,715] reduction8253.output := by lin_cert using reduction8253.terms
def image8254 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8254 : InImage map_29_190 image8254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8254 : Bundle := named_bundle% "RealMapCertificates/relations/basis8254.json"
theorem reductionProof8254 : EqualModuloRelations reduction8254.relations reduction8254.input reduction8254.output := by lin_cert using reduction8254.terms
theorem substitutionProof8254 : IsMapEvaluation generatorImages reduction8254.relations [0,0,17,627] reduction8254.output := by lin_cert using reduction8254.terms
def image8255 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8255 : InImage map_29_190 image8255 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8255 : Bundle := named_bundle% "RealMapCertificates/relations/basis8255.json"
theorem reductionProof8255 : EqualModuloRelations reduction8255.relations reduction8255.input reduction8255.output := by lin_cert using reduction8255.terms
theorem substitutionProof8255 : IsMapEvaluation generatorImages reduction8255.relations [0,0,0,963] reduction8255.output := by lin_cert using reduction8255.terms
def map_29_191 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8379 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8379 : InImage map_29_191 image8379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8379 : Bundle := named_bundle% "RealMapCertificates/relations/basis8379.json"
theorem reductionProof8379 : EqualModuloRelations reduction8379.relations reduction8379.input reduction8379.output := by lin_cert using reduction8379.terms
theorem substitutionProof8379 : IsMapEvaluation generatorImages reduction8379.relations [8,13,13,292] reduction8379.output := by lin_cert using reduction8379.terms
def image8380 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8380 : InImage map_29_191 image8380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8380 : Bundle := named_bundle% "RealMapCertificates/relations/basis8380.json"
theorem reductionProof8380 : EqualModuloRelations reduction8380.relations reduction8380.input reduction8380.output := by lin_cert using reduction8380.terms
theorem substitutionProof8380 : IsMapEvaluation generatorImages reduction8380.relations [8,8,8,17,209] reduction8380.output := by lin_cert using reduction8380.terms
def image8381 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8381 : InImage map_29_191 image8381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8381 : Bundle := named_bundle% "RealMapCertificates/relations/basis8381.json"
theorem reductionProof8381 : EqualModuloRelations reduction8381.relations reduction8381.input reduction8381.output := by lin_cert using reduction8381.terms
theorem substitutionProof8381 : IsMapEvaluation generatorImages reduction8381.relations [0,0,64,301] reduction8381.output := by lin_cert using reduction8381.terms
def image8382 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8382 : InImage map_29_191 image8382 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8382 : Bundle := named_bundle% "RealMapCertificates/relations/basis8382.json"
theorem reductionProof8382 : EqualModuloRelations reduction8382.relations reduction8382.input reduction8382.output := by lin_cert using reduction8382.terms
theorem substitutionProof8382 : IsMapEvaluation generatorImages reduction8382.relations [0,0,0,974] reduction8382.output := by lin_cert using reduction8382.terms
def map_29_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8525 : InImage map_29_192 image8525 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8525 : Bundle := named_bundle% "RealMapCertificates/relations/basis8525.json"
theorem reductionProof8525 : EqualModuloRelations reduction8525.relations reduction8525.input reduction8525.output := by lin_cert using reduction8525.terms
theorem substitutionProof8525 : IsMapEvaluation generatorImages reduction8525.relations [64,327] reduction8525.output := by lin_cert using reduction8525.terms
def image8526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8526 : InImage map_29_192 image8526 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8526 : Bundle := named_bundle% "RealMapCertificates/relations/basis8526.json"
theorem reductionProof8526 : EqualModuloRelations reduction8526.relations reduction8526.input reduction8526.output := by lin_cert using reduction8526.terms
theorem substitutionProof8526 : IsMapEvaluation generatorImages reduction8526.relations [8,8,8,23,188] reduction8526.output := by lin_cert using reduction8526.terms
def image8527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8527 : InImage map_29_192 image8527 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8527 : Bundle := named_bundle% "RealMapCertificates/relations/basis8527.json"
theorem reductionProof8527 : EqualModuloRelations reduction8527.relations reduction8527.input reduction8527.output := by lin_cert using reduction8527.terms
theorem substitutionProof8527 : IsMapEvaluation generatorImages reduction8527.relations [0,8,797] reduction8527.output := by lin_cert using reduction8527.terms
def image8528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8528 : InImage map_29_192 image8528 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8528 : Bundle := named_bundle% "RealMapCertificates/relations/basis8528.json"
theorem reductionProof8528 : EqualModuloRelations reduction8528.relations reduction8528.input reduction8528.output := by lin_cert using reduction8528.terms
theorem substitutionProof8528 : IsMapEvaluation generatorImages reduction8528.relations [0,0,0,0,976] reduction8528.output := by lin_cert using reduction8528.terms
def map_29_193 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image8636 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8636 : InImage map_29_193 image8636 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8636 : Bundle := named_bundle% "RealMapCertificates/relations/basis8636.json"
theorem reductionProof8636 : EqualModuloRelations reduction8636.relations reduction8636.input reduction8636.output := by lin_cert using reduction8636.terms
theorem substitutionProof8636 : IsMapEvaluation generatorImages reduction8636.relations [0,0,17,655] reduction8636.output := by lin_cert using reduction8636.terms
def image8637 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8637 : InImage map_29_193 image8637 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8637 : Bundle := named_bundle% "RealMapCertificates/relations/basis8637.json"
theorem reductionProof8637 : EqualModuloRelations reduction8637.relations reduction8637.input reduction8637.output := by lin_cert using reduction8637.terms
theorem substitutionProof8637 : IsMapEvaluation generatorImages reduction8637.relations [0,0,2,963] reduction8637.output := by lin_cert using reduction8637.terms
def image8638 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8638 : InImage map_29_193 image8638 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8638 : Bundle := named_bundle% "RealMapCertificates/relations/basis8638.json"
theorem reductionProof8638 : EqualModuloRelations reduction8638.relations reduction8638.input reduction8638.output := by lin_cert using reduction8638.terms
theorem substitutionProof8638 : IsMapEvaluation generatorImages reduction8638.relations [0,0,0,0,0,978] reduction8638.output := by lin_cert using reduction8638.terms
def map_29_194 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image8759 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8759 : InImage map_29_194 image8759 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8759 : Bundle := named_bundle% "RealMapCertificates/relations/basis8759.json"
theorem reductionProof8759 : EqualModuloRelations reduction8759.relations reduction8759.input reduction8759.output := by lin_cert using reduction8759.terms
theorem substitutionProof8759 : IsMapEvaluation generatorImages reduction8759.relations [1077] reduction8759.output := by lin_cert using reduction8759.terms
def image8760 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8760 : InImage map_29_194 image8760 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8760 : Bundle := named_bundle% "RealMapCertificates/relations/basis8760.json"
theorem reductionProof8760 : EqualModuloRelations reduction8760.relations reduction8760.input reduction8760.output := by lin_cert using reduction8760.terms
theorem substitutionProof8760 : IsMapEvaluation generatorImages reduction8760.relations [9,13,13,292] reduction8760.output := by lin_cert using reduction8760.terms
def image8761 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8761 : InImage map_29_194 image8761 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8761 : Bundle := named_bundle% "RealMapCertificates/relations/basis8761.json"
theorem reductionProof8761 : EqualModuloRelations reduction8761.relations reduction8761.input reduction8761.output := by lin_cert using reduction8761.terms
theorem substitutionProof8761 : IsMapEvaluation generatorImages reduction8761.relations [8,8,8,8,280] reduction8761.output := by lin_cert using reduction8761.terms
def map_29_195 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8928 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8928 : InImage map_29_195 image8928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8928 : Bundle := named_bundle% "RealMapCertificates/relations/basis8928.json"
theorem reductionProof8928 : EqualModuloRelations reduction8928.relations reduction8928.input reduction8928.output := by lin_cert using reduction8928.terms
theorem substitutionProof8928 : IsMapEvaluation generatorImages reduction8928.relations [16,64,188] reduction8928.output := by lin_cert using reduction8928.terms
def image8929 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8929 : InImage map_29_195 image8929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8929 : Bundle := named_bundle% "RealMapCertificates/relations/basis8929.json"
theorem reductionProof8929 : EqualModuloRelations reduction8929.relations reduction8929.input reduction8929.output := by lin_cert using reduction8929.terms
theorem substitutionProof8929 : IsMapEvaluation generatorImages reduction8929.relations [8,8,9,23,188] reduction8929.output := by lin_cert using reduction8929.terms
def image8930 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8930 : InImage map_29_195 image8930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8930 : Bundle := named_bundle% "RealMapCertificates/relations/basis8930.json"
theorem reductionProof8930 : EqualModuloRelations reduction8930.relations reduction8930.input reduction8930.output := by lin_cert using reduction8930.terms
theorem substitutionProof8930 : IsMapEvaluation generatorImages reduction8930.relations [0,64,347] reduction8930.output := by lin_cert using reduction8930.terms
def image8931 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8931 : InImage map_29_195 image8931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8931 : Bundle := named_bundle% "RealMapCertificates/relations/basis8931.json"
theorem reductionProof8931 : EqualModuloRelations reduction8931.relations reduction8931.input reduction8931.output := by lin_cert using reduction8931.terms
theorem substitutionProof8931 : IsMapEvaluation generatorImages reduction8931.relations [0,8,8,627] reduction8931.output := by lin_cert using reduction8931.terms
def map_29_196 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image9033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9033 : InImage map_29_196 image9033 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9033 : Bundle := named_bundle% "RealMapCertificates/relations/basis9033.json"
theorem reductionProof9033 : EqualModuloRelations reduction9033.relations reduction9033.input reduction9033.output := by lin_cert using reduction9033.terms
theorem substitutionProof9033 : IsMapEvaluation generatorImages reduction9033.relations [1103] reduction9033.output := by lin_cert using reduction9033.terms
def image9034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9034 : InImage map_29_196 image9034 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9034 : Bundle := named_bundle% "RealMapCertificates/relations/basis9034.json"
theorem reductionProof9034 : EqualModuloRelations reduction9034.relations reduction9034.input reduction9034.output := by lin_cert using reduction9034.terms
theorem substitutionProof9034 : IsMapEvaluation generatorImages reduction9034.relations [13,13,537] reduction9034.output := by lin_cert using reduction9034.terms
def image9035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9035 : InImage map_29_196 image9035 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9035 : Bundle := named_bundle% "RealMapCertificates/relations/basis9035.json"
theorem reductionProof9035 : EqualModuloRelations reduction9035.relations reduction9035.input reduction9035.output := by lin_cert using reduction9035.terms
theorem substitutionProof9035 : IsMapEvaluation generatorImages reduction9035.relations [13,13,13,13,13,105] reduction9035.output := by lin_cert using reduction9035.terms
def image9036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9036 : InImage map_29_196 image9036 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9036 : Bundle := named_bundle% "RealMapCertificates/relations/basis9036.json"
theorem reductionProof9036 : EqualModuloRelations reduction9036.relations reduction9036.input reduction9036.output := by lin_cert using reduction9036.terms
theorem substitutionProof9036 : IsMapEvaluation generatorImages reduction9036.relations [1,64,347] reduction9036.output := by lin_cert using reduction9036.terms
def image9037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9037 : InImage map_29_196 image9037 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9037 : Bundle := named_bundle% "RealMapCertificates/relations/basis9037.json"
theorem reductionProof9037 : EqualModuloRelations reduction9037.relations reduction9037.input reduction9037.output := by lin_cert using reduction9037.terms
theorem substitutionProof9037 : IsMapEvaluation generatorImages reduction9037.relations [0,0,138,209] reduction9037.output := by lin_cert using reduction9037.terms
def image9038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9038 : InImage map_29_196 image9038 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9038 : Bundle := named_bundle% "RealMapCertificates/relations/basis9038.json"
theorem reductionProof9038 : EqualModuloRelations reduction9038.relations reduction9038.input reduction9038.output := by lin_cert using reduction9038.terms
theorem substitutionProof9038 : IsMapEvaluation generatorImages reduction9038.relations [0,0,8,832] reduction9038.output := by lin_cert using reduction9038.terms
def map_29_197 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9186 : InImage map_29_197 image9186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9186 : Bundle := named_bundle% "RealMapCertificates/relations/basis9186.json"
theorem reductionProof9186 : EqualModuloRelations reduction9186.relations reduction9186.input reduction9186.output := by lin_cert using reduction9186.terms
theorem substitutionProof9186 : IsMapEvaluation generatorImages reduction9186.relations [13,13,13,292] reduction9186.output := by lin_cert using reduction9186.terms
def image9187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9187 : InImage map_29_197 image9187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9187 : Bundle := named_bundle% "RealMapCertificates/relations/basis9187.json"
theorem reductionProof9187 : EqualModuloRelations reduction9187.relations reduction9187.input reduction9187.output := by lin_cert using reduction9187.terms
theorem substitutionProof9187 : IsMapEvaluation generatorImages reduction9187.relations [8,8,8,8,294] reduction9187.output := by lin_cert using reduction9187.terms
def image9188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9188 : InImage map_29_197 image9188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9188 : Bundle := named_bundle% "RealMapCertificates/relations/basis9188.json"
theorem reductionProof9188 : EqualModuloRelations reduction9188.relations reduction9188.input reduction9188.output := by lin_cert using reduction9188.terms
theorem substitutionProof9188 : IsMapEvaluation generatorImages reduction9188.relations [1,1095] reduction9188.output := by lin_cert using reduction9188.terms
def image9189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9189 : InImage map_29_197 image9189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9189 : Bundle := named_bundle% "RealMapCertificates/relations/basis9189.json"
theorem reductionProof9189 : EqualModuloRelations reduction9189.relations reduction9189.input reduction9189.output := by lin_cert using reduction9189.terms
theorem substitutionProof9189 : IsMapEvaluation generatorImages reduction9189.relations [0,0,0,23,627] reduction9189.output := by lin_cert using reduction9189.terms
def map_29_198 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image9372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9372 : InImage map_29_198 image9372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9372 : Bundle := named_bundle% "RealMapCertificates/relations/basis9372.json"
theorem reductionProof9372 : EqualModuloRelations reduction9372.relations reduction9372.input reduction9372.output := by lin_cert using reduction9372.terms
theorem substitutionProof9372 : IsMapEvaluation generatorImages reduction9372.relations [8,64,255] reduction9372.output := by lin_cert using reduction9372.terms
def image9373 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9373 : InImage map_29_198 image9373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9373 : Bundle := named_bundle% "RealMapCertificates/relations/basis9373.json"
theorem reductionProof9373 : EqualModuloRelations reduction9373.relations reduction9373.input reduction9373.output := by lin_cert using reduction9373.terms
theorem substitutionProof9373 : IsMapEvaluation generatorImages reduction9373.relations [8,8,13,23,188] reduction9373.output := by lin_cert using reduction9373.terms
def image9374 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9374 : InImage map_29_198 image9374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9374 : Bundle := named_bundle% "RealMapCertificates/relations/basis9374.json"
theorem reductionProof9374 : EqualModuloRelations reduction9374.relations reduction9374.input reduction9374.output := by lin_cert using reduction9374.terms
theorem substitutionProof9374 : IsMapEvaluation generatorImages reduction9374.relations [0,8,8,655] reduction9374.output := by lin_cert using reduction9374.terms
def image9375 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9375 : InImage map_29_198 image9375 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9375 : Bundle := named_bundle% "RealMapCertificates/relations/basis9375.json"
theorem reductionProof9375 : EqualModuloRelations reduction9375.relations reduction9375.input reduction9375.output := by lin_cert using reduction9375.terms
theorem substitutionProof9375 : IsMapEvaluation generatorImages reduction9375.relations [0,0,0,0,1079] reduction9375.output := by lin_cert using reduction9375.terms
def image9376 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9376 : InImage map_29_198 image9376 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9376 : Bundle := named_bundle% "RealMapCertificates/relations/basis9376.json"
theorem reductionProof9376 : EqualModuloRelations reduction9376.relations reduction9376.input reduction9376.output := by lin_cert using reduction9376.terms
theorem substitutionProof9376 : IsMapEvaluation generatorImages reduction9376.relations [0,0,0,0,64,349] reduction9376.output := by lin_cert using reduction9376.terms
def map_29_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9505 : InImage map_29_199 image9505 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9505 : Bundle := named_bundle% "RealMapCertificates/relations/basis9505.json"
theorem reductionProof9505 : EqualModuloRelations reduction9505.relations reduction9505.input reduction9505.output := by lin_cert using reduction9505.terms
theorem substitutionProof9505 : IsMapEvaluation generatorImages reduction9505.relations [0,0,8,874] reduction9505.output := by lin_cert using reduction9505.terms
def image9506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9506 : InImage map_29_199 image9506 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9506 : Bundle := named_bundle% "RealMapCertificates/relations/basis9506.json"
theorem reductionProof9506 : EqualModuloRelations reduction9506.relations reduction9506.input reduction9506.output := by lin_cert using reduction9506.terms
theorem substitutionProof9506 : IsMapEvaluation generatorImages reduction9506.relations [0,0,0,0,0,0,1063] reduction9506.output := by lin_cert using reduction9506.terms
def map_29_200 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image9655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9655 : InImage map_29_200 image9655 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9655 : Bundle := named_bundle% "RealMapCertificates/relations/basis9655.json"
theorem reductionProof9655 : EqualModuloRelations reduction9655.relations reduction9655.input reduction9655.output := by lin_cert using reduction9655.terms
theorem substitutionProof9655 : IsMapEvaluation generatorImages reduction9655.relations [64,420] reduction9655.output := by lin_cert using reduction9655.terms
def image9656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9656 : InImage map_29_200 image9656 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9656 : Bundle := named_bundle% "RealMapCertificates/relations/basis9656.json"
theorem reductionProof9656 : EqualModuloRelations reduction9656.relations reduction9656.input reduction9656.output := by lin_cert using reduction9656.terms
theorem substitutionProof9656 : IsMapEvaluation generatorImages reduction9656.relations [8,8,8,9,294] reduction9656.output := by lin_cert using reduction9656.terms
def image9657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9657 : InImage map_29_200 image9657 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9657 : Bundle := named_bundle% "RealMapCertificates/relations/basis9657.json"
theorem reductionProof9657 : EqualModuloRelations reduction9657.relations reduction9657.input reduction9657.output := by lin_cert using reduction9657.terms
theorem substitutionProof9657 : IsMapEvaluation generatorImages reduction9657.relations [0,0,0,0,0,0,0,0,1051] reduction9657.output := by lin_cert using reduction9657.terms
def map_29_201 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9854 : InImage map_29_201 image9854 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9854 : Bundle := named_bundle% "RealMapCertificates/relations/basis9854.json"
theorem reductionProof9854 : EqualModuloRelations reduction9854.relations reduction9854.input reduction9854.output := by lin_cert using reduction9854.terms
theorem substitutionProof9854 : IsMapEvaluation generatorImages reduction9854.relations [8,9,13,23,188] reduction9854.output := by lin_cert using reduction9854.terms
def image9855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9855 : InImage map_29_201 image9855 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9855 : Bundle := named_bundle% "RealMapCertificates/relations/basis9855.json"
theorem reductionProof9855 : EqualModuloRelations reduction9855.relations reduction9855.input reduction9855.output := by lin_cert using reduction9855.terms
theorem substitutionProof9855 : IsMapEvaluation generatorImages reduction9855.relations [8,8,64,188] reduction9855.output := by lin_cert using reduction9855.terms
def image9856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9856 : InImage map_29_201 image9856 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9856 : Bundle := named_bundle% "RealMapCertificates/relations/basis9856.json"
theorem reductionProof9856 : EqualModuloRelations reduction9856.relations reduction9856.input reduction9856.output := by lin_cert using reduction9856.terms
theorem substitutionProof9856 : IsMapEvaluation generatorImages reduction9856.relations [0,8,8,690] reduction9856.output := by lin_cert using reduction9856.terms
def image9857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9857 : InImage map_29_201 image9857 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9857 : Bundle := named_bundle% "RealMapCertificates/relations/basis9857.json"
theorem reductionProof9857 : EqualModuloRelations reduction9857.relations reduction9857.input reduction9857.output := by lin_cert using reduction9857.terms
theorem substitutionProof9857 : IsMapEvaluation generatorImages reduction9857.relations [0,0,0,0,0,0,0,1084] reduction9857.output := by lin_cert using reduction9857.terms
def map_29_202 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9981 : InImage map_29_202 image9981 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9981 : Bundle := named_bundle% "RealMapCertificates/relations/basis9981.json"
theorem reductionProof9981 : EqualModuloRelations reduction9981.relations reduction9981.input reduction9981.output := by lin_cert using reduction9981.terms
theorem substitutionProof9981 : IsMapEvaluation generatorImages reduction9981.relations [9,13,13,13,13,133] reduction9981.output := by lin_cert using reduction9981.terms
def image9982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9982 : InImage map_29_202 image9982 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9982 : Bundle := named_bundle% "RealMapCertificates/relations/basis9982.json"
theorem reductionProof9982 : EqualModuloRelations reduction9982.relations reduction9982.input reduction9982.output := by lin_cert using reduction9982.terms
theorem substitutionProof9982 : IsMapEvaluation generatorImages reduction9982.relations [0,0,8,901] reduction9982.output := by lin_cert using reduction9982.terms
def image9983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9983 : InImage map_29_202 image9983 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9983 : Bundle := named_bundle% "RealMapCertificates/relations/basis9983.json"
theorem reductionProof9983 : EqualModuloRelations reduction9983.relations reduction9983.input reduction9983.output := by lin_cert using reduction9983.terms
theorem substitutionProof9983 : IsMapEvaluation generatorImages reduction9983.relations [0,0,0,149,209] reduction9983.output := by lin_cert using reduction9983.terms
def image9984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9984 : InImage map_29_202 image9984 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9984 : Bundle := named_bundle% "RealMapCertificates/relations/basis9984.json"
theorem reductionProof9984 : EqualModuloRelations reduction9984.relations reduction9984.input reduction9984.output := by lin_cert using reduction9984.terms
theorem substitutionProof9984 : IsMapEvaluation generatorImages reduction9984.relations [0,0,0,0,0,0,1105] reduction9984.output := by lin_cert using reduction9984.terms
def map_29_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10155 : InImage map_29_203 image10155 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10155 : Bundle := named_bundle% "RealMapCertificates/relations/basis10155.json"
theorem reductionProof10155 : EqualModuloRelations reduction10155.relations reduction10155.input reduction10155.output := by lin_cert using reduction10155.terms
theorem substitutionProof10155 : IsMapEvaluation generatorImages reduction10155.relations [72,420] reduction10155.output := by lin_cert using reduction10155.terms
def image10156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10156 : InImage map_29_203 image10156 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10156 : Bundle := named_bundle% "RealMapCertificates/relations/basis10156.json"
theorem reductionProof10156 : EqualModuloRelations reduction10156.relations reduction10156.input reduction10156.output := by lin_cert using reduction10156.terms
theorem substitutionProof10156 : IsMapEvaluation generatorImages reduction10156.relations [8,8,8,13,294] reduction10156.output := by lin_cert using reduction10156.terms
def image10157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10157 : InImage map_29_203 image10157 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10157 : Bundle := named_bundle% "RealMapCertificates/relations/basis10157.json"
theorem reductionProof10157 : EqualModuloRelations reduction10157.relations reduction10157.input reduction10157.output := by lin_cert using reduction10157.terms
theorem substitutionProof10157 : IsMapEvaluation generatorImages reduction10157.relations [1,1204] reduction10157.output := by lin_cert using reduction10157.terms
def image10158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10158 : InImage map_29_203 image10158 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10158 : Bundle := named_bundle% "RealMapCertificates/relations/basis10158.json"
theorem reductionProof10158 : EqualModuloRelations reduction10158.relations reduction10158.input reduction10158.output := by lin_cert using reduction10158.terms
theorem substitutionProof10158 : IsMapEvaluation generatorImages reduction10158.relations [0,0,0,1182] reduction10158.output := by lin_cert using reduction10158.terms
def image10159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10159 : InImage map_29_203 image10159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10159 : Bundle := named_bundle% "RealMapCertificates/relations/basis10159.json"
theorem reductionProof10159 : EqualModuloRelations reduction10159.relations reduction10159.input reduction10159.output := by lin_cert using reduction10159.terms
theorem substitutionProof10159 : IsMapEvaluation generatorImages reduction10159.relations [0,0,0,0,1169] reduction10159.output := by lin_cert using reduction10159.terms
def map_29_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10357 : InImage map_29_204 image10357 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10357 : Bundle := named_bundle% "RealMapCertificates/relations/basis10357.json"
theorem reductionProof10357 : EqualModuloRelations reduction10357.relations reduction10357.input reduction10357.output := by lin_cert using reduction10357.terms
theorem substitutionProof10357 : IsMapEvaluation generatorImages reduction10357.relations [1255] reduction10357.output := by lin_cert using reduction10357.terms
def image10358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10358 : InImage map_29_204 image10358 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10358 : Bundle := named_bundle% "RealMapCertificates/relations/basis10358.json"
theorem reductionProof10358 : EqualModuloRelations reduction10358.relations reduction10358.input reduction10358.output := by lin_cert using reduction10358.terms
theorem substitutionProof10358 : IsMapEvaluation generatorImages reduction10358.relations [13,13,13,357] reduction10358.output := by lin_cert using reduction10358.terms
def image10359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10359 : InImage map_29_204 image10359 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10359 : Bundle := named_bundle% "RealMapCertificates/relations/basis10359.json"
theorem reductionProof10359 : EqualModuloRelations reduction10359.relations reduction10359.input reduction10359.output := by lin_cert using reduction10359.terms
theorem substitutionProof10359 : IsMapEvaluation generatorImages reduction10359.relations [8,13,13,23,188] reduction10359.output := by lin_cert using reduction10359.terms
def image10360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10360 : InImage map_29_204 image10360 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10360 : Bundle := named_bundle% "RealMapCertificates/relations/basis10360.json"
theorem reductionProof10360 : EqualModuloRelations reduction10360.relations reduction10360.input reduction10360.output := by lin_cert using reduction10360.terms
theorem substitutionProof10360 : IsMapEvaluation generatorImages reduction10360.relations [8,8,72,188] reduction10360.output := by lin_cert using reduction10360.terms
def image10361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10361 : InImage map_29_204 image10361 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10361 : Bundle := named_bundle% "RealMapCertificates/relations/basis10361.json"
theorem reductionProof10361 : EqualModuloRelations reduction10361.relations reduction10361.input reduction10361.output := by lin_cert using reduction10361.terms
theorem substitutionProof10361 : IsMapEvaluation generatorImages reduction10361.relations [0,0,0,0,0,0,1146] reduction10361.output := by lin_cert using reduction10361.terms
def map_29_205 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10507 : InImage map_29_205 image10507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10507 : Bundle := named_bundle% "RealMapCertificates/relations/basis10507.json"
theorem reductionProof10507 : EqualModuloRelations reduction10507.relations reduction10507.input reduction10507.output := by lin_cert using reduction10507.terms
theorem substitutionProof10507 : IsMapEvaluation generatorImages reduction10507.relations [13,13,13,13,13,133] reduction10507.output := by lin_cert using reduction10507.terms
def image10508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10508 : InImage map_29_205 image10508 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10508 : Bundle := named_bundle% "RealMapCertificates/relations/basis10508.json"
theorem reductionProof10508 : EqualModuloRelations reduction10508.relations reduction10508.input reduction10508.output := by lin_cert using reduction10508.terms
theorem substitutionProof10508 : IsMapEvaluation generatorImages reduction10508.relations [0,0,0,0,0,0,64,418] reduction10508.output := by lin_cert using reduction10508.terms
def image10509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10509 : InImage map_29_205 image10509 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10509 : Bundle := named_bundle% "RealMapCertificates/relations/basis10509.json"
theorem reductionProof10509 : EqualModuloRelations reduction10509.relations reduction10509.input reduction10509.output := by lin_cert using reduction10509.terms
theorem substitutionProof10509 : IsMapEvaluation generatorImages reduction10509.relations [0,0,0,0,0,0,0,1147] reduction10509.output := by lin_cert using reduction10509.terms
end RealMapCertificates
