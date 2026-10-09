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
  | 23 => [[7,7]]
  | 42 => [[5,5,7]]
  | 43 => []
  | 64 => []
  | 67 => []
  | 72 => []
  | 75 => []
  | 76 => []
  | 79 => []
  | 80 => []
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 123 => [[3,4,4,4,4,4,4]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 167 => [[7,9,12]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 250 => []
  | 260 => []
  | 268 => []
  | 278 => []
  | 280 => []
  | 287 => []
  | 293 => []
  | 294 => []
  | 324 => []
  | 472 => []
  | 627 => []
  | 638 => []
  | 655 => []
  | 668 => []
  | 692 => []
  | 693 => []
  | 706 => []
  | 832 => []
  | 833 => []
  | 834 => []
  | 877 => []
  | 878 => []
  | 975 => []
  | 1079 => []
  | 1122 => []
  | 1169 => []
  | 1221 => []
  | 1256 => []
  | 1289 => []
  | 1368 => []
  | 1369 => []
  | 1403 => []
  | 1404 => []
  | 1441 => []
  | 1442 => []
  | 1483 => []
  | 1484 => []
  | 1504 => []
  | 1516 => []
  | 1517 => []
  | 1539 => []
  | 1554 => []
  | 1571 => []
  | 1572 => []
  | 1596 => []
  | 1597 => []
  | 1598 => []
  | 1640 => []
  | 1641 => []
  | 1652 => []
  | 1655 => []
  | 1690 => []
  | _ => []
def map_29_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10681 : InImage map_29_206 image10681 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10681 : Bundle := named_bundle% "RealMapCertificates/relations/basis10681.json"
theorem reductionProof10681 : EqualModuloRelations reduction10681.relations reduction10681.input reduction10681.output := by lin_cert using reduction10681.terms
theorem substitutionProof10681 : IsMapEvaluation generatorImages reduction10681.relations [42,627] reduction10681.output := by lin_cert using reduction10681.terms
def image10682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10682 : InImage map_29_206 image10682 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10682 : Bundle := named_bundle% "RealMapCertificates/relations/basis10682.json"
theorem reductionProof10682 : EqualModuloRelations reduction10682.relations reduction10682.input reduction10682.output := by lin_cert using reduction10682.terms
theorem substitutionProof10682 : IsMapEvaluation generatorImages reduction10682.relations [8,64,293] reduction10682.output := by lin_cert using reduction10682.terms
def image10683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10683 : InImage map_29_206 image10683 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10683 : Bundle := named_bundle% "RealMapCertificates/relations/basis10683.json"
theorem reductionProof10683 : EqualModuloRelations reduction10683.relations reduction10683.input reduction10683.output := by lin_cert using reduction10683.terms
theorem substitutionProof10683 : IsMapEvaluation generatorImages reduction10683.relations [8,8,9,13,294] reduction10683.output := by lin_cert using reduction10683.terms
def image10684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10684 : InImage map_29_206 image10684 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10684 : Bundle := named_bundle% "RealMapCertificates/relations/basis10684.json"
theorem reductionProof10684 : EqualModuloRelations reduction10684.relations reduction10684.input reduction10684.output := by lin_cert using reduction10684.terms
theorem substitutionProof10684 : IsMapEvaluation generatorImages reduction10684.relations [0,1289] reduction10684.output := by lin_cert using reduction10684.terms
def map_29_207 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10908 : InImage map_29_207 image10908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10908 : Bundle := named_bundle% "RealMapCertificates/relations/basis10908.json"
theorem reductionProof10908 : EqualModuloRelations reduction10908.relations reduction10908.input reduction10908.output := by lin_cert using reduction10908.terms
theorem substitutionProof10908 : IsMapEvaluation generatorImages reduction10908.relations [9,13,13,23,188] reduction10908.output := by lin_cert using reduction10908.terms
def image10909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10909 : InImage map_29_207 image10909 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10909 : Bundle := named_bundle% "RealMapCertificates/relations/basis10909.json"
theorem reductionProof10909 : EqualModuloRelations reduction10909.relations reduction10909.input reduction10909.output := by lin_cert using reduction10909.terms
theorem substitutionProof10909 : IsMapEvaluation generatorImages reduction10909.relations [8,8,79,188] reduction10909.output := by lin_cert using reduction10909.terms
def map_29_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11035 : InImage map_29_208 image11035 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11035 : Bundle := named_bundle% "RealMapCertificates/relations/basis11035.json"
theorem reductionProof11035 : EqualModuloRelations reduction11035.relations reduction11035.input reduction11035.output := by lin_cert using reduction11035.terms
theorem substitutionProof11035 : IsMapEvaluation generatorImages reduction11035.relations [2,1256] reduction11035.output := by lin_cert using reduction11035.terms
def map_29_209 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11215 : InImage map_29_209 image11215 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11215 : Bundle := named_bundle% "RealMapCertificates/relations/basis11215.json"
theorem reductionProof11215 : EqualModuloRelations reduction11215.relations reduction11215.input reduction11215.output := by lin_cert using reduction11215.terms
theorem substitutionProof11215 : IsMapEvaluation generatorImages reduction11215.relations [42,655] reduction11215.output := by lin_cert using reduction11215.terms
def image11216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11216 : InImage map_29_209 image11216 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11216 : Bundle := named_bundle% "RealMapCertificates/relations/basis11216.json"
theorem reductionProof11216 : EqualModuloRelations reduction11216.relations reduction11216.input reduction11216.output := by lin_cert using reduction11216.terms
theorem substitutionProof11216 : IsMapEvaluation generatorImages reduction11216.relations [8,72,293] reduction11216.output := by lin_cert using reduction11216.terms
def image11217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11217 : InImage map_29_209 image11217 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11217 : Bundle := named_bundle% "RealMapCertificates/relations/basis11217.json"
theorem reductionProof11217 : EqualModuloRelations reduction11217.relations reduction11217.input reduction11217.output := by lin_cert using reduction11217.terms
theorem substitutionProof11217 : IsMapEvaluation generatorImages reduction11217.relations [8,8,13,13,294] reduction11217.output := by lin_cert using reduction11217.terms
def image11218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11218 : InImage map_29_209 image11218 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11218 : Bundle := named_bundle% "RealMapCertificates/relations/basis11218.json"
theorem reductionProof11218 : EqualModuloRelations reduction11218.relations reduction11218.input reduction11218.output := by lin_cert using reduction11218.terms
theorem substitutionProof11218 : IsMapEvaluation generatorImages reduction11218.relations [0,149,250] reduction11218.output := by lin_cert using reduction11218.terms
def image11219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11219 : InImage map_29_209 image11219 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11219 : Bundle := named_bundle% "RealMapCertificates/relations/basis11219.json"
theorem reductionProof11219 : EqualModuloRelations reduction11219.relations reduction11219.input reduction11219.output := by lin_cert using reduction11219.terms
theorem substitutionProof11219 : IsMapEvaluation generatorImages reduction11219.relations [0,0,0,0,0,187,187] reduction11219.output := by lin_cert using reduction11219.terms
def map_29_210 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11421 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11421 : InImage map_29_210 image11421 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11421 : Bundle := named_bundle% "RealMapCertificates/relations/basis11421.json"
theorem reductionProof11421 : EqualModuloRelations reduction11421.relations reduction11421.input reduction11421.output := by lin_cert using reduction11421.terms
theorem substitutionProof11421 : IsMapEvaluation generatorImages reduction11421.relations [13,13,13,23,188] reduction11421.output := by lin_cert using reduction11421.terms
def image11422 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11422 : InImage map_29_210 image11422 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11422 : Bundle := named_bundle% "RealMapCertificates/relations/basis11422.json"
theorem reductionProof11422 : EqualModuloRelations reduction11422.relations reduction11422.input reduction11422.output := by lin_cert using reduction11422.terms
theorem substitutionProof11422 : IsMapEvaluation generatorImages reduction11422.relations [9,13,13,472] reduction11422.output := by lin_cert using reduction11422.terms
def image11423 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11423 : InImage map_29_210 image11423 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11423 : Bundle := named_bundle% "RealMapCertificates/relations/basis11423.json"
theorem reductionProof11423 : EqualModuloRelations reduction11423.relations reduction11423.input reduction11423.output := by lin_cert using reduction11423.terms
theorem substitutionProof11423 : IsMapEvaluation generatorImages reduction11423.relations [8,8,80,201] reduction11423.output := by lin_cert using reduction11423.terms
def image11424 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11424 : InImage map_29_210 image11424 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11424 : Bundle := named_bundle% "RealMapCertificates/relations/basis11424.json"
theorem reductionProof11424 : EqualModuloRelations reduction11424.relations reduction11424.input reduction11424.output := by lin_cert using reduction11424.terms
theorem substitutionProof11424 : IsMapEvaluation generatorImages reduction11424.relations [0,0,0,0,0,0,187,188] reduction11424.output := by lin_cert using reduction11424.terms
def map_29_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11577 : InImage map_29_211 image11577 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11577 : Bundle := named_bundle% "RealMapCertificates/relations/basis11577.json"
theorem reductionProof11577 : EqualModuloRelations reduction11577.relations reduction11577.input reduction11577.output := by lin_cert using reduction11577.terms
theorem substitutionProof11577 : IsMapEvaluation generatorImages reduction11577.relations [13,13,13,13,13,13,76] reduction11577.output := by lin_cert using reduction11577.terms
def image11578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11578 : InImage map_29_211 image11578 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11578 : Bundle := named_bundle% "RealMapCertificates/relations/basis11578.json"
theorem reductionProof11578 : EqualModuloRelations reduction11578.relations reduction11578.input reduction11578.output := by lin_cert using reduction11578.terms
theorem substitutionProof11578 : IsMapEvaluation generatorImages reduction11578.relations [0,0,0,0,0,111,324] reduction11578.output := by lin_cert using reduction11578.terms
def map_29_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11757 : InImage map_29_212 image11757 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11757 : Bundle := named_bundle% "RealMapCertificates/relations/basis11757.json"
theorem reductionProof11757 : EqualModuloRelations reduction11757.relations reduction11757.input reduction11757.output := by lin_cert using reduction11757.terms
theorem substitutionProof11757 : IsMapEvaluation generatorImages reduction11757.relations [13,975] reduction11757.output := by lin_cert using reduction11757.terms
def image11758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11758 : InImage map_29_212 image11758 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11758 : Bundle := named_bundle% "RealMapCertificates/relations/basis11758.json"
theorem reductionProof11758 : EqualModuloRelations reduction11758.relations reduction11758.input reduction11758.output := by lin_cert using reduction11758.terms
theorem substitutionProof11758 : IsMapEvaluation generatorImages reduction11758.relations [8,1079] reduction11758.output := by lin_cert using reduction11758.terms
def image11759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11759 : InImage map_29_212 image11759 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11759 : Bundle := named_bundle% "RealMapCertificates/relations/basis11759.json"
theorem reductionProof11759 : EqualModuloRelations reduction11759.relations reduction11759.input reduction11759.output := by lin_cert using reduction11759.terms
theorem substitutionProof11759 : IsMapEvaluation generatorImages reduction11759.relations [8,9,13,13,294] reduction11759.output := by lin_cert using reduction11759.terms
def image11760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11760 : InImage map_29_212 image11760 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11760 : Bundle := named_bundle% "RealMapCertificates/relations/basis11760.json"
theorem reductionProof11760 : EqualModuloRelations reduction11760.relations reduction11760.input reduction11760.output := by lin_cert using reduction11760.terms
theorem substitutionProof11760 : IsMapEvaluation generatorImages reduction11760.relations [8,8,834] reduction11760.output := by lin_cert using reduction11760.terms
def image11761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11761 : InImage map_29_212 image11761 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11761 : Bundle := named_bundle% "RealMapCertificates/relations/basis11761.json"
theorem reductionProof11761 : EqualModuloRelations reduction11761.relations reduction11761.input reduction11761.output := by lin_cert using reduction11761.terms
theorem substitutionProof11761 : IsMapEvaluation generatorImages reduction11761.relations [1,1368] reduction11761.output := by lin_cert using reduction11761.terms
def map_29_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12004 : InImage map_29_213 image12004 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12004 : Bundle := named_bundle% "RealMapCertificates/relations/basis12004.json"
theorem reductionProof12004 : EqualModuloRelations reduction12004.relations reduction12004.input reduction12004.output := by lin_cert using reduction12004.terms
theorem substitutionProof12004 : IsMapEvaluation generatorImages reduction12004.relations [13,13,13,472] reduction12004.output := by lin_cert using reduction12004.terms
def image12005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12005 : InImage map_29_213 image12005 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12005 : Bundle := named_bundle% "RealMapCertificates/relations/basis12005.json"
theorem reductionProof12005 : EqualModuloRelations reduction12005.relations reduction12005.input reduction12005.output := by lin_cert using reduction12005.terms
theorem substitutionProof12005 : IsMapEvaluation generatorImages reduction12005.relations [8,8,80,212] reduction12005.output := by lin_cert using reduction12005.terms
def image12006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12006 : InImage map_29_213 image12006 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12006 : Bundle := named_bundle% "RealMapCertificates/relations/basis12006.json"
theorem reductionProof12006 : EqualModuloRelations reduction12006.relations reduction12006.input reduction12006.output := by lin_cert using reduction12006.terms
theorem substitutionProof12006 : IsMapEvaluation generatorImages reduction12006.relations [1,123,324] reduction12006.output := by lin_cert using reduction12006.terms
def image12007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12007 : InImage map_29_213 image12007 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12007 : Bundle := named_bundle% "RealMapCertificates/relations/basis12007.json"
theorem reductionProof12007 : EqualModuloRelations reduction12007.relations reduction12007.input reduction12007.output := by lin_cert using reduction12007.terms
theorem substitutionProof12007 : IsMapEvaluation generatorImages reduction12007.relations [0,1403] reduction12007.output := by lin_cert using reduction12007.terms
def map_29_214 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12165 : InImage map_29_214 image12165 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12165 : Bundle := named_bundle% "RealMapCertificates/relations/basis12165.json"
theorem reductionProof12165 : EqualModuloRelations reduction12165.relations reduction12165.input reduction12165.output := by lin_cert using reduction12165.terms
theorem substitutionProof12165 : IsMapEvaluation generatorImages reduction12165.relations [149,280] reduction12165.output := by lin_cert using reduction12165.terms
def image12166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12166 : InImage map_29_214 image12166 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12166 : Bundle := named_bundle% "RealMapCertificates/relations/basis12166.json"
theorem reductionProof12166 : EqualModuloRelations reduction12166.relations reduction12166.input reduction12166.output := by lin_cert using reduction12166.terms
theorem substitutionProof12166 : IsMapEvaluation generatorImages reduction12166.relations [0,0,1404] reduction12166.output := by lin_cert using reduction12166.terms
def map_29_215 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12358 : InImage map_29_215 image12358 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12358 : Bundle := named_bundle% "RealMapCertificates/relations/basis12358.json"
theorem reductionProof12358 : EqualModuloRelations reduction12358.relations reduction12358.input reduction12358.output := by lin_cert using reduction12358.terms
theorem substitutionProof12358 : IsMapEvaluation generatorImages reduction12358.relations [9,1079] reduction12358.output := by lin_cert using reduction12358.terms
def image12359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12359 : InImage map_29_215 image12359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12359 : Bundle := named_bundle% "RealMapCertificates/relations/basis12359.json"
theorem reductionProof12359 : EqualModuloRelations reduction12359.relations reduction12359.input reduction12359.output := by lin_cert using reduction12359.terms
theorem substitutionProof12359 : IsMapEvaluation generatorImages reduction12359.relations [8,13,13,13,294] reduction12359.output := by lin_cert using reduction12359.terms
def image12360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12360 : InImage map_29_215 image12360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12360 : Bundle := named_bundle% "RealMapCertificates/relations/basis12360.json"
theorem reductionProof12360 : EqualModuloRelations reduction12360.relations reduction12360.input reduction12360.output := by lin_cert using reduction12360.terms
theorem substitutionProof12360 : IsMapEvaluation generatorImages reduction12360.relations [8,8,878] reduction12360.output := by lin_cert using reduction12360.terms
def image12361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12361 : InImage map_29_215 image12361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12361 : Bundle := named_bundle% "RealMapCertificates/relations/basis12361.json"
theorem reductionProof12361 : EqualModuloRelations reduction12361.relations reduction12361.input reduction12361.output := by lin_cert using reduction12361.terms
theorem substitutionProof12361 : IsMapEvaluation generatorImages reduction12361.relations [0,1441] reduction12361.output := by lin_cert using reduction12361.terms
def map_29_216 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12567 : InImage map_29_216 image12567 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12567 : Bundle := named_bundle% "RealMapCertificates/relations/basis12567.json"
theorem reductionProof12567 : EqualModuloRelations reduction12567.relations reduction12567.input reduction12567.output := by lin_cert using reduction12567.terms
theorem substitutionProof12567 : IsMapEvaluation generatorImages reduction12567.relations [1483] reduction12567.output := by lin_cert using reduction12567.terms
def image12568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12568 : InImage map_29_216 image12568 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12568 : Bundle := named_bundle% "RealMapCertificates/relations/basis12568.json"
theorem reductionProof12568 : EqualModuloRelations reduction12568.relations reduction12568.input reduction12568.output := by lin_cert using reduction12568.terms
theorem substitutionProof12568 : IsMapEvaluation generatorImages reduction12568.relations [13,13,13,13,268] reduction12568.output := by lin_cert using reduction12568.terms
def image12569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12569 : InImage map_29_216 image12569 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12569 : Bundle := named_bundle% "RealMapCertificates/relations/basis12569.json"
theorem reductionProof12569 : EqualModuloRelations reduction12569.relations reduction12569.input reduction12569.output := by lin_cert using reduction12569.terms
theorem substitutionProof12569 : IsMapEvaluation generatorImages reduction12569.relations [8,9,80,212] reduction12569.output := by lin_cert using reduction12569.terms
def image12570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12570 : InImage map_29_216 image12570 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12570 : Bundle := named_bundle% "RealMapCertificates/relations/basis12570.json"
theorem reductionProof12570 : EqualModuloRelations reduction12570.relations reduction12570.input reduction12570.output := by lin_cert using reduction12570.terms
theorem substitutionProof12570 : IsMapEvaluation generatorImages reduction12570.relations [1,1441] reduction12570.output := by lin_cert using reduction12570.terms
def map_29_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12730 : InImage map_29_217 image12730 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12730 : Bundle := named_bundle% "RealMapCertificates/relations/basis12730.json"
theorem reductionProof12730 : EqualModuloRelations reduction12730.relations reduction12730.input reduction12730.output := by lin_cert using reduction12730.terms
theorem substitutionProof12730 : IsMapEvaluation generatorImages reduction12730.relations [8,1169] reduction12730.output := by lin_cert using reduction12730.terms
def image12731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12731 : InImage map_29_217 image12731 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12731 : Bundle := named_bundle% "RealMapCertificates/relations/basis12731.json"
theorem reductionProof12731 : EqualModuloRelations reduction12731.relations reduction12731.input reduction12731.output := by lin_cert using reduction12731.terms
theorem substitutionProof12731 : IsMapEvaluation generatorImages reduction12731.relations [0,1484] reduction12731.output := by lin_cert using reduction12731.terms
def map_29_218 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image12916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12916 : InImage map_29_218 image12916 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction12916 : Bundle := named_bundle% "RealMapCertificates/relations/basis12916.json"
theorem reductionProof12916 : EqualModuloRelations reduction12916.relations reduction12916.input reduction12916.output := by lin_cert using reduction12916.terms
theorem substitutionProof12916 : IsMapEvaluation generatorImages reduction12916.relations [145,324] reduction12916.output := by lin_cert using reduction12916.terms
def image12917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12917 : InImage map_29_218 image12917 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction12917 : Bundle := named_bundle% "RealMapCertificates/relations/basis12917.json"
theorem reductionProof12917 : EqualModuloRelations reduction12917.relations reduction12917.input reduction12917.output := by lin_cert using reduction12917.terms
theorem substitutionProof12917 : IsMapEvaluation generatorImages reduction12917.relations [13,1079] reduction12917.output := by lin_cert using reduction12917.terms
def image12918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12918 : InImage map_29_218 image12918 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction12918 : Bundle := named_bundle% "RealMapCertificates/relations/basis12918.json"
theorem reductionProof12918 : EqualModuloRelations reduction12918.relations reduction12918.input reduction12918.output := by lin_cert using reduction12918.terms
theorem substitutionProof12918 : IsMapEvaluation generatorImages reduction12918.relations [9,1122] reduction12918.output := by lin_cert using reduction12918.terms
def image12919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12919 : InImage map_29_218 image12919 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction12919 : Bundle := named_bundle% "RealMapCertificates/relations/basis12919.json"
theorem reductionProof12919 : EqualModuloRelations reduction12919.relations reduction12919.input reduction12919.output := by lin_cert using reduction12919.terms
theorem substitutionProof12919 : IsMapEvaluation generatorImages reduction12919.relations [9,13,13,13,294] reduction12919.output := by lin_cert using reduction12919.terms
def image12920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12920 : InImage map_29_218 image12920 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction12920 : Bundle := named_bundle% "RealMapCertificates/relations/basis12920.json"
theorem reductionProof12920 : EqualModuloRelations reduction12920.relations reduction12920.input reduction12920.output := by lin_cert using reduction12920.terms
theorem substitutionProof12920 : IsMapEvaluation generatorImages reduction12920.relations [8,8,8,692] reduction12920.output := by lin_cert using reduction12920.terms
def image12921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12921 : InImage map_29_218 image12921 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction12921 : Bundle := named_bundle% "RealMapCertificates/relations/basis12921.json"
theorem reductionProof12921 : EqualModuloRelations reduction12921.relations reduction12921.input reduction12921.output := by lin_cert using reduction12921.terms
theorem substitutionProof12921 : IsMapEvaluation generatorImages reduction12921.relations [3,1368] reduction12921.output := by lin_cert using reduction12921.terms
def image12922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12922 : InImage map_29_218 image12922 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction12922 : Bundle := named_bundle% "RealMapCertificates/relations/basis12922.json"
theorem reductionProof12922 : EqualModuloRelations reduction12922.relations reduction12922.input reduction12922.output := by lin_cert using reduction12922.terms
theorem substitutionProof12922 : IsMapEvaluation generatorImages reduction12922.relations [1,1484] reduction12922.output := by lin_cert using reduction12922.terms
def image12923 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12923 : InImage map_29_218 image12923 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction12923 : Bundle := named_bundle% "RealMapCertificates/relations/basis12923.json"
theorem reductionProof12923 : EqualModuloRelations reduction12923.relations reduction12923.input reduction12923.output := by lin_cert using reduction12923.terms
theorem substitutionProof12923 : IsMapEvaluation generatorImages reduction12923.relations [0,1504] reduction12923.output := by lin_cert using reduction12923.terms
def map_29_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13155 : InImage map_29_219 image13155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13155 : Bundle := named_bundle% "RealMapCertificates/relations/basis13155.json"
theorem reductionProof13155 : EqualModuloRelations reduction13155.relations reduction13155.input reduction13155.output := by lin_cert using reduction13155.terms
theorem substitutionProof13155 : IsMapEvaluation generatorImages reduction13155.relations [13,13,13,13,287] reduction13155.output := by lin_cert using reduction13155.terms
def image13156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13156 : InImage map_29_219 image13156 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13156 : Bundle := named_bundle% "RealMapCertificates/relations/basis13156.json"
theorem reductionProof13156 : EqualModuloRelations reduction13156.relations reduction13156.input reduction13156.output := by lin_cert using reduction13156.terms
theorem substitutionProof13156 : IsMapEvaluation generatorImages reduction13156.relations [8,13,80,212] reduction13156.output := by lin_cert using reduction13156.terms
def image13157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13157 : InImage map_29_219 image13157 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13157 : Bundle := named_bundle% "RealMapCertificates/relations/basis13157.json"
theorem reductionProof13157 : EqualModuloRelations reduction13157.relations reduction13157.input reduction13157.output := by lin_cert using reduction13157.terms
theorem substitutionProof13157 : IsMapEvaluation generatorImages reduction13157.relations [0,1517] reduction13157.output := by lin_cert using reduction13157.terms
def image13158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13158 : InImage map_29_219 image13158 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13158 : Bundle := named_bundle% "RealMapCertificates/relations/basis13158.json"
theorem reductionProof13158 : EqualModuloRelations reduction13158.relations reduction13158.input reduction13158.output := by lin_cert using reduction13158.terms
theorem substitutionProof13158 : IsMapEvaluation generatorImages reduction13158.relations [0,1516] reduction13158.output := by lin_cert using reduction13158.terms
def map_29_220 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13291 : InImage map_29_220 image13291 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13291 : Bundle := named_bundle% "RealMapCertificates/relations/basis13291.json"
theorem reductionProof13291 : EqualModuloRelations reduction13291.relations reduction13291.input reduction13291.output := by lin_cert using reduction13291.terms
theorem substitutionProof13291 : IsMapEvaluation generatorImages reduction13291.relations [8,1221] reduction13291.output := by lin_cert using reduction13291.terms
def image13292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13292 : InImage map_29_220 image13292 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13292 : Bundle := named_bundle% "RealMapCertificates/relations/basis13292.json"
theorem reductionProof13292 : EqualModuloRelations reduction13292.relations reduction13292.input reduction13292.output := by lin_cert using reduction13292.terms
theorem substitutionProof13292 : IsMapEvaluation generatorImages reduction13292.relations [2,1484] reduction13292.output := by lin_cert using reduction13292.terms
def map_29_221 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13486 : InImage map_29_221 image13486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13486 : Bundle := named_bundle% "RealMapCertificates/relations/basis13486.json"
theorem reductionProof13486 : EqualModuloRelations reduction13486.relations reduction13486.input reduction13486.output := by lin_cert using reduction13486.terms
theorem substitutionProof13486 : IsMapEvaluation generatorImages reduction13486.relations [188,260] reduction13486.output := by lin_cert using reduction13486.terms
def image13487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13487 : InImage map_29_221 image13487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13487 : Bundle := named_bundle% "RealMapCertificates/relations/basis13487.json"
theorem reductionProof13487 : EqualModuloRelations reduction13487.relations reduction13487.input reduction13487.output := by lin_cert using reduction13487.terms
theorem substitutionProof13487 : IsMapEvaluation generatorImages reduction13487.relations [152,324] reduction13487.output := by lin_cert using reduction13487.terms
def image13488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13488 : InImage map_29_221 image13488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13488 : Bundle := named_bundle% "RealMapCertificates/relations/basis13488.json"
theorem reductionProof13488 : EqualModuloRelations reduction13488.relations reduction13488.input reduction13488.output := by lin_cert using reduction13488.terms
theorem substitutionProof13488 : IsMapEvaluation generatorImages reduction13488.relations [13,1122] reduction13488.output := by lin_cert using reduction13488.terms
def image13489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13489 : InImage map_29_221 image13489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13489 : Bundle := named_bundle% "RealMapCertificates/relations/basis13489.json"
theorem reductionProof13489 : EqualModuloRelations reduction13489.relations reduction13489.input reduction13489.output := by lin_cert using reduction13489.terms
theorem substitutionProof13489 : IsMapEvaluation generatorImages reduction13489.relations [13,13,13,13,294] reduction13489.output := by lin_cert using reduction13489.terms
def image13490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13490 : InImage map_29_221 image13490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13490 : Bundle := named_bundle% "RealMapCertificates/relations/basis13490.json"
theorem reductionProof13490 : EqualModuloRelations reduction13490.relations reduction13490.input reduction13490.output := by lin_cert using reduction13490.terms
theorem substitutionProof13490 : IsMapEvaluation generatorImages reduction13490.relations [8,8,9,692] reduction13490.output := by lin_cert using reduction13490.terms
def image13491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13491 : InImage map_29_221 image13491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13491 : Bundle := named_bundle% "RealMapCertificates/relations/basis13491.json"
theorem reductionProof13491 : EqualModuloRelations reduction13491.relations reduction13491.input reduction13491.output := by lin_cert using reduction13491.terms
theorem substitutionProof13491 : IsMapEvaluation generatorImages reduction13491.relations [0,1554] reduction13491.output := by lin_cert using reduction13491.terms
def map_29_222 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13714 : InImage map_29_222 image13714 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13714 : Bundle := named_bundle% "RealMapCertificates/relations/basis13714.json"
theorem reductionProof13714 : EqualModuloRelations reduction13714.relations reduction13714.input reduction13714.output := by lin_cert using reduction13714.terms
theorem substitutionProof13714 : IsMapEvaluation generatorImages reduction13714.relations [1596] reduction13714.output := by lin_cert using reduction13714.terms
def image13715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13715 : InImage map_29_222 image13715 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13715 : Bundle := named_bundle% "RealMapCertificates/relations/basis13715.json"
theorem reductionProof13715 : EqualModuloRelations reduction13715.relations reduction13715.input reduction13715.output := by lin_cert using reduction13715.terms
theorem substitutionProof13715 : IsMapEvaluation generatorImages reduction13715.relations [64,638] reduction13715.output := by lin_cert using reduction13715.terms
def image13716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13716 : InImage map_29_222 image13716 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13716 : Bundle := named_bundle% "RealMapCertificates/relations/basis13716.json"
theorem reductionProof13716 : EqualModuloRelations reduction13716.relations reduction13716.input reduction13716.output := by lin_cert using reduction13716.terms
theorem substitutionProof13716 : IsMapEvaluation generatorImages reduction13716.relations [9,13,80,212] reduction13716.output := by lin_cert using reduction13716.terms
def image13717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13717 : InImage map_29_222 image13717 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13717 : Bundle := named_bundle% "RealMapCertificates/relations/basis13717.json"
theorem reductionProof13717 : EqualModuloRelations reduction13717.relations reduction13717.input reduction13717.output := by lin_cert using reduction13717.terms
theorem substitutionProof13717 : IsMapEvaluation generatorImages reduction13717.relations [1,1554] reduction13717.output := by lin_cert using reduction13717.terms
def image13718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13718 : InImage map_29_222 image13718 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13718 : Bundle := named_bundle% "RealMapCertificates/relations/basis13718.json"
theorem reductionProof13718 : EqualModuloRelations reduction13718.relations reduction13718.input reduction13718.output := by lin_cert using reduction13718.terms
theorem substitutionProof13718 : IsMapEvaluation generatorImages reduction13718.relations [0,153,324] reduction13718.output := by lin_cert using reduction13718.terms
def image13719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13719 : InImage map_29_222 image13719 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13719 : Bundle := named_bundle% "RealMapCertificates/relations/basis13719.json"
theorem reductionProof13719 : EqualModuloRelations reduction13719.relations reduction13719.input reduction13719.output := by lin_cert using reduction13719.terms
theorem substitutionProof13719 : IsMapEvaluation generatorImages reduction13719.relations [0,0,0,1539] reduction13719.output := by lin_cert using reduction13719.terms
def map_29_223 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13867 : InImage map_29_223 image13867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13867 : Bundle := named_bundle% "RealMapCertificates/relations/basis13867.json"
theorem reductionProof13867 : EqualModuloRelations reduction13867.relations reduction13867.input reduction13867.output := by lin_cert using reduction13867.terms
theorem substitutionProof13867 : IsMapEvaluation generatorImages reduction13867.relations [8,167,209] reduction13867.output := by lin_cert using reduction13867.terms
def image13868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13868 : InImage map_29_223 image13868 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13868 : Bundle := named_bundle% "RealMapCertificates/relations/basis13868.json"
theorem reductionProof13868 : EqualModuloRelations reduction13868.relations reduction13868.input reduction13868.output := by lin_cert using reduction13868.terms
theorem substitutionProof13868 : IsMapEvaluation generatorImages reduction13868.relations [0,1597] reduction13868.output := by lin_cert using reduction13868.terms
def image13869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13869 : InImage map_29_223 image13869 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13869 : Bundle := named_bundle% "RealMapCertificates/relations/basis13869.json"
theorem reductionProof13869 : EqualModuloRelations reduction13869.relations reduction13869.input reduction13869.output := by lin_cert using reduction13869.terms
theorem substitutionProof13869 : IsMapEvaluation generatorImages reduction13869.relations [0,0,1571] reduction13869.output := by lin_cert using reduction13869.terms
def map_29_224 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image14046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14046 : InImage map_29_224 image14046 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14046 : Bundle := named_bundle% "RealMapCertificates/relations/basis14046.json"
theorem reductionProof14046 : EqualModuloRelations reduction14046.relations reduction14046.input reduction14046.output := by lin_cert using reduction14046.terms
theorem substitutionProof14046 : IsMapEvaluation generatorImages reduction14046.relations [188,278] reduction14046.output := by lin_cert using reduction14046.terms
def image14047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14047 : InImage map_29_224 image14047 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14047 : Bundle := named_bundle% "RealMapCertificates/relations/basis14047.json"
theorem reductionProof14047 : EqualModuloRelations reduction14047.relations reduction14047.input reduction14047.output := by lin_cert using reduction14047.terms
theorem substitutionProof14047 : IsMapEvaluation generatorImages reduction14047.relations [13,13,833] reduction14047.output := by lin_cert using reduction14047.terms
def image14048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14048 : InImage map_29_224 image14048 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14048 : Bundle := named_bundle% "RealMapCertificates/relations/basis14048.json"
theorem reductionProof14048 : EqualModuloRelations reduction14048.relations reduction14048.input reduction14048.output := by lin_cert using reduction14048.terms
theorem substitutionProof14048 : IsMapEvaluation generatorImages reduction14048.relations [8,8,13,692] reduction14048.output := by lin_cert using reduction14048.terms
def image14049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14049 : InImage map_29_224 image14049 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14049 : Bundle := named_bundle% "RealMapCertificates/relations/basis14049.json"
theorem reductionProof14049 : EqualModuloRelations reduction14049.relations reduction14049.input reduction14049.output := by lin_cert using reduction14049.terms
theorem substitutionProof14049 : IsMapEvaluation generatorImages reduction14049.relations [3,1484] reduction14049.output := by lin_cert using reduction14049.terms
def image14050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14050 : InImage map_29_224 image14050 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14050 : Bundle := named_bundle% "RealMapCertificates/relations/basis14050.json"
theorem reductionProof14050 : EqualModuloRelations reduction14050.relations reduction14050.input reduction14050.output := by lin_cert using reduction14050.terms
theorem substitutionProof14050 : IsMapEvaluation generatorImages reduction14050.relations [2,1554] reduction14050.output := by lin_cert using reduction14050.terms
def image14051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14051 : InImage map_29_224 image14051 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14051 : Bundle := named_bundle% "RealMapCertificates/relations/basis14051.json"
theorem reductionProof14051 : EqualModuloRelations reduction14051.relations reduction14051.input reduction14051.output := by lin_cert using reduction14051.terms
theorem substitutionProof14051 : IsMapEvaluation generatorImages reduction14051.relations [0,0,3,1442] reduction14051.output := by lin_cert using reduction14051.terms
def image14052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14052 : InImage map_29_224 image14052 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14052 : Bundle := named_bundle% "RealMapCertificates/relations/basis14052.json"
theorem reductionProof14052 : EqualModuloRelations reduction14052.relations reduction14052.input reduction14052.output := by lin_cert using reduction14052.terms
theorem substitutionProof14052 : IsMapEvaluation generatorImages reduction14052.relations [0,0,0,1572] reduction14052.output := by lin_cert using reduction14052.terms
def map_29_225 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14282 : InImage map_29_225 image14282 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14282 : Bundle := named_bundle% "RealMapCertificates/relations/basis14282.json"
theorem reductionProof14282 : EqualModuloRelations reduction14282.relations reduction14282.input reduction14282.output := by lin_cert using reduction14282.terms
theorem substitutionProof14282 : IsMapEvaluation generatorImages reduction14282.relations [1640] reduction14282.output := by lin_cert using reduction14282.terms
def image14283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14283 : InImage map_29_225 image14283 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14283 : Bundle := named_bundle% "RealMapCertificates/relations/basis14283.json"
theorem reductionProof14283 : EqualModuloRelations reduction14283.relations reduction14283.input reduction14283.output := by lin_cert using reduction14283.terms
theorem substitutionProof14283 : IsMapEvaluation generatorImages reduction14283.relations [64,668] reduction14283.output := by lin_cert using reduction14283.terms
def image14284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14284 : InImage map_29_225 image14284 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14284 : Bundle := named_bundle% "RealMapCertificates/relations/basis14284.json"
theorem reductionProof14284 : EqualModuloRelations reduction14284.relations reduction14284.input reduction14284.output := by lin_cert using reduction14284.terms
theorem substitutionProof14284 : IsMapEvaluation generatorImages reduction14284.relations [13,13,80,212] reduction14284.output := by lin_cert using reduction14284.terms
def image14285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14285 : InImage map_29_225 image14285 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14285 : Bundle := named_bundle% "RealMapCertificates/relations/basis14285.json"
theorem reductionProof14285 : EqualModuloRelations reduction14285.relations reduction14285.input reduction14285.output := by lin_cert using reduction14285.terms
theorem substitutionProof14285 : IsMapEvaluation generatorImages reduction14285.relations [0,8,111,324] reduction14285.output := by lin_cert using reduction14285.terms
def image14286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14286 : InImage map_29_225 image14286 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14286 : Bundle := named_bundle% "RealMapCertificates/relations/basis14286.json"
theorem reductionProof14286 : EqualModuloRelations reduction14286.relations reduction14286.input reduction14286.output := by lin_cert using reduction14286.terms
theorem substitutionProof14286 : IsMapEvaluation generatorImages reduction14286.relations [0,0,0,1598] reduction14286.output := by lin_cert using reduction14286.terms
def map_29_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14415 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14415 : InImage map_29_226 image14415 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14415 : Bundle := named_bundle% "RealMapCertificates/relations/basis14415.json"
theorem reductionProof14415 : EqualModuloRelations reduction14415.relations reduction14415.input reduction14415.output := by lin_cert using reduction14415.terms
theorem substitutionProof14415 : IsMapEvaluation generatorImages reduction14415.relations [9,167,209] reduction14415.output := by lin_cert using reduction14415.terms
def image14416 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14416 : InImage map_29_226 image14416 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14416 : Bundle := named_bundle% "RealMapCertificates/relations/basis14416.json"
theorem reductionProof14416 : EqualModuloRelations reduction14416.relations reduction14416.input reduction14416.output := by lin_cert using reduction14416.terms
theorem substitutionProof14416 : IsMapEvaluation generatorImages reduction14416.relations [0,0,43,832] reduction14416.output := by lin_cert using reduction14416.terms
def map_29_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14616 : InImage map_29_227 image14616 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14616 : Bundle := named_bundle% "RealMapCertificates/relations/basis14616.json"
theorem reductionProof14616 : EqualModuloRelations reduction14616.relations reduction14616.input reduction14616.output := by lin_cert using reduction14616.terms
theorem substitutionProof14616 : IsMapEvaluation generatorImages reduction14616.relations [80,627] reduction14616.output := by lin_cert using reduction14616.terms
def image14617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14617 : InImage map_29_227 image14617 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14617 : Bundle := named_bundle% "RealMapCertificates/relations/basis14617.json"
theorem reductionProof14617 : EqualModuloRelations reduction14617.relations reduction14617.input reduction14617.output := by lin_cert using reduction14617.terms
theorem substitutionProof14617 : IsMapEvaluation generatorImages reduction14617.relations [13,13,877] reduction14617.output := by lin_cert using reduction14617.terms
def image14618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14618 : InImage map_29_227 image14618 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14618 : Bundle := named_bundle% "RealMapCertificates/relations/basis14618.json"
theorem reductionProof14618 : EqualModuloRelations reduction14618.relations reduction14618.input reduction14618.output := by lin_cert using reduction14618.terms
theorem substitutionProof14618 : IsMapEvaluation generatorImages reduction14618.relations [13,13,13,13,67,75] reduction14618.output := by lin_cert using reduction14618.terms
def image14619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14619 : InImage map_29_227 image14619 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14619 : Bundle := named_bundle% "RealMapCertificates/relations/basis14619.json"
theorem reductionProof14619 : EqualModuloRelations reduction14619.relations reduction14619.input reduction14619.output := by lin_cert using reduction14619.terms
theorem substitutionProof14619 : IsMapEvaluation generatorImages reduction14619.relations [8,116,324] reduction14619.output := by lin_cert using reduction14619.terms
def image14620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14620 : InImage map_29_227 image14620 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14620 : Bundle := named_bundle% "RealMapCertificates/relations/basis14620.json"
theorem reductionProof14620 : EqualModuloRelations reduction14620.relations reduction14620.input reduction14620.output := by lin_cert using reduction14620.terms
theorem substitutionProof14620 : IsMapEvaluation generatorImages reduction14620.relations [8,9,13,692] reduction14620.output := by lin_cert using reduction14620.terms
def image14621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14621 : InImage map_29_227 image14621 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14621 : Bundle := named_bundle% "RealMapCertificates/relations/basis14621.json"
theorem reductionProof14621 : EqualModuloRelations reduction14621.relations reduction14621.input reduction14621.output := by lin_cert using reduction14621.terms
theorem substitutionProof14621 : IsMapEvaluation generatorImages reduction14621.relations [0,209,260] reduction14621.output := by lin_cert using reduction14621.terms
def map_29_228 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14850 : InImage map_29_228 image14850 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14850 : Bundle := named_bundle% "RealMapCertificates/relations/basis14850.json"
theorem reductionProof14850 : EqualModuloRelations reduction14850.relations reduction14850.input reduction14850.output := by lin_cert using reduction14850.terms
theorem substitutionProof14850 : IsMapEvaluation generatorImages reduction14850.relations [64,706] reduction14850.output := by lin_cert using reduction14850.terms
def image14851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14851 : InImage map_29_228 image14851 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14851 : Bundle := named_bundle% "RealMapCertificates/relations/basis14851.json"
theorem reductionProof14851 : EqualModuloRelations reduction14851.relations reduction14851.input reduction14851.output := by lin_cert using reduction14851.terms
theorem substitutionProof14851 : IsMapEvaluation generatorImages reduction14851.relations [13,13,13,13,13,213] reduction14851.output := by lin_cert using reduction14851.terms
def image14852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14852 : InImage map_29_228 image14852 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14852 : Bundle := named_bundle% "RealMapCertificates/relations/basis14852.json"
theorem reductionProof14852 : EqualModuloRelations reduction14852.relations reduction14852.input reduction14852.output := by lin_cert using reduction14852.terms
theorem substitutionProof14852 : IsMapEvaluation generatorImages reduction14852.relations [8,1369] reduction14852.output := by lin_cert using reduction14852.terms
def image14853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14853 : InImage map_29_228 image14853 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14853 : Bundle := named_bundle% "RealMapCertificates/relations/basis14853.json"
theorem reductionProof14853 : EqualModuloRelations reduction14853.relations reduction14853.input reduction14853.output := by lin_cert using reduction14853.terms
theorem substitutionProof14853 : IsMapEvaluation generatorImages reduction14853.relations [1,209,260] reduction14853.output := by lin_cert using reduction14853.terms
def image14854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14854 : InImage map_29_228 image14854 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14854 : Bundle := named_bundle% "RealMapCertificates/relations/basis14854.json"
theorem reductionProof14854 : EqualModuloRelations reduction14854.relations reduction14854.input reduction14854.output := by lin_cert using reduction14854.terms
theorem substitutionProof14854 : IsMapEvaluation generatorImages reduction14854.relations [0,8,117,324] reduction14854.output := by lin_cert using reduction14854.terms
def image14855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14855 : InImage map_29_228 image14855 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14855 : Bundle := named_bundle% "RealMapCertificates/relations/basis14855.json"
theorem reductionProof14855 : EqualModuloRelations reduction14855.relations reduction14855.input reduction14855.output := by lin_cert using reduction14855.terms
theorem substitutionProof14855 : IsMapEvaluation generatorImages reduction14855.relations [0,0,1652] reduction14855.output := by lin_cert using reduction14855.terms
def map_29_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15015 : InImage map_29_229 image15015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15015 : Bundle := named_bundle% "RealMapCertificates/relations/basis15015.json"
theorem reductionProof15015 : EqualModuloRelations reduction15015.relations reduction15015.input reduction15015.output := by lin_cert using reduction15015.terms
theorem substitutionProof15015 : IsMapEvaluation generatorImages reduction15015.relations [13,167,209] reduction15015.output := by lin_cert using reduction15015.terms
def image15016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15016 : InImage map_29_229 image15016 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15016 : Bundle := named_bundle% "RealMapCertificates/relations/basis15016.json"
theorem reductionProof15016 : EqualModuloRelations reduction15016.relations reduction15016.input reduction15016.output := by lin_cert using reduction15016.terms
theorem substitutionProof15016 : IsMapEvaluation generatorImages reduction15016.relations [0,1690] reduction15016.output := by lin_cert using reduction15016.terms
def image15017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15017 : InImage map_29_229 image15017 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15017 : Bundle := named_bundle% "RealMapCertificates/relations/basis15017.json"
theorem reductionProof15017 : EqualModuloRelations reduction15017.relations reduction15017.input reduction15017.output := by lin_cert using reduction15017.terms
theorem substitutionProof15017 : IsMapEvaluation generatorImages reduction15017.relations [0,0,64,693] reduction15017.output := by lin_cert using reduction15017.terms
def image15018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15018 : InImage map_29_229 image15018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15018 : Bundle := named_bundle% "RealMapCertificates/relations/basis15018.json"
theorem reductionProof15018 : EqualModuloRelations reduction15018.relations reduction15018.input reduction15018.output := by lin_cert using reduction15018.terms
theorem substitutionProof15018 : IsMapEvaluation generatorImages reduction15018.relations [0,0,0,0,1641] reduction15018.output := by lin_cert using reduction15018.terms
def map_29_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15223 : InImage map_29_230 image15223 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15223 : Bundle := named_bundle% "RealMapCertificates/relations/basis15223.json"
theorem reductionProof15223 : EqualModuloRelations reduction15223.relations reduction15223.input reduction15223.output := by lin_cert using reduction15223.terms
theorem substitutionProof15223 : IsMapEvaluation generatorImages reduction15223.relations [80,655] reduction15223.output := by lin_cert using reduction15223.terms
def image15224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15224 : InImage map_29_230 image15224 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15224 : Bundle := named_bundle% "RealMapCertificates/relations/basis15224.json"
theorem reductionProof15224 : EqualModuloRelations reduction15224.relations reduction15224.input reduction15224.output := by lin_cert using reduction15224.terms
theorem substitutionProof15224 : IsMapEvaluation generatorImages reduction15224.relations [8,13,13,692] reduction15224.output := by lin_cert using reduction15224.terms
def image15225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15225 : InImage map_29_230 image15225 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15225 : Bundle := named_bundle% "RealMapCertificates/relations/basis15225.json"
theorem reductionProof15225 : EqualModuloRelations reduction15225.relations reduction15225.input reduction15225.output := by lin_cert using reduction15225.terms
theorem substitutionProof15225 : IsMapEvaluation generatorImages reduction15225.relations [3,1597] reduction15225.output := by lin_cert using reduction15225.terms
def image15226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15226 : InImage map_29_230 image15226 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15226 : Bundle := named_bundle% "RealMapCertificates/relations/basis15226.json"
theorem reductionProof15226 : EqualModuloRelations reduction15226.relations reduction15226.input reduction15226.output := by lin_cert using reduction15226.terms
theorem substitutionProof15226 : IsMapEvaluation generatorImages reduction15226.relations [1,1690] reduction15226.output := by lin_cert using reduction15226.terms
def image15227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15227 : InImage map_29_230 image15227 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15227 : Bundle := named_bundle% "RealMapCertificates/relations/basis15227.json"
theorem reductionProof15227 : EqualModuloRelations reduction15227.relations reduction15227.input reduction15227.output := by lin_cert using reduction15227.terms
theorem substitutionProof15227 : IsMapEvaluation generatorImages reduction15227.relations [0,0,0,0,1655] reduction15227.output := by lin_cert using reduction15227.terms
end RealMapCertificates
