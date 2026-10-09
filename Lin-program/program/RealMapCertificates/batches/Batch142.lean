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
  | 23 => [[7,7]]
  | 64 => []
  | 67 => []
  | 68 => []
  | 72 => []
  | 80 => []
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 213 => []
  | 225 => [[0,4,4,4,6,12]]
  | 246 => []
  | 250 => []
  | 260 => []
  | 262 => []
  | 280 => []
  | 292 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 331 => []
  | 347 => []
  | 411 => []
  | 417 => []
  | 455 => []
  | 518 => []
  | 619 => []
  | 691 => []
  | 692 => []
  | 822 => []
  | 832 => []
  | 834 => []
  | 877 => []
  | 878 => []
  | 945 => []
  | 978 => []
  | 1050 => []
  | 1051 => []
  | 1062 => []
  | 1442 => []
  | 1476 => []
  | 1539 => []
  | 1570 => []
  | 1652 => []
  | 1721 => []
  | 1756 => []
  | 1758 => []
  | 1775 => []
  | 1779 => []
  | 1834 => []
  | 1860 => []
  | 1861 => []
  | 1862 => []
  | 1904 => []
  | 1908 => []
  | 1930 => []
  | 1931 => []
  | 1932 => []
  | 1933 => []
  | 1935 => []
  | 1938 => []
  | 1969 => []
  | 1971 => []
  | 1997 => []
  | 2040 => []
  | 2097 => []
  | 2098 => []
  | 2126 => []
  | 2127 => []
  | 2167 => []
  | 2200 => []
  | 2201 => []
  | 2279 => []
  | 2305 => []
  | 2306 => []
  | 2307 => []
  | 2308 => []
  | 2309 => []
  | 2311 => []
  | 2339 => []
  | 2340 => []
  | 2341 => []
  | 2342 => []
  | 2343 => []
  | 2380 => []
  | 2381 => []
  | 2408 => []
  | 2409 => []
  | 2410 => []
  | 2442 => []
  | 2489 => []
  | 2490 => []
  | 2549 => []
  | _ => []
