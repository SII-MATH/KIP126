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
  | 17 => [[4,7]]
  | 43 => []
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 76 => []
  | 78 => [[4,4,4,5,6]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 135 => [[1,4,4,4,4,4,4,4]]
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 188 => []
  | 189 => []
  | 209 => []
  | 210 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 324 => []
  | 373 => []
  | 610 => []
  | 628 => []
  | 681 => []
  | 682 => []
  | 690 => []
  | 978 => []
  | 1002 => []
  | 1243 => []
  | 1386 => []
  | 1558 => []
  | 1611 => []
  | 1691 => []
  | 1839 => []
  | 1866 => []
  | 1906 => []
  | 1908 => []
  | 1911 => []
  | 1971 => []
  | 2005 => []
  | 2006 => []
  | 2045 => []
  | 2062 => []
  | 2063 => []
  | 2100 => []
  | 2103 => []
  | 2129 => []
  | 2131 => []
  | 2204 => []
  | 2207 => []
  | 2309 => []
  | 2314 => []
  | 2315 => []
  | 2411 => []
  | 2412 => []
  | 2413 => []
  | 2414 => []
  | 2415 => []
  | 2416 => []
  | 2441 => []
  | 2442 => []
  | 2491 => []
  | 2492 => []
  | 2493 => []
  | 2494 => []
  | 2495 => []
  | 2496 => []
  | 2497 => []
  | 2498 => []
  | 2551 => []
  | 2552 => []
  | 2553 => []
  | 2556 => []
  | 2584 => []
  | 2631 => []
  | 2682 => []
  | 2745 => []
  | 2746 => []
  | 2747 => []
  | 2748 => []
  | 2799 => []
  | 2800 => []
  | 2802 => []
  | 2803 => []
  | _ => []
def map_29_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20383 : InImage map_29_251 image20383 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20383 : Bundle := named_bundle% "RealMapCertificates/relations/basis20383.json"
theorem reductionProof20383 : EqualModuloRelations reduction20383.relations reduction20383.input reduction20383.output := by lin_cert using reduction20383.terms
theorem substitutionProof20383 : IsMapEvaluation generatorImages reduction20383.relations [13,13,1243] reduction20383.output := by lin_cert using reduction20383.terms
def image20384 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20384 : InImage map_29_251 image20384 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20384 : Bundle := named_bundle% "RealMapCertificates/relations/basis20384.json"
theorem reductionProof20384 : EqualModuloRelations reduction20384.relations reduction20384.input reduction20384.output := by lin_cert using reduction20384.terms
theorem substitutionProof20384 : IsMapEvaluation generatorImages reduction20384.relations [8,13,188,209] reduction20384.output := by lin_cert using reduction20384.terms
def image20385 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20385 : InImage map_29_251 image20385 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20385 : Bundle := named_bundle% "RealMapCertificates/relations/basis20385.json"
theorem reductionProof20385 : EqualModuloRelations reduction20385.relations reduction20385.input reduction20385.output := by lin_cert using reduction20385.terms
theorem substitutionProof20385 : IsMapEvaluation generatorImages reduction20385.relations [1,2309] reduction20385.output := by lin_cert using reduction20385.terms
def image20386 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20386 : InImage map_29_251 image20386 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20386 : Bundle := named_bundle% "RealMapCertificates/relations/basis20386.json"
theorem reductionProof20386 : EqualModuloRelations reduction20386.relations reduction20386.input reduction20386.output := by lin_cert using reduction20386.terms
theorem substitutionProof20386 : IsMapEvaluation generatorImages reduction20386.relations [0,3,2062] reduction20386.output := by lin_cert using reduction20386.terms
def image20387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20387 : InImage map_29_251 image20387 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20387 : Bundle := named_bundle% "RealMapCertificates/relations/basis20387.json"
theorem reductionProof20387 : EqualModuloRelations reduction20387.relations reduction20387.input reduction20387.output := by lin_cert using reduction20387.terms
theorem substitutionProof20387 : IsMapEvaluation generatorImages reduction20387.relations [0,0,2314] reduction20387.output := by lin_cert using reduction20387.terms
def image20388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20388 : InImage map_29_251 image20388 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20388 : Bundle := named_bundle% "RealMapCertificates/relations/basis20388.json"
theorem reductionProof20388 : EqualModuloRelations reduction20388.relations reduction20388.input reduction20388.output := by lin_cert using reduction20388.terms
theorem substitutionProof20388 : IsMapEvaluation generatorImages reduction20388.relations [0,0,0,0,0,0,0,246,324] reduction20388.output := by lin_cert using reduction20388.terms
def map_29_252 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20686 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20686 : InImage map_29_252 image20686 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20686 : Bundle := named_bundle% "RealMapCertificates/relations/basis20686.json"
theorem reductionProof20686 : EqualModuloRelations reduction20686.relations reduction20686.input reduction20686.output := by lin_cert using reduction20686.terms
theorem substitutionProof20686 : IsMapEvaluation generatorImages reduction20686.relations [2411] reduction20686.output := by lin_cert using reduction20686.terms
def image20687 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20687 : InImage map_29_252 image20687 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20687 : Bundle := named_bundle% "RealMapCertificates/relations/basis20687.json"
theorem reductionProof20687 : EqualModuloRelations reduction20687.relations reduction20687.input reduction20687.output := by lin_cert using reduction20687.terms
theorem substitutionProof20687 : IsMapEvaluation generatorImages reduction20687.relations [13,1691] reduction20687.output := by lin_cert using reduction20687.terms
def image20688 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20688 : InImage map_29_252 image20688 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20688 : Bundle := named_bundle% "RealMapCertificates/relations/basis20688.json"
theorem reductionProof20688 : EqualModuloRelations reduction20688.relations reduction20688.input reduction20688.output := by lin_cert using reduction20688.terms
theorem substitutionProof20688 : IsMapEvaluation generatorImages reduction20688.relations [13,13,188,189] reduction20688.output := by lin_cert using reduction20688.terms
def image20689 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20689 : InImage map_29_252 image20689 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20689 : Bundle := named_bundle% "RealMapCertificates/relations/basis20689.json"
theorem reductionProof20689 : EqualModuloRelations reduction20689.relations reduction20689.input reduction20689.output := by lin_cert using reduction20689.terms
theorem substitutionProof20689 : IsMapEvaluation generatorImages reduction20689.relations [8,1839] reduction20689.output := by lin_cert using reduction20689.terms
def image20690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20690 : InImage map_29_252 image20690 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20690 : Bundle := named_bundle% "RealMapCertificates/relations/basis20690.json"
theorem reductionProof20690 : EqualModuloRelations reduction20690.relations reduction20690.input reduction20690.output := by lin_cert using reduction20690.terms
theorem substitutionProof20690 : IsMapEvaluation generatorImages reduction20690.relations [3,2129] reduction20690.output := by lin_cert using reduction20690.terms
def image20691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20691 : InImage map_29_252 image20691 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20691 : Bundle := named_bundle% "RealMapCertificates/relations/basis20691.json"
theorem reductionProof20691 : EqualModuloRelations reduction20691.relations reduction20691.input reduction20691.output := by lin_cert using reduction20691.terms
theorem substitutionProof20691 : IsMapEvaluation generatorImages reduction20691.relations [0,0,0,2315] reduction20691.output := by lin_cert using reduction20691.terms
def map_29_253 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20913 : InImage map_29_253 image20913 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20913 : Bundle := named_bundle% "RealMapCertificates/relations/basis20913.json"
theorem reductionProof20913 : EqualModuloRelations reduction20913.relations reduction20913.input reduction20913.output := by lin_cert using reduction20913.terms
theorem substitutionProof20913 : IsMapEvaluation generatorImages reduction20913.relations [2442] reduction20913.output := by lin_cert using reduction20913.terms
def image20914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20914 : InImage map_29_253 image20914 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20914 : Bundle := named_bundle% "RealMapCertificates/relations/basis20914.json"
theorem reductionProof20914 : EqualModuloRelations reduction20914.relations reduction20914.input reduction20914.output := by lin_cert using reduction20914.terms
theorem substitutionProof20914 : IsMapEvaluation generatorImages reduction20914.relations [2441] reduction20914.output := by lin_cert using reduction20914.terms
def image20915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20915 : InImage map_29_253 image20915 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20915 : Bundle := named_bundle% "RealMapCertificates/relations/basis20915.json"
theorem reductionProof20915 : EqualModuloRelations reduction20915.relations reduction20915.input reduction20915.output := by lin_cert using reduction20915.terms
theorem substitutionProof20915 : IsMapEvaluation generatorImages reduction20915.relations [13,13,13,13,13,373] reduction20915.output := by lin_cert using reduction20915.terms
def image20916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20916 : InImage map_29_253 image20916 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20916 : Bundle := named_bundle% "RealMapCertificates/relations/basis20916.json"
theorem reductionProof20916 : EqualModuloRelations reduction20916.relations reduction20916.input reduction20916.output := by lin_cert using reduction20916.terms
theorem substitutionProof20916 : IsMapEvaluation generatorImages reduction20916.relations [8,1866] reduction20916.output := by lin_cert using reduction20916.terms
def image20917 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20917 : InImage map_29_253 image20917 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20917 : Bundle := named_bundle% "RealMapCertificates/relations/basis20917.json"
theorem reductionProof20917 : EqualModuloRelations reduction20917.relations reduction20917.input reduction20917.output := by lin_cert using reduction20917.terms
theorem substitutionProof20917 : IsMapEvaluation generatorImages reduction20917.relations [0,2415] reduction20917.output := by lin_cert using reduction20917.terms
def image20918 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20918 : InImage map_29_253 image20918 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20918 : Bundle := named_bundle% "RealMapCertificates/relations/basis20918.json"
theorem reductionProof20918 : EqualModuloRelations reduction20918.relations reduction20918.input reduction20918.output := by lin_cert using reduction20918.terms
theorem substitutionProof20918 : IsMapEvaluation generatorImages reduction20918.relations [0,2414] reduction20918.output := by lin_cert using reduction20918.terms
def image20919 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20919 : InImage map_29_253 image20919 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20919 : Bundle := named_bundle% "RealMapCertificates/relations/basis20919.json"
theorem reductionProof20919 : EqualModuloRelations reduction20919.relations reduction20919.input reduction20919.output := by lin_cert using reduction20919.terms
theorem substitutionProof20919 : IsMapEvaluation generatorImages reduction20919.relations [0,2413] reduction20919.output := by lin_cert using reduction20919.terms
def image20920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20920 : InImage map_29_253 image20920 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20920 : Bundle := named_bundle% "RealMapCertificates/relations/basis20920.json"
theorem reductionProof20920 : EqualModuloRelations reduction20920.relations reduction20920.input reduction20920.output := by lin_cert using reduction20920.terms
theorem substitutionProof20920 : IsMapEvaluation generatorImages reduction20920.relations [0,3,2131] reduction20920.output := by lin_cert using reduction20920.terms
def map_29_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21212 : InImage map_29_254 image21212 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21212 : Bundle := named_bundle% "RealMapCertificates/relations/basis21212.json"
theorem reductionProof21212 : EqualModuloRelations reduction21212.relations reduction21212.input reduction21212.output := by lin_cert using reduction21212.terms
theorem substitutionProof21212 : IsMapEvaluation generatorImages reduction21212.relations [2493] reduction21212.output := by lin_cert using reduction21212.terms
def image21213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21213 : InImage map_29_254 image21213 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21213 : Bundle := named_bundle% "RealMapCertificates/relations/basis21213.json"
theorem reductionProof21213 : EqualModuloRelations reduction21213.relations reduction21213.input reduction21213.output := by lin_cert using reduction21213.terms
theorem substitutionProof21213 : IsMapEvaluation generatorImages reduction21213.relations [2492] reduction21213.output := by lin_cert using reduction21213.terms
def image21214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21214 : InImage map_29_254 image21214 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21214 : Bundle := named_bundle% "RealMapCertificates/relations/basis21214.json"
theorem reductionProof21214 : EqualModuloRelations reduction21214.relations reduction21214.input reduction21214.output := by lin_cert using reduction21214.terms
theorem substitutionProof21214 : IsMapEvaluation generatorImages reduction21214.relations [2491] reduction21214.output := by lin_cert using reduction21214.terms
def image21215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21215 : InImage map_29_254 image21215 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21215 : Bundle := named_bundle% "RealMapCertificates/relations/basis21215.json"
theorem reductionProof21215 : EqualModuloRelations reduction21215.relations reduction21215.input reduction21215.output := by lin_cert using reduction21215.terms
theorem substitutionProof21215 : IsMapEvaluation generatorImages reduction21215.relations [9,13,188,209] reduction21215.output := by lin_cert using reduction21215.terms
def image21216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21216 : InImage map_29_254 image21216 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21216 : Bundle := named_bundle% "RealMapCertificates/relations/basis21216.json"
theorem reductionProof21216 : EqualModuloRelations reduction21216.relations reduction21216.input reduction21216.output := by lin_cert using reduction21216.terms
theorem substitutionProof21216 : IsMapEvaluation generatorImages reduction21216.relations [1,2412] reduction21216.output := by lin_cert using reduction21216.terms
def image21217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21217 : InImage map_29_254 image21217 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21217 : Bundle := named_bundle% "RealMapCertificates/relations/basis21217.json"
theorem reductionProof21217 : EqualModuloRelations reduction21217.relations reduction21217.input reduction21217.output := by lin_cert using reduction21217.terms
theorem substitutionProof21217 : IsMapEvaluation generatorImages reduction21217.relations [0,0,2416] reduction21217.output := by lin_cert using reduction21217.terms
def map_29_255 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21553 : InImage map_29_255 image21553 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21553 : Bundle := named_bundle% "RealMapCertificates/relations/basis21553.json"
theorem reductionProof21553 : EqualModuloRelations reduction21553.relations reduction21553.input reduction21553.output := by lin_cert using reduction21553.terms
theorem substitutionProof21553 : IsMapEvaluation generatorImages reduction21553.relations [2552] reduction21553.output := by lin_cert using reduction21553.terms
def image21554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21554 : InImage map_29_255 image21554 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21554 : Bundle := named_bundle% "RealMapCertificates/relations/basis21554.json"
theorem reductionProof21554 : EqualModuloRelations reduction21554.relations reduction21554.input reduction21554.output := by lin_cert using reduction21554.terms
theorem substitutionProof21554 : IsMapEvaluation generatorImages reduction21554.relations [2551] reduction21554.output := by lin_cert using reduction21554.terms
def image21555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21555 : InImage map_29_255 image21555 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21555 : Bundle := named_bundle% "RealMapCertificates/relations/basis21555.json"
theorem reductionProof21555 : EqualModuloRelations reduction21555.relations reduction21555.input reduction21555.output := by lin_cert using reduction21555.terms
theorem substitutionProof21555 : IsMapEvaluation generatorImages reduction21555.relations [76,978] reduction21555.output := by lin_cert using reduction21555.terms
def image21556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21556 : InImage map_29_255 image21556 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21556 : Bundle := named_bundle% "RealMapCertificates/relations/basis21556.json"
theorem reductionProof21556 : EqualModuloRelations reduction21556.relations reduction21556.input reduction21556.output := by lin_cert using reduction21556.terms
theorem substitutionProof21556 : IsMapEvaluation generatorImages reduction21556.relations [13,76,690] reduction21556.output := by lin_cert using reduction21556.terms
def image21557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21557 : InImage map_29_255 image21557 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21557 : Bundle := named_bundle% "RealMapCertificates/relations/basis21557.json"
theorem reductionProof21557 : EqualModuloRelations reduction21557.relations reduction21557.input reduction21557.output := by lin_cert using reduction21557.terms
theorem substitutionProof21557 : IsMapEvaluation generatorImages reduction21557.relations [8,1906] reduction21557.output := by lin_cert using reduction21557.terms
def image21558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21558 : InImage map_29_255 image21558 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21558 : Bundle := named_bundle% "RealMapCertificates/relations/basis21558.json"
theorem reductionProof21558 : EqualModuloRelations reduction21558.relations reduction21558.input reduction21558.output := by lin_cert using reduction21558.terms
theorem substitutionProof21558 : IsMapEvaluation generatorImages reduction21558.relations [0,2494] reduction21558.output := by lin_cert using reduction21558.terms
def image21559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21559 : InImage map_29_255 image21559 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21559 : Bundle := named_bundle% "RealMapCertificates/relations/basis21559.json"
theorem reductionProof21559 : EqualModuloRelations reduction21559.relations reduction21559.input reduction21559.output := by lin_cert using reduction21559.terms
theorem substitutionProof21559 : IsMapEvaluation generatorImages reduction21559.relations [0,3,2204] reduction21559.output := by lin_cert using reduction21559.terms
def map_29_256 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21813 : InImage map_29_256 image21813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21813 : Bundle := named_bundle% "RealMapCertificates/relations/basis21813.json"
theorem reductionProof21813 : EqualModuloRelations reduction21813.relations reduction21813.input reduction21813.output := by lin_cert using reduction21813.terms
theorem substitutionProof21813 : IsMapEvaluation generatorImages reduction21813.relations [2584] reduction21813.output := by lin_cert using reduction21813.terms
def image21814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21814 : InImage map_29_256 image21814 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21814 : Bundle := named_bundle% "RealMapCertificates/relations/basis21814.json"
theorem reductionProof21814 : EqualModuloRelations reduction21814.relations reduction21814.input reduction21814.output := by lin_cert using reduction21814.terms
theorem substitutionProof21814 : IsMapEvaluation generatorImages reduction21814.relations [8,8,1558] reduction21814.output := by lin_cert using reduction21814.terms
def image21815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21815 : InImage map_29_256 image21815 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21815 : Bundle := named_bundle% "RealMapCertificates/relations/basis21815.json"
theorem reductionProof21815 : EqualModuloRelations reduction21815.relations reduction21815.input reduction21815.output := by lin_cert using reduction21815.terms
theorem substitutionProof21815 : IsMapEvaluation generatorImages reduction21815.relations [0,8,1908] reduction21815.output := by lin_cert using reduction21815.terms
def image21816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21816 : InImage map_29_256 image21816 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21816 : Bundle := named_bundle% "RealMapCertificates/relations/basis21816.json"
theorem reductionProof21816 : EqualModuloRelations reduction21816.relations reduction21816.input reduction21816.output := by lin_cert using reduction21816.terms
theorem substitutionProof21816 : IsMapEvaluation generatorImages reduction21816.relations [0,0,2497] reduction21816.output := by lin_cert using reduction21816.terms
def image21817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21817 : InImage map_29_256 image21817 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21817 : Bundle := named_bundle% "RealMapCertificates/relations/basis21817.json"
theorem reductionProof21817 : EqualModuloRelations reduction21817.relations reduction21817.input reduction21817.output := by lin_cert using reduction21817.terms
theorem substitutionProof21817 : IsMapEvaluation generatorImages reduction21817.relations [0,0,2496] reduction21817.output := by lin_cert using reduction21817.terms
def image21818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21818 : InImage map_29_256 image21818 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21818 : Bundle := named_bundle% "RealMapCertificates/relations/basis21818.json"
theorem reductionProof21818 : EqualModuloRelations reduction21818.relations reduction21818.input reduction21818.output := by lin_cert using reduction21818.terms
theorem substitutionProof21818 : IsMapEvaluation generatorImages reduction21818.relations [0,0,3,2207] reduction21818.output := by lin_cert using reduction21818.terms
def map_29_257 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22162 : InImage map_29_257 image22162 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22162 : Bundle := named_bundle% "RealMapCertificates/relations/basis22162.json"
theorem reductionProof22162 : EqualModuloRelations reduction22162.relations reduction22162.input reduction22162.output := by lin_cert using reduction22162.terms
theorem substitutionProof22162 : IsMapEvaluation generatorImages reduction22162.relations [13,13,188,209] reduction22162.output := by lin_cert using reduction22162.terms
def image22163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22163 : InImage map_29_257 image22163 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22163 : Bundle := named_bundle% "RealMapCertificates/relations/basis22163.json"
theorem reductionProof22163 : EqualModuloRelations reduction22163.relations reduction22163.input reduction22163.output := by lin_cert using reduction22163.terms
theorem substitutionProof22163 : IsMapEvaluation generatorImages reduction22163.relations [8,1971] reduction22163.output := by lin_cert using reduction22163.terms
def image22164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22164 : InImage map_29_257 image22164 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22164 : Bundle := named_bundle% "RealMapCertificates/relations/basis22164.json"
theorem reductionProof22164 : EqualModuloRelations reduction22164.relations reduction22164.input reduction22164.output := by lin_cert using reduction22164.terms
theorem substitutionProof22164 : IsMapEvaluation generatorImages reduction22164.relations [3,2309] reduction22164.output := by lin_cert using reduction22164.terms
def image22165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22165 : InImage map_29_257 image22165 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22165 : Bundle := named_bundle% "RealMapCertificates/relations/basis22165.json"
theorem reductionProof22165 : EqualModuloRelations reduction22165.relations reduction22165.input reduction22165.output := by lin_cert using reduction22165.terms
theorem substitutionProof22165 : IsMapEvaluation generatorImages reduction22165.relations [1,2553] reduction22165.output := by lin_cert using reduction22165.terms
def image22166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22166 : InImage map_29_257 image22166 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22166 : Bundle := named_bundle% "RealMapCertificates/relations/basis22166.json"
theorem reductionProof22166 : EqualModuloRelations reduction22166.relations reduction22166.input reduction22166.output := by lin_cert using reduction22166.terms
theorem substitutionProof22166 : IsMapEvaluation generatorImages reduction22166.relations [0,0,2556] reduction22166.output := by lin_cert using reduction22166.terms
def image22167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22167 : InImage map_29_257 image22167 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22167 : Bundle := named_bundle% "RealMapCertificates/relations/basis22167.json"
theorem reductionProof22167 : EqualModuloRelations reduction22167.relations reduction22167.input reduction22167.output := by lin_cert using reduction22167.terms
theorem substitutionProof22167 : IsMapEvaluation generatorImages reduction22167.relations [0,0,8,1911] reduction22167.output := by lin_cert using reduction22167.terms
def image22168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22168 : InImage map_29_257 image22168 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22168 : Bundle := named_bundle% "RealMapCertificates/relations/basis22168.json"
theorem reductionProof22168 : EqualModuloRelations reduction22168.relations reduction22168.input reduction22168.output := by lin_cert using reduction22168.terms
theorem substitutionProof22168 : IsMapEvaluation generatorImages reduction22168.relations [0,0,0,2498] reduction22168.output := by lin_cert using reduction22168.terms
def map_29_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22521 : InImage map_29_258 image22521 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22521 : Bundle := named_bundle% "RealMapCertificates/relations/basis22521.json"
theorem reductionProof22521 : EqualModuloRelations reduction22521.relations reduction22521.input reduction22521.output := by lin_cert using reduction22521.terms
theorem substitutionProof22521 : IsMapEvaluation generatorImages reduction22521.relations [188,610] reduction22521.output := by lin_cert using reduction22521.terms
def image22522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22522 : InImage map_29_258 image22522 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22522 : Bundle := named_bundle% "RealMapCertificates/relations/basis22522.json"
theorem reductionProof22522 : EqualModuloRelations reduction22522.relations reduction22522.input reduction22522.output := by lin_cert using reduction22522.terms
theorem substitutionProof22522 : IsMapEvaluation generatorImages reduction22522.relations [9,1906] reduction22522.output := by lin_cert using reduction22522.terms
def image22523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22523 : InImage map_29_258 image22523 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22523 : Bundle := named_bundle% "RealMapCertificates/relations/basis22523.json"
theorem reductionProof22523 : EqualModuloRelations reduction22523.relations reduction22523.input reduction22523.output := by lin_cert using reduction22523.terms
theorem substitutionProof22523 : IsMapEvaluation generatorImages reduction22523.relations [9,13,13,1002] reduction22523.output := by lin_cert using reduction22523.terms
def image22524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22524 : InImage map_29_258 image22524 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22524 : Bundle := named_bundle% "RealMapCertificates/relations/basis22524.json"
theorem reductionProof22524 : EqualModuloRelations reduction22524.relations reduction22524.input reduction22524.output := by lin_cert using reduction22524.terms
theorem substitutionProof22524 : IsMapEvaluation generatorImages reduction22524.relations [2,2495] reduction22524.output := by lin_cert using reduction22524.terms
def image22525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22525 : InImage map_29_258 image22525 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22525 : Bundle := named_bundle% "RealMapCertificates/relations/basis22525.json"
theorem reductionProof22525 : EqualModuloRelations reduction22525.relations reduction22525.input reduction22525.output := by lin_cert using reduction22525.terms
theorem substitutionProof22525 : IsMapEvaluation generatorImages reduction22525.relations [2,2494] reduction22525.output := by lin_cert using reduction22525.terms
def image22526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22526 : InImage map_29_258 image22526 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22526 : Bundle := named_bundle% "RealMapCertificates/relations/basis22526.json"
theorem reductionProof22526 : EqualModuloRelations reduction22526.relations reduction22526.input reduction22526.output := by lin_cert using reduction22526.terms
theorem substitutionProof22526 : IsMapEvaluation generatorImages reduction22526.relations [1,1,2497] reduction22526.output := by lin_cert using reduction22526.terms
def image22527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22527 : InImage map_29_258 image22527 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22527 : Bundle := named_bundle% "RealMapCertificates/relations/basis22527.json"
theorem reductionProof22527 : EqualModuloRelations reduction22527.relations reduction22527.input reduction22527.output := by lin_cert using reduction22527.terms
theorem substitutionProof22527 : IsMapEvaluation generatorImages reduction22527.relations [1,1,2496] reduction22527.output := by lin_cert using reduction22527.terms
def image22528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22528 : InImage map_29_258 image22528 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22528 : Bundle := named_bundle% "RealMapCertificates/relations/basis22528.json"
theorem reductionProof22528 : EqualModuloRelations reduction22528.relations reduction22528.input reduction22528.output := by lin_cert using reduction22528.terms
theorem substitutionProof22528 : IsMapEvaluation generatorImages reduction22528.relations [0,0,0,7,1971] reduction22528.output := by lin_cert using reduction22528.terms
def map_29_259 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22816 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22816 : InImage map_29_259 image22816 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22816 : Bundle := named_bundle% "RealMapCertificates/relations/basis22816.json"
theorem reductionProof22816 : EqualModuloRelations reduction22816.relations reduction22816.input reduction22816.output := by lin_cert using reduction22816.terms
theorem substitutionProof22816 : IsMapEvaluation generatorImages reduction22816.relations [2746] reduction22816.output := by lin_cert using reduction22816.terms
def image22817 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22817 : InImage map_29_259 image22817 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22817 : Bundle := named_bundle% "RealMapCertificates/relations/basis22817.json"
theorem reductionProof22817 : EqualModuloRelations reduction22817.relations reduction22817.input reduction22817.output := by lin_cert using reduction22817.terms
theorem substitutionProof22817 : IsMapEvaluation generatorImages reduction22817.relations [2745] reduction22817.output := by lin_cert using reduction22817.terms
def image22818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22818 : InImage map_29_259 image22818 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22818 : Bundle := named_bundle% "RealMapCertificates/relations/basis22818.json"
theorem reductionProof22818 : EqualModuloRelations reduction22818.relations reduction22818.input reduction22818.output := by lin_cert using reduction22818.terms
theorem substitutionProof22818 : IsMapEvaluation generatorImages reduction22818.relations [13,13,13,13,682] reduction22818.output := by lin_cert using reduction22818.terms
def image22819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22819 : InImage map_29_259 image22819 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22819 : Bundle := named_bundle% "RealMapCertificates/relations/basis22819.json"
theorem reductionProof22819 : EqualModuloRelations reduction22819.relations reduction22819.input reduction22819.output := by lin_cert using reduction22819.terms
theorem substitutionProof22819 : IsMapEvaluation generatorImages reduction22819.relations [13,13,13,13,681] reduction22819.output := by lin_cert using reduction22819.terms
def image22820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22820 : InImage map_29_259 image22820 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22820 : Bundle := named_bundle% "RealMapCertificates/relations/basis22820.json"
theorem reductionProof22820 : EqualModuloRelations reduction22820.relations reduction22820.input reduction22820.output := by lin_cert using reduction22820.terms
theorem substitutionProof22820 : IsMapEvaluation generatorImages reduction22820.relations [8,2045] reduction22820.output := by lin_cert using reduction22820.terms
def image22821 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22821 : InImage map_29_259 image22821 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22821 : Bundle := named_bundle% "RealMapCertificates/relations/basis22821.json"
theorem reductionProof22821 : EqualModuloRelations reduction22821.relations reduction22821.input reduction22821.output := by lin_cert using reduction22821.terms
theorem substitutionProof22821 : IsMapEvaluation generatorImages reduction22821.relations [8,8,1611] reduction22821.output := by lin_cert using reduction22821.terms
def image22822 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22822 : InImage map_29_259 image22822 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22822 : Bundle := named_bundle% "RealMapCertificates/relations/basis22822.json"
theorem reductionProof22822 : EqualModuloRelations reduction22822.relations reduction22822.input reduction22822.output := by lin_cert using reduction22822.terms
theorem substitutionProof22822 : IsMapEvaluation generatorImages reduction22822.relations [1,2631] reduction22822.output := by lin_cert using reduction22822.terms
def image22823 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22823 : InImage map_29_259 image22823 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22823 : Bundle := named_bundle% "RealMapCertificates/relations/basis22823.json"
theorem reductionProof22823 : EqualModuloRelations reduction22823.relations reduction22823.input reduction22823.output := by lin_cert using reduction22823.terms
theorem substitutionProof22823 : IsMapEvaluation generatorImages reduction22823.relations [0,8,2005] reduction22823.output := by lin_cert using reduction22823.terms
def image22824 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22824 : InImage map_29_259 image22824 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22824 : Bundle := named_bundle% "RealMapCertificates/relations/basis22824.json"
theorem reductionProof22824 : EqualModuloRelations reduction22824.relations reduction22824.input reduction22824.output := by lin_cert using reduction22824.terms
theorem substitutionProof22824 : IsMapEvaluation generatorImages reduction22824.relations [0,2,2496] reduction22824.output := by lin_cert using reduction22824.terms
def map_29_260 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23195 : InImage map_29_260 image23195 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23195 : Bundle := named_bundle% "RealMapCertificates/relations/basis23195.json"
theorem reductionProof23195 : EqualModuloRelations reduction23195.relations reduction23195.input reduction23195.output := by lin_cert using reduction23195.terms
theorem substitutionProof23195 : IsMapEvaluation generatorImages reduction23195.relations [2800] reduction23195.output := by lin_cert using reduction23195.terms
def image23196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23196 : InImage map_29_260 image23196 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23196 : Bundle := named_bundle% "RealMapCertificates/relations/basis23196.json"
theorem reductionProof23196 : EqualModuloRelations reduction23196.relations reduction23196.input reduction23196.output := by lin_cert using reduction23196.terms
theorem substitutionProof23196 : IsMapEvaluation generatorImages reduction23196.relations [2799] reduction23196.output := by lin_cert using reduction23196.terms
def image23197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23197 : InImage map_29_260 image23197 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23197 : Bundle := named_bundle% "RealMapCertificates/relations/basis23197.json"
theorem reductionProof23197 : EqualModuloRelations reduction23197.relations reduction23197.input reduction23197.output := by lin_cert using reduction23197.terms
theorem substitutionProof23197 : IsMapEvaluation generatorImages reduction23197.relations [188,628] reduction23197.output := by lin_cert using reduction23197.terms
def image23198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23198 : InImage map_29_260 image23198 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23198 : Bundle := named_bundle% "RealMapCertificates/relations/basis23198.json"
theorem reductionProof23198 : EqualModuloRelations reduction23198.relations reduction23198.input reduction23198.output := by lin_cert using reduction23198.terms
theorem substitutionProof23198 : IsMapEvaluation generatorImages reduction23198.relations [8,2063] reduction23198.output := by lin_cert using reduction23198.terms
def image23199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23199 : InImage map_29_260 image23199 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23199 : Bundle := named_bundle% "RealMapCertificates/relations/basis23199.json"
theorem reductionProof23199 : EqualModuloRelations reduction23199.relations reduction23199.input reduction23199.output := by lin_cert using reduction23199.terms
theorem substitutionProof23199 : IsMapEvaluation generatorImages reduction23199.relations [0,2747] reduction23199.output := by lin_cert using reduction23199.terms
def image23200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23200 : InImage map_29_260 image23200 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23200 : Bundle := named_bundle% "RealMapCertificates/relations/basis23200.json"
theorem reductionProof23200 : EqualModuloRelations reduction23200.relations reduction23200.input reduction23200.output := by lin_cert using reduction23200.terms
theorem substitutionProof23200 : IsMapEvaluation generatorImages reduction23200.relations [0,43,1386] reduction23200.output := by lin_cert using reduction23200.terms
def image23201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23201 : InImage map_29_260 image23201 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23201 : Bundle := named_bundle% "RealMapCertificates/relations/basis23201.json"
theorem reductionProof23201 : EqualModuloRelations reduction23201.relations reduction23201.input reduction23201.output := by lin_cert using reduction23201.terms
theorem substitutionProof23201 : IsMapEvaluation generatorImages reduction23201.relations [0,7,2100] reduction23201.output := by lin_cert using reduction23201.terms
def image23202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23202 : InImage map_29_260 image23202 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23202 : Bundle := named_bundle% "RealMapCertificates/relations/basis23202.json"
theorem reductionProof23202 : EqualModuloRelations reduction23202.relations reduction23202.input reduction23202.output := by lin_cert using reduction23202.terms
theorem substitutionProof23202 : IsMapEvaluation generatorImages reduction23202.relations [0,0,8,2006] reduction23202.output := by lin_cert using reduction23202.terms
def image23203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23203 : InImage map_29_260 image23203 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23203 : Bundle := named_bundle% "RealMapCertificates/relations/basis23203.json"
theorem reductionProof23203 : EqualModuloRelations reduction23203.relations reduction23203.input reduction23203.output := by lin_cert using reduction23203.terms
theorem substitutionProof23203 : IsMapEvaluation generatorImages reduction23203.relations [0,0,0,7,2045] reduction23203.output := by lin_cert using reduction23203.terms
def map_29_261 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image23639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23639 : InImage map_29_261 image23639 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23639 : Bundle := named_bundle% "RealMapCertificates/relations/basis23639.json"
theorem reductionProof23639 : EqualModuloRelations reduction23639.relations reduction23639.input reduction23639.output := by lin_cert using reduction23639.terms
theorem substitutionProof23639 : IsMapEvaluation generatorImages reduction23639.relations [13,1906] reduction23639.output := by lin_cert using reduction23639.terms
def image23640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23640 : InImage map_29_261 image23640 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23640 : Bundle := named_bundle% "RealMapCertificates/relations/basis23640.json"
theorem reductionProof23640 : EqualModuloRelations reduction23640.relations reduction23640.input reduction23640.output := by lin_cert using reduction23640.terms
theorem substitutionProof23640 : IsMapEvaluation generatorImages reduction23640.relations [13,13,13,1002] reduction23640.output := by lin_cert using reduction23640.terms
def image23641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23641 : InImage map_29_261 image23641 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23641 : Bundle := named_bundle% "RealMapCertificates/relations/basis23641.json"
theorem reductionProof23641 : EqualModuloRelations reduction23641.relations reduction23641.input reduction23641.output := by lin_cert using reduction23641.terms
theorem substitutionProof23641 : IsMapEvaluation generatorImages reduction23641.relations [8,2103] reduction23641.output := by lin_cert using reduction23641.terms
def image23642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23642 : InImage map_29_261 image23642 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23642 : Bundle := named_bundle% "RealMapCertificates/relations/basis23642.json"
theorem reductionProof23642 : EqualModuloRelations reduction23642.relations reduction23642.input reduction23642.output := by lin_cert using reduction23642.terms
theorem substitutionProof23642 : IsMapEvaluation generatorImages reduction23642.relations [0,2803] reduction23642.output := by lin_cert using reduction23642.terms
def image23643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23643 : InImage map_29_261 image23643 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23643 : Bundle := named_bundle% "RealMapCertificates/relations/basis23643.json"
theorem reductionProof23643 : EqualModuloRelations reduction23643.relations reduction23643.input reduction23643.output := by lin_cert using reduction23643.terms
theorem substitutionProof23643 : IsMapEvaluation generatorImages reduction23643.relations [0,2802] reduction23643.output := by lin_cert using reduction23643.terms
def image23644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23644 : InImage map_29_261 image23644 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23644 : Bundle := named_bundle% "RealMapCertificates/relations/basis23644.json"
theorem reductionProof23644 : EqualModuloRelations reduction23644.relations reduction23644.input reduction23644.output := by lin_cert using reduction23644.terms
theorem substitutionProof23644 : IsMapEvaluation generatorImages reduction23644.relations [0,0,2748] reduction23644.output := by lin_cert using reduction23644.terms
def image23645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23645 : InImage map_29_261 image23645 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23645 : Bundle := named_bundle% "RealMapCertificates/relations/basis23645.json"
theorem reductionProof23645 : EqualModuloRelations reduction23645.relations reduction23645.input reduction23645.output := by lin_cert using reduction23645.terms
theorem substitutionProof23645 : IsMapEvaluation generatorImages reduction23645.relations [0,0,0,2682] reduction23645.output := by lin_cert using reduction23645.terms
def map_30_30 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image92 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation92 : InImage map_30_30 image92 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction92 : Bundle := named_bundle% "RealMapCertificates/relations/basis92.json"
theorem reductionProof92 : EqualModuloRelations reduction92.relations reduction92.input reduction92.output := by lin_cert using reduction92.terms
theorem substitutionProof92 : IsMapEvaluation generatorImages reduction92.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction92.output := by lin_cert using reduction92.terms
def map_30_88 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image909 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation909 : InImage map_30_88 image909 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction909 : Bundle := named_bundle% "RealMapCertificates/relations/basis909.json"
theorem reductionProof909 : EqualModuloRelations reduction909.relations reduction909.input reduction909.output := by lin_cert using reduction909.terms
theorem substitutionProof909 : IsMapEvaluation generatorImages reduction909.relations [1,135] reduction909.output := by lin_cert using reduction909.terms
def map_30_89 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image936 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation936 : InImage map_30_89 image936 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction936 : Bundle := named_bundle% "RealMapCertificates/relations/basis936.json"
theorem reductionProof936 : EqualModuloRelations reduction936.relations reduction936.input reduction936.output := by lin_cert using reduction936.terms
theorem substitutionProof936 : IsMapEvaluation generatorImages reduction936.relations [0,140] reduction936.output := by lin_cert using reduction936.terms
def map_30_92 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1017 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1017 : InImage map_30_92 image1017 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1017 : Bundle := named_bundle% "RealMapCertificates/relations/basis1017.json"
theorem reductionProof1017 : EqualModuloRelations reduction1017.relations reduction1017.input reduction1017.output := by lin_cert using reduction1017.terms
theorem substitutionProof1017 : IsMapEvaluation generatorImages reduction1017.relations [0,0,145] reduction1017.output := by lin_cert using reduction1017.terms
def map_30_93 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1039 : InImage map_30_93 image1039 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1039 : Bundle := named_bundle% "RealMapCertificates/relations/basis1039.json"
theorem reductionProof1039 : EqualModuloRelations reduction1039.relations reduction1039.input reduction1039.output := by lin_cert using reduction1039.terms
theorem substitutionProof1039 : IsMapEvaluation generatorImages reduction1039.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction1039.output := by lin_cert using reduction1039.terms
def map_30_94 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1070 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1070 : InImage map_30_94 image1070 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1070 : Bundle := named_bundle% "RealMapCertificates/relations/basis1070.json"
theorem reductionProof1070 : EqualModuloRelations reduction1070.relations reduction1070.input reduction1070.output := by lin_cert using reduction1070.terms
theorem substitutionProof1070 : IsMapEvaluation generatorImages reduction1070.relations [1,1,145] reduction1070.output := by lin_cert using reduction1070.terms
def map_30_95 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1094 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1094 : InImage map_30_95 image1094 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1094 : Bundle := named_bundle% "RealMapCertificates/relations/basis1094.json"
theorem reductionProof1094 : EqualModuloRelations reduction1094.relations reduction1094.input reduction1094.output := by lin_cert using reduction1094.terms
theorem substitutionProof1094 : IsMapEvaluation generatorImages reduction1094.relations [0,0,152] reduction1094.output := by lin_cert using reduction1094.terms
def map_30_98 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1163 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1163 : InImage map_30_98 image1163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1163 : Bundle := named_bundle% "RealMapCertificates/relations/basis1163.json"
theorem reductionProof1163 : EqualModuloRelations reduction1163.relations reduction1163.input reduction1163.output := by lin_cert using reduction1163.terms
theorem substitutionProof1163 : IsMapEvaluation generatorImages reduction1163.relations [0,0,8,110] reduction1163.output := by lin_cert using reduction1163.terms
def map_30_101 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1248 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1248 : InImage map_30_101 image1248 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1248 : Bundle := named_bundle% "RealMapCertificates/relations/basis1248.json"
theorem reductionProof1248 : EqualModuloRelations reduction1248.relations reduction1248.input reduction1248.output := by lin_cert using reduction1248.terms
theorem substitutionProof1248 : IsMapEvaluation generatorImages reduction1248.relations [0,0,8,116] reduction1248.output := by lin_cert using reduction1248.terms
def map_30_104 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1344 : InImage map_30_104 image1344 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1344 : Bundle := named_bundle% "RealMapCertificates/relations/basis1344.json"
theorem reductionProof1344 : EqualModuloRelations reduction1344.relations reduction1344.input reduction1344.output := by lin_cert using reduction1344.terms
theorem substitutionProof1344 : IsMapEvaluation generatorImages reduction1344.relations [0,0,8,8,71] reduction1344.output := by lin_cert using reduction1344.terms
def map_30_108 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1472 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1472 : InImage map_30_108 image1472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1472 : Bundle := named_bundle% "RealMapCertificates/relations/basis1472.json"
theorem reductionProof1472 : EqualModuloRelations reduction1472.relations reduction1472.input reduction1472.output := by lin_cert using reduction1472.terms
theorem substitutionProof1472 : IsMapEvaluation generatorImages reduction1472.relations [17,111] reduction1472.output := by lin_cert using reduction1472.terms
def map_30_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1525 : InImage map_30_109 image1525 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1525 : Bundle := named_bundle% "RealMapCertificates/relations/basis1525.json"
theorem reductionProof1525 : EqualModuloRelations reduction1525.relations reduction1525.input reduction1525.output := by lin_cert using reduction1525.terms
theorem substitutionProof1525 : IsMapEvaluation generatorImages reduction1525.relations [0,210] reduction1525.output := by lin_cert using reduction1525.terms
def map_30_110 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image1557 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation1557 : InImage map_30_110 image1557 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1557 : Bundle := named_bundle% "RealMapCertificates/relations/basis1557.json"
theorem reductionProof1557 : EqualModuloRelations reduction1557.relations reduction1557.input reduction1557.output := by lin_cert using reduction1557.terms
theorem substitutionProof1557 : IsMapEvaluation generatorImages reduction1557.relations [1,210] reduction1557.output := by lin_cert using reduction1557.terms
def map_30_111 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1593 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1593 : InImage map_30_111 image1593 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1593 : Bundle := named_bundle% "RealMapCertificates/relations/basis1593.json"
theorem reductionProof1593 : EqualModuloRelations reduction1593.relations reduction1593.input reduction1593.output := by lin_cert using reduction1593.terms
theorem substitutionProof1593 : IsMapEvaluation generatorImages reduction1593.relations [17,117] reduction1593.output := by lin_cert using reduction1593.terms
def map_30_114 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1704 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1704 : InImage map_30_114 image1704 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1704 : Bundle := named_bundle% "RealMapCertificates/relations/basis1704.json"
theorem reductionProof1704 : EqualModuloRelations reduction1704.relations reduction1704.input reduction1704.output := by lin_cert using reduction1704.terms
theorem substitutionProof1704 : IsMapEvaluation generatorImages reduction1704.relations [16,17,50] reduction1704.output := by lin_cert using reduction1704.terms
def map_30_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1745 : InImage map_30_115 image1745 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1745 : Bundle := named_bundle% "RealMapCertificates/relations/basis1745.json"
theorem reductionProof1745 : EqualModuloRelations reduction1745.relations reduction1745.input reduction1745.output := by lin_cert using reduction1745.terms
theorem substitutionProof1745 : IsMapEvaluation generatorImages reduction1745.relations [0,0,0,0,224] reduction1745.output := by lin_cert using reduction1745.terms
def map_30_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1775 : InImage map_30_116 image1775 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1775 : Bundle := named_bundle% "RealMapCertificates/relations/basis1775.json"
theorem reductionProof1775 : EqualModuloRelations reduction1775.relations reduction1775.input reduction1775.output := by lin_cert using reduction1775.terms
theorem substitutionProof1775 : IsMapEvaluation generatorImages reduction1775.relations [0,0,0,0,0,225] reduction1775.output := by lin_cert using reduction1775.terms
def map_30_117 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1811 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1811 : InImage map_30_117 image1811 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1811 : Bundle := named_bundle% "RealMapCertificates/relations/basis1811.json"
theorem reductionProof1811 : EqualModuloRelations reduction1811.relations reduction1811.input reduction1811.output := by lin_cert using reduction1811.terms
theorem substitutionProof1811 : IsMapEvaluation generatorImages reduction1811.relations [8,17,78] reduction1811.output := by lin_cert using reduction1811.terms
def map_30_120 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image1922 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation1922 : InImage map_30_120 image1922 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1922 : Bundle := named_bundle% "RealMapCertificates/relations/basis1922.json"
theorem reductionProof1922 : EqualModuloRelations reduction1922.relations reduction1922.input reduction1922.output := by lin_cert using reduction1922.terms
theorem substitutionProof1922 : IsMapEvaluation generatorImages reduction1922.relations [8,8,17,50] reduction1922.output := by lin_cert using reduction1922.terms
def map_30_122 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image2007 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2007 : InImage map_30_122 image2007 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2007 : Bundle := named_bundle% "RealMapCertificates/relations/basis2007.json"
theorem reductionProof2007 : EqualModuloRelations reduction2007.relations reduction2007.input reduction2007.output := by lin_cert using reduction2007.terms
theorem substitutionProof2007 : IsMapEvaluation generatorImages reduction2007.relations [0,0,0,0,0,0,244] reduction2007.output := by lin_cert using reduction2007.terms
def map_30_123 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2043 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2043 : InImage map_30_123 image2043 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2043 : Bundle := named_bundle% "RealMapCertificates/relations/basis2043.json"
theorem reductionProof2043 : EqualModuloRelations reduction2043.relations reduction2043.input reduction2043.output := by lin_cert using reduction2043.terms
theorem substitutionProof2043 : IsMapEvaluation generatorImages reduction2043.relations [8,8,17,56] reduction2043.output := by lin_cert using reduction2043.terms
end RealMapCertificates
