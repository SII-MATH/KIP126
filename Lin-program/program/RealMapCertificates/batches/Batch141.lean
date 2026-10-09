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
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 76 => []
  | 80 => []
  | 95 => []
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 160 => [[6,8,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 210 => []
  | 250 => []
  | 255 => []
  | 260 => []
  | 280 => []
  | 287 => []
  | 293 => []
  | 324 => []
  | 328 => []
  | 360 => []
  | 423 => []
  | 586 => []
  | 627 => []
  | 645 => []
  | 667 => []
  | 693 => []
  | 705 => []
  | 706 => []
  | 760 => []
  | 762 => []
  | 798 => []
  | 832 => []
  | 901 => []
  | 941 => []
  | 979 => []
  | 1062 => []
  | 1290 => []
  | 1337 => []
  | 1441 => []
  | 1473 => []
  | 1483 => []
  | 1484 => []
  | 1503 => []
  | 1504 => []
  | 1518 => []
  | 1539 => []
  | 1568 => []
  | 1571 => []
  | 1572 => []
  | 1596 => []
  | 1597 => []
  | 1607 => []
  | 1621 => []
  | 1652 => []
  | 1655 => []
  | 1682 => []
  | 1689 => []
  | 1720 => []
  | 1739 => []
  | 1758 => []
  | 1759 => []
  | 1773 => []
  | 1774 => []
  | 1775 => []
  | 1834 => []
  | 1858 => []
  | 1859 => []
  | 1860 => []
  | 1861 => []
  | 1902 => []
  | _ => []
def map_31_217 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12721 : InImage map_31_217 image12721 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12721 : Bundle := named_bundle% "RealMapCertificates/relations/basis12721.json"
theorem reductionProof12721 : EqualModuloRelations reduction12721.relations reduction12721.input reduction12721.output := by lin_cert using reduction12721.terms
theorem substitutionProof12721 : IsMapEvaluation generatorImages reduction12721.relations [1503] reduction12721.output := by lin_cert using reduction12721.terms
def image12722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12722 : InImage map_31_217 image12722 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12722 : Bundle := named_bundle% "RealMapCertificates/relations/basis12722.json"
theorem reductionProof12722 : EqualModuloRelations reduction12722.relations reduction12722.input reduction12722.output := by lin_cert using reduction12722.terms
theorem substitutionProof12722 : IsMapEvaluation generatorImages reduction12722.relations [149,293] reduction12722.output := by lin_cert using reduction12722.terms
def image12723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12723 : InImage map_31_217 image12723 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12723 : Bundle := named_bundle% "RealMapCertificates/relations/basis12723.json"
theorem reductionProof12723 : EqualModuloRelations reduction12723.relations reduction12723.input reduction12723.output := by lin_cert using reduction12723.terms
theorem substitutionProof12723 : IsMapEvaluation generatorImages reduction12723.relations [64,586] reduction12723.output := by lin_cert using reduction12723.terms
def image12724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12724 : InImage map_31_217 image12724 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12724 : Bundle := named_bundle% "RealMapCertificates/relations/basis12724.json"
theorem reductionProof12724 : EqualModuloRelations reduction12724.relations reduction12724.input reduction12724.output := by lin_cert using reduction12724.terms
theorem substitutionProof12724 : IsMapEvaluation generatorImages reduction12724.relations [13,13,13,13,13,13,95] reduction12724.output := by lin_cert using reduction12724.terms
def image12725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12725 : InImage map_31_217 image12725 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12725 : Bundle := named_bundle% "RealMapCertificates/relations/basis12725.json"
theorem reductionProof12725 : EqualModuloRelations reduction12725.relations reduction12725.input reduction12725.output := by lin_cert using reduction12725.terms
theorem substitutionProof12725 : IsMapEvaluation generatorImages reduction12725.relations [0,140,324] reduction12725.output := by lin_cert using reduction12725.terms
def image12726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12726 : InImage map_31_217 image12726 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12726 : Bundle := named_bundle% "RealMapCertificates/relations/basis12726.json"
theorem reductionProof12726 : EqualModuloRelations reduction12726.relations reduction12726.input reduction12726.output := by lin_cert using reduction12726.terms
theorem substitutionProof12726 : IsMapEvaluation generatorImages reduction12726.relations [0,0,0,1441] reduction12726.output := by lin_cert using reduction12726.terms
def map_31_218 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12906 : InImage map_31_218 image12906 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12906 : Bundle := named_bundle% "RealMapCertificates/relations/basis12906.json"
theorem reductionProof12906 : EqualModuloRelations reduction12906.relations reduction12906.input reduction12906.output := by lin_cert using reduction12906.terms
theorem substitutionProof12906 : IsMapEvaluation generatorImages reduction12906.relations [8,16,760] reduction12906.output := by lin_cert using reduction12906.terms
def image12907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12907 : InImage map_31_218 image12907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12907 : Bundle := named_bundle% "RealMapCertificates/relations/basis12907.json"
theorem reductionProof12907 : EqualModuloRelations reduction12907.relations reduction12907.input reduction12907.output := by lin_cert using reduction12907.terms
theorem substitutionProof12907 : IsMapEvaluation generatorImages reduction12907.relations [8,8,901] reduction12907.output := by lin_cert using reduction12907.terms
def image12908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12908 : InImage map_31_218 image12908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12908 : Bundle := named_bundle% "RealMapCertificates/relations/basis12908.json"
theorem reductionProof12908 : EqualModuloRelations reduction12908.relations reduction12908.input reduction12908.output := by lin_cert using reduction12908.terms
theorem substitutionProof12908 : IsMapEvaluation generatorImages reduction12908.relations [8,8,9,13,423] reduction12908.output := by lin_cert using reduction12908.terms
def image12909 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12909 : InImage map_31_218 image12909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12909 : Bundle := named_bundle% "RealMapCertificates/relations/basis12909.json"
theorem reductionProof12909 : EqualModuloRelations reduction12909.relations reduction12909.input reduction12909.output := by lin_cert using reduction12909.terms
theorem substitutionProof12909 : IsMapEvaluation generatorImages reduction12909.relations [0,0,1483] reduction12909.output := by lin_cert using reduction12909.terms
def map_31_219 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13149 : InImage map_31_219 image13149 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13149 : Bundle := named_bundle% "RealMapCertificates/relations/basis13149.json"
theorem reductionProof13149 : EqualModuloRelations reduction13149.relations reduction13149.input reduction13149.output := by lin_cert using reduction13149.terms
theorem substitutionProof13149 : IsMapEvaluation generatorImages reduction13149.relations [9,13,13,13,13,188] reduction13149.output := by lin_cert using reduction13149.terms
def image13150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13150 : InImage map_31_219 image13150 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13150 : Bundle := named_bundle% "RealMapCertificates/relations/basis13150.json"
theorem reductionProof13150 : EqualModuloRelations reduction13150.relations reduction13150.input reduction13150.output := by lin_cert using reduction13150.terms
theorem substitutionProof13150 : IsMapEvaluation generatorImages reduction13150.relations [8,8,8,705] reduction13150.output := by lin_cert using reduction13150.terms
def map_31_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13285 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13285 : InImage map_31_220 image13285 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13285 : Bundle := named_bundle% "RealMapCertificates/relations/basis13285.json"
theorem reductionProof13285 : EqualModuloRelations reduction13285.relations reduction13285.input reduction13285.output := by lin_cert using reduction13285.terms
theorem substitutionProof13285 : IsMapEvaluation generatorImages reduction13285.relations [160,293] reduction13285.output := by lin_cert using reduction13285.terms
def image13286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13286 : InImage map_31_220 image13286 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13286 : Bundle := named_bundle% "RealMapCertificates/relations/basis13286.json"
theorem reductionProof13286 : EqualModuloRelations reduction13286.relations reduction13286.input reduction13286.output := by lin_cert using reduction13286.terms
theorem substitutionProof13286 : IsMapEvaluation generatorImages reduction13286.relations [0,0,145,324] reduction13286.output := by lin_cert using reduction13286.terms
def image13287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13287 : InImage map_31_220 image13287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13287 : Bundle := named_bundle% "RealMapCertificates/relations/basis13287.json"
theorem reductionProof13287 : EqualModuloRelations reduction13287.relations reduction13287.input reduction13287.output := by lin_cert using reduction13287.terms
theorem substitutionProof13287 : IsMapEvaluation generatorImages reduction13287.relations [0,0,0,1504] reduction13287.output := by lin_cert using reduction13287.terms
def map_31_221 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13477 : InImage map_31_221 image13477 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13477 : Bundle := named_bundle% "RealMapCertificates/relations/basis13477.json"
theorem reductionProof13477 : EqualModuloRelations reduction13477.relations reduction13477.input reduction13477.output := by lin_cert using reduction13477.terms
theorem substitutionProof13477 : IsMapEvaluation generatorImages reduction13477.relations [1568] reduction13477.output := by lin_cert using reduction13477.terms
def image13478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13478 : InImage map_31_221 image13478 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13478 : Bundle := named_bundle% "RealMapCertificates/relations/basis13478.json"
theorem reductionProof13478 : EqualModuloRelations reduction13478.relations reduction13478.input reduction13478.output := by lin_cert using reduction13478.terms
theorem substitutionProof13478 : IsMapEvaluation generatorImages reduction13478.relations [8,9,901] reduction13478.output := by lin_cert using reduction13478.terms
def image13479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13479 : InImage map_31_221 image13479 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13479 : Bundle := named_bundle% "RealMapCertificates/relations/basis13479.json"
theorem reductionProof13479 : EqualModuloRelations reduction13479.relations reduction13479.input reduction13479.output := by lin_cert using reduction13479.terms
theorem substitutionProof13479 : IsMapEvaluation generatorImages reduction13479.relations [8,8,64,280] reduction13479.output := by lin_cert using reduction13479.terms
def image13480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13480 : InImage map_31_221 image13480 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13480 : Bundle := named_bundle% "RealMapCertificates/relations/basis13480.json"
theorem reductionProof13480 : EqualModuloRelations reduction13480.relations reduction13480.input reduction13480.output := by lin_cert using reduction13480.terms
theorem substitutionProof13480 : IsMapEvaluation generatorImages reduction13480.relations [8,8,13,13,423] reduction13480.output := by lin_cert using reduction13480.terms
def map_31_222 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13704 : InImage map_31_222 image13704 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13704 : Bundle := named_bundle% "RealMapCertificates/relations/basis13704.json"
theorem reductionProof13704 : EqualModuloRelations reduction13704.relations reduction13704.input reduction13704.output := by lin_cert using reduction13704.terms
theorem substitutionProof13704 : IsMapEvaluation generatorImages reduction13704.relations [13,13,13,13,13,188] reduction13704.output := by lin_cert using reduction13704.terms
def image13705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13705 : InImage map_31_222 image13705 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13705 : Bundle := named_bundle% "RealMapCertificates/relations/basis13705.json"
theorem reductionProof13705 : EqualModuloRelations reduction13705.relations reduction13705.input reduction13705.output := by lin_cert using reduction13705.terms
theorem substitutionProof13705 : IsMapEvaluation generatorImages reduction13705.relations [9,13,13,13,328] reduction13705.output := by lin_cert using reduction13705.terms
def image13706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13706 : InImage map_31_222 image13706 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13706 : Bundle := named_bundle% "RealMapCertificates/relations/basis13706.json"
theorem reductionProof13706 : EqualModuloRelations reduction13706.relations reduction13706.input reduction13706.output := by lin_cert using reduction13706.terms
theorem substitutionProof13706 : IsMapEvaluation generatorImages reduction13706.relations [8,8,9,705] reduction13706.output := by lin_cert using reduction13706.terms
def image13707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13707 : InImage map_31_222 image13707 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13707 : Bundle := named_bundle% "RealMapCertificates/relations/basis13707.json"
theorem reductionProof13707 : EqualModuloRelations reduction13707.relations reduction13707.input reduction13707.output := by lin_cert using reduction13707.terms
theorem substitutionProof13707 : IsMapEvaluation generatorImages reduction13707.relations [1,1,145,324] reduction13707.output := by lin_cert using reduction13707.terms
def image13708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13708 : InImage map_31_222 image13708 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13708 : Bundle := named_bundle% "RealMapCertificates/relations/basis13708.json"
theorem reductionProof13708 : EqualModuloRelations reduction13708.relations reduction13708.input reduction13708.output := by lin_cert using reduction13708.terms
theorem substitutionProof13708 : IsMapEvaluation generatorImages reduction13708.relations [0,64,627] reduction13708.output := by lin_cert using reduction13708.terms
def map_31_223 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image13856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13856 : InImage map_31_223 image13856 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13856 : Bundle := named_bundle% "RealMapCertificates/relations/basis13856.json"
theorem reductionProof13856 : EqualModuloRelations reduction13856.relations reduction13856.input reduction13856.output := by lin_cert using reduction13856.terms
theorem substitutionProof13856 : IsMapEvaluation generatorImages reduction13856.relations [1607] reduction13856.output := by lin_cert using reduction13856.terms
def image13857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13857 : InImage map_31_223 image13857 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13857 : Bundle := named_bundle% "RealMapCertificates/relations/basis13857.json"
theorem reductionProof13857 : EqualModuloRelations reduction13857.relations reduction13857.input reduction13857.output := by lin_cert using reduction13857.terms
theorem substitutionProof13857 : IsMapEvaluation generatorImages reduction13857.relations [64,645] reduction13857.output := by lin_cert using reduction13857.terms
def image13858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13858 : InImage map_31_223 image13858 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13858 : Bundle := named_bundle% "RealMapCertificates/relations/basis13858.json"
theorem reductionProof13858 : EqualModuloRelations reduction13858.relations reduction13858.input reduction13858.output := by lin_cert using reduction13858.terms
theorem substitutionProof13858 : IsMapEvaluation generatorImages reduction13858.relations [13,13,13,13,13,23,76] reduction13858.output := by lin_cert using reduction13858.terms
def image13859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13859 : InImage map_31_223 image13859 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13859 : Bundle := named_bundle% "RealMapCertificates/relations/basis13859.json"
theorem reductionProof13859 : EqualModuloRelations reduction13859.relations reduction13859.input reduction13859.output := by lin_cert using reduction13859.terms
theorem substitutionProof13859 : IsMapEvaluation generatorImages reduction13859.relations [8,1290] reduction13859.output := by lin_cert using reduction13859.terms
def image13860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13860 : InImage map_31_223 image13860 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13860 : Bundle := named_bundle% "RealMapCertificates/relations/basis13860.json"
theorem reductionProof13860 : EqualModuloRelations reduction13860.relations reduction13860.input reduction13860.output := by lin_cert using reduction13860.terms
theorem substitutionProof13860 : IsMapEvaluation generatorImages reduction13860.relations [1,64,627] reduction13860.output := by lin_cert using reduction13860.terms
def image13861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13861 : InImage map_31_223 image13861 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13861 : Bundle := named_bundle% "RealMapCertificates/relations/basis13861.json"
theorem reductionProof13861 : EqualModuloRelations reduction13861.relations reduction13861.input reduction13861.output := by lin_cert using reduction13861.terms
theorem substitutionProof13861 : IsMapEvaluation generatorImages reduction13861.relations [0,0,188,260] reduction13861.output := by lin_cert using reduction13861.terms
def image13862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13862 : InImage map_31_223 image13862 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13862 : Bundle := named_bundle% "RealMapCertificates/relations/basis13862.json"
theorem reductionProof13862 : EqualModuloRelations reduction13862.relations reduction13862.input reduction13862.output := by lin_cert using reduction13862.terms
theorem substitutionProof13862 : IsMapEvaluation generatorImages reduction13862.relations [0,0,152,324] reduction13862.output := by lin_cert using reduction13862.terms
def map_31_224 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14031 : InImage map_31_224 image14031 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14031 : Bundle := named_bundle% "RealMapCertificates/relations/basis14031.json"
theorem reductionProof14031 : EqualModuloRelations reduction14031.relations reduction14031.input reduction14031.output := by lin_cert using reduction14031.terms
theorem substitutionProof14031 : IsMapEvaluation generatorImages reduction14031.relations [13,13,832] reduction14031.output := by lin_cert using reduction14031.terms
def image14032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14032 : InImage map_31_224 image14032 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14032 : Bundle := named_bundle% "RealMapCertificates/relations/basis14032.json"
theorem reductionProof14032 : EqualModuloRelations reduction14032.relations reduction14032.input reduction14032.output := by lin_cert using reduction14032.terms
theorem substitutionProof14032 : IsMapEvaluation generatorImages reduction14032.relations [8,13,901] reduction14032.output := by lin_cert using reduction14032.terms
def image14033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14033 : InImage map_31_224 image14033 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14033 : Bundle := named_bundle% "RealMapCertificates/relations/basis14033.json"
theorem reductionProof14033 : EqualModuloRelations reduction14033.relations reduction14033.input reduction14033.output := by lin_cert using reduction14033.terms
theorem substitutionProof14033 : IsMapEvaluation generatorImages reduction14033.relations [8,9,13,13,423] reduction14033.output := by lin_cert using reduction14033.terms
def image14034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14034 : InImage map_31_224 image14034 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14034 : Bundle := named_bundle% "RealMapCertificates/relations/basis14034.json"
theorem reductionProof14034 : EqualModuloRelations reduction14034.relations reduction14034.input reduction14034.output := by lin_cert using reduction14034.terms
theorem substitutionProof14034 : IsMapEvaluation generatorImages reduction14034.relations [8,8,8,760] reduction14034.output := by lin_cert using reduction14034.terms
def image14035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14035 : InImage map_31_224 image14035 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14035 : Bundle := named_bundle% "RealMapCertificates/relations/basis14035.json"
theorem reductionProof14035 : EqualModuloRelations reduction14035.relations reduction14035.input reduction14035.output := by lin_cert using reduction14035.terms
theorem substitutionProof14035 : IsMapEvaluation generatorImages reduction14035.relations [0,0,1596] reduction14035.output := by lin_cert using reduction14035.terms
def image14036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14036 : InImage map_31_224 image14036 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14036 : Bundle := named_bundle% "RealMapCertificates/relations/basis14036.json"
theorem reductionProof14036 : EqualModuloRelations reduction14036.relations reduction14036.input reduction14036.output := by lin_cert using reduction14036.terms
theorem substitutionProof14036 : IsMapEvaluation generatorImages reduction14036.relations [0,0,0,0,0,1539] reduction14036.output := by lin_cert using reduction14036.terms
def map_31_225 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14272 : InImage map_31_225 image14272 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14272 : Bundle := named_bundle% "RealMapCertificates/relations/basis14272.json"
theorem reductionProof14272 : EqualModuloRelations reduction14272.relations reduction14272.input reduction14272.output := by lin_cert using reduction14272.terms
theorem substitutionProof14272 : IsMapEvaluation generatorImages reduction14272.relations [13,13,13,13,328] reduction14272.output := by lin_cert using reduction14272.terms
def image14273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14273 : InImage map_31_225 image14273 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14273 : Bundle := named_bundle% "RealMapCertificates/relations/basis14273.json"
theorem reductionProof14273 : EqualModuloRelations reduction14273.relations reduction14273.input reduction14273.output := by lin_cert using reduction14273.terms
theorem substitutionProof14273 : IsMapEvaluation generatorImages reduction14273.relations [8,8,13,705] reduction14273.output := by lin_cert using reduction14273.terms
def image14274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14274 : InImage map_31_225 image14274 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14274 : Bundle := named_bundle% "RealMapCertificates/relations/basis14274.json"
theorem reductionProof14274 : EqualModuloRelations reduction14274.relations reduction14274.input reduction14274.output := by lin_cert using reduction14274.terms
theorem substitutionProof14274 : IsMapEvaluation generatorImages reduction14274.relations [0,0,0,1597] reduction14274.output := by lin_cert using reduction14274.terms
def image14275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14275 : InImage map_31_225 image14275 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14275 : Bundle := named_bundle% "RealMapCertificates/relations/basis14275.json"
theorem reductionProof14275 : EqualModuloRelations reduction14275.relations reduction14275.input reduction14275.output := by lin_cert using reduction14275.terms
theorem substitutionProof14275 : IsMapEvaluation generatorImages reduction14275.relations [0,0,0,0,1571] reduction14275.output := by lin_cert using reduction14275.terms
def map_31_226 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14409 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14409 : InImage map_31_226 image14409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14409 : Bundle := named_bundle% "RealMapCertificates/relations/basis14409.json"
theorem reductionProof14409 : EqualModuloRelations reduction14409.relations reduction14409.input reduction14409.output := by lin_cert using reduction14409.terms
theorem substitutionProof14409 : IsMapEvaluation generatorImages reduction14409.relations [8,1337] reduction14409.output := by lin_cert using reduction14409.terms
def image14410 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14410 : InImage map_31_226 image14410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14410 : Bundle := named_bundle% "RealMapCertificates/relations/basis14410.json"
theorem reductionProof14410 : EqualModuloRelations reduction14410.relations reduction14410.input reduction14410.output := by lin_cert using reduction14410.terms
theorem substitutionProof14410 : IsMapEvaluation generatorImages reduction14410.relations [0,64,667] reduction14410.output := by lin_cert using reduction14410.terms
def image14411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14411 : InImage map_31_226 image14411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14411 : Bundle := named_bundle% "RealMapCertificates/relations/basis14411.json"
theorem reductionProof14411 : EqualModuloRelations reduction14411.relations reduction14411.input reduction14411.output := by lin_cert using reduction14411.terms
theorem substitutionProof14411 : IsMapEvaluation generatorImages reduction14411.relations [0,0,3,1484] reduction14411.output := by lin_cert using reduction14411.terms
def image14412 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14412 : InImage map_31_226 image14412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14412 : Bundle := named_bundle% "RealMapCertificates/relations/basis14412.json"
theorem reductionProof14412 : EqualModuloRelations reduction14412.relations reduction14412.input reduction14412.output := by lin_cert using reduction14412.terms
theorem substitutionProof14412 : IsMapEvaluation generatorImages reduction14412.relations [0,0,0,0,0,1572] reduction14412.output := by lin_cert using reduction14412.terms
def map_31_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14608 : InImage map_31_227 image14608 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14608 : Bundle := named_bundle% "RealMapCertificates/relations/basis14608.json"
theorem reductionProof14608 : EqualModuloRelations reduction14608.relations reduction14608.input reduction14608.output := by lin_cert using reduction14608.terms
theorem substitutionProof14608 : IsMapEvaluation generatorImages reduction14608.relations [1682] reduction14608.output := by lin_cert using reduction14608.terms
def image14609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14609 : InImage map_31_227 image14609 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14609 : Bundle := named_bundle% "RealMapCertificates/relations/basis14609.json"
theorem reductionProof14609 : EqualModuloRelations reduction14609.relations reduction14609.input reduction14609.output := by lin_cert using reduction14609.terms
theorem substitutionProof14609 : IsMapEvaluation generatorImages reduction14609.relations [9,13,901] reduction14609.output := by lin_cert using reduction14609.terms
def image14610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14610 : InImage map_31_227 image14610 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14610 : Bundle := named_bundle% "RealMapCertificates/relations/basis14610.json"
theorem reductionProof14610 : EqualModuloRelations reduction14610.relations reduction14610.input reduction14610.output := by lin_cert using reduction14610.terms
theorem substitutionProof14610 : IsMapEvaluation generatorImages reduction14610.relations [8,13,13,13,423] reduction14610.output := by lin_cert using reduction14610.terms
def image14611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14611 : InImage map_31_227 image14611 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14611 : Bundle := named_bundle% "RealMapCertificates/relations/basis14611.json"
theorem reductionProof14611 : EqualModuloRelations reduction14611.relations reduction14611.input reduction14611.output := by lin_cert using reduction14611.terms
theorem substitutionProof14611 : IsMapEvaluation generatorImages reduction14611.relations [8,8,8,798] reduction14611.output := by lin_cert using reduction14611.terms
def map_31_228 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14841 : InImage map_31_228 image14841 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14841 : Bundle := named_bundle% "RealMapCertificates/relations/basis14841.json"
theorem reductionProof14841 : EqualModuloRelations reduction14841.relations reduction14841.input reduction14841.output := by lin_cert using reduction14841.terms
theorem substitutionProof14841 : IsMapEvaluation generatorImages reduction14841.relations [64,64,188] reduction14841.output := by lin_cert using reduction14841.terms
def image14842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14842 : InImage map_31_228 image14842 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14842 : Bundle := named_bundle% "RealMapCertificates/relations/basis14842.json"
theorem reductionProof14842 : EqualModuloRelations reduction14842.relations reduction14842.input reduction14842.output := by lin_cert using reduction14842.terms
theorem substitutionProof14842 : IsMapEvaluation generatorImages reduction14842.relations [13,13,13,13,360] reduction14842.output := by lin_cert using reduction14842.terms
def image14843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14843 : InImage map_31_228 image14843 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14843 : Bundle := named_bundle% "RealMapCertificates/relations/basis14843.json"
theorem reductionProof14843 : EqualModuloRelations reduction14843.relations reduction14843.input reduction14843.output := by lin_cert using reduction14843.terms
theorem substitutionProof14843 : IsMapEvaluation generatorImages reduction14843.relations [8,9,13,705] reduction14843.output := by lin_cert using reduction14843.terms
def image14844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14844 : InImage map_31_228 image14844 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14844 : Bundle := named_bundle% "RealMapCertificates/relations/basis14844.json"
theorem reductionProof14844 : EqualModuloRelations reduction14844.relations reduction14844.input reduction14844.output := by lin_cert using reduction14844.terms
theorem substitutionProof14844 : IsMapEvaluation generatorImages reduction14844.relations [2,1621] reduction14844.output := by lin_cert using reduction14844.terms
def map_31_229 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15008 : InImage map_31_229 image15008 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15008 : Bundle := named_bundle% "RealMapCertificates/relations/basis15008.json"
theorem reductionProof15008 : EqualModuloRelations reduction15008.relations reduction15008.input reduction15008.output := by lin_cert using reduction15008.terms
theorem substitutionProof15008 : IsMapEvaluation generatorImages reduction15008.relations [1720] reduction15008.output := by lin_cert using reduction15008.terms
def image15009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15009 : InImage map_31_229 image15009 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15009 : Bundle := named_bundle% "RealMapCertificates/relations/basis15009.json"
theorem reductionProof15009 : EqualModuloRelations reduction15009.relations reduction15009.input reduction15009.output := by lin_cert using reduction15009.terms
theorem substitutionProof15009 : IsMapEvaluation generatorImages reduction15009.relations [8,8,1062] reduction15009.output := by lin_cert using reduction15009.terms
def image15010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15010 : InImage map_31_229 image15010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15010 : Bundle := named_bundle% "RealMapCertificates/relations/basis15010.json"
theorem reductionProof15010 : EqualModuloRelations reduction15010.relations reduction15010.input reduction15010.output := by lin_cert using reduction15010.terms
theorem substitutionProof15010 : IsMapEvaluation generatorImages reduction15010.relations [0,0,0,209,260] reduction15010.output := by lin_cert using reduction15010.terms
def map_31_230 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15209 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15209 : InImage map_31_230 image15209 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15209 : Bundle := named_bundle% "RealMapCertificates/relations/basis15209.json"
theorem reductionProof15209 : EqualModuloRelations reduction15209.relations reduction15209.input reduction15209.output := by lin_cert using reduction15209.terms
theorem substitutionProof15209 : IsMapEvaluation generatorImages reduction15209.relations [1739] reduction15209.output := by lin_cert using reduction15209.terms
def image15210 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15210 : InImage map_31_230 image15210 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15210 : Bundle := named_bundle% "RealMapCertificates/relations/basis15210.json"
theorem reductionProof15210 : EqualModuloRelations reduction15210.relations reduction15210.input reduction15210.output := by lin_cert using reduction15210.terms
theorem substitutionProof15210 : IsMapEvaluation generatorImages reduction15210.relations [13,13,901] reduction15210.output := by lin_cert using reduction15210.terms
def image15211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15211 : InImage map_31_230 image15211 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15211 : Bundle := named_bundle% "RealMapCertificates/relations/basis15211.json"
theorem reductionProof15211 : EqualModuloRelations reduction15211.relations reduction15211.input reduction15211.output := by lin_cert using reduction15211.terms
theorem substitutionProof15211 : IsMapEvaluation generatorImages reduction15211.relations [9,13,941] reduction15211.output := by lin_cert using reduction15211.terms
def image15212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15212 : InImage map_31_230 image15212 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15212 : Bundle := named_bundle% "RealMapCertificates/relations/basis15212.json"
theorem reductionProof15212 : EqualModuloRelations reduction15212.relations reduction15212.input reduction15212.output := by lin_cert using reduction15212.terms
theorem substitutionProof15212 : IsMapEvaluation generatorImages reduction15212.relations [9,13,13,13,423] reduction15212.output := by lin_cert using reduction15212.terms
def image15213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15213 : InImage map_31_230 image15213 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15213 : Bundle := named_bundle% "RealMapCertificates/relations/basis15213.json"
theorem reductionProof15213 : EqualModuloRelations reduction15213.relations reduction15213.input reduction15213.output := by lin_cert using reduction15213.terms
theorem substitutionProof15213 : IsMapEvaluation generatorImages reduction15213.relations [8,8,8,80,209] reduction15213.output := by lin_cert using reduction15213.terms
def image15214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15214 : InImage map_31_230 image15214 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15214 : Bundle := named_bundle% "RealMapCertificates/relations/basis15214.json"
theorem reductionProof15214 : EqualModuloRelations reduction15214.relations reduction15214.input reduction15214.output := by lin_cert using reduction15214.terms
theorem substitutionProof15214 : IsMapEvaluation generatorImages reduction15214.relations [1,1689] reduction15214.output := by lin_cert using reduction15214.terms
def image15215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15215 : InImage map_31_230 image15215 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15215 : Bundle := named_bundle% "RealMapCertificates/relations/basis15215.json"
theorem reductionProof15215 : EqualModuloRelations reduction15215.relations reduction15215.input reduction15215.output := by lin_cert using reduction15215.terms
theorem substitutionProof15215 : IsMapEvaluation generatorImages reduction15215.relations [0,0,64,706] reduction15215.output := by lin_cert using reduction15215.terms
def image15216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15216 : InImage map_31_230 image15216 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15216 : Bundle := named_bundle% "RealMapCertificates/relations/basis15216.json"
theorem reductionProof15216 : EqualModuloRelations reduction15216.relations reduction15216.input reduction15216.output := by lin_cert using reduction15216.terms
theorem substitutionProof15216 : IsMapEvaluation generatorImages reduction15216.relations [0,0,0,0,1652] reduction15216.output := by lin_cert using reduction15216.terms
def map_31_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15466 : InImage map_31_231 image15466 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15466 : Bundle := named_bundle% "RealMapCertificates/relations/basis15466.json"
theorem reductionProof15466 : EqualModuloRelations reduction15466.relations reduction15466.input reduction15466.output := by lin_cert using reduction15466.terms
theorem substitutionProof15466 : IsMapEvaluation generatorImages reduction15466.relations [64,72,188] reduction15466.output := by lin_cert using reduction15466.terms
def image15467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15467 : InImage map_31_231 image15467 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15467 : Bundle := named_bundle% "RealMapCertificates/relations/basis15467.json"
theorem reductionProof15467 : EqualModuloRelations reduction15467.relations reduction15467.input reduction15467.output := by lin_cert using reduction15467.terms
theorem substitutionProof15467 : IsMapEvaluation generatorImages reduction15467.relations [13,13,13,23,287] reduction15467.output := by lin_cert using reduction15467.terms
def image15468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15468 : InImage map_31_231 image15468 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15468 : Bundle := named_bundle% "RealMapCertificates/relations/basis15468.json"
theorem reductionProof15468 : EqualModuloRelations reduction15468.relations reduction15468.input reduction15468.output := by lin_cert using reduction15468.terms
theorem substitutionProof15468 : IsMapEvaluation generatorImages reduction15468.relations [8,13,13,705] reduction15468.output := by lin_cert using reduction15468.terms
def image15469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15469 : InImage map_31_231 image15469 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15469 : Bundle := named_bundle% "RealMapCertificates/relations/basis15469.json"
theorem reductionProof15469 : EqualModuloRelations reduction15469.relations reduction15469.input reduction15469.output := by lin_cert using reduction15469.terms
theorem substitutionProof15469 : IsMapEvaluation generatorImages reduction15469.relations [0,0,0,0,64,693] reduction15469.output := by lin_cert using reduction15469.terms
def map_31_232 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15640 : InImage map_31_232 image15640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15640 : Bundle := named_bundle% "RealMapCertificates/relations/basis15640.json"
theorem reductionProof15640 : EqualModuloRelations reduction15640.relations reduction15640.input reduction15640.output := by lin_cert using reduction15640.terms
theorem substitutionProof15640 : IsMapEvaluation generatorImages reduction15640.relations [1774] reduction15640.output := by lin_cert using reduction15640.terms
def image15641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15641 : InImage map_31_232 image15641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15641 : Bundle := named_bundle% "RealMapCertificates/relations/basis15641.json"
theorem reductionProof15641 : EqualModuloRelations reduction15641.relations reduction15641.input reduction15641.output := by lin_cert using reduction15641.terms
theorem substitutionProof15641 : IsMapEvaluation generatorImages reduction15641.relations [1773] reduction15641.output := by lin_cert using reduction15641.terms
def image15642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15642 : InImage map_31_232 image15642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15642 : Bundle := named_bundle% "RealMapCertificates/relations/basis15642.json"
theorem reductionProof15642 : EqualModuloRelations reduction15642.relations reduction15642.input reduction15642.output := by lin_cert using reduction15642.terms
theorem substitutionProof15642 : IsMapEvaluation generatorImages reduction15642.relations [8,9,1062] reduction15642.output := by lin_cert using reduction15642.terms
def image15643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15643 : InImage map_31_232 image15643 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15643 : Bundle := named_bundle% "RealMapCertificates/relations/basis15643.json"
theorem reductionProof15643 : EqualModuloRelations reduction15643.relations reduction15643.input reduction15643.output := by lin_cert using reduction15643.terms
theorem substitutionProof15643 : IsMapEvaluation generatorImages reduction15643.relations [0,0,0,0,0,0,1655] reduction15643.output := by lin_cert using reduction15643.terms
def map_31_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15864 : InImage map_31_233 image15864 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15864 : Bundle := named_bundle% "RealMapCertificates/relations/basis15864.json"
theorem reductionProof15864 : EqualModuloRelations reduction15864.relations reduction15864.input reduction15864.output := by lin_cert using reduction15864.terms
theorem substitutionProof15864 : IsMapEvaluation generatorImages reduction15864.relations [13,13,941] reduction15864.output := by lin_cert using reduction15864.terms
def image15865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15865 : InImage map_31_233 image15865 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15865 : Bundle := named_bundle% "RealMapCertificates/relations/basis15865.json"
theorem reductionProof15865 : EqualModuloRelations reduction15865.relations reduction15865.input reduction15865.output := by lin_cert using reduction15865.terms
theorem substitutionProof15865 : IsMapEvaluation generatorImages reduction15865.relations [13,13,13,13,423] reduction15865.output := by lin_cert using reduction15865.terms
def image15866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15866 : InImage map_31_233 image15866 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15866 : Bundle := named_bundle% "RealMapCertificates/relations/basis15866.json"
theorem reductionProof15866 : EqualModuloRelations reduction15866.relations reduction15866.input reduction15866.output := by lin_cert using reduction15866.terms
theorem substitutionProof15866 : IsMapEvaluation generatorImages reduction15866.relations [8,1473] reduction15866.output := by lin_cert using reduction15866.terms
def image15867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15867 : InImage map_31_233 image15867 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15867 : Bundle := named_bundle% "RealMapCertificates/relations/basis15867.json"
theorem reductionProof15867 : EqualModuloRelations reduction15867.relations reduction15867.input reduction15867.output := by lin_cert using reduction15867.terms
theorem substitutionProof15867 : IsMapEvaluation generatorImages reduction15867.relations [8,8,9,80,209] reduction15867.output := by lin_cert using reduction15867.terms
def image15868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15868 : InImage map_31_233 image15868 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15868 : Bundle := named_bundle% "RealMapCertificates/relations/basis15868.json"
theorem reductionProof15868 : EqualModuloRelations reduction15868.relations reduction15868.input reduction15868.output := by lin_cert using reduction15868.terms
theorem substitutionProof15868 : IsMapEvaluation generatorImages reduction15868.relations [5,1539] reduction15868.output := by lin_cert using reduction15868.terms
def image15869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15869 : InImage map_31_233 image15869 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15869 : Bundle := named_bundle% "RealMapCertificates/relations/basis15869.json"
theorem reductionProof15869 : EqualModuloRelations reduction15869.relations reduction15869.input reduction15869.output := by lin_cert using reduction15869.terms
theorem substitutionProof15869 : IsMapEvaluation generatorImages reduction15869.relations [0,1775] reduction15869.output := by lin_cert using reduction15869.terms
def map_31_234 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16115 : InImage map_31_234 image16115 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16115 : Bundle := named_bundle% "RealMapCertificates/relations/basis16115.json"
theorem reductionProof16115 : EqualModuloRelations reduction16115.relations reduction16115.input reduction16115.output := by lin_cert using reduction16115.terms
theorem substitutionProof16115 : IsMapEvaluation generatorImages reduction16115.relations [16,187,188] reduction16115.output := by lin_cert using reduction16115.terms
def image16116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16116 : InImage map_31_234 image16116 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16116 : Bundle := named_bundle% "RealMapCertificates/relations/basis16116.json"
theorem reductionProof16116 : EqualModuloRelations reduction16116.relations reduction16116.input reduction16116.output := by lin_cert using reduction16116.terms
theorem substitutionProof16116 : IsMapEvaluation generatorImages reduction16116.relations [9,13,13,705] reduction16116.output := by lin_cert using reduction16116.terms
def image16117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16117 : InImage map_31_234 image16117 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16117 : Bundle := named_bundle% "RealMapCertificates/relations/basis16117.json"
theorem reductionProof16117 : EqualModuloRelations reduction16117.relations reduction16117.input reduction16117.output := by lin_cert using reduction16117.terms
theorem substitutionProof16117 : IsMapEvaluation generatorImages reduction16117.relations [0,64,64,209] reduction16117.output := by lin_cert using reduction16117.terms
def map_31_235 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16303 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16303 : InImage map_31_235 image16303 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16303 : Bundle := named_bundle% "RealMapCertificates/relations/basis16303.json"
theorem reductionProof16303 : EqualModuloRelations reduction16303.relations reduction16303.input reduction16303.output := by lin_cert using reduction16303.terms
theorem substitutionProof16303 : IsMapEvaluation generatorImages reduction16303.relations [1859] reduction16303.output := by lin_cert using reduction16303.terms
def image16304 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16304 : InImage map_31_235 image16304 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16304 : Bundle := named_bundle% "RealMapCertificates/relations/basis16304.json"
theorem reductionProof16304 : EqualModuloRelations reduction16304.relations reduction16304.input reduction16304.output := by lin_cert using reduction16304.terms
theorem substitutionProof16304 : IsMapEvaluation generatorImages reduction16304.relations [1858] reduction16304.output := by lin_cert using reduction16304.terms
def image16305 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16305 : InImage map_31_235 image16305 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16305 : Bundle := named_bundle% "RealMapCertificates/relations/basis16305.json"
theorem reductionProof16305 : EqualModuloRelations reduction16305.relations reduction16305.input reduction16305.output := by lin_cert using reduction16305.terms
theorem substitutionProof16305 : IsMapEvaluation generatorImages reduction16305.relations [8,13,1062] reduction16305.output := by lin_cert using reduction16305.terms
def image16306 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16306 : InImage map_31_235 image16306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16306 : Bundle := named_bundle% "RealMapCertificates/relations/basis16306.json"
theorem reductionProof16306 : EqualModuloRelations reduction16306.relations reduction16306.input reduction16306.output := by lin_cert using reduction16306.terms
theorem substitutionProof16306 : IsMapEvaluation generatorImages reduction16306.relations [1,64,64,209] reduction16306.output := by lin_cert using reduction16306.terms
def image16307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16307 : InImage map_31_235 image16307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16307 : Bundle := named_bundle% "RealMapCertificates/relations/basis16307.json"
theorem reductionProof16307 : EqualModuloRelations reduction16307.relations reduction16307.input reduction16307.output := by lin_cert using reduction16307.terms
theorem substitutionProof16307 : IsMapEvaluation generatorImages reduction16307.relations [0,0,64,760] reduction16307.output := by lin_cert using reduction16307.terms
def map_31_236 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image16538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16538 : InImage map_31_236 image16538 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction16538 : Bundle := named_bundle% "RealMapCertificates/relations/basis16538.json"
theorem reductionProof16538 : EqualModuloRelations reduction16538.relations reduction16538.input reduction16538.output := by lin_cert using reduction16538.terms
theorem substitutionProof16538 : IsMapEvaluation generatorImages reduction16538.relations [13,13,979] reduction16538.output := by lin_cert using reduction16538.terms
def image16539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16539 : InImage map_31_236 image16539 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction16539 : Bundle := named_bundle% "RealMapCertificates/relations/basis16539.json"
theorem reductionProof16539 : EqualModuloRelations reduction16539.relations reduction16539.input reduction16539.output := by lin_cert using reduction16539.terms
theorem substitutionProof16539 : IsMapEvaluation generatorImages reduction16539.relations [8,1518] reduction16539.output := by lin_cert using reduction16539.terms
def image16540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16540 : InImage map_31_236 image16540 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction16540 : Bundle := named_bundle% "RealMapCertificates/relations/basis16540.json"
theorem reductionProof16540 : EqualModuloRelations reduction16540.relations reduction16540.input reduction16540.output := by lin_cert using reduction16540.terms
theorem substitutionProof16540 : IsMapEvaluation generatorImages reduction16540.relations [8,8,13,80,209] reduction16540.output := by lin_cert using reduction16540.terms
def image16541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16541 : InImage map_31_236 image16541 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction16541 : Bundle := named_bundle% "RealMapCertificates/relations/basis16541.json"
theorem reductionProof16541 : EqualModuloRelations reduction16541.relations reduction16541.input reduction16541.output := by lin_cert using reduction16541.terms
theorem substitutionProof16541 : IsMapEvaluation generatorImages reduction16541.relations [1,1834] reduction16541.output := by lin_cert using reduction16541.terms
def image16542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16542 : InImage map_31_236 image16542 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction16542 : Bundle := named_bundle% "RealMapCertificates/relations/basis16542.json"
theorem reductionProof16542 : EqualModuloRelations reduction16542.relations reduction16542.input reduction16542.output := by lin_cert using reduction16542.terms
theorem substitutionProof16542 : IsMapEvaluation generatorImages reduction16542.relations [0,1861] reduction16542.output := by lin_cert using reduction16542.terms
def image16543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16543 : InImage map_31_236 image16543 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction16543 : Bundle := named_bundle% "RealMapCertificates/relations/basis16543.json"
theorem reductionProof16543 : EqualModuloRelations reduction16543.relations reduction16543.input reduction16543.output := by lin_cert using reduction16543.terms
theorem substitutionProof16543 : IsMapEvaluation generatorImages reduction16543.relations [0,1860] reduction16543.output := by lin_cert using reduction16543.terms
def image16544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16544 : InImage map_31_236 image16544 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction16544 : Bundle := named_bundle% "RealMapCertificates/relations/basis16544.json"
theorem reductionProof16544 : EqualModuloRelations reduction16544.relations reduction16544.input reduction16544.output := by lin_cert using reduction16544.terms
theorem substitutionProof16544 : IsMapEvaluation generatorImages reduction16544.relations [0,250,260] reduction16544.output := by lin_cert using reduction16544.terms
def image16545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16545 : InImage map_31_236 image16545 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction16545 : Bundle := named_bundle% "RealMapCertificates/relations/basis16545.json"
theorem reductionProof16545 : EqualModuloRelations reduction16545.relations reduction16545.input reduction16545.output := by lin_cert using reduction16545.terms
theorem substitutionProof16545 : IsMapEvaluation generatorImages reduction16545.relations [0,0,0,0,0,1758] reduction16545.output := by lin_cert using reduction16545.terms
def map_31_237 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16795 : InImage map_31_237 image16795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16795 : Bundle := named_bundle% "RealMapCertificates/relations/basis16795.json"
theorem reductionProof16795 : EqualModuloRelations reduction16795.relations reduction16795.input reduction16795.output := by lin_cert using reduction16795.terms
theorem substitutionProof16795 : IsMapEvaluation generatorImages reduction16795.relations [1902] reduction16795.output := by lin_cert using reduction16795.terms
def image16796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16796 : InImage map_31_237 image16796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16796 : Bundle := named_bundle% "RealMapCertificates/relations/basis16796.json"
theorem reductionProof16796 : EqualModuloRelations reduction16796.relations reduction16796.input reduction16796.output := by lin_cert using reduction16796.terms
theorem substitutionProof16796 : IsMapEvaluation generatorImages reduction16796.relations [13,13,13,705] reduction16796.output := by lin_cert using reduction16796.terms
def image16797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16797 : InImage map_31_237 image16797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16797 : Bundle := named_bundle% "RealMapCertificates/relations/basis16797.json"
theorem reductionProof16797 : EqualModuloRelations reduction16797.relations reduction16797.input reduction16797.output := by lin_cert using reduction16797.terms
theorem substitutionProof16797 : IsMapEvaluation generatorImages reduction16797.relations [8,187,255] reduction16797.output := by lin_cert using reduction16797.terms
def image16798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16798 : InImage map_31_237 image16798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16798 : Bundle := named_bundle% "RealMapCertificates/relations/basis16798.json"
theorem reductionProof16798 : EqualModuloRelations reduction16798.relations reduction16798.input reduction16798.output := by lin_cert using reduction16798.terms
theorem substitutionProof16798 : IsMapEvaluation generatorImages reduction16798.relations [0,210,324] reduction16798.output := by lin_cert using reduction16798.terms
def image16799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16799 : InImage map_31_237 image16799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16799 : Bundle := named_bundle% "RealMapCertificates/relations/basis16799.json"
theorem reductionProof16799 : EqualModuloRelations reduction16799.relations reduction16799.input reduction16799.output := by lin_cert using reduction16799.terms
theorem substitutionProof16799 : IsMapEvaluation generatorImages reduction16799.relations [0,0,0,0,64,762] reduction16799.output := by lin_cert using reduction16799.terms
def image16800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16800 : InImage map_31_237 image16800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16800 : Bundle := named_bundle% "RealMapCertificates/relations/basis16800.json"
theorem reductionProof16800 : EqualModuloRelations reduction16800.relations reduction16800.input reduction16800.output := by lin_cert using reduction16800.terms
theorem substitutionProof16800 : IsMapEvaluation generatorImages reduction16800.relations [0,0,0,0,0,0,1759] reduction16800.output := by lin_cert using reduction16800.terms
end RealMapCertificates
