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
  | 23 => [[7,7]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 75 => []
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 117 => [[4,4,4,4,5,6]]
  | 135 => [[1,4,4,4,4,4,4,4]]
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 160 => [[6,8,12]]
  | 164 => []
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 181 => []
  | 188 => []
  | 189 => []
  | 194 => [[7,10,12]]
  | 209 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 267 => []
  | 279 => []
  | 286 => []
  | 303 => []
  | 324 => []
  | 348 => []
  | 581 => []
  | 610 => []
  | 627 => []
  | 628 => []
  | 638 => []
  | 640 => []
  | 655 => []
  | 667 => []
  | 690 => []
  | 693 => []
  | 704 => []
  | 706 => []
  | 729 => []
  | 761 => []
  | 876 => []
  | 900 => []
  | 963 => []
  | 1256 => []
  | 1350 => []
  | 1367 => []
  | 1385 => []
  | 1402 => []
  | 1403 => []
  | 1405 => []
  | 1428 => []
  | 1441 => []
  | 1475 => []
  | 1483 => []
  | 1484 => []
  | 1504 => []
  | 1539 => []
  | 1554 => []
  | 1571 => []
  | 1572 => []
  | 1596 => []
  | 1597 => []
  | 1621 => []
  | 1641 => []
  | 1652 => []
  | 1655 => []
  | 1689 => []
  | 1775 => []
  | _ => []
def map_30_210 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11417 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11417 : InImage map_30_210 image11417 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11417 : Bundle := named_bundle% "RealMapCertificates/relations/basis11417.json"
theorem reductionProof11417 : EqualModuloRelations reduction11417.relations reduction11417.input reduction11417.output := by lin_cert using reduction11417.terms
theorem substitutionProof11417 : IsMapEvaluation generatorImages reduction11417.relations [1367] reduction11417.output := by lin_cert using reduction11417.terms
def image11418 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11418 : InImage map_30_210 image11418 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11418 : Bundle := named_bundle% "RealMapCertificates/relations/basis11418.json"
theorem reductionProof11418 : EqualModuloRelations reduction11418.relations reduction11418.input reduction11418.output := by lin_cert using reduction11418.terms
theorem substitutionProof11418 : IsMapEvaluation generatorImages reduction11418.relations [13,13,23,303] reduction11418.output := by lin_cert using reduction11418.terms
def image11419 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11419 : InImage map_30_210 image11419 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11419 : Bundle := named_bundle% "RealMapCertificates/relations/basis11419.json"
theorem reductionProof11419 : EqualModuloRelations reduction11419.relations reduction11419.input reduction11419.output := by lin_cert using reduction11419.terms
theorem substitutionProof11419 : IsMapEvaluation generatorImages reduction11419.relations [8,13,13,13,267] reduction11419.output := by lin_cert using reduction11419.terms
def image11420 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11420 : InImage map_30_210 image11420 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11420 : Bundle := named_bundle% "RealMapCertificates/relations/basis11420.json"
theorem reductionProof11420 : EqualModuloRelations reduction11420.relations reduction11420.input reduction11420.output := by lin_cert using reduction11420.terms
theorem substitutionProof11420 : IsMapEvaluation generatorImages reduction11420.relations [8,8,8,610] reduction11420.output := by lin_cert using reduction11420.terms
def map_30_211 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11574 : InImage map_30_211 image11574 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11574 : Bundle := named_bundle% "RealMapCertificates/relations/basis11574.json"
theorem reductionProof11574 : EqualModuloRelations reduction11574.relations reduction11574.input reduction11574.output := by lin_cert using reduction11574.terms
theorem substitutionProof11574 : IsMapEvaluation generatorImages reduction11574.relations [1385] reduction11574.output := by lin_cert using reduction11574.terms
def image11575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11575 : InImage map_30_211 image11575 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11575 : Bundle := named_bundle% "RealMapCertificates/relations/basis11575.json"
theorem reductionProof11575 : EqualModuloRelations reduction11575.relations reduction11575.input reduction11575.output := by lin_cert using reduction11575.terms
theorem substitutionProof11575 : IsMapEvaluation generatorImages reduction11575.relations [13,963] reduction11575.output := by lin_cert using reduction11575.terms
def image11576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11576 : InImage map_30_211 image11576 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11576 : Bundle := named_bundle% "RealMapCertificates/relations/basis11576.json"
theorem reductionProof11576 : EqualModuloRelations reduction11576.relations reduction11576.input reduction11576.output := by lin_cert using reduction11576.terms
theorem substitutionProof11576 : IsMapEvaluation generatorImages reduction11576.relations [13,13,13,13,13,13,75] reduction11576.output := by lin_cert using reduction11576.terms
def map_30_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11752 : InImage map_30_212 image11752 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11752 : Bundle := named_bundle% "RealMapCertificates/relations/basis11752.json"
theorem reductionProof11752 : EqualModuloRelations reduction11752.relations reduction11752.input reduction11752.output := by lin_cert using reduction11752.terms
theorem substitutionProof11752 : IsMapEvaluation generatorImages reduction11752.relations [1402] reduction11752.output := by lin_cert using reduction11752.terms
def image11753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11753 : InImage map_30_212 image11753 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11753 : Bundle := named_bundle% "RealMapCertificates/relations/basis11753.json"
theorem reductionProof11753 : EqualModuloRelations reduction11753.relations reduction11753.input reduction11753.output := by lin_cert using reduction11753.terms
theorem substitutionProof11753 : IsMapEvaluation generatorImages reduction11753.relations [8,64,348] reduction11753.output := by lin_cert using reduction11753.terms
def image11754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11754 : InImage map_30_212 image11754 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11754 : Bundle := named_bundle% "RealMapCertificates/relations/basis11754.json"
theorem reductionProof11754 : EqualModuloRelations reduction11754.relations reduction11754.input reduction11754.output := by lin_cert using reduction11754.terms
theorem substitutionProof11754 : IsMapEvaluation generatorImages reduction11754.relations [8,23,627] reduction11754.output := by lin_cert using reduction11754.terms
def image11755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11755 : InImage map_30_212 image11755 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11755 : Bundle := named_bundle% "RealMapCertificates/relations/basis11755.json"
theorem reductionProof11755 : EqualModuloRelations reduction11755.relations reduction11755.input reduction11755.output := by lin_cert using reduction11755.terms
theorem substitutionProof11755 : IsMapEvaluation generatorImages reduction11755.relations [8,8,9,13,13,209] reduction11755.output := by lin_cert using reduction11755.terms
def image11756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11756 : InImage map_30_212 image11756 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11756 : Bundle := named_bundle% "RealMapCertificates/relations/basis11756.json"
theorem reductionProof11756 : EqualModuloRelations reduction11756.relations reduction11756.input reduction11756.output := by lin_cert using reduction11756.terms
theorem substitutionProof11756 : IsMapEvaluation generatorImages reduction11756.relations [2,2,1256] reduction11756.output := by lin_cert using reduction11756.terms
def map_30_213 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12002 : InImage map_30_213 image12002 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12002 : Bundle := named_bundle% "RealMapCertificates/relations/basis12002.json"
theorem reductionProof12002 : EqualModuloRelations reduction12002.relations reduction12002.input reduction12002.output := by lin_cert using reduction12002.terms
theorem substitutionProof12002 : IsMapEvaluation generatorImages reduction12002.relations [9,13,13,13,267] reduction12002.output := by lin_cert using reduction12002.terms
def image12003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12003 : InImage map_30_213 image12003 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12003 : Bundle := named_bundle% "RealMapCertificates/relations/basis12003.json"
theorem reductionProof12003 : EqualModuloRelations reduction12003.relations reduction12003.input reduction12003.output := by lin_cert using reduction12003.terms
theorem substitutionProof12003 : IsMapEvaluation generatorImages reduction12003.relations [8,8,8,640] reduction12003.output := by lin_cert using reduction12003.terms
def map_30_214 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12162 : InImage map_30_214 image12162 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12162 : Bundle := named_bundle% "RealMapCertificates/relations/basis12162.json"
theorem reductionProof12162 : EqualModuloRelations reduction12162.relations reduction12162.input reduction12162.output := by lin_cert using reduction12162.terms
theorem substitutionProof12162 : IsMapEvaluation generatorImages reduction12162.relations [149,279] reduction12162.output := by lin_cert using reduction12162.terms
def image12163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12163 : InImage map_30_214 image12163 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12163 : Bundle := named_bundle% "RealMapCertificates/relations/basis12163.json"
theorem reductionProof12163 : EqualModuloRelations reduction12163.relations reduction12163.input reduction12163.output := by lin_cert using reduction12163.terms
theorem substitutionProof12163 : IsMapEvaluation generatorImages reduction12163.relations [135,324] reduction12163.output := by lin_cert using reduction12163.terms
def image12164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12164 : InImage map_30_214 image12164 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12164 : Bundle := named_bundle% "RealMapCertificates/relations/basis12164.json"
theorem reductionProof12164 : EqualModuloRelations reduction12164.relations reduction12164.input reduction12164.output := by lin_cert using reduction12164.terms
theorem substitutionProof12164 : IsMapEvaluation generatorImages reduction12164.relations [0,0,1403] reduction12164.output := by lin_cert using reduction12164.terms
def map_30_215 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12355 : InImage map_30_215 image12355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12355 : Bundle := named_bundle% "RealMapCertificates/relations/basis12355.json"
theorem reductionProof12355 : EqualModuloRelations reduction12355.relations reduction12355.input reduction12355.output := by lin_cert using reduction12355.terms
theorem substitutionProof12355 : IsMapEvaluation generatorImages reduction12355.relations [8,23,655] reduction12355.output := by lin_cert using reduction12355.terms
def image12356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12356 : InImage map_30_215 image12356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12356 : Bundle := named_bundle% "RealMapCertificates/relations/basis12356.json"
theorem reductionProof12356 : EqualModuloRelations reduction12356.relations reduction12356.input reduction12356.output := by lin_cert using reduction12356.terms
theorem substitutionProof12356 : IsMapEvaluation generatorImages reduction12356.relations [8,8,64,250] reduction12356.output := by lin_cert using reduction12356.terms
def image12357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12357 : InImage map_30_215 image12357 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12357 : Bundle := named_bundle% "RealMapCertificates/relations/basis12357.json"
theorem reductionProof12357 : EqualModuloRelations reduction12357.relations reduction12357.input reduction12357.output := by lin_cert using reduction12357.terms
theorem substitutionProof12357 : IsMapEvaluation generatorImages reduction12357.relations [8,8,13,13,13,209] reduction12357.output := by lin_cert using reduction12357.terms
def map_30_216 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12562 : InImage map_30_216 image12562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12562 : Bundle := named_bundle% "RealMapCertificates/relations/basis12562.json"
theorem reductionProof12562 : EqualModuloRelations reduction12562.relations reduction12562.input reduction12562.output := by lin_cert using reduction12562.terms
theorem substitutionProof12562 : IsMapEvaluation generatorImages reduction12562.relations [140,324] reduction12562.output := by lin_cert using reduction12562.terms
def image12563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12563 : InImage map_30_216 image12563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12563 : Bundle := named_bundle% "RealMapCertificates/relations/basis12563.json"
theorem reductionProof12563 : EqualModuloRelations reduction12563.relations reduction12563.input reduction12563.output := by lin_cert using reduction12563.terms
theorem substitutionProof12563 : IsMapEvaluation generatorImages reduction12563.relations [13,13,13,13,267] reduction12563.output := by lin_cert using reduction12563.terms
def image12564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12564 : InImage map_30_216 image12564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12564 : Bundle := named_bundle% "RealMapCertificates/relations/basis12564.json"
theorem reductionProof12564 : EqualModuloRelations reduction12564.relations reduction12564.input reduction12564.output := by lin_cert using reduction12564.terms
theorem substitutionProof12564 : IsMapEvaluation generatorImages reduction12564.relations [9,13,13,13,286] reduction12564.output := by lin_cert using reduction12564.terms
def image12565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12565 : InImage map_30_216 image12565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12565 : Bundle := named_bundle% "RealMapCertificates/relations/basis12565.json"
theorem reductionProof12565 : EqualModuloRelations reduction12565.relations reduction12565.input reduction12565.output := by lin_cert using reduction12565.terms
theorem substitutionProof12565 : IsMapEvaluation generatorImages reduction12565.relations [8,8,9,640] reduction12565.output := by lin_cert using reduction12565.terms
def image12566 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12566 : InImage map_30_216 image12566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12566 : Bundle := named_bundle% "RealMapCertificates/relations/basis12566.json"
theorem reductionProof12566 : EqualModuloRelations reduction12566.relations reduction12566.input reduction12566.output := by lin_cert using reduction12566.terms
theorem substitutionProof12566 : IsMapEvaluation generatorImages reduction12566.relations [0,0,1441] reduction12566.output := by lin_cert using reduction12566.terms
def map_30_217 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12727 : InImage map_30_217 image12727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12727 : Bundle := named_bundle% "RealMapCertificates/relations/basis12727.json"
theorem reductionProof12727 : EqualModuloRelations reduction12727.relations reduction12727.input reduction12727.output := by lin_cert using reduction12727.terms
theorem substitutionProof12727 : IsMapEvaluation generatorImages reduction12727.relations [13,13,13,13,13,164] reduction12727.output := by lin_cert using reduction12727.terms
def image12728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12728 : InImage map_30_217 image12728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12728 : Bundle := named_bundle% "RealMapCertificates/relations/basis12728.json"
theorem reductionProof12728 : EqualModuloRelations reduction12728.relations reduction12728.input reduction12728.output := by lin_cert using reduction12728.terms
theorem substitutionProof12728 : IsMapEvaluation generatorImages reduction12728.relations [8,149,209] reduction12728.output := by lin_cert using reduction12728.terms
def image12729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12729 : InImage map_30_217 image12729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12729 : Bundle := named_bundle% "RealMapCertificates/relations/basis12729.json"
theorem reductionProof12729 : EqualModuloRelations reduction12729.relations reduction12729.input reduction12729.output := by lin_cert using reduction12729.terms
theorem substitutionProof12729 : IsMapEvaluation generatorImages reduction12729.relations [0,1483] reduction12729.output := by lin_cert using reduction12729.terms
def map_30_218 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12910 : InImage map_30_218 image12910 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12910 : Bundle := named_bundle% "RealMapCertificates/relations/basis12910.json"
theorem reductionProof12910 : EqualModuloRelations reduction12910.relations reduction12910.input reduction12910.output := by lin_cert using reduction12910.terms
theorem substitutionProof12910 : IsMapEvaluation generatorImages reduction12910.relations [23,900] reduction12910.output := by lin_cert using reduction12910.terms
def image12911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12911 : InImage map_30_218 image12911 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12911 : Bundle := named_bundle% "RealMapCertificates/relations/basis12911.json"
theorem reductionProof12911 : EqualModuloRelations reduction12911.relations reduction12911.input reduction12911.output := by lin_cert using reduction12911.terms
theorem substitutionProof12911 : IsMapEvaluation generatorImages reduction12911.relations [8,23,690] reduction12911.output := by lin_cert using reduction12911.terms
def image12912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12912 : InImage map_30_218 image12912 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12912 : Bundle := named_bundle% "RealMapCertificates/relations/basis12912.json"
theorem reductionProof12912 : EqualModuloRelations reduction12912.relations reduction12912.input reduction12912.output := by lin_cert using reduction12912.terms
theorem substitutionProof12912 : IsMapEvaluation generatorImages reduction12912.relations [8,9,13,13,13,209] reduction12912.output := by lin_cert using reduction12912.terms
def image12913 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12913 : InImage map_30_218 image12913 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12913 : Bundle := named_bundle% "RealMapCertificates/relations/basis12913.json"
theorem reductionProof12913 : EqualModuloRelations reduction12913.relations reduction12913.input reduction12913.output := by lin_cert using reduction12913.terms
theorem substitutionProof12913 : IsMapEvaluation generatorImages reduction12913.relations [8,8,64,261] reduction12913.output := by lin_cert using reduction12913.terms
def image12914 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12914 : InImage map_30_218 image12914 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12914 : Bundle := named_bundle% "RealMapCertificates/relations/basis12914.json"
theorem reductionProof12914 : EqualModuloRelations reduction12914.relations reduction12914.input reduction12914.output := by lin_cert using reduction12914.terms
theorem substitutionProof12914 : IsMapEvaluation generatorImages reduction12914.relations [1,1,1441] reduction12914.output := by lin_cert using reduction12914.terms
def image12915 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12915 : InImage map_30_218 image12915 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12915 : Bundle := named_bundle% "RealMapCertificates/relations/basis12915.json"
theorem reductionProof12915 : EqualModuloRelations reduction12915.relations reduction12915.input reduction12915.output := by lin_cert using reduction12915.terms
theorem substitutionProof12915 : IsMapEvaluation generatorImages reduction12915.relations [0,0,1484] reduction12915.output := by lin_cert using reduction12915.terms
def map_30_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13151 : InImage map_30_219 image13151 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13151 : Bundle := named_bundle% "RealMapCertificates/relations/basis13151.json"
theorem reductionProof13151 : EqualModuloRelations reduction13151.relations reduction13151.input reduction13151.output := by lin_cert using reduction13151.terms
theorem substitutionProof13151 : IsMapEvaluation generatorImages reduction13151.relations [13,13,13,13,286] reduction13151.output := by lin_cert using reduction13151.terms
def image13152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13152 : InImage map_30_219 image13152 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13152 : Bundle := named_bundle% "RealMapCertificates/relations/basis13152.json"
theorem reductionProof13152 : EqualModuloRelations reduction13152.relations reduction13152.input reduction13152.output := by lin_cert using reduction13152.terms
theorem substitutionProof13152 : IsMapEvaluation generatorImages reduction13152.relations [8,8,13,640] reduction13152.output := by lin_cert using reduction13152.terms
def image13153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13153 : InImage map_30_219 image13153 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13153 : Bundle := named_bundle% "RealMapCertificates/relations/basis13153.json"
theorem reductionProof13153 : EqualModuloRelations reduction13153.relations reduction13153.input reduction13153.output := by lin_cert using reduction13153.terms
theorem substitutionProof13153 : IsMapEvaluation generatorImages reduction13153.relations [0,145,324] reduction13153.output := by lin_cert using reduction13153.terms
def image13154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13154 : InImage map_30_219 image13154 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13154 : Bundle := named_bundle% "RealMapCertificates/relations/basis13154.json"
theorem reductionProof13154 : EqualModuloRelations reduction13154.relations reduction13154.input reduction13154.output := by lin_cert using reduction13154.terms
theorem substitutionProof13154 : IsMapEvaluation generatorImages reduction13154.relations [0,0,1504] reduction13154.output := by lin_cert using reduction13154.terms
def map_30_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13288 : InImage map_30_220 image13288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13288 : Bundle := named_bundle% "RealMapCertificates/relations/basis13288.json"
theorem reductionProof13288 : EqualModuloRelations reduction13288.relations reduction13288.input reduction13288.output := by lin_cert using reduction13288.terms
theorem substitutionProof13288 : IsMapEvaluation generatorImages reduction13288.relations [8,160,209] reduction13288.output := by lin_cert using reduction13288.terms
def image13289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13289 : InImage map_30_220 image13289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13289 : Bundle := named_bundle% "RealMapCertificates/relations/basis13289.json"
theorem reductionProof13289 : EqualModuloRelations reduction13289.relations reduction13289.input reduction13289.output := by lin_cert using reduction13289.terms
theorem substitutionProof13289 : IsMapEvaluation generatorImages reduction13289.relations [1,145,324] reduction13289.output := by lin_cert using reduction13289.terms
def image13290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13290 : InImage map_30_220 image13290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13290 : Bundle := named_bundle% "RealMapCertificates/relations/basis13290.json"
theorem reductionProof13290 : EqualModuloRelations reduction13290.relations reduction13290.input reduction13290.output := by lin_cert using reduction13290.terms
theorem substitutionProof13290 : IsMapEvaluation generatorImages reduction13290.relations [1,1,1484] reduction13290.output := by lin_cert using reduction13290.terms
def map_30_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13481 : InImage map_30_221 image13481 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13481 : Bundle := named_bundle% "RealMapCertificates/relations/basis13481.json"
theorem reductionProof13481 : EqualModuloRelations reduction13481.relations reduction13481.input reduction13481.output := by lin_cert using reduction13481.terms
theorem substitutionProof13481 : IsMapEvaluation generatorImages reduction13481.relations [64,627] reduction13481.output := by lin_cert using reduction13481.terms
def image13482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13482 : InImage map_30_221 image13482 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13482 : Bundle := named_bundle% "RealMapCertificates/relations/basis13482.json"
theorem reductionProof13482 : EqualModuloRelations reduction13482.relations reduction13482.input reduction13482.output := by lin_cert using reduction13482.terms
theorem substitutionProof13482 : IsMapEvaluation generatorImages reduction13482.relations [9,23,690] reduction13482.output := by lin_cert using reduction13482.terms
def image13483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13483 : InImage map_30_221 image13483 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13483 : Bundle := named_bundle% "RealMapCertificates/relations/basis13483.json"
theorem reductionProof13483 : EqualModuloRelations reduction13483.relations reduction13483.input reduction13483.output := by lin_cert using reduction13483.terms
theorem substitutionProof13483 : IsMapEvaluation generatorImages reduction13483.relations [8,13,13,13,13,209] reduction13483.output := by lin_cert using reduction13483.terms
def image13484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13484 : InImage map_30_221 image13484 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13484 : Bundle := named_bundle% "RealMapCertificates/relations/basis13484.json"
theorem reductionProof13484 : EqualModuloRelations reduction13484.relations reduction13484.input reduction13484.output := by lin_cert using reduction13484.terms
theorem substitutionProof13484 : IsMapEvaluation generatorImages reduction13484.relations [8,8,8,729] reduction13484.output := by lin_cert using reduction13484.terms
def image13485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13485 : InImage map_30_221 image13485 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13485 : Bundle := named_bundle% "RealMapCertificates/relations/basis13485.json"
theorem reductionProof13485 : EqualModuloRelations reduction13485.relations reduction13485.input reduction13485.output := by lin_cert using reduction13485.terms
theorem substitutionProof13485 : IsMapEvaluation generatorImages reduction13485.relations [0,2,1484] reduction13485.output := by lin_cert using reduction13485.terms
def map_30_222 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13709 : InImage map_30_222 image13709 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13709 : Bundle := named_bundle% "RealMapCertificates/relations/basis13709.json"
theorem reductionProof13709 : EqualModuloRelations reduction13709.relations reduction13709.input reduction13709.output := by lin_cert using reduction13709.terms
theorem substitutionProof13709 : IsMapEvaluation generatorImages reduction13709.relations [13,13,13,13,13,189] reduction13709.output := by lin_cert using reduction13709.terms
def image13710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13710 : InImage map_30_222 image13710 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13710 : Bundle := named_bundle% "RealMapCertificates/relations/basis13710.json"
theorem reductionProof13710 : EqualModuloRelations reduction13710.relations reduction13710.input reduction13710.output := by lin_cert using reduction13710.terms
theorem substitutionProof13710 : IsMapEvaluation generatorImages reduction13710.relations [8,9,13,640] reduction13710.output := by lin_cert using reduction13710.terms
def image13711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13711 : InImage map_30_222 image13711 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13711 : Bundle := named_bundle% "RealMapCertificates/relations/basis13711.json"
theorem reductionProof13711 : EqualModuloRelations reduction13711.relations reduction13711.input reduction13711.output := by lin_cert using reduction13711.terms
theorem substitutionProof13711 : IsMapEvaluation generatorImages reduction13711.relations [0,188,260] reduction13711.output := by lin_cert using reduction13711.terms
def image13712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13712 : InImage map_30_222 image13712 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13712 : Bundle := named_bundle% "RealMapCertificates/relations/basis13712.json"
theorem reductionProof13712 : EqualModuloRelations reduction13712.relations reduction13712.input reduction13712.output := by lin_cert using reduction13712.terms
theorem substitutionProof13712 : IsMapEvaluation generatorImages reduction13712.relations [0,152,324] reduction13712.output := by lin_cert using reduction13712.terms
def image13713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13713 : InImage map_30_222 image13713 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13713 : Bundle := named_bundle% "RealMapCertificates/relations/basis13713.json"
theorem reductionProof13713 : EqualModuloRelations reduction13713.relations reduction13713.input reduction13713.output := by lin_cert using reduction13713.terms
theorem substitutionProof13713 : IsMapEvaluation generatorImages reduction13713.relations [0,0,1554] reduction13713.output := by lin_cert using reduction13713.terms
def map_30_223 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13863 : InImage map_30_223 image13863 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13863 : Bundle := named_bundle% "RealMapCertificates/relations/basis13863.json"
theorem reductionProof13863 : EqualModuloRelations reduction13863.relations reduction13863.input reduction13863.output := by lin_cert using reduction13863.terms
theorem substitutionProof13863 : IsMapEvaluation generatorImages reduction13863.relations [8,166,209] reduction13863.output := by lin_cert using reduction13863.terms
def image13864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13864 : InImage map_30_223 image13864 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13864 : Bundle := named_bundle% "RealMapCertificates/relations/basis13864.json"
theorem reductionProof13864 : EqualModuloRelations reduction13864.relations reduction13864.input reduction13864.output := by lin_cert using reduction13864.terms
theorem substitutionProof13864 : IsMapEvaluation generatorImages reduction13864.relations [0,1596] reduction13864.output := by lin_cert using reduction13864.terms
def image13865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13865 : InImage map_30_223 image13865 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13865 : Bundle := named_bundle% "RealMapCertificates/relations/basis13865.json"
theorem reductionProof13865 : EqualModuloRelations reduction13865.relations reduction13865.input reduction13865.output := by lin_cert using reduction13865.terms
theorem substitutionProof13865 : IsMapEvaluation generatorImages reduction13865.relations [0,0,153,324] reduction13865.output := by lin_cert using reduction13865.terms
def image13866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13866 : InImage map_30_223 image13866 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13866 : Bundle := named_bundle% "RealMapCertificates/relations/basis13866.json"
theorem reductionProof13866 : EqualModuloRelations reduction13866.relations reduction13866.input reduction13866.output := by lin_cert using reduction13866.terms
theorem substitutionProof13866 : IsMapEvaluation generatorImages reduction13866.relations [0,0,0,0,1539] reduction13866.output := by lin_cert using reduction13866.terms
def map_30_224 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image14037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14037 : InImage map_30_224 image14037 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction14037 : Bundle := named_bundle% "RealMapCertificates/relations/basis14037.json"
theorem reductionProof14037 : EqualModuloRelations reduction14037.relations reduction14037.input reduction14037.output := by lin_cert using reduction14037.terms
theorem substitutionProof14037 : IsMapEvaluation generatorImages reduction14037.relations [1621] reduction14037.output := by lin_cert using reduction14037.terms
def image14038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14038 : InImage map_30_224 image14038 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction14038 : Bundle := named_bundle% "RealMapCertificates/relations/basis14038.json"
theorem reductionProof14038 : EqualModuloRelations reduction14038.relations reduction14038.input reduction14038.output := by lin_cert using reduction14038.terms
theorem substitutionProof14038 : IsMapEvaluation generatorImages reduction14038.relations [64,655] reduction14038.output := by lin_cert using reduction14038.terms
def image14039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14039 : InImage map_30_224 image14039 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction14039 : Bundle := named_bundle% "RealMapCertificates/relations/basis14039.json"
theorem reductionProof14039 : EqualModuloRelations reduction14039.relations reduction14039.input reduction14039.output := by lin_cert using reduction14039.terms
theorem substitutionProof14039 : IsMapEvaluation generatorImages reduction14039.relations [13,23,690] reduction14039.output := by lin_cert using reduction14039.terms
def image14040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14040 : InImage map_30_224 image14040 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction14040 : Bundle := named_bundle% "RealMapCertificates/relations/basis14040.json"
theorem reductionProof14040 : EqualModuloRelations reduction14040.relations reduction14040.input reduction14040.output := by lin_cert using reduction14040.terms
theorem substitutionProof14040 : IsMapEvaluation generatorImages reduction14040.relations [9,13,876] reduction14040.output := by lin_cert using reduction14040.terms
def image14041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14041 : InImage map_30_224 image14041 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction14041 : Bundle := named_bundle% "RealMapCertificates/relations/basis14041.json"
theorem reductionProof14041 : EqualModuloRelations reduction14041.relations reduction14041.input reduction14041.output := by lin_cert using reduction14041.terms
theorem substitutionProof14041 : IsMapEvaluation generatorImages reduction14041.relations [9,13,13,13,13,209] reduction14041.output := by lin_cert using reduction14041.terms
def image14042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14042 : InImage map_30_224 image14042 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction14042 : Bundle := named_bundle% "RealMapCertificates/relations/basis14042.json"
theorem reductionProof14042 : EqualModuloRelations reduction14042.relations reduction14042.input reduction14042.output := by lin_cert using reduction14042.terms
theorem substitutionProof14042 : IsMapEvaluation generatorImages reduction14042.relations [8,8,8,761] reduction14042.output := by lin_cert using reduction14042.terms
def image14043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14043 : InImage map_30_224 image14043 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction14043 : Bundle := named_bundle% "RealMapCertificates/relations/basis14043.json"
theorem reductionProof14043 : EqualModuloRelations reduction14043.relations reduction14043.input reduction14043.output := by lin_cert using reduction14043.terms
theorem substitutionProof14043 : IsMapEvaluation generatorImages reduction14043.relations [1,64,638] reduction14043.output := by lin_cert using reduction14043.terms
def image14044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14044 : InImage map_30_224 image14044 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction14044 : Bundle := named_bundle% "RealMapCertificates/relations/basis14044.json"
theorem reductionProof14044 : EqualModuloRelations reduction14044.relations reduction14044.input reduction14044.output := by lin_cert using reduction14044.terms
theorem substitutionProof14044 : IsMapEvaluation generatorImages reduction14044.relations [0,0,1597] reduction14044.output := by lin_cert using reduction14044.terms
def image14045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14045 : InImage map_30_224 image14045 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction14045 : Bundle := named_bundle% "RealMapCertificates/relations/basis14045.json"
theorem reductionProof14045 : EqualModuloRelations reduction14045.relations reduction14045.input reduction14045.output := by lin_cert using reduction14045.terms
theorem substitutionProof14045 : IsMapEvaluation generatorImages reduction14045.relations [0,0,0,1571] reduction14045.output := by lin_cert using reduction14045.terms
def map_30_225 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14276 : InImage map_30_225 image14276 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14276 : Bundle := named_bundle% "RealMapCertificates/relations/basis14276.json"
theorem reductionProof14276 : EqualModuloRelations reduction14276.relations reduction14276.input reduction14276.output := by lin_cert using reduction14276.terms
theorem substitutionProof14276 : IsMapEvaluation generatorImages reduction14276.relations [64,667] reduction14276.output := by lin_cert using reduction14276.terms
def image14277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14277 : InImage map_30_225 image14277 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14277 : Bundle := named_bundle% "RealMapCertificates/relations/basis14277.json"
theorem reductionProof14277 : EqualModuloRelations reduction14277.relations reduction14277.input reduction14277.output := by lin_cert using reduction14277.terms
theorem substitutionProof14277 : IsMapEvaluation generatorImages reduction14277.relations [13,13,13,581] reduction14277.output := by lin_cert using reduction14277.terms
def image14278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14278 : InImage map_30_225 image14278 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14278 : Bundle := named_bundle% "RealMapCertificates/relations/basis14278.json"
theorem reductionProof14278 : EqualModuloRelations reduction14278.relations reduction14278.input reduction14278.output := by lin_cert using reduction14278.terms
theorem substitutionProof14278 : IsMapEvaluation generatorImages reduction14278.relations [8,13,13,640] reduction14278.output := by lin_cert using reduction14278.terms
def image14279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14279 : InImage map_30_225 image14279 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14279 : Bundle := named_bundle% "RealMapCertificates/relations/basis14279.json"
theorem reductionProof14279 : EqualModuloRelations reduction14279.relations reduction14279.input reduction14279.output := by lin_cert using reduction14279.terms
theorem substitutionProof14279 : IsMapEvaluation generatorImages reduction14279.relations [0,3,1484] reduction14279.output := by lin_cert using reduction14279.terms
def image14280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14280 : InImage map_30_225 image14280 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14280 : Bundle := named_bundle% "RealMapCertificates/relations/basis14280.json"
theorem reductionProof14280 : EqualModuloRelations reduction14280.relations reduction14280.input reduction14280.output := by lin_cert using reduction14280.terms
theorem substitutionProof14280 : IsMapEvaluation generatorImages reduction14280.relations [0,2,1554] reduction14280.output := by lin_cert using reduction14280.terms
def image14281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14281 : InImage map_30_225 image14281 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14281 : Bundle := named_bundle% "RealMapCertificates/relations/basis14281.json"
theorem reductionProof14281 : EqualModuloRelations reduction14281.relations reduction14281.input reduction14281.output := by lin_cert using reduction14281.terms
theorem substitutionProof14281 : IsMapEvaluation generatorImages reduction14281.relations [0,0,0,0,1572] reduction14281.output := by lin_cert using reduction14281.terms
def map_30_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14413 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14413 : InImage map_30_226 image14413 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14413 : Bundle := named_bundle% "RealMapCertificates/relations/basis14413.json"
theorem reductionProof14413 : EqualModuloRelations reduction14413.relations reduction14413.input reduction14413.output := by lin_cert using reduction14413.terms
theorem substitutionProof14413 : IsMapEvaluation generatorImages reduction14413.relations [8,180,209] reduction14413.output := by lin_cert using reduction14413.terms
def image14414 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14414 : InImage map_30_226 image14414 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14414 : Bundle := named_bundle% "RealMapCertificates/relations/basis14414.json"
theorem reductionProof14414 : EqualModuloRelations reduction14414.relations reduction14414.input reduction14414.output := by lin_cert using reduction14414.terms
theorem substitutionProof14414 : IsMapEvaluation generatorImages reduction14414.relations [0,0,8,111,324] reduction14414.output := by lin_cert using reduction14414.terms
def map_30_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14612 : InImage map_30_227 image14612 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14612 : Bundle := named_bundle% "RealMapCertificates/relations/basis14612.json"
theorem reductionProof14612 : EqualModuloRelations reduction14612.relations reduction14612.input reduction14612.output := by lin_cert using reduction14612.terms
theorem substitutionProof14612 : IsMapEvaluation generatorImages reduction14612.relations [64,690] reduction14612.output := by lin_cert using reduction14612.terms
def image14613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14613 : InImage map_30_227 image14613 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14613 : Bundle := named_bundle% "RealMapCertificates/relations/basis14613.json"
theorem reductionProof14613 : EqualModuloRelations reduction14613.relations reduction14613.input reduction14613.output := by lin_cert using reduction14613.terms
theorem substitutionProof14613 : IsMapEvaluation generatorImages reduction14613.relations [13,13,876] reduction14613.output := by lin_cert using reduction14613.terms
def image14614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14614 : InImage map_30_227 image14614 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14614 : Bundle := named_bundle% "RealMapCertificates/relations/basis14614.json"
theorem reductionProof14614 : EqualModuloRelations reduction14614.relations reduction14614.input reduction14614.output := by lin_cert using reduction14614.terms
theorem substitutionProof14614 : IsMapEvaluation generatorImages reduction14614.relations [13,13,13,13,13,209] reduction14614.output := by lin_cert using reduction14614.terms
def image14615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14615 : InImage map_30_227 image14615 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14615 : Bundle := named_bundle% "RealMapCertificates/relations/basis14615.json"
theorem reductionProof14615 : EqualModuloRelations reduction14615.relations reduction14615.input reduction14615.output := by lin_cert using reduction14615.terms
theorem substitutionProof14615 : IsMapEvaluation generatorImages reduction14615.relations [8,8,9,761] reduction14615.output := by lin_cert using reduction14615.terms
def map_30_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14845 : InImage map_30_228 image14845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14845 : Bundle := named_bundle% "RealMapCertificates/relations/basis14845.json"
theorem reductionProof14845 : EqualModuloRelations reduction14845.relations reduction14845.input reduction14845.output := by lin_cert using reduction14845.terms
theorem substitutionProof14845 : IsMapEvaluation generatorImages reduction14845.relations [1689] reduction14845.output := by lin_cert using reduction14845.terms
def image14846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14846 : InImage map_30_228 image14846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14846 : Bundle := named_bundle% "RealMapCertificates/relations/basis14846.json"
theorem reductionProof14846 : EqualModuloRelations reduction14846.relations reduction14846.input reduction14846.output := by lin_cert using reduction14846.terms
theorem substitutionProof14846 : IsMapEvaluation generatorImages reduction14846.relations [64,704] reduction14846.output := by lin_cert using reduction14846.terms
def image14847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14847 : InImage map_30_228 image14847 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14847 : Bundle := named_bundle% "RealMapCertificates/relations/basis14847.json"
theorem reductionProof14847 : EqualModuloRelations reduction14847.relations reduction14847.input reduction14847.output := by lin_cert using reduction14847.terms
theorem substitutionProof14847 : IsMapEvaluation generatorImages reduction14847.relations [9,13,13,640] reduction14847.output := by lin_cert using reduction14847.terms
def image14848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14848 : InImage map_30_228 image14848 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14848 : Bundle := named_bundle% "RealMapCertificates/relations/basis14848.json"
theorem reductionProof14848 : EqualModuloRelations reduction14848.relations reduction14848.input reduction14848.output := by lin_cert using reduction14848.terms
theorem substitutionProof14848 : IsMapEvaluation generatorImages reduction14848.relations [0,8,116,324] reduction14848.output := by lin_cert using reduction14848.terms
def image14849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14849 : InImage map_30_228 image14849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14849 : Bundle := named_bundle% "RealMapCertificates/relations/basis14849.json"
theorem reductionProof14849 : EqualModuloRelations reduction14849.relations reduction14849.input reduction14849.output := by lin_cert using reduction14849.terms
theorem substitutionProof14849 : IsMapEvaluation generatorImages reduction14849.relations [0,0,209,260] reduction14849.output := by lin_cert using reduction14849.terms
def map_30_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15011 : InImage map_30_229 image15011 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15011 : Bundle := named_bundle% "RealMapCertificates/relations/basis15011.json"
theorem reductionProof15011 : EqualModuloRelations reduction15011.relations reduction15011.input reduction15011.output := by lin_cert using reduction15011.terms
theorem substitutionProof15011 : IsMapEvaluation generatorImages reduction15011.relations [8,194,209] reduction15011.output := by lin_cert using reduction15011.terms
def image15012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15012 : InImage map_30_229 image15012 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15012 : Bundle := named_bundle% "RealMapCertificates/relations/basis15012.json"
theorem reductionProof15012 : EqualModuloRelations reduction15012.relations reduction15012.input reduction15012.output := by lin_cert using reduction15012.terms
theorem substitutionProof15012 : IsMapEvaluation generatorImages reduction15012.relations [0,64,706] reduction15012.output := by lin_cert using reduction15012.terms
def image15013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15013 : InImage map_30_229 image15013 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15013 : Bundle := named_bundle% "RealMapCertificates/relations/basis15013.json"
theorem reductionProof15013 : EqualModuloRelations reduction15013.relations reduction15013.input reduction15013.output := by lin_cert using reduction15013.terms
theorem substitutionProof15013 : IsMapEvaluation generatorImages reduction15013.relations [0,0,8,117,324] reduction15013.output := by lin_cert using reduction15013.terms
def image15014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15014 : InImage map_30_229 image15014 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15014 : Bundle := named_bundle% "RealMapCertificates/relations/basis15014.json"
theorem reductionProof15014 : EqualModuloRelations reduction15014.relations reduction15014.input reduction15014.output := by lin_cert using reduction15014.terms
theorem substitutionProof15014 : IsMapEvaluation generatorImages reduction15014.relations [0,0,0,1652] reduction15014.output := by lin_cert using reduction15014.terms
def map_30_230 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15217 : InImage map_30_230 image15217 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15217 : Bundle := named_bundle% "RealMapCertificates/relations/basis15217.json"
theorem reductionProof15217 : EqualModuloRelations reduction15217.relations reduction15217.input reduction15217.output := by lin_cert using reduction15217.terms
theorem substitutionProof15217 : IsMapEvaluation generatorImages reduction15217.relations [13,13,13,628] reduction15217.output := by lin_cert using reduction15217.terms
def image15218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15218 : InImage map_30_230 image15218 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15218 : Bundle := named_bundle% "RealMapCertificates/relations/basis15218.json"
theorem reductionProof15218 : EqualModuloRelations reduction15218.relations reduction15218.input reduction15218.output := by lin_cert using reduction15218.terms
theorem substitutionProof15218 : IsMapEvaluation generatorImages reduction15218.relations [8,1405] reduction15218.output := by lin_cert using reduction15218.terms
def image15219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15219 : InImage map_30_230 image15219 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15219 : Bundle := named_bundle% "RealMapCertificates/relations/basis15219.json"
theorem reductionProof15219 : EqualModuloRelations reduction15219.relations reduction15219.input reduction15219.output := by lin_cert using reduction15219.terms
theorem substitutionProof15219 : IsMapEvaluation generatorImages reduction15219.relations [8,8,13,761] reduction15219.output := by lin_cert using reduction15219.terms
def image15220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15220 : InImage map_30_230 image15220 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15220 : Bundle := named_bundle% "RealMapCertificates/relations/basis15220.json"
theorem reductionProof15220 : EqualModuloRelations reduction15220.relations reduction15220.input reduction15220.output := by lin_cert using reduction15220.terms
theorem substitutionProof15220 : IsMapEvaluation generatorImages reduction15220.relations [1,1,209,260] reduction15220.output := by lin_cert using reduction15220.terms
def image15221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15221 : InImage map_30_230 image15221 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15221 : Bundle := named_bundle% "RealMapCertificates/relations/basis15221.json"
theorem reductionProof15221 : EqualModuloRelations reduction15221.relations reduction15221.input reduction15221.output := by lin_cert using reduction15221.terms
theorem substitutionProof15221 : IsMapEvaluation generatorImages reduction15221.relations [0,0,0,64,693] reduction15221.output := by lin_cert using reduction15221.terms
def image15222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15222 : InImage map_30_230 image15222 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15222 : Bundle := named_bundle% "RealMapCertificates/relations/basis15222.json"
theorem reductionProof15222 : EqualModuloRelations reduction15222.relations reduction15222.input reduction15222.output := by lin_cert using reduction15222.terms
theorem substitutionProof15222 : IsMapEvaluation generatorImages reduction15222.relations [0,0,0,0,0,1641] reduction15222.output := by lin_cert using reduction15222.terms
def map_30_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15470 : InImage map_30_231 image15470 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15470 : Bundle := named_bundle% "RealMapCertificates/relations/basis15470.json"
theorem reductionProof15470 : EqualModuloRelations reduction15470.relations reduction15470.input reduction15470.output := by lin_cert using reduction15470.terms
theorem substitutionProof15470 : IsMapEvaluation generatorImages reduction15470.relations [13,13,13,640] reduction15470.output := by lin_cert using reduction15470.terms
def image15471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15471 : InImage map_30_231 image15471 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15471 : Bundle := named_bundle% "RealMapCertificates/relations/basis15471.json"
theorem reductionProof15471 : EqualModuloRelations reduction15471.relations reduction15471.input reduction15471.output := by lin_cert using reduction15471.terms
theorem substitutionProof15471 : IsMapEvaluation generatorImages reduction15471.relations [8,1428] reduction15471.output := by lin_cert using reduction15471.terms
def image15472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15472 : InImage map_30_231 image15472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15472 : Bundle := named_bundle% "RealMapCertificates/relations/basis15472.json"
theorem reductionProof15472 : EqualModuloRelations reduction15472.relations reduction15472.input reduction15472.output := by lin_cert using reduction15472.terms
theorem substitutionProof15472 : IsMapEvaluation generatorImages reduction15472.relations [0,3,1597] reduction15472.output := by lin_cert using reduction15472.terms
def image15473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15473 : InImage map_30_231 image15473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15473 : Bundle := named_bundle% "RealMapCertificates/relations/basis15473.json"
theorem reductionProof15473 : EqualModuloRelations reduction15473.relations reduction15473.input reduction15473.output := by lin_cert using reduction15473.terms
theorem substitutionProof15473 : IsMapEvaluation generatorImages reduction15473.relations [0,0,0,0,0,1655] reduction15473.output := by lin_cert using reduction15473.terms
def map_30_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15644 : InImage map_30_232 image15644 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15644 : Bundle := named_bundle% "RealMapCertificates/relations/basis15644.json"
theorem reductionProof15644 : EqualModuloRelations reduction15644.relations reduction15644.input reduction15644.output := by lin_cert using reduction15644.terms
theorem substitutionProof15644 : IsMapEvaluation generatorImages reduction15644.relations [1775] reduction15644.output := by lin_cert using reduction15644.terms
def image15645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15645 : InImage map_30_232 image15645 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15645 : Bundle := named_bundle% "RealMapCertificates/relations/basis15645.json"
theorem reductionProof15645 : EqualModuloRelations reduction15645.relations reduction15645.input reduction15645.output := by lin_cert using reduction15645.terms
theorem substitutionProof15645 : IsMapEvaluation generatorImages reduction15645.relations [9,194,209] reduction15645.output := by lin_cert using reduction15645.terms
def image15646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15646 : InImage map_30_232 image15646 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15646 : Bundle := named_bundle% "RealMapCertificates/relations/basis15646.json"
theorem reductionProof15646 : EqualModuloRelations reduction15646.relations reduction15646.input reduction15646.output := by lin_cert using reduction15646.terms
theorem substitutionProof15646 : IsMapEvaluation generatorImages reduction15646.relations [0,0,8,16,50,324] reduction15646.output := by lin_cert using reduction15646.terms
def map_30_233 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15870 : InImage map_30_233 image15870 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15870 : Bundle := named_bundle% "RealMapCertificates/relations/basis15870.json"
theorem reductionProof15870 : EqualModuloRelations reduction15870.relations reduction15870.input reduction15870.output := by lin_cert using reduction15870.terms
theorem substitutionProof15870 : IsMapEvaluation generatorImages reduction15870.relations [64,64,209] reduction15870.output := by lin_cert using reduction15870.terms
def image15871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15871 : InImage map_30_233 image15871 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15871 : Bundle := named_bundle% "RealMapCertificates/relations/basis15871.json"
theorem reductionProof15871 : EqualModuloRelations reduction15871.relations reduction15871.input reduction15871.output := by lin_cert using reduction15871.terms
theorem substitutionProof15871 : IsMapEvaluation generatorImages reduction15871.relations [13,1350] reduction15871.output := by lin_cert using reduction15871.terms
def image15872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15872 : InImage map_30_233 image15872 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15872 : Bundle := named_bundle% "RealMapCertificates/relations/basis15872.json"
theorem reductionProof15872 : EqualModuloRelations reduction15872.relations reduction15872.input reduction15872.output := by lin_cert using reduction15872.terms
theorem substitutionProof15872 : IsMapEvaluation generatorImages reduction15872.relations [13,13,13,13,23,181] reduction15872.output := by lin_cert using reduction15872.terms
def image15873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15873 : InImage map_30_233 image15873 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15873 : Bundle := named_bundle% "RealMapCertificates/relations/basis15873.json"
theorem reductionProof15873 : EqualModuloRelations reduction15873.relations reduction15873.input reduction15873.output := by lin_cert using reduction15873.terms
theorem substitutionProof15873 : IsMapEvaluation generatorImages reduction15873.relations [8,1475] reduction15873.output := by lin_cert using reduction15873.terms
def image15874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15874 : InImage map_30_233 image15874 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15874 : Bundle := named_bundle% "RealMapCertificates/relations/basis15874.json"
theorem reductionProof15874 : EqualModuloRelations reduction15874.relations reduction15874.input reduction15874.output := by lin_cert using reduction15874.terms
theorem substitutionProof15874 : IsMapEvaluation generatorImages reduction15874.relations [8,9,13,761] reduction15874.output := by lin_cert using reduction15874.terms
end RealMapCertificates
