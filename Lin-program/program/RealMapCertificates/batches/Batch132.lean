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
  | 24 => []
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 75 => []
  | 76 => []
  | 80 => []
  | 137 => []
  | 187 => []
  | 188 => []
  | 209 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 267 => []
  | 279 => []
  | 280 => []
  | 286 => []
  | 293 => []
  | 324 => []
  | 347 => []
  | 373 => []
  | 417 => []
  | 420 => []
  | 474 => []
  | 532 => []
  | 690 => []
  | 691 => []
  | 692 => []
  | 729 => []
  | 760 => []
  | 762 => []
  | 798 => []
  | 832 => []
  | 876 => []
  | 899 => []
  | 964 => []
  | 1050 => []
  | 1124 => []
  | 1148 => []
  | 1429 => []
  | 1443 => []
  | 1555 => []
  | 1556 => []
  | 1656 => []
  | 1690 => []
  | 1691 => []
  | 1755 => []
  | 1758 => []
  | 1759 => []
  | 1762 => []
  | 1776 => []
  | 1777 => []
  | 1779 => []
  | 1781 => []
  | 1815 => []
  | 1835 => []
  | 1862 => []
  | 1863 => []
  | 1903 => []
  | 1906 => []
  | 1908 => []
  | 1912 => []
  | 1934 => []
  | 1935 => []
  | 1938 => []
  | 1940 => []
  | 1969 => []
  | 1971 => []
  | 1997 => []
  | 1998 => []
  | 2041 => []
  | 2061 => []
  | 2062 => []
  | 2100 => []
  | 2129 => []
  | 2131 => []
  | 2136 => []
  | 2172 => []
  | 2203 => []
  | 2204 => []
  | 2209 => []
  | 2243 => []
  | 2277 => []
  | 2278 => []
  | 2279 => []
  | 2309 => []
  | 2311 => []
  | 2343 => []
  | _ => []
