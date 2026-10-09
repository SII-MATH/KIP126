import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 185 => [[0,4,4,8,12]]
  | 186 => []
  | 188 => []
  | 206 => [[4,6,8,12]]
  | 232 => [[5,6,9,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 324 => []
  | 327 => []
  | 380 => []
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 500 => []
  | 509 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 549 => []
  | 558 => []
  | 598 => [[0,6,9,12,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 653 => []
  | 664 => [[0,0,4,4,9,12,12]]
  | 689 => []
  | 795 => []
  | 796 => []
  | 831 => []
  | 862 => []
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 919 => []
  | 921 => []
  | 927 => [[4,5,5,10,12,12]]
  | 962 => [[4,5,7,10,12,12]]
  | _ => []
def map_31_141 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3216 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3216 : InImage map_31_141 image3216 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3216 : Bundle := named_bundle% "RealMapCertificates/relations/basis3216.json"
theorem reductionProof3216 : EqualModuloRelations reduction3216.relations reduction3216.input reduction3216.output := by lin_cert using reduction3216.terms
theorem substitutionProof3216 : IsMapEvaluation generatorImages reduction3216.relations [8,8,8,8,8,8,20] reduction3216.output := by lin_cert using reduction3216.terms
def map_31_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3298 : InImage map_31_142 image3298 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3298 : Bundle := named_bundle% "RealMapCertificates/relations/basis3298.json"
theorem reductionProof3298 : EqualModuloRelations reduction3298.relations reduction3298.input reduction3298.output := by lin_cert using reduction3298.terms
theorem substitutionProof3298 : IsMapEvaluation generatorImages reduction3298.relations [0,8,8,8,137] reduction3298.output := by lin_cert using reduction3298.terms
def map_31_143 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3373 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3373 : InImage map_31_143 image3373 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3373 : Bundle := named_bundle% "RealMapCertificates/relations/basis3373.json"
theorem reductionProof3373 : EqualModuloRelations reduction3373.relations reduction3373.input reduction3373.output := by lin_cert using reduction3373.terms
theorem substitutionProof3373 : IsMapEvaluation generatorImages reduction3373.relations [0,0,8,8,8,138] reduction3373.output := by lin_cert using reduction3373.terms
def map_31_144 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3459 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3459 : InImage map_31_144 image3459 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3459 : Bundle := named_bundle% "RealMapCertificates/relations/basis3459.json"
theorem reductionProof3459 : EqualModuloRelations reduction3459.relations reduction3459.input reduction3459.output := by lin_cert using reduction3459.terms
theorem substitutionProof3459 : IsMapEvaluation generatorImages reduction3459.relations [8,8,8,8,8,8,22] reduction3459.output := by lin_cert using reduction3459.terms
def image3460 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3460 : InImage map_31_144 image3460 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3460 : Bundle := named_bundle% "RealMapCertificates/relations/basis3460.json"
theorem reductionProof3460 : EqualModuloRelations reduction3460.relations reduction3460.input reduction3460.output := by lin_cert using reduction3460.terms
theorem substitutionProof3460 : IsMapEvaluation generatorImages reduction3460.relations [0,489] reduction3460.output := by lin_cert using reduction3460.terms
def map_31_146 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3612 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3612 : InImage map_31_146 image3612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3612 : Bundle := named_bundle% "RealMapCertificates/relations/basis3612.json"
theorem reductionProof3612 : EqualModuloRelations reduction3612.relations reduction3612.input reduction3612.output := by lin_cert using reduction3612.terms
theorem substitutionProof3612 : IsMapEvaluation generatorImages reduction3612.relations [17,244] reduction3612.output := by lin_cert using reduction3612.terms
def map_31_147 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image3717 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3717 : InImage map_31_147 image3717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3717 : Bundle := named_bundle% "RealMapCertificates/relations/basis3717.json"
theorem reductionProof3717 : EqualModuloRelations reduction3717.relations reduction3717.input reduction3717.output := by lin_cert using reduction3717.terms
theorem substitutionProof3717 : IsMapEvaluation generatorImages reduction3717.relations [59,137] reduction3717.output := by lin_cert using reduction3717.terms
def image3718 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3718 : InImage map_31_147 image3718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3718 : Bundle := named_bundle% "RealMapCertificates/relations/basis3718.json"
theorem reductionProof3718 : EqualModuloRelations reduction3718.relations reduction3718.input reduction3718.output := by lin_cert using reduction3718.terms
theorem substitutionProof3718 : IsMapEvaluation generatorImages reduction3718.relations [17,17,138] reduction3718.output := by lin_cert using reduction3718.terms
def image3719 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3719 : InImage map_31_147 image3719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3719 : Bundle := named_bundle% "RealMapCertificates/relations/basis3719.json"
theorem reductionProof3719 : EqualModuloRelations reduction3719.relations reduction3719.input reduction3719.output := by lin_cert using reduction3719.terms
theorem substitutionProof3719 : IsMapEvaluation generatorImages reduction3719.relations [8,8,8,8,8,8,29] reduction3719.output := by lin_cert using reduction3719.terms
def map_31_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3806 : InImage map_31_148 image3806 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3806 : Bundle := named_bundle% "RealMapCertificates/relations/basis3806.json"
theorem reductionProof3806 : EqualModuloRelations reduction3806.relations reduction3806.input reduction3806.output := by lin_cert using reduction3806.terms
theorem substitutionProof3806 : IsMapEvaluation generatorImages reduction3806.relations [0,0,0,0,0,491] reduction3806.output := by lin_cert using reduction3806.terms
def map_31_149 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3884 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3884 : InImage map_31_149 image3884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3884 : Bundle := named_bundle% "RealMapCertificates/relations/basis3884.json"
theorem reductionProof3884 : EqualModuloRelations reduction3884.relations reduction3884.input reduction3884.output := by lin_cert using reduction3884.terms
theorem substitutionProof3884 : IsMapEvaluation generatorImages reduction3884.relations [17,257] reduction3884.output := by lin_cert using reduction3884.terms
def image3885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3885 : InImage map_31_149 image3885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3885 : Bundle := named_bundle% "RealMapCertificates/relations/basis3885.json"
theorem reductionProof3885 : EqualModuloRelations reduction3885.relations reduction3885.input reduction3885.output := by lin_cert using reduction3885.terms
theorem substitutionProof3885 : IsMapEvaluation generatorImages reduction3885.relations [0,0,0,0,509] reduction3885.output := by lin_cert using reduction3885.terms
def map_31_150 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3975 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3975 : InImage map_31_150 image3975 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3975 : Bundle := named_bundle% "RealMapCertificates/relations/basis3975.json"
theorem reductionProof3975 : EqualModuloRelations reduction3975.relations reduction3975.input reduction3975.output := by lin_cert using reduction3975.terms
theorem substitutionProof3975 : IsMapEvaluation generatorImages reduction3975.relations [17,17,147] reduction3975.output := by lin_cert using reduction3975.terms
def image3976 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3976 : InImage map_31_150 image3976 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3976 : Bundle := named_bundle% "RealMapCertificates/relations/basis3976.json"
theorem reductionProof3976 : EqualModuloRelations reduction3976.relations reduction3976.input reduction3976.output := by lin_cert using reduction3976.terms
theorem substitutionProof3976 : IsMapEvaluation generatorImages reduction3976.relations [8,8,8,8,8,8,32] reduction3976.output := by lin_cert using reduction3976.terms
def map_31_152 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4154 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4154 : InImage map_31_152 image4154 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4154 : Bundle := named_bundle% "RealMapCertificates/relations/basis4154.json"
theorem reductionProof4154 : EqualModuloRelations reduction4154.relations reduction4154.input reduction4154.output := by lin_cert using reduction4154.terms
theorem substitutionProof4154 : IsMapEvaluation generatorImages reduction4154.relations [16,17,149] reduction4154.output := by lin_cert using reduction4154.terms
def map_31_153 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4254 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4254 : InImage map_31_153 image4254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4254 : Bundle := named_bundle% "RealMapCertificates/relations/basis4254.json"
theorem reductionProof4254 : EqualModuloRelations reduction4254.relations reduction4254.input reduction4254.output := by lin_cert using reduction4254.terms
theorem substitutionProof4254 : IsMapEvaluation generatorImages reduction4254.relations [8,42,137] reduction4254.output := by lin_cert using reduction4254.terms
def image4255 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4255 : InImage map_31_153 image4255 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4255 : Bundle := named_bundle% "RealMapCertificates/relations/basis4255.json"
theorem reductionProof4255 : EqualModuloRelations reduction4255.relations reduction4255.input reduction4255.output := by lin_cert using reduction4255.terms
theorem substitutionProof4255 : IsMapEvaluation generatorImages reduction4255.relations [8,8,8,8,8,9,32] reduction4255.output := by lin_cert using reduction4255.terms
def image4256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4256 : InImage map_31_153 image4256 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4256 : Bundle := named_bundle% "RealMapCertificates/relations/basis4256.json"
theorem reductionProof4256 : EqualModuloRelations reduction4256.relations reduction4256.input reduction4256.output := by lin_cert using reduction4256.terms
theorem substitutionProof4256 : IsMapEvaluation generatorImages reduction4256.relations [0,0,0,64,137] reduction4256.output := by lin_cert using reduction4256.terms
def map_31_154 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4334 : InImage map_31_154 image4334 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4334 : Bundle := named_bundle% "RealMapCertificates/relations/basis4334.json"
theorem reductionProof4334 : EqualModuloRelations reduction4334.relations reduction4334.input reduction4334.output := by lin_cert using reduction4334.terms
theorem substitutionProof4334 : IsMapEvaluation generatorImages reduction4334.relations [0,0,0,0,64,138] reduction4334.output := by lin_cert using reduction4334.terms
def map_31_155 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4410 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4410 : InImage map_31_155 image4410 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4410 : Bundle := named_bundle% "RealMapCertificates/relations/basis4410.json"
theorem reductionProof4410 : EqualModuloRelations reduction4410.relations reduction4410.input reduction4410.output := by lin_cert using reduction4410.terms
theorem substitutionProof4410 : IsMapEvaluation generatorImages reduction4410.relations [8,17,206] reduction4410.output := by lin_cert using reduction4410.terms
def map_31_156 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4501 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4501 : InImage map_31_156 image4501 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4501 : Bundle := named_bundle% "RealMapCertificates/relations/basis4501.json"
theorem reductionProof4501 : EqualModuloRelations reduction4501.relations reduction4501.input reduction4501.output := by lin_cert using reduction4501.terms
theorem substitutionProof4501 : IsMapEvaluation generatorImages reduction4501.relations [8,17,17,113] reduction4501.output := by lin_cert using reduction4501.terms
def image4502 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4502 : InImage map_31_156 image4502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4502 : Bundle := named_bundle% "RealMapCertificates/relations/basis4502.json"
theorem reductionProof4502 : EqualModuloRelations reduction4502.relations reduction4502.input reduction4502.output := by lin_cert using reduction4502.terms
theorem substitutionProof4502 : IsMapEvaluation generatorImages reduction4502.relations [8,8,8,8,8,13,32] reduction4502.output := by lin_cert using reduction4502.terms
def image4503 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4503 : InImage map_31_156 image4503 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4503 : Bundle := named_bundle% "RealMapCertificates/relations/basis4503.json"
theorem reductionProof4503 : EqualModuloRelations reduction4503.relations reduction4503.input reduction4503.output := by lin_cert using reduction4503.terms
theorem substitutionProof4503 : IsMapEvaluation generatorImages reduction4503.relations [0,0,0,0,0,0,558] reduction4503.output := by lin_cert using reduction4503.terms
def map_31_157 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4598 : InImage map_31_157 image4598 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4598 : Bundle := named_bundle% "RealMapCertificates/relations/basis4598.json"
theorem reductionProof4598 : EqualModuloRelations reduction4598.relations reduction4598.input reduction4598.output := by lin_cert using reduction4598.terms
theorem substitutionProof4598 : IsMapEvaluation generatorImages reduction4598.relations [5,491] reduction4598.output := by lin_cert using reduction4598.terms
def image4599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4599 : InImage map_31_157 image4599 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4599 : Bundle := named_bundle% "RealMapCertificates/relations/basis4599.json"
theorem reductionProof4599 : EqualModuloRelations reduction4599.relations reduction4599.input reduction4599.output := by lin_cert using reduction4599.terms
theorem substitutionProof4599 : IsMapEvaluation generatorImages reduction4599.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4599.output := by lin_cert using reduction4599.terms
def map_31_158 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4674 : InImage map_31_158 image4674 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4674 : Bundle := named_bundle% "RealMapCertificates/relations/basis4674.json"
theorem reductionProof4674 : EqualModuloRelations reduction4674.relations reduction4674.input reduction4674.output := by lin_cert using reduction4674.terms
theorem substitutionProof4674 : IsMapEvaluation generatorImages reduction4674.relations [8,8,17,149] reduction4674.output := by lin_cert using reduction4674.terms
def image4675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4675 : InImage map_31_158 image4675 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4675 : Bundle := named_bundle% "RealMapCertificates/relations/basis4675.json"
theorem reductionProof4675 : EqualModuloRelations reduction4675.relations reduction4675.input reduction4675.output := by lin_cert using reduction4675.terms
theorem substitutionProof4675 : IsMapEvaluation generatorImages reduction4675.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4675.output := by lin_cert using reduction4675.terms
def map_31_159 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image4772 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4772 : InImage map_31_159 image4772 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4772 : Bundle := named_bundle% "RealMapCertificates/relations/basis4772.json"
theorem reductionProof4772 : EqualModuloRelations reduction4772.relations reduction4772.input reduction4772.output := by lin_cert using reduction4772.terms
theorem substitutionProof4772 : IsMapEvaluation generatorImages reduction4772.relations [8,8,17,154] reduction4772.output := by lin_cert using reduction4772.terms
def image4773 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4773 : InImage map_31_159 image4773 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4773 : Bundle := named_bundle% "RealMapCertificates/relations/basis4773.json"
theorem reductionProof4773 : EqualModuloRelations reduction4773.relations reduction4773.input reduction4773.output := by lin_cert using reduction4773.terms
theorem substitutionProof4773 : IsMapEvaluation generatorImages reduction4773.relations [8,8,8,8,9,13,32] reduction4773.output := by lin_cert using reduction4773.terms
def image4774 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4774 : InImage map_31_159 image4774 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4774 : Bundle := named_bundle% "RealMapCertificates/relations/basis4774.json"
theorem reductionProof4774 : EqualModuloRelations reduction4774.relations reduction4774.input reduction4774.output := by lin_cert using reduction4774.terms
theorem substitutionProof4774 : IsMapEvaluation generatorImages reduction4774.relations [0,623] reduction4774.output := by lin_cert using reduction4774.terms
def map_31_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4855 : InImage map_31_160 image4855 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4855 : Bundle := named_bundle% "RealMapCertificates/relations/basis4855.json"
theorem reductionProof4855 : EqualModuloRelations reduction4855.relations reduction4855.input reduction4855.output := by lin_cert using reduction4855.terms
theorem substitutionProof4855 : IsMapEvaluation generatorImages reduction4855.relations [0,637] reduction4855.output := by lin_cert using reduction4855.terms
def image4856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4856 : InImage map_31_160 image4856 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4856 : Bundle := named_bundle% "RealMapCertificates/relations/basis4856.json"
theorem reductionProof4856 : EqualModuloRelations reduction4856.relations reduction4856.input reduction4856.output := by lin_cert using reduction4856.terms
theorem substitutionProof4856 : IsMapEvaluation generatorImages reduction4856.relations [0,0,0,0,0,64,149] reduction4856.output := by lin_cert using reduction4856.terms
def map_31_161 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4939 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4939 : InImage map_31_161 image4939 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4939 : Bundle := named_bundle% "RealMapCertificates/relations/basis4939.json"
theorem reductionProof4939 : EqualModuloRelations reduction4939.relations reduction4939.input reduction4939.output := by lin_cert using reduction4939.terms
theorem substitutionProof4939 : IsMapEvaluation generatorImages reduction4939.relations [8,8,17,160] reduction4939.output := by lin_cert using reduction4939.terms
def image4940 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4940 : InImage map_31_161 image4940 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4940 : Bundle := named_bundle% "RealMapCertificates/relations/basis4940.json"
theorem reductionProof4940 : EqualModuloRelations reduction4940.relations reduction4940.input reduction4940.output := by lin_cert using reduction4940.terms
theorem substitutionProof4940 : IsMapEvaluation generatorImages reduction4940.relations [0,0,0,0,0,0,598] reduction4940.output := by lin_cert using reduction4940.terms
def map_31_162 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5041 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5041 : InImage map_31_162 image5041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5041 : Bundle := named_bundle% "RealMapCertificates/relations/basis5041.json"
theorem reductionProof5041 : EqualModuloRelations reduction5041.relations reduction5041.input reduction5041.output := by lin_cert using reduction5041.terms
theorem substitutionProof5041 : IsMapEvaluation generatorImages reduction5041.relations [8,8,17,162] reduction5041.output := by lin_cert using reduction5041.terms
def image5042 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5042 : InImage map_31_162 image5042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5042 : Bundle := named_bundle% "RealMapCertificates/relations/basis5042.json"
theorem reductionProof5042 : EqualModuloRelations reduction5042.relations reduction5042.input reduction5042.output := by lin_cert using reduction5042.terms
theorem substitutionProof5042 : IsMapEvaluation generatorImages reduction5042.relations [8,8,8,8,13,13,32] reduction5042.output := by lin_cert using reduction5042.terms
def image5043 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5043 : InImage map_31_162 image5043 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5043 : Bundle := named_bundle% "RealMapCertificates/relations/basis5043.json"
theorem reductionProof5043 : EqualModuloRelations reduction5043.relations reduction5043.input reduction5043.output := by lin_cert using reduction5043.terms
theorem substitutionProof5043 : IsMapEvaluation generatorImages reduction5043.relations [0,8,491] reduction5043.output := by lin_cert using reduction5043.terms
def map_31_163 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image5148 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5148 : InImage map_31_163 image5148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5148 : Bundle := named_bundle% "RealMapCertificates/relations/basis5148.json"
theorem reductionProof5148 : EqualModuloRelations reduction5148.relations reduction5148.input reduction5148.output := by lin_cert using reduction5148.terms
theorem substitutionProof5148 : IsMapEvaluation generatorImages reduction5148.relations [0,664] reduction5148.output := by lin_cert using reduction5148.terms
def map_31_164 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5227 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5227 : InImage map_31_164 image5227 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5227 : Bundle := named_bundle% "RealMapCertificates/relations/basis5227.json"
theorem reductionProof5227 : EqualModuloRelations reduction5227.relations reduction5227.input reduction5227.output := by lin_cert using reduction5227.terms
theorem substitutionProof5227 : IsMapEvaluation generatorImages reduction5227.relations [8,8,16,167] reduction5227.output := by lin_cert using reduction5227.terms
def map_31_165 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image5346 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5346 : InImage map_31_165 image5346 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5346 : Bundle := named_bundle% "RealMapCertificates/relations/basis5346.json"
theorem reductionProof5346 : EqualModuloRelations reduction5346.relations reduction5346.input reduction5346.output := by lin_cert using reduction5346.terms
theorem substitutionProof5346 : IsMapEvaluation generatorImages reduction5346.relations [64,185] reduction5346.output := by lin_cert using reduction5346.terms
def image5347 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5347 : InImage map_31_165 image5347 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5347 : Bundle := named_bundle% "RealMapCertificates/relations/basis5347.json"
theorem reductionProof5347 : EqualModuloRelations reduction5347.relations reduction5347.input reduction5347.output := by lin_cert using reduction5347.terms
theorem substitutionProof5347 : IsMapEvaluation generatorImages reduction5347.relations [8,8,8,42,64] reduction5347.output := by lin_cert using reduction5347.terms
def image5348 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5348 : InImage map_31_165 image5348 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5348 : Bundle := named_bundle% "RealMapCertificates/relations/basis5348.json"
theorem reductionProof5348 : EqualModuloRelations reduction5348.relations reduction5348.input reduction5348.output := by lin_cert using reduction5348.terms
theorem substitutionProof5348 : IsMapEvaluation generatorImages reduction5348.relations [8,8,8,9,13,13,32] reduction5348.output := by lin_cert using reduction5348.terms
def image5349 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5349 : InImage map_31_165 image5349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5349 : Bundle := named_bundle% "RealMapCertificates/relations/basis5349.json"
theorem reductionProof5349 : EqualModuloRelations reduction5349.relations reduction5349.input reduction5349.output := by lin_cert using reduction5349.terms
theorem substitutionProof5349 : IsMapEvaluation generatorImages reduction5349.relations [0,8,516] reduction5349.output := by lin_cert using reduction5349.terms
def map_31_166 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5452 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5452 : InImage map_31_166 image5452 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5452 : Bundle := named_bundle% "RealMapCertificates/relations/basis5452.json"
theorem reductionProof5452 : EqualModuloRelations reduction5452.relations reduction5452.input reduction5452.output := by lin_cert using reduction5452.terms
theorem substitutionProof5452 : IsMapEvaluation generatorImages reduction5452.relations [0,8,529] reduction5452.output := by lin_cert using reduction5452.terms
def image5453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5453 : InImage map_31_166 image5453 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5453 : Bundle := named_bundle% "RealMapCertificates/relations/basis5453.json"
theorem reductionProof5453 : EqualModuloRelations reduction5453.relations reduction5453.input reduction5453.output := by lin_cert using reduction5453.terms
theorem substitutionProof5453 : IsMapEvaluation generatorImages reduction5453.relations [0,0,17,380] reduction5453.output := by lin_cert using reduction5453.terms
def map_31_167 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5554 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5554 : InImage map_31_167 image5554 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5554 : Bundle := named_bundle% "RealMapCertificates/relations/basis5554.json"
theorem reductionProof5554 : EqualModuloRelations reduction5554.relations reduction5554.input reduction5554.output := by lin_cert using reduction5554.terms
theorem substitutionProof5554 : IsMapEvaluation generatorImages reduction5554.relations [8,8,8,232] reduction5554.output := by lin_cert using reduction5554.terms
def map_31_168 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image5665 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5665 : InImage map_31_168 image5665 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5665 : Bundle := named_bundle% "RealMapCertificates/relations/basis5665.json"
theorem reductionProof5665 : EqualModuloRelations reduction5665.relations reduction5665.input reduction5665.output := by lin_cert using reduction5665.terms
theorem substitutionProof5665 : IsMapEvaluation generatorImages reduction5665.relations [8,64,138] reduction5665.output := by lin_cert using reduction5665.terms
def image5666 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5666 : InImage map_31_168 image5666 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5666 : Bundle := named_bundle% "RealMapCertificates/relations/basis5666.json"
theorem reductionProof5666 : EqualModuloRelations reduction5666.relations reduction5666.input reduction5666.output := by lin_cert using reduction5666.terms
theorem substitutionProof5666 : IsMapEvaluation generatorImages reduction5666.relations [8,8,8,23,113] reduction5666.output := by lin_cert using reduction5666.terms
def image5667 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5667 : InImage map_31_168 image5667 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5667 : Bundle := named_bundle% "RealMapCertificates/relations/basis5667.json"
theorem reductionProof5667 : EqualModuloRelations reduction5667.relations reduction5667.input reduction5667.output := by lin_cert using reduction5667.terms
theorem substitutionProof5667 : IsMapEvaluation generatorImages reduction5667.relations [8,8,8,13,13,13,32] reduction5667.output := by lin_cert using reduction5667.terms
def image5668 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5668 : InImage map_31_168 image5668 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5668 : Bundle := named_bundle% "RealMapCertificates/relations/basis5668.json"
theorem reductionProof5668 : EqualModuloRelations reduction5668.relations reduction5668.input reduction5668.output := by lin_cert using reduction5668.terms
theorem substitutionProof5668 : IsMapEvaluation generatorImages reduction5668.relations [0,8,16,260] reduction5668.output := by lin_cert using reduction5668.terms
def map_31_169 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5785 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5785 : InImage map_31_169 image5785 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5785 : Bundle := named_bundle% "RealMapCertificates/relations/basis5785.json"
theorem reductionProof5785 : EqualModuloRelations reduction5785.relations reduction5785.input reduction5785.output := by lin_cert using reduction5785.terms
theorem substitutionProof5785 : IsMapEvaluation generatorImages reduction5785.relations [5,64,149] reduction5785.output := by lin_cert using reduction5785.terms
def image5786 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5786 : InImage map_31_169 image5786 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5786 : Bundle := named_bundle% "RealMapCertificates/relations/basis5786.json"
theorem reductionProof5786 : EqualModuloRelations reduction5786.relations reduction5786.input reduction5786.output := by lin_cert using reduction5786.terms
theorem substitutionProof5786 : IsMapEvaluation generatorImages reduction5786.relations [0,0,8,17,260] reduction5786.output := by lin_cert using reduction5786.terms
def map_31_170 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5881 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5881 : InImage map_31_170 image5881 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5881 : Bundle := named_bundle% "RealMapCertificates/relations/basis5881.json"
theorem reductionProof5881 : EqualModuloRelations reduction5881.relations reduction5881.input reduction5881.output := by lin_cert using reduction5881.terms
theorem substitutionProof5881 : IsMapEvaluation generatorImages reduction5881.relations [8,8,8,8,167] reduction5881.output := by lin_cert using reduction5881.terms
def map_31_171 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6015 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6015 : InImage map_31_171 image6015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6015 : Bundle := named_bundle% "RealMapCertificates/relations/basis6015.json"
theorem reductionProof6015 : EqualModuloRelations reduction6015.relations reduction6015.input reduction6015.output := by lin_cert using reduction6015.terms
theorem substitutionProof6015 : IsMapEvaluation generatorImages reduction6015.relations [8,64,147] reduction6015.output := by lin_cert using reduction6015.terms
def image6016 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6016 : InImage map_31_171 image6016 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6016 : Bundle := named_bundle% "RealMapCertificates/relations/basis6016.json"
theorem reductionProof6016 : EqualModuloRelations reduction6016.relations reduction6016.input reduction6016.output := by lin_cert using reduction6016.terms
theorem substitutionProof6016 : IsMapEvaluation generatorImages reduction6016.relations [8,8,9,13,13,13,32] reduction6016.output := by lin_cert using reduction6016.terms
def image6017 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6017 : InImage map_31_171 image6017 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6017 : Bundle := named_bundle% "RealMapCertificates/relations/basis6017.json"
theorem reductionProof6017 : EqualModuloRelations reduction6017.relations reduction6017.input reduction6017.output := by lin_cert using reduction6017.terms
theorem substitutionProof6017 : IsMapEvaluation generatorImages reduction6017.relations [8,8,8,8,173] reduction6017.output := by lin_cert using reduction6017.terms
def image6018 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6018 : InImage map_31_171 image6018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6018 : Bundle := named_bundle% "RealMapCertificates/relations/basis6018.json"
theorem reductionProof6018 : EqualModuloRelations reduction6018.relations reduction6018.input reduction6018.output := by lin_cert using reduction6018.terms
theorem substitutionProof6018 : IsMapEvaluation generatorImages reduction6018.relations [0,8,8,380] reduction6018.output := by lin_cert using reduction6018.terms
def map_31_172 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6123 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6123 : InImage map_31_172 image6123 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6123 : Bundle := named_bundle% "RealMapCertificates/relations/basis6123.json"
theorem reductionProof6123 : EqualModuloRelations reduction6123.relations reduction6123.input reduction6123.output := by lin_cert using reduction6123.terms
theorem substitutionProof6123 : IsMapEvaluation generatorImages reduction6123.relations [0,0,8,17,278] reduction6123.output := by lin_cert using reduction6123.terms
def map_31_173 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image6220 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6220 : InImage map_31_173 image6220 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6220 : Bundle := named_bundle% "RealMapCertificates/relations/basis6220.json"
theorem reductionProof6220 : EqualModuloRelations reduction6220.relations reduction6220.input reduction6220.output := by lin_cert using reduction6220.terms
theorem substitutionProof6220 : IsMapEvaluation generatorImages reduction6220.relations [796] reduction6220.output := by lin_cert using reduction6220.terms
def image6221 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6221 : InImage map_31_173 image6221 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6221 : Bundle := named_bundle% "RealMapCertificates/relations/basis6221.json"
theorem reductionProof6221 : EqualModuloRelations reduction6221.relations reduction6221.input reduction6221.output := by lin_cert using reduction6221.terms
theorem substitutionProof6221 : IsMapEvaluation generatorImages reduction6221.relations [795] reduction6221.output := by lin_cert using reduction6221.terms
def image6222 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6222 : InImage map_31_173 image6222 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6222 : Bundle := named_bundle% "RealMapCertificates/relations/basis6222.json"
theorem reductionProof6222 : EqualModuloRelations reduction6222.relations reduction6222.input reduction6222.output := by lin_cert using reduction6222.terms
theorem substitutionProof6222 : IsMapEvaluation generatorImages reduction6222.relations [8,8,8,9,167] reduction6222.output := by lin_cert using reduction6222.terms
def map_31_174 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image6343 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6343 : InImage map_31_174 image6343 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6343 : Bundle := named_bundle% "RealMapCertificates/relations/basis6343.json"
theorem reductionProof6343 : EqualModuloRelations reduction6343.relations reduction6343.input reduction6343.output := by lin_cert using reduction6343.terms
theorem substitutionProof6343 : IsMapEvaluation generatorImages reduction6343.relations [8,16,299] reduction6343.output := by lin_cert using reduction6343.terms
def image6344 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6344 : InImage map_31_174 image6344 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6344 : Bundle := named_bundle% "RealMapCertificates/relations/basis6344.json"
theorem reductionProof6344 : EqualModuloRelations reduction6344.relations reduction6344.input reduction6344.output := by lin_cert using reduction6344.terms
theorem substitutionProof6344 : IsMapEvaluation generatorImages reduction6344.relations [8,8,13,13,13,13,32] reduction6344.output := by lin_cert using reduction6344.terms
def image6345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6345 : InImage map_31_174 image6345 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6345 : Bundle := named_bundle% "RealMapCertificates/relations/basis6345.json"
theorem reductionProof6345 : EqualModuloRelations reduction6345.relations reduction6345.input reduction6345.output := by lin_cert using reduction6345.terms
theorem substitutionProof6345 : IsMapEvaluation generatorImages reduction6345.relations [8,8,8,8,186] reduction6345.output := by lin_cert using reduction6345.terms
def image6346 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6346 : InImage map_31_174 image6346 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6346 : Bundle := named_bundle% "RealMapCertificates/relations/basis6346.json"
theorem reductionProof6346 : EqualModuloRelations reduction6346.relations reduction6346.input reduction6346.output := by lin_cert using reduction6346.terms
theorem substitutionProof6346 : IsMapEvaluation generatorImages reduction6346.relations [0,8,8,8,260] reduction6346.output := by lin_cert using reduction6346.terms
def map_31_175 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image6467 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6467 : InImage map_31_175 image6467 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6467 : Bundle := named_bundle% "RealMapCertificates/relations/basis6467.json"
theorem reductionProof6467 : EqualModuloRelations reduction6467.relations reduction6467.input reduction6467.output := by lin_cert using reduction6467.terms
theorem substitutionProof6467 : IsMapEvaluation generatorImages reduction6467.relations [0,0,8,16,292] reduction6467.output := by lin_cert using reduction6467.terms
def map_31_176 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6561 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6561 : InImage map_31_176 image6561 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6561 : Bundle := named_bundle% "RealMapCertificates/relations/basis6561.json"
theorem reductionProof6561 : EqualModuloRelations reduction6561.relations reduction6561.input reduction6561.output := by lin_cert using reduction6561.terms
theorem substitutionProof6561 : IsMapEvaluation generatorImages reduction6561.relations [831] reduction6561.output := by lin_cert using reduction6561.terms
def image6562 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6562 : InImage map_31_176 image6562 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6562 : Bundle := named_bundle% "RealMapCertificates/relations/basis6562.json"
theorem reductionProof6562 : EqualModuloRelations reduction6562.relations reduction6562.input reduction6562.output := by lin_cert using reduction6562.terms
theorem substitutionProof6562 : IsMapEvaluation generatorImages reduction6562.relations [8,8,8,13,167] reduction6562.output := by lin_cert using reduction6562.terms
def map_31_177 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6702 : InImage map_31_177 image6702 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6702 : Bundle := named_bundle% "RealMapCertificates/relations/basis6702.json"
theorem reductionProof6702 : EqualModuloRelations reduction6702.relations reduction6702.input reduction6702.output := by lin_cert using reduction6702.terms
theorem substitutionProof6702 : IsMapEvaluation generatorImages reduction6702.relations [8,9,13,13,13,13,32] reduction6702.output := by lin_cert using reduction6702.terms
def image6703 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6703 : InImage map_31_177 image6703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6703 : Bundle := named_bundle% "RealMapCertificates/relations/basis6703.json"
theorem reductionProof6703 : EqualModuloRelations reduction6703.relations reduction6703.input reduction6703.output := by lin_cert using reduction6703.terms
theorem substitutionProof6703 : IsMapEvaluation generatorImages reduction6703.relations [8,8,64,113] reduction6703.output := by lin_cert using reduction6703.terms
def image6704 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6704 : InImage map_31_177 image6704 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6704 : Bundle := named_bundle% "RealMapCertificates/relations/basis6704.json"
theorem reductionProof6704 : EqualModuloRelations reduction6704.relations reduction6704.input reduction6704.output := by lin_cert using reduction6704.terms
theorem substitutionProof6704 : IsMapEvaluation generatorImages reduction6704.relations [8,8,8,8,23,80] reduction6704.output := by lin_cert using reduction6704.terms
def map_31_179 : Matrix 1 5 := fun i j => ([false,false,false,false,true] : List Bool)[i.val*5+j.val]!
def image6922 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6922 : InImage map_31_179 image6922 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6922 : Bundle := named_bundle% "RealMapCertificates/relations/basis6922.json"
theorem reductionProof6922 : EqualModuloRelations reduction6922.relations reduction6922.input reduction6922.output := by lin_cert using reduction6922.terms
theorem substitutionProof6922 : IsMapEvaluation generatorImages reduction6922.relations [64,246] reduction6922.output := by lin_cert using reduction6922.terms
def image6923 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6923 : InImage map_31_179 image6923 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6923 : Bundle := named_bundle% "RealMapCertificates/relations/basis6923.json"
theorem reductionProof6923 : EqualModuloRelations reduction6923.relations reduction6923.input reduction6923.output := by lin_cert using reduction6923.terms
theorem substitutionProof6923 : IsMapEvaluation generatorImages reduction6923.relations [60,260] reduction6923.output := by lin_cert using reduction6923.terms
def image6924 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6924 : InImage map_31_179 image6924 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6924 : Bundle := named_bundle% "RealMapCertificates/relations/basis6924.json"
theorem reductionProof6924 : EqualModuloRelations reduction6924.relations reduction6924.input reduction6924.output := by lin_cert using reduction6924.terms
theorem substitutionProof6924 : IsMapEvaluation generatorImages reduction6924.relations [59,260] reduction6924.output := by lin_cert using reduction6924.terms
def image6925 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6925 : InImage map_31_179 image6925 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6925 : Bundle := named_bundle% "RealMapCertificates/relations/basis6925.json"
theorem reductionProof6925 : EqualModuloRelations reduction6925.relations reduction6925.input reduction6925.output := by lin_cert using reduction6925.terms
theorem substitutionProof6925 : IsMapEvaluation generatorImages reduction6925.relations [8,653] reduction6925.output := by lin_cert using reduction6925.terms
def image6926 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6926 : InImage map_31_179 image6926 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6926 : Bundle := named_bundle% "RealMapCertificates/relations/basis6926.json"
theorem reductionProof6926 : EqualModuloRelations reduction6926.relations reduction6926.input reduction6926.output := by lin_cert using reduction6926.terms
theorem substitutionProof6926 : IsMapEvaluation generatorImages reduction6926.relations [8,8,9,13,167] reduction6926.output := by lin_cert using reduction6926.terms
def map_31_180 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image7066 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7066 : InImage map_31_180 image7066 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7066 : Bundle := named_bundle% "RealMapCertificates/relations/basis7066.json"
theorem reductionProof7066 : EqualModuloRelations reduction7066.relations reduction7066.input reduction7066.output := by lin_cert using reduction7066.terms
theorem substitutionProof7066 : IsMapEvaluation generatorImages reduction7066.relations [8,13,13,13,13,13,32] reduction7066.output := by lin_cert using reduction7066.terms
def image7067 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7067 : InImage map_31_180 image7067 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7067 : Bundle := named_bundle% "RealMapCertificates/relations/basis7067.json"
theorem reductionProof7067 : EqualModuloRelations reduction7067.relations reduction7067.input reduction7067.output := by lin_cert using reduction7067.terms
theorem substitutionProof7067 : IsMapEvaluation generatorImages reduction7067.relations [8,8,8,299] reduction7067.output := by lin_cert using reduction7067.terms
def image7068 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7068 : InImage map_31_180 image7068 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7068 : Bundle := named_bundle% "RealMapCertificates/relations/basis7068.json"
theorem reductionProof7068 : EqualModuloRelations reduction7068.relations reduction7068.input reduction7068.output := by lin_cert using reduction7068.terms
theorem substitutionProof7068 : IsMapEvaluation generatorImages reduction7068.relations [8,8,8,9,23,80] reduction7068.output := by lin_cert using reduction7068.terms
def image7069 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7069 : InImage map_31_180 image7069 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7069 : Bundle := named_bundle% "RealMapCertificates/relations/basis7069.json"
theorem reductionProof7069 : EqualModuloRelations reduction7069.relations reduction7069.input reduction7069.output := by lin_cert using reduction7069.terms
theorem substitutionProof7069 : IsMapEvaluation generatorImages reduction7069.relations [0,0,862] reduction7069.output := by lin_cert using reduction7069.terms
def map_31_182 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image7283 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7283 : InImage map_31_182 image7283 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7283 : Bundle := named_bundle% "RealMapCertificates/relations/basis7283.json"
theorem reductionProof7283 : EqualModuloRelations reduction7283.relations reduction7283.input reduction7283.output := by lin_cert using reduction7283.terms
theorem substitutionProof7283 : IsMapEvaluation generatorImages reduction7283.relations [42,380] reduction7283.output := by lin_cert using reduction7283.terms
def image7284 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7284 : InImage map_31_182 image7284 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7284 : Bundle := named_bundle% "RealMapCertificates/relations/basis7284.json"
theorem reductionProof7284 : EqualModuloRelations reduction7284.relations reduction7284.input reduction7284.output := by lin_cert using reduction7284.terms
theorem substitutionProof7284 : IsMapEvaluation generatorImages reduction7284.relations [8,689] reduction7284.output := by lin_cert using reduction7284.terms
def image7285 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7285 : InImage map_31_182 image7285 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7285 : Bundle := named_bundle% "RealMapCertificates/relations/basis7285.json"
theorem reductionProof7285 : EqualModuloRelations reduction7285.relations reduction7285.input reduction7285.output := by lin_cert using reduction7285.terms
theorem substitutionProof7285 : IsMapEvaluation generatorImages reduction7285.relations [8,8,13,13,167] reduction7285.output := by lin_cert using reduction7285.terms
def image7286 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7286 : InImage map_31_182 image7286 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7286 : Bundle := named_bundle% "RealMapCertificates/relations/basis7286.json"
theorem reductionProof7286 : EqualModuloRelations reduction7286.relations reduction7286.input reduction7286.output := by lin_cert using reduction7286.terms
theorem substitutionProof7286 : IsMapEvaluation generatorImages reduction7286.relations [0,889] reduction7286.output := by lin_cert using reduction7286.terms
def map_31_183 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7434 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7434 : InImage map_31_183 image7434 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7434 : Bundle := named_bundle% "RealMapCertificates/relations/basis7434.json"
theorem reductionProof7434 : EqualModuloRelations reduction7434.relations reduction7434.input reduction7434.output := by lin_cert using reduction7434.terms
theorem substitutionProof7434 : IsMapEvaluation generatorImages reduction7434.relations [9,13,13,13,13,13,32] reduction7434.output := by lin_cert using reduction7434.terms
def image7435 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7435 : InImage map_31_183 image7435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7435 : Bundle := named_bundle% "RealMapCertificates/relations/basis7435.json"
theorem reductionProof7435 : EqualModuloRelations reduction7435.relations reduction7435.input reduction7435.output := by lin_cert using reduction7435.terms
theorem substitutionProof7435 : IsMapEvaluation generatorImages reduction7435.relations [8,8,8,327] reduction7435.output := by lin_cert using reduction7435.terms
def image7436 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7436 : InImage map_31_183 image7436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7436 : Bundle := named_bundle% "RealMapCertificates/relations/basis7436.json"
theorem reductionProof7436 : EqualModuloRelations reduction7436.relations reduction7436.input reduction7436.output := by lin_cert using reduction7436.terms
theorem substitutionProof7436 : IsMapEvaluation generatorImages reduction7436.relations [8,8,8,13,23,80] reduction7436.output := by lin_cert using reduction7436.terms
def map_31_184 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7536 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7536 : InImage map_31_184 image7536 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7536 : Bundle := named_bundle% "RealMapCertificates/relations/basis7536.json"
theorem reductionProof7536 : EqualModuloRelations reduction7536.relations reduction7536.input reduction7536.output := by lin_cert using reduction7536.terms
theorem substitutionProof7536 : IsMapEvaluation generatorImages reduction7536.relations [927] reduction7536.output := by lin_cert using reduction7536.terms
def map_31_185 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image7648 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7648 : InImage map_31_185 image7648 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7648 : Bundle := named_bundle% "RealMapCertificates/relations/basis7648.json"
theorem reductionProof7648 : EqualModuloRelations reduction7648.relations reduction7648.input reduction7648.output := by lin_cert using reduction7648.terms
theorem substitutionProof7648 : IsMapEvaluation generatorImages reduction7648.relations [8,42,260] reduction7648.output := by lin_cert using reduction7648.terms
def image7649 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7649 : InImage map_31_185 image7649 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7649 : Bundle := named_bundle% "RealMapCertificates/relations/basis7649.json"
theorem reductionProof7649 : EqualModuloRelations reduction7649.relations reduction7649.input reduction7649.output := by lin_cert using reduction7649.terms
theorem substitutionProof7649 : IsMapEvaluation generatorImages reduction7649.relations [8,9,13,13,167] reduction7649.output := by lin_cert using reduction7649.terms
def image7650 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7650 : InImage map_31_185 image7650 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7650 : Bundle := named_bundle% "RealMapCertificates/relations/basis7650.json"
theorem reductionProof7650 : EqualModuloRelations reduction7650.relations reduction7650.input reduction7650.output := by lin_cert using reduction7650.terms
theorem substitutionProof7650 : IsMapEvaluation generatorImages reduction7650.relations [8,8,549] reduction7650.output := by lin_cert using reduction7650.terms
def image7651 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7651 : InImage map_31_185 image7651 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7651 : Bundle := named_bundle% "RealMapCertificates/relations/basis7651.json"
theorem reductionProof7651 : EqualModuloRelations reduction7651.relations reduction7651.input reduction7651.output := by lin_cert using reduction7651.terms
theorem substitutionProof7651 : IsMapEvaluation generatorImages reduction7651.relations [0,0,0,64,260] reduction7651.output := by lin_cert using reduction7651.terms
def map_31_186 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image7790 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7790 : InImage map_31_186 image7790 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7790 : Bundle := named_bundle% "RealMapCertificates/relations/basis7790.json"
theorem reductionProof7790 : EqualModuloRelations reduction7790.relations reduction7790.input reduction7790.output := by lin_cert using reduction7790.terms
theorem substitutionProof7790 : IsMapEvaluation generatorImages reduction7790.relations [13,13,13,13,13,13,32] reduction7790.output := by lin_cert using reduction7790.terms
def image7791 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7791 : InImage map_31_186 image7791 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7791 : Bundle := named_bundle% "RealMapCertificates/relations/basis7791.json"
theorem reductionProof7791 : EqualModuloRelations reduction7791.relations reduction7791.input reduction7791.output := by lin_cert using reduction7791.terms
theorem substitutionProof7791 : IsMapEvaluation generatorImages reduction7791.relations [8,8,9,13,23,80] reduction7791.output := by lin_cert using reduction7791.terms
def image7792 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7792 : InImage map_31_186 image7792 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7792 : Bundle := named_bundle% "RealMapCertificates/relations/basis7792.json"
theorem reductionProof7792 : EqualModuloRelations reduction7792.relations reduction7792.input reduction7792.output := by lin_cert using reduction7792.terms
theorem substitutionProof7792 : IsMapEvaluation generatorImages reduction7792.relations [8,8,8,16,188] reduction7792.output := by lin_cert using reduction7792.terms
def image7793 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7793 : InImage map_31_186 image7793 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7793 : Bundle := named_bundle% "RealMapCertificates/relations/basis7793.json"
theorem reductionProof7793 : EqualModuloRelations reduction7793.relations reduction7793.input reduction7793.output := by lin_cert using reduction7793.terms
theorem substitutionProof7793 : IsMapEvaluation generatorImages reduction7793.relations [0,0,64,274] reduction7793.output := by lin_cert using reduction7793.terms
def image7794 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7794 : InImage map_31_186 image7794 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7794 : Bundle := named_bundle% "RealMapCertificates/relations/basis7794.json"
theorem reductionProof7794 : EqualModuloRelations reduction7794.relations reduction7794.input reduction7794.output := by lin_cert using reduction7794.terms
theorem substitutionProof7794 : IsMapEvaluation generatorImages reduction7794.relations [0,0,0,0,897] reduction7794.output := by lin_cert using reduction7794.terms
def map_31_187 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7896 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7896 : InImage map_31_187 image7896 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7896 : Bundle := named_bundle% "RealMapCertificates/relations/basis7896.json"
theorem reductionProof7896 : EqualModuloRelations reduction7896.relations reduction7896.input reduction7896.output := by lin_cert using reduction7896.terms
theorem substitutionProof7896 : IsMapEvaluation generatorImages reduction7896.relations [962] reduction7896.output := by lin_cert using reduction7896.terms
def image7897 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7897 : InImage map_31_187 image7897 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7897 : Bundle := named_bundle% "RealMapCertificates/relations/basis7897.json"
theorem reductionProof7897 : EqualModuloRelations reduction7897.relations reduction7897.input reduction7897.output := by lin_cert using reduction7897.terms
theorem substitutionProof7897 : IsMapEvaluation generatorImages reduction7897.relations [0,0,0,0,921] reduction7897.output := by lin_cert using reduction7897.terms
def image7898 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7898 : InImage map_31_187 image7898 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7898 : Bundle := named_bundle% "RealMapCertificates/relations/basis7898.json"
theorem reductionProof7898 : EqualModuloRelations reduction7898.relations reduction7898.input reduction7898.output := by lin_cert using reduction7898.terms
theorem substitutionProof7898 : IsMapEvaluation generatorImages reduction7898.relations [0,0,0,0,919] reduction7898.output := by lin_cert using reduction7898.terms
end RealMapCertificates
