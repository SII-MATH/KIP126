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
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 40 => [[4,5,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 69 => []
  | 74 => []
  | 75 => []
  | 76 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 159 => [[3,4,4,4,4,4,4,4]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 189 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 209 => []
  | 210 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 250 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 318 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 348 => []
  | 450 => []
  | 610 => []
  | 620 => []
  | 690 => []
  | 946 => []
  | 978 => []
  | 1432 => []
  | 1691 => []
  | 1864 => []
  | 1905 => []
  | 1908 => []
  | 1971 => []
  | 1997 => []
  | 2002 => []
  | 2005 => []
  | 2045 => []
  | 2061 => []
  | 2063 => []
  | 2101 => []
  | 2102 => []
  | 2129 => []
  | 2243 => []
  | 2277 => []
  | 2309 => []
  | 2413 => []
  | 2415 => []
  | 2442 => []
  | 2490 => []
  | 2491 => []
  | 2492 => []
  | 2493 => []
  | 2494 => []
  | 2496 => []
  | 2498 => []
  | 2550 => []
  | 2552 => []
  | 2584 => []
  | 2630 => []
  | 2744 => []
  | 2746 => []
  | 2747 => []
  | 2798 => []
  | 2799 => []
  | 2800 => []
  | _ => []
def map_30_253 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20909 : InImage map_30_253 image20909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20909 : Bundle := named_bundle% "RealMapCertificates/relations/basis20909.json"
theorem reductionProof20909 : EqualModuloRelations reduction20909.relations reduction20909.input reduction20909.output := by lin_cert using reduction20909.terms
theorem substitutionProof20909 : IsMapEvaluation generatorImages reduction20909.relations [13,13,13,13,620] reduction20909.output := by lin_cert using reduction20909.terms
def image20910 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20910 : InImage map_30_253 image20910 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20910 : Bundle := named_bundle% "RealMapCertificates/relations/basis20910.json"
theorem reductionProof20910 : EqualModuloRelations reduction20910.relations reduction20910.input reduction20910.output := by lin_cert using reduction20910.terms
theorem substitutionProof20910 : IsMapEvaluation generatorImages reduction20910.relations [8,209,318] reduction20910.output := by lin_cert using reduction20910.terms
def image20911 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20911 : InImage map_30_253 image20911 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20911 : Bundle := named_bundle% "RealMapCertificates/relations/basis20911.json"
theorem reductionProof20911 : EqualModuloRelations reduction20911.relations reduction20911.input reduction20911.output := by lin_cert using reduction20911.terms
theorem substitutionProof20911 : IsMapEvaluation generatorImages reduction20911.relations [0,13,1691] reduction20911.output := by lin_cert using reduction20911.terms
def image20912 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20912 : InImage map_30_253 image20912 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20912 : Bundle := named_bundle% "RealMapCertificates/relations/basis20912.json"
theorem reductionProof20912 : EqualModuloRelations reduction20912.relations reduction20912.input reduction20912.output := by lin_cert using reduction20912.terms
theorem substitutionProof20912 : IsMapEvaluation generatorImages reduction20912.relations [0,3,2129] reduction20912.output := by lin_cert using reduction20912.terms
def map_30_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21206 : InImage map_30_254 image21206 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21206 : Bundle := named_bundle% "RealMapCertificates/relations/basis21206.json"
theorem reductionProof21206 : EqualModuloRelations reduction21206.relations reduction21206.input reduction21206.output := by lin_cert using reduction21206.terms
theorem substitutionProof21206 : IsMapEvaluation generatorImages reduction21206.relations [2490] reduction21206.output := by lin_cert using reduction21206.terms
def image21207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21207 : InImage map_30_254 image21207 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21207 : Bundle := named_bundle% "RealMapCertificates/relations/basis21207.json"
theorem reductionProof21207 : EqualModuloRelations reduction21207.relations reduction21207.input reduction21207.output := by lin_cert using reduction21207.terms
theorem substitutionProof21207 : IsMapEvaluation generatorImages reduction21207.relations [298,324] reduction21207.output := by lin_cert using reduction21207.terms
def image21208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21208 : InImage map_30_254 image21208 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21208 : Bundle := named_bundle% "RealMapCertificates/relations/basis21208.json"
theorem reductionProof21208 : EqualModuloRelations reduction21208.relations reduction21208.input reduction21208.output := by lin_cert using reduction21208.terms
theorem substitutionProof21208 : IsMapEvaluation generatorImages reduction21208.relations [8,9,209,212] reduction21208.output := by lin_cert using reduction21208.terms
def image21209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21209 : InImage map_30_254 image21209 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21209 : Bundle := named_bundle% "RealMapCertificates/relations/basis21209.json"
theorem reductionProof21209 : EqualModuloRelations reduction21209.relations reduction21209.input reduction21209.output := by lin_cert using reduction21209.terms
theorem substitutionProof21209 : IsMapEvaluation generatorImages reduction21209.relations [0,2442] reduction21209.output := by lin_cert using reduction21209.terms
def image21210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21210 : InImage map_30_254 image21210 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21210 : Bundle := named_bundle% "RealMapCertificates/relations/basis21210.json"
theorem reductionProof21210 : EqualModuloRelations reduction21210.relations reduction21210.input reduction21210.output := by lin_cert using reduction21210.terms
theorem substitutionProof21210 : IsMapEvaluation generatorImages reduction21210.relations [0,0,2415] reduction21210.output := by lin_cert using reduction21210.terms
def image21211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21211 : InImage map_30_254 image21211 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21211 : Bundle := named_bundle% "RealMapCertificates/relations/basis21211.json"
theorem reductionProof21211 : EqualModuloRelations reduction21211.relations reduction21211.input reduction21211.output := by lin_cert using reduction21211.terms
theorem substitutionProof21211 : IsMapEvaluation generatorImages reduction21211.relations [0,0,2413] reduction21211.output := by lin_cert using reduction21211.terms
def map_30_255 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21545 : InImage map_30_255 image21545 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21545 : Bundle := named_bundle% "RealMapCertificates/relations/basis21545.json"
theorem reductionProof21545 : EqualModuloRelations reduction21545.relations reduction21545.input reduction21545.output := by lin_cert using reduction21545.terms
theorem substitutionProof21545 : IsMapEvaluation generatorImages reduction21545.relations [2550] reduction21545.output := by lin_cert using reduction21545.terms
def image21546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21546 : InImage map_30_255 image21546 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21546 : Bundle := named_bundle% "RealMapCertificates/relations/basis21546.json"
theorem reductionProof21546 : EqualModuloRelations reduction21546.relations reduction21546.input reduction21546.output := by lin_cert using reduction21546.terms
theorem substitutionProof21546 : IsMapEvaluation generatorImages reduction21546.relations [74,978] reduction21546.output := by lin_cert using reduction21546.terms
def image21547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21547 : InImage map_30_255 image21547 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21547 : Bundle := named_bundle% "RealMapCertificates/relations/basis21547.json"
theorem reductionProof21547 : EqualModuloRelations reduction21547.relations reduction21547.input reduction21547.output := by lin_cert using reduction21547.terms
theorem substitutionProof21547 : IsMapEvaluation generatorImages reduction21547.relations [13,75,690] reduction21547.output := by lin_cert using reduction21547.terms
def image21548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21548 : InImage map_30_255 image21548 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21548 : Bundle := named_bundle% "RealMapCertificates/relations/basis21548.json"
theorem reductionProof21548 : EqualModuloRelations reduction21548.relations reduction21548.input reduction21548.output := by lin_cert using reduction21548.terms
theorem substitutionProof21548 : IsMapEvaluation generatorImages reduction21548.relations [8,1905] reduction21548.output := by lin_cert using reduction21548.terms
def image21549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21549 : InImage map_30_255 image21549 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21549 : Bundle := named_bundle% "RealMapCertificates/relations/basis21549.json"
theorem reductionProof21549 : EqualModuloRelations reduction21549.relations reduction21549.input reduction21549.output := by lin_cert using reduction21549.terms
theorem substitutionProof21549 : IsMapEvaluation generatorImages reduction21549.relations [3,2243] reduction21549.output := by lin_cert using reduction21549.terms
def image21550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21550 : InImage map_30_255 image21550 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21550 : Bundle := named_bundle% "RealMapCertificates/relations/basis21550.json"
theorem reductionProof21550 : EqualModuloRelations reduction21550.relations reduction21550.input reduction21550.output := by lin_cert using reduction21550.terms
theorem substitutionProof21550 : IsMapEvaluation generatorImages reduction21550.relations [0,2493] reduction21550.output := by lin_cert using reduction21550.terms
def image21551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21551 : InImage map_30_255 image21551 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21551 : Bundle := named_bundle% "RealMapCertificates/relations/basis21551.json"
theorem reductionProof21551 : EqualModuloRelations reduction21551.relations reduction21551.input reduction21551.output := by lin_cert using reduction21551.terms
theorem substitutionProof21551 : IsMapEvaluation generatorImages reduction21551.relations [0,2492] reduction21551.output := by lin_cert using reduction21551.terms
def image21552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21552 : InImage map_30_255 image21552 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21552 : Bundle := named_bundle% "RealMapCertificates/relations/basis21552.json"
theorem reductionProof21552 : EqualModuloRelations reduction21552.relations reduction21552.input reduction21552.output := by lin_cert using reduction21552.terms
theorem substitutionProof21552 : IsMapEvaluation generatorImages reduction21552.relations [0,2491] reduction21552.output := by lin_cert using reduction21552.terms
def map_30_256 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21805 : InImage map_30_256 image21805 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21805 : Bundle := named_bundle% "RealMapCertificates/relations/basis21805.json"
theorem reductionProof21805 : EqualModuloRelations reduction21805.relations reduction21805.input reduction21805.output := by lin_cert using reduction21805.terms
theorem substitutionProof21805 : IsMapEvaluation generatorImages reduction21805.relations [9,1864] reduction21805.output := by lin_cert using reduction21805.terms
def image21806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21806 : InImage map_30_256 image21806 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21806 : Bundle := named_bundle% "RealMapCertificates/relations/basis21806.json"
theorem reductionProof21806 : EqualModuloRelations reduction21806.relations reduction21806.input reduction21806.output := by lin_cert using reduction21806.terms
theorem substitutionProof21806 : IsMapEvaluation generatorImages reduction21806.relations [9,13,13,13,13,450] reduction21806.output := by lin_cert using reduction21806.terms
def image21807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21807 : InImage map_30_256 image21807 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21807 : Bundle := named_bundle% "RealMapCertificates/relations/basis21807.json"
theorem reductionProof21807 : EqualModuloRelations reduction21807.relations reduction21807.input reduction21807.output := by lin_cert using reduction21807.terms
theorem substitutionProof21807 : IsMapEvaluation generatorImages reduction21807.relations [8,209,348] reduction21807.output := by lin_cert using reduction21807.terms
def image21808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21808 : InImage map_30_256 image21808 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21808 : Bundle := named_bundle% "RealMapCertificates/relations/basis21808.json"
theorem reductionProof21808 : EqualModuloRelations reduction21808.relations reduction21808.input reduction21808.output := by lin_cert using reduction21808.terms
theorem substitutionProof21808 : IsMapEvaluation generatorImages reduction21808.relations [7,1997] reduction21808.output := by lin_cert using reduction21808.terms
def image21809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21809 : InImage map_30_256 image21809 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21809 : Bundle := named_bundle% "RealMapCertificates/relations/basis21809.json"
theorem reductionProof21809 : EqualModuloRelations reduction21809.relations reduction21809.input reduction21809.output := by lin_cert using reduction21809.terms
theorem substitutionProof21809 : IsMapEvaluation generatorImages reduction21809.relations [3,2277] reduction21809.output := by lin_cert using reduction21809.terms
def image21810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21810 : InImage map_30_256 image21810 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21810 : Bundle := named_bundle% "RealMapCertificates/relations/basis21810.json"
theorem reductionProof21810 : EqualModuloRelations reduction21810.relations reduction21810.input reduction21810.output := by lin_cert using reduction21810.terms
theorem substitutionProof21810 : IsMapEvaluation generatorImages reduction21810.relations [1,2491] reduction21810.output := by lin_cert using reduction21810.terms
def image21811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21811 : InImage map_30_256 image21811 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21811 : Bundle := named_bundle% "RealMapCertificates/relations/basis21811.json"
theorem reductionProof21811 : EqualModuloRelations reduction21811.relations reduction21811.input reduction21811.output := by lin_cert using reduction21811.terms
theorem substitutionProof21811 : IsMapEvaluation generatorImages reduction21811.relations [0,2552] reduction21811.output := by lin_cert using reduction21811.terms
def image21812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21812 : InImage map_30_256 image21812 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21812 : Bundle := named_bundle% "RealMapCertificates/relations/basis21812.json"
theorem reductionProof21812 : EqualModuloRelations reduction21812.relations reduction21812.input reduction21812.output := by lin_cert using reduction21812.terms
theorem substitutionProof21812 : IsMapEvaluation generatorImages reduction21812.relations [0,0,2494] reduction21812.output := by lin_cert using reduction21812.terms
def map_30_257 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22155 : InImage map_30_257 image22155 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22155 : Bundle := named_bundle% "RealMapCertificates/relations/basis22155.json"
theorem reductionProof22155 : EqualModuloRelations reduction22155.relations reduction22155.input reduction22155.output := by lin_cert using reduction22155.terms
theorem substitutionProof22155 : IsMapEvaluation generatorImages reduction22155.relations [2630] reduction22155.output := by lin_cert using reduction22155.terms
def image22156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22156 : InImage map_30_257 image22156 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22156 : Bundle := named_bundle% "RealMapCertificates/relations/basis22156.json"
theorem reductionProof22156 : EqualModuloRelations reduction22156.relations reduction22156.input reduction22156.output := by lin_cert using reduction22156.terms
theorem substitutionProof22156 : IsMapEvaluation generatorImages reduction22156.relations [13,13,13,946] reduction22156.output := by lin_cert using reduction22156.terms
def image22157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22157 : InImage map_30_257 image22157 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22157 : Bundle := named_bundle% "RealMapCertificates/relations/basis22157.json"
theorem reductionProof22157 : EqualModuloRelations reduction22157.relations reduction22157.input reduction22157.output := by lin_cert using reduction22157.terms
theorem substitutionProof22157 : IsMapEvaluation generatorImages reduction22157.relations [8,225,324] reduction22157.output := by lin_cert using reduction22157.terms
def image22158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22158 : InImage map_30_257 image22158 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22158 : Bundle := named_bundle% "RealMapCertificates/relations/basis22158.json"
theorem reductionProof22158 : EqualModuloRelations reduction22158.relations reduction22158.input reduction22158.output := by lin_cert using reduction22158.terms
theorem substitutionProof22158 : IsMapEvaluation generatorImages reduction22158.relations [8,13,209,212] reduction22158.output := by lin_cert using reduction22158.terms
def image22159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22159 : InImage map_30_257 image22159 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22159 : Bundle := named_bundle% "RealMapCertificates/relations/basis22159.json"
theorem reductionProof22159 : EqualModuloRelations reduction22159.relations reduction22159.input reduction22159.output := by lin_cert using reduction22159.terms
theorem substitutionProof22159 : IsMapEvaluation generatorImages reduction22159.relations [1,76,978] reduction22159.output := by lin_cert using reduction22159.terms
def image22160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22160 : InImage map_30_257 image22160 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22160 : Bundle := named_bundle% "RealMapCertificates/relations/basis22160.json"
theorem reductionProof22160 : EqualModuloRelations reduction22160.relations reduction22160.input reduction22160.output := by lin_cert using reduction22160.terms
theorem substitutionProof22160 : IsMapEvaluation generatorImages reduction22160.relations [0,2584] reduction22160.output := by lin_cert using reduction22160.terms
def image22161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22161 : InImage map_30_257 image22161 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22161 : Bundle := named_bundle% "RealMapCertificates/relations/basis22161.json"
theorem reductionProof22161 : EqualModuloRelations reduction22161.relations reduction22161.input reduction22161.output := by lin_cert using reduction22161.terms
theorem substitutionProof22161 : IsMapEvaluation generatorImages reduction22161.relations [0,0,8,1908] reduction22161.output := by lin_cert using reduction22161.terms
def map_30_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22513 : InImage map_30_258 image22513 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22513 : Bundle := named_bundle% "RealMapCertificates/relations/basis22513.json"
theorem reductionProof22513 : EqualModuloRelations reduction22513.relations reduction22513.input reduction22513.output := by lin_cert using reduction22513.terms
theorem substitutionProof22513 : IsMapEvaluation generatorImages reduction22513.relations [187,610] reduction22513.output := by lin_cert using reduction22513.terms
def image22514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22514 : InImage map_30_258 image22514 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22514 : Bundle := named_bundle% "RealMapCertificates/relations/basis22514.json"
theorem reductionProof22514 : EqualModuloRelations reduction22514.relations reduction22514.input reduction22514.output := by lin_cert using reduction22514.terms
theorem substitutionProof22514 : IsMapEvaluation generatorImages reduction22514.relations [13,13,189,212] reduction22514.output := by lin_cert using reduction22514.terms
def image22515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22515 : InImage map_30_258 image22515 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22515 : Bundle := named_bundle% "RealMapCertificates/relations/basis22515.json"
theorem reductionProof22515 : EqualModuloRelations reduction22515.relations reduction22515.input reduction22515.output := by lin_cert using reduction22515.terms
theorem substitutionProof22515 : IsMapEvaluation generatorImages reduction22515.relations [8,2002] reduction22515.output := by lin_cert using reduction22515.terms
def image22516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22516 : InImage map_30_258 image22516 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22516 : Bundle := named_bundle% "RealMapCertificates/relations/basis22516.json"
theorem reductionProof22516 : EqualModuloRelations reduction22516.relations reduction22516.input reduction22516.output := by lin_cert using reduction22516.terms
theorem substitutionProof22516 : IsMapEvaluation generatorImages reduction22516.relations [3,3,2061] reduction22516.output := by lin_cert using reduction22516.terms
def image22517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22517 : InImage map_30_258 image22517 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22517 : Bundle := named_bundle% "RealMapCertificates/relations/basis22517.json"
theorem reductionProof22517 : EqualModuloRelations reduction22517.relations reduction22517.input reduction22517.output := by lin_cert using reduction22517.terms
theorem substitutionProof22517 : IsMapEvaluation generatorImages reduction22517.relations [2,2491] reduction22517.output := by lin_cert using reduction22517.terms
def image22518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22518 : InImage map_30_258 image22518 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22518 : Bundle := named_bundle% "RealMapCertificates/relations/basis22518.json"
theorem reductionProof22518 : EqualModuloRelations reduction22518.relations reduction22518.input reduction22518.output := by lin_cert using reduction22518.terms
theorem substitutionProof22518 : IsMapEvaluation generatorImages reduction22518.relations [0,8,1971] reduction22518.output := by lin_cert using reduction22518.terms
def image22519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22519 : InImage map_30_258 image22519 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22519 : Bundle := named_bundle% "RealMapCertificates/relations/basis22519.json"
theorem reductionProof22519 : EqualModuloRelations reduction22519.relations reduction22519.input reduction22519.output := by lin_cert using reduction22519.terms
theorem substitutionProof22519 : IsMapEvaluation generatorImages reduction22519.relations [0,3,2309] reduction22519.output := by lin_cert using reduction22519.terms
def image22520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22520 : InImage map_30_258 image22520 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22520 : Bundle := named_bundle% "RealMapCertificates/relations/basis22520.json"
theorem reductionProof22520 : EqualModuloRelations reduction22520.relations reduction22520.input reduction22520.output := by lin_cert using reduction22520.terms
theorem substitutionProof22520 : IsMapEvaluation generatorImages reduction22520.relations [0,0,0,0,2498] reduction22520.output := by lin_cert using reduction22520.terms
def map_30_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22810 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22810 : InImage map_30_259 image22810 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22810 : Bundle := named_bundle% "RealMapCertificates/relations/basis22810.json"
theorem reductionProof22810 : EqualModuloRelations reduction22810.relations reduction22810.input reduction22810.output := by lin_cert using reduction22810.terms
theorem substitutionProof22810 : IsMapEvaluation generatorImages reduction22810.relations [2744] reduction22810.output := by lin_cert using reduction22810.terms
def image22811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22811 : InImage map_30_259 image22811 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22811 : Bundle := named_bundle% "RealMapCertificates/relations/basis22811.json"
theorem reductionProof22811 : EqualModuloRelations reduction22811.relations reduction22811.input reduction22811.output := by lin_cert using reduction22811.terms
theorem substitutionProof22811 : IsMapEvaluation generatorImages reduction22811.relations [13,1864] reduction22811.output := by lin_cert using reduction22811.terms
def image22812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22812 : InImage map_30_259 image22812 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22812 : Bundle := named_bundle% "RealMapCertificates/relations/basis22812.json"
theorem reductionProof22812 : EqualModuloRelations reduction22812.relations reduction22812.input reduction22812.output := by lin_cert using reduction22812.terms
theorem substitutionProof22812 : IsMapEvaluation generatorImages reduction22812.relations [13,13,13,13,13,450] reduction22812.output := by lin_cert using reduction22812.terms
def image22813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22813 : InImage map_30_259 image22813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22813 : Bundle := named_bundle% "RealMapCertificates/relations/basis22813.json"
theorem reductionProof22813 : EqualModuloRelations reduction22813.relations reduction22813.input reduction22813.output := by lin_cert using reduction22813.terms
theorem substitutionProof22813 : IsMapEvaluation generatorImages reduction22813.relations [8,8,209,250] reduction22813.output := by lin_cert using reduction22813.terms
def image22814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22814 : InImage map_30_259 image22814 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22814 : Bundle := named_bundle% "RealMapCertificates/relations/basis22814.json"
theorem reductionProof22814 : EqualModuloRelations reduction22814.relations reduction22814.input reduction22814.output := by lin_cert using reduction22814.terms
theorem substitutionProof22814 : IsMapEvaluation generatorImages reduction22814.relations [0,2,2494] reduction22814.output := by lin_cert using reduction22814.terms
def image22815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22815 : InImage map_30_259 image22815 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22815 : Bundle := named_bundle% "RealMapCertificates/relations/basis22815.json"
theorem reductionProof22815 : EqualModuloRelations reduction22815.relations reduction22815.input reduction22815.output := by lin_cert using reduction22815.terms
theorem substitutionProof22815 : IsMapEvaluation generatorImages reduction22815.relations [0,0,0,0,7,1971] reduction22815.output := by lin_cert using reduction22815.terms
def map_30_260 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23187 : InImage map_30_260 image23187 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23187 : Bundle := named_bundle% "RealMapCertificates/relations/basis23187.json"
theorem reductionProof23187 : EqualModuloRelations reduction23187.relations reduction23187.input reduction23187.output := by lin_cert using reduction23187.terms
theorem substitutionProof23187 : IsMapEvaluation generatorImages reduction23187.relations [2798] reduction23187.output := by lin_cert using reduction23187.terms
def image23188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23188 : InImage map_30_260 image23188 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23188 : Bundle := named_bundle% "RealMapCertificates/relations/basis23188.json"
theorem reductionProof23188 : EqualModuloRelations reduction23188.relations reduction23188.input reduction23188.output := by lin_cert using reduction23188.terms
theorem substitutionProof23188 : IsMapEvaluation generatorImages reduction23188.relations [9,13,209,212] reduction23188.output := by lin_cert using reduction23188.terms
def image23189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23189 : InImage map_30_260 image23189 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23189 : Bundle := named_bundle% "RealMapCertificates/relations/basis23189.json"
theorem reductionProof23189 : EqualModuloRelations reduction23189.relations reduction23189.input reduction23189.output := by lin_cert using reduction23189.terms
theorem substitutionProof23189 : IsMapEvaluation generatorImages reduction23189.relations [8,238,324] reduction23189.output := by lin_cert using reduction23189.terms
def image23190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23190 : InImage map_30_260 image23190 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23190 : Bundle := named_bundle% "RealMapCertificates/relations/basis23190.json"
theorem reductionProof23190 : EqualModuloRelations reduction23190.relations reduction23190.input reduction23190.output := by lin_cert using reduction23190.terms
theorem substitutionProof23190 : IsMapEvaluation generatorImages reduction23190.relations [3,3,2129] reduction23190.output := by lin_cert using reduction23190.terms
def image23191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23191 : InImage map_30_260 image23191 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23191 : Bundle := named_bundle% "RealMapCertificates/relations/basis23191.json"
theorem reductionProof23191 : EqualModuloRelations reduction23191.relations reduction23191.input reduction23191.output := by lin_cert using reduction23191.terms
theorem substitutionProof23191 : IsMapEvaluation generatorImages reduction23191.relations [0,2746] reduction23191.output := by lin_cert using reduction23191.terms
def image23192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23192 : InImage map_30_260 image23192 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23192 : Bundle := named_bundle% "RealMapCertificates/relations/basis23192.json"
theorem reductionProof23192 : EqualModuloRelations reduction23192.relations reduction23192.input reduction23192.output := by lin_cert using reduction23192.terms
theorem substitutionProof23192 : IsMapEvaluation generatorImages reduction23192.relations [0,8,2045] reduction23192.output := by lin_cert using reduction23192.terms
def image23193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23193 : InImage map_30_260 image23193 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23193 : Bundle := named_bundle% "RealMapCertificates/relations/basis23193.json"
theorem reductionProof23193 : EqualModuloRelations reduction23193.relations reduction23193.input reduction23193.output := by lin_cert using reduction23193.terms
theorem substitutionProof23193 : IsMapEvaluation generatorImages reduction23193.relations [0,0,8,2005] reduction23193.output := by lin_cert using reduction23193.terms
def image23194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23194 : InImage map_30_260 image23194 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23194 : Bundle := named_bundle% "RealMapCertificates/relations/basis23194.json"
theorem reductionProof23194 : EqualModuloRelations reduction23194.relations reduction23194.input reduction23194.output := by lin_cert using reduction23194.terms
theorem substitutionProof23194 : IsMapEvaluation generatorImages reduction23194.relations [0,0,2,2496] reduction23194.output := by lin_cert using reduction23194.terms
def map_30_261 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23631 : InImage map_30_261 image23631 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23631 : Bundle := named_bundle% "RealMapCertificates/relations/basis23631.json"
theorem reductionProof23631 : EqualModuloRelations reduction23631.relations reduction23631.input reduction23631.output := by lin_cert using reduction23631.terms
theorem substitutionProof23631 : IsMapEvaluation generatorImages reduction23631.relations [13,13,1432] reduction23631.output := by lin_cert using reduction23631.terms
def image23632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23632 : InImage map_30_261 image23632 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23632 : Bundle := named_bundle% "RealMapCertificates/relations/basis23632.json"
theorem reductionProof23632 : EqualModuloRelations reduction23632.relations reduction23632.input reduction23632.output := by lin_cert using reduction23632.terms
theorem substitutionProof23632 : IsMapEvaluation generatorImages reduction23632.relations [8,2102] reduction23632.output := by lin_cert using reduction23632.terms
def image23633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23633 : InImage map_30_261 image23633 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23633 : Bundle := named_bundle% "RealMapCertificates/relations/basis23633.json"
theorem reductionProof23633 : EqualModuloRelations reduction23633.relations reduction23633.input reduction23633.output := by lin_cert using reduction23633.terms
theorem substitutionProof23633 : IsMapEvaluation generatorImages reduction23633.relations [8,2101] reduction23633.output := by lin_cert using reduction23633.terms
def image23634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23634 : InImage map_30_261 image23634 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23634 : Bundle := named_bundle% "RealMapCertificates/relations/basis23634.json"
theorem reductionProof23634 : EqualModuloRelations reduction23634.relations reduction23634.input reduction23634.output := by lin_cert using reduction23634.terms
theorem substitutionProof23634 : IsMapEvaluation generatorImages reduction23634.relations [1,2746] reduction23634.output := by lin_cert using reduction23634.terms
def image23635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23635 : InImage map_30_261 image23635 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23635 : Bundle := named_bundle% "RealMapCertificates/relations/basis23635.json"
theorem reductionProof23635 : EqualModuloRelations reduction23635.relations reduction23635.input reduction23635.output := by lin_cert using reduction23635.terms
theorem substitutionProof23635 : IsMapEvaluation generatorImages reduction23635.relations [0,2800] reduction23635.output := by lin_cert using reduction23635.terms
def image23636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23636 : InImage map_30_261 image23636 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23636 : Bundle := named_bundle% "RealMapCertificates/relations/basis23636.json"
theorem reductionProof23636 : EqualModuloRelations reduction23636.relations reduction23636.input reduction23636.output := by lin_cert using reduction23636.terms
theorem substitutionProof23636 : IsMapEvaluation generatorImages reduction23636.relations [0,2799] reduction23636.output := by lin_cert using reduction23636.terms
def image23637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23637 : InImage map_30_261 image23637 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23637 : Bundle := named_bundle% "RealMapCertificates/relations/basis23637.json"
theorem reductionProof23637 : EqualModuloRelations reduction23637.relations reduction23637.input reduction23637.output := by lin_cert using reduction23637.terms
theorem substitutionProof23637 : IsMapEvaluation generatorImages reduction23637.relations [0,8,2063] reduction23637.output := by lin_cert using reduction23637.terms
def image23638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23638 : InImage map_30_261 image23638 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23638 : Bundle := named_bundle% "RealMapCertificates/relations/basis23638.json"
theorem reductionProof23638 : EqualModuloRelations reduction23638.relations reduction23638.input reduction23638.output := by lin_cert using reduction23638.terms
theorem substitutionProof23638 : IsMapEvaluation generatorImages reduction23638.relations [0,0,2747] reduction23638.output := by lin_cert using reduction23638.terms
def map_31_31 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image96 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation96 : InImage map_31_31 image96 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction96 : Bundle := named_bundle% "RealMapCertificates/relations/basis96.json"
theorem reductionProof96 : EqualModuloRelations reduction96.relations reduction96.input reduction96.output := by lin_cert using reduction96.terms
theorem substitutionProof96 : IsMapEvaluation generatorImages reduction96.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction96.output := by lin_cert using reduction96.terms
def map_31_90 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image959 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation959 : InImage map_31_90 image959 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction959 : Bundle := named_bundle% "RealMapCertificates/relations/basis959.json"
theorem reductionProof959 : EqualModuloRelations reduction959.relations reduction959.input reduction959.output := by lin_cert using reduction959.terms
theorem substitutionProof959 : IsMapEvaluation generatorImages reduction959.relations [0,0,140] reduction959.output := by lin_cert using reduction959.terms
def map_31_94 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1069 : InImage map_31_94 image1069 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1069 : Bundle := named_bundle% "RealMapCertificates/relations/basis1069.json"
theorem reductionProof1069 : EqualModuloRelations reduction1069.relations reduction1069.input reduction1069.output := by lin_cert using reduction1069.terms
theorem substitutionProof1069 : IsMapEvaluation generatorImages reduction1069.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction1069.output := by lin_cert using reduction1069.terms
def map_31_95 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1093 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1093 : InImage map_31_95 image1093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1093 : Bundle := named_bundle% "RealMapCertificates/relations/basis1093.json"
theorem reductionProof1093 : EqualModuloRelations reduction1093.relations reduction1093.input reduction1093.output := by lin_cert using reduction1093.terms
theorem substitutionProof1093 : IsMapEvaluation generatorImages reduction1093.relations [159] reduction1093.output := by lin_cert using reduction1093.terms
def map_31_96 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1107 : InImage map_31_96 image1107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1107 : Bundle := named_bundle% "RealMapCertificates/relations/basis1107.json"
theorem reductionProof1107 : EqualModuloRelations reduction1107.relations reduction1107.input reduction1107.output := by lin_cert using reduction1107.terms
theorem substitutionProof1107 : IsMapEvaluation generatorImages reduction1107.relations [0,0,0,152] reduction1107.output := by lin_cert using reduction1107.terms
def map_31_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1274 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1274 : InImage map_31_102 image1274 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1274 : Bundle := named_bundle% "RealMapCertificates/relations/basis1274.json"
theorem reductionProof1274 : EqualModuloRelations reduction1274.relations reduction1274.input reduction1274.output := by lin_cert using reduction1274.terms
theorem substitutionProof1274 : IsMapEvaluation generatorImages reduction1274.relations [183] reduction1274.output := by lin_cert using reduction1274.terms
def map_31_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1376 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1376 : InImage map_31_105 image1376 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1376 : Bundle := named_bundle% "RealMapCertificates/relations/basis1376.json"
theorem reductionProof1376 : EqualModuloRelations reduction1376.relations reduction1376.input reduction1376.output := by lin_cert using reduction1376.terms
theorem substitutionProof1376 : IsMapEvaluation generatorImages reduction1376.relations [200] reduction1376.output := by lin_cert using reduction1376.terms
def map_31_108 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1471 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1471 : InImage map_31_108 image1471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1471 : Bundle := named_bundle% "RealMapCertificates/relations/basis1471.json"
theorem reductionProof1471 : EqualModuloRelations reduction1471.relations reduction1471.input reduction1471.output := by lin_cert using reduction1471.terms
theorem substitutionProof1471 : IsMapEvaluation generatorImages reduction1471.relations [16,111] reduction1471.output := by lin_cert using reduction1471.terms
def map_31_109 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1524 : InImage map_31_109 image1524 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1524 : Bundle := named_bundle% "RealMapCertificates/relations/basis1524.json"
theorem reductionProof1524 : EqualModuloRelations reduction1524.relations reduction1524.input reduction1524.output := by lin_cert using reduction1524.terms
theorem substitutionProof1524 : IsMapEvaluation generatorImages reduction1524.relations [0,17,111] reduction1524.output := by lin_cert using reduction1524.terms
def map_31_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1556 : InImage map_31_110 image1556 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1556 : Bundle := named_bundle% "RealMapCertificates/relations/basis1556.json"
theorem reductionProof1556 : EqualModuloRelations reduction1556.relations reduction1556.input reduction1556.output := by lin_cert using reduction1556.terms
theorem substitutionProof1556 : IsMapEvaluation generatorImages reduction1556.relations [0,0,210] reduction1556.output := by lin_cert using reduction1556.terms
def map_31_111 : Matrix 4 1 := fun i j => ([false,true,false,false] : List Bool)[i.val*1+j.val]!
def image1592 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation1592 : InImage map_31_111 image1592 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1592 : Bundle := named_bundle% "RealMapCertificates/relations/basis1592.json"
theorem reductionProof1592 : EqualModuloRelations reduction1592.relations reduction1592.input reduction1592.output := by lin_cert using reduction1592.terms
theorem substitutionProof1592 : IsMapEvaluation generatorImages reduction1592.relations [8,153] reduction1592.output := by lin_cert using reduction1592.terms
def map_31_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1637 : InImage map_31_112 image1637 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1637 : Bundle := named_bundle% "RealMapCertificates/relations/basis1637.json"
theorem reductionProof1637 : EqualModuloRelations reduction1637.relations reduction1637.input reduction1637.output := by lin_cert using reduction1637.terms
theorem substitutionProof1637 : IsMapEvaluation generatorImages reduction1637.relations [0,17,117] reduction1637.output := by lin_cert using reduction1637.terms
def map_31_114 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1703 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1703 : InImage map_31_114 image1703 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1703 : Bundle := named_bundle% "RealMapCertificates/relations/basis1703.json"
theorem reductionProof1703 : EqualModuloRelations reduction1703.relations reduction1703.input reduction1703.output := by lin_cert using reduction1703.terms
theorem substitutionProof1703 : IsMapEvaluation generatorImages reduction1703.relations [8,8,111] reduction1703.output := by lin_cert using reduction1703.terms
def map_31_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1774 : InImage map_31_116 image1774 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1774 : Bundle := named_bundle% "RealMapCertificates/relations/basis1774.json"
theorem reductionProof1774 : EqualModuloRelations reduction1774.relations reduction1774.input reduction1774.output := by lin_cert using reduction1774.terms
theorem substitutionProof1774 : IsMapEvaluation generatorImages reduction1774.relations [0,0,0,0,0,224] reduction1774.output := by lin_cert using reduction1774.terms
def map_31_117 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1809 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1809 : InImage map_31_117 image1809 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1809 : Bundle := named_bundle% "RealMapCertificates/relations/basis1809.json"
theorem reductionProof1809 : EqualModuloRelations reduction1809.relations reduction1809.input reduction1809.output := by lin_cert using reduction1809.terms
theorem substitutionProof1809 : IsMapEvaluation generatorImages reduction1809.relations [8,8,117] reduction1809.output := by lin_cert using reduction1809.terms
def image1810 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1810 : InImage map_31_117 image1810 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1810 : Bundle := named_bundle% "RealMapCertificates/relations/basis1810.json"
theorem reductionProof1810 : EqualModuloRelations reduction1810.relations reduction1810.input reduction1810.output := by lin_cert using reduction1810.terms
theorem substitutionProof1810 : IsMapEvaluation generatorImages reduction1810.relations [0,0,0,0,0,0,225] reduction1810.output := by lin_cert using reduction1810.terms
def map_31_120 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1921 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1921 : InImage map_31_120 image1921 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1921 : Bundle := named_bundle% "RealMapCertificates/relations/basis1921.json"
theorem reductionProof1921 : EqualModuloRelations reduction1921.relations reduction1921.input reduction1921.output := by lin_cert using reduction1921.terms
theorem substitutionProof1921 : IsMapEvaluation generatorImages reduction1921.relations [8,8,16,50] reduction1921.output := by lin_cert using reduction1921.terms
def map_31_123 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2042 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2042 : InImage map_31_123 image2042 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2042 : Bundle := named_bundle% "RealMapCertificates/relations/basis2042.json"
theorem reductionProof2042 : EqualModuloRelations reduction2042.relations reduction2042.input reduction2042.output := by lin_cert using reduction2042.terms
theorem substitutionProof2042 : IsMapEvaluation generatorImages reduction2042.relations [8,8,8,78] reduction2042.output := by lin_cert using reduction2042.terms
def map_31_125 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2130 : InImage map_31_125 image2130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2130 : Bundle := named_bundle% "RealMapCertificates/relations/basis2130.json"
theorem reductionProof2130 : EqualModuloRelations reduction2130.relations reduction2130.input reduction2130.output := by lin_cert using reduction2130.terms
theorem substitutionProof2130 : IsMapEvaluation generatorImages reduction2130.relations [5,224] reduction2130.output := by lin_cert using reduction2130.terms
def image2131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2131 : InImage map_31_125 image2131 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2131 : Bundle := named_bundle% "RealMapCertificates/relations/basis2131.json"
theorem reductionProof2131 : EqualModuloRelations reduction2131.relations reduction2131.input reduction2131.output := by lin_cert using reduction2131.terms
theorem substitutionProof2131 : IsMapEvaluation generatorImages reduction2131.relations [0,0,0,0,0,0,0,0,0,245] reduction2131.output := by lin_cert using reduction2131.terms
def map_31_126 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2170 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2170 : InImage map_31_126 image2170 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2170 : Bundle := named_bundle% "RealMapCertificates/relations/basis2170.json"
theorem reductionProof2170 : EqualModuloRelations reduction2170.relations reduction2170.input reduction2170.output := by lin_cert using reduction2170.terms
theorem substitutionProof2170 : IsMapEvaluation generatorImages reduction2170.relations [8,8,8,8,50] reduction2170.output := by lin_cert using reduction2170.terms
def image2171 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2171 : InImage map_31_126 image2171 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2171 : Bundle := named_bundle% "RealMapCertificates/relations/basis2171.json"
theorem reductionProof2171 : EqualModuloRelations reduction2171.relations reduction2171.input reduction2171.output := by lin_cert using reduction2171.terms
theorem substitutionProof2171 : IsMapEvaluation generatorImages reduction2171.relations [0,0,0,0,0,0,0,0,0,0,246] reduction2171.output := by lin_cert using reduction2171.terms
def map_31_127 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image2226 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2226 : InImage map_31_127 image2226 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2226 : Bundle := named_bundle% "RealMapCertificates/relations/basis2226.json"
theorem reductionProof2226 : EqualModuloRelations reduction2226.relations reduction2226.input reduction2226.output := by lin_cert using reduction2226.terms
theorem substitutionProof2226 : IsMapEvaluation generatorImages reduction2226.relations [0,297] reduction2226.output := by lin_cert using reduction2226.terms
def map_31_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2268 : InImage map_31_128 image2268 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2268 : Bundle := named_bundle% "RealMapCertificates/relations/basis2268.json"
theorem reductionProof2268 : EqualModuloRelations reduction2268.relations reduction2268.input reduction2268.output := by lin_cert using reduction2268.terms
theorem substitutionProof2268 : IsMapEvaluation generatorImages reduction2268.relations [0,0,298] reduction2268.output := by lin_cert using reduction2268.terms
def map_31_129 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2328 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2328 : InImage map_31_129 image2328 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2328 : Bundle := named_bundle% "RealMapCertificates/relations/basis2328.json"
theorem reductionProof2328 : EqualModuloRelations reduction2328.relations reduction2328.input reduction2328.output := by lin_cert using reduction2328.terms
theorem substitutionProof2328 : IsMapEvaluation generatorImages reduction2328.relations [8,8,8,8,56] reduction2328.output := by lin_cert using reduction2328.terms
def map_31_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2389 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2389 : InImage map_31_130 image2389 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2389 : Bundle := named_bundle% "RealMapCertificates/relations/basis2389.json"
theorem reductionProof2389 : EqualModuloRelations reduction2389.relations reduction2389.input reduction2389.output := by lin_cert using reduction2389.terms
theorem substitutionProof2389 : IsMapEvaluation generatorImages reduction2389.relations [0,8,224] reduction2389.output := by lin_cert using reduction2389.terms
def map_31_131 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image2449 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2449 : InImage map_31_131 image2449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2449 : Bundle := named_bundle% "RealMapCertificates/relations/basis2449.json"
theorem reductionProof2449 : EqualModuloRelations reduction2449.relations reduction2449.input reduction2449.output := by lin_cert using reduction2449.terms
theorem substitutionProof2449 : IsMapEvaluation generatorImages reduction2449.relations [0,0,8,225] reduction2449.output := by lin_cert using reduction2449.terms
def map_31_132 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2508 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2508 : InImage map_31_132 image2508 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2508 : Bundle := named_bundle% "RealMapCertificates/relations/basis2508.json"
theorem reductionProof2508 : EqualModuloRelations reduction2508.relations reduction2508.input reduction2508.output := by lin_cert using reduction2508.terms
theorem substitutionProof2508 : IsMapEvaluation generatorImages reduction2508.relations [8,8,8,8,16,17] reduction2508.output := by lin_cert using reduction2508.terms
def map_31_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2586 : InImage map_31_133 image2586 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2586 : Bundle := named_bundle% "RealMapCertificates/relations/basis2586.json"
theorem reductionProof2586 : EqualModuloRelations reduction2586.relations reduction2586.input reduction2586.output := by lin_cert using reduction2586.terms
theorem substitutionProof2586 : IsMapEvaluation generatorImages reduction2586.relations [0,8,237] reduction2586.output := by lin_cert using reduction2586.terms
def map_31_134 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image2646 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2646 : InImage map_31_134 image2646 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2646 : Bundle := named_bundle% "RealMapCertificates/relations/basis2646.json"
theorem reductionProof2646 : EqualModuloRelations reduction2646.relations reduction2646.input reduction2646.output := by lin_cert using reduction2646.terms
theorem substitutionProof2646 : IsMapEvaluation generatorImages reduction2646.relations [0,0,8,238] reduction2646.output := by lin_cert using reduction2646.terms
def image2647 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2647 : InImage map_31_134 image2647 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2647 : Bundle := named_bundle% "RealMapCertificates/relations/basis2647.json"
theorem reductionProof2647 : EqualModuloRelations reduction2647.relations reduction2647.input reduction2647.output := by lin_cert using reduction2647.terms
theorem substitutionProof2647 : IsMapEvaluation generatorImages reduction2647.relations [0,0,0,343] reduction2647.output := by lin_cert using reduction2647.terms
def map_31_135 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2733 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2733 : InImage map_31_135 image2733 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2733 : Bundle := named_bundle% "RealMapCertificates/relations/basis2733.json"
theorem reductionProof2733 : EqualModuloRelations reduction2733.relations reduction2733.input reduction2733.output := by lin_cert using reduction2733.terms
theorem substitutionProof2733 : IsMapEvaluation generatorImages reduction2733.relations [8,8,8,8,8,40] reduction2733.output := by lin_cert using reduction2733.terms
def map_31_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2814 : InImage map_31_136 image2814 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2814 : Bundle := named_bundle% "RealMapCertificates/relations/basis2814.json"
theorem reductionProof2814 : EqualModuloRelations reduction2814.relations reduction2814.input reduction2814.output := by lin_cert using reduction2814.terms
theorem substitutionProof2814 : IsMapEvaluation generatorImages reduction2814.relations [0,8,16,137] reduction2814.output := by lin_cert using reduction2814.terms
def map_31_137 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2882 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2882 : InImage map_31_137 image2882 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2882 : Bundle := named_bundle% "RealMapCertificates/relations/basis2882.json"
theorem reductionProof2882 : EqualModuloRelations reduction2882.relations reduction2882.input reduction2882.output := by lin_cert using reduction2882.terms
theorem substitutionProof2882 : IsMapEvaluation generatorImages reduction2882.relations [0,0,8,16,138] reduction2882.output := by lin_cert using reduction2882.terms
def map_31_138 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2960 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2960 : InImage map_31_138 image2960 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2960 : Bundle := named_bundle% "RealMapCertificates/relations/basis2960.json"
theorem reductionProof2960 : EqualModuloRelations reduction2960.relations reduction2960.input reduction2960.output := by lin_cert using reduction2960.terms
theorem substitutionProof2960 : IsMapEvaluation generatorImages reduction2960.relations [8,8,8,8,8,8,17] reduction2960.output := by lin_cert using reduction2960.terms
def map_31_139 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image3052 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3052 : InImage map_31_139 image3052 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3052 : Bundle := named_bundle% "RealMapCertificates/relations/basis3052.json"
theorem reductionProof3052 : EqualModuloRelations reduction3052.relations reduction3052.input reduction3052.output := by lin_cert using reduction3052.terms
theorem substitutionProof3052 : IsMapEvaluation generatorImages reduction3052.relations [0,8,8,184] reduction3052.output := by lin_cert using reduction3052.terms
def map_31_140 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3119 : InImage map_31_140 image3119 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3119 : Bundle := named_bundle% "RealMapCertificates/relations/basis3119.json"
theorem reductionProof3119 : EqualModuloRelations reduction3119.relations reduction3119.input reduction3119.output := by lin_cert using reduction3119.terms
theorem substitutionProof3119 : IsMapEvaluation generatorImages reduction3119.relations [0,0,8,8,185] reduction3119.output := by lin_cert using reduction3119.terms
end RealMapCertificates
