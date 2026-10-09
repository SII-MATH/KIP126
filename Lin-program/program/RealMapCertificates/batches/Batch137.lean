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
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 72 => []
  | 75 => []
  | 187 => []
  | 188 => []
  | 190 => []
  | 194 => [[7,10,12]]
  | 201 => []
  | 209 => []
  | 210 => []
  | 212 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 246 => []
  | 250 => []
  | 260 => []
  | 278 => []
  | 279 => []
  | 288 => []
  | 324 => []
  | 332 => []
  | 335 => []
  | 347 => []
  | 420 => []
  | 455 => []
  | 492 => []
  | 618 => []
  | 629 => []
  | 690 => []
  | 760 => []
  | 761 => []
  | 762 => []
  | 832 => []
  | 880 => []
  | 959 => []
  | 964 => []
  | 978 => []
  | 1205 => []
  | 1430 => []
  | 1442 => []
  | 1443 => []
  | 1475 => []
  | 1486 => []
  | 1539 => []
  | 1572 => []
  | 1608 => []
  | 1653 => []
  | 1758 => []
  | 1759 => []
  | 1776 => []
  | 1777 => []
  | 1779 => []
  | 1815 => []
  | 1834 => []
  | 1835 => []
  | 1836 => []
  | 1860 => []
  | 1861 => []
  | 1862 => []
  | 1906 => []
  | 1908 => []
  | 1933 => []
  | 1935 => []
  | 1938 => []
  | 1969 => []
  | 1971 => []
  | 1997 => []
  | 2061 => []
  | 2127 => []
  | 2128 => []
  | 2129 => []
  | 2167 => []
  | 2201 => []
  | 2202 => []
  | 2204 => []
  | 2242 => []
  | 2243 => []
  | 2277 => []
  | 2278 => []
  | 2279 => []
  | 2309 => []
  | 2311 => []
  | 2341 => []
  | 2342 => []
  | 2343 => []
  | 2381 => []
  | 2410 => []
  | _ => []