def map_31_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16972 : InImage map_31_238 image16972 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16972 : Bundle := named_bundle% "RealMapCertificates/relations/basis16972.json"
theorem reductionProof16972 : EqualModuloRelations reduction16972.relations reduction16972.input reduction16972.output := by lin_cert using reduction16972.terms
theorem substitutionProof16972 : IsMapEvaluation generatorImages reduction16972.relations [1932] reduction16972.output := by lin_cert using reduction16972.terms
def image16973 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16973 : InImage map_31_238 image16973 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16973 : Bundle := named_bundle% "RealMapCertificates/relations/basis16973.json"
theorem reductionProof16973 : EqualModuloRelations reduction16973.relations reduction16973.input reduction16973.output := by lin_cert using reduction16973.terms
theorem substitutionProof16973 : IsMapEvaluation generatorImages reduction16973.relations [1931] reduction16973.output := by lin_cert using reduction16973.terms
def image16974 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16974 : InImage map_31_238 image16974 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16974 : Bundle := named_bundle% "RealMapCertificates/relations/basis16974.json"
theorem reductionProof16974 : EqualModuloRelations reduction16974.relations reduction16974.input reduction16974.output := by lin_cert using reduction16974.terms
theorem substitutionProof16974 : IsMapEvaluation generatorImages reduction16974.relations [1930] reduction16974.output := by lin_cert using reduction16974.terms
def image16975 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16975 : InImage map_31_238 image16975 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16975 : Bundle := named_bundle% "RealMapCertificates/relations/basis16975.json"
theorem reductionProof16975 : EqualModuloRelations reduction16975.relations reduction16975.input reduction16975.output := by lin_cert using reduction16975.terms
theorem substitutionProof16975 : IsMapEvaluation generatorImages reduction16975.relations [9,13,1062] reduction16975.output := by lin_cert using reduction16975.terms
def image16976 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16976 : InImage map_31_238 image16976 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16976 : Bundle := named_bundle% "RealMapCertificates/relations/basis16976.json"
theorem reductionProof16976 : EqualModuloRelations reduction16976.relations reduction16976.input reduction16976.output := by lin_cert using reduction16976.terms
theorem substitutionProof16976 : IsMapEvaluation generatorImages reduction16976.relations [0,8,1539] reduction16976.output := by lin_cert using reduction16976.terms
def image16977 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16977 : InImage map_31_238 image16977 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16977 : Bundle := named_bundle% "RealMapCertificates/relations/basis16977.json"
theorem reductionProof16977 : EqualModuloRelations reduction16977.relations reduction16977.input reduction16977.output := by lin_cert using reduction16977.terms
theorem substitutionProof16977 : IsMapEvaluation generatorImages reduction16977.relations [0,0,0,0,0,0,1779] reduction16977.output := by lin_cert using reduction16977.terms
def map_31_239 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17230 : InImage map_31_239 image17230 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17230 : Bundle := named_bundle% "RealMapCertificates/relations/basis17230.json"
theorem reductionProof17230 : EqualModuloRelations reduction17230.relations reduction17230.input reduction17230.output := by lin_cert using reduction17230.terms
theorem substitutionProof17230 : IsMapEvaluation generatorImages reduction17230.relations [64,834] reduction17230.output := by lin_cert using reduction17230.terms
def image17231 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17231 : InImage map_31_239 image17231 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17231 : Bundle := named_bundle% "RealMapCertificates/relations/basis17231.json"
theorem reductionProof17231 : EqualModuloRelations reduction17231.relations reduction17231.input reduction17231.output := by lin_cert using reduction17231.terms
theorem substitutionProof17231 : IsMapEvaluation generatorImages reduction17231.relations [13,23,877] reduction17231.output := by lin_cert using reduction17231.terms
def image17232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17232 : InImage map_31_239 image17232 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17232 : Bundle := named_bundle% "RealMapCertificates/relations/basis17232.json"
theorem reductionProof17232 : EqualModuloRelations reduction17232.relations reduction17232.input reduction17232.output := by lin_cert using reduction17232.terms
theorem substitutionProof17232 : IsMapEvaluation generatorImages reduction17232.relations [13,13,13,13,13,262] reduction17232.output := by lin_cert using reduction17232.terms
def image17233 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17233 : InImage map_31_239 image17233 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17233 : Bundle := named_bundle% "RealMapCertificates/relations/basis17233.json"
theorem reductionProof17233 : EqualModuloRelations reduction17233.relations reduction17233.input reduction17233.output := by lin_cert using reduction17233.terms
theorem substitutionProof17233 : IsMapEvaluation generatorImages reduction17233.relations [8,1570] reduction17233.output := by lin_cert using reduction17233.terms
def image17234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17234 : InImage map_31_239 image17234 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17234 : Bundle := named_bundle% "RealMapCertificates/relations/basis17234.json"
theorem reductionProof17234 : EqualModuloRelations reduction17234.relations reduction17234.input reduction17234.output := by lin_cert using reduction17234.terms
theorem substitutionProof17234 : IsMapEvaluation generatorImages reduction17234.relations [8,9,13,80,209] reduction17234.output := by lin_cert using reduction17234.terms
def image17235 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17235 : InImage map_31_239 image17235 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17235 : Bundle := named_bundle% "RealMapCertificates/relations/basis17235.json"
theorem reductionProof17235 : EqualModuloRelations reduction17235.relations reduction17235.input reduction17235.output := by lin_cert using reduction17235.terms
theorem substitutionProof17235 : IsMapEvaluation generatorImages reduction17235.relations [2,1861] reduction17235.output := by lin_cert using reduction17235.terms
def image17236 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17236 : InImage map_31_239 image17236 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17236 : Bundle := named_bundle% "RealMapCertificates/relations/basis17236.json"
theorem reductionProof17236 : EqualModuloRelations reduction17236.relations reduction17236.input reduction17236.output := by lin_cert using reduction17236.terms
theorem substitutionProof17236 : IsMapEvaluation generatorImages reduction17236.relations [1,8,1539] reduction17236.output := by lin_cert using reduction17236.terms
def image17237 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17237 : InImage map_31_239 image17237 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17237 : Bundle := named_bundle% "RealMapCertificates/relations/basis17237.json"
theorem reductionProof17237 : EqualModuloRelations reduction17237.relations reduction17237.input reduction17237.output := by lin_cert using reduction17237.terms
theorem substitutionProof17237 : IsMapEvaluation generatorImages reduction17237.relations [0,1933] reduction17237.output := by lin_cert using reduction17237.terms
def map_31_240 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17499 : InImage map_31_240 image17499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17499 : Bundle := named_bundle% "RealMapCertificates/relations/basis17499.json"
theorem reductionProof17499 : EqualModuloRelations reduction17499.relations reduction17499.input reduction17499.output := by lin_cert using reduction17499.terms
theorem substitutionProof17499 : IsMapEvaluation generatorImages reduction17499.relations [13,13,13,13,23,213] reduction17499.output := by lin_cert using reduction17499.terms
def image17500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17500 : InImage map_31_240 image17500 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17500 : Bundle := named_bundle% "RealMapCertificates/relations/basis17500.json"
theorem reductionProof17500 : EqualModuloRelations reduction17500.relations reduction17500.input reduction17500.output := by lin_cert using reduction17500.terms
theorem substitutionProof17500 : IsMapEvaluation generatorImages reduction17500.relations [8,8,187,188] reduction17500.output := by lin_cert using reduction17500.terms
def image17501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17501 : InImage map_31_240 image17501 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17501 : Bundle := named_bundle% "RealMapCertificates/relations/basis17501.json"
theorem reductionProof17501 : EqualModuloRelations reduction17501.relations reduction17501.input reduction17501.output := by lin_cert using reduction17501.terms
theorem substitutionProof17501 : IsMapEvaluation generatorImages reduction17501.relations [3,1775] reduction17501.output := by lin_cert using reduction17501.terms
def image17502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17502 : InImage map_31_240 image17502 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17502 : Bundle := named_bundle% "RealMapCertificates/relations/basis17502.json"
theorem reductionProof17502 : EqualModuloRelations reduction17502.relations reduction17502.input reduction17502.output := by lin_cert using reduction17502.terms
theorem substitutionProof17502 : IsMapEvaluation generatorImages reduction17502.relations [1,13,1442] reduction17502.output := by lin_cert using reduction17502.terms
def map_31_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17738 : InImage map_31_241 image17738 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17738 : Bundle := named_bundle% "RealMapCertificates/relations/basis17738.json"
theorem reductionProof17738 : EqualModuloRelations reduction17738.relations reduction17738.input reduction17738.output := by lin_cert using reduction17738.terms
theorem substitutionProof17738 : IsMapEvaluation generatorImages reduction17738.relations [2040] reduction17738.output := by lin_cert using reduction17738.terms
def image17739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17739 : InImage map_31_241 image17739 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17739 : Bundle := named_bundle% "RealMapCertificates/relations/basis17739.json"
theorem reductionProof17739 : EqualModuloRelations reduction17739.relations reduction17739.input reduction17739.output := by lin_cert using reduction17739.terms
theorem substitutionProof17739 : IsMapEvaluation generatorImages reduction17739.relations [260,280] reduction17739.output := by lin_cert using reduction17739.terms
def image17740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17740 : InImage map_31_241 image17740 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17740 : Bundle := named_bundle% "RealMapCertificates/relations/basis17740.json"
theorem reductionProof17740 : EqualModuloRelations reduction17740.relations reduction17740.input reduction17740.output := by lin_cert using reduction17740.terms
theorem substitutionProof17740 : IsMapEvaluation generatorImages reduction17740.relations [13,13,1062] reduction17740.output := by lin_cert using reduction17740.terms
def image17741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17741 : InImage map_31_241 image17741 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17741 : Bundle := named_bundle% "RealMapCertificates/relations/basis17741.json"
theorem reductionProof17741 : EqualModuloRelations reduction17741.relations reduction17741.input reduction17741.output := by lin_cert using reduction17741.terms
theorem substitutionProof17741 : IsMapEvaluation generatorImages reduction17741.relations [0,67,832] reduction17741.output := by lin_cert using reduction17741.terms
def image17742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17742 : InImage map_31_241 image17742 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17742 : Bundle := named_bundle% "RealMapCertificates/relations/basis17742.json"
theorem reductionProof17742 : EqualModuloRelations reduction17742.relations reduction17742.input reduction17742.output := by lin_cert using reduction17742.terms
theorem substitutionProof17742 : IsMapEvaluation generatorImages reduction17742.relations [0,0,0,209,347] reduction17742.output := by lin_cert using reduction17742.terms
def map_31_242 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18009 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18009 : InImage map_31_242 image18009 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18009 : Bundle := named_bundle% "RealMapCertificates/relations/basis18009.json"
theorem reductionProof18009 : EqualModuloRelations reduction18009.relations reduction18009.input reduction18009.output := by lin_cert using reduction18009.terms
theorem substitutionProof18009 : IsMapEvaluation generatorImages reduction18009.relations [64,878] reduction18009.output := by lin_cert using reduction18009.terms
def image18010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18010 : InImage map_31_242 image18010 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18010 : Bundle := named_bundle% "RealMapCertificates/relations/basis18010.json"
theorem reductionProof18010 : EqualModuloRelations reduction18010.relations reduction18010.input reduction18010.output := by lin_cert using reduction18010.terms
theorem substitutionProof18010 : IsMapEvaluation generatorImages reduction18010.relations [9,1570] reduction18010.output := by lin_cert using reduction18010.terms
def image18011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18011 : InImage map_31_242 image18011 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18011 : Bundle := named_bundle% "RealMapCertificates/relations/basis18011.json"
theorem reductionProof18011 : EqualModuloRelations reduction18011.relations reduction18011.input reduction18011.output := by lin_cert using reduction18011.terms
theorem substitutionProof18011 : IsMapEvaluation generatorImages reduction18011.relations [8,13,13,80,209] reduction18011.output := by lin_cert using reduction18011.terms
def image18012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18012 : InImage map_31_242 image18012 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18012 : Bundle := named_bundle% "RealMapCertificates/relations/basis18012.json"
theorem reductionProof18012 : EqualModuloRelations reduction18012.relations reduction18012.input reduction18012.output := by lin_cert using reduction18012.terms
theorem substitutionProof18012 : IsMapEvaluation generatorImages reduction18012.relations [1,1,1935] reduction18012.output := by lin_cert using reduction18012.terms
def image18013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18013 : InImage map_31_242 image18013 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18013 : Bundle := named_bundle% "RealMapCertificates/relations/basis18013.json"
theorem reductionProof18013 : EqualModuloRelations reduction18013.relations reduction18013.input reduction18013.output := by lin_cert using reduction18013.terms
theorem substitutionProof18013 : IsMapEvaluation generatorImages reduction18013.relations [0,0,1997] reduction18013.output := by lin_cert using reduction18013.terms
def image18014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18014 : InImage map_31_242 image18014 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18014 : Bundle := named_bundle% "RealMapCertificates/relations/basis18014.json"
theorem reductionProof18014 : EqualModuloRelations reduction18014.relations reduction18014.input reduction18014.output := by lin_cert using reduction18014.terms
theorem substitutionProof18014 : IsMapEvaluation generatorImages reduction18014.relations [0,0,0,0,1938] reduction18014.output := by lin_cert using reduction18014.terms
def map_31_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18280 : InImage map_31_243 image18280 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18280 : Bundle := named_bundle% "RealMapCertificates/relations/basis18280.json"
theorem reductionProof18280 : EqualModuloRelations reduction18280.relations reduction18280.input reduction18280.output := by lin_cert using reduction18280.terms
theorem substitutionProof18280 : IsMapEvaluation generatorImages reduction18280.relations [2098] reduction18280.output := by lin_cert using reduction18280.terms
def image18281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18281 : InImage map_31_243 image18281 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18281 : Bundle := named_bundle% "RealMapCertificates/relations/basis18281.json"
theorem reductionProof18281 : EqualModuloRelations reduction18281.relations reduction18281.input reduction18281.output := by lin_cert using reduction18281.terms
theorem substitutionProof18281 : IsMapEvaluation generatorImages reduction18281.relations [2097] reduction18281.output := by lin_cert using reduction18281.terms
def image18282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18282 : InImage map_31_243 image18282 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18282 : Bundle := named_bundle% "RealMapCertificates/relations/basis18282.json"
theorem reductionProof18282 : EqualModuloRelations reduction18282.relations reduction18282.input reduction18282.output := by lin_cert using reduction18282.terms
theorem substitutionProof18282 : IsMapEvaluation generatorImages reduction18282.relations [8,8,188,201] reduction18282.output := by lin_cert using reduction18282.terms
def image18283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18283 : InImage map_31_243 image18283 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18283 : Bundle := named_bundle% "RealMapCertificates/relations/basis18283.json"
theorem reductionProof18283 : EqualModuloRelations reduction18283.relations reduction18283.input reduction18283.output := by lin_cert using reduction18283.terms
theorem substitutionProof18283 : IsMapEvaluation generatorImages reduction18283.relations [3,1860] reduction18283.output := by lin_cert using reduction18283.terms
def image18284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18284 : InImage map_31_243 image18284 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18284 : Bundle := named_bundle% "RealMapCertificates/relations/basis18284.json"
theorem reductionProof18284 : EqualModuloRelations reduction18284.relations reduction18284.input reduction18284.output := by lin_cert using reduction18284.terms
theorem substitutionProof18284 : IsMapEvaluation generatorImages reduction18284.relations [2,2,1862] reduction18284.output := by lin_cert using reduction18284.terms
def map_31_244 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18479 : InImage map_31_244 image18479 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18479 : Bundle := named_bundle% "RealMapCertificates/relations/basis18479.json"
theorem reductionProof18479 : EqualModuloRelations reduction18479.relations reduction18479.input reduction18479.output := by lin_cert using reduction18479.terms
theorem substitutionProof18479 : IsMapEvaluation generatorImages reduction18479.relations [2126] reduction18479.output := by lin_cert using reduction18479.terms
def image18480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18480 : InImage map_31_244 image18480 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18480 : Bundle := named_bundle% "RealMapCertificates/relations/basis18480.json"
theorem reductionProof18480 : EqualModuloRelations reduction18480.relations reduction18480.input reduction18480.output := by lin_cert using reduction18480.terms
theorem substitutionProof18480 : IsMapEvaluation generatorImages reduction18480.relations [13,13,13,23,417] reduction18480.output := by lin_cert using reduction18480.terms
def image18481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18481 : InImage map_31_244 image18481 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18481 : Bundle := named_bundle% "RealMapCertificates/relations/basis18481.json"
theorem reductionProof18481 : EqualModuloRelations reduction18481.relations reduction18481.input reduction18481.output := by lin_cert using reduction18481.terms
theorem substitutionProof18481 : IsMapEvaluation generatorImages reduction18481.relations [8,1652] reduction18481.output := by lin_cert using reduction18481.terms
def image18482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18482 : InImage map_31_244 image18482 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18482 : Bundle := named_bundle% "RealMapCertificates/relations/basis18482.json"
theorem reductionProof18482 : EqualModuloRelations reduction18482.relations reduction18482.input reduction18482.output := by lin_cert using reduction18482.terms
theorem substitutionProof18482 : IsMapEvaluation generatorImages reduction18482.relations [0,0,0,0,0,1969] reduction18482.output := by lin_cert using reduction18482.terms
def image18483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18483 : InImage map_31_244 image18483 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18483 : Bundle := named_bundle% "RealMapCertificates/relations/basis18483.json"
theorem reductionProof18483 : EqualModuloRelations reduction18483.relations reduction18483.input reduction18483.output := by lin_cert using reduction18483.terms
theorem substitutionProof18483 : IsMapEvaluation generatorImages reduction18483.relations [0,0,0,0,0,225,324] reduction18483.output := by lin_cert using reduction18483.terms
def image18484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18484 : InImage map_31_244 image18484 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18484 : Bundle := named_bundle% "RealMapCertificates/relations/basis18484.json"
theorem reductionProof18484 : EqualModuloRelations reduction18484.relations reduction18484.input reduction18484.output := by lin_cert using reduction18484.terms
theorem substitutionProof18484 : IsMapEvaluation generatorImages reduction18484.relations [0,0,0,0,0,0,0,1908] reduction18484.output := by lin_cert using reduction18484.terms
def map_31_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18755 : InImage map_31_245 image18755 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18755 : Bundle := named_bundle% "RealMapCertificates/relations/basis18755.json"
theorem reductionProof18755 : EqualModuloRelations reduction18755.relations reduction18755.input reduction18755.output := by lin_cert using reduction18755.terms
theorem substitutionProof18755 : IsMapEvaluation generatorImages reduction18755.relations [13,1570] reduction18755.output := by lin_cert using reduction18755.terms
def image18756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18756 : InImage map_31_245 image18756 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18756 : Bundle := named_bundle% "RealMapCertificates/relations/basis18756.json"
theorem reductionProof18756 : EqualModuloRelations reduction18756.relations reduction18756.input reduction18756.output := by lin_cert using reduction18756.terms
theorem substitutionProof18756 : IsMapEvaluation generatorImages reduction18756.relations [9,13,13,80,209] reduction18756.output := by lin_cert using reduction18756.terms
def image18757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18757 : InImage map_31_245 image18757 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18757 : Bundle := named_bundle% "RealMapCertificates/relations/basis18757.json"
theorem reductionProof18757 : EqualModuloRelations reduction18757.relations reduction18757.input reduction18757.output := by lin_cert using reduction18757.terms
theorem substitutionProof18757 : IsMapEvaluation generatorImages reduction18757.relations [8,64,692] reduction18757.output := by lin_cert using reduction18757.terms
def image18758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18758 : InImage map_31_245 image18758 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18758 : Bundle := named_bundle% "RealMapCertificates/relations/basis18758.json"
theorem reductionProof18758 : EqualModuloRelations reduction18758.relations reduction18758.input reduction18758.output := by lin_cert using reduction18758.terms
theorem substitutionProof18758 : IsMapEvaluation generatorImages reduction18758.relations [5,1758] reduction18758.output := by lin_cert using reduction18758.terms
def image18759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18759 : InImage map_31_245 image18759 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18759 : Bundle := named_bundle% "RealMapCertificates/relations/basis18759.json"
theorem reductionProof18759 : EqualModuloRelations reduction18759.relations reduction18759.input reduction18759.output := by lin_cert using reduction18759.terms
theorem substitutionProof18759 : IsMapEvaluation generatorImages reduction18759.relations [1,3,1862] reduction18759.output := by lin_cert using reduction18759.terms
def image18760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18760 : InImage map_31_245 image18760 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18760 : Bundle := named_bundle% "RealMapCertificates/relations/basis18760.json"
theorem reductionProof18760 : EqualModuloRelations reduction18760.relations reduction18760.input reduction18760.output := by lin_cert using reduction18760.terms
theorem substitutionProof18760 : IsMapEvaluation generatorImages reduction18760.relations [0,0,0,0,0,0,1971] reduction18760.output := by lin_cert using reduction18760.terms
def map_31_246 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19043 : InImage map_31_246 image19043 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19043 : Bundle := named_bundle% "RealMapCertificates/relations/basis19043.json"
theorem reductionProof19043 : EqualModuloRelations reduction19043.relations reduction19043.input reduction19043.output := by lin_cert using reduction19043.terms
theorem substitutionProof19043 : IsMapEvaluation generatorImages reduction19043.relations [2200] reduction19043.output := by lin_cert using reduction19043.terms
def image19044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19044 : InImage map_31_246 image19044 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19044 : Bundle := named_bundle% "RealMapCertificates/relations/basis19044.json"
theorem reductionProof19044 : EqualModuloRelations reduction19044.relations reduction19044.input reduction19044.output := by lin_cert using reduction19044.terms
theorem substitutionProof19044 : IsMapEvaluation generatorImages reduction19044.relations [9,13,13,13,13,331] reduction19044.output := by lin_cert using reduction19044.terms
def image19045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19045 : InImage map_31_246 image19045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19045 : Bundle := named_bundle% "RealMapCertificates/relations/basis19045.json"
theorem reductionProof19045 : EqualModuloRelations reduction19045.relations reduction19045.input reduction19045.output := by lin_cert using reduction19045.terms
theorem substitutionProof19045 : IsMapEvaluation generatorImages reduction19045.relations [8,8,188,212] reduction19045.output := by lin_cert using reduction19045.terms
def image19046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19046 : InImage map_31_246 image19046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19046 : Bundle := named_bundle% "RealMapCertificates/relations/basis19046.json"
theorem reductionProof19046 : EqualModuloRelations reduction19046.relations reduction19046.input reduction19046.output := by lin_cert using reduction19046.terms
theorem substitutionProof19046 : IsMapEvaluation generatorImages reduction19046.relations [1,2127] reduction19046.output := by lin_cert using reduction19046.terms
def image19047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19047 : InImage map_31_246 image19047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19047 : Bundle := named_bundle% "RealMapCertificates/relations/basis19047.json"
theorem reductionProof19047 : EqualModuloRelations reduction19047.relations reduction19047.input reduction19047.output := by lin_cert using reduction19047.terms
theorem substitutionProof19047 : IsMapEvaluation generatorImages reduction19047.relations [0,2167] reduction19047.output := by lin_cert using reduction19047.terms
def map_31_247 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image19282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19282 : InImage map_31_247 image19282 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19282 : Bundle := named_bundle% "RealMapCertificates/relations/basis19282.json"
theorem reductionProof19282 : EqualModuloRelations reduction19282.relations reduction19282.input reduction19282.output := by lin_cert using reduction19282.terms
theorem substitutionProof19282 : IsMapEvaluation generatorImages reduction19282.relations [13,13,13,822] reduction19282.output := by lin_cert using reduction19282.terms
def image19283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19283 : InImage map_31_247 image19283 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19283 : Bundle := named_bundle% "RealMapCertificates/relations/basis19283.json"
theorem reductionProof19283 : EqualModuloRelations reduction19283.relations reduction19283.input reduction19283.output := by lin_cert using reduction19283.terms
theorem substitutionProof19283 : IsMapEvaluation generatorImages reduction19283.relations [8,1721] reduction19283.output := by lin_cert using reduction19283.terms
def map_31_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19557 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19557 : InImage map_31_248 image19557 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19557 : Bundle := named_bundle% "RealMapCertificates/relations/basis19557.json"
theorem reductionProof19557 : EqualModuloRelations reduction19557.relations reduction19557.input reduction19557.output := by lin_cert using reduction19557.terms
theorem substitutionProof19557 : IsMapEvaluation generatorImages reduction19557.relations [13,13,23,691] reduction19557.output := by lin_cert using reduction19557.terms
def image19558 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19558 : InImage map_31_248 image19558 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19558 : Bundle := named_bundle% "RealMapCertificates/relations/basis19558.json"
theorem reductionProof19558 : EqualModuloRelations reduction19558.relations reduction19558.input reduction19558.output := by lin_cert using reduction19558.terms
theorem substitutionProof19558 : IsMapEvaluation generatorImages reduction19558.relations [13,13,13,80,209] reduction19558.output := by lin_cert using reduction19558.terms
def image19559 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19559 : InImage map_31_248 image19559 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19559 : Bundle := named_bundle% "RealMapCertificates/relations/basis19559.json"
theorem reductionProof19559 : EqualModuloRelations reduction19559.relations reduction19559.input reduction19559.output := by lin_cert using reduction19559.terms
theorem substitutionProof19559 : IsMapEvaluation generatorImages reduction19559.relations [8,72,692] reduction19559.output := by lin_cert using reduction19559.terms
def image19560 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19560 : InImage map_31_248 image19560 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19560 : Bundle := named_bundle% "RealMapCertificates/relations/basis19560.json"
theorem reductionProof19560 : EqualModuloRelations reduction19560.relations reduction19560.input reduction19560.output := by lin_cert using reduction19560.terms
theorem substitutionProof19560 : IsMapEvaluation generatorImages reduction19560.relations [7,1775] reduction19560.output := by lin_cert using reduction19560.terms
def image19561 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19561 : InImage map_31_248 image19561 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19561 : Bundle := named_bundle% "RealMapCertificates/relations/basis19561.json"
theorem reductionProof19561 : EqualModuloRelations reduction19561.relations reduction19561.input reduction19561.output := by lin_cert using reduction19561.terms
theorem substitutionProof19561 : IsMapEvaluation generatorImages reduction19561.relations [1,2201] reduction19561.output := by lin_cert using reduction19561.terms
def image19562 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19562 : InImage map_31_248 image19562 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19562 : Bundle := named_bundle% "RealMapCertificates/relations/basis19562.json"
theorem reductionProof19562 : EqualModuloRelations reduction19562.relations reduction19562.input reduction19562.output := by lin_cert using reduction19562.terms
theorem substitutionProof19562 : IsMapEvaluation generatorImages reduction19562.relations [0,209,455] reduction19562.output := by lin_cert using reduction19562.terms
def map_31_249 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19849 : InImage map_31_249 image19849 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19849 : Bundle := named_bundle% "RealMapCertificates/relations/basis19849.json"
theorem reductionProof19849 : EqualModuloRelations reduction19849.relations reduction19849.input reduction19849.output := by lin_cert using reduction19849.terms
theorem substitutionProof19849 : IsMapEvaluation generatorImages reduction19849.relations [2308] reduction19849.output := by lin_cert using reduction19849.terms
def image19850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19850 : InImage map_31_249 image19850 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19850 : Bundle := named_bundle% "RealMapCertificates/relations/basis19850.json"
theorem reductionProof19850 : EqualModuloRelations reduction19850.relations reduction19850.input reduction19850.output := by lin_cert using reduction19850.terms
theorem substitutionProof19850 : IsMapEvaluation generatorImages reduction19850.relations [2307] reduction19850.output := by lin_cert using reduction19850.terms
def image19851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19851 : InImage map_31_249 image19851 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19851 : Bundle := named_bundle% "RealMapCertificates/relations/basis19851.json"
theorem reductionProof19851 : EqualModuloRelations reduction19851.relations reduction19851.input reduction19851.output := by lin_cert using reduction19851.terms
theorem substitutionProof19851 : IsMapEvaluation generatorImages reduction19851.relations [2306] reduction19851.output := by lin_cert using reduction19851.terms
def image19852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19852 : InImage map_31_249 image19852 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19852 : Bundle := named_bundle% "RealMapCertificates/relations/basis19852.json"
theorem reductionProof19852 : EqualModuloRelations reduction19852.relations reduction19852.input reduction19852.output := by lin_cert using reduction19852.terms
theorem substitutionProof19852 : IsMapEvaluation generatorImages reduction19852.relations [2305] reduction19852.output := by lin_cert using reduction19852.terms
def image19853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19853 : InImage map_31_249 image19853 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19853 : Bundle := named_bundle% "RealMapCertificates/relations/basis19853.json"
theorem reductionProof19853 : EqualModuloRelations reduction19853.relations reduction19853.input reduction19853.output := by lin_cert using reduction19853.terms
theorem substitutionProof19853 : IsMapEvaluation generatorImages reduction19853.relations [13,13,13,13,13,331] reduction19853.output := by lin_cert using reduction19853.terms
def image19854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19854 : InImage map_31_249 image19854 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19854 : Bundle := named_bundle% "RealMapCertificates/relations/basis19854.json"
theorem reductionProof19854 : EqualModuloRelations reduction19854.relations reduction19854.input reduction19854.output := by lin_cert using reduction19854.terms
theorem substitutionProof19854 : IsMapEvaluation generatorImages reduction19854.relations [8,9,188,212] reduction19854.output := by lin_cert using reduction19854.terms
def map_31_250 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20069 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20069 : InImage map_31_250 image20069 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20069 : Bundle := named_bundle% "RealMapCertificates/relations/basis20069.json"
theorem reductionProof20069 : EqualModuloRelations reduction20069.relations reduction20069.input reduction20069.output := by lin_cert using reduction20069.terms
theorem substitutionProof20069 : IsMapEvaluation generatorImages reduction20069.relations [2340] reduction20069.output := by lin_cert using reduction20069.terms
def image20070 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20070 : InImage map_31_250 image20070 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20070 : Bundle := named_bundle% "RealMapCertificates/relations/basis20070.json"
theorem reductionProof20070 : EqualModuloRelations reduction20070.relations reduction20070.input reduction20070.output := by lin_cert using reduction20070.terms
theorem substitutionProof20070 : IsMapEvaluation generatorImages reduction20070.relations [2339] reduction20070.output := by lin_cert using reduction20070.terms
def image20071 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20071 : InImage map_31_250 image20071 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20071 : Bundle := named_bundle% "RealMapCertificates/relations/basis20071.json"
theorem reductionProof20071 : EqualModuloRelations reduction20071.relations reduction20071.input reduction20071.output := by lin_cert using reduction20071.terms
theorem substitutionProof20071 : IsMapEvaluation generatorImages reduction20071.relations [9,13,13,13,619] reduction20071.output := by lin_cert using reduction20071.terms
def image20072 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20072 : InImage map_31_250 image20072 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20072 : Bundle := named_bundle% "RealMapCertificates/relations/basis20072.json"
theorem reductionProof20072 : EqualModuloRelations reduction20072.relations reduction20072.input reduction20072.output := by lin_cert using reduction20072.terms
theorem substitutionProof20072 : IsMapEvaluation generatorImages reduction20072.relations [8,209,292] reduction20072.output := by lin_cert using reduction20072.terms
def image20073 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20073 : InImage map_31_250 image20073 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20073 : Bundle := named_bundle% "RealMapCertificates/relations/basis20073.json"
theorem reductionProof20073 : EqualModuloRelations reduction20073.relations reduction20073.input reduction20073.output := by lin_cert using reduction20073.terms
theorem substitutionProof20073 : IsMapEvaluation generatorImages reduction20073.relations [7,1834] reduction20073.output := by lin_cert using reduction20073.terms
def image20074 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20074 : InImage map_31_250 image20074 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20074 : Bundle := named_bundle% "RealMapCertificates/relations/basis20074.json"
theorem reductionProof20074 : EqualModuloRelations reduction20074.relations reduction20074.input reduction20074.output := by lin_cert using reduction20074.terms
theorem substitutionProof20074 : IsMapEvaluation generatorImages reduction20074.relations [0,0,2279] reduction20074.output := by lin_cert using reduction20074.terms
def map_31_251 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20371 : InImage map_31_251 image20371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20371 : Bundle := named_bundle% "RealMapCertificates/relations/basis20371.json"
theorem reductionProof20371 : EqualModuloRelations reduction20371.relations reduction20371.input reduction20371.output := by lin_cert using reduction20371.terms
theorem substitutionProof20371 : IsMapEvaluation generatorImages reduction20371.relations [2380] reduction20371.output := by lin_cert using reduction20371.terms
def image20372 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20372 : InImage map_31_251 image20372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20372 : Bundle := named_bundle% "RealMapCertificates/relations/basis20372.json"
theorem reductionProof20372 : EqualModuloRelations reduction20372.relations reduction20372.input reduction20372.output := by lin_cert using reduction20372.terms
theorem substitutionProof20372 : IsMapEvaluation generatorImages reduction20372.relations [8,8,1476] reduction20372.output := by lin_cert using reduction20372.terms
def image20373 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20373 : InImage map_31_251 image20373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20373 : Bundle := named_bundle% "RealMapCertificates/relations/basis20373.json"
theorem reductionProof20373 : EqualModuloRelations reduction20373.relations reduction20373.input reduction20373.output := by lin_cert using reduction20373.terms
theorem substitutionProof20373 : IsMapEvaluation generatorImages reduction20373.relations [3,3,1862] reduction20373.output := by lin_cert using reduction20373.terms
def image20374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20374 : InImage map_31_251 image20374 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20374 : Bundle := named_bundle% "RealMapCertificates/relations/basis20374.json"
theorem reductionProof20374 : EqualModuloRelations reduction20374.relations reduction20374.input reduction20374.output := by lin_cert using reduction20374.terms
theorem substitutionProof20374 : IsMapEvaluation generatorImages reduction20374.relations [0,2342] reduction20374.output := by lin_cert using reduction20374.terms
def image20375 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20375 : InImage map_31_251 image20375 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20375 : Bundle := named_bundle% "RealMapCertificates/relations/basis20375.json"
theorem reductionProof20375 : EqualModuloRelations reduction20375.relations reduction20375.input reduction20375.output := by lin_cert using reduction20375.terms
theorem substitutionProof20375 : IsMapEvaluation generatorImages reduction20375.relations [0,2341] reduction20375.output := by lin_cert using reduction20375.terms
def map_31_252 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image20668 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20668 : InImage map_31_252 image20668 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction20668 : Bundle := named_bundle% "RealMapCertificates/relations/basis20668.json"
theorem reductionProof20668 : EqualModuloRelations reduction20668.relations reduction20668.input reduction20668.output := by lin_cert using reduction20668.terms
theorem substitutionProof20668 : IsMapEvaluation generatorImages reduction20668.relations [2409] reduction20668.output := by lin_cert using reduction20668.terms
def image20669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20669 : InImage map_31_252 image20669 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction20669 : Bundle := named_bundle% "RealMapCertificates/relations/basis20669.json"
theorem reductionProof20669 : EqualModuloRelations reduction20669.relations reduction20669.input reduction20669.output := by lin_cert using reduction20669.terms
theorem substitutionProof20669 : IsMapEvaluation generatorImages reduction20669.relations [2408] reduction20669.output := by lin_cert using reduction20669.terms
def image20670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20670 : InImage map_31_252 image20670 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction20670 : Bundle := named_bundle% "RealMapCertificates/relations/basis20670.json"
theorem reductionProof20670 : EqualModuloRelations reduction20670.relations reduction20670.input reduction20670.output := by lin_cert using reduction20670.terms
theorem substitutionProof20670 : IsMapEvaluation generatorImages reduction20670.relations [67,978] reduction20670.output := by lin_cert using reduction20670.terms
def image20671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20671 : InImage map_31_252 image20671 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction20671 : Bundle := named_bundle% "RealMapCertificates/relations/basis20671.json"
theorem reductionProof20671 : EqualModuloRelations reduction20671.relations reduction20671.input reduction20671.output := by lin_cert using reduction20671.terms
theorem substitutionProof20671 : IsMapEvaluation generatorImages reduction20671.relations [13,23,1050] reduction20671.output := by lin_cert using reduction20671.terms
def image20672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20672 : InImage map_31_252 image20672 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction20672 : Bundle := named_bundle% "RealMapCertificates/relations/basis20672.json"
theorem reductionProof20672 : EqualModuloRelations reduction20672.relations reduction20672.input reduction20672.output := by lin_cert using reduction20672.terms
theorem substitutionProof20672 : IsMapEvaluation generatorImages reduction20672.relations [8,13,188,212] reduction20672.output := by lin_cert using reduction20672.terms
def image20673 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20673 : InImage map_31_252 image20673 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction20673 : Bundle := named_bundle% "RealMapCertificates/relations/basis20673.json"
theorem reductionProof20673 : EqualModuloRelations reduction20673.relations reduction20673.input reduction20673.output := by lin_cert using reduction20673.terms
theorem substitutionProof20673 : IsMapEvaluation generatorImages reduction20673.relations [1,2341] reduction20673.output := by lin_cert using reduction20673.terms
def image20674 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20674 : InImage map_31_252 image20674 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction20674 : Bundle := named_bundle% "RealMapCertificates/relations/basis20674.json"
theorem reductionProof20674 : EqualModuloRelations reduction20674.relations reduction20674.input reduction20674.output := by lin_cert using reduction20674.terms
theorem substitutionProof20674 : IsMapEvaluation generatorImages reduction20674.relations [0,2381] reduction20674.output := by lin_cert using reduction20674.terms
def image20675 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20675 : InImage map_31_252 image20675 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction20675 : Bundle := named_bundle% "RealMapCertificates/relations/basis20675.json"
theorem reductionProof20675 : EqualModuloRelations reduction20675.relations reduction20675.input reduction20675.output := by lin_cert using reduction20675.terms
theorem substitutionProof20675 : IsMapEvaluation generatorImages reduction20675.relations [0,0,2343] reduction20675.output := by lin_cert using reduction20675.terms
def image20676 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20676 : InImage map_31_252 image20676 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction20676 : Bundle := named_bundle% "RealMapCertificates/relations/basis20676.json"
theorem reductionProof20676 : EqualModuloRelations reduction20676.relations reduction20676.input reduction20676.output := by lin_cert using reduction20676.terms
theorem substitutionProof20676 : IsMapEvaluation generatorImages reduction20676.relations [0,0,0,2311] reduction20676.output := by lin_cert using reduction20676.terms
def image20677 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20677 : InImage map_31_252 image20677 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction20677 : Bundle := named_bundle% "RealMapCertificates/relations/basis20677.json"
theorem reductionProof20677 : EqualModuloRelations reduction20677.relations reduction20677.input reduction20677.output := by lin_cert using reduction20677.terms
theorem substitutionProof20677 : IsMapEvaluation generatorImages reduction20677.relations [0,0,0,2309] reduction20677.output := by lin_cert using reduction20677.terms
def map_31_253 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20904 : InImage map_31_253 image20904 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20904 : Bundle := named_bundle% "RealMapCertificates/relations/basis20904.json"
theorem reductionProof20904 : EqualModuloRelations reduction20904.relations reduction20904.input reduction20904.output := by lin_cert using reduction20904.terms
theorem substitutionProof20904 : IsMapEvaluation generatorImages reduction20904.relations [209,518] reduction20904.output := by lin_cert using reduction20904.terms
def image20905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20905 : InImage map_31_253 image20905 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20905 : Bundle := named_bundle% "RealMapCertificates/relations/basis20905.json"
theorem reductionProof20905 : EqualModuloRelations reduction20905.relations reduction20905.input reduction20905.output := by lin_cert using reduction20905.terms
theorem substitutionProof20905 : IsMapEvaluation generatorImages reduction20905.relations [13,13,13,13,619] reduction20905.output := by lin_cert using reduction20905.terms
def image20906 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20906 : InImage map_31_253 image20906 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20906 : Bundle := named_bundle% "RealMapCertificates/relations/basis20906.json"
theorem reductionProof20906 : EqualModuloRelations reduction20906.relations reduction20906.input reduction20906.output := by lin_cert using reduction20906.terms
theorem substitutionProof20906 : IsMapEvaluation generatorImages reduction20906.relations [9,209,292] reduction20906.output := by lin_cert using reduction20906.terms
def image20907 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20907 : InImage map_31_253 image20907 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20907 : Bundle := named_bundle% "RealMapCertificates/relations/basis20907.json"
theorem reductionProof20907 : EqualModuloRelations reduction20907.relations reduction20907.input reduction20907.output := by lin_cert using reduction20907.terms
theorem substitutionProof20907 : IsMapEvaluation generatorImages reduction20907.relations [0,68,978] reduction20907.output := by lin_cert using reduction20907.terms
def image20908 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20908 : InImage map_31_253 image20908 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20908 : Bundle := named_bundle% "RealMapCertificates/relations/basis20908.json"
theorem reductionProof20908 : EqualModuloRelations reduction20908.relations reduction20908.input reduction20908.output := by lin_cert using reduction20908.terms
theorem substitutionProof20908 : IsMapEvaluation generatorImages reduction20908.relations [0,0,0,0,0,0,0,0,0,246,324] reduction20908.output := by lin_cert using reduction20908.terms
def map_31_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21200 : InImage map_31_254 image21200 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21200 : Bundle := named_bundle% "RealMapCertificates/relations/basis21200.json"
theorem reductionProof21200 : EqualModuloRelations reduction21200.relations reduction21200.input reduction21200.output := by lin_cert using reduction21200.terms
theorem substitutionProof21200 : IsMapEvaluation generatorImages reduction21200.relations [2489] reduction21200.output := by lin_cert using reduction21200.terms
def image21201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21201 : InImage map_31_254 image21201 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21201 : Bundle := named_bundle% "RealMapCertificates/relations/basis21201.json"
theorem reductionProof21201 : EqualModuloRelations reduction21201.relations reduction21201.input reduction21201.output := by lin_cert using reduction21201.terms
theorem substitutionProof21201 : IsMapEvaluation generatorImages reduction21201.relations [297,324] reduction21201.output := by lin_cert using reduction21201.terms
def image21202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21202 : InImage map_31_254 image21202 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21202 : Bundle := named_bundle% "RealMapCertificates/relations/basis21202.json"
theorem reductionProof21202 : EqualModuloRelations reduction21202.relations reduction21202.input reduction21202.output := by lin_cert using reduction21202.terms
theorem substitutionProof21202 : IsMapEvaluation generatorImages reduction21202.relations [9,13,13,945] reduction21202.output := by lin_cert using reduction21202.terms
def image21203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21203 : InImage map_31_254 image21203 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21203 : Bundle := named_bundle% "RealMapCertificates/relations/basis21203.json"
theorem reductionProof21203 : EqualModuloRelations reduction21203.relations reduction21203.input reduction21203.output := by lin_cert using reduction21203.terms
theorem substitutionProof21203 : IsMapEvaluation generatorImages reduction21203.relations [8,8,188,250] reduction21203.output := by lin_cert using reduction21203.terms
def image21204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21204 : InImage map_31_254 image21204 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21204 : Bundle := named_bundle% "RealMapCertificates/relations/basis21204.json"
theorem reductionProof21204 : EqualModuloRelations reduction21204.relations reduction21204.input reduction21204.output := by lin_cert using reduction21204.terms
theorem substitutionProof21204 : IsMapEvaluation generatorImages reduction21204.relations [2,2341] reduction21204.output := by lin_cert using reduction21204.terms
def image21205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21205 : InImage map_31_254 image21205 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21205 : Bundle := named_bundle% "RealMapCertificates/relations/basis21205.json"
theorem reductionProof21205 : EqualModuloRelations reduction21205.relations reduction21205.input reduction21205.output := by lin_cert using reduction21205.terms
theorem substitutionProof21205 : IsMapEvaluation generatorImages reduction21205.relations [1,2410] reduction21205.output := by lin_cert using reduction21205.terms
def map_31_255 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image21536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21536 : InImage map_31_255 image21536 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21536 : Bundle := named_bundle% "RealMapCertificates/relations/basis21536.json"
theorem reductionProof21536 : EqualModuloRelations reduction21536.relations reduction21536.input reduction21536.output := by lin_cert using reduction21536.terms
theorem substitutionProof21536 : IsMapEvaluation generatorImages reduction21536.relations [2549] reduction21536.output := by lin_cert using reduction21536.terms
def image21537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21537 : InImage map_31_255 image21537 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21537 : Bundle := named_bundle% "RealMapCertificates/relations/basis21537.json"
theorem reductionProof21537 : EqualModuloRelations reduction21537.relations reduction21537.input reduction21537.output := by lin_cert using reduction21537.terms
theorem substitutionProof21537 : IsMapEvaluation generatorImages reduction21537.relations [64,1051] reduction21537.output := by lin_cert using reduction21537.terms
def image21538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21538 : InImage map_31_255 image21538 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21538 : Bundle := named_bundle% "RealMapCertificates/relations/basis21538.json"
theorem reductionProof21538 : EqualModuloRelations reduction21538.relations reduction21538.input reduction21538.output := by lin_cert using reduction21538.terms
theorem substitutionProof21538 : IsMapEvaluation generatorImages reduction21538.relations [13,1756] reduction21538.output := by lin_cert using reduction21538.terms
def image21539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21539 : InImage map_31_255 image21539 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21539 : Bundle := named_bundle% "RealMapCertificates/relations/basis21539.json"
theorem reductionProof21539 : EqualModuloRelations reduction21539.relations reduction21539.input reduction21539.output := by lin_cert using reduction21539.terms
theorem substitutionProof21539 : IsMapEvaluation generatorImages reduction21539.relations [13,13,13,13,13,411] reduction21539.output := by lin_cert using reduction21539.terms
def image21540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21540 : InImage map_31_255 image21540 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21540 : Bundle := named_bundle% "RealMapCertificates/relations/basis21540.json"
theorem reductionProof21540 : EqualModuloRelations reduction21540.relations reduction21540.input reduction21540.output := by lin_cert using reduction21540.terms
theorem substitutionProof21540 : IsMapEvaluation generatorImages reduction21540.relations [9,13,188,212] reduction21540.output := by lin_cert using reduction21540.terms
def image21541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21541 : InImage map_31_255 image21541 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21541 : Bundle := named_bundle% "RealMapCertificates/relations/basis21541.json"
theorem reductionProof21541 : EqualModuloRelations reduction21541.relations reduction21541.input reduction21541.output := by lin_cert using reduction21541.terms
theorem substitutionProof21541 : IsMapEvaluation generatorImages reduction21541.relations [8,1904] reduction21541.output := by lin_cert using reduction21541.terms
def image21542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21542 : InImage map_31_255 image21542 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21542 : Bundle := named_bundle% "RealMapCertificates/relations/basis21542.json"
theorem reductionProof21542 : EqualModuloRelations reduction21542.relations reduction21542.input reduction21542.output := by lin_cert using reduction21542.terms
theorem substitutionProof21542 : IsMapEvaluation generatorImages reduction21542.relations [0,2490] reduction21542.output := by lin_cert using reduction21542.terms
def image21543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21543 : InImage map_31_255 image21543 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21543 : Bundle := named_bundle% "RealMapCertificates/relations/basis21543.json"
theorem reductionProof21543 : EqualModuloRelations reduction21543.relations reduction21543.input reduction21543.output := by lin_cert using reduction21543.terms
theorem substitutionProof21543 : IsMapEvaluation generatorImages reduction21543.relations [0,298,324] reduction21543.output := by lin_cert using reduction21543.terms
def image21544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21544 : InImage map_31_255 image21544 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21544 : Bundle := named_bundle% "RealMapCertificates/relations/basis21544.json"
theorem reductionProof21544 : EqualModuloRelations reduction21544.relations reduction21544.input reduction21544.output := by lin_cert using reduction21544.terms
theorem substitutionProof21544 : IsMapEvaluation generatorImages reduction21544.relations [0,0,2442] reduction21544.output := by lin_cert using reduction21544.terms
end RealMapCertificates
