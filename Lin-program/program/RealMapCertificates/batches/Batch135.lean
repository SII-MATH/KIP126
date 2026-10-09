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
  | 33 => []
  | 42 => [[5,5,7]]
  | 64 => []
  | 72 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 168 => []
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 255 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 279 => []
  | 292 => []
  | 299 => []
  | 301 => []
  | 316 => []
  | 318 => []
  | 346 => []
  | 347 => []
  | 349 => []
  | 382 => []
  | 420 => []
  | 455 => []
  | 492 => []
  | 499 => []
  | 517 => []
  | 585 => []
  | 627 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 797 => []
  | 862 => []
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 921 => []
  | 928 => [[4,7,7,9,12,12]]
  | 963 => []
  | 974 => []
  | 976 => []
  | 1035 => []
  | 1051 => []
  | 1077 => [[1,9,12,12,12]]
  | 1079 => []
  | 1084 => []
  | 1103 => []
  | 1105 => []
  | 1169 => []
  | 1220 => []
  | 1255 => []
  | 1303 => []
  | _ => []
def map_30_180 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image7070 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7070 : InImage map_30_180 image7070 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7070 : Bundle := named_bundle% "RealMapCertificates/relations/basis7070.json"
theorem reductionProof7070 : EqualModuloRelations reduction7070.relations reduction7070.input reduction7070.output := by lin_cert using reduction7070.terms
theorem substitutionProof7070 : IsMapEvaluation generatorImages reduction7070.relations [13,13,13,13,13,13,23] reduction7070.output := by lin_cert using reduction7070.terms
def image7071 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7071 : InImage map_30_180 image7071 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7071 : Bundle := named_bundle% "RealMapCertificates/relations/basis7071.json"
theorem reductionProof7071 : EqualModuloRelations reduction7071.relations reduction7071.input reduction7071.output := by lin_cert using reduction7071.terms
theorem substitutionProof7071 : IsMapEvaluation generatorImages reduction7071.relations [8,8,499] reduction7071.output := by lin_cert using reduction7071.terms
def image7072 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7072 : InImage map_30_180 image7072 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7072 : Bundle := named_bundle% "RealMapCertificates/relations/basis7072.json"
theorem reductionProof7072 : EqualModuloRelations reduction7072.relations reduction7072.input reduction7072.output := by lin_cert using reduction7072.terms
theorem substitutionProof7072 : IsMapEvaluation generatorImages reduction7072.relations [8,8,9,13,13,101] reduction7072.output := by lin_cert using reduction7072.terms
def image7073 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7073 : InImage map_30_180 image7073 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7073 : Bundle := named_bundle% "RealMapCertificates/relations/basis7073.json"
theorem reductionProof7073 : EqualModuloRelations reduction7073.relations reduction7073.input reduction7073.output := by lin_cert using reduction7073.terms
theorem substitutionProof7073 : IsMapEvaluation generatorImages reduction7073.relations [1,862] reduction7073.output := by lin_cert using reduction7073.terms
def map_30_181 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7186 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7186 : InImage map_30_181 image7186 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7186 : Bundle := named_bundle% "RealMapCertificates/relations/basis7186.json"
theorem reductionProof7186 : EqualModuloRelations reduction7186.relations reduction7186.input reduction7186.output := by lin_cert using reduction7186.terms
theorem substitutionProof7186 : IsMapEvaluation generatorImages reduction7186.relations [889] reduction7186.output := by lin_cert using reduction7186.terms
def map_30_182 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7287 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7287 : InImage map_30_182 image7287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7287 : Bundle := named_bundle% "RealMapCertificates/relations/basis7287.json"
theorem reductionProof7287 : EqualModuloRelations reduction7287.relations reduction7287.input reduction7287.output := by lin_cert using reduction7287.terms
theorem substitutionProof7287 : IsMapEvaluation generatorImages reduction7287.relations [8,13,13,248] reduction7287.output := by lin_cert using reduction7287.terms
def image7288 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7288 : InImage map_30_182 image7288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7288 : Bundle := named_bundle% "RealMapCertificates/relations/basis7288.json"
theorem reductionProof7288 : EqualModuloRelations reduction7288.relations reduction7288.input reduction7288.output := by lin_cert using reduction7288.terms
theorem substitutionProof7288 : IsMapEvaluation generatorImages reduction7288.relations [8,8,517] reduction7288.output := by lin_cert using reduction7288.terms
def image7289 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7289 : InImage map_30_182 image7289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7289 : Bundle := named_bundle% "RealMapCertificates/relations/basis7289.json"
theorem reductionProof7289 : EqualModuloRelations reduction7289.relations reduction7289.input reduction7289.output := by lin_cert using reduction7289.terms
theorem substitutionProof7289 : IsMapEvaluation generatorImages reduction7289.relations [8,8,8,316] reduction7289.output := by lin_cert using reduction7289.terms
def map_30_183 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7437 : InImage map_30_183 image7437 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7437 : Bundle := named_bundle% "RealMapCertificates/relations/basis7437.json"
theorem reductionProof7437 : EqualModuloRelations reduction7437.relations reduction7437.input reduction7437.output := by lin_cert using reduction7437.terms
theorem substitutionProof7437 : IsMapEvaluation generatorImages reduction7437.relations [8,8,17,255] reduction7437.output := by lin_cert using reduction7437.terms
def image7438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7438 : InImage map_30_183 image7438 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7438 : Bundle := named_bundle% "RealMapCertificates/relations/basis7438.json"
theorem reductionProof7438 : EqualModuloRelations reduction7438.relations reduction7438.input reduction7438.output := by lin_cert using reduction7438.terms
theorem substitutionProof7438 : IsMapEvaluation generatorImages reduction7438.relations [8,8,13,13,13,101] reduction7438.output := by lin_cert using reduction7438.terms
def map_30_184 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7537 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7537 : InImage map_30_184 image7537 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7537 : Bundle := named_bundle% "RealMapCertificates/relations/basis7537.json"
theorem reductionProof7537 : EqualModuloRelations reduction7537.relations reduction7537.input reduction7537.output := by lin_cert using reduction7537.terms
theorem substitutionProof7537 : IsMapEvaluation generatorImages reduction7537.relations [928] reduction7537.output := by lin_cert using reduction7537.terms
def image7538 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7538 : InImage map_30_184 image7538 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7538 : Bundle := named_bundle% "RealMapCertificates/relations/basis7538.json"
theorem reductionProof7538 : EqualModuloRelations reduction7538.relations reduction7538.input reduction7538.output := by lin_cert using reduction7538.terms
theorem substitutionProof7538 : IsMapEvaluation generatorImages reduction7538.relations [0,0,64,260] reduction7538.output := by lin_cert using reduction7538.terms
def map_30_185 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image7652 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7652 : InImage map_30_185 image7652 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7652 : Bundle := named_bundle% "RealMapCertificates/relations/basis7652.json"
theorem reductionProof7652 : EqualModuloRelations reduction7652.relations reduction7652.input reduction7652.output := by lin_cert using reduction7652.terms
theorem substitutionProof7652 : IsMapEvaluation generatorImages reduction7652.relations [9,13,13,248] reduction7652.output := by lin_cert using reduction7652.terms
def image7653 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7653 : InImage map_30_185 image7653 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7653 : Bundle := named_bundle% "RealMapCertificates/relations/basis7653.json"
theorem reductionProof7653 : EqualModuloRelations reduction7653.relations reduction7653.input reduction7653.output := by lin_cert using reduction7653.terms
theorem substitutionProof7653 : IsMapEvaluation generatorImages reduction7653.relations [8,8,8,347] reduction7653.output := by lin_cert using reduction7653.terms
def image7654 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7654 : InImage map_30_185 image7654 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7654 : Bundle := named_bundle% "RealMapCertificates/relations/basis7654.json"
theorem reductionProof7654 : EqualModuloRelations reduction7654.relations reduction7654.input reduction7654.output := by lin_cert using reduction7654.terms
theorem substitutionProof7654 : IsMapEvaluation generatorImages reduction7654.relations [8,8,8,346] reduction7654.output := by lin_cert using reduction7654.terms
def image7655 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7655 : InImage map_30_185 image7655 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7655 : Bundle := named_bundle% "RealMapCertificates/relations/basis7655.json"
theorem reductionProof7655 : EqualModuloRelations reduction7655.relations reduction7655.input reduction7655.output := by lin_cert using reduction7655.terms
theorem substitutionProof7655 : IsMapEvaluation generatorImages reduction7655.relations [0,64,274] reduction7655.output := by lin_cert using reduction7655.terms
def image7656 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7656 : InImage map_30_185 image7656 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7656 : Bundle := named_bundle% "RealMapCertificates/relations/basis7656.json"
theorem reductionProof7656 : EqualModuloRelations reduction7656.relations reduction7656.input reduction7656.output := by lin_cert using reduction7656.terms
theorem substitutionProof7656 : IsMapEvaluation generatorImages reduction7656.relations [0,0,0,897] reduction7656.output := by lin_cert using reduction7656.terms
def map_30_186 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image7795 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7795 : InImage map_30_186 image7795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7795 : Bundle := named_bundle% "RealMapCertificates/relations/basis7795.json"
theorem reductionProof7795 : EqualModuloRelations reduction7795.relations reduction7795.input reduction7795.output := by lin_cert using reduction7795.terms
theorem substitutionProof7795 : IsMapEvaluation generatorImages reduction7795.relations [13,13,13,13,13,13,33] reduction7795.output := by lin_cert using reduction7795.terms
def image7796 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7796 : InImage map_30_186 image7796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7796 : Bundle := named_bundle% "RealMapCertificates/relations/basis7796.json"
theorem reductionProof7796 : EqualModuloRelations reduction7796.relations reduction7796.input reduction7796.output := by lin_cert using reduction7796.terms
theorem substitutionProof7796 : IsMapEvaluation generatorImages reduction7796.relations [8,9,13,13,13,101] reduction7796.output := by lin_cert using reduction7796.terms
def image7797 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7797 : InImage map_30_186 image7797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7797 : Bundle := named_bundle% "RealMapCertificates/relations/basis7797.json"
theorem reductionProof7797 : EqualModuloRelations reduction7797.relations reduction7797.input reduction7797.output := by lin_cert using reduction7797.terms
theorem substitutionProof7797 : IsMapEvaluation generatorImages reduction7797.relations [8,8,8,17,188] reduction7797.output := by lin_cert using reduction7797.terms
def image7798 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7798 : InImage map_30_186 image7798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7798 : Bundle := named_bundle% "RealMapCertificates/relations/basis7798.json"
theorem reductionProof7798 : EqualModuloRelations reduction7798.relations reduction7798.input reduction7798.output := by lin_cert using reduction7798.terms
theorem substitutionProof7798 : IsMapEvaluation generatorImages reduction7798.relations [1,1,64,260] reduction7798.output := by lin_cert using reduction7798.terms
def image7799 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7799 : InImage map_30_186 image7799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7799 : Bundle := named_bundle% "RealMapCertificates/relations/basis7799.json"
theorem reductionProof7799 : EqualModuloRelations reduction7799.relations reduction7799.input reduction7799.output := by lin_cert using reduction7799.terms
theorem substitutionProof7799 : IsMapEvaluation generatorImages reduction7799.relations [0,0,0,921] reduction7799.output := by lin_cert using reduction7799.terms
def image7800 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7800 : InImage map_30_186 image7800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7800 : Bundle := named_bundle% "RealMapCertificates/relations/basis7800.json"
theorem reductionProof7800 : EqualModuloRelations reduction7800.relations reduction7800.input reduction7800.output := by lin_cert using reduction7800.terms
theorem substitutionProof7800 : IsMapEvaluation generatorImages reduction7800.relations [0,0,0,919] reduction7800.output := by lin_cert using reduction7800.terms
def map_30_187 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image7899 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7899 : InImage map_30_187 image7899 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7899 : Bundle := named_bundle% "RealMapCertificates/relations/basis7899.json"
theorem reductionProof7899 : EqualModuloRelations reduction7899.relations reduction7899.input reduction7899.output := by lin_cert using reduction7899.terms
theorem substitutionProof7899 : IsMapEvaluation generatorImages reduction7899.relations [8,753] reduction7899.output := by lin_cert using reduction7899.terms
def image7900 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7900 : InImage map_30_187 image7900 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7900 : Bundle := named_bundle% "RealMapCertificates/relations/basis7900.json"
theorem reductionProof7900 : EqualModuloRelations reduction7900.relations reduction7900.input reduction7900.output := by lin_cert using reduction7900.terms
theorem substitutionProof7900 : IsMapEvaluation generatorImages reduction7900.relations [0,0,64,278] reduction7900.output := by lin_cert using reduction7900.terms
def image7901 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7901 : InImage map_30_187 image7901 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7901 : Bundle := named_bundle% "RealMapCertificates/relations/basis7901.json"
theorem reductionProof7901 : EqualModuloRelations reduction7901.relations reduction7901.input reduction7901.output := by lin_cert using reduction7901.terms
theorem substitutionProof7901 : IsMapEvaluation generatorImages reduction7901.relations [0,0,0,0,0,898] reduction7901.output := by lin_cert using reduction7901.terms
def map_30_188 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7997 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7997 : InImage map_30_188 image7997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7997 : Bundle := named_bundle% "RealMapCertificates/relations/basis7997.json"
theorem reductionProof7997 : EqualModuloRelations reduction7997.relations reduction7997.input reduction7997.output := by lin_cert using reduction7997.terms
theorem substitutionProof7997 : IsMapEvaluation generatorImages reduction7997.relations [13,13,13,248] reduction7997.output := by lin_cert using reduction7997.terms
def image7998 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7998 : InImage map_30_188 image7998 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7998 : Bundle := named_bundle% "RealMapCertificates/relations/basis7998.json"
theorem reductionProof7998 : EqualModuloRelations reduction7998.relations reduction7998.input reduction7998.output := by lin_cert using reduction7998.terms
theorem substitutionProof7998 : IsMapEvaluation generatorImages reduction7998.relations [8,8,9,346] reduction7998.output := by lin_cert using reduction7998.terms
def image7999 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7999 : InImage map_30_188 image7999 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7999 : Bundle := named_bundle% "RealMapCertificates/relations/basis7999.json"
theorem reductionProof7999 : EqualModuloRelations reduction7999.relations reduction7999.input reduction7999.output := by lin_cert using reduction7999.terms
theorem substitutionProof7999 : IsMapEvaluation generatorImages reduction7999.relations [8,8,8,382] reduction7999.output := by lin_cert using reduction7999.terms
def map_30_189 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8149 : InImage map_30_189 image8149 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8149 : Bundle := named_bundle% "RealMapCertificates/relations/basis8149.json"
theorem reductionProof8149 : EqualModuloRelations reduction8149.relations reduction8149.input reduction8149.output := by lin_cert using reduction8149.terms
theorem substitutionProof8149 : IsMapEvaluation generatorImages reduction8149.relations [64,64,64] reduction8149.output := by lin_cert using reduction8149.terms
def image8150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8150 : InImage map_30_189 image8150 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8150 : Bundle := named_bundle% "RealMapCertificates/relations/basis8150.json"
theorem reductionProof8150 : EqualModuloRelations reduction8150.relations reduction8150.input reduction8150.output := by lin_cert using reduction8150.terms
theorem substitutionProof8150 : IsMapEvaluation generatorImages reduction8150.relations [8,13,13,13,13,101] reduction8150.output := by lin_cert using reduction8150.terms
def image8151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8151 : InImage map_30_189 image8151 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8151 : Bundle := named_bundle% "RealMapCertificates/relations/basis8151.json"
theorem reductionProof8151 : EqualModuloRelations reduction8151.relations reduction8151.input reduction8151.output := by lin_cert using reduction8151.terms
theorem substitutionProof8151 : IsMapEvaluation generatorImages reduction8151.relations [8,8,8,20,188] reduction8151.output := by lin_cert using reduction8151.terms
def map_30_190 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image8250 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8250 : InImage map_30_190 image8250 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8250 : Bundle := named_bundle% "RealMapCertificates/relations/basis8250.json"
theorem reductionProof8250 : EqualModuloRelations reduction8250.relations reduction8250.input reduction8250.output := by lin_cert using reduction8250.terms
theorem substitutionProof8250 : IsMapEvaluation generatorImages reduction8250.relations [8,784] reduction8250.output := by lin_cert using reduction8250.terms
def image8251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8251 : InImage map_30_190 image8251 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8251 : Bundle := named_bundle% "RealMapCertificates/relations/basis8251.json"
theorem reductionProof8251 : EqualModuloRelations reduction8251.relations reduction8251.input reduction8251.output := by lin_cert using reduction8251.terms
theorem substitutionProof8251 : IsMapEvaluation generatorImages reduction8251.relations [0,64,299] reduction8251.output := by lin_cert using reduction8251.terms
def image8252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8252 : InImage map_30_190 image8252 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8252 : Bundle := named_bundle% "RealMapCertificates/relations/basis8252.json"
theorem reductionProof8252 : EqualModuloRelations reduction8252.relations reduction8252.input reduction8252.output := by lin_cert using reduction8252.terms
theorem substitutionProof8252 : IsMapEvaluation generatorImages reduction8252.relations [0,0,16,627] reduction8252.output := by lin_cert using reduction8252.terms
def map_30_191 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image8376 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8376 : InImage map_30_191 image8376 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8376 : Bundle := named_bundle% "RealMapCertificates/relations/basis8376.json"
theorem reductionProof8376 : EqualModuloRelations reduction8376.relations reduction8376.input reduction8376.output := by lin_cert using reduction8376.terms
theorem substitutionProof8376 : IsMapEvaluation generatorImages reduction8376.relations [8,8,13,346] reduction8376.output := by lin_cert using reduction8376.terms
def image8377 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8377 : InImage map_30_191 image8377 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8377 : Bundle := named_bundle% "RealMapCertificates/relations/basis8377.json"
theorem reductionProof8377 : EqualModuloRelations reduction8377.relations reduction8377.input reduction8377.output := by lin_cert using reduction8377.terms
theorem substitutionProof8377 : IsMapEvaluation generatorImages reduction8377.relations [8,8,8,16,209] reduction8377.output := by lin_cert using reduction8377.terms
def image8378 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8378 : InImage map_30_191 image8378 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8378 : Bundle := named_bundle% "RealMapCertificates/relations/basis8378.json"
theorem reductionProof8378 : EqualModuloRelations reduction8378.relations reduction8378.input reduction8378.output := by lin_cert using reduction8378.terms
theorem substitutionProof8378 : IsMapEvaluation generatorImages reduction8378.relations [0,0,0,0,963] reduction8378.output := by lin_cert using reduction8378.terms
def map_30_192 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image8520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8520 : InImage map_30_192 image8520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8520 : Bundle := named_bundle% "RealMapCertificates/relations/basis8520.json"
theorem reductionProof8520 : EqualModuloRelations reduction8520.relations reduction8520.input reduction8520.output := by lin_cert using reduction8520.terms
theorem substitutionProof8520 : IsMapEvaluation generatorImages reduction8520.relations [64,64,72] reduction8520.output := by lin_cert using reduction8520.terms
def image8521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8521 : InImage map_30_192 image8521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8521 : Bundle := named_bundle% "RealMapCertificates/relations/basis8521.json"
theorem reductionProof8521 : EqualModuloRelations reduction8521.relations reduction8521.input reduction8521.output := by lin_cert using reduction8521.terms
theorem substitutionProof8521 : IsMapEvaluation generatorImages reduction8521.relations [9,13,13,13,13,101] reduction8521.output := by lin_cert using reduction8521.terms
def image8522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8522 : InImage map_30_192 image8522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8522 : Bundle := named_bundle% "RealMapCertificates/relations/basis8522.json"
theorem reductionProof8522 : EqualModuloRelations reduction8522.relations reduction8522.input reduction8522.output := by lin_cert using reduction8522.terms
theorem substitutionProof8522 : IsMapEvaluation generatorImages reduction8522.relations [8,8,8,8,267] reduction8522.output := by lin_cert using reduction8522.terms
def image8523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8523 : InImage map_30_192 image8523 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8523 : Bundle := named_bundle% "RealMapCertificates/relations/basis8523.json"
theorem reductionProof8523 : EqualModuloRelations reduction8523.relations reduction8523.input reduction8523.output := by lin_cert using reduction8523.terms
theorem substitutionProof8523 : IsMapEvaluation generatorImages reduction8523.relations [0,0,0,64,301] reduction8523.output := by lin_cert using reduction8523.terms
def image8524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8524 : InImage map_30_192 image8524 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8524 : Bundle := named_bundle% "RealMapCertificates/relations/basis8524.json"
theorem reductionProof8524 : EqualModuloRelations reduction8524.relations reduction8524.input reduction8524.output := by lin_cert using reduction8524.terms
theorem substitutionProof8524 : IsMapEvaluation generatorImages reduction8524.relations [0,0,0,0,974] reduction8524.output := by lin_cert using reduction8524.terms
def map_30_193 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image8633 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8633 : InImage map_30_193 image8633 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8633 : Bundle := named_bundle% "RealMapCertificates/relations/basis8633.json"
theorem reductionProof8633 : EqualModuloRelations reduction8633.relations reduction8633.input reduction8633.output := by lin_cert using reduction8633.terms
theorem substitutionProof8633 : IsMapEvaluation generatorImages reduction8633.relations [9,784] reduction8633.output := by lin_cert using reduction8633.terms
def image8634 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8634 : InImage map_30_193 image8634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8634 : Bundle := named_bundle% "RealMapCertificates/relations/basis8634.json"
theorem reductionProof8634 : EqualModuloRelations reduction8634.relations reduction8634.input reduction8634.output := by lin_cert using reduction8634.terms
theorem substitutionProof8634 : IsMapEvaluation generatorImages reduction8634.relations [0,0,8,797] reduction8634.output := by lin_cert using reduction8634.terms
def image8635 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8635 : InImage map_30_193 image8635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8635 : Bundle := named_bundle% "RealMapCertificates/relations/basis8635.json"
theorem reductionProof8635 : EqualModuloRelations reduction8635.relations reduction8635.input reduction8635.output := by lin_cert using reduction8635.terms
theorem substitutionProof8635 : IsMapEvaluation generatorImages reduction8635.relations [0,0,0,0,0,976] reduction8635.output := by lin_cert using reduction8635.terms
def map_30_194 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image8756 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8756 : InImage map_30_194 image8756 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8756 : Bundle := named_bundle% "RealMapCertificates/relations/basis8756.json"
theorem reductionProof8756 : EqualModuloRelations reduction8756.relations reduction8756.input reduction8756.output := by lin_cert using reduction8756.terms
theorem substitutionProof8756 : IsMapEvaluation generatorImages reduction8756.relations [13,13,13,13,168] reduction8756.output := by lin_cert using reduction8756.terms
def image8757 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8757 : InImage map_30_194 image8757 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8757 : Bundle := named_bundle% "RealMapCertificates/relations/basis8757.json"
theorem reductionProof8757 : EqualModuloRelations reduction8757.relations reduction8757.input reduction8757.output := by lin_cert using reduction8757.terms
theorem substitutionProof8757 : IsMapEvaluation generatorImages reduction8757.relations [8,9,13,346] reduction8757.output := by lin_cert using reduction8757.terms
def image8758 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8758 : InImage map_30_194 image8758 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8758 : Bundle := named_bundle% "RealMapCertificates/relations/basis8758.json"
theorem reductionProof8758 : EqualModuloRelations reduction8758.relations reduction8758.input reduction8758.output := by lin_cert using reduction8758.terms
theorem substitutionProof8758 : IsMapEvaluation generatorImages reduction8758.relations [8,8,8,8,279] reduction8758.output := by lin_cert using reduction8758.terms
def map_30_195 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image8925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8925 : InImage map_30_195 image8925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8925 : Bundle := named_bundle% "RealMapCertificates/relations/basis8925.json"
theorem reductionProof8925 : EqualModuloRelations reduction8925.relations reduction8925.input reduction8925.output := by lin_cert using reduction8925.terms
theorem substitutionProof8925 : IsMapEvaluation generatorImages reduction8925.relations [16,64,187] reduction8925.output := by lin_cert using reduction8925.terms
def image8926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8926 : InImage map_30_195 image8926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8926 : Bundle := named_bundle% "RealMapCertificates/relations/basis8926.json"
theorem reductionProof8926 : EqualModuloRelations reduction8926.relations reduction8926.input reduction8926.output := by lin_cert using reduction8926.terms
theorem substitutionProof8926 : IsMapEvaluation generatorImages reduction8926.relations [13,13,13,13,13,101] reduction8926.output := by lin_cert using reduction8926.terms
def image8927 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8927 : InImage map_30_195 image8927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8927 : Bundle := named_bundle% "RealMapCertificates/relations/basis8927.json"
theorem reductionProof8927 : EqualModuloRelations reduction8927.relations reduction8927.input reduction8927.output := by lin_cert using reduction8927.terms
theorem substitutionProof8927 : IsMapEvaluation generatorImages reduction8927.relations [8,8,8,9,267] reduction8927.output := by lin_cert using reduction8927.terms
def map_30_196 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image9029 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9029 : InImage map_30_196 image9029 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9029 : Bundle := named_bundle% "RealMapCertificates/relations/basis9029.json"
theorem reductionProof9029 : EqualModuloRelations reduction9029.relations reduction9029.input reduction9029.output := by lin_cert using reduction9029.terms
theorem substitutionProof9029 : IsMapEvaluation generatorImages reduction9029.relations [13,784] reduction9029.output := by lin_cert using reduction9029.terms
def image9030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9030 : InImage map_30_196 image9030 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9030 : Bundle := named_bundle% "RealMapCertificates/relations/basis9030.json"
theorem reductionProof9030 : EqualModuloRelations reduction9030.relations reduction9030.input reduction9030.output := by lin_cert using reduction9030.terms
theorem substitutionProof9030 : IsMapEvaluation generatorImages reduction9030.relations [1,1077] reduction9030.output := by lin_cert using reduction9030.terms
def image9031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9031 : InImage map_30_196 image9031 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9031 : Bundle := named_bundle% "RealMapCertificates/relations/basis9031.json"
theorem reductionProof9031 : EqualModuloRelations reduction9031.relations reduction9031.input reduction9031.output := by lin_cert using reduction9031.terms
theorem substitutionProof9031 : IsMapEvaluation generatorImages reduction9031.relations [0,0,64,347] reduction9031.output := by lin_cert using reduction9031.terms
def image9032 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9032 : InImage map_30_196 image9032 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9032 : Bundle := named_bundle% "RealMapCertificates/relations/basis9032.json"
theorem reductionProof9032 : EqualModuloRelations reduction9032.relations reduction9032.input reduction9032.output := by lin_cert using reduction9032.terms
theorem substitutionProof9032 : IsMapEvaluation generatorImages reduction9032.relations [0,0,8,8,627] reduction9032.output := by lin_cert using reduction9032.terms
def map_30_197 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9182 : InImage map_30_197 image9182 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9182 : Bundle := named_bundle% "RealMapCertificates/relations/basis9182.json"
theorem reductionProof9182 : EqualModuloRelations reduction9182.relations reduction9182.input reduction9182.output := by lin_cert using reduction9182.terms
theorem substitutionProof9182 : IsMapEvaluation generatorImages reduction9182.relations [8,13,13,346] reduction9182.output := by lin_cert using reduction9182.terms
def image9183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9183 : InImage map_30_197 image9183 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9183 : Bundle := named_bundle% "RealMapCertificates/relations/basis9183.json"
theorem reductionProof9183 : EqualModuloRelations reduction9183.relations reduction9183.input reduction9183.output := by lin_cert using reduction9183.terms
theorem substitutionProof9183 : IsMapEvaluation generatorImages reduction9183.relations [8,8,8,8,8,209] reduction9183.output := by lin_cert using reduction9183.terms
def image9184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9184 : InImage map_30_197 image9184 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9184 : Bundle := named_bundle% "RealMapCertificates/relations/basis9184.json"
theorem reductionProof9184 : EqualModuloRelations reduction9184.relations reduction9184.input reduction9184.output := by lin_cert using reduction9184.terms
theorem substitutionProof9184 : IsMapEvaluation generatorImages reduction9184.relations [0,1103] reduction9184.output := by lin_cert using reduction9184.terms
def image9185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9185 : InImage map_30_197 image9185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9185 : Bundle := named_bundle% "RealMapCertificates/relations/basis9185.json"
theorem reductionProof9185 : EqualModuloRelations reduction9185.relations reduction9185.input reduction9185.output := by lin_cert using reduction9185.terms
theorem substitutionProof9185 : IsMapEvaluation generatorImages reduction9185.relations [0,0,0,138,209] reduction9185.output := by lin_cert using reduction9185.terms
def map_30_198 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9368 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9368 : InImage map_30_198 image9368 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9368 : Bundle := named_bundle% "RealMapCertificates/relations/basis9368.json"
theorem reductionProof9368 : EqualModuloRelations reduction9368.relations reduction9368.input reduction9368.output := by lin_cert using reduction9368.terms
theorem substitutionProof9368 : IsMapEvaluation generatorImages reduction9368.relations [8,64,254] reduction9368.output := by lin_cert using reduction9368.terms
def image9369 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9369 : InImage map_30_198 image9369 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9369 : Bundle := named_bundle% "RealMapCertificates/relations/basis9369.json"
theorem reductionProof9369 : EqualModuloRelations reduction9369.relations reduction9369.input reduction9369.output := by lin_cert using reduction9369.terms
theorem substitutionProof9369 : IsMapEvaluation generatorImages reduction9369.relations [8,8,8,13,267] reduction9369.output := by lin_cert using reduction9369.terms
def image9370 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9370 : InImage map_30_198 image9370 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9370 : Bundle := named_bundle% "RealMapCertificates/relations/basis9370.json"
theorem reductionProof9370 : EqualModuloRelations reduction9370.relations reduction9370.input reduction9370.output := by lin_cert using reduction9370.terms
theorem substitutionProof9370 : IsMapEvaluation generatorImages reduction9370.relations [1,1,64,347] reduction9370.output := by lin_cert using reduction9370.terms
def image9371 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9371 : InImage map_30_198 image9371 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9371 : Bundle := named_bundle% "RealMapCertificates/relations/basis9371.json"
theorem reductionProof9371 : EqualModuloRelations reduction9371.relations reduction9371.input reduction9371.output := by lin_cert using reduction9371.terms
theorem substitutionProof9371 : IsMapEvaluation generatorImages reduction9371.relations [0,0,0,0,23,627] reduction9371.output := by lin_cert using reduction9371.terms
def map_30_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9503 : InImage map_30_199 image9503 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9503 : Bundle := named_bundle% "RealMapCertificates/relations/basis9503.json"
theorem reductionProof9503 : EqualModuloRelations reduction9503.relations reduction9503.input reduction9503.output := by lin_cert using reduction9503.terms
theorem substitutionProof9503 : IsMapEvaluation generatorImages reduction9503.relations [0,0,0,0,0,1079] reduction9503.output := by lin_cert using reduction9503.terms
def image9504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9504 : InImage map_30_199 image9504 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9504 : Bundle := named_bundle% "RealMapCertificates/relations/basis9504.json"
theorem reductionProof9504 : EqualModuloRelations reduction9504.relations reduction9504.input reduction9504.output := by lin_cert using reduction9504.terms
theorem substitutionProof9504 : IsMapEvaluation generatorImages reduction9504.relations [0,0,0,0,0,64,349] reduction9504.output := by lin_cert using reduction9504.terms
def map_30_200 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image9652 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9652 : InImage map_30_200 image9652 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9652 : Bundle := named_bundle% "RealMapCertificates/relations/basis9652.json"
theorem reductionProof9652 : EqualModuloRelations reduction9652.relations reduction9652.input reduction9652.output := by lin_cert using reduction9652.terms
theorem substitutionProof9652 : IsMapEvaluation generatorImages reduction9652.relations [9,13,13,346] reduction9652.output := by lin_cert using reduction9652.terms
def image9653 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9653 : InImage map_30_200 image9653 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9653 : Bundle := named_bundle% "RealMapCertificates/relations/basis9653.json"
theorem reductionProof9653 : EqualModuloRelations reduction9653.relations reduction9653.input reduction9653.output := by lin_cert using reduction9653.terms
theorem substitutionProof9653 : IsMapEvaluation generatorImages reduction9653.relations [8,8,8,8,9,209] reduction9653.output := by lin_cert using reduction9653.terms
def image9654 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9654 : InImage map_30_200 image9654 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9654 : Bundle := named_bundle% "RealMapCertificates/relations/basis9654.json"
theorem reductionProof9654 : EqualModuloRelations reduction9654.relations reduction9654.input reduction9654.output := by lin_cert using reduction9654.terms
theorem substitutionProof9654 : IsMapEvaluation generatorImages reduction9654.relations [2,1103] reduction9654.output := by lin_cert using reduction9654.terms
def map_30_201 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image9851 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9851 : InImage map_30_201 image9851 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9851 : Bundle := named_bundle% "RealMapCertificates/relations/basis9851.json"
theorem reductionProof9851 : EqualModuloRelations reduction9851.relations reduction9851.input reduction9851.output := by lin_cert using reduction9851.terms
theorem substitutionProof9851 : IsMapEvaluation generatorImages reduction9851.relations [8,8,64,187] reduction9851.output := by lin_cert using reduction9851.terms
def image9852 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9852 : InImage map_30_201 image9852 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9852 : Bundle := named_bundle% "RealMapCertificates/relations/basis9852.json"
theorem reductionProof9852 : EqualModuloRelations reduction9852.relations reduction9852.input reduction9852.output := by lin_cert using reduction9852.terms
theorem substitutionProof9852 : IsMapEvaluation generatorImages reduction9852.relations [8,8,9,13,267] reduction9852.output := by lin_cert using reduction9852.terms
def image9853 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9853 : InImage map_30_201 image9853 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9853 : Bundle := named_bundle% "RealMapCertificates/relations/basis9853.json"
theorem reductionProof9853 : EqualModuloRelations reduction9853.relations reduction9853.input reduction9853.output := by lin_cert using reduction9853.terms
theorem substitutionProof9853 : IsMapEvaluation generatorImages reduction9853.relations [0,0,0,0,0,0,0,0,0,1051] reduction9853.output := by lin_cert using reduction9853.terms
def map_30_202 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9976 : InImage map_30_202 image9976 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9976 : Bundle := named_bundle% "RealMapCertificates/relations/basis9976.json"
theorem reductionProof9976 : EqualModuloRelations reduction9976.relations reduction9976.input reduction9976.output := by lin_cert using reduction9976.terms
theorem substitutionProof9976 : IsMapEvaluation generatorImages reduction9976.relations [1220] reduction9976.output := by lin_cert using reduction9976.terms
def image9977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9977 : InImage map_30_202 image9977 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9977 : Bundle := named_bundle% "RealMapCertificates/relations/basis9977.json"
theorem reductionProof9977 : EqualModuloRelations reduction9977.relations reduction9977.input reduction9977.output := by lin_cert using reduction9977.terms
theorem substitutionProof9977 : IsMapEvaluation generatorImages reduction9977.relations [13,13,585] reduction9977.output := by lin_cert using reduction9977.terms
def image9978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9978 : InImage map_30_202 image9978 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9978 : Bundle := named_bundle% "RealMapCertificates/relations/basis9978.json"
theorem reductionProof9978 : EqualModuloRelations reduction9978.relations reduction9978.input reduction9978.output := by lin_cert using reduction9978.terms
theorem substitutionProof9978 : IsMapEvaluation generatorImages reduction9978.relations [13,13,13,13,23,83] reduction9978.output := by lin_cert using reduction9978.terms
def image9979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9979 : InImage map_30_202 image9979 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9979 : Bundle := named_bundle% "RealMapCertificates/relations/basis9979.json"
theorem reductionProof9979 : EqualModuloRelations reduction9979.relations reduction9979.input reduction9979.output := by lin_cert using reduction9979.terms
theorem substitutionProof9979 : IsMapEvaluation generatorImages reduction9979.relations [1,64,420] reduction9979.output := by lin_cert using reduction9979.terms
def image9980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9980 : InImage map_30_202 image9980 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9980 : Bundle := named_bundle% "RealMapCertificates/relations/basis9980.json"
theorem reductionProof9980 : EqualModuloRelations reduction9980.relations reduction9980.input reduction9980.output := by lin_cert using reduction9980.terms
theorem substitutionProof9980 : IsMapEvaluation generatorImages reduction9980.relations [0,0,0,0,0,0,0,0,1084] reduction9980.output := by lin_cert using reduction9980.terms
def map_30_203 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image10149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10149 : InImage map_30_203 image10149 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10149 : Bundle := named_bundle% "RealMapCertificates/relations/basis10149.json"
theorem reductionProof10149 : EqualModuloRelations reduction10149.relations reduction10149.input reduction10149.output := by lin_cert using reduction10149.terms
theorem substitutionProof10149 : IsMapEvaluation generatorImages reduction10149.relations [113,292] reduction10149.output := by lin_cert using reduction10149.terms
def image10150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10150 : InImage map_30_203 image10150 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10150 : Bundle := named_bundle% "RealMapCertificates/relations/basis10150.json"
theorem reductionProof10150 : EqualModuloRelations reduction10150.relations reduction10150.input reduction10150.output := by lin_cert using reduction10150.terms
theorem substitutionProof10150 : IsMapEvaluation generatorImages reduction10150.relations [64,455] reduction10150.output := by lin_cert using reduction10150.terms
def image10151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10151 : InImage map_30_203 image10151 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10151 : Bundle := named_bundle% "RealMapCertificates/relations/basis10151.json"
theorem reductionProof10151 : EqualModuloRelations reduction10151.relations reduction10151.input reduction10151.output := by lin_cert using reduction10151.terms
theorem substitutionProof10151 : IsMapEvaluation generatorImages reduction10151.relations [13,13,13,346] reduction10151.output := by lin_cert using reduction10151.terms
def image10152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10152 : InImage map_30_203 image10152 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10152 : Bundle := named_bundle% "RealMapCertificates/relations/basis10152.json"
theorem reductionProof10152 : EqualModuloRelations reduction10152.relations reduction10152.input reduction10152.output := by lin_cert using reduction10152.terms
theorem substitutionProof10152 : IsMapEvaluation generatorImages reduction10152.relations [8,8,8,8,13,209] reduction10152.output := by lin_cert using reduction10152.terms
def image10153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10153 : InImage map_30_203 image10153 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10153 : Bundle := named_bundle% "RealMapCertificates/relations/basis10153.json"
theorem reductionProof10153 : EqualModuloRelations reduction10153.relations reduction10153.input reduction10153.output := by lin_cert using reduction10153.terms
theorem substitutionProof10153 : IsMapEvaluation generatorImages reduction10153.relations [0,0,0,0,149,209] reduction10153.output := by lin_cert using reduction10153.terms
def image10154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10154 : InImage map_30_203 image10154 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10154 : Bundle := named_bundle% "RealMapCertificates/relations/basis10154.json"
theorem reductionProof10154 : EqualModuloRelations reduction10154.relations reduction10154.input reduction10154.output := by lin_cert using reduction10154.terms
theorem substitutionProof10154 : IsMapEvaluation generatorImages reduction10154.relations [0,0,0,0,0,0,0,1105] reduction10154.output := by lin_cert using reduction10154.terms
def map_30_204 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image10354 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10354 : InImage map_30_204 image10354 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10354 : Bundle := named_bundle% "RealMapCertificates/relations/basis10354.json"
theorem reductionProof10354 : EqualModuloRelations reduction10354.relations reduction10354.input reduction10354.output := by lin_cert using reduction10354.terms
theorem substitutionProof10354 : IsMapEvaluation generatorImages reduction10354.relations [8,8,64,201] reduction10354.output := by lin_cert using reduction10354.terms
def image10355 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10355 : InImage map_30_204 image10355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10355 : Bundle := named_bundle% "RealMapCertificates/relations/basis10355.json"
theorem reductionProof10355 : EqualModuloRelations reduction10355.relations reduction10355.input reduction10355.output := by lin_cert using reduction10355.terms
theorem substitutionProof10355 : IsMapEvaluation generatorImages reduction10355.relations [8,8,13,13,267] reduction10355.output := by lin_cert using reduction10355.terms
def image10356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10356 : InImage map_30_204 image10356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10356 : Bundle := named_bundle% "RealMapCertificates/relations/basis10356.json"
theorem reductionProof10356 : EqualModuloRelations reduction10356.relations reduction10356.input reduction10356.output := by lin_cert using reduction10356.terms
theorem substitutionProof10356 : IsMapEvaluation generatorImages reduction10356.relations [0,0,0,0,0,1169] reduction10356.output := by lin_cert using reduction10356.terms
def map_30_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10506 : InImage map_30_205 image10506 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10506 : Bundle := named_bundle% "RealMapCertificates/relations/basis10506.json"
theorem reductionProof10506 : EqualModuloRelations reduction10506.relations reduction10506.input reduction10506.output := by lin_cert using reduction10506.terms
theorem substitutionProof10506 : IsMapEvaluation generatorImages reduction10506.relations [8,963] reduction10506.output := by lin_cert using reduction10506.terms
def map_30_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10677 : InImage map_30_206 image10677 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10677 : Bundle := named_bundle% "RealMapCertificates/relations/basis10677.json"
theorem reductionProof10677 : EqualModuloRelations reduction10677.relations reduction10677.input reduction10677.output := by lin_cert using reduction10677.terms
theorem substitutionProof10677 : IsMapEvaluation generatorImages reduction10677.relations [1303] reduction10677.output := by lin_cert using reduction10677.terms
def image10678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10678 : InImage map_30_206 image10678 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10678 : Bundle := named_bundle% "RealMapCertificates/relations/basis10678.json"
theorem reductionProof10678 : EqualModuloRelations reduction10678.relations reduction10678.input reduction10678.output := by lin_cert using reduction10678.terms
theorem substitutionProof10678 : IsMapEvaluation generatorImages reduction10678.relations [64,492] reduction10678.output := by lin_cert using reduction10678.terms
def image10679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10679 : InImage map_30_206 image10679 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10679 : Bundle := named_bundle% "RealMapCertificates/relations/basis10679.json"
theorem reductionProof10679 : EqualModuloRelations reduction10679.relations reduction10679.input reduction10679.output := by lin_cert using reduction10679.terms
theorem substitutionProof10679 : IsMapEvaluation generatorImages reduction10679.relations [8,974] reduction10679.output := by lin_cert using reduction10679.terms
def image10680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10680 : InImage map_30_206 image10680 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10680 : Bundle := named_bundle% "RealMapCertificates/relations/basis10680.json"
theorem reductionProof10680 : EqualModuloRelations reduction10680.relations reduction10680.input reduction10680.output := by lin_cert using reduction10680.terms
theorem substitutionProof10680 : IsMapEvaluation generatorImages reduction10680.relations [8,8,8,9,13,209] reduction10680.output := by lin_cert using reduction10680.terms
def map_30_207 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10906 : InImage map_30_207 image10906 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10906 : Bundle := named_bundle% "RealMapCertificates/relations/basis10906.json"
theorem reductionProof10906 : EqualModuloRelations reduction10906.relations reduction10906.input reduction10906.output := by lin_cert using reduction10906.terms
theorem substitutionProof10906 : IsMapEvaluation generatorImages reduction10906.relations [8,9,13,13,267] reduction10906.output := by lin_cert using reduction10906.terms
def image10907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10907 : InImage map_30_207 image10907 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10907 : Bundle := named_bundle% "RealMapCertificates/relations/basis10907.json"
theorem reductionProof10907 : EqualModuloRelations reduction10907.relations reduction10907.input reduction10907.output := by lin_cert using reduction10907.terms
theorem substitutionProof10907 : IsMapEvaluation generatorImages reduction10907.relations [8,8,64,212] reduction10907.output := by lin_cert using reduction10907.terms
def map_30_208 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11031 : InImage map_30_208 image11031 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11031 : Bundle := named_bundle% "RealMapCertificates/relations/basis11031.json"
theorem reductionProof11031 : EqualModuloRelations reduction11031.relations reduction11031.input reduction11031.output := by lin_cert using reduction11031.terms
theorem substitutionProof11031 : IsMapEvaluation generatorImages reduction11031.relations [9,963] reduction11031.output := by lin_cert using reduction11031.terms
def image11032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11032 : InImage map_30_208 image11032 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11032 : Bundle := named_bundle% "RealMapCertificates/relations/basis11032.json"
theorem reductionProof11032 : EqualModuloRelations reduction11032.relations reduction11032.input reduction11032.output := by lin_cert using reduction11032.terms
theorem substitutionProof11032 : IsMapEvaluation generatorImages reduction11032.relations [9,13,13,13,13,13,75] reduction11032.output := by lin_cert using reduction11032.terms
def image11033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11033 : InImage map_30_208 image11033 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11033 : Bundle := named_bundle% "RealMapCertificates/relations/basis11033.json"
theorem reductionProof11033 : EqualModuloRelations reduction11033.relations reduction11033.input reduction11033.output := by lin_cert using reduction11033.terms
theorem substitutionProof11033 : IsMapEvaluation generatorImages reduction11033.relations [2,1255] reduction11033.output := by lin_cert using reduction11033.terms
def image11034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11034 : InImage map_30_208 image11034 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11034 : Bundle := named_bundle% "RealMapCertificates/relations/basis11034.json"
theorem reductionProof11034 : EqualModuloRelations reduction11034.relations reduction11034.input reduction11034.output := by lin_cert using reduction11034.terms
theorem substitutionProof11034 : IsMapEvaluation generatorImages reduction11034.relations [1,42,627] reduction11034.output := by lin_cert using reduction11034.terms
def map_30_209 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11212 : InImage map_30_209 image11212 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11212 : Bundle := named_bundle% "RealMapCertificates/relations/basis11212.json"
theorem reductionProof11212 : EqualModuloRelations reduction11212.relations reduction11212.input reduction11212.output := by lin_cert using reduction11212.terms
theorem substitutionProof11212 : IsMapEvaluation generatorImages reduction11212.relations [8,1035] reduction11212.output := by lin_cert using reduction11212.terms
def image11213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11213 : InImage map_30_209 image11213 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11213 : Bundle := named_bundle% "RealMapCertificates/relations/basis11213.json"
theorem reductionProof11213 : EqualModuloRelations reduction11213.relations reduction11213.input reduction11213.output := by lin_cert using reduction11213.terms
theorem substitutionProof11213 : IsMapEvaluation generatorImages reduction11213.relations [8,64,318] reduction11213.output := by lin_cert using reduction11213.terms
def image11214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11214 : InImage map_30_209 image11214 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11214 : Bundle := named_bundle% "RealMapCertificates/relations/basis11214.json"
theorem reductionProof11214 : EqualModuloRelations reduction11214.relations reduction11214.input reduction11214.output := by lin_cert using reduction11214.terms
theorem substitutionProof11214 : IsMapEvaluation generatorImages reduction11214.relations [8,8,8,13,13,209] reduction11214.output := by lin_cert using reduction11214.terms
end RealMapCertificates