def map_30_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16118 : InImage map_30_234 image16118 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16118 : Bundle := named_bundle% "RealMapCertificates/relations/basis16118.json"
theorem reductionProof16118 : EqualModuloRelations reduction16118.relations reduction16118.input reduction16118.output := by lin_cert using reduction16118.terms
theorem substitutionProof16118 : IsMapEvaluation generatorImages reduction16118.relations [1834] reduction16118.output := by lin_cert using reduction16118.terms
def image16119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16119 : InImage map_30_234 image16119 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16119 : Bundle := named_bundle% "RealMapCertificates/relations/basis16119.json"
theorem reductionProof16119 : EqualModuloRelations reduction16119.relations reduction16119.input reduction16119.output := by lin_cert using reduction16119.terms
theorem substitutionProof16119 : IsMapEvaluation generatorImages reduction16119.relations [13,13,13,13,23,190] reduction16119.output := by lin_cert using reduction16119.terms
def image16120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16120 : InImage map_30_234 image16120 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16120 : Bundle := named_bundle% "RealMapCertificates/relations/basis16120.json"
theorem reductionProof16120 : EqualModuloRelations reduction16120.relations reduction16120.input reduction16120.output := by lin_cert using reduction16120.terms
theorem substitutionProof16120 : IsMapEvaluation generatorImages reduction16120.relations [8,1486] reduction16120.output := by lin_cert using reduction16120.terms
def image16121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16121 : InImage map_30_234 image16121 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16121 : Bundle := named_bundle% "RealMapCertificates/relations/basis16121.json"
theorem reductionProof16121 : EqualModuloRelations reduction16121.relations reduction16121.input reduction16121.output := by lin_cert using reduction16121.terms
theorem substitutionProof16121 : IsMapEvaluation generatorImages reduction16121.relations [1,1777] reduction16121.output := by lin_cert using reduction16121.terms
def image16122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16122 : InImage map_30_234 image16122 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16122 : Bundle := named_bundle% "RealMapCertificates/relations/basis16122.json"
theorem reductionProof16122 : EqualModuloRelations reduction16122.relations reduction16122.input reduction16122.output := by lin_cert using reduction16122.terms
theorem substitutionProof16122 : IsMapEvaluation generatorImages reduction16122.relations [0,64,760] reduction16122.output := by lin_cert using reduction16122.terms
def map_30_235 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16308 : InImage map_30_235 image16308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16308 : Bundle := named_bundle% "RealMapCertificates/relations/basis16308.json"
theorem reductionProof16308 : EqualModuloRelations reduction16308.relations reduction16308.input reduction16308.output := by lin_cert using reduction16308.terms
theorem substitutionProof16308 : IsMapEvaluation generatorImages reduction16308.relations [1861] reduction16308.output := by lin_cert using reduction16308.terms
def image16309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16309 : InImage map_30_235 image16309 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16309 : Bundle := named_bundle% "RealMapCertificates/relations/basis16309.json"
theorem reductionProof16309 : EqualModuloRelations reduction16309.relations reduction16309.input reduction16309.output := by lin_cert using reduction16309.terms
theorem substitutionProof16309 : IsMapEvaluation generatorImages reduction16309.relations [1860] reduction16309.output := by lin_cert using reduction16309.terms
def image16310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16310 : InImage map_30_235 image16310 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16310 : Bundle := named_bundle% "RealMapCertificates/relations/basis16310.json"
theorem reductionProof16310 : EqualModuloRelations reduction16310.relations reduction16310.input reduction16310.output := by lin_cert using reduction16310.terms
theorem substitutionProof16310 : IsMapEvaluation generatorImages reduction16310.relations [250,260] reduction16310.output := by lin_cert using reduction16310.terms
def image16311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16311 : InImage map_30_235 image16311 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16311 : Bundle := named_bundle% "RealMapCertificates/relations/basis16311.json"
theorem reductionProof16311 : EqualModuloRelations reduction16311.relations reduction16311.input reduction16311.output := by lin_cert using reduction16311.terms
theorem substitutionProof16311 : IsMapEvaluation generatorImages reduction16311.relations [13,194,209] reduction16311.output := by lin_cert using reduction16311.terms
def image16312 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16312 : InImage map_30_235 image16312 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16312 : Bundle := named_bundle% "RealMapCertificates/relations/basis16312.json"
theorem reductionProof16312 : EqualModuloRelations reduction16312.relations reduction16312.input reduction16312.output := by lin_cert using reduction16312.terms
theorem substitutionProof16312 : IsMapEvaluation generatorImages reduction16312.relations [0,0,0,0,1758] reduction16312.output := by lin_cert using reduction16312.terms
def map_30_236 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image16546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16546 : InImage map_30_236 image16546 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction16546 : Bundle := named_bundle% "RealMapCertificates/relations/basis16546.json"
theorem reductionProof16546 : EqualModuloRelations reduction16546.relations reduction16546.input reduction16546.output := by lin_cert using reduction16546.terms
theorem substitutionProof16546 : IsMapEvaluation generatorImages reduction16546.relations [210,324] reduction16546.output := by lin_cert using reduction16546.terms
def image16547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16547 : InImage map_30_236 image16547 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction16547 : Bundle := named_bundle% "RealMapCertificates/relations/basis16547.json"
theorem reductionProof16547 : EqualModuloRelations reduction16547.relations reduction16547.input reduction16547.output := by lin_cert using reduction16547.terms
theorem substitutionProof16547 : IsMapEvaluation generatorImages reduction16547.relations [64,72,209] reduction16547.output := by lin_cert using reduction16547.terms
def image16548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16548 : InImage map_30_236 image16548 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction16548 : Bundle := named_bundle% "RealMapCertificates/relations/basis16548.json"
theorem reductionProof16548 : EqualModuloRelations reduction16548.relations reduction16548.input reduction16548.output := by lin_cert using reduction16548.terms
theorem substitutionProof16548 : IsMapEvaluation generatorImages reduction16548.relations [9,1475] reduction16548.output := by lin_cert using reduction16548.terms
def image16549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16549 : InImage map_30_236 image16549 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction16549 : Bundle := named_bundle% "RealMapCertificates/relations/basis16549.json"
theorem reductionProof16549 : EqualModuloRelations reduction16549.relations reduction16549.input reduction16549.output := by lin_cert using reduction16549.terms
theorem substitutionProof16549 : IsMapEvaluation generatorImages reduction16549.relations [8,13,13,761] reduction16549.output := by lin_cert using reduction16549.terms
def image16550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16550 : InImage map_30_236 image16550 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction16550 : Bundle := named_bundle% "RealMapCertificates/relations/basis16550.json"
theorem reductionProof16550 : EqualModuloRelations reduction16550.relations reduction16550.input reduction16550.output := by lin_cert using reduction16550.terms
theorem substitutionProof16550 : IsMapEvaluation generatorImages reduction16550.relations [2,1776] reduction16550.output := by lin_cert using reduction16550.terms
def image16551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16551 : InImage map_30_236 image16551 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction16551 : Bundle := named_bundle% "RealMapCertificates/relations/basis16551.json"
theorem reductionProof16551 : EqualModuloRelations reduction16551.relations reduction16551.input reduction16551.output := by lin_cert using reduction16551.terms
theorem substitutionProof16551 : IsMapEvaluation generatorImages reduction16551.relations [1,1835] reduction16551.output := by lin_cert using reduction16551.terms
def image16552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16552 : InImage map_30_236 image16552 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction16552 : Bundle := named_bundle% "RealMapCertificates/relations/basis16552.json"
theorem reductionProof16552 : EqualModuloRelations reduction16552.relations reduction16552.input reduction16552.output := by lin_cert using reduction16552.terms
theorem substitutionProof16552 : IsMapEvaluation generatorImages reduction16552.relations [0,0,0,64,762] reduction16552.output := by lin_cert using reduction16552.terms
def image16553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16553 : InImage map_30_236 image16553 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction16553 : Bundle := named_bundle% "RealMapCertificates/relations/basis16553.json"
theorem reductionProof16553 : EqualModuloRelations reduction16553.relations reduction16553.input reduction16553.output := by lin_cert using reduction16553.terms
theorem substitutionProof16553 : IsMapEvaluation generatorImages reduction16553.relations [0,0,0,0,0,1759] reduction16553.output := by lin_cert using reduction16553.terms
def map_30_237 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16801 : InImage map_30_237 image16801 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16801 : Bundle := named_bundle% "RealMapCertificates/relations/basis16801.json"
theorem reductionProof16801 : EqualModuloRelations reduction16801.relations reduction16801.input reduction16801.output := by lin_cert using reduction16801.terms
theorem substitutionProof16801 : IsMapEvaluation generatorImages reduction16801.relations [8,1539] reduction16801.output := by lin_cert using reduction16801.terms
def image16802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16802 : InImage map_30_237 image16802 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16802 : Bundle := named_bundle% "RealMapCertificates/relations/basis16802.json"
theorem reductionProof16802 : EqualModuloRelations reduction16802.relations reduction16802.input reduction16802.output := by lin_cert using reduction16802.terms
theorem substitutionProof16802 : IsMapEvaluation generatorImages reduction16802.relations [8,8,1205] reduction16802.output := by lin_cert using reduction16802.terms
def image16803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16803 : InImage map_30_237 image16803 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16803 : Bundle := named_bundle% "RealMapCertificates/relations/basis16803.json"
theorem reductionProof16803 : EqualModuloRelations reduction16803.relations reduction16803.input reduction16803.output := by lin_cert using reduction16803.terms
theorem substitutionProof16803 : IsMapEvaluation generatorImages reduction16803.relations [1,1862] reduction16803.output := by lin_cert using reduction16803.terms
def image16804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16804 : InImage map_30_237 image16804 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16804 : Bundle := named_bundle% "RealMapCertificates/relations/basis16804.json"
theorem reductionProof16804 : EqualModuloRelations reduction16804.relations reduction16804.input reduction16804.output := by lin_cert using reduction16804.terms
theorem substitutionProof16804 : IsMapEvaluation generatorImages reduction16804.relations [0,0,0,0,0,1779] reduction16804.output := by lin_cert using reduction16804.terms
def map_30_238 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16978 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16978 : InImage map_30_238 image16978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16978 : Bundle := named_bundle% "RealMapCertificates/relations/basis16978.json"
theorem reductionProof16978 : EqualModuloRelations reduction16978.relations reduction16978.input reduction16978.output := by lin_cert using reduction16978.terms
theorem substitutionProof16978 : IsMapEvaluation generatorImages reduction16978.relations [1933] reduction16978.output := by lin_cert using reduction16978.terms
def image16979 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16979 : InImage map_30_238 image16979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16979 : Bundle := named_bundle% "RealMapCertificates/relations/basis16979.json"
theorem reductionProof16979 : EqualModuloRelations reduction16979.relations reduction16979.input reduction16979.output := by lin_cert using reduction16979.terms
theorem substitutionProof16979 : IsMapEvaluation generatorImages reduction16979.relations [250,278] reduction16979.output := by lin_cert using reduction16979.terms
def image16980 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16980 : InImage map_30_238 image16980 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16980 : Bundle := named_bundle% "RealMapCertificates/relations/basis16980.json"
theorem reductionProof16980 : EqualModuloRelations reduction16980.relations reduction16980.input reduction16980.output := by lin_cert using reduction16980.terms
theorem substitutionProof16980 : IsMapEvaluation generatorImages reduction16980.relations [13,1442] reduction16980.output := by lin_cert using reduction16980.terms
def image16981 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16981 : InImage map_30_238 image16981 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16981 : Bundle := named_bundle% "RealMapCertificates/relations/basis16981.json"
theorem reductionProof16981 : EqualModuloRelations reduction16981.relations reduction16981.input reduction16981.output := by lin_cert using reduction16981.terms
theorem substitutionProof16981 : IsMapEvaluation generatorImages reduction16981.relations [13,13,13,23,335] reduction16981.output := by lin_cert using reduction16981.terms
def map_30_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17238 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17238 : InImage map_30_239 image17238 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17238 : Bundle := named_bundle% "RealMapCertificates/relations/basis17238.json"
theorem reductionProof17238 : EqualModuloRelations reduction17238.relations reduction17238.input reduction17238.output := by lin_cert using reduction17238.terms
theorem substitutionProof17238 : IsMapEvaluation generatorImages reduction17238.relations [13,1475] reduction17238.output := by lin_cert using reduction17238.terms
def image17239 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17239 : InImage map_30_239 image17239 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17239 : Bundle := named_bundle% "RealMapCertificates/relations/basis17239.json"
theorem reductionProof17239 : EqualModuloRelations reduction17239.relations reduction17239.input reduction17239.output := by lin_cert using reduction17239.terms
theorem substitutionProof17239 : IsMapEvaluation generatorImages reduction17239.relations [9,13,13,761] reduction17239.output := by lin_cert using reduction17239.terms
def image17240 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17240 : InImage map_30_239 image17240 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17240 : Bundle := named_bundle% "RealMapCertificates/relations/basis17240.json"
theorem reductionProof17240 : EqualModuloRelations reduction17240.relations reduction17240.input reduction17240.output := by lin_cert using reduction17240.terms
theorem substitutionProof17240 : IsMapEvaluation generatorImages reduction17240.relations [8,1572] reduction17240.output := by lin_cert using reduction17240.terms
def image17241 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17241 : InImage map_30_239 image17241 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17241 : Bundle := named_bundle% "RealMapCertificates/relations/basis17241.json"
theorem reductionProof17241 : EqualModuloRelations reduction17241.relations reduction17241.input reduction17241.output := by lin_cert using reduction17241.terms
theorem substitutionProof17241 : IsMapEvaluation generatorImages reduction17241.relations [2,1862] reduction17241.output := by lin_cert using reduction17241.terms
def image17242 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17242 : InImage map_30_239 image17242 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17242 : Bundle := named_bundle% "RealMapCertificates/relations/basis17242.json"
theorem reductionProof17242 : EqualModuloRelations reduction17242.relations reduction17242.input reduction17242.output := by lin_cert using reduction17242.terms
theorem substitutionProof17242 : IsMapEvaluation generatorImages reduction17242.relations [0,1935] reduction17242.output := by lin_cert using reduction17242.terms
def map_30_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17503 : InImage map_30_240 image17503 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17503 : Bundle := named_bundle% "RealMapCertificates/relations/basis17503.json"
theorem reductionProof17503 : EqualModuloRelations reduction17503.relations reduction17503.input reduction17503.output := by lin_cert using reduction17503.terms
theorem substitutionProof17503 : IsMapEvaluation generatorImages reduction17503.relations [67,832] reduction17503.output := by lin_cert using reduction17503.terms
def image17504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17504 : InImage map_30_240 image17504 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17504 : Bundle := named_bundle% "RealMapCertificates/relations/basis17504.json"
theorem reductionProof17504 : EqualModuloRelations reduction17504.relations reduction17504.input reduction17504.output := by lin_cert using reduction17504.terms
theorem substitutionProof17504 : IsMapEvaluation generatorImages reduction17504.relations [9,1539] reduction17504.output := by lin_cert using reduction17504.terms
def image17505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17505 : InImage map_30_240 image17505 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17505 : Bundle := named_bundle% "RealMapCertificates/relations/basis17505.json"
theorem reductionProof17505 : EqualModuloRelations reduction17505.relations reduction17505.input reduction17505.output := by lin_cert using reduction17505.terms
theorem substitutionProof17505 : IsMapEvaluation generatorImages reduction17505.relations [9,13,13,13,13,288] reduction17505.output := by lin_cert using reduction17505.terms
def image17506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17506 : InImage map_30_240 image17506 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17506 : Bundle := named_bundle% "RealMapCertificates/relations/basis17506.json"
theorem reductionProof17506 : EqualModuloRelations reduction17506.relations reduction17506.input reduction17506.output := by lin_cert using reduction17506.terms
theorem substitutionProof17506 : IsMapEvaluation generatorImages reduction17506.relations [8,8,188,188] reduction17506.output := by lin_cert using reduction17506.terms
def image17507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17507 : InImage map_30_240 image17507 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17507 : Bundle := named_bundle% "RealMapCertificates/relations/basis17507.json"
theorem reductionProof17507 : EqualModuloRelations reduction17507.relations reduction17507.input reduction17507.output := by lin_cert using reduction17507.terms
theorem substitutionProof17507 : IsMapEvaluation generatorImages reduction17507.relations [1,1935] reduction17507.output := by lin_cert using reduction17507.terms
def image17508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17508 : InImage map_30_240 image17508 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17508 : Bundle := named_bundle% "RealMapCertificates/relations/basis17508.json"
theorem reductionProof17508 : EqualModuloRelations reduction17508.relations reduction17508.input reduction17508.output := by lin_cert using reduction17508.terms
theorem substitutionProof17508 : IsMapEvaluation generatorImages reduction17508.relations [0,0,209,347] reduction17508.output := by lin_cert using reduction17508.terms
def map_30_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17743 : InImage map_30_241 image17743 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17743 : Bundle := named_bundle% "RealMapCertificates/relations/basis17743.json"
theorem reductionProof17743 : EqualModuloRelations reduction17743.relations reduction17743.input reduction17743.output := by lin_cert using reduction17743.terms
theorem substitutionProof17743 : IsMapEvaluation generatorImages reduction17743.relations [13,13,23,618] reduction17743.output := by lin_cert using reduction17743.terms
def image17744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17744 : InImage map_30_241 image17744 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17744 : Bundle := named_bundle% "RealMapCertificates/relations/basis17744.json"
theorem reductionProof17744 : EqualModuloRelations reduction17744.relations reduction17744.input reduction17744.output := by lin_cert using reduction17744.terms
theorem substitutionProof17744 : IsMapEvaluation generatorImages reduction17744.relations [8,1608] reduction17744.output := by lin_cert using reduction17744.terms
def image17745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17745 : InImage map_30_241 image17745 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17745 : Bundle := named_bundle% "RealMapCertificates/relations/basis17745.json"
theorem reductionProof17745 : EqualModuloRelations reduction17745.relations reduction17745.input reduction17745.output := by lin_cert using reduction17745.terms
theorem substitutionProof17745 : IsMapEvaluation generatorImages reduction17745.relations [0,1997] reduction17745.output := by lin_cert using reduction17745.terms
def image17746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17746 : InImage map_30_241 image17746 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17746 : Bundle := named_bundle% "RealMapCertificates/relations/basis17746.json"
theorem reductionProof17746 : EqualModuloRelations reduction17746.relations reduction17746.input reduction17746.output := by lin_cert using reduction17746.terms
theorem substitutionProof17746 : IsMapEvaluation generatorImages reduction17746.relations [0,68,832] reduction17746.output := by lin_cert using reduction17746.terms
def image17747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17747 : InImage map_30_241 image17747 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17747 : Bundle := named_bundle% "RealMapCertificates/relations/basis17747.json"
theorem reductionProof17747 : EqualModuloRelations reduction17747.relations reduction17747.input reduction17747.output := by lin_cert using reduction17747.terms
theorem substitutionProof17747 : IsMapEvaluation generatorImages reduction17747.relations [0,0,0,1938] reduction17747.output := by lin_cert using reduction17747.terms
def map_30_242 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18015 : InImage map_30_242 image18015 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18015 : Bundle := named_bundle% "RealMapCertificates/relations/basis18015.json"
theorem reductionProof18015 : EqualModuloRelations reduction18015.relations reduction18015.input reduction18015.output := by lin_cert using reduction18015.terms
theorem substitutionProof18015 : IsMapEvaluation generatorImages reduction18015.relations [13,13,23,629] reduction18015.output := by lin_cert using reduction18015.terms
def image18016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18016 : InImage map_30_242 image18016 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18016 : Bundle := named_bundle% "RealMapCertificates/relations/basis18016.json"
theorem reductionProof18016 : EqualModuloRelations reduction18016.relations reduction18016.input reduction18016.output := by lin_cert using reduction18016.terms
theorem substitutionProof18016 : IsMapEvaluation generatorImages reduction18016.relations [13,13,13,761] reduction18016.output := by lin_cert using reduction18016.terms
def image18017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18017 : InImage map_30_242 image18017 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18017 : Bundle := named_bundle% "RealMapCertificates/relations/basis18017.json"
theorem reductionProof18017 : EqualModuloRelations reduction18017.relations reduction18017.input reduction18017.output := by lin_cert using reduction18017.terms
theorem substitutionProof18017 : IsMapEvaluation generatorImages reduction18017.relations [8,187,279] reduction18017.output := by lin_cert using reduction18017.terms
def image18018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18018 : InImage map_30_242 image18018 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18018 : Bundle := named_bundle% "RealMapCertificates/relations/basis18018.json"
theorem reductionProof18018 : EqualModuloRelations reduction18018.relations reduction18018.input reduction18018.output := by lin_cert using reduction18018.terms
theorem substitutionProof18018 : IsMapEvaluation generatorImages reduction18018.relations [1,1997] reduction18018.output := by lin_cert using reduction18018.terms
def image18019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18019 : InImage map_30_242 image18019 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18019 : Bundle := named_bundle% "RealMapCertificates/relations/basis18019.json"
theorem reductionProof18019 : EqualModuloRelations reduction18019.relations reduction18019.input reduction18019.output := by lin_cert using reduction18019.terms
theorem substitutionProof18019 : IsMapEvaluation generatorImages reduction18019.relations [1,1,209,347] reduction18019.output := by lin_cert using reduction18019.terms
def image18020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18020 : InImage map_30_242 image18020 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18020 : Bundle := named_bundle% "RealMapCertificates/relations/basis18020.json"
theorem reductionProof18020 : EqualModuloRelations reduction18020.relations reduction18020.input reduction18020.output := by lin_cert using reduction18020.terms
theorem substitutionProof18020 : IsMapEvaluation generatorImages reduction18020.relations [0,0,0,0,0,1906] reduction18020.output := by lin_cert using reduction18020.terms
def map_30_243 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18285 : InImage map_30_243 image18285 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18285 : Bundle := named_bundle% "RealMapCertificates/relations/basis18285.json"
theorem reductionProof18285 : EqualModuloRelations reduction18285.relations reduction18285.input reduction18285.output := by lin_cert using reduction18285.terms
theorem substitutionProof18285 : IsMapEvaluation generatorImages reduction18285.relations [13,1539] reduction18285.output := by lin_cert using reduction18285.terms
def image18286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18286 : InImage map_30_243 image18286 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18286 : Bundle := named_bundle% "RealMapCertificates/relations/basis18286.json"
theorem reductionProof18286 : EqualModuloRelations reduction18286.relations reduction18286.input reduction18286.output := by lin_cert using reduction18286.terms
theorem substitutionProof18286 : IsMapEvaluation generatorImages reduction18286.relations [13,13,13,13,13,288] reduction18286.output := by lin_cert using reduction18286.terms
def image18287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18287 : InImage map_30_243 image18287 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18287 : Bundle := named_bundle% "RealMapCertificates/relations/basis18287.json"
theorem reductionProof18287 : EqualModuloRelations reduction18287.relations reduction18287.input reduction18287.output := by lin_cert using reduction18287.terms
theorem substitutionProof18287 : IsMapEvaluation generatorImages reduction18287.relations [8,9,188,188] reduction18287.output := by lin_cert using reduction18287.terms
def image18288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18288 : InImage map_30_243 image18288 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18288 : Bundle := named_bundle% "RealMapCertificates/relations/basis18288.json"
theorem reductionProof18288 : EqualModuloRelations reduction18288.relations reduction18288.input reduction18288.output := by lin_cert using reduction18288.terms
theorem substitutionProof18288 : IsMapEvaluation generatorImages reduction18288.relations [3,1862] reduction18288.output := by lin_cert using reduction18288.terms
def image18289 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18289 : InImage map_30_243 image18289 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18289 : Bundle := named_bundle% "RealMapCertificates/relations/basis18289.json"
theorem reductionProof18289 : EqualModuloRelations reduction18289.relations reduction18289.input reduction18289.output := by lin_cert using reduction18289.terms
theorem substitutionProof18289 : IsMapEvaluation generatorImages reduction18289.relations [0,0,0,0,1969] reduction18289.output := by lin_cert using reduction18289.terms
def image18290 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18290 : InImage map_30_243 image18290 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18290 : Bundle := named_bundle% "RealMapCertificates/relations/basis18290.json"
theorem reductionProof18290 : EqualModuloRelations reduction18290.relations reduction18290.input reduction18290.output := by lin_cert using reduction18290.terms
theorem substitutionProof18290 : IsMapEvaluation generatorImages reduction18290.relations [0,0,0,0,225,324] reduction18290.output := by lin_cert using reduction18290.terms
def image18291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18291 : InImage map_30_243 image18291 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18291 : Bundle := named_bundle% "RealMapCertificates/relations/basis18291.json"
theorem reductionProof18291 : EqualModuloRelations reduction18291.relations reduction18291.input reduction18291.output := by lin_cert using reduction18291.terms
theorem substitutionProof18291 : IsMapEvaluation generatorImages reduction18291.relations [0,0,0,0,0,0,1908] reduction18291.output := by lin_cert using reduction18291.terms
def map_30_244 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18485 : InImage map_30_244 image18485 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18485 : Bundle := named_bundle% "RealMapCertificates/relations/basis18485.json"
theorem reductionProof18485 : EqualModuloRelations reduction18485.relations reduction18485.input reduction18485.output := by lin_cert using reduction18485.terms
theorem substitutionProof18485 : IsMapEvaluation generatorImages reduction18485.relations [2128] reduction18485.output := by lin_cert using reduction18485.terms
def image18486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18486 : InImage map_30_244 image18486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18486 : Bundle := named_bundle% "RealMapCertificates/relations/basis18486.json"
theorem reductionProof18486 : EqualModuloRelations reduction18486.relations reduction18486.input reduction18486.output := by lin_cert using reduction18486.terms
theorem substitutionProof18486 : IsMapEvaluation generatorImages reduction18486.relations [2127] reduction18486.output := by lin_cert using reduction18486.terms
def image18487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18487 : InImage map_30_244 image18487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18487 : Bundle := named_bundle% "RealMapCertificates/relations/basis18487.json"
theorem reductionProof18487 : EqualModuloRelations reduction18487.relations reduction18487.input reduction18487.output := by lin_cert using reduction18487.terms
theorem substitutionProof18487 : IsMapEvaluation generatorImages reduction18487.relations [9,13,13,75,212] reduction18487.output := by lin_cert using reduction18487.terms
def image18488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18488 : InImage map_30_244 image18488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18488 : Bundle := named_bundle% "RealMapCertificates/relations/basis18488.json"
theorem reductionProof18488 : EqualModuloRelations reduction18488.relations reduction18488.input reduction18488.output := by lin_cert using reduction18488.terms
theorem substitutionProof18488 : IsMapEvaluation generatorImages reduction18488.relations [8,1653] reduction18488.output := by lin_cert using reduction18488.terms
def image18489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18489 : InImage map_30_244 image18489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18489 : Bundle := named_bundle% "RealMapCertificates/relations/basis18489.json"
theorem reductionProof18489 : EqualModuloRelations reduction18489.relations reduction18489.input reduction18489.output := by lin_cert using reduction18489.terms
theorem substitutionProof18489 : IsMapEvaluation generatorImages reduction18489.relations [0,0,2061] reduction18489.output := by lin_cert using reduction18489.terms
def image18490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18490 : InImage map_30_244 image18490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18490 : Bundle := named_bundle% "RealMapCertificates/relations/basis18490.json"
theorem reductionProof18490 : EqualModuloRelations reduction18490.relations reduction18490.input reduction18490.output := by lin_cert using reduction18490.terms
theorem substitutionProof18490 : IsMapEvaluation generatorImages reduction18490.relations [0,0,0,0,0,1971] reduction18490.output := by lin_cert using reduction18490.terms
def map_30_245 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18761 : InImage map_30_245 image18761 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18761 : Bundle := named_bundle% "RealMapCertificates/relations/basis18761.json"
theorem reductionProof18761 : EqualModuloRelations reduction18761.relations reduction18761.input reduction18761.output := by lin_cert using reduction18761.terms
theorem substitutionProof18761 : IsMapEvaluation generatorImages reduction18761.relations [2167] reduction18761.output := by lin_cert using reduction18761.terms
def image18762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18762 : InImage map_30_245 image18762 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18762 : Bundle := named_bundle% "RealMapCertificates/relations/basis18762.json"
theorem reductionProof18762 : EqualModuloRelations reduction18762.relations reduction18762.input reduction18762.output := by lin_cert using reduction18762.terms
theorem substitutionProof18762 : IsMapEvaluation generatorImages reduction18762.relations [8,8,187,209] reduction18762.output := by lin_cert using reduction18762.terms
def image18763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18763 : InImage map_30_245 image18763 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18763 : Bundle := named_bundle% "RealMapCertificates/relations/basis18763.json"
theorem reductionProof18763 : EqualModuloRelations reduction18763.relations reduction18763.input reduction18763.output := by lin_cert using reduction18763.terms
theorem substitutionProof18763 : IsMapEvaluation generatorImages reduction18763.relations [0,0,0,237,324] reduction18763.output := by lin_cert using reduction18763.terms
def map_30_246 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19048 : InImage map_30_246 image19048 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19048 : Bundle := named_bundle% "RealMapCertificates/relations/basis19048.json"
theorem reductionProof19048 : EqualModuloRelations reduction19048.relations reduction19048.input reduction19048.output := by lin_cert using reduction19048.terms
theorem substitutionProof19048 : IsMapEvaluation generatorImages reduction19048.relations [2202] reduction19048.output := by lin_cert using reduction19048.terms
def image19049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19049 : InImage map_30_246 image19049 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19049 : Bundle := named_bundle% "RealMapCertificates/relations/basis19049.json"
theorem reductionProof19049 : EqualModuloRelations reduction19049.relations reduction19049.input reduction19049.output := by lin_cert using reduction19049.terms
theorem substitutionProof19049 : IsMapEvaluation generatorImages reduction19049.relations [2201] reduction19049.output := by lin_cert using reduction19049.terms
def image19050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19050 : InImage map_30_246 image19050 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19050 : Bundle := named_bundle% "RealMapCertificates/relations/basis19050.json"
theorem reductionProof19050 : EqualModuloRelations reduction19050.relations reduction19050.input reduction19050.output := by lin_cert using reduction19050.terms
theorem substitutionProof19050 : IsMapEvaluation generatorImages reduction19050.relations [13,23,959] reduction19050.output := by lin_cert using reduction19050.terms
def image19051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19051 : InImage map_30_246 image19051 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19051 : Bundle := named_bundle% "RealMapCertificates/relations/basis19051.json"
theorem reductionProof19051 : EqualModuloRelations reduction19051.relations reduction19051.input reduction19051.output := by lin_cert using reduction19051.terms
theorem substitutionProof19051 : IsMapEvaluation generatorImages reduction19051.relations [8,13,188,188] reduction19051.output := by lin_cert using reduction19051.terms
def image19052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19052 : InImage map_30_246 image19052 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19052 : Bundle := named_bundle% "RealMapCertificates/relations/basis19052.json"
theorem reductionProof19052 : EqualModuloRelations reduction19052.relations reduction19052.input reduction19052.output := by lin_cert using reduction19052.terms
theorem substitutionProof19052 : IsMapEvaluation generatorImages reduction19052.relations [1,209,420] reduction19052.output := by lin_cert using reduction19052.terms
def image19053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19053 : InImage map_30_246 image19053 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19053 : Bundle := named_bundle% "RealMapCertificates/relations/basis19053.json"
theorem reductionProof19053 : EqualModuloRelations reduction19053.relations reduction19053.input reduction19053.output := by lin_cert using reduction19053.terms
theorem substitutionProof19053 : IsMapEvaluation generatorImages reduction19053.relations [0,0,2129] reduction19053.output := by lin_cert using reduction19053.terms
def map_30_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19284 : InImage map_30_247 image19284 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19284 : Bundle := named_bundle% "RealMapCertificates/relations/basis19284.json"
theorem reductionProof19284 : EqualModuloRelations reduction19284.relations reduction19284.input reduction19284.output := by lin_cert using reduction19284.terms
theorem substitutionProof19284 : IsMapEvaluation generatorImages reduction19284.relations [2242] reduction19284.output := by lin_cert using reduction19284.terms
def image19285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19285 : InImage map_30_247 image19285 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19285 : Bundle := named_bundle% "RealMapCertificates/relations/basis19285.json"
theorem reductionProof19285 : EqualModuloRelations reduction19285.relations reduction19285.input reduction19285.output := by lin_cert using reduction19285.terms
theorem substitutionProof19285 : IsMapEvaluation generatorImages reduction19285.relations [209,455] reduction19285.output := by lin_cert using reduction19285.terms
def image19286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19286 : InImage map_30_247 image19286 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19286 : Bundle := named_bundle% "RealMapCertificates/relations/basis19286.json"
theorem reductionProof19286 : EqualModuloRelations reduction19286.relations reduction19286.input reduction19286.output := by lin_cert using reduction19286.terms
theorem substitutionProof19286 : IsMapEvaluation generatorImages reduction19286.relations [13,13,13,75,212] reduction19286.output := by lin_cert using reduction19286.terms
def image19287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19287 : InImage map_30_247 image19287 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19287 : Bundle := named_bundle% "RealMapCertificates/relations/basis19287.json"
theorem reductionProof19287 : EqualModuloRelations reduction19287.relations reduction19287.input reduction19287.output := by lin_cert using reduction19287.terms
theorem substitutionProof19287 : IsMapEvaluation generatorImages reduction19287.relations [9,1653] reduction19287.output := by lin_cert using reduction19287.terms
def map_30_248 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19563 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19563 : InImage map_30_248 image19563 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19563 : Bundle := named_bundle% "RealMapCertificates/relations/basis19563.json"
theorem reductionProof19563 : EqualModuloRelations reduction19563.relations reduction19563.input reduction19563.output := by lin_cert using reduction19563.terms
theorem substitutionProof19563 : IsMapEvaluation generatorImages reduction19563.relations [9,13,13,880] reduction19563.output := by lin_cert using reduction19563.terms
def image19564 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19564 : InImage map_30_248 image19564 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19564 : Bundle := named_bundle% "RealMapCertificates/relations/basis19564.json"
theorem reductionProof19564 : EqualModuloRelations reduction19564.relations reduction19564.input reduction19564.output := by lin_cert using reduction19564.terms
theorem substitutionProof19564 : IsMapEvaluation generatorImages reduction19564.relations [8,8,201,209] reduction19564.output := by lin_cert using reduction19564.terms
def image19565 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19565 : InImage map_30_248 image19565 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19565 : Bundle := named_bundle% "RealMapCertificates/relations/basis19565.json"
theorem reductionProof19565 : EqualModuloRelations reduction19565.relations reduction19565.input reduction19565.output := by lin_cert using reduction19565.terms
theorem substitutionProof19565 : IsMapEvaluation generatorImages reduction19565.relations [0,2243] reduction19565.output := by lin_cert using reduction19565.terms
def map_30_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19855 : InImage map_30_249 image19855 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19855 : Bundle := named_bundle% "RealMapCertificates/relations/basis19855.json"
theorem reductionProof19855 : EqualModuloRelations reduction19855.relations reduction19855.input reduction19855.output := by lin_cert using reduction19855.terms
theorem substitutionProof19855 : IsMapEvaluation generatorImages reduction19855.relations [23,1430] reduction19855.output := by lin_cert using reduction19855.terms
def image19856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19856 : InImage map_30_249 image19856 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19856 : Bundle := named_bundle% "RealMapCertificates/relations/basis19856.json"
theorem reductionProof19856 : EqualModuloRelations reduction19856.relations reduction19856.input reduction19856.output := by lin_cert using reduction19856.terms
theorem substitutionProof19856 : IsMapEvaluation generatorImages reduction19856.relations [13,13,13,13,13,332] reduction19856.output := by lin_cert using reduction19856.terms
def image19857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19857 : InImage map_30_249 image19857 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19857 : Bundle := named_bundle% "RealMapCertificates/relations/basis19857.json"
theorem reductionProof19857 : EqualModuloRelations reduction19857.relations reduction19857.input reduction19857.output := by lin_cert using reduction19857.terms
theorem substitutionProof19857 : IsMapEvaluation generatorImages reduction19857.relations [9,13,188,188] reduction19857.output := by lin_cert using reduction19857.terms
def image19858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19858 : InImage map_30_249 image19858 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19858 : Bundle := named_bundle% "RealMapCertificates/relations/basis19858.json"
theorem reductionProof19858 : EqualModuloRelations reduction19858.relations reduction19858.input reduction19858.output := by lin_cert using reduction19858.terms
theorem substitutionProof19858 : IsMapEvaluation generatorImages reduction19858.relations [8,1758] reduction19858.output := by lin_cert using reduction19858.terms
def image19859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19859 : InImage map_30_249 image19859 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19859 : Bundle := named_bundle% "RealMapCertificates/relations/basis19859.json"
theorem reductionProof19859 : EqualModuloRelations reduction19859.relations reduction19859.input reduction19859.output := by lin_cert using reduction19859.terms
theorem substitutionProof19859 : IsMapEvaluation generatorImages reduction19859.relations [0,2279] reduction19859.output := by lin_cert using reduction19859.terms
def image19860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19860 : InImage map_30_249 image19860 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19860 : Bundle := named_bundle% "RealMapCertificates/relations/basis19860.json"
theorem reductionProof19860 : EqualModuloRelations reduction19860.relations reduction19860.input reduction19860.output := by lin_cert using reduction19860.terms
theorem substitutionProof19860 : IsMapEvaluation generatorImages reduction19860.relations [0,0,0,2204] reduction19860.output := by lin_cert using reduction19860.terms
def map_30_250 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20075 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20075 : InImage map_30_250 image20075 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20075 : Bundle := named_bundle% "RealMapCertificates/relations/basis20075.json"
theorem reductionProof20075 : EqualModuloRelations reduction20075.relations reduction20075.input reduction20075.output := by lin_cert using reduction20075.terms
theorem substitutionProof20075 : IsMapEvaluation generatorImages reduction20075.relations [2342] reduction20075.output := by lin_cert using reduction20075.terms
def image20076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20076 : InImage map_30_250 image20076 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20076 : Bundle := named_bundle% "RealMapCertificates/relations/basis20076.json"
theorem reductionProof20076 : EqualModuloRelations reduction20076.relations reduction20076.input reduction20076.output := by lin_cert using reduction20076.terms
theorem substitutionProof20076 : IsMapEvaluation generatorImages reduction20076.relations [2341] reduction20076.output := by lin_cert using reduction20076.terms
def image20077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20077 : InImage map_30_250 image20077 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20077 : Bundle := named_bundle% "RealMapCertificates/relations/basis20077.json"
theorem reductionProof20077 : EqualModuloRelations reduction20077.relations reduction20077.input reduction20077.output := by lin_cert using reduction20077.terms
theorem substitutionProof20077 : IsMapEvaluation generatorImages reduction20077.relations [209,492] reduction20077.output := by lin_cert using reduction20077.terms
def image20078 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20078 : InImage map_30_250 image20078 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20078 : Bundle := named_bundle% "RealMapCertificates/relations/basis20078.json"
theorem reductionProof20078 : EqualModuloRelations reduction20078.relations reduction20078.input reduction20078.output := by lin_cert using reduction20078.terms
theorem substitutionProof20078 : IsMapEvaluation generatorImages reduction20078.relations [23,1443] reduction20078.output := by lin_cert using reduction20078.terms
def image20079 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20079 : InImage map_30_250 image20079 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20079 : Bundle := named_bundle% "RealMapCertificates/relations/basis20079.json"
theorem reductionProof20079 : EqualModuloRelations reduction20079.relations reduction20079.input reduction20079.output := by lin_cert using reduction20079.terms
theorem substitutionProof20079 : IsMapEvaluation generatorImages reduction20079.relations [13,1653] reduction20079.output := by lin_cert using reduction20079.terms
def image20080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20080 : InImage map_30_250 image20080 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20080 : Bundle := named_bundle% "RealMapCertificates/relations/basis20080.json"
theorem reductionProof20080 : EqualModuloRelations reduction20080.relations reduction20080.input reduction20080.output := by lin_cert using reduction20080.terms
theorem substitutionProof20080 : IsMapEvaluation generatorImages reduction20080.relations [1,2279] reduction20080.output := by lin_cert using reduction20080.terms
def image20081 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20081 : InImage map_30_250 image20081 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20081 : Bundle := named_bundle% "RealMapCertificates/relations/basis20081.json"
theorem reductionProof20081 : EqualModuloRelations reduction20081.relations reduction20081.input reduction20081.output := by lin_cert using reduction20081.terms
theorem substitutionProof20081 : IsMapEvaluation generatorImages reduction20081.relations [1,2278] reduction20081.output := by lin_cert using reduction20081.terms
def image20082 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20082 : InImage map_30_250 image20082 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20082 : Bundle := named_bundle% "RealMapCertificates/relations/basis20082.json"
theorem reductionProof20082 : EqualModuloRelations reduction20082.relations reduction20082.input reduction20082.output := by lin_cert using reduction20082.terms
theorem substitutionProof20082 : IsMapEvaluation generatorImages reduction20082.relations [1,2277] reduction20082.output := by lin_cert using reduction20082.terms
def map_30_251 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20376 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20376 : InImage map_30_251 image20376 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20376 : Bundle := named_bundle% "RealMapCertificates/relations/basis20376.json"
theorem reductionProof20376 : EqualModuloRelations reduction20376.relations reduction20376.input reduction20376.output := by lin_cert using reduction20376.terms
theorem substitutionProof20376 : IsMapEvaluation generatorImages reduction20376.relations [2381] reduction20376.output := by lin_cert using reduction20376.terms
def image20377 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20377 : InImage map_30_251 image20377 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20377 : Bundle := named_bundle% "RealMapCertificates/relations/basis20377.json"
theorem reductionProof20377 : EqualModuloRelations reduction20377.relations reduction20377.input reduction20377.output := by lin_cert using reduction20377.terms
theorem substitutionProof20377 : IsMapEvaluation generatorImages reduction20377.relations [13,13,13,880] reduction20377.output := by lin_cert using reduction20377.terms
def image20378 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20378 : InImage map_30_251 image20378 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20378 : Bundle := named_bundle% "RealMapCertificates/relations/basis20378.json"
theorem reductionProof20378 : EqualModuloRelations reduction20378.relations reduction20378.input reduction20378.output := by lin_cert using reduction20378.terms
theorem substitutionProof20378 : IsMapEvaluation generatorImages reduction20378.relations [8,8,209,212] reduction20378.output := by lin_cert using reduction20378.terms
def image20379 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20379 : InImage map_30_251 image20379 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20379 : Bundle := named_bundle% "RealMapCertificates/relations/basis20379.json"
theorem reductionProof20379 : EqualModuloRelations reduction20379.relations reduction20379.input reduction20379.output := by lin_cert using reduction20379.terms
theorem substitutionProof20379 : IsMapEvaluation generatorImages reduction20379.relations [1,7,1815] reduction20379.output := by lin_cert using reduction20379.terms
def image20380 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20380 : InImage map_30_251 image20380 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20380 : Bundle := named_bundle% "RealMapCertificates/relations/basis20380.json"
theorem reductionProof20380 : EqualModuloRelations reduction20380.relations reduction20380.input reduction20380.output := by lin_cert using reduction20380.terms
theorem substitutionProof20380 : IsMapEvaluation generatorImages reduction20380.relations [0,2343] reduction20380.output := by lin_cert using reduction20380.terms
def image20381 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20381 : InImage map_30_251 image20381 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20381 : Bundle := named_bundle% "RealMapCertificates/relations/basis20381.json"
theorem reductionProof20381 : EqualModuloRelations reduction20381.relations reduction20381.input reduction20381.output := by lin_cert using reduction20381.terms
theorem substitutionProof20381 : IsMapEvaluation generatorImages reduction20381.relations [0,0,2311] reduction20381.output := by lin_cert using reduction20381.terms
def image20382 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20382 : InImage map_30_251 image20382 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20382 : Bundle := named_bundle% "RealMapCertificates/relations/basis20382.json"
theorem reductionProof20382 : EqualModuloRelations reduction20382.relations reduction20382.input reduction20382.output := by lin_cert using reduction20382.terms
theorem substitutionProof20382 : IsMapEvaluation generatorImages reduction20382.relations [0,0,2309] reduction20382.output := by lin_cert using reduction20382.terms
def map_30_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20678 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20678 : InImage map_30_252 image20678 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20678 : Bundle := named_bundle% "RealMapCertificates/relations/basis20678.json"
theorem reductionProof20678 : EqualModuloRelations reduction20678.relations reduction20678.input reduction20678.output := by lin_cert using reduction20678.terms
theorem substitutionProof20678 : IsMapEvaluation generatorImages reduction20678.relations [2410] reduction20678.output := by lin_cert using reduction20678.terms
def image20679 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20679 : InImage map_30_252 image20679 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20679 : Bundle := named_bundle% "RealMapCertificates/relations/basis20679.json"
theorem reductionProof20679 : EqualModuloRelations reduction20679.relations reduction20679.input reduction20679.output := by lin_cert using reduction20679.terms
theorem substitutionProof20679 : IsMapEvaluation generatorImages reduction20679.relations [68,978] reduction20679.output := by lin_cert using reduction20679.terms
def image20680 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20680 : InImage map_30_252 image20680 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20680 : Bundle := named_bundle% "RealMapCertificates/relations/basis20680.json"
theorem reductionProof20680 : EqualModuloRelations reduction20680.relations reduction20680.input reduction20680.output := by lin_cert using reduction20680.terms
theorem substitutionProof20680 : IsMapEvaluation generatorImages reduction20680.relations [13,13,188,188] reduction20680.output := by lin_cert using reduction20680.terms
def image20681 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20681 : InImage map_30_252 image20681 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20681 : Bundle := named_bundle% "RealMapCertificates/relations/basis20681.json"
theorem reductionProof20681 : EqualModuloRelations reduction20681.relations reduction20681.input reduction20681.output := by lin_cert using reduction20681.terms
theorem substitutionProof20681 : IsMapEvaluation generatorImages reduction20681.relations [9,75,690] reduction20681.output := by lin_cert using reduction20681.terms
def image20682 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20682 : InImage map_30_252 image20682 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20682 : Bundle := named_bundle% "RealMapCertificates/relations/basis20682.json"
theorem reductionProof20682 : EqualModuloRelations reduction20682.relations reduction20682.input reduction20682.output := by lin_cert using reduction20682.terms
theorem substitutionProof20682 : IsMapEvaluation generatorImages reduction20682.relations [8,1836] reduction20682.output := by lin_cert using reduction20682.terms
def image20683 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20683 : InImage map_30_252 image20683 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20683 : Bundle := named_bundle% "RealMapCertificates/relations/basis20683.json"
theorem reductionProof20683 : EqualModuloRelations reduction20683.relations reduction20683.input reduction20683.output := by lin_cert using reduction20683.terms
theorem substitutionProof20683 : IsMapEvaluation generatorImages reduction20683.relations [1,64,964] reduction20683.output := by lin_cert using reduction20683.terms
def image20684 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20684 : InImage map_30_252 image20684 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20684 : Bundle := named_bundle% "RealMapCertificates/relations/basis20684.json"
theorem reductionProof20684 : EqualModuloRelations reduction20684.relations reduction20684.input reduction20684.output := by lin_cert using reduction20684.terms
theorem substitutionProof20684 : IsMapEvaluation generatorImages reduction20684.relations [1,3,2061] reduction20684.output := by lin_cert using reduction20684.terms
def image20685 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20685 : InImage map_30_252 image20685 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20685 : Bundle := named_bundle% "RealMapCertificates/relations/basis20685.json"
theorem reductionProof20685 : EqualModuloRelations reduction20685.relations reduction20685.input reduction20685.output := by lin_cert using reduction20685.terms
theorem substitutionProof20685 : IsMapEvaluation generatorImages reduction20685.relations [0,0,0,0,0,0,0,0,246,324] reduction20685.output := by lin_cert using reduction20685.terms
end RealMapCertificates
