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
  | 20 => [[5,6]]
  | 23 => [[7,7]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 233 => [[5,7,9,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 278 => []
  | 291 => []
  | 292 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 300 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 344 => [[4,4,5,5,8,12]]
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 471 => []
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 500 => []
  | 509 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 558 => []
  | 598 => [[0,6,9,12,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 642 => [[7,10,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 665 => [[0,0,4,5,8,12,12]]
  | 862 => []
  | _ => []
def map_30_124 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2094 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2094 : InImage map_30_124 image2094 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2094 : Bundle := named_bundle% "RealMapCertificates/relations/basis2094.json"
theorem reductionProof2094 : EqualModuloRelations reduction2094.relations reduction2094.input reduction2094.output := by lin_cert using reduction2094.terms
theorem substitutionProof2094 : IsMapEvaluation generatorImages reduction2094.relations [0,0,0,0,0,0,0,0,245] reduction2094.output := by lin_cert using reduction2094.terms
def map_30_125 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2132 : InImage map_30_125 image2132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2132 : Bundle := named_bundle% "RealMapCertificates/relations/basis2132.json"
theorem reductionProof2132 : EqualModuloRelations reduction2132.relations reduction2132.input reduction2132.output := by lin_cert using reduction2132.terms
theorem substitutionProof2132 : IsMapEvaluation generatorImages reduction2132.relations [0,0,0,0,0,0,0,0,0,246] reduction2132.output := by lin_cert using reduction2132.terms
def map_30_126 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image2172 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2172 : InImage map_30_126 image2172 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2172 : Bundle := named_bundle% "RealMapCertificates/relations/basis2172.json"
theorem reductionProof2172 : EqualModuloRelations reduction2172.relations reduction2172.input reduction2172.output := by lin_cert using reduction2172.terms
theorem substitutionProof2172 : IsMapEvaluation generatorImages reduction2172.relations [297] reduction2172.output := by lin_cert using reduction2172.terms
def image2173 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2173 : InImage map_30_126 image2173 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2173 : Bundle := named_bundle% "RealMapCertificates/relations/basis2173.json"
theorem reductionProof2173 : EqualModuloRelations reduction2173.relations reduction2173.input reduction2173.output := by lin_cert using reduction2173.terms
theorem substitutionProof2173 : IsMapEvaluation generatorImages reduction2173.relations [8,8,16,17,17] reduction2173.output := by lin_cert using reduction2173.terms
def map_30_127 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2227 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2227 : InImage map_30_127 image2227 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2227 : Bundle := named_bundle% "RealMapCertificates/relations/basis2227.json"
theorem reductionProof2227 : EqualModuloRelations reduction2227.relations reduction2227.input reduction2227.output := by lin_cert using reduction2227.terms
theorem substitutionProof2227 : IsMapEvaluation generatorImages reduction2227.relations [0,298] reduction2227.output := by lin_cert using reduction2227.terms
def map_30_129 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2329 : InImage map_30_129 image2329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2329 : Bundle := named_bundle% "RealMapCertificates/relations/basis2329.json"
theorem reductionProof2329 : EqualModuloRelations reduction2329.relations reduction2329.input reduction2329.output := by lin_cert using reduction2329.terms
theorem substitutionProof2329 : IsMapEvaluation generatorImages reduction2329.relations [8,224] reduction2329.output := by lin_cert using reduction2329.terms
def image2330 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2330 : InImage map_30_129 image2330 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2330 : Bundle := named_bundle% "RealMapCertificates/relations/basis2330.json"
theorem reductionProof2330 : EqualModuloRelations reduction2330.relations reduction2330.input reduction2330.output := by lin_cert using reduction2330.terms
theorem substitutionProof2330 : IsMapEvaluation generatorImages reduction2330.relations [8,8,8,17,40] reduction2330.output := by lin_cert using reduction2330.terms
def map_30_130 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2390 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2390 : InImage map_30_130 image2390 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2390 : Bundle := named_bundle% "RealMapCertificates/relations/basis2390.json"
theorem reductionProof2390 : EqualModuloRelations reduction2390.relations reduction2390.input reduction2390.output := by lin_cert using reduction2390.terms
theorem substitutionProof2390 : IsMapEvaluation generatorImages reduction2390.relations [0,8,225] reduction2390.output := by lin_cert using reduction2390.terms
def map_30_132 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image2509 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2509 : InImage map_30_132 image2509 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction2509 : Bundle := named_bundle% "RealMapCertificates/relations/basis2509.json"
theorem reductionProof2509 : EqualModuloRelations reduction2509.relations reduction2509.input reduction2509.output := by lin_cert using reduction2509.terms
theorem substitutionProof2509 : IsMapEvaluation generatorImages reduction2509.relations [8,237] reduction2509.output := by lin_cert using reduction2509.terms
def image2510 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2510 : InImage map_30_132 image2510 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction2510 : Bundle := named_bundle% "RealMapCertificates/relations/basis2510.json"
theorem reductionProof2510 : EqualModuloRelations reduction2510.relations reduction2510.input reduction2510.output := by lin_cert using reduction2510.terms
theorem substitutionProof2510 : IsMapEvaluation generatorImages reduction2510.relations [8,8,8,8,17,17] reduction2510.output := by lin_cert using reduction2510.terms
def image2511 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2511 : InImage map_30_132 image2511 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction2511 : Bundle := named_bundle% "RealMapCertificates/relations/basis2511.json"
theorem reductionProof2511 : EqualModuloRelations reduction2511.relations reduction2511.input reduction2511.output := by lin_cert using reduction2511.terms
theorem substitutionProof2511 : IsMapEvaluation generatorImages reduction2511.relations [1,5,244] reduction2511.output := by lin_cert using reduction2511.terms
def map_30_133 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2587 : InImage map_30_133 image2587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2587 : Bundle := named_bundle% "RealMapCertificates/relations/basis2587.json"
theorem reductionProof2587 : EqualModuloRelations reduction2587.relations reduction2587.input reduction2587.output := by lin_cert using reduction2587.terms
theorem substitutionProof2587 : IsMapEvaluation generatorImages reduction2587.relations [0,8,238] reduction2587.output := by lin_cert using reduction2587.terms
def image2588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2588 : InImage map_30_133 image2588 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2588 : Bundle := named_bundle% "RealMapCertificates/relations/basis2588.json"
theorem reductionProof2588 : EqualModuloRelations reduction2588.relations reduction2588.input reduction2588.output := by lin_cert using reduction2588.terms
theorem substitutionProof2588 : IsMapEvaluation generatorImages reduction2588.relations [0,0,343] reduction2588.output := by lin_cert using reduction2588.terms
def map_30_135 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2734 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2734 : InImage map_30_135 image2734 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2734 : Bundle := named_bundle% "RealMapCertificates/relations/basis2734.json"
theorem reductionProof2734 : EqualModuloRelations reduction2734.relations reduction2734.input reduction2734.output := by lin_cert using reduction2734.terms
theorem substitutionProof2734 : IsMapEvaluation generatorImages reduction2734.relations [8,16,137] reduction2734.output := by lin_cert using reduction2734.terms
def image2735 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2735 : InImage map_30_135 image2735 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2735 : Bundle := named_bundle% "RealMapCertificates/relations/basis2735.json"
theorem reductionProof2735 : EqualModuloRelations reduction2735.relations reduction2735.input reduction2735.output := by lin_cert using reduction2735.terms
theorem substitutionProof2735 : IsMapEvaluation generatorImages reduction2735.relations [8,8,8,8,17,20] reduction2735.output := by lin_cert using reduction2735.terms
def map_30_136 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2815 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2815 : InImage map_30_136 image2815 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2815 : Bundle := named_bundle% "RealMapCertificates/relations/basis2815.json"
theorem reductionProof2815 : EqualModuloRelations reduction2815.relations reduction2815.input reduction2815.output := by lin_cert using reduction2815.terms
theorem substitutionProof2815 : IsMapEvaluation generatorImages reduction2815.relations [0,8,16,138] reduction2815.output := by lin_cert using reduction2815.terms
def image2816 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2816 : InImage map_30_136 image2816 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2816 : Bundle := named_bundle% "RealMapCertificates/relations/basis2816.json"
theorem reductionProof2816 : EqualModuloRelations reduction2816.relations reduction2816.input reduction2816.output := by lin_cert using reduction2816.terms
theorem substitutionProof2816 : IsMapEvaluation generatorImages reduction2816.relations [0,0,8,244] reduction2816.output := by lin_cert using reduction2816.terms
def map_30_138 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image2961 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2961 : InImage map_30_138 image2961 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2961 : Bundle := named_bundle% "RealMapCertificates/relations/basis2961.json"
theorem reductionProof2961 : EqualModuloRelations reduction2961.relations reduction2961.input reduction2961.output := by lin_cert using reduction2961.terms
theorem substitutionProof2961 : IsMapEvaluation generatorImages reduction2961.relations [8,8,184] reduction2961.output := by lin_cert using reduction2961.terms
def image2962 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2962 : InImage map_30_138 image2962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2962 : Bundle := named_bundle% "RealMapCertificates/relations/basis2962.json"
theorem reductionProof2962 : EqualModuloRelations reduction2962.relations reduction2962.input reduction2962.output := by lin_cert using reduction2962.terms
theorem substitutionProof2962 : IsMapEvaluation generatorImages reduction2962.relations [8,8,8,8,16,23] reduction2962.output := by lin_cert using reduction2962.terms
def map_30_139 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3053 : InImage map_30_139 image3053 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3053 : Bundle := named_bundle% "RealMapCertificates/relations/basis3053.json"
theorem reductionProof3053 : EqualModuloRelations reduction3053.relations reduction3053.input reduction3053.output := by lin_cert using reduction3053.terms
theorem substitutionProof3053 : IsMapEvaluation generatorImages reduction3053.relations [0,8,8,185] reduction3053.output := by lin_cert using reduction3053.terms
def image3054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3054 : InImage map_30_139 image3054 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3054 : Bundle := named_bundle% "RealMapCertificates/relations/basis3054.json"
theorem reductionProof3054 : EqualModuloRelations reduction3054.relations reduction3054.input reduction3054.output := by lin_cert using reduction3054.terms
theorem substitutionProof3054 : IsMapEvaluation generatorImages reduction3054.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,300] reduction3054.output := by lin_cert using reduction3054.terms
def map_30_141 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3217 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3217 : InImage map_30_141 image3217 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3217 : Bundle := named_bundle% "RealMapCertificates/relations/basis3217.json"
theorem reductionProof3217 : EqualModuloRelations reduction3217.relations reduction3217.input reduction3217.output := by lin_cert using reduction3217.terms
theorem substitutionProof3217 : IsMapEvaluation generatorImages reduction3217.relations [8,8,8,137] reduction3217.output := by lin_cert using reduction3217.terms
def image3218 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3218 : InImage map_30_141 image3218 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3218 : Bundle := named_bundle% "RealMapCertificates/relations/basis3218.json"
theorem reductionProof3218 : EqualModuloRelations reduction3218.relations reduction3218.input reduction3218.output := by lin_cert using reduction3218.terms
theorem substitutionProof3218 : IsMapEvaluation generatorImages reduction3218.relations [8,8,8,8,8,45] reduction3218.output := by lin_cert using reduction3218.terms
def map_30_142 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3299 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3299 : InImage map_30_142 image3299 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3299 : Bundle := named_bundle% "RealMapCertificates/relations/basis3299.json"
theorem reductionProof3299 : EqualModuloRelations reduction3299.relations reduction3299.input reduction3299.output := by lin_cert using reduction3299.terms
theorem substitutionProof3299 : IsMapEvaluation generatorImages reduction3299.relations [1,453] reduction3299.output := by lin_cert using reduction3299.terms
def image3300 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3300 : InImage map_30_142 image3300 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3300 : Bundle := named_bundle% "RealMapCertificates/relations/basis3300.json"
theorem reductionProof3300 : EqualModuloRelations reduction3300.relations reduction3300.input reduction3300.output := by lin_cert using reduction3300.terms
theorem substitutionProof3300 : IsMapEvaluation generatorImages reduction3300.relations [0,8,8,8,138] reduction3300.output := by lin_cert using reduction3300.terms
def map_30_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3374 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3374 : InImage map_30_143 image3374 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3374 : Bundle := named_bundle% "RealMapCertificates/relations/basis3374.json"
theorem reductionProof3374 : EqualModuloRelations reduction3374.relations reduction3374.input reduction3374.output := by lin_cert using reduction3374.terms
theorem substitutionProof3374 : IsMapEvaluation generatorImages reduction3374.relations [489] reduction3374.output := by lin_cert using reduction3374.terms
def map_30_144 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3461 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3461 : InImage map_30_144 image3461 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3461 : Bundle := named_bundle% "RealMapCertificates/relations/basis3461.json"
theorem reductionProof3461 : EqualModuloRelations reduction3461.relations reduction3461.input reduction3461.output := by lin_cert using reduction3461.terms
theorem substitutionProof3461 : IsMapEvaluation generatorImages reduction3461.relations [8,8,8,146] reduction3461.output := by lin_cert using reduction3461.terms
def image3462 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3462 : InImage map_30_144 image3462 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3462 : Bundle := named_bundle% "RealMapCertificates/relations/basis3462.json"
theorem reductionProof3462 : EqualModuloRelations reduction3462.relations reduction3462.input reduction3462.output := by lin_cert using reduction3462.terms
theorem substitutionProof3462 : IsMapEvaluation generatorImages reduction3462.relations [8,8,8,8,8,8,23] reduction3462.output := by lin_cert using reduction3462.terms
def map_30_146 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3613 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3613 : InImage map_30_146 image3613 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3613 : Bundle := named_bundle% "RealMapCertificates/relations/basis3613.json"
theorem reductionProof3613 : EqualModuloRelations reduction3613.relations reduction3613.input reduction3613.output := by lin_cert using reduction3613.terms
theorem substitutionProof3613 : IsMapEvaluation generatorImages reduction3613.relations [16,245] reduction3613.output := by lin_cert using reduction3613.terms
def map_30_147 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3720 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3720 : InImage map_30_147 image3720 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3720 : Bundle := named_bundle% "RealMapCertificates/relations/basis3720.json"
theorem reductionProof3720 : EqualModuloRelations reduction3720.relations reduction3720.input reduction3720.output := by lin_cert using reduction3720.terms
theorem substitutionProof3720 : IsMapEvaluation generatorImages reduction3720.relations [8,8,8,16,64] reduction3720.output := by lin_cert using reduction3720.terms
def image3721 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3721 : InImage map_30_147 image3721 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3721 : Bundle := named_bundle% "RealMapCertificates/relations/basis3721.json"
theorem reductionProof3721 : EqualModuloRelations reduction3721.relations reduction3721.input reduction3721.output := by lin_cert using reduction3721.terms
theorem substitutionProof3721 : IsMapEvaluation generatorImages reduction3721.relations [8,8,8,8,8,9,23] reduction3721.output := by lin_cert using reduction3721.terms
def image3722 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3722 : InImage map_30_147 image3722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3722 : Bundle := named_bundle% "RealMapCertificates/relations/basis3722.json"
theorem reductionProof3722 : EqualModuloRelations reduction3722.relations reduction3722.input reduction3722.output := by lin_cert using reduction3722.terms
theorem substitutionProof3722 : IsMapEvaluation generatorImages reduction3722.relations [0,0,0,0,491] reduction3722.output := by lin_cert using reduction3722.terms
def map_30_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3807 : InImage map_30_148 image3807 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3807 : Bundle := named_bundle% "RealMapCertificates/relations/basis3807.json"
theorem reductionProof3807 : EqualModuloRelations reduction3807.relations reduction3807.input reduction3807.output := by lin_cert using reduction3807.terms
theorem substitutionProof3807 : IsMapEvaluation generatorImages reduction3807.relations [0,0,0,509] reduction3807.output := by lin_cert using reduction3807.terms
def map_30_149 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3886 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3886 : InImage map_30_149 image3886 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3886 : Bundle := named_bundle% "RealMapCertificates/relations/basis3886.json"
theorem reductionProof3886 : EqualModuloRelations reduction3886.relations reduction3886.input reduction3886.output := by lin_cert using reduction3886.terms
theorem substitutionProof3886 : IsMapEvaluation generatorImages reduction3886.relations [8,344] reduction3886.output := by lin_cert using reduction3886.terms
def map_30_150 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3977 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3977 : InImage map_30_150 image3977 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3977 : Bundle := named_bundle% "RealMapCertificates/relations/basis3977.json"
theorem reductionProof3977 : EqualModuloRelations reduction3977.relations reduction3977.input reduction3977.output := by lin_cert using reduction3977.terms
theorem substitutionProof3977 : IsMapEvaluation generatorImages reduction3977.relations [8,8,8,8,112] reduction3977.output := by lin_cert using reduction3977.terms
def image3978 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3978 : InImage map_30_150 image3978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3978 : Bundle := named_bundle% "RealMapCertificates/relations/basis3978.json"
theorem reductionProof3978 : EqualModuloRelations reduction3978.relations reduction3978.input reduction3978.output := by lin_cert using reduction3978.terms
theorem substitutionProof3978 : IsMapEvaluation generatorImages reduction3978.relations [8,8,8,8,8,13,23] reduction3978.output := by lin_cert using reduction3978.terms
def map_30_152 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image4155 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4155 : InImage map_30_152 image4155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4155 : Bundle := named_bundle% "RealMapCertificates/relations/basis4155.json"
theorem reductionProof4155 : EqualModuloRelations reduction4155.relations reduction4155.input reduction4155.output := by lin_cert using reduction4155.terms
theorem substitutionProof4155 : IsMapEvaluation generatorImages reduction4155.relations [8,8,245] reduction4155.output := by lin_cert using reduction4155.terms
def image4156 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4156 : InImage map_30_152 image4156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4156 : Bundle := named_bundle% "RealMapCertificates/relations/basis4156.json"
theorem reductionProof4156 : EqualModuloRelations reduction4156.relations reduction4156.input reduction4156.output := by lin_cert using reduction4156.terms
theorem substitutionProof4156 : IsMapEvaluation generatorImages reduction4156.relations [0,0,64,137] reduction4156.output := by lin_cert using reduction4156.terms
def map_30_153 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4257 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4257 : InImage map_30_153 image4257 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4257 : Bundle := named_bundle% "RealMapCertificates/relations/basis4257.json"
theorem reductionProof4257 : EqualModuloRelations reduction4257.relations reduction4257.input reduction4257.output := by lin_cert using reduction4257.terms
theorem substitutionProof4257 : IsMapEvaluation generatorImages reduction4257.relations [8,8,8,8,9,13,23] reduction4257.output := by lin_cert using reduction4257.terms
def image4258 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4258 : InImage map_30_153 image4258 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4258 : Bundle := named_bundle% "RealMapCertificates/relations/basis4258.json"
theorem reductionProof4258 : EqualModuloRelations reduction4258.relations reduction4258.input reduction4258.output := by lin_cert using reduction4258.terms
theorem substitutionProof4258 : IsMapEvaluation generatorImages reduction4258.relations [8,8,8,8,8,64] reduction4258.output := by lin_cert using reduction4258.terms
def image4259 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4259 : InImage map_30_153 image4259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4259 : Bundle := named_bundle% "RealMapCertificates/relations/basis4259.json"
theorem reductionProof4259 : EqualModuloRelations reduction4259.relations reduction4259.input reduction4259.output := by lin_cert using reduction4259.terms
theorem substitutionProof4259 : IsMapEvaluation generatorImages reduction4259.relations [0,0,0,64,138] reduction4259.output := by lin_cert using reduction4259.terms
def map_30_154 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4335 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4335 : InImage map_30_154 image4335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4335 : Bundle := named_bundle% "RealMapCertificates/relations/basis4335.json"
theorem reductionProof4335 : EqualModuloRelations reduction4335.relations reduction4335.input reduction4335.output := by lin_cert using reduction4335.terms
theorem substitutionProof4335 : IsMapEvaluation generatorImages reduction4335.relations [1,1,64,137] reduction4335.output := by lin_cert using reduction4335.terms
def image4336 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4336 : InImage map_30_154 image4336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4336 : Bundle := named_bundle% "RealMapCertificates/relations/basis4336.json"
theorem reductionProof4336 : EqualModuloRelations reduction4336.relations reduction4336.input reduction4336.output := by lin_cert using reduction4336.terms
theorem substitutionProof4336 : IsMapEvaluation generatorImages reduction4336.relations [0,0,0,0,0,17,260] reduction4336.output := by lin_cert using reduction4336.terms
def map_30_155 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4411 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4411 : InImage map_30_155 image4411 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4411 : Bundle := named_bundle% "RealMapCertificates/relations/basis4411.json"
theorem reductionProof4411 : EqualModuloRelations reduction4411.relations reduction4411.input reduction4411.output := by lin_cert using reduction4411.terms
theorem substitutionProof4411 : IsMapEvaluation generatorImages reduction4411.relations [8,8,258] reduction4411.output := by lin_cert using reduction4411.terms
def image4412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4412 : InImage map_30_155 image4412 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4412 : Bundle := named_bundle% "RealMapCertificates/relations/basis4412.json"
theorem reductionProof4412 : EqualModuloRelations reduction4412.relations reduction4412.input reduction4412.output := by lin_cert using reduction4412.terms
theorem substitutionProof4412 : IsMapEvaluation generatorImages reduction4412.relations [0,0,0,0,0,558] reduction4412.output := by lin_cert using reduction4412.terms
def map_30_156 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4504 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4504 : InImage map_30_156 image4504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4504 : Bundle := named_bundle% "RealMapCertificates/relations/basis4504.json"
theorem reductionProof4504 : EqualModuloRelations reduction4504.relations reduction4504.input reduction4504.output := by lin_cert using reduction4504.terms
theorem substitutionProof4504 : IsMapEvaluation generatorImages reduction4504.relations [8,8,8,8,13,13,23] reduction4504.output := by lin_cert using reduction4504.terms
def image4505 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4505 : InImage map_30_156 image4505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4505 : Bundle := named_bundle% "RealMapCertificates/relations/basis4505.json"
theorem reductionProof4505 : EqualModuloRelations reduction4505.relations reduction4505.input reduction4505.output := by lin_cert using reduction4505.terms
theorem substitutionProof4505 : IsMapEvaluation generatorImages reduction4505.relations [8,8,8,8,8,72] reduction4505.output := by lin_cert using reduction4505.terms
def image4506 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4506 : InImage map_30_156 image4506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4506 : Bundle := named_bundle% "RealMapCertificates/relations/basis4506.json"
theorem reductionProof4506 : EqualModuloRelations reduction4506.relations reduction4506.input reduction4506.output := by lin_cert using reduction4506.terms
theorem substitutionProof4506 : IsMapEvaluation generatorImages reduction4506.relations [0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4506.output := by lin_cert using reduction4506.terms
def map_30_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4600 : InImage map_30_157 image4600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4600 : Bundle := named_bundle% "RealMapCertificates/relations/basis4600.json"
theorem reductionProof4600 : EqualModuloRelations reduction4600.relations reduction4600.input reduction4600.output := by lin_cert using reduction4600.terms
theorem substitutionProof4600 : IsMapEvaluation generatorImages reduction4600.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4600.output := by lin_cert using reduction4600.terms
def map_30_158 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image4676 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4676 : InImage map_30_158 image4676 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4676 : Bundle := named_bundle% "RealMapCertificates/relations/basis4676.json"
theorem reductionProof4676 : EqualModuloRelations reduction4676.relations reduction4676.input reduction4676.output := by lin_cert using reduction4676.terms
theorem substitutionProof4676 : IsMapEvaluation generatorImages reduction4676.relations [623] reduction4676.output := by lin_cert using reduction4676.terms
def image4677 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4677 : InImage map_30_158 image4677 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4677 : Bundle := named_bundle% "RealMapCertificates/relations/basis4677.json"
theorem reductionProof4677 : EqualModuloRelations reduction4677.relations reduction4677.input reduction4677.output := by lin_cert using reduction4677.terms
theorem substitutionProof4677 : IsMapEvaluation generatorImages reduction4677.relations [8,8,277] reduction4677.output := by lin_cert using reduction4677.terms
def map_30_159 : Matrix 2 4 := fun i j => ([false,true,false,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image4775 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation4775 : InImage map_30_159 image4775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction4775 : Bundle := named_bundle% "RealMapCertificates/relations/basis4775.json"
theorem reductionProof4775 : EqualModuloRelations reduction4775.relations reduction4775.input reduction4775.output := by lin_cert using reduction4775.terms
theorem substitutionProof4775 : IsMapEvaluation generatorImages reduction4775.relations [637] reduction4775.output := by lin_cert using reduction4775.terms
def image4776 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4776 : InImage map_30_159 image4776 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction4776 : Bundle := named_bundle% "RealMapCertificates/relations/basis4776.json"
theorem reductionProof4776 : EqualModuloRelations reduction4776.relations reduction4776.input reduction4776.output := by lin_cert using reduction4776.terms
theorem substitutionProof4776 : IsMapEvaluation generatorImages reduction4776.relations [8,8,8,9,13,13,23] reduction4776.output := by lin_cert using reduction4776.terms
def image4777 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4777 : InImage map_30_159 image4777 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction4777 : Bundle := named_bundle% "RealMapCertificates/relations/basis4777.json"
theorem reductionProof4777 : EqualModuloRelations reduction4777.relations reduction4777.input reduction4777.output := by lin_cert using reduction4777.terms
theorem substitutionProof4777 : IsMapEvaluation generatorImages reduction4777.relations [8,8,8,8,8,79] reduction4777.output := by lin_cert using reduction4777.terms
def image4778 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4778 : InImage map_30_159 image4778 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction4778 : Bundle := named_bundle% "RealMapCertificates/relations/basis4778.json"
theorem reductionProof4778 : EqualModuloRelations reduction4778.relations reduction4778.input reduction4778.output := by lin_cert using reduction4778.terms
theorem substitutionProof4778 : IsMapEvaluation generatorImages reduction4778.relations [0,0,0,0,64,149] reduction4778.output := by lin_cert using reduction4778.terms
def map_30_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4857 : InImage map_30_160 image4857 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4857 : Bundle := named_bundle% "RealMapCertificates/relations/basis4857.json"
theorem reductionProof4857 : EqualModuloRelations reduction4857.relations reduction4857.input reduction4857.output := by lin_cert using reduction4857.terms
theorem substitutionProof4857 : IsMapEvaluation generatorImages reduction4857.relations [0,0,0,0,0,598] reduction4857.output := by lin_cert using reduction4857.terms
def map_30_161 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4941 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4941 : InImage map_30_161 image4941 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4941 : Bundle := named_bundle% "RealMapCertificates/relations/basis4941.json"
theorem reductionProof4941 : EqualModuloRelations reduction4941.relations reduction4941.input reduction4941.output := by lin_cert using reduction4941.terms
theorem substitutionProof4941 : IsMapEvaluation generatorImages reduction4941.relations [8,491] reduction4941.output := by lin_cert using reduction4941.terms
def image4942 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4942 : InImage map_30_161 image4942 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4942 : Bundle := named_bundle% "RealMapCertificates/relations/basis4942.json"
theorem reductionProof4942 : EqualModuloRelations reduction4942.relations reduction4942.input reduction4942.output := by lin_cert using reduction4942.terms
theorem substitutionProof4942 : IsMapEvaluation generatorImages reduction4942.relations [8,8,8,207] reduction4942.output := by lin_cert using reduction4942.terms
def map_30_162 : Matrix 3 3 := fun i j => ([false,true,false,true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image5044 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation5044 : InImage map_30_162 image5044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5044 : Bundle := named_bundle% "RealMapCertificates/relations/basis5044.json"
theorem reductionProof5044 : EqualModuloRelations reduction5044.relations reduction5044.input reduction5044.output := by lin_cert using reduction5044.terms
theorem substitutionProof5044 : IsMapEvaluation generatorImages reduction5044.relations [664] reduction5044.output := by lin_cert using reduction5044.terms
def image5045 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5045 : InImage map_30_162 image5045 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5045 : Bundle := named_bundle% "RealMapCertificates/relations/basis5045.json"
theorem reductionProof5045 : EqualModuloRelations reduction5045.relations reduction5045.input reduction5045.output := by lin_cert using reduction5045.terms
theorem substitutionProof5045 : IsMapEvaluation generatorImages reduction5045.relations [8,8,8,13,13,13,23] reduction5045.output := by lin_cert using reduction5045.terms
def image5046 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5046 : InImage map_30_162 image5046 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5046 : Bundle := named_bundle% "RealMapCertificates/relations/basis5046.json"
theorem reductionProof5046 : EqualModuloRelations reduction5046.relations reduction5046.input reduction5046.output := by lin_cert using reduction5046.terms
theorem substitutionProof5046 : IsMapEvaluation generatorImages reduction5046.relations [8,8,8,8,8,89] reduction5046.output := by lin_cert using reduction5046.terms
def map_30_164 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5228 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5228 : InImage map_30_164 image5228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5228 : Bundle := named_bundle% "RealMapCertificates/relations/basis5228.json"
theorem reductionProof5228 : EqualModuloRelations reduction5228.relations reduction5228.input reduction5228.output := by lin_cert using reduction5228.terms
theorem substitutionProof5228 : IsMapEvaluation generatorImages reduction5228.relations [8,516] reduction5228.output := by lin_cert using reduction5228.terms
def image5229 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5229 : InImage map_30_164 image5229 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5229 : Bundle := named_bundle% "RealMapCertificates/relations/basis5229.json"
theorem reductionProof5229 : EqualModuloRelations reduction5229.relations reduction5229.input reduction5229.output := by lin_cert using reduction5229.terms
theorem substitutionProof5229 : IsMapEvaluation generatorImages reduction5229.relations [8,8,8,218] reduction5229.output := by lin_cert using reduction5229.terms
def image5230 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5230 : InImage map_30_164 image5230 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5230 : Bundle := named_bundle% "RealMapCertificates/relations/basis5230.json"
theorem reductionProof5230 : EqualModuloRelations reduction5230.relations reduction5230.input reduction5230.output := by lin_cert using reduction5230.terms
theorem substitutionProof5230 : IsMapEvaluation generatorImages reduction5230.relations [1,665] reduction5230.output := by lin_cert using reduction5230.terms
def map_30_165 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image5350 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5350 : InImage map_30_165 image5350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5350 : Bundle := named_bundle% "RealMapCertificates/relations/basis5350.json"
theorem reductionProof5350 : EqualModuloRelations reduction5350.relations reduction5350.input reduction5350.output := by lin_cert using reduction5350.terms
theorem substitutionProof5350 : IsMapEvaluation generatorImages reduction5350.relations [8,529] reduction5350.output := by lin_cert using reduction5350.terms
def image5351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5351 : InImage map_30_165 image5351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5351 : Bundle := named_bundle% "RealMapCertificates/relations/basis5351.json"
theorem reductionProof5351 : EqualModuloRelations reduction5351.relations reduction5351.input reduction5351.output := by lin_cert using reduction5351.terms
theorem substitutionProof5351 : IsMapEvaluation generatorImages reduction5351.relations [8,8,9,13,13,13,23] reduction5351.output := by lin_cert using reduction5351.terms
def image5352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5352 : InImage map_30_165 image5352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5352 : Bundle := named_bundle% "RealMapCertificates/relations/basis5352.json"
theorem reductionProof5352 : EqualModuloRelations reduction5352.relations reduction5352.input reduction5352.output := by lin_cert using reduction5352.terms
theorem substitutionProof5352 : IsMapEvaluation generatorImages reduction5352.relations [8,8,8,8,8,101] reduction5352.output := by lin_cert using reduction5352.terms
def image5353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5353 : InImage map_30_165 image5353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5353 : Bundle := named_bundle% "RealMapCertificates/relations/basis5353.json"
theorem reductionProof5353 : EqualModuloRelations reduction5353.relations reduction5353.input reduction5353.output := by lin_cert using reduction5353.terms
theorem substitutionProof5353 : IsMapEvaluation generatorImages reduction5353.relations [0,17,380] reduction5353.output := by lin_cert using reduction5353.terms
def map_30_166 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5454 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5454 : InImage map_30_166 image5454 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5454 : Bundle := named_bundle% "RealMapCertificates/relations/basis5454.json"
theorem reductionProof5454 : EqualModuloRelations reduction5454.relations reduction5454.input reduction5454.output := by lin_cert using reduction5454.terms
theorem substitutionProof5454 : IsMapEvaluation generatorImages reduction5454.relations [0,0,0,0,0,0,642] reduction5454.output := by lin_cert using reduction5454.terms
def map_30_167 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5555 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5555 : InImage map_30_167 image5555 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5555 : Bundle := named_bundle% "RealMapCertificates/relations/basis5555.json"
theorem reductionProof5555 : EqualModuloRelations reduction5555.relations reduction5555.input reduction5555.output := by lin_cert using reduction5555.terms
theorem substitutionProof5555 : IsMapEvaluation generatorImages reduction5555.relations [8,16,260] reduction5555.output := by lin_cert using reduction5555.terms
def image5556 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5556 : InImage map_30_167 image5556 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5556 : Bundle := named_bundle% "RealMapCertificates/relations/basis5556.json"
theorem reductionProof5556 : EqualModuloRelations reduction5556.relations reduction5556.input reduction5556.output := by lin_cert using reduction5556.terms
theorem substitutionProof5556 : IsMapEvaluation generatorImages reduction5556.relations [8,8,8,233] reduction5556.output := by lin_cert using reduction5556.terms
def map_30_168 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image5669 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5669 : InImage map_30_168 image5669 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5669 : Bundle := named_bundle% "RealMapCertificates/relations/basis5669.json"
theorem reductionProof5669 : EqualModuloRelations reduction5669.relations reduction5669.input reduction5669.output := by lin_cert using reduction5669.terms
theorem substitutionProof5669 : IsMapEvaluation generatorImages reduction5669.relations [8,557] reduction5669.output := by lin_cert using reduction5669.terms
def image5670 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5670 : InImage map_30_168 image5670 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5670 : Bundle := named_bundle% "RealMapCertificates/relations/basis5670.json"
theorem reductionProof5670 : EqualModuloRelations reduction5670.relations reduction5670.input reduction5670.output := by lin_cert using reduction5670.terms
theorem substitutionProof5670 : IsMapEvaluation generatorImages reduction5670.relations [8,8,13,13,13,13,23] reduction5670.output := by lin_cert using reduction5670.terms
def image5671 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5671 : InImage map_30_168 image5671 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5671 : Bundle := named_bundle% "RealMapCertificates/relations/basis5671.json"
theorem reductionProof5671 : EqualModuloRelations reduction5671.relations reduction5671.input reduction5671.output := by lin_cert using reduction5671.terms
theorem substitutionProof5671 : IsMapEvaluation generatorImages reduction5671.relations [8,8,8,8,9,101] reduction5671.output := by lin_cert using reduction5671.terms
def image5672 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5672 : InImage map_30_168 image5672 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5672 : Bundle := named_bundle% "RealMapCertificates/relations/basis5672.json"
theorem reductionProof5672 : EqualModuloRelations reduction5672.relations reduction5672.input reduction5672.output := by lin_cert using reduction5672.terms
theorem substitutionProof5672 : IsMapEvaluation generatorImages reduction5672.relations [0,8,17,260] reduction5672.output := by lin_cert using reduction5672.terms
def map_30_170 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image5882 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5882 : InImage map_30_170 image5882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5882 : Bundle := named_bundle% "RealMapCertificates/relations/basis5882.json"
theorem reductionProof5882 : EqualModuloRelations reduction5882.relations reduction5882.input reduction5882.output := by lin_cert using reduction5882.terms
theorem substitutionProof5882 : IsMapEvaluation generatorImages reduction5882.relations [64,206] reduction5882.output := by lin_cert using reduction5882.terms
def image5883 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5883 : InImage map_30_170 image5883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5883 : Bundle := named_bundle% "RealMapCertificates/relations/basis5883.json"
theorem reductionProof5883 : EqualModuloRelations reduction5883.relations reduction5883.input reduction5883.output := by lin_cert using reduction5883.terms
theorem substitutionProof5883 : IsMapEvaluation generatorImages reduction5883.relations [8,8,380] reduction5883.output := by lin_cert using reduction5883.terms
def image5884 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5884 : InImage map_30_170 image5884 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5884 : Bundle := named_bundle% "RealMapCertificates/relations/basis5884.json"
theorem reductionProof5884 : EqualModuloRelations reduction5884.relations reduction5884.input reduction5884.output := by lin_cert using reduction5884.terms
theorem substitutionProof5884 : IsMapEvaluation generatorImages reduction5884.relations [8,8,8,248] reduction5884.output := by lin_cert using reduction5884.terms
def map_30_171 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image6019 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6019 : InImage map_30_171 image6019 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6019 : Bundle := named_bundle% "RealMapCertificates/relations/basis6019.json"
theorem reductionProof6019 : EqualModuloRelations reduction6019.relations reduction6019.input reduction6019.output := by lin_cert using reduction6019.terms
theorem substitutionProof6019 : IsMapEvaluation generatorImages reduction6019.relations [8,9,13,13,13,13,23] reduction6019.output := by lin_cert using reduction6019.terms
def image6020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6020 : InImage map_30_171 image6020 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6020 : Bundle := named_bundle% "RealMapCertificates/relations/basis6020.json"
theorem reductionProof6020 : EqualModuloRelations reduction6020.relations reduction6020.input reduction6020.output := by lin_cert using reduction6020.terms
theorem substitutionProof6020 : IsMapEvaluation generatorImages reduction6020.relations [8,8,404] reduction6020.output := by lin_cert using reduction6020.terms
def image6021 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6021 : InImage map_30_171 image6021 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6021 : Bundle := named_bundle% "RealMapCertificates/relations/basis6021.json"
theorem reductionProof6021 : EqualModuloRelations reduction6021.relations reduction6021.input reduction6021.output := by lin_cert using reduction6021.terms
theorem substitutionProof6021 : IsMapEvaluation generatorImages reduction6021.relations [8,8,8,8,13,101] reduction6021.output := by lin_cert using reduction6021.terms
def image6022 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6022 : InImage map_30_171 image6022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6022 : Bundle := named_bundle% "RealMapCertificates/relations/basis6022.json"
theorem reductionProof6022 : EqualModuloRelations reduction6022.relations reduction6022.input reduction6022.output := by lin_cert using reduction6022.terms
theorem substitutionProof6022 : IsMapEvaluation generatorImages reduction6022.relations [0,8,17,278] reduction6022.output := by lin_cert using reduction6022.terms
def map_30_173 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6223 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6223 : InImage map_30_173 image6223 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6223 : Bundle := named_bundle% "RealMapCertificates/relations/basis6223.json"
theorem reductionProof6223 : EqualModuloRelations reduction6223.relations reduction6223.input reduction6223.output := by lin_cert using reduction6223.terms
theorem substitutionProof6223 : IsMapEvaluation generatorImages reduction6223.relations [8,64,149] reduction6223.output := by lin_cert using reduction6223.terms
def image6224 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6224 : InImage map_30_173 image6224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6224 : Bundle := named_bundle% "RealMapCertificates/relations/basis6224.json"
theorem reductionProof6224 : EqualModuloRelations reduction6224.relations reduction6224.input reduction6224.output := by lin_cert using reduction6224.terms
theorem substitutionProof6224 : IsMapEvaluation generatorImages reduction6224.relations [8,8,9,248] reduction6224.output := by lin_cert using reduction6224.terms
def image6225 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6225 : InImage map_30_173 image6225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6225 : Bundle := named_bundle% "RealMapCertificates/relations/basis6225.json"
theorem reductionProof6225 : EqualModuloRelations reduction6225.relations reduction6225.input reduction6225.output := by lin_cert using reduction6225.terms
theorem substitutionProof6225 : IsMapEvaluation generatorImages reduction6225.relations [8,8,8,260] reduction6225.output := by lin_cert using reduction6225.terms
def map_30_174 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6347 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6347 : InImage map_30_174 image6347 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6347 : Bundle := named_bundle% "RealMapCertificates/relations/basis6347.json"
theorem reductionProof6347 : EqualModuloRelations reduction6347.relations reduction6347.input reduction6347.output := by lin_cert using reduction6347.terms
theorem substitutionProof6347 : IsMapEvaluation generatorImages reduction6347.relations [8,13,13,13,13,13,23] reduction6347.output := by lin_cert using reduction6347.terms
def image6348 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6348 : InImage map_30_174 image6348 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6348 : Bundle := named_bundle% "RealMapCertificates/relations/basis6348.json"
theorem reductionProof6348 : EqualModuloRelations reduction6348.relations reduction6348.input reduction6348.output := by lin_cert using reduction6348.terms
theorem substitutionProof6348 : IsMapEvaluation generatorImages reduction6348.relations [8,8,434] reduction6348.output := by lin_cert using reduction6348.terms
def image6349 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6349 : InImage map_30_174 image6349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6349 : Bundle := named_bundle% "RealMapCertificates/relations/basis6349.json"
theorem reductionProof6349 : EqualModuloRelations reduction6349.relations reduction6349.input reduction6349.output := by lin_cert using reduction6349.terms
theorem substitutionProof6349 : IsMapEvaluation generatorImages reduction6349.relations [8,8,8,9,13,101] reduction6349.output := by lin_cert using reduction6349.terms
def image6350 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6350 : InImage map_30_174 image6350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6350 : Bundle := named_bundle% "RealMapCertificates/relations/basis6350.json"
theorem reductionProof6350 : EqualModuloRelations reduction6350.relations reduction6350.input reduction6350.output := by lin_cert using reduction6350.terms
theorem substitutionProof6350 : IsMapEvaluation generatorImages reduction6350.relations [0,8,16,292] reduction6350.output := by lin_cert using reduction6350.terms
def map_30_176 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image6563 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6563 : InImage map_30_176 image6563 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6563 : Bundle := named_bundle% "RealMapCertificates/relations/basis6563.json"
theorem reductionProof6563 : EqualModuloRelations reduction6563.relations reduction6563.input reduction6563.output := by lin_cert using reduction6563.terms
theorem substitutionProof6563 : IsMapEvaluation generatorImages reduction6563.relations [8,64,160] reduction6563.output := by lin_cert using reduction6563.terms
def image6564 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6564 : InImage map_30_176 image6564 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6564 : Bundle := named_bundle% "RealMapCertificates/relations/basis6564.json"
theorem reductionProof6564 : EqualModuloRelations reduction6564.relations reduction6564.input reduction6564.output := by lin_cert using reduction6564.terms
theorem substitutionProof6564 : IsMapEvaluation generatorImages reduction6564.relations [8,8,13,248] reduction6564.output := by lin_cert using reduction6564.terms
def image6565 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6565 : InImage map_30_176 image6565 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6565 : Bundle := named_bundle% "RealMapCertificates/relations/basis6565.json"
theorem reductionProof6565 : EqualModuloRelations reduction6565.relations reduction6565.input reduction6565.output := by lin_cert using reduction6565.terms
theorem substitutionProof6565 : IsMapEvaluation generatorImages reduction6565.relations [8,8,8,278] reduction6565.output := by lin_cert using reduction6565.terms
def image6566 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6566 : InImage map_30_176 image6566 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6566 : Bundle := named_bundle% "RealMapCertificates/relations/basis6566.json"
theorem reductionProof6566 : EqualModuloRelations reduction6566.relations reduction6566.input reduction6566.output := by lin_cert using reduction6566.terms
theorem substitutionProof6566 : IsMapEvaluation generatorImages reduction6566.relations [1,5,642] reduction6566.output := by lin_cert using reduction6566.terms
def map_30_177 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6705 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6705 : InImage map_30_177 image6705 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6705 : Bundle := named_bundle% "RealMapCertificates/relations/basis6705.json"
theorem reductionProof6705 : EqualModuloRelations reduction6705.relations reduction6705.input reduction6705.output := by lin_cert using reduction6705.terms
theorem substitutionProof6705 : IsMapEvaluation generatorImages reduction6705.relations [9,13,13,13,13,13,23] reduction6705.output := by lin_cert using reduction6705.terms
def image6706 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6706 : InImage map_30_177 image6706 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6706 : Bundle := named_bundle% "RealMapCertificates/relations/basis6706.json"
theorem reductionProof6706 : EqualModuloRelations reduction6706.relations reduction6706.input reduction6706.output := by lin_cert using reduction6706.terms
theorem substitutionProof6706 : IsMapEvaluation generatorImages reduction6706.relations [8,8,471] reduction6706.output := by lin_cert using reduction6706.terms
def image6707 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6707 : InImage map_30_177 image6707 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6707 : Bundle := named_bundle% "RealMapCertificates/relations/basis6707.json"
theorem reductionProof6707 : EqualModuloRelations reduction6707.relations reduction6707.input reduction6707.output := by lin_cert using reduction6707.terms
theorem substitutionProof6707 : IsMapEvaluation generatorImages reduction6707.relations [8,8,8,13,13,101] reduction6707.output := by lin_cert using reduction6707.terms
def map_30_179 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image6927 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6927 : InImage map_30_179 image6927 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6927 : Bundle := named_bundle% "RealMapCertificates/relations/basis6927.json"
theorem reductionProof6927 : EqualModuloRelations reduction6927.relations reduction6927.input reduction6927.output := by lin_cert using reduction6927.terms
theorem substitutionProof6927 : IsMapEvaluation generatorImages reduction6927.relations [8,16,347] reduction6927.output := by lin_cert using reduction6927.terms
def image6928 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6928 : InImage map_30_179 image6928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6928 : Bundle := named_bundle% "RealMapCertificates/relations/basis6928.json"
theorem reductionProof6928 : EqualModuloRelations reduction6928.relations reduction6928.input reduction6928.output := by lin_cert using reduction6928.terms
theorem substitutionProof6928 : IsMapEvaluation generatorImages reduction6928.relations [8,9,13,248] reduction6928.output := by lin_cert using reduction6928.terms
def image6929 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6929 : InImage map_30_179 image6929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6929 : Bundle := named_bundle% "RealMapCertificates/relations/basis6929.json"
theorem reductionProof6929 : EqualModuloRelations reduction6929.relations reduction6929.input reduction6929.output := by lin_cert using reduction6929.terms
theorem substitutionProof6929 : IsMapEvaluation generatorImages reduction6929.relations [8,8,8,291] reduction6929.output := by lin_cert using reduction6929.terms
def image6930 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6930 : InImage map_30_179 image6930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6930 : Bundle := named_bundle% "RealMapCertificates/relations/basis6930.json"
theorem reductionProof6930 : EqualModuloRelations reduction6930.relations reduction6930.input reduction6930.output := by lin_cert using reduction6930.terms
theorem substitutionProof6930 : IsMapEvaluation generatorImages reduction6930.relations [0,862] reduction6930.output := by lin_cert using reduction6930.terms
end RealMapCertificates