def map_29_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15474 : InImage map_29_231 image15474 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15474 : Bundle := named_bundle% "RealMapCertificates/relations/basis15474.json"
theorem reductionProof15474 : EqualModuloRelations reduction15474.relations reduction15474.input reduction15474.output := by lin_cert using reduction15474.terms
theorem substitutionProof15474 : IsMapEvaluation generatorImages reduction15474.relations [8,1429] reduction15474.output := by lin_cert using reduction15474.terms
def image15475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15475 : InImage map_29_231 image15475 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15475 : Bundle := named_bundle% "RealMapCertificates/relations/basis15475.json"
theorem reductionProof15475 : EqualModuloRelations reduction15475.relations reduction15475.input reduction15475.output := by lin_cert using reduction15475.terms
theorem substitutionProof15475 : IsMapEvaluation generatorImages reduction15475.relations [0,64,729] reduction15475.output := by lin_cert using reduction15475.terms
def image15476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15476 : InImage map_29_231 image15476 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15476 : Bundle := named_bundle% "RealMapCertificates/relations/basis15476.json"
theorem reductionProof15476 : EqualModuloRelations reduction15476.relations reduction15476.input reduction15476.output := by lin_cert using reduction15476.terms
theorem substitutionProof15476 : IsMapEvaluation generatorImages reduction15476.relations [0,8,16,50,324] reduction15476.output := by lin_cert using reduction15476.terms
def image15477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15477 : InImage map_29_231 image15477 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15477 : Bundle := named_bundle% "RealMapCertificates/relations/basis15477.json"
theorem reductionProof15477 : EqualModuloRelations reduction15477.relations reduction15477.input reduction15477.output := by lin_cert using reduction15477.terms
theorem substitutionProof15477 : IsMapEvaluation generatorImages reduction15477.relations [0,0,0,0,0,1656] reduction15477.output := by lin_cert using reduction15477.terms
def map_29_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15647 : InImage map_29_232 image15647 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15647 : Bundle := named_bundle% "RealMapCertificates/relations/basis15647.json"
theorem reductionProof15647 : EqualModuloRelations reduction15647.relations reduction15647.input reduction15647.output := by lin_cert using reduction15647.terms
theorem substitutionProof15647 : IsMapEvaluation generatorImages reduction15647.relations [1777] reduction15647.output := by lin_cert using reduction15647.terms
def image15648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15648 : InImage map_29_232 image15648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15648 : Bundle := named_bundle% "RealMapCertificates/relations/basis15648.json"
theorem reductionProof15648 : EqualModuloRelations reduction15648.relations reduction15648.input reduction15648.output := by lin_cert using reduction15648.terms
theorem substitutionProof15648 : IsMapEvaluation generatorImages reduction15648.relations [1776] reduction15648.output := by lin_cert using reduction15648.terms
def image15649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15649 : InImage map_29_232 image15649 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15649 : Bundle := named_bundle% "RealMapCertificates/relations/basis15649.json"
theorem reductionProof15649 : EqualModuloRelations reduction15649.relations reduction15649.input reduction15649.output := by lin_cert using reduction15649.terms
theorem substitutionProof15649 : IsMapEvaluation generatorImages reduction15649.relations [13,13,13,13,417] reduction15649.output := by lin_cert using reduction15649.terms
def map_29_233 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15875 : InImage map_29_233 image15875 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15875 : Bundle := named_bundle% "RealMapCertificates/relations/basis15875.json"
theorem reductionProof15875 : EqualModuloRelations reduction15875.relations reduction15875.input reduction15875.output := by lin_cert using reduction15875.terms
theorem substitutionProof15875 : IsMapEvaluation generatorImages reduction15875.relations [80,690] reduction15875.output := by lin_cert using reduction15875.terms
def image15876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15876 : InImage map_29_233 image15876 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15876 : Bundle := named_bundle% "RealMapCertificates/relations/basis15876.json"
theorem reductionProof15876 : EqualModuloRelations reduction15876.relations reduction15876.input reduction15876.output := by lin_cert using reduction15876.terms
theorem substitutionProof15876 : IsMapEvaluation generatorImages reduction15876.relations [64,760] reduction15876.output := by lin_cert using reduction15876.terms
def image15877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15877 : InImage map_29_233 image15877 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15877 : Bundle := named_bundle% "RealMapCertificates/relations/basis15877.json"
theorem reductionProof15877 : EqualModuloRelations reduction15877.relations reduction15877.input reduction15877.output := by lin_cert using reduction15877.terms
theorem substitutionProof15877 : IsMapEvaluation generatorImages reduction15877.relations [9,13,13,692] reduction15877.output := by lin_cert using reduction15877.terms
def image15878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15878 : InImage map_29_233 image15878 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15878 : Bundle := named_bundle% "RealMapCertificates/relations/basis15878.json"
theorem reductionProof15878 : EqualModuloRelations reduction15878.relations reduction15878.input reduction15878.output := by lin_cert using reduction15878.terms
theorem substitutionProof15878 : IsMapEvaluation generatorImages reduction15878.relations [1,1755] reduction15878.output := by lin_cert using reduction15878.terms
def map_29_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16123 : InImage map_29_234 image16123 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16123 : Bundle := named_bundle% "RealMapCertificates/relations/basis16123.json"
theorem reductionProof16123 : EqualModuloRelations reduction16123.relations reduction16123.input reduction16123.output := by lin_cert using reduction16123.terms
theorem substitutionProof16123 : IsMapEvaluation generatorImages reduction16123.relations [1835] reduction16123.output := by lin_cert using reduction16123.terms
def image16124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16124 : InImage map_29_234 image16124 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16124 : Bundle := named_bundle% "RealMapCertificates/relations/basis16124.json"
theorem reductionProof16124 : EqualModuloRelations reduction16124.relations reduction16124.input reduction16124.output := by lin_cert using reduction16124.terms
theorem substitutionProof16124 : IsMapEvaluation generatorImages reduction16124.relations [9,13,13,13,474] reduction16124.output := by lin_cert using reduction16124.terms
def image16125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16125 : InImage map_29_234 image16125 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16125 : Bundle := named_bundle% "RealMapCertificates/relations/basis16125.json"
theorem reductionProof16125 : EqualModuloRelations reduction16125.relations reduction16125.input reduction16125.output := by lin_cert using reduction16125.terms
theorem substitutionProof16125 : IsMapEvaluation generatorImages reduction16125.relations [8,8,1148] reduction16125.output := by lin_cert using reduction16125.terms
def image16126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16126 : InImage map_29_234 image16126 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16126 : Bundle := named_bundle% "RealMapCertificates/relations/basis16126.json"
theorem reductionProof16126 : EqualModuloRelations reduction16126.relations reduction16126.input reduction16126.output := by lin_cert using reduction16126.terms
theorem substitutionProof16126 : IsMapEvaluation generatorImages reduction16126.relations [0,0,0,1758] reduction16126.output := by lin_cert using reduction16126.terms
def map_29_235 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16313 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16313 : InImage map_29_235 image16313 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16313 : Bundle := named_bundle% "RealMapCertificates/relations/basis16313.json"
theorem reductionProof16313 : EqualModuloRelations reduction16313.relations reduction16313.input reduction16313.output := by lin_cert using reduction16313.terms
theorem substitutionProof16313 : IsMapEvaluation generatorImages reduction16313.relations [1863] reduction16313.output := by lin_cert using reduction16313.terms
def image16314 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16314 : InImage map_29_235 image16314 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16314 : Bundle := named_bundle% "RealMapCertificates/relations/basis16314.json"
theorem reductionProof16314 : EqualModuloRelations reduction16314.relations reduction16314.input reduction16314.output := by lin_cert using reduction16314.terms
theorem substitutionProof16314 : IsMapEvaluation generatorImages reduction16314.relations [1862] reduction16314.output := by lin_cert using reduction16314.terms
def image16315 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16315 : InImage map_29_235 image16315 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16315 : Bundle := named_bundle% "RealMapCertificates/relations/basis16315.json"
theorem reductionProof16315 : EqualModuloRelations reduction16315.relations reduction16315.input reduction16315.output := by lin_cert using reduction16315.terms
theorem substitutionProof16315 : IsMapEvaluation generatorImages reduction16315.relations [13,13,67,286] reduction16315.output := by lin_cert using reduction16315.terms
def image16316 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16316 : InImage map_29_235 image16316 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16316 : Bundle := named_bundle% "RealMapCertificates/relations/basis16316.json"
theorem reductionProof16316 : EqualModuloRelations reduction16316.relations reduction16316.input reduction16316.output := by lin_cert using reduction16316.terms
theorem substitutionProof16316 : IsMapEvaluation generatorImages reduction16316.relations [1,1815] reduction16316.output := by lin_cert using reduction16316.terms
def image16317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16317 : InImage map_29_235 image16317 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16317 : Bundle := named_bundle% "RealMapCertificates/relations/basis16317.json"
theorem reductionProof16317 : EqualModuloRelations reduction16317.relations reduction16317.input reduction16317.output := by lin_cert using reduction16317.terms
theorem substitutionProof16317 : IsMapEvaluation generatorImages reduction16317.relations [0,0,64,762] reduction16317.output := by lin_cert using reduction16317.terms
def image16318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16318 : InImage map_29_235 image16318 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16318 : Bundle := named_bundle% "RealMapCertificates/relations/basis16318.json"
theorem reductionProof16318 : EqualModuloRelations reduction16318.relations reduction16318.input reduction16318.output := by lin_cert using reduction16318.terms
theorem substitutionProof16318 : IsMapEvaluation generatorImages reduction16318.relations [0,0,0,0,1759] reduction16318.output := by lin_cert using reduction16318.terms
def map_29_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16554 : InImage map_29_236 image16554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16554 : Bundle := named_bundle% "RealMapCertificates/relations/basis16554.json"
theorem reductionProof16554 : EqualModuloRelations reduction16554.relations reduction16554.input reduction16554.output := by lin_cert using reduction16554.terms
theorem substitutionProof16554 : IsMapEvaluation generatorImages reduction16554.relations [64,798] reduction16554.output := by lin_cert using reduction16554.terms
def image16555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16555 : InImage map_29_236 image16555 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16555 : Bundle := named_bundle% "RealMapCertificates/relations/basis16555.json"
theorem reductionProof16555 : EqualModuloRelations reduction16555.relations reduction16555.input reduction16555.output := by lin_cert using reduction16555.terms
theorem substitutionProof16555 : IsMapEvaluation generatorImages reduction16555.relations [13,13,13,692] reduction16555.output := by lin_cert using reduction16555.terms
def image16556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16556 : InImage map_29_236 image16556 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16556 : Bundle := named_bundle% "RealMapCertificates/relations/basis16556.json"
theorem reductionProof16556 : EqualModuloRelations reduction16556.relations reduction16556.input reduction16556.output := by lin_cert using reduction16556.terms
theorem substitutionProof16556 : IsMapEvaluation generatorImages reduction16556.relations [13,13,13,691] reduction16556.output := by lin_cert using reduction16556.terms
def image16557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16557 : InImage map_29_236 image16557 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16557 : Bundle := named_bundle% "RealMapCertificates/relations/basis16557.json"
theorem reductionProof16557 : EqualModuloRelations reduction16557.relations reduction16557.input reduction16557.output := by lin_cert using reduction16557.terms
theorem substitutionProof16557 : IsMapEvaluation generatorImages reduction16557.relations [0,0,0,0,1781] reduction16557.output := by lin_cert using reduction16557.terms
def image16558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16558 : InImage map_29_236 image16558 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16558 : Bundle := named_bundle% "RealMapCertificates/relations/basis16558.json"
theorem reductionProof16558 : EqualModuloRelations reduction16558.relations reduction16558.input reduction16558.output := by lin_cert using reduction16558.terms
theorem substitutionProof16558 : IsMapEvaluation generatorImages reduction16558.relations [0,0,0,0,1779] reduction16558.output := by lin_cert using reduction16558.terms
def map_29_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16805 : InImage map_29_237 image16805 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16805 : Bundle := named_bundle% "RealMapCertificates/relations/basis16805.json"
theorem reductionProof16805 : EqualModuloRelations reduction16805.relations reduction16805.input reduction16805.output := by lin_cert using reduction16805.terms
theorem substitutionProof16805 : IsMapEvaluation generatorImages reduction16805.relations [1903] reduction16805.output := by lin_cert using reduction16805.terms
def image16806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16806 : InImage map_29_237 image16806 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16806 : Bundle := named_bundle% "RealMapCertificates/relations/basis16806.json"
theorem reductionProof16806 : EqualModuloRelations reduction16806.relations reduction16806.input reduction16806.output := by lin_cert using reduction16806.terms
theorem substitutionProof16806 : IsMapEvaluation generatorImages reduction16806.relations [13,13,13,13,474] reduction16806.output := by lin_cert using reduction16806.terms
def image16807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16807 : InImage map_29_237 image16807 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16807 : Bundle := named_bundle% "RealMapCertificates/relations/basis16807.json"
theorem reductionProof16807 : EqualModuloRelations reduction16807.relations reduction16807.input reduction16807.output := by lin_cert using reduction16807.terms
theorem substitutionProof16807 : IsMapEvaluation generatorImages reduction16807.relations [8,9,1148] reduction16807.output := by lin_cert using reduction16807.terms
def image16808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16808 : InImage map_29_237 image16808 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16808 : Bundle := named_bundle% "RealMapCertificates/relations/basis16808.json"
theorem reductionProof16808 : EqualModuloRelations reduction16808.relations reduction16808.input reduction16808.output := by lin_cert using reduction16808.terms
theorem substitutionProof16808 : IsMapEvaluation generatorImages reduction16808.relations [2,1815] reduction16808.output := by lin_cert using reduction16808.terms
def image16809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16809 : InImage map_29_237 image16809 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16809 : Bundle := named_bundle% "RealMapCertificates/relations/basis16809.json"
theorem reductionProof16809 : EqualModuloRelations reduction16809.relations reduction16809.input reduction16809.output := by lin_cert using reduction16809.terms
theorem substitutionProof16809 : IsMapEvaluation generatorImages reduction16809.relations [0,0,0,0,0,0,1762] reduction16809.output := by lin_cert using reduction16809.terms
def map_29_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16982 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16982 : InImage map_29_238 image16982 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16982 : Bundle := named_bundle% "RealMapCertificates/relations/basis16982.json"
theorem reductionProof16982 : EqualModuloRelations reduction16982.relations reduction16982.input reduction16982.output := by lin_cert using reduction16982.terms
theorem substitutionProof16982 : IsMapEvaluation generatorImages reduction16982.relations [1935] reduction16982.output := by lin_cert using reduction16982.terms
def image16983 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16983 : InImage map_29_238 image16983 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16983 : Bundle := named_bundle% "RealMapCertificates/relations/basis16983.json"
theorem reductionProof16983 : EqualModuloRelations reduction16983.relations reduction16983.input reduction16983.output := by lin_cert using reduction16983.terms
theorem substitutionProof16983 : IsMapEvaluation generatorImages reduction16983.relations [1934] reduction16983.output := by lin_cert using reduction16983.terms
def image16984 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16984 : InImage map_29_238 image16984 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16984 : Bundle := named_bundle% "RealMapCertificates/relations/basis16984.json"
theorem reductionProof16984 : EqualModuloRelations reduction16984.relations reduction16984.input reduction16984.output := by lin_cert using reduction16984.terms
theorem substitutionProof16984 : IsMapEvaluation generatorImages reduction16984.relations [9,13,13,75,188] reduction16984.output := by lin_cert using reduction16984.terms
def image16985 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16985 : InImage map_29_238 image16985 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16985 : Bundle := named_bundle% "RealMapCertificates/relations/basis16985.json"
theorem reductionProof16985 : EqualModuloRelations reduction16985.relations reduction16985.input reduction16985.output := by lin_cert using reduction16985.terms
theorem substitutionProof16985 : IsMapEvaluation generatorImages reduction16985.relations [8,1556] reduction16985.output := by lin_cert using reduction16985.terms
def map_29_239 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image17243 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17243 : InImage map_29_239 image17243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17243 : Bundle := named_bundle% "RealMapCertificates/relations/basis17243.json"
theorem reductionProof17243 : EqualModuloRelations reduction17243.relations reduction17243.input reduction17243.output := by lin_cert using reduction17243.terms
theorem substitutionProof17243 : IsMapEvaluation generatorImages reduction17243.relations [16,188,209] reduction17243.output := by lin_cert using reduction17243.terms
def image17244 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17244 : InImage map_29_239 image17244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17244 : Bundle := named_bundle% "RealMapCertificates/relations/basis17244.json"
theorem reductionProof17244 : EqualModuloRelations reduction17244.relations reduction17244.input reduction17244.output := by lin_cert using reduction17244.terms
theorem substitutionProof17244 : IsMapEvaluation generatorImages reduction17244.relations [0,209,347] reduction17244.output := by lin_cert using reduction17244.terms
def map_29_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17509 : InImage map_29_240 image17509 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17509 : Bundle := named_bundle% "RealMapCertificates/relations/basis17509.json"
theorem reductionProof17509 : EqualModuloRelations reduction17509.relations reduction17509.input reduction17509.output := by lin_cert using reduction17509.terms
theorem substitutionProof17509 : IsMapEvaluation generatorImages reduction17509.relations [1997] reduction17509.output := by lin_cert using reduction17509.terms
def image17510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17510 : InImage map_29_240 image17510 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17510 : Bundle := named_bundle% "RealMapCertificates/relations/basis17510.json"
theorem reductionProof17510 : EqualModuloRelations reduction17510.relations reduction17510.input reduction17510.output := by lin_cert using reduction17510.terms
theorem substitutionProof17510 : IsMapEvaluation generatorImages reduction17510.relations [68,832] reduction17510.output := by lin_cert using reduction17510.terms
def image17511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17511 : InImage map_29_240 image17511 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17511 : Bundle := named_bundle% "RealMapCertificates/relations/basis17511.json"
theorem reductionProof17511 : EqualModuloRelations reduction17511.relations reduction17511.input reduction17511.output := by lin_cert using reduction17511.terms
theorem substitutionProof17511 : IsMapEvaluation generatorImages reduction17511.relations [13,13,1050] reduction17511.output := by lin_cert using reduction17511.terms
def image17512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17512 : InImage map_29_240 image17512 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17512 : Bundle := named_bundle% "RealMapCertificates/relations/basis17512.json"
theorem reductionProof17512 : EqualModuloRelations reduction17512.relations reduction17512.input reduction17512.output := by lin_cert using reduction17512.terms
theorem substitutionProof17512 : IsMapEvaluation generatorImages reduction17512.relations [8,13,1148] reduction17512.output := by lin_cert using reduction17512.terms
def image17513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17513 : InImage map_29_240 image17513 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17513 : Bundle := named_bundle% "RealMapCertificates/relations/basis17513.json"
theorem reductionProof17513 : EqualModuloRelations reduction17513.relations reduction17513.input reduction17513.output := by lin_cert using reduction17513.terms
theorem substitutionProof17513 : IsMapEvaluation generatorImages reduction17513.relations [1,209,347] reduction17513.output := by lin_cert using reduction17513.terms
def image17514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17514 : InImage map_29_240 image17514 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17514 : Bundle := named_bundle% "RealMapCertificates/relations/basis17514.json"
theorem reductionProof17514 : EqualModuloRelations reduction17514.relations reduction17514.input reduction17514.output := by lin_cert using reduction17514.terms
theorem substitutionProof17514 : IsMapEvaluation generatorImages reduction17514.relations [0,0,1938] reduction17514.output := by lin_cert using reduction17514.terms
def map_29_241 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17748 : InImage map_29_241 image17748 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17748 : Bundle := named_bundle% "RealMapCertificates/relations/basis17748.json"
theorem reductionProof17748 : EqualModuloRelations reduction17748.relations reduction17748.input reduction17748.output := by lin_cert using reduction17748.terms
theorem substitutionProof17748 : IsMapEvaluation generatorImages reduction17748.relations [2041] reduction17748.output := by lin_cert using reduction17748.terms
def image17749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17749 : InImage map_29_241 image17749 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17749 : Bundle := named_bundle% "RealMapCertificates/relations/basis17749.json"
theorem reductionProof17749 : EqualModuloRelations reduction17749.relations reduction17749.input reduction17749.output := by lin_cert using reduction17749.terms
theorem substitutionProof17749 : IsMapEvaluation generatorImages reduction17749.relations [13,13,13,75,188] reduction17749.output := by lin_cert using reduction17749.terms
def image17750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17750 : InImage map_29_241 image17750 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17750 : Bundle := named_bundle% "RealMapCertificates/relations/basis17750.json"
theorem reductionProof17750 : EqualModuloRelations reduction17750.relations reduction17750.input reduction17750.output := by lin_cert using reduction17750.terms
theorem substitutionProof17750 : IsMapEvaluation generatorImages reduction17750.relations [9,1556] reduction17750.output := by lin_cert using reduction17750.terms
def image17751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17751 : InImage map_29_241 image17751 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17751 : Bundle := named_bundle% "RealMapCertificates/relations/basis17751.json"
theorem reductionProof17751 : EqualModuloRelations reduction17751.relations reduction17751.input reduction17751.output := by lin_cert using reduction17751.terms
theorem substitutionProof17751 : IsMapEvaluation generatorImages reduction17751.relations [0,1998] reduction17751.output := by lin_cert using reduction17751.terms
def image17752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17752 : InImage map_29_241 image17752 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17752 : Bundle := named_bundle% "RealMapCertificates/relations/basis17752.json"
theorem reductionProof17752 : EqualModuloRelations reduction17752.relations reduction17752.input reduction17752.output := by lin_cert using reduction17752.terms
theorem substitutionProof17752 : IsMapEvaluation generatorImages reduction17752.relations [0,267,267] reduction17752.output := by lin_cert using reduction17752.terms
def image17753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17753 : InImage map_29_241 image17753 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17753 : Bundle := named_bundle% "RealMapCertificates/relations/basis17753.json"
theorem reductionProof17753 : EqualModuloRelations reduction17753.relations reduction17753.input reduction17753.output := by lin_cert using reduction17753.terms
theorem substitutionProof17753 : IsMapEvaluation generatorImages reduction17753.relations [0,0,224,324] reduction17753.output := by lin_cert using reduction17753.terms
def image17754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17754 : InImage map_29_241 image17754 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17754 : Bundle := named_bundle% "RealMapCertificates/relations/basis17754.json"
theorem reductionProof17754 : EqualModuloRelations reduction17754.relations reduction17754.input reduction17754.output := by lin_cert using reduction17754.terms
theorem substitutionProof17754 : IsMapEvaluation generatorImages reduction17754.relations [0,0,0,0,1906] reduction17754.output := by lin_cert using reduction17754.terms
def map_29_242 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18021 : InImage map_29_242 image18021 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18021 : Bundle := named_bundle% "RealMapCertificates/relations/basis18021.json"
theorem reductionProof18021 : EqualModuloRelations reduction18021.relations reduction18021.input reduction18021.output := by lin_cert using reduction18021.terms
theorem substitutionProof18021 : IsMapEvaluation generatorImages reduction18021.relations [9,13,1124] reduction18021.output := by lin_cert using reduction18021.terms
def image18022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18022 : InImage map_29_242 image18022 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18022 : Bundle := named_bundle% "RealMapCertificates/relations/basis18022.json"
theorem reductionProof18022 : EqualModuloRelations reduction18022.relations reduction18022.input reduction18022.output := by lin_cert using reduction18022.terms
theorem substitutionProof18022 : IsMapEvaluation generatorImages reduction18022.relations [8,187,280] reduction18022.output := by lin_cert using reduction18022.terms
def image18023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18023 : InImage map_29_242 image18023 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18023 : Bundle := named_bundle% "RealMapCertificates/relations/basis18023.json"
theorem reductionProof18023 : EqualModuloRelations reduction18023.relations reduction18023.input reduction18023.output := by lin_cert using reduction18023.terms
theorem substitutionProof18023 : IsMapEvaluation generatorImages reduction18023.relations [0,0,0,1969] reduction18023.output := by lin_cert using reduction18023.terms
def image18024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18024 : InImage map_29_242 image18024 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18024 : Bundle := named_bundle% "RealMapCertificates/relations/basis18024.json"
theorem reductionProof18024 : EqualModuloRelations reduction18024.relations reduction18024.input reduction18024.output := by lin_cert using reduction18024.terms
theorem substitutionProof18024 : IsMapEvaluation generatorImages reduction18024.relations [0,0,0,225,324] reduction18024.output := by lin_cert using reduction18024.terms
def image18025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18025 : InImage map_29_242 image18025 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18025 : Bundle := named_bundle% "RealMapCertificates/relations/basis18025.json"
theorem reductionProof18025 : EqualModuloRelations reduction18025.relations reduction18025.input reduction18025.output := by lin_cert using reduction18025.terms
theorem substitutionProof18025 : IsMapEvaluation generatorImages reduction18025.relations [0,0,0,0,1940] reduction18025.output := by lin_cert using reduction18025.terms
def image18026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18026 : InImage map_29_242 image18026 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18026 : Bundle := named_bundle% "RealMapCertificates/relations/basis18026.json"
theorem reductionProof18026 : EqualModuloRelations reduction18026.relations reduction18026.input reduction18026.output := by lin_cert using reduction18026.terms
theorem substitutionProof18026 : IsMapEvaluation generatorImages reduction18026.relations [0,0,0,0,0,1908] reduction18026.output := by lin_cert using reduction18026.terms
def map_29_243 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18292 : InImage map_29_243 image18292 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18292 : Bundle := named_bundle% "RealMapCertificates/relations/basis18292.json"
theorem reductionProof18292 : EqualModuloRelations reduction18292.relations reduction18292.input reduction18292.output := by lin_cert using reduction18292.terms
theorem substitutionProof18292 : IsMapEvaluation generatorImages reduction18292.relations [67,876] reduction18292.output := by lin_cert using reduction18292.terms
def image18293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18293 : InImage map_29_243 image18293 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18293 : Bundle := named_bundle% "RealMapCertificates/relations/basis18293.json"
theorem reductionProof18293 : EqualModuloRelations reduction18293.relations reduction18293.input reduction18293.output := by lin_cert using reduction18293.terms
theorem substitutionProof18293 : IsMapEvaluation generatorImages reduction18293.relations [13,13,13,13,532] reduction18293.output := by lin_cert using reduction18293.terms
def image18294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18294 : InImage map_29_243 image18294 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18294 : Bundle := named_bundle% "RealMapCertificates/relations/basis18294.json"
theorem reductionProof18294 : EqualModuloRelations reduction18294.relations reduction18294.input reduction18294.output := by lin_cert using reduction18294.terms
theorem substitutionProof18294 : IsMapEvaluation generatorImages reduction18294.relations [9,13,1148] reduction18294.output := by lin_cert using reduction18294.terms
def image18295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18295 : InImage map_29_243 image18295 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18295 : Bundle := named_bundle% "RealMapCertificates/relations/basis18295.json"
theorem reductionProof18295 : EqualModuloRelations reduction18295.relations reduction18295.input reduction18295.output := by lin_cert using reduction18295.terms
theorem substitutionProof18295 : IsMapEvaluation generatorImages reduction18295.relations [1,1,224,324] reduction18295.output := by lin_cert using reduction18295.terms
def image18296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18296 : InImage map_29_243 image18296 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18296 : Bundle := named_bundle% "RealMapCertificates/relations/basis18296.json"
theorem reductionProof18296 : EqualModuloRelations reduction18296.relations reduction18296.input reduction18296.output := by lin_cert using reduction18296.terms
theorem substitutionProof18296 : IsMapEvaluation generatorImages reduction18296.relations [0,2061] reduction18296.output := by lin_cert using reduction18296.terms
def image18297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18297 : InImage map_29_243 image18297 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18297 : Bundle := named_bundle% "RealMapCertificates/relations/basis18297.json"
theorem reductionProof18297 : EqualModuloRelations reduction18297.relations reduction18297.input reduction18297.output := by lin_cert using reduction18297.terms
theorem substitutionProof18297 : IsMapEvaluation generatorImages reduction18297.relations [0,0,0,0,1971] reduction18297.output := by lin_cert using reduction18297.terms
def image18298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18298 : InImage map_29_243 image18298 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18298 : Bundle := named_bundle% "RealMapCertificates/relations/basis18298.json"
theorem reductionProof18298 : EqualModuloRelations reduction18298.relations reduction18298.input reduction18298.output := by lin_cert using reduction18298.terms
theorem substitutionProof18298 : IsMapEvaluation generatorImages reduction18298.relations [0,0,0,0,0,0,1912] reduction18298.output := by lin_cert using reduction18298.terms
def map_29_244 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18491 : InImage map_29_244 image18491 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18491 : Bundle := named_bundle% "RealMapCertificates/relations/basis18491.json"
theorem reductionProof18491 : EqualModuloRelations reduction18491.relations reduction18491.input reduction18491.output := by lin_cert using reduction18491.terms
theorem substitutionProof18491 : IsMapEvaluation generatorImages reduction18491.relations [209,420] reduction18491.output := by lin_cert using reduction18491.terms
def image18492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18492 : InImage map_29_244 image18492 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18492 : Bundle := named_bundle% "RealMapCertificates/relations/basis18492.json"
theorem reductionProof18492 : EqualModuloRelations reduction18492.relations reduction18492.input reduction18492.output := by lin_cert using reduction18492.terms
theorem substitutionProof18492 : IsMapEvaluation generatorImages reduction18492.relations [13,1556] reduction18492.output := by lin_cert using reduction18492.terms
def image18493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18493 : InImage map_29_244 image18493 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18493 : Bundle := named_bundle% "RealMapCertificates/relations/basis18493.json"
theorem reductionProof18493 : EqualModuloRelations reduction18493.relations reduction18493.input reduction18493.output := by lin_cert using reduction18493.terms
theorem substitutionProof18493 : IsMapEvaluation generatorImages reduction18493.relations [13,1555] reduction18493.output := by lin_cert using reduction18493.terms
def image18494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18494 : InImage map_29_244 image18494 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18494 : Bundle := named_bundle% "RealMapCertificates/relations/basis18494.json"
theorem reductionProof18494 : EqualModuloRelations reduction18494.relations reduction18494.input reduction18494.output := by lin_cert using reduction18494.terms
theorem substitutionProof18494 : IsMapEvaluation generatorImages reduction18494.relations [7,1690] reduction18494.output := by lin_cert using reduction18494.terms
def image18495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18495 : InImage map_29_244 image18495 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18495 : Bundle := named_bundle% "RealMapCertificates/relations/basis18495.json"
theorem reductionProof18495 : EqualModuloRelations reduction18495.relations reduction18495.input reduction18495.output := by lin_cert using reduction18495.terms
theorem substitutionProof18495 : IsMapEvaluation generatorImages reduction18495.relations [1,2061] reduction18495.output := by lin_cert using reduction18495.terms
def image18496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18496 : InImage map_29_244 image18496 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18496 : Bundle := named_bundle% "RealMapCertificates/relations/basis18496.json"
theorem reductionProof18496 : EqualModuloRelations reduction18496.relations reduction18496.input reduction18496.output := by lin_cert using reduction18496.terms
theorem substitutionProof18496 : IsMapEvaluation generatorImages reduction18496.relations [0,0,2062] reduction18496.output := by lin_cert using reduction18496.terms
def image18497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18497 : InImage map_29_244 image18497 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18497 : Bundle := named_bundle% "RealMapCertificates/relations/basis18497.json"
theorem reductionProof18497 : EqualModuloRelations reduction18497.relations reduction18497.input reduction18497.output := by lin_cert using reduction18497.terms
theorem substitutionProof18497 : IsMapEvaluation generatorImages reduction18497.relations [0,0,237,324] reduction18497.output := by lin_cert using reduction18497.terms
def map_29_245 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18764 : InImage map_29_245 image18764 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18764 : Bundle := named_bundle% "RealMapCertificates/relations/basis18764.json"
theorem reductionProof18764 : EqualModuloRelations reduction18764.relations reduction18764.input reduction18764.output := by lin_cert using reduction18764.terms
theorem substitutionProof18764 : IsMapEvaluation generatorImages reduction18764.relations [13,13,1124] reduction18764.output := by lin_cert using reduction18764.terms
def image18765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18765 : InImage map_29_245 image18765 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18765 : Bundle := named_bundle% "RealMapCertificates/relations/basis18765.json"
theorem reductionProof18765 : EqualModuloRelations reduction18765.relations reduction18765.input reduction18765.output := by lin_cert using reduction18765.terms
theorem substitutionProof18765 : IsMapEvaluation generatorImages reduction18765.relations [8,8,188,209] reduction18765.output := by lin_cert using reduction18765.terms
def image18766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18766 : InImage map_29_245 image18766 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18766 : Bundle := named_bundle% "RealMapCertificates/relations/basis18766.json"
theorem reductionProof18766 : EqualModuloRelations reduction18766.relations reduction18766.input reduction18766.output := by lin_cert using reduction18766.terms
theorem substitutionProof18766 : IsMapEvaluation generatorImages reduction18766.relations [0,2129] reduction18766.output := by lin_cert using reduction18766.terms
def map_29_246 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19054 : InImage map_29_246 image19054 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19054 : Bundle := named_bundle% "RealMapCertificates/relations/basis19054.json"
theorem reductionProof19054 : EqualModuloRelations reduction19054.relations reduction19054.input reduction19054.output := by lin_cert using reduction19054.terms
theorem substitutionProof19054 : IsMapEvaluation generatorImages reduction19054.relations [2203] reduction19054.output := by lin_cert using reduction19054.terms
def image19055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19055 : InImage map_29_246 image19055 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19055 : Bundle := named_bundle% "RealMapCertificates/relations/basis19055.json"
theorem reductionProof19055 : EqualModuloRelations reduction19055.relations reduction19055.input reduction19055.output := by lin_cert using reduction19055.terms
theorem substitutionProof19055 : IsMapEvaluation generatorImages reduction19055.relations [13,13,1148] reduction19055.output := by lin_cert using reduction19055.terms
def image19056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19056 : InImage map_29_246 image19056 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19056 : Bundle := named_bundle% "RealMapCertificates/relations/basis19056.json"
theorem reductionProof19056 : EqualModuloRelations reduction19056.relations reduction19056.input reduction19056.output := by lin_cert using reduction19056.terms
theorem substitutionProof19056 : IsMapEvaluation generatorImages reduction19056.relations [9,188,286] reduction19056.output := by lin_cert using reduction19056.terms
def image19057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19057 : InImage map_29_246 image19057 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19057 : Bundle := named_bundle% "RealMapCertificates/relations/basis19057.json"
theorem reductionProof19057 : EqualModuloRelations reduction19057.relations reduction19057.input reduction19057.output := by lin_cert using reduction19057.terms
theorem substitutionProof19057 : IsMapEvaluation generatorImages reduction19057.relations [0,0,2131] reduction19057.output := by lin_cert using reduction19057.terms
def map_29_247 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19288 : InImage map_29_247 image19288 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19288 : Bundle := named_bundle% "RealMapCertificates/relations/basis19288.json"
theorem reductionProof19288 : EqualModuloRelations reduction19288.relations reduction19288.input reduction19288.output := by lin_cert using reduction19288.terms
theorem substitutionProof19288 : IsMapEvaluation generatorImages reduction19288.relations [2243] reduction19288.output := by lin_cert using reduction19288.terms
def image19289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19289 : InImage map_29_247 image19289 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19289 : Bundle := named_bundle% "RealMapCertificates/relations/basis19289.json"
theorem reductionProof19289 : EqualModuloRelations reduction19289.relations reduction19289.input reduction19289.output := by lin_cert using reduction19289.terms
theorem substitutionProof19289 : IsMapEvaluation generatorImages reduction19289.relations [279,293] reduction19289.output := by lin_cert using reduction19289.terms
def image19290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19290 : InImage map_29_247 image19290 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19290 : Bundle := named_bundle% "RealMapCertificates/relations/basis19290.json"
theorem reductionProof19290 : EqualModuloRelations reduction19290.relations reduction19290.input reduction19290.output := by lin_cert using reduction19290.terms
theorem substitutionProof19290 : IsMapEvaluation generatorImages reduction19290.relations [13,13,13,76,212] reduction19290.output := by lin_cert using reduction19290.terms
def image19291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19291 : InImage map_29_247 image19291 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19291 : Bundle := named_bundle% "RealMapCertificates/relations/basis19291.json"
theorem reductionProof19291 : EqualModuloRelations reduction19291.relations reduction19291.input reduction19291.output := by lin_cert using reduction19291.terms
theorem substitutionProof19291 : IsMapEvaluation generatorImages reduction19291.relations [1,1,2100] reduction19291.output := by lin_cert using reduction19291.terms
def image19292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19292 : InImage map_29_247 image19292 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19292 : Bundle := named_bundle% "RealMapCertificates/relations/basis19292.json"
theorem reductionProof19292 : EqualModuloRelations reduction19292.relations reduction19292.input reduction19292.output := by lin_cert using reduction19292.terms
theorem substitutionProof19292 : IsMapEvaluation generatorImages reduction19292.relations [0,0,16,137,324] reduction19292.output := by lin_cert using reduction19292.terms
def map_29_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19566 : InImage map_29_248 image19566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19566 : Bundle := named_bundle% "RealMapCertificates/relations/basis19566.json"
theorem reductionProof19566 : EqualModuloRelations reduction19566.relations reduction19566.input reduction19566.output := by lin_cert using reduction19566.terms
theorem substitutionProof19566 : IsMapEvaluation generatorImages reduction19566.relations [2279] reduction19566.output := by lin_cert using reduction19566.terms
def image19567 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19567 : InImage map_29_248 image19567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19567 : Bundle := named_bundle% "RealMapCertificates/relations/basis19567.json"
theorem reductionProof19567 : EqualModuloRelations reduction19567.relations reduction19567.input reduction19567.output := by lin_cert using reduction19567.terms
theorem substitutionProof19567 : IsMapEvaluation generatorImages reduction19567.relations [2278] reduction19567.output := by lin_cert using reduction19567.terms
def image19568 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19568 : InImage map_29_248 image19568 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19568 : Bundle := named_bundle% "RealMapCertificates/relations/basis19568.json"
theorem reductionProof19568 : EqualModuloRelations reduction19568.relations reduction19568.input reduction19568.output := by lin_cert using reduction19568.terms
theorem substitutionProof19568 : IsMapEvaluation generatorImages reduction19568.relations [2277] reduction19568.output := by lin_cert using reduction19568.terms
def image19569 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19569 : InImage map_29_248 image19569 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19569 : Bundle := named_bundle% "RealMapCertificates/relations/basis19569.json"
theorem reductionProof19569 : EqualModuloRelations reduction19569.relations reduction19569.input reduction19569.output := by lin_cert using reduction19569.terms
theorem substitutionProof19569 : IsMapEvaluation generatorImages reduction19569.relations [8,9,188,209] reduction19569.output := by lin_cert using reduction19569.terms
def image19570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19570 : InImage map_29_248 image19570 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19570 : Bundle := named_bundle% "RealMapCertificates/relations/basis19570.json"
theorem reductionProof19570 : EqualModuloRelations reduction19570.relations reduction19570.input reduction19570.output := by lin_cert using reduction19570.terms
theorem substitutionProof19570 : IsMapEvaluation generatorImages reduction19570.relations [0,0,2204] reduction19570.output := by lin_cert using reduction19570.terms
def map_29_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19861 : InImage map_29_249 image19861 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19861 : Bundle := named_bundle% "RealMapCertificates/relations/basis19861.json"
theorem reductionProof19861 : EqualModuloRelations reduction19861.relations reduction19861.input reduction19861.output := by lin_cert using reduction19861.terms
theorem substitutionProof19861 : IsMapEvaluation generatorImages reduction19861.relations [76,899] reduction19861.output := by lin_cert using reduction19861.terms
def image19862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19862 : InImage map_29_249 image19862 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19862 : Bundle := named_bundle% "RealMapCertificates/relations/basis19862.json"
theorem reductionProof19862 : EqualModuloRelations reduction19862.relations reduction19862.input reduction19862.output := by lin_cert using reduction19862.terms
theorem substitutionProof19862 : IsMapEvaluation generatorImages reduction19862.relations [13,188,286] reduction19862.output := by lin_cert using reduction19862.terms
def image19863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19863 : InImage map_29_249 image19863 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19863 : Bundle := named_bundle% "RealMapCertificates/relations/basis19863.json"
theorem reductionProof19863 : EqualModuloRelations reduction19863.relations reduction19863.input reduction19863.output := by lin_cert using reduction19863.terms
theorem substitutionProof19863 : IsMapEvaluation generatorImages reduction19863.relations [9,1691] reduction19863.output := by lin_cert using reduction19863.terms
def image19864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19864 : InImage map_29_249 image19864 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19864 : Bundle := named_bundle% "RealMapCertificates/relations/basis19864.json"
theorem reductionProof19864 : EqualModuloRelations reduction19864.relations reduction19864.input reduction19864.output := by lin_cert using reduction19864.terms
theorem substitutionProof19864 : IsMapEvaluation generatorImages reduction19864.relations [8,1759] reduction19864.output := by lin_cert using reduction19864.terms
def image19865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19865 : InImage map_29_249 image19865 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19865 : Bundle := named_bundle% "RealMapCertificates/relations/basis19865.json"
theorem reductionProof19865 : EqualModuloRelations reduction19865.relations reduction19865.input reduction19865.output := by lin_cert using reduction19865.terms
theorem substitutionProof19865 : IsMapEvaluation generatorImages reduction19865.relations [7,1815] reduction19865.output := by lin_cert using reduction19865.terms
def image19866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19866 : InImage map_29_249 image19866 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19866 : Bundle := named_bundle% "RealMapCertificates/relations/basis19866.json"
theorem reductionProof19866 : EqualModuloRelations reduction19866.relations reduction19866.input reduction19866.output := by lin_cert using reduction19866.terms
theorem substitutionProof19866 : IsMapEvaluation generatorImages reduction19866.relations [0,0,0,0,0,2136] reduction19866.output := by lin_cert using reduction19866.terms
def map_29_250 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image20083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20083 : InImage map_29_250 image20083 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction20083 : Bundle := named_bundle% "RealMapCertificates/relations/basis20083.json"
theorem reductionProof20083 : EqualModuloRelations reduction20083.relations reduction20083.input reduction20083.output := by lin_cert using reduction20083.terms
theorem substitutionProof20083 : IsMapEvaluation generatorImages reduction20083.relations [2343] reduction20083.output := by lin_cert using reduction20083.terms
def image20084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20084 : InImage map_29_250 image20084 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction20084 : Bundle := named_bundle% "RealMapCertificates/relations/basis20084.json"
theorem reductionProof20084 : EqualModuloRelations reduction20084.relations reduction20084.input reduction20084.output := by lin_cert using reduction20084.terms
theorem substitutionProof20084 : IsMapEvaluation generatorImages reduction20084.relations [64,964] reduction20084.output := by lin_cert using reduction20084.terms
def image20085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20085 : InImage map_29_250 image20085 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction20085 : Bundle := named_bundle% "RealMapCertificates/relations/basis20085.json"
theorem reductionProof20085 : EqualModuloRelations reduction20085.relations reduction20085.input reduction20085.output := by lin_cert using reduction20085.terms
theorem substitutionProof20085 : IsMapEvaluation generatorImages reduction20085.relations [24,1443] reduction20085.output := by lin_cert using reduction20085.terms
def image20086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20086 : InImage map_29_250 image20086 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction20086 : Bundle := named_bundle% "RealMapCertificates/relations/basis20086.json"
theorem reductionProof20086 : EqualModuloRelations reduction20086.relations reduction20086.input reduction20086.output := by lin_cert using reduction20086.terms
theorem substitutionProof20086 : IsMapEvaluation generatorImages reduction20086.relations [9,13,13,13,13,373] reduction20086.output := by lin_cert using reduction20086.terms
def image20087 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20087 : InImage map_29_250 image20087 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction20087 : Bundle := named_bundle% "RealMapCertificates/relations/basis20087.json"
theorem reductionProof20087 : EqualModuloRelations reduction20087.relations reduction20087.input reduction20087.output := by lin_cert using reduction20087.terms
theorem substitutionProof20087 : IsMapEvaluation generatorImages reduction20087.relations [8,209,293] reduction20087.output := by lin_cert using reduction20087.terms
def image20088 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20088 : InImage map_29_250 image20088 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction20088 : Bundle := named_bundle% "RealMapCertificates/relations/basis20088.json"
theorem reductionProof20088 : EqualModuloRelations reduction20088.relations reduction20088.input reduction20088.output := by lin_cert using reduction20088.terms
theorem substitutionProof20088 : IsMapEvaluation generatorImages reduction20088.relations [3,2061] reduction20088.output := by lin_cert using reduction20088.terms
def image20089 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20089 : InImage map_29_250 image20089 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction20089 : Bundle := named_bundle% "RealMapCertificates/relations/basis20089.json"
theorem reductionProof20089 : EqualModuloRelations reduction20089.relations reduction20089.input reduction20089.output := by lin_cert using reduction20089.terms
theorem substitutionProof20089 : IsMapEvaluation generatorImages reduction20089.relations [0,2311] reduction20089.output := by lin_cert using reduction20089.terms
def image20090 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20090 : InImage map_29_250 image20090 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction20090 : Bundle := named_bundle% "RealMapCertificates/relations/basis20090.json"
theorem reductionProof20090 : EqualModuloRelations reduction20090.relations reduction20090.input reduction20090.output := by lin_cert using reduction20090.terms
theorem substitutionProof20090 : IsMapEvaluation generatorImages reduction20090.relations [0,2309] reduction20090.output := by lin_cert using reduction20090.terms
def image20091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20091 : InImage map_29_250 image20091 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction20091 : Bundle := named_bundle% "RealMapCertificates/relations/basis20091.json"
theorem reductionProof20091 : EqualModuloRelations reduction20091.relations reduction20091.input reduction20091.output := by lin_cert using reduction20091.terms
theorem substitutionProof20091 : IsMapEvaluation generatorImages reduction20091.relations [0,0,0,0,2209] reduction20091.output := by lin_cert using reduction20091.terms
def image20092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20092 : InImage map_29_250 image20092 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction20092 : Bundle := named_bundle% "RealMapCertificates/relations/basis20092.json"
theorem reductionProof20092 : EqualModuloRelations reduction20092.relations reduction20092.input reduction20092.output := by lin_cert using reduction20092.terms
theorem substitutionProof20092 : IsMapEvaluation generatorImages reduction20092.relations [0,0,0,0,0,2172] reduction20092.output := by lin_cert using reduction20092.terms
end RealMapCertificates
