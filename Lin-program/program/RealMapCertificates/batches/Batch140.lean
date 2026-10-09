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
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 24 => []
  | 42 => [[5,5,7]]
  | 64 => []
  | 67 => []
  | 80 => []
  | 95 => []
  | 113 => [[0,8,12]]
  | 135 => [[1,4,4,4,4,4,4,4]]
  | 138 => [[0,4,6,12]]
  | 150 => []
  | 167 => [[7,9,12]]
  | 188 => []
  | 209 => []
  | 255 => []
  | 260 => []
  | 266 => []
  | 278 => []
  | 292 => []
  | 293 => []
  | 299 => []
  | 301 => []
  | 324 => []
  | 347 => []
  | 349 => []
  | 350 => []
  | 383 => []
  | 384 => []
  | 420 => []
  | 423 => []
  | 455 => []
  | 518 => []
  | 537 => []
  | 574 => []
  | 602 => []
  | 625 => []
  | 627 => []
  | 638 => []
  | 642 => [[7,10,12,12]]
  | 655 => []
  | 668 => []
  | 779 => []
  | 813 => []
  | 821 => [[5,7,10,12,12]]
  | 832 => []
  | 864 => [[7,7,10,12,12]]
  | 874 => []
  | 897 => []
  | 898 => []
  | 920 => []
  | 940 => []
  | 957 => []
  | 963 => []
  | 974 => []
  | 976 => []
  | 1035 => []
  | 1051 => []
  | 1084 => []
  | 1094 => []
  | 1103 => []
  | 1105 => []
  | 1145 => []
  | 1169 => []
  | 1220 => []
  | 1303 => []
  | 1366 => [[7,9,12,12,12]]
  | 1367 => []
  | 1383 => []
  | 1384 => []
  | 1385 => []
  | 1402 => []
  | 1440 => []
  | _ => []
def map_31_188 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image7992 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7992 : InImage map_31_188 image7992 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7992 : Bundle := named_bundle% "RealMapCertificates/relations/basis7992.json"
theorem reductionProof7992 : EqualModuloRelations reduction7992.relations reduction7992.input reduction7992.output := by lin_cert using reduction7992.terms
theorem substitutionProof7992 : IsMapEvaluation generatorImages reduction7992.relations [8,42,278] reduction7992.output := by lin_cert using reduction7992.terms
def image7993 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7993 : InImage map_31_188 image7993 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7993 : Bundle := named_bundle% "RealMapCertificates/relations/basis7993.json"
theorem reductionProof7993 : EqualModuloRelations reduction7993.relations reduction7993.input reduction7993.output := by lin_cert using reduction7993.terms
theorem substitutionProof7993 : IsMapEvaluation generatorImages reduction7993.relations [8,13,13,13,167] reduction7993.output := by lin_cert using reduction7993.terms
def image7994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7994 : InImage map_31_188 image7994 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7994 : Bundle := named_bundle% "RealMapCertificates/relations/basis7994.json"
theorem reductionProof7994 : EqualModuloRelations reduction7994.relations reduction7994.input reduction7994.output := by lin_cert using reduction7994.terms
theorem substitutionProof7994 : IsMapEvaluation generatorImages reduction7994.relations [8,8,574] reduction7994.output := by lin_cert using reduction7994.terms
def image7995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7995 : InImage map_31_188 image7995 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7995 : Bundle := named_bundle% "RealMapCertificates/relations/basis7995.json"
theorem reductionProof7995 : EqualModuloRelations reduction7995.relations reduction7995.input reduction7995.output := by lin_cert using reduction7995.terms
theorem substitutionProof7995 : IsMapEvaluation generatorImages reduction7995.relations [0,0,0,64,278] reduction7995.output := by lin_cert using reduction7995.terms
def image7996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7996 : InImage map_31_188 image7996 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7996 : Bundle := named_bundle% "RealMapCertificates/relations/basis7996.json"
theorem reductionProof7996 : EqualModuloRelations reduction7996.relations reduction7996.input reduction7996.output := by lin_cert using reduction7996.terms
theorem substitutionProof7996 : IsMapEvaluation generatorImages reduction7996.relations [0,0,0,0,0,0,898] reduction7996.output := by lin_cert using reduction7996.terms
def map_31_189 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8147 : InImage map_31_189 image8147 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8147 : Bundle := named_bundle% "RealMapCertificates/relations/basis8147.json"
theorem reductionProof8147 : EqualModuloRelations reduction8147.relations reduction8147.input reduction8147.output := by lin_cert using reduction8147.terms
theorem substitutionProof8147 : IsMapEvaluation generatorImages reduction8147.relations [8,8,13,13,23,80] reduction8147.output := by lin_cert using reduction8147.terms
def image8148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8148 : InImage map_31_189 image8148 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8148 : Bundle := named_bundle% "RealMapCertificates/relations/basis8148.json"
theorem reductionProof8148 : EqualModuloRelations reduction8148.relations reduction8148.input reduction8148.output := by lin_cert using reduction8148.terms
theorem substitutionProof8148 : IsMapEvaluation generatorImages reduction8148.relations [8,8,8,8,255] reduction8148.output := by lin_cert using reduction8148.terms
def map_31_190 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8248 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8248 : InImage map_31_190 image8248 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8248 : Bundle := named_bundle% "RealMapCertificates/relations/basis8248.json"
theorem reductionProof8248 : EqualModuloRelations reduction8248.relations reduction8248.input reduction8248.output := by lin_cert using reduction8248.terms
theorem substitutionProof8248 : IsMapEvaluation generatorImages reduction8248.relations [17,642] reduction8248.output := by lin_cert using reduction8248.terms
def image8249 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8249 : InImage map_31_190 image8249 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8249 : Bundle := named_bundle% "RealMapCertificates/relations/basis8249.json"
theorem reductionProof8249 : EqualModuloRelations reduction8249.relations reduction8249.input reduction8249.output := by lin_cert using reduction8249.terms
theorem substitutionProof8249 : IsMapEvaluation generatorImages reduction8249.relations [0,64,64,64] reduction8249.output := by lin_cert using reduction8249.terms
def map_31_191 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8371 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8371 : InImage map_31_191 image8371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8371 : Bundle := named_bundle% "RealMapCertificates/relations/basis8371.json"
theorem reductionProof8371 : EqualModuloRelations reduction8371.relations reduction8371.input reduction8371.output := by lin_cert using reduction8371.terms
theorem substitutionProof8371 : IsMapEvaluation generatorImages reduction8371.relations [9,13,13,13,167] reduction8371.output := by lin_cert using reduction8371.terms
def image8372 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8372 : InImage map_31_191 image8372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8372 : Bundle := named_bundle% "RealMapCertificates/relations/basis8372.json"
theorem reductionProof8372 : EqualModuloRelations reduction8372.relations reduction8372.input reduction8372.output := by lin_cert using reduction8372.terms
theorem substitutionProof8372 : IsMapEvaluation generatorImages reduction8372.relations [8,8,602] reduction8372.output := by lin_cert using reduction8372.terms
def image8373 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8373 : InImage map_31_191 image8373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8373 : Bundle := named_bundle% "RealMapCertificates/relations/basis8373.json"
theorem reductionProof8373 : EqualModuloRelations reduction8373.relations reduction8373.input reduction8373.output := by lin_cert using reduction8373.terms
theorem substitutionProof8373 : IsMapEvaluation generatorImages reduction8373.relations [8,8,8,420] reduction8373.output := by lin_cert using reduction8373.terms
def image8374 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8374 : InImage map_31_191 image8374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8374 : Bundle := named_bundle% "RealMapCertificates/relations/basis8374.json"
theorem reductionProof8374 : EqualModuloRelations reduction8374.relations reduction8374.input reduction8374.output := by lin_cert using reduction8374.terms
theorem substitutionProof8374 : IsMapEvaluation generatorImages reduction8374.relations [1,64,64,64] reduction8374.output := by lin_cert using reduction8374.terms
def image8375 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8375 : InImage map_31_191 image8375 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8375 : Bundle := named_bundle% "RealMapCertificates/relations/basis8375.json"
theorem reductionProof8375 : EqualModuloRelations reduction8375.relations reduction8375.input reduction8375.output := by lin_cert using reduction8375.terms
theorem substitutionProof8375 : IsMapEvaluation generatorImages reduction8375.relations [0,0,64,299] reduction8375.output := by lin_cert using reduction8375.terms
def map_31_192 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image8516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8516 : InImage map_31_192 image8516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8516 : Bundle := named_bundle% "RealMapCertificates/relations/basis8516.json"
theorem reductionProof8516 : EqualModuloRelations reduction8516.relations reduction8516.input reduction8516.output := by lin_cert using reduction8516.terms
theorem substitutionProof8516 : IsMapEvaluation generatorImages reduction8516.relations [13,13,13,13,13,23,24] reduction8516.output := by lin_cert using reduction8516.terms
def image8517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8517 : InImage map_31_192 image8517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8517 : Bundle := named_bundle% "RealMapCertificates/relations/basis8517.json"
theorem reductionProof8517 : EqualModuloRelations reduction8517.relations reduction8517.input reduction8517.output := by lin_cert using reduction8517.terms
theorem substitutionProof8517 : IsMapEvaluation generatorImages reduction8517.relations [8,9,13,13,23,80] reduction8517.output := by lin_cert using reduction8517.terms
def image8518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8518 : InImage map_31_192 image8518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8518 : Bundle := named_bundle% "RealMapCertificates/relations/basis8518.json"
theorem reductionProof8518 : EqualModuloRelations reduction8518.relations reduction8518.input reduction8518.output := by lin_cert using reduction8518.terms
theorem substitutionProof8518 : IsMapEvaluation generatorImages reduction8518.relations [8,8,8,8,8,188] reduction8518.output := by lin_cert using reduction8518.terms
def image8519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8519 : InImage map_31_192 image8519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8519 : Bundle := named_bundle% "RealMapCertificates/relations/basis8519.json"
theorem reductionProof8519 : EqualModuloRelations reduction8519.relations reduction8519.input reduction8519.output := by lin_cert using reduction8519.terms
theorem substitutionProof8519 : IsMapEvaluation generatorImages reduction8519.relations [0,0,0,0,0,963] reduction8519.output := by lin_cert using reduction8519.terms
def map_31_193 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image8630 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8630 : InImage map_31_193 image8630 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8630 : Bundle := named_bundle% "RealMapCertificates/relations/basis8630.json"
theorem reductionProof8630 : EqualModuloRelations reduction8630.relations reduction8630.input reduction8630.output := by lin_cert using reduction8630.terms
theorem substitutionProof8630 : IsMapEvaluation generatorImages reduction8630.relations [8,821] reduction8630.output := by lin_cert using reduction8630.terms
def image8631 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8631 : InImage map_31_193 image8631 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8631 : Bundle := named_bundle% "RealMapCertificates/relations/basis8631.json"
theorem reductionProof8631 : EqualModuloRelations reduction8631.relations reduction8631.input reduction8631.output := by lin_cert using reduction8631.terms
theorem substitutionProof8631 : IsMapEvaluation generatorImages reduction8631.relations [0,0,0,0,64,301] reduction8631.output := by lin_cert using reduction8631.terms
def image8632 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8632 : InImage map_31_193 image8632 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8632 : Bundle := named_bundle% "RealMapCertificates/relations/basis8632.json"
theorem reductionProof8632 : EqualModuloRelations reduction8632.relations reduction8632.input reduction8632.output := by lin_cert using reduction8632.terms
theorem substitutionProof8632 : IsMapEvaluation generatorImages reduction8632.relations [0,0,0,0,0,974] reduction8632.output := by lin_cert using reduction8632.terms
def map_31_194 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image8752 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8752 : InImage map_31_194 image8752 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8752 : Bundle := named_bundle% "RealMapCertificates/relations/basis8752.json"
theorem reductionProof8752 : EqualModuloRelations reduction8752.relations reduction8752.input reduction8752.output := by lin_cert using reduction8752.terms
theorem substitutionProof8752 : IsMapEvaluation generatorImages reduction8752.relations [13,13,13,13,167] reduction8752.output := by lin_cert using reduction8752.terms
def image8753 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8753 : InImage map_31_194 image8753 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8753 : Bundle := named_bundle% "RealMapCertificates/relations/basis8753.json"
theorem reductionProof8753 : EqualModuloRelations reduction8753.relations reduction8753.input reduction8753.output := by lin_cert using reduction8753.terms
theorem substitutionProof8753 : IsMapEvaluation generatorImages reduction8753.relations [8,8,625] reduction8753.output := by lin_cert using reduction8753.terms
def image8754 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8754 : InImage map_31_194 image8754 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8754 : Bundle := named_bundle% "RealMapCertificates/relations/basis8754.json"
theorem reductionProof8754 : EqualModuloRelations reduction8754.relations reduction8754.input reduction8754.output := by lin_cert using reduction8754.terms
theorem substitutionProof8754 : IsMapEvaluation generatorImages reduction8754.relations [8,8,9,420] reduction8754.output := by lin_cert using reduction8754.terms
def image8755 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8755 : InImage map_31_194 image8755 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8755 : Bundle := named_bundle% "RealMapCertificates/relations/basis8755.json"
theorem reductionProof8755 : EqualModuloRelations reduction8755.relations reduction8755.input reduction8755.output := by lin_cert using reduction8755.terms
theorem substitutionProof8755 : IsMapEvaluation generatorImages reduction8755.relations [0,0,0,0,0,0,976] reduction8755.output := by lin_cert using reduction8755.terms
def map_31_195 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image8922 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8922 : InImage map_31_195 image8922 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8922 : Bundle := named_bundle% "RealMapCertificates/relations/basis8922.json"
theorem reductionProof8922 : EqualModuloRelations reduction8922.relations reduction8922.input reduction8922.output := by lin_cert using reduction8922.terms
theorem substitutionProof8922 : IsMapEvaluation generatorImages reduction8922.relations [1094] reduction8922.output := by lin_cert using reduction8922.terms
def image8923 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8923 : InImage map_31_195 image8923 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8923 : Bundle := named_bundle% "RealMapCertificates/relations/basis8923.json"
theorem reductionProof8923 : EqualModuloRelations reduction8923.relations reduction8923.input reduction8923.output := by lin_cert using reduction8923.terms
theorem substitutionProof8923 : IsMapEvaluation generatorImages reduction8923.relations [8,13,13,13,23,80] reduction8923.output := by lin_cert using reduction8923.terms
def image8924 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8924 : InImage map_31_195 image8924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8924 : Bundle := named_bundle% "RealMapCertificates/relations/basis8924.json"
theorem reductionProof8924 : EqualModuloRelations reduction8924.relations reduction8924.input reduction8924.output := by lin_cert using reduction8924.terms
theorem substitutionProof8924 : IsMapEvaluation generatorImages reduction8924.relations [8,8,8,8,9,188] reduction8924.output := by lin_cert using reduction8924.terms
def map_31_196 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9028 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9028 : InImage map_31_196 image9028 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9028 : Bundle := named_bundle% "RealMapCertificates/relations/basis9028.json"
theorem reductionProof9028 : EqualModuloRelations reduction9028.relations reduction9028.input reduction9028.output := by lin_cert using reduction9028.terms
theorem substitutionProof9028 : IsMapEvaluation generatorImages reduction9028.relations [8,864] reduction9028.output := by lin_cert using reduction9028.terms
def map_31_197 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image9178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9178 : InImage map_31_197 image9178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9178 : Bundle := named_bundle% "RealMapCertificates/relations/basis9178.json"
theorem reductionProof9178 : EqualModuloRelations reduction9178.relations reduction9178.input reduction9178.output := by lin_cert using reduction9178.terms
theorem substitutionProof9178 : IsMapEvaluation generatorImages reduction9178.relations [113,260] reduction9178.output := by lin_cert using reduction9178.terms
def image9179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9179 : InImage map_31_197 image9179 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9179 : Bundle := named_bundle% "RealMapCertificates/relations/basis9179.json"
theorem reductionProof9179 : EqualModuloRelations reduction9179.relations reduction9179.input reduction9179.output := by lin_cert using reduction9179.terms
theorem substitutionProof9179 : IsMapEvaluation generatorImages reduction9179.relations [8,8,23,292] reduction9179.output := by lin_cert using reduction9179.terms
def image9180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9180 : InImage map_31_197 image9180 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9180 : Bundle := named_bundle% "RealMapCertificates/relations/basis9180.json"
theorem reductionProof9180 : EqualModuloRelations reduction9180.relations reduction9180.input reduction9180.output := by lin_cert using reduction9180.terms
theorem substitutionProof9180 : IsMapEvaluation generatorImages reduction9180.relations [8,8,8,8,293] reduction9180.output := by lin_cert using reduction9180.terms
def image9181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9181 : InImage map_31_197 image9181 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9181 : Bundle := named_bundle% "RealMapCertificates/relations/basis9181.json"
theorem reductionProof9181 : EqualModuloRelations reduction9181.relations reduction9181.input reduction9181.output := by lin_cert using reduction9181.terms
theorem substitutionProof9181 : IsMapEvaluation generatorImages reduction9181.relations [0,0,0,64,347] reduction9181.output := by lin_cert using reduction9181.terms
def map_31_198 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image9363 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9363 : InImage map_31_198 image9363 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9363 : Bundle := named_bundle% "RealMapCertificates/relations/basis9363.json"
theorem reductionProof9363 : EqualModuloRelations reduction9363.relations reduction9363.input reduction9363.output := by lin_cert using reduction9363.terms
theorem substitutionProof9363 : IsMapEvaluation generatorImages reduction9363.relations [1145] reduction9363.output := by lin_cert using reduction9363.terms
def image9364 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9364 : InImage map_31_198 image9364 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9364 : Bundle := named_bundle% "RealMapCertificates/relations/basis9364.json"
theorem reductionProof9364 : EqualModuloRelations reduction9364.relations reduction9364.input reduction9364.output := by lin_cert using reduction9364.terms
theorem substitutionProof9364 : IsMapEvaluation generatorImages reduction9364.relations [9,13,13,13,23,80] reduction9364.output := by lin_cert using reduction9364.terms
def image9365 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9365 : InImage map_31_198 image9365 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9365 : Bundle := named_bundle% "RealMapCertificates/relations/basis9365.json"
theorem reductionProof9365 : EqualModuloRelations reduction9365.relations reduction9365.input reduction9365.output := by lin_cert using reduction9365.terms
theorem substitutionProof9365 : IsMapEvaluation generatorImages reduction9365.relations [8,8,8,8,13,188] reduction9365.output := by lin_cert using reduction9365.terms
def image9366 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9366 : InImage map_31_198 image9366 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9366 : Bundle := named_bundle% "RealMapCertificates/relations/basis9366.json"
theorem reductionProof9366 : EqualModuloRelations reduction9366.relations reduction9366.input reduction9366.output := by lin_cert using reduction9366.terms
theorem substitutionProof9366 : IsMapEvaluation generatorImages reduction9366.relations [0,0,1103] reduction9366.output := by lin_cert using reduction9366.terms
def image9367 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9367 : InImage map_31_198 image9367 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9367 : Bundle := named_bundle% "RealMapCertificates/relations/basis9367.json"
theorem reductionProof9367 : EqualModuloRelations reduction9367.relations reduction9367.input reduction9367.output := by lin_cert using reduction9367.terms
theorem substitutionProof9367 : IsMapEvaluation generatorImages reduction9367.relations [0,0,0,0,138,209] reduction9367.output := by lin_cert using reduction9367.terms
def map_31_199 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9502 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9502 : InImage map_31_199 image9502 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9502 : Bundle := named_bundle% "RealMapCertificates/relations/basis9502.json"
theorem reductionProof9502 : EqualModuloRelations reduction9502.relations reduction9502.input reduction9502.output := by lin_cert using reduction9502.terms
theorem substitutionProof9502 : IsMapEvaluation generatorImages reduction9502.relations [9,864] reduction9502.output := by lin_cert using reduction9502.terms
def map_31_200 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image9647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9647 : InImage map_31_200 image9647 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction9647 : Bundle := named_bundle% "RealMapCertificates/relations/basis9647.json"
theorem reductionProof9647 : EqualModuloRelations reduction9647.relations reduction9647.input reduction9647.output := by lin_cert using reduction9647.terms
theorem substitutionProof9647 : IsMapEvaluation generatorImages reduction9647.relations [13,13,13,23,150] reduction9647.output := by lin_cert using reduction9647.terms
def image9648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9648 : InImage map_31_200 image9648 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction9648 : Bundle := named_bundle% "RealMapCertificates/relations/basis9648.json"
theorem reductionProof9648 : EqualModuloRelations reduction9648.relations reduction9648.input reduction9648.output := by lin_cert using reduction9648.terms
theorem substitutionProof9648 : IsMapEvaluation generatorImages reduction9648.relations [8,897] reduction9648.output := by lin_cert using reduction9648.terms
def image9649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9649 : InImage map_31_200 image9649 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction9649 : Bundle := named_bundle% "RealMapCertificates/relations/basis9649.json"
theorem reductionProof9649 : EqualModuloRelations reduction9649.relations reduction9649.input reduction9649.output := by lin_cert using reduction9649.terms
theorem substitutionProof9649 : IsMapEvaluation generatorImages reduction9649.relations [8,9,23,292] reduction9649.output := by lin_cert using reduction9649.terms
def image9650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9650 : InImage map_31_200 image9650 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction9650 : Bundle := named_bundle% "RealMapCertificates/relations/basis9650.json"
theorem reductionProof9650 : EqualModuloRelations reduction9650.relations reduction9650.input reduction9650.output := by lin_cert using reduction9650.terms
theorem substitutionProof9650 : IsMapEvaluation generatorImages reduction9650.relations [8,8,8,9,293] reduction9650.output := by lin_cert using reduction9650.terms
def image9651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9651 : InImage map_31_200 image9651 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction9651 : Bundle := named_bundle% "RealMapCertificates/relations/basis9651.json"
theorem reductionProof9651 : EqualModuloRelations reduction9651.relations reduction9651.input reduction9651.output := by lin_cert using reduction9651.terms
theorem substitutionProof9651 : IsMapEvaluation generatorImages reduction9651.relations [0,0,0,0,0,0,64,349] reduction9651.output := by lin_cert using reduction9651.terms
def map_31_201 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9847 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9847 : InImage map_31_201 image9847 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9847 : Bundle := named_bundle% "RealMapCertificates/relations/basis9847.json"
theorem reductionProof9847 : EqualModuloRelations reduction9847.relations reduction9847.input reduction9847.output := by lin_cert using reduction9847.terms
theorem substitutionProof9847 : IsMapEvaluation generatorImages reduction9847.relations [13,13,13,13,23,80] reduction9847.output := by lin_cert using reduction9847.terms
def image9848 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9848 : InImage map_31_201 image9848 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9848 : Bundle := named_bundle% "RealMapCertificates/relations/basis9848.json"
theorem reductionProof9848 : EqualModuloRelations reduction9848.relations reduction9848.input reduction9848.output := by lin_cert using reduction9848.terms
theorem substitutionProof9848 : IsMapEvaluation generatorImages reduction9848.relations [8,920] reduction9848.output := by lin_cert using reduction9848.terms
def image9849 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9849 : InImage map_31_201 image9849 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9849 : Bundle := named_bundle% "RealMapCertificates/relations/basis9849.json"
theorem reductionProof9849 : EqualModuloRelations reduction9849.relations reduction9849.input reduction9849.output := by lin_cert using reduction9849.terms
theorem substitutionProof9849 : IsMapEvaluation generatorImages reduction9849.relations [8,8,8,9,13,188] reduction9849.output := by lin_cert using reduction9849.terms
def image9850 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9850 : InImage map_31_201 image9850 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9850 : Bundle := named_bundle% "RealMapCertificates/relations/basis9850.json"
theorem reductionProof9850 : EqualModuloRelations reduction9850.relations reduction9850.input reduction9850.output := by lin_cert using reduction9850.terms
theorem substitutionProof9850 : IsMapEvaluation generatorImages reduction9850.relations [5,963] reduction9850.output := by lin_cert using reduction9850.terms
def map_31_202 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9974 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9974 : InImage map_31_202 image9974 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9974 : Bundle := named_bundle% "RealMapCertificates/relations/basis9974.json"
theorem reductionProof9974 : EqualModuloRelations reduction9974.relations reduction9974.input reduction9974.output := by lin_cert using reduction9974.terms
theorem substitutionProof9974 : IsMapEvaluation generatorImages reduction9974.relations [13,864] reduction9974.output := by lin_cert using reduction9974.terms
def image9975 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9975 : InImage map_31_202 image9975 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9975 : Bundle := named_bundle% "RealMapCertificates/relations/basis9975.json"
theorem reductionProof9975 : EqualModuloRelations reduction9975.relations reduction9975.input reduction9975.output := by lin_cert using reduction9975.terms
theorem substitutionProof9975 : IsMapEvaluation generatorImages reduction9975.relations [0,0,0,0,0,0,0,0,0,0,1051] reduction9975.output := by lin_cert using reduction9975.terms
def map_31_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10144 : InImage map_31_203 image10144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10144 : Bundle := named_bundle% "RealMapCertificates/relations/basis10144.json"
theorem reductionProof10144 : EqualModuloRelations reduction10144.relations reduction10144.input reduction10144.output := by lin_cert using reduction10144.terms
theorem substitutionProof10144 : IsMapEvaluation generatorImages reduction10144.relations [8,940] reduction10144.output := by lin_cert using reduction10144.terms
def image10145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10145 : InImage map_31_203 image10145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10145 : Bundle := named_bundle% "RealMapCertificates/relations/basis10145.json"
theorem reductionProof10145 : EqualModuloRelations reduction10145.relations reduction10145.input reduction10145.output := by lin_cert using reduction10145.terms
theorem substitutionProof10145 : IsMapEvaluation generatorImages reduction10145.relations [8,13,23,292] reduction10145.output := by lin_cert using reduction10145.terms
def image10146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10146 : InImage map_31_203 image10146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10146 : Bundle := named_bundle% "RealMapCertificates/relations/basis10146.json"
theorem reductionProof10146 : EqualModuloRelations reduction10146.relations reduction10146.input reduction10146.output := by lin_cert using reduction10146.terms
theorem substitutionProof10146 : IsMapEvaluation generatorImages reduction10146.relations [8,8,8,8,350] reduction10146.output := by lin_cert using reduction10146.terms
def image10147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10147 : InImage map_31_203 image10147 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10147 : Bundle := named_bundle% "RealMapCertificates/relations/basis10147.json"
theorem reductionProof10147 : EqualModuloRelations reduction10147.relations reduction10147.input reduction10147.output := by lin_cert using reduction10147.terms
theorem substitutionProof10147 : IsMapEvaluation generatorImages reduction10147.relations [0,1220] reduction10147.output := by lin_cert using reduction10147.terms
def image10148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10148 : InImage map_31_203 image10148 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10148 : Bundle := named_bundle% "RealMapCertificates/relations/basis10148.json"
theorem reductionProof10148 : EqualModuloRelations reduction10148.relations reduction10148.input reduction10148.output := by lin_cert using reduction10148.terms
theorem substitutionProof10148 : IsMapEvaluation generatorImages reduction10148.relations [0,0,0,0,0,0,0,0,0,1084] reduction10148.output := by lin_cert using reduction10148.terms
def map_31_204 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10349 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10349 : InImage map_31_204 image10349 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10349 : Bundle := named_bundle% "RealMapCertificates/relations/basis10349.json"
theorem reductionProof10349 : EqualModuloRelations reduction10349.relations reduction10349.input reduction10349.output := by lin_cert using reduction10349.terms
theorem substitutionProof10349 : IsMapEvaluation generatorImages reduction10349.relations [8,957] reduction10349.output := by lin_cert using reduction10349.terms
def image10350 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10350 : InImage map_31_204 image10350 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10350 : Bundle := named_bundle% "RealMapCertificates/relations/basis10350.json"
theorem reductionProof10350 : EqualModuloRelations reduction10350.relations reduction10350.input reduction10350.output := by lin_cert using reduction10350.terms
theorem substitutionProof10350 : IsMapEvaluation generatorImages reduction10350.relations [8,8,8,13,13,188] reduction10350.output := by lin_cert using reduction10350.terms
def image10351 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10351 : InImage map_31_204 image10351 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10351 : Bundle := named_bundle% "RealMapCertificates/relations/basis10351.json"
theorem reductionProof10351 : EqualModuloRelations reduction10351.relations reduction10351.input reduction10351.output := by lin_cert using reduction10351.terms
theorem substitutionProof10351 : IsMapEvaluation generatorImages reduction10351.relations [0,113,292] reduction10351.output := by lin_cert using reduction10351.terms
def image10352 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10352 : InImage map_31_204 image10352 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10352 : Bundle := named_bundle% "RealMapCertificates/relations/basis10352.json"
theorem reductionProof10352 : EqualModuloRelations reduction10352.relations reduction10352.input reduction10352.output := by lin_cert using reduction10352.terms
theorem substitutionProof10352 : IsMapEvaluation generatorImages reduction10352.relations [0,64,455] reduction10352.output := by lin_cert using reduction10352.terms
def image10353 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10353 : InImage map_31_204 image10353 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10353 : Bundle := named_bundle% "RealMapCertificates/relations/basis10353.json"
theorem reductionProof10353 : EqualModuloRelations reduction10353.relations reduction10353.input reduction10353.output := by lin_cert using reduction10353.terms
theorem substitutionProof10353 : IsMapEvaluation generatorImages reduction10353.relations [0,0,0,0,0,0,0,0,1105] reduction10353.output := by lin_cert using reduction10353.terms
def map_31_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10505 : InImage map_31_205 image10505 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10505 : Bundle := named_bundle% "RealMapCertificates/relations/basis10505.json"
theorem reductionProof10505 : EqualModuloRelations reduction10505.relations reduction10505.input reduction10505.output := by lin_cert using reduction10505.terms
theorem substitutionProof10505 : IsMapEvaluation generatorImages reduction10505.relations [0,0,0,0,0,0,1169] reduction10505.output := by lin_cert using reduction10505.terms
def map_31_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10673 : InImage map_31_206 image10673 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10673 : Bundle := named_bundle% "RealMapCertificates/relations/basis10673.json"
theorem reductionProof10673 : EqualModuloRelations reduction10673.relations reduction10673.input reduction10673.output := by lin_cert using reduction10673.terms
theorem substitutionProof10673 : IsMapEvaluation generatorImages reduction10673.relations [9,13,23,292] reduction10673.output := by lin_cert using reduction10673.terms
def image10674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10674 : InImage map_31_206 image10674 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10674 : Bundle := named_bundle% "RealMapCertificates/relations/basis10674.json"
theorem reductionProof10674 : EqualModuloRelations reduction10674.relations reduction10674.input reduction10674.output := by lin_cert using reduction10674.terms
theorem substitutionProof10674 : IsMapEvaluation generatorImages reduction10674.relations [8,17,627] reduction10674.output := by lin_cert using reduction10674.terms
def image10675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10675 : InImage map_31_206 image10675 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10675 : Bundle := named_bundle% "RealMapCertificates/relations/basis10675.json"
theorem reductionProof10675 : EqualModuloRelations reduction10675.relations reduction10675.input reduction10675.output := by lin_cert using reduction10675.terms
theorem substitutionProof10675 : IsMapEvaluation generatorImages reduction10675.relations [8,8,8,8,384] reduction10675.output := by lin_cert using reduction10675.terms
def image10676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10676 : InImage map_31_206 image10676 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10676 : Bundle := named_bundle% "RealMapCertificates/relations/basis10676.json"
theorem reductionProof10676 : EqualModuloRelations reduction10676.relations reduction10676.input reduction10676.output := by lin_cert using reduction10676.terms
theorem substitutionProof10676 : IsMapEvaluation generatorImages reduction10676.relations [0,8,963] reduction10676.output := by lin_cert using reduction10676.terms
def map_31_207 : Matrix 2 3 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10903 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10903 : InImage map_31_207 image10903 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10903 : Bundle := named_bundle% "RealMapCertificates/relations/basis10903.json"
theorem reductionProof10903 : EqualModuloRelations reduction10903.relations reduction10903.input reduction10903.output := by lin_cert using reduction10903.terms
theorem substitutionProof10903 : IsMapEvaluation generatorImages reduction10903.relations [8,8,779] reduction10903.output := by lin_cert using reduction10903.terms
def image10904 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10904 : InImage map_31_207 image10904 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10904 : Bundle := named_bundle% "RealMapCertificates/relations/basis10904.json"
theorem reductionProof10904 : EqualModuloRelations reduction10904.relations reduction10904.input reduction10904.output := by lin_cert using reduction10904.terms
theorem substitutionProof10904 : IsMapEvaluation generatorImages reduction10904.relations [8,8,9,13,13,188] reduction10904.output := by lin_cert using reduction10904.terms
def image10905 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10905 : InImage map_31_207 image10905 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10905 : Bundle := named_bundle% "RealMapCertificates/relations/basis10905.json"
theorem reductionProof10905 : EqualModuloRelations reduction10905.relations reduction10905.input reduction10905.output := by lin_cert using reduction10905.terms
theorem substitutionProof10905 : IsMapEvaluation generatorImages reduction10905.relations [0,8,974] reduction10905.output := by lin_cert using reduction10905.terms
def map_31_208 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image11028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11028 : InImage map_31_208 image11028 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11028 : Bundle := named_bundle% "RealMapCertificates/relations/basis11028.json"
theorem reductionProof11028 : EqualModuloRelations reduction11028.relations reduction11028.input reduction11028.output := by lin_cert using reduction11028.terms
theorem substitutionProof11028 : IsMapEvaluation generatorImages reduction11028.relations [13,23,537] reduction11028.output := by lin_cert using reduction11028.terms
def image11029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11029 : InImage map_31_208 image11029 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11029 : Bundle := named_bundle% "RealMapCertificates/relations/basis11029.json"
theorem reductionProof11029 : EqualModuloRelations reduction11029.relations reduction11029.input reduction11029.output := by lin_cert using reduction11029.terms
theorem substitutionProof11029 : IsMapEvaluation generatorImages reduction11029.relations [13,13,13,13,13,13,67] reduction11029.output := by lin_cert using reduction11029.terms
def image11030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11030 : InImage map_31_208 image11030 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11030 : Bundle := named_bundle% "RealMapCertificates/relations/basis11030.json"
theorem reductionProof11030 : EqualModuloRelations reduction11030.relations reduction11030.input reduction11030.output := by lin_cert using reduction11030.terms
theorem substitutionProof11030 : IsMapEvaluation generatorImages reduction11030.relations [1,1303] reduction11030.output := by lin_cert using reduction11030.terms
def map_31_209 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11208 : InImage map_31_209 image11208 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11208 : Bundle := named_bundle% "RealMapCertificates/relations/basis11208.json"
theorem reductionProof11208 : EqualModuloRelations reduction11208.relations reduction11208.input reduction11208.output := by lin_cert using reduction11208.terms
theorem substitutionProof11208 : IsMapEvaluation generatorImages reduction11208.relations [64,518] reduction11208.output := by lin_cert using reduction11208.terms
def image11209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11209 : InImage map_31_209 image11209 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11209 : Bundle := named_bundle% "RealMapCertificates/relations/basis11209.json"
theorem reductionProof11209 : EqualModuloRelations reduction11209.relations reduction11209.input reduction11209.output := by lin_cert using reduction11209.terms
theorem substitutionProof11209 : IsMapEvaluation generatorImages reduction11209.relations [13,13,23,292] reduction11209.output := by lin_cert using reduction11209.terms
def image11210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11210 : InImage map_31_209 image11210 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11210 : Bundle := named_bundle% "RealMapCertificates/relations/basis11210.json"
theorem reductionProof11210 : EqualModuloRelations reduction11210.relations reduction11210.input reduction11210.output := by lin_cert using reduction11210.terms
theorem substitutionProof11210 : IsMapEvaluation generatorImages reduction11210.relations [8,17,655] reduction11210.output := by lin_cert using reduction11210.terms
def image11211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11211 : InImage map_31_209 image11211 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11211 : Bundle := named_bundle% "RealMapCertificates/relations/basis11211.json"
theorem reductionProof11211 : EqualModuloRelations reduction11211.relations reduction11211.input reduction11211.output := by lin_cert using reduction11211.terms
theorem substitutionProof11211 : IsMapEvaluation generatorImages reduction11211.relations [8,8,8,8,423] reduction11211.output := by lin_cert using reduction11211.terms
def map_31_210 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image11413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11413 : InImage map_31_210 image11413 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11413 : Bundle := named_bundle% "RealMapCertificates/relations/basis11413.json"
theorem reductionProof11413 : EqualModuloRelations reduction11413.relations reduction11413.input reduction11413.output := by lin_cert using reduction11413.terms
theorem substitutionProof11413 : IsMapEvaluation generatorImages reduction11413.relations [1366] reduction11413.output := by lin_cert using reduction11413.terms
def image11414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11414 : InImage map_31_210 image11414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11414 : Bundle := named_bundle% "RealMapCertificates/relations/basis11414.json"
theorem reductionProof11414 : EqualModuloRelations reduction11414.relations reduction11414.input reduction11414.output := by lin_cert using reduction11414.terms
theorem substitutionProof11414 : IsMapEvaluation generatorImages reduction11414.relations [8,8,813] reduction11414.output := by lin_cert using reduction11414.terms
def image11415 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11415 : InImage map_31_210 image11415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11415 : Bundle := named_bundle% "RealMapCertificates/relations/basis11415.json"
theorem reductionProof11415 : EqualModuloRelations reduction11415.relations reduction11415.input reduction11415.output := by lin_cert using reduction11415.terms
theorem substitutionProof11415 : IsMapEvaluation generatorImages reduction11415.relations [8,8,13,13,13,188] reduction11415.output := by lin_cert using reduction11415.terms
def image11416 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11416 : InImage map_31_210 image11416 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11416 : Bundle := named_bundle% "RealMapCertificates/relations/basis11416.json"
theorem reductionProof11416 : EqualModuloRelations reduction11416.relations reduction11416.input reduction11416.output := by lin_cert using reduction11416.terms
theorem substitutionProof11416 : IsMapEvaluation generatorImages reduction11416.relations [0,8,1035] reduction11416.output := by lin_cert using reduction11416.terms
def map_31_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11572 : InImage map_31_211 image11572 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11572 : Bundle := named_bundle% "RealMapCertificates/relations/basis11572.json"
theorem reductionProof11572 : EqualModuloRelations reduction11572.relations reduction11572.input reduction11572.output := by lin_cert using reduction11572.terms
theorem substitutionProof11572 : IsMapEvaluation generatorImages reduction11572.relations [1384] reduction11572.output := by lin_cert using reduction11572.terms
def image11573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11573 : InImage map_31_211 image11573 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11573 : Bundle := named_bundle% "RealMapCertificates/relations/basis11573.json"
theorem reductionProof11573 : EqualModuloRelations reduction11573.relations reduction11573.input reduction11573.output := by lin_cert using reduction11573.terms
theorem substitutionProof11573 : IsMapEvaluation generatorImages reduction11573.relations [1383] reduction11573.output := by lin_cert using reduction11573.terms
def map_31_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11747 : InImage map_31_212 image11747 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11747 : Bundle := named_bundle% "RealMapCertificates/relations/basis11747.json"
theorem reductionProof11747 : EqualModuloRelations reduction11747.relations reduction11747.input reduction11747.output := by lin_cert using reduction11747.terms
theorem substitutionProof11747 : IsMapEvaluation generatorImages reduction11747.relations [8,138,209] reduction11747.output := by lin_cert using reduction11747.terms
def image11748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11748 : InImage map_31_212 image11748 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11748 : Bundle := named_bundle% "RealMapCertificates/relations/basis11748.json"
theorem reductionProof11748 : EqualModuloRelations reduction11748.relations reduction11748.input reduction11748.output := by lin_cert using reduction11748.terms
theorem substitutionProof11748 : IsMapEvaluation generatorImages reduction11748.relations [8,8,832] reduction11748.output := by lin_cert using reduction11748.terms
def image11749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11749 : InImage map_31_212 image11749 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11749 : Bundle := named_bundle% "RealMapCertificates/relations/basis11749.json"
theorem reductionProof11749 : EqualModuloRelations reduction11749.relations reduction11749.input reduction11749.output := by lin_cert using reduction11749.terms
theorem substitutionProof11749 : IsMapEvaluation generatorImages reduction11749.relations [8,8,8,9,423] reduction11749.output := by lin_cert using reduction11749.terms
def image11750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11750 : InImage map_31_212 image11750 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11750 : Bundle := named_bundle% "RealMapCertificates/relations/basis11750.json"
theorem reductionProof11750 : EqualModuloRelations reduction11750.relations reduction11750.input reduction11750.output := by lin_cert using reduction11750.terms
theorem substitutionProof11750 : IsMapEvaluation generatorImages reduction11750.relations [1,1367] reduction11750.output := by lin_cert using reduction11750.terms
def image11751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11751 : InImage map_31_212 image11751 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11751 : Bundle := named_bundle% "RealMapCertificates/relations/basis11751.json"
theorem reductionProof11751 : EqualModuloRelations reduction11751.relations reduction11751.input reduction11751.output := by lin_cert using reduction11751.terms
theorem substitutionProof11751 : IsMapEvaluation generatorImages reduction11751.relations [0,1385] reduction11751.output := by lin_cert using reduction11751.terms
def map_31_213 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image11998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11998 : InImage map_31_213 image11998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11998 : Bundle := named_bundle% "RealMapCertificates/relations/basis11998.json"
theorem reductionProof11998 : EqualModuloRelations reduction11998.relations reduction11998.input reduction11998.output := by lin_cert using reduction11998.terms
theorem substitutionProof11998 : IsMapEvaluation generatorImages reduction11998.relations [8,9,13,13,13,188] reduction11998.output := by lin_cert using reduction11998.terms
def image11999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11999 : InImage map_31_213 image11999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11999 : Bundle := named_bundle% "RealMapCertificates/relations/basis11999.json"
theorem reductionProof11999 : EqualModuloRelations reduction11999.relations reduction11999.input reduction11999.output := by lin_cert using reduction11999.terms
theorem substitutionProof11999 : IsMapEvaluation generatorImages reduction11999.relations [8,8,8,638] reduction11999.output := by lin_cert using reduction11999.terms
def image12000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12000 : InImage map_31_213 image12000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12000 : Bundle := named_bundle% "RealMapCertificates/relations/basis12000.json"
theorem reductionProof12000 : EqualModuloRelations reduction12000.relations reduction12000.input reduction12000.output := by lin_cert using reduction12000.terms
theorem substitutionProof12000 : IsMapEvaluation generatorImages reduction12000.relations [1,1385] reduction12000.output := by lin_cert using reduction12000.terms
def image12001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12001 : InImage map_31_213 image12001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12001 : Bundle := named_bundle% "RealMapCertificates/relations/basis12001.json"
theorem reductionProof12001 : EqualModuloRelations reduction12001.relations reduction12001.input reduction12001.output := by lin_cert using reduction12001.terms
theorem substitutionProof12001 : IsMapEvaluation generatorImages reduction12001.relations [0,1402] reduction12001.output := by lin_cert using reduction12001.terms
def map_31_214 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12159 : InImage map_31_214 image12159 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12159 : Bundle := named_bundle% "RealMapCertificates/relations/basis12159.json"
theorem reductionProof12159 : EqualModuloRelations reduction12159.relations reduction12159.input reduction12159.output := by lin_cert using reduction12159.terms
theorem substitutionProof12159 : IsMapEvaluation generatorImages reduction12159.relations [1440] reduction12159.output := by lin_cert using reduction12159.terms
def image12160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12160 : InImage map_31_214 image12160 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12160 : Bundle := named_bundle% "RealMapCertificates/relations/basis12160.json"
theorem reductionProof12160 : EqualModuloRelations reduction12160.relations reduction12160.input reduction12160.output := by lin_cert using reduction12160.terms
theorem substitutionProof12160 : IsMapEvaluation generatorImages reduction12160.relations [9,13,13,13,13,13,95] reduction12160.output := by lin_cert using reduction12160.terms
def image12161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12161 : InImage map_31_214 image12161 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12161 : Bundle := named_bundle% "RealMapCertificates/relations/basis12161.json"
theorem reductionProof12161 : EqualModuloRelations reduction12161.relations reduction12161.input reduction12161.output := by lin_cert using reduction12161.terms
theorem substitutionProof12161 : IsMapEvaluation generatorImages reduction12161.relations [1,1402] reduction12161.output := by lin_cert using reduction12161.terms
def map_31_215 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image12352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12352 : InImage map_31_215 image12352 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12352 : Bundle := named_bundle% "RealMapCertificates/relations/basis12352.json"
theorem reductionProof12352 : EqualModuloRelations reduction12352.relations reduction12352.input reduction12352.output := by lin_cert using reduction12352.terms
theorem substitutionProof12352 : IsMapEvaluation generatorImages reduction12352.relations [8,64,383] reduction12352.output := by lin_cert using reduction12352.terms
def image12353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12353 : InImage map_31_215 image12353 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12353 : Bundle := named_bundle% "RealMapCertificates/relations/basis12353.json"
theorem reductionProof12353 : EqualModuloRelations reduction12353.relations reduction12353.input reduction12353.output := by lin_cert using reduction12353.terms
theorem substitutionProof12353 : IsMapEvaluation generatorImages reduction12353.relations [8,8,874] reduction12353.output := by lin_cert using reduction12353.terms
def image12354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12354 : InImage map_31_215 image12354 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12354 : Bundle := named_bundle% "RealMapCertificates/relations/basis12354.json"
theorem reductionProof12354 : EqualModuloRelations reduction12354.relations reduction12354.input reduction12354.output := by lin_cert using reduction12354.terms
theorem substitutionProof12354 : IsMapEvaluation generatorImages reduction12354.relations [8,8,8,13,423] reduction12354.output := by lin_cert using reduction12354.terms
def map_31_216 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12558 : InImage map_31_216 image12558 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12558 : Bundle := named_bundle% "RealMapCertificates/relations/basis12558.json"
theorem reductionProof12558 : EqualModuloRelations reduction12558.relations reduction12558.input reduction12558.output := by lin_cert using reduction12558.terms
theorem substitutionProof12558 : IsMapEvaluation generatorImages reduction12558.relations [13,13,13,13,266] reduction12558.output := by lin_cert using reduction12558.terms
def image12559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12559 : InImage map_31_216 image12559 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12559 : Bundle := named_bundle% "RealMapCertificates/relations/basis12559.json"
theorem reductionProof12559 : EqualModuloRelations reduction12559.relations reduction12559.input reduction12559.output := by lin_cert using reduction12559.terms
theorem substitutionProof12559 : IsMapEvaluation generatorImages reduction12559.relations [8,13,13,13,13,188] reduction12559.output := by lin_cert using reduction12559.terms
def image12560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12560 : InImage map_31_216 image12560 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12560 : Bundle := named_bundle% "RealMapCertificates/relations/basis12560.json"
theorem reductionProof12560 : EqualModuloRelations reduction12560.relations reduction12560.input reduction12560.output := by lin_cert using reduction12560.terms
theorem substitutionProof12560 : IsMapEvaluation generatorImages reduction12560.relations [8,8,8,668] reduction12560.output := by lin_cert using reduction12560.terms
def image12561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12561 : InImage map_31_216 image12561 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12561 : Bundle := named_bundle% "RealMapCertificates/relations/basis12561.json"
theorem reductionProof12561 : EqualModuloRelations reduction12561.relations reduction12561.input reduction12561.output := by lin_cert using reduction12561.terms
theorem substitutionProof12561 : IsMapEvaluation generatorImages reduction12561.relations [1,135,324] reduction12561.output := by lin_cert using reduction12561.terms
end RealMapCertificates
