import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 3 => []
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 19 => [[4,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 69 => []
  | 71 => [[4,4,4,4,6]]
  | 74 => []
  | 77 => [[4,4,4,4,8]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 159 => [[3,4,4,4,4,4,4,4]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 185 => [[0,4,4,8,12]]
  | 188 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 209 => []
  | 210 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 261 => []
  | 292 => []
  | 297 => []
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 383 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 500 => []
  | 509 => []
  | 627 => []
  | 679 => []
  | 945 => []
  | 978 => []
  | 1148 => []
  | 1149 => []
  | 1431 => []
  | 1555 => []
  | 1642 => []
  | 1938 => []
  | 1971 => []
  | 1997 => []
  | 2000 => []
  | 2045 => []
  | 2129 => []
  | 2243 => []
  | 2277 => []
  | 2309 => []
  | 2491 => []
  | 2492 => []
  | 2494 => []
  | 2498 => []
  | 2550 => []
  | 2552 => []
  | 2584 => []
  | 2630 => []
  | 2744 => []
  | 2746 => []
  | 2798 => []
  | 2869 => []
  | _ => []
def map_31_256 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21798 : InImage map_31_256 image21798 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21798 : Bundle := named_bundle% "RealMapCertificates/relations/basis21798.json"
theorem reductionProof21798 : EqualModuloRelations reduction21798.relations reduction21798.input reduction21798.output := by lin_cert using reduction21798.terms
theorem substitutionProof21798 : IsMapEvaluation generatorImages reduction21798.relations [23,1555] reduction21798.output := by lin_cert using reduction21798.terms
def image21799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21799 : InImage map_31_256 image21799 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21799 : Bundle := named_bundle% "RealMapCertificates/relations/basis21799.json"
theorem reductionProof21799 : EqualModuloRelations reduction21799.relations reduction21799.input reduction21799.output := by lin_cert using reduction21799.terms
theorem substitutionProof21799 : IsMapEvaluation generatorImages reduction21799.relations [13,209,292] reduction21799.output := by lin_cert using reduction21799.terms
def image21800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21800 : InImage map_31_256 image21800 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21800 : Bundle := named_bundle% "RealMapCertificates/relations/basis21800.json"
theorem reductionProof21800 : EqualModuloRelations reduction21800.relations reduction21800.input reduction21800.output := by lin_cert using reduction21800.terms
theorem substitutionProof21800 : IsMapEvaluation generatorImages reduction21800.relations [8,1938] reduction21800.output := by lin_cert using reduction21800.terms
def image21801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21801 : InImage map_31_256 image21801 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21801 : Bundle := named_bundle% "RealMapCertificates/relations/basis21801.json"
theorem reductionProof21801 : EqualModuloRelations reduction21801.relations reduction21801.input reduction21801.output := by lin_cert using reduction21801.terms
theorem substitutionProof21801 : IsMapEvaluation generatorImages reduction21801.relations [0,2550] reduction21801.output := by lin_cert using reduction21801.terms
def image21802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21802 : InImage map_31_256 image21802 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21802 : Bundle := named_bundle% "RealMapCertificates/relations/basis21802.json"
theorem reductionProof21802 : EqualModuloRelations reduction21802.relations reduction21802.input reduction21802.output := by lin_cert using reduction21802.terms
theorem substitutionProof21802 : IsMapEvaluation generatorImages reduction21802.relations [0,74,978] reduction21802.output := by lin_cert using reduction21802.terms
def image21803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21803 : InImage map_31_256 image21803 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21803 : Bundle := named_bundle% "RealMapCertificates/relations/basis21803.json"
theorem reductionProof21803 : EqualModuloRelations reduction21803.relations reduction21803.input reduction21803.output := by lin_cert using reduction21803.terms
theorem substitutionProof21803 : IsMapEvaluation generatorImages reduction21803.relations [0,3,2243] reduction21803.output := by lin_cert using reduction21803.terms
def image21804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21804 : InImage map_31_256 image21804 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21804 : Bundle := named_bundle% "RealMapCertificates/relations/basis21804.json"
theorem reductionProof21804 : EqualModuloRelations reduction21804.relations reduction21804.input reduction21804.output := by lin_cert using reduction21804.terms
theorem substitutionProof21804 : IsMapEvaluation generatorImages reduction21804.relations [0,0,2492] reduction21804.output := by lin_cert using reduction21804.terms
def map_31_257 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22148 : InImage map_31_257 image22148 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22148 : Bundle := named_bundle% "RealMapCertificates/relations/basis22148.json"
theorem reductionProof22148 : EqualModuloRelations reduction22148.relations reduction22148.input reduction22148.output := by lin_cert using reduction22148.terms
theorem substitutionProof22148 : IsMapEvaluation generatorImages reduction22148.relations [13,13,13,945] reduction22148.output := by lin_cert using reduction22148.terms
def image22149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22149 : InImage map_31_257 image22149 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22149 : Bundle := named_bundle% "RealMapCertificates/relations/basis22149.json"
theorem reductionProof22149 : EqualModuloRelations reduction22149.relations reduction22149.input reduction22149.output := by lin_cert using reduction22149.terms
theorem substitutionProof22149 : IsMapEvaluation generatorImages reduction22149.relations [8,224,324] reduction22149.output := by lin_cert using reduction22149.terms
def image22150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22150 : InImage map_31_257 image22150 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22150 : Bundle := named_bundle% "RealMapCertificates/relations/basis22150.json"
theorem reductionProof22150 : EqualModuloRelations reduction22150.relations reduction22150.input reduction22150.output := by lin_cert using reduction22150.terms
theorem substitutionProof22150 : IsMapEvaluation generatorImages reduction22150.relations [8,8,188,261] reduction22150.output := by lin_cert using reduction22150.terms
def image22151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22151 : InImage map_31_257 image22151 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22151 : Bundle := named_bundle% "RealMapCertificates/relations/basis22151.json"
theorem reductionProof22151 : EqualModuloRelations reduction22151.relations reduction22151.input reduction22151.output := by lin_cert using reduction22151.terms
theorem substitutionProof22151 : IsMapEvaluation generatorImages reduction22151.relations [1,2550] reduction22151.output := by lin_cert using reduction22151.terms
def image22152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22152 : InImage map_31_257 image22152 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22152 : Bundle := named_bundle% "RealMapCertificates/relations/basis22152.json"
theorem reductionProof22152 : EqualModuloRelations reduction22152.relations reduction22152.input reduction22152.output := by lin_cert using reduction22152.terms
theorem substitutionProof22152 : IsMapEvaluation generatorImages reduction22152.relations [0,7,1997] reduction22152.output := by lin_cert using reduction22152.terms
def image22153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22153 : InImage map_31_257 image22153 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22153 : Bundle := named_bundle% "RealMapCertificates/relations/basis22153.json"
theorem reductionProof22153 : EqualModuloRelations reduction22153.relations reduction22153.input reduction22153.output := by lin_cert using reduction22153.terms
theorem substitutionProof22153 : IsMapEvaluation generatorImages reduction22153.relations [0,0,2552] reduction22153.output := by lin_cert using reduction22153.terms
def image22154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22154 : InImage map_31_257 image22154 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22154 : Bundle := named_bundle% "RealMapCertificates/relations/basis22154.json"
theorem reductionProof22154 : EqualModuloRelations reduction22154.relations reduction22154.input reduction22154.output := by lin_cert using reduction22154.terms
theorem substitutionProof22154 : IsMapEvaluation generatorImages reduction22154.relations [0,0,0,2494] reduction22154.output := by lin_cert using reduction22154.terms
def map_31_258 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22504 : InImage map_31_258 image22504 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22504 : Bundle := named_bundle% "RealMapCertificates/relations/basis22504.json"
theorem reductionProof22504 : EqualModuloRelations reduction22504.relations reduction22504.input reduction22504.output := by lin_cert using reduction22504.terms
theorem substitutionProof22504 : IsMapEvaluation generatorImages reduction22504.relations [13,13,188,212] reduction22504.output := by lin_cert using reduction22504.terms
def image22505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22505 : InImage map_31_258 image22505 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22505 : Bundle := named_bundle% "RealMapCertificates/relations/basis22505.json"
theorem reductionProof22505 : EqualModuloRelations reduction22505.relations reduction22505.input reduction22505.output := by lin_cert using reduction22505.terms
theorem substitutionProof22505 : IsMapEvaluation generatorImages reduction22505.relations [9,13,1431] reduction22505.output := by lin_cert using reduction22505.terms
def image22506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22506 : InImage map_31_258 image22506 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22506 : Bundle := named_bundle% "RealMapCertificates/relations/basis22506.json"
theorem reductionProof22506 : EqualModuloRelations reduction22506.relations reduction22506.input reduction22506.output := by lin_cert using reduction22506.terms
theorem substitutionProof22506 : IsMapEvaluation generatorImages reduction22506.relations [8,2000] reduction22506.output := by lin_cert using reduction22506.terms
def image22507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22507 : InImage map_31_258 image22507 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22507 : Bundle := named_bundle% "RealMapCertificates/relations/basis22507.json"
theorem reductionProof22507 : EqualModuloRelations reduction22507.relations reduction22507.input reduction22507.output := by lin_cert using reduction22507.terms
theorem substitutionProof22507 : IsMapEvaluation generatorImages reduction22507.relations [1,7,1997] reduction22507.output := by lin_cert using reduction22507.terms
def image22508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22508 : InImage map_31_258 image22508 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22508 : Bundle := named_bundle% "RealMapCertificates/relations/basis22508.json"
theorem reductionProof22508 : EqualModuloRelations reduction22508.relations reduction22508.input reduction22508.output := by lin_cert using reduction22508.terms
theorem substitutionProof22508 : IsMapEvaluation generatorImages reduction22508.relations [1,3,2277] reduction22508.output := by lin_cert using reduction22508.terms
def image22509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22509 : InImage map_31_258 image22509 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22509 : Bundle := named_bundle% "RealMapCertificates/relations/basis22509.json"
theorem reductionProof22509 : EqualModuloRelations reduction22509.relations reduction22509.input reduction22509.output := by lin_cert using reduction22509.terms
theorem substitutionProof22509 : IsMapEvaluation generatorImages reduction22509.relations [1,1,2491] reduction22509.output := by lin_cert using reduction22509.terms
def image22510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22510 : InImage map_31_258 image22510 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22510 : Bundle := named_bundle% "RealMapCertificates/relations/basis22510.json"
theorem reductionProof22510 : EqualModuloRelations reduction22510.relations reduction22510.input reduction22510.output := by lin_cert using reduction22510.terms
theorem substitutionProof22510 : IsMapEvaluation generatorImages reduction22510.relations [0,2630] reduction22510.output := by lin_cert using reduction22510.terms
def image22511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22511 : InImage map_31_258 image22511 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22511 : Bundle := named_bundle% "RealMapCertificates/relations/basis22511.json"
theorem reductionProof22511 : EqualModuloRelations reduction22511.relations reduction22511.input reduction22511.output := by lin_cert using reduction22511.terms
theorem substitutionProof22511 : IsMapEvaluation generatorImages reduction22511.relations [0,8,225,324] reduction22511.output := by lin_cert using reduction22511.terms
def image22512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22512 : InImage map_31_258 image22512 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22512 : Bundle := named_bundle% "RealMapCertificates/relations/basis22512.json"
theorem reductionProof22512 : EqualModuloRelations reduction22512.relations reduction22512.input reduction22512.output := by lin_cert using reduction22512.terms
theorem substitutionProof22512 : IsMapEvaluation generatorImages reduction22512.relations [0,0,2584] reduction22512.output := by lin_cert using reduction22512.terms
def map_31_259 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image22806 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22806 : InImage map_31_259 image22806 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22806 : Bundle := named_bundle% "RealMapCertificates/relations/basis22806.json"
theorem reductionProof22806 : EqualModuloRelations reduction22806.relations reduction22806.input reduction22806.output := by lin_cert using reduction22806.terms
theorem substitutionProof22806 : IsMapEvaluation generatorImages reduction22806.relations [13,13,13,13,679] reduction22806.output := by lin_cert using reduction22806.terms
def image22807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22807 : InImage map_31_259 image22807 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22807 : Bundle := named_bundle% "RealMapCertificates/relations/basis22807.json"
theorem reductionProof22807 : EqualModuloRelations reduction22807.relations reduction22807.input reduction22807.output := by lin_cert using reduction22807.terms
theorem substitutionProof22807 : IsMapEvaluation generatorImages reduction22807.relations [8,209,383] reduction22807.output := by lin_cert using reduction22807.terms
def image22808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22808 : InImage map_31_259 image22808 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22808 : Bundle := named_bundle% "RealMapCertificates/relations/basis22808.json"
theorem reductionProof22808 : EqualModuloRelations reduction22808.relations reduction22808.input reduction22808.output := by lin_cert using reduction22808.terms
theorem substitutionProof22808 : IsMapEvaluation generatorImages reduction22808.relations [0,0,3,2309] reduction22808.output := by lin_cert using reduction22808.terms
def image22809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22809 : InImage map_31_259 image22809 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22809 : Bundle := named_bundle% "RealMapCertificates/relations/basis22809.json"
theorem reductionProof22809 : EqualModuloRelations reduction22809.relations reduction22809.input reduction22809.output := by lin_cert using reduction22809.terms
theorem substitutionProof22809 : IsMapEvaluation generatorImages reduction22809.relations [0,0,0,0,0,2498] reduction22809.output := by lin_cert using reduction22809.terms
def map_31_260 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23183 : InImage map_31_260 image23183 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23183 : Bundle := named_bundle% "RealMapCertificates/relations/basis23183.json"
theorem reductionProof23183 : EqualModuloRelations reduction23183.relations reduction23183.input reduction23183.output := by lin_cert using reduction23183.terms
theorem substitutionProof23183 : IsMapEvaluation generatorImages reduction23183.relations [188,627] reduction23183.output := by lin_cert using reduction23183.terms
def image23184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23184 : InImage map_31_260 image23184 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23184 : Bundle := named_bundle% "RealMapCertificates/relations/basis23184.json"
theorem reductionProof23184 : EqualModuloRelations reduction23184.relations reduction23184.input reduction23184.output := by lin_cert using reduction23184.terms
theorem substitutionProof23184 : IsMapEvaluation generatorImages reduction23184.relations [8,237,324] reduction23184.output := by lin_cert using reduction23184.terms
def image23185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23185 : InImage map_31_260 image23185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23185 : Bundle := named_bundle% "RealMapCertificates/relations/basis23185.json"
theorem reductionProof23185 : EqualModuloRelations reduction23185.relations reduction23185.input reduction23185.output := by lin_cert using reduction23185.terms
theorem substitutionProof23185 : IsMapEvaluation generatorImages reduction23185.relations [8,9,188,261] reduction23185.output := by lin_cert using reduction23185.terms
def image23186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23186 : InImage map_31_260 image23186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23186 : Bundle := named_bundle% "RealMapCertificates/relations/basis23186.json"
theorem reductionProof23186 : EqualModuloRelations reduction23186.relations reduction23186.input reduction23186.output := by lin_cert using reduction23186.terms
theorem substitutionProof23186 : IsMapEvaluation generatorImages reduction23186.relations [0,0,0,0,0,7,1971] reduction23186.output := by lin_cert using reduction23186.terms
def map_31_261 : Matrix 0 11 := fun i j => ([] : List Bool)[i.val*11+j.val]!
def image23620 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23620 : InImage map_31_261 image23620 := by lin_cert using (fun j : Fin 11 => decide (j.val = 0))
def reduction23620 : Bundle := named_bundle% "RealMapCertificates/relations/basis23620.json"
theorem reductionProof23620 : EqualModuloRelations reduction23620.relations reduction23620.input reduction23620.output := by lin_cert using reduction23620.terms
theorem substitutionProof23620 : IsMapEvaluation generatorImages reduction23620.relations [2869] reduction23620.output := by lin_cert using reduction23620.terms
def image23621 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23621 : InImage map_31_261 image23621 := by lin_cert using (fun j : Fin 11 => decide (j.val = 1))
def reduction23621 : Bundle := named_bundle% "RealMapCertificates/relations/basis23621.json"
theorem reductionProof23621 : EqualModuloRelations reduction23621.relations reduction23621.input reduction23621.output := by lin_cert using reduction23621.terms
theorem substitutionProof23621 : IsMapEvaluation generatorImages reduction23621.relations [64,1149] reduction23621.output := by lin_cert using reduction23621.terms
def image23622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23622 : InImage map_31_261 image23622 := by lin_cert using (fun j : Fin 11 => decide (j.val = 2))
def reduction23622 : Bundle := named_bundle% "RealMapCertificates/relations/basis23622.json"
theorem reductionProof23622 : EqualModuloRelations reduction23622.relations reduction23622.input reduction23622.output := by lin_cert using reduction23622.terms
theorem substitutionProof23622 : IsMapEvaluation generatorImages reduction23622.relations [64,1148] reduction23622.output := by lin_cert using reduction23622.terms
def image23623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23623 : InImage map_31_261 image23623 := by lin_cert using (fun j : Fin 11 => decide (j.val = 3))
def reduction23623 : Bundle := named_bundle% "RealMapCertificates/relations/basis23623.json"
theorem reductionProof23623 : EqualModuloRelations reduction23623.relations reduction23623.input reduction23623.output := by lin_cert using reduction23623.terms
theorem substitutionProof23623 : IsMapEvaluation generatorImages reduction23623.relations [13,13,1431] reduction23623.output := by lin_cert using reduction23623.terms
def image23624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23624 : InImage map_31_261 image23624 := by lin_cert using (fun j : Fin 11 => decide (j.val = 4))
def reduction23624 : Bundle := named_bundle% "RealMapCertificates/relations/basis23624.json"
theorem reductionProof23624 : EqualModuloRelations reduction23624.relations reduction23624.input reduction23624.output := by lin_cert using reduction23624.terms
theorem substitutionProof23624 : IsMapEvaluation generatorImages reduction23624.relations [8,8,1642] reduction23624.output := by lin_cert using reduction23624.terms
def image23625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23625 : InImage map_31_261 image23625 := by lin_cert using (fun j : Fin 11 => decide (j.val = 5))
def reduction23625 : Bundle := named_bundle% "RealMapCertificates/relations/basis23625.json"
theorem reductionProof23625 : EqualModuloRelations reduction23625.relations reduction23625.input reduction23625.output := by lin_cert using reduction23625.terms
theorem substitutionProof23625 : IsMapEvaluation generatorImages reduction23625.relations [1,2744] reduction23625.output := by lin_cert using reduction23625.terms
def image23626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23626 : InImage map_31_261 image23626 := by lin_cert using (fun j : Fin 11 => decide (j.val = 6))
def reduction23626 : Bundle := named_bundle% "RealMapCertificates/relations/basis23626.json"
theorem reductionProof23626 : EqualModuloRelations reduction23626.relations reduction23626.input reduction23626.output := by lin_cert using reduction23626.terms
theorem substitutionProof23626 : IsMapEvaluation generatorImages reduction23626.relations [0,2798] reduction23626.output := by lin_cert using reduction23626.terms
def image23627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23627 : InImage map_31_261 image23627 := by lin_cert using (fun j : Fin 11 => decide (j.val = 7))
def reduction23627 : Bundle := named_bundle% "RealMapCertificates/relations/basis23627.json"
theorem reductionProof23627 : EqualModuloRelations reduction23627.relations reduction23627.input reduction23627.output := by lin_cert using reduction23627.terms
theorem substitutionProof23627 : IsMapEvaluation generatorImages reduction23627.relations [0,8,238,324] reduction23627.output := by lin_cert using reduction23627.terms
def image23628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23628 : InImage map_31_261 image23628 := by lin_cert using (fun j : Fin 11 => decide (j.val = 8))
def reduction23628 : Bundle := named_bundle% "RealMapCertificates/relations/basis23628.json"
theorem reductionProof23628 : EqualModuloRelations reduction23628.relations reduction23628.input reduction23628.output := by lin_cert using reduction23628.terms
theorem substitutionProof23628 : IsMapEvaluation generatorImages reduction23628.relations [0,3,3,2129] reduction23628.output := by lin_cert using reduction23628.terms
def image23629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23629 : InImage map_31_261 image23629 := by lin_cert using (fun j : Fin 11 => decide (j.val = 9))
def reduction23629 : Bundle := named_bundle% "RealMapCertificates/relations/basis23629.json"
theorem reductionProof23629 : EqualModuloRelations reduction23629.relations reduction23629.input reduction23629.output := by lin_cert using reduction23629.terms
theorem substitutionProof23629 : IsMapEvaluation generatorImages reduction23629.relations [0,0,2746] reduction23629.output := by lin_cert using reduction23629.terms
def image23630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23630 : InImage map_31_261 image23630 := by lin_cert using (fun j : Fin 11 => decide (j.val = 10))
def reduction23630 : Bundle := named_bundle% "RealMapCertificates/relations/basis23630.json"
theorem reductionProof23630 : EqualModuloRelations reduction23630.relations reduction23630.input reduction23630.output := by lin_cert using reduction23630.terms
theorem substitutionProof23630 : IsMapEvaluation generatorImages reduction23630.relations [0,0,8,2045] reduction23630.output := by lin_cert using reduction23630.terms
def map_32_32 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image99 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation99 : InImage map_32_32 image99 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction99 : Bundle := named_bundle% "RealMapCertificates/relations/basis99.json"
theorem reductionProof99 : EqualModuloRelations reduction99.relations reduction99.input reduction99.output := by lin_cert using reduction99.terms
theorem substitutionProof99 : IsMapEvaluation generatorImages reduction99.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction99.output := by lin_cert using reduction99.terms
def map_32_95 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1092 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1092 : InImage map_32_95 image1092 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1092 : Bundle := named_bundle% "RealMapCertificates/relations/basis1092.json"
theorem reductionProof1092 : EqualModuloRelations reduction1092.relations reduction1092.input reduction1092.output := by lin_cert using reduction1092.terms
theorem substitutionProof1092 : IsMapEvaluation generatorImages reduction1092.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69] reduction1092.output := by lin_cert using reduction1092.terms
def map_32_97 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1143 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1143 : InImage map_32_97 image1143 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1143 : Bundle := named_bundle% "RealMapCertificates/relations/basis1143.json"
theorem reductionProof1143 : EqualModuloRelations reduction1143.relations reduction1143.input reduction1143.output := by lin_cert using reduction1143.terms
theorem substitutionProof1143 : IsMapEvaluation generatorImages reduction1143.relations [1,159] reduction1143.output := by lin_cert using reduction1143.terms
def map_32_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1273 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1273 : InImage map_32_102 image1273 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1273 : Bundle := named_bundle% "RealMapCertificates/relations/basis1273.json"
theorem reductionProof1273 : EqualModuloRelations reduction1273.relations reduction1273.input reduction1273.output := by lin_cert using reduction1273.terms
theorem substitutionProof1273 : IsMapEvaluation generatorImages reduction1273.relations [182] reduction1273.output := by lin_cert using reduction1273.terms
def map_32_103 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1314 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1314 : InImage map_32_103 image1314 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1314 : Bundle := named_bundle% "RealMapCertificates/relations/basis1314.json"
theorem reductionProof1314 : EqualModuloRelations reduction1314.relations reduction1314.input reduction1314.output := by lin_cert using reduction1314.terms
theorem substitutionProof1314 : IsMapEvaluation generatorImages reduction1314.relations [0,183] reduction1314.output := by lin_cert using reduction1314.terms
def map_32_105 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1375 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1375 : InImage map_32_105 image1375 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1375 : Bundle := named_bundle% "RealMapCertificates/relations/basis1375.json"
theorem reductionProof1375 : EqualModuloRelations reduction1375.relations reduction1375.input reduction1375.output := by lin_cert using reduction1375.terms
theorem substitutionProof1375 : IsMapEvaluation generatorImages reduction1375.relations [199] reduction1375.output := by lin_cert using reduction1375.terms
def map_32_106 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1414 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1414 : InImage map_32_106 image1414 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1414 : Bundle := named_bundle% "RealMapCertificates/relations/basis1414.json"
theorem reductionProof1414 : EqualModuloRelations reduction1414.relations reduction1414.input reduction1414.output := by lin_cert using reduction1414.terms
theorem substitutionProof1414 : IsMapEvaluation generatorImages reduction1414.relations [0,200] reduction1414.output := by lin_cert using reduction1414.terms
def map_32_108 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1470 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1470 : InImage map_32_108 image1470 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1470 : Bundle := named_bundle% "RealMapCertificates/relations/basis1470.json"
theorem reductionProof1470 : EqualModuloRelations reduction1470.relations reduction1470.input reduction1470.output := by lin_cert using reduction1470.terms
theorem substitutionProof1470 : IsMapEvaluation generatorImages reduction1470.relations [8,145] reduction1470.output := by lin_cert using reduction1470.terms
def map_32_109 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1523 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1523 : InImage map_32_109 image1523 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1523 : Bundle := named_bundle% "RealMapCertificates/relations/basis1523.json"
theorem reductionProof1523 : EqualModuloRelations reduction1523.relations reduction1523.input reduction1523.output := by lin_cert using reduction1523.terms
theorem substitutionProof1523 : IsMapEvaluation generatorImages reduction1523.relations [0,16,111] reduction1523.output := by lin_cert using reduction1523.terms
def map_32_110 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1555 : InImage map_32_110 image1555 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1555 : Bundle := named_bundle% "RealMapCertificates/relations/basis1555.json"
theorem reductionProof1555 : EqualModuloRelations reduction1555.relations reduction1555.input reduction1555.output := by lin_cert using reduction1555.terms
theorem substitutionProof1555 : IsMapEvaluation generatorImages reduction1555.relations [0,0,17,111] reduction1555.output := by lin_cert using reduction1555.terms
def map_32_111 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1590 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1590 : InImage map_32_111 image1590 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1590 : Bundle := named_bundle% "RealMapCertificates/relations/basis1590.json"
theorem reductionProof1590 : EqualModuloRelations reduction1590.relations reduction1590.input reduction1590.output := by lin_cert using reduction1590.terms
theorem substitutionProof1590 : IsMapEvaluation generatorImages reduction1590.relations [8,152] reduction1590.output := by lin_cert using reduction1590.terms
def image1591 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1591 : InImage map_32_111 image1591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1591 : Bundle := named_bundle% "RealMapCertificates/relations/basis1591.json"
theorem reductionProof1591 : EqualModuloRelations reduction1591.relations reduction1591.input reduction1591.output := by lin_cert using reduction1591.terms
theorem substitutionProof1591 : IsMapEvaluation generatorImages reduction1591.relations [0,0,0,210] reduction1591.output := by lin_cert using reduction1591.terms
def map_32_112 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1636 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1636 : InImage map_32_112 image1636 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1636 : Bundle := named_bundle% "RealMapCertificates/relations/basis1636.json"
theorem reductionProof1636 : EqualModuloRelations reduction1636.relations reduction1636.input reduction1636.output := by lin_cert using reduction1636.terms
theorem substitutionProof1636 : IsMapEvaluation generatorImages reduction1636.relations [0,8,153] reduction1636.output := by lin_cert using reduction1636.terms
def map_32_114 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1702 : InImage map_32_114 image1702 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1702 : Bundle := named_bundle% "RealMapCertificates/relations/basis1702.json"
theorem reductionProof1702 : EqualModuloRelations reduction1702.relations reduction1702.input reduction1702.output := by lin_cert using reduction1702.terms
theorem substitutionProof1702 : IsMapEvaluation generatorImages reduction1702.relations [8,8,110] reduction1702.output := by lin_cert using reduction1702.terms
def map_32_115 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1744 : InImage map_32_115 image1744 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1744 : Bundle := named_bundle% "RealMapCertificates/relations/basis1744.json"
theorem reductionProof1744 : EqualModuloRelations reduction1744.relations reduction1744.input reduction1744.output := by lin_cert using reduction1744.terms
theorem substitutionProof1744 : IsMapEvaluation generatorImages reduction1744.relations [0,8,8,111] reduction1744.output := by lin_cert using reduction1744.terms
def map_32_117 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1807 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1807 : InImage map_32_117 image1807 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1807 : Bundle := named_bundle% "RealMapCertificates/relations/basis1807.json"
theorem reductionProof1807 : EqualModuloRelations reduction1807.relations reduction1807.input reduction1807.output := by lin_cert using reduction1807.terms
theorem substitutionProof1807 : IsMapEvaluation generatorImages reduction1807.relations [8,8,116] reduction1807.output := by lin_cert using reduction1807.terms
def image1808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1808 : InImage map_32_117 image1808 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1808 : Bundle := named_bundle% "RealMapCertificates/relations/basis1808.json"
theorem reductionProof1808 : EqualModuloRelations reduction1808.relations reduction1808.input reduction1808.output := by lin_cert using reduction1808.terms
theorem substitutionProof1808 : IsMapEvaluation generatorImages reduction1808.relations [0,0,0,0,0,0,224] reduction1808.output := by lin_cert using reduction1808.terms
def map_32_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1850 : InImage map_32_118 image1850 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1850 : Bundle := named_bundle% "RealMapCertificates/relations/basis1850.json"
theorem reductionProof1850 : EqualModuloRelations reduction1850.relations reduction1850.input reduction1850.output := by lin_cert using reduction1850.terms
theorem substitutionProof1850 : IsMapEvaluation generatorImages reduction1850.relations [0,0,0,0,0,0,0,225] reduction1850.output := by lin_cert using reduction1850.terms
def map_32_120 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1920 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1920 : InImage map_32_120 image1920 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1920 : Bundle := named_bundle% "RealMapCertificates/relations/basis1920.json"
theorem reductionProof1920 : EqualModuloRelations reduction1920.relations reduction1920.input reduction1920.output := by lin_cert using reduction1920.terms
theorem substitutionProof1920 : IsMapEvaluation generatorImages reduction1920.relations [8,8,8,71] reduction1920.output := by lin_cert using reduction1920.terms
def map_32_123 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2041 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2041 : InImage map_32_123 image2041 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2041 : Bundle := named_bundle% "RealMapCertificates/relations/basis2041.json"
theorem reductionProof2041 : EqualModuloRelations reduction2041.relations reduction2041.input reduction2041.output := by lin_cert using reduction2041.terms
theorem substitutionProof2041 : IsMapEvaluation generatorImages reduction2041.relations [8,8,8,77] reduction2041.output := by lin_cert using reduction2041.terms
def map_32_126 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2168 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2168 : InImage map_32_126 image2168 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2168 : Bundle := named_bundle% "RealMapCertificates/relations/basis2168.json"
theorem reductionProof2168 : EqualModuloRelations reduction2168.relations reduction2168.input reduction2168.output := by lin_cert using reduction2168.terms
theorem substitutionProof2168 : IsMapEvaluation generatorImages reduction2168.relations [8,8,8,8,49] reduction2168.output := by lin_cert using reduction2168.terms
def image2169 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2169 : InImage map_32_126 image2169 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2169 : Bundle := named_bundle% "RealMapCertificates/relations/basis2169.json"
theorem reductionProof2169 : EqualModuloRelations reduction2169.relations reduction2169.input reduction2169.output := by lin_cert using reduction2169.terms
theorem substitutionProof2169 : IsMapEvaluation generatorImages reduction2169.relations [0,0,0,0,0,0,0,0,0,0,245] reduction2169.output := by lin_cert using reduction2169.terms
def map_32_127 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2224 : InImage map_32_127 image2224 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2224 : Bundle := named_bundle% "RealMapCertificates/relations/basis2224.json"
theorem reductionProof2224 : EqualModuloRelations reduction2224.relations reduction2224.input reduction2224.output := by lin_cert using reduction2224.terms
theorem substitutionProof2224 : IsMapEvaluation generatorImages reduction2224.relations [1,5,224] reduction2224.output := by lin_cert using reduction2224.terms
def image2225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2225 : InImage map_32_127 image2225 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2225 : Bundle := named_bundle% "RealMapCertificates/relations/basis2225.json"
theorem reductionProof2225 : EqualModuloRelations reduction2225.relations reduction2225.input reduction2225.output := by lin_cert using reduction2225.terms
theorem substitutionProof2225 : IsMapEvaluation generatorImages reduction2225.relations [0,0,0,0,0,0,0,0,0,0,0,246] reduction2225.output := by lin_cert using reduction2225.terms
def map_32_128 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image2267 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2267 : InImage map_32_128 image2267 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2267 : Bundle := named_bundle% "RealMapCertificates/relations/basis2267.json"
theorem reductionProof2267 : EqualModuloRelations reduction2267.relations reduction2267.input reduction2267.output := by lin_cert using reduction2267.terms
theorem substitutionProof2267 : IsMapEvaluation generatorImages reduction2267.relations [0,0,297] reduction2267.output := by lin_cert using reduction2267.terms
def map_32_129 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2327 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2327 : InImage map_32_129 image2327 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2327 : Bundle := named_bundle% "RealMapCertificates/relations/basis2327.json"
theorem reductionProof2327 : EqualModuloRelations reduction2327.relations reduction2327.input reduction2327.output := by lin_cert using reduction2327.terms
theorem substitutionProof2327 : IsMapEvaluation generatorImages reduction2327.relations [8,8,8,8,55] reduction2327.output := by lin_cert using reduction2327.terms
def map_32_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2448 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2448 : InImage map_32_131 image2448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2448 : Bundle := named_bundle% "RealMapCertificates/relations/basis2448.json"
theorem reductionProof2448 : EqualModuloRelations reduction2448.relations reduction2448.input reduction2448.output := by lin_cert using reduction2448.terms
theorem substitutionProof2448 : IsMapEvaluation generatorImages reduction2448.relations [0,0,8,224] reduction2448.output := by lin_cert using reduction2448.terms
def map_32_132 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2507 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2507 : InImage map_32_132 image2507 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2507 : Bundle := named_bundle% "RealMapCertificates/relations/basis2507.json"
theorem reductionProof2507 : EqualModuloRelations reduction2507.relations reduction2507.input reduction2507.output := by lin_cert using reduction2507.terms
theorem substitutionProof2507 : IsMapEvaluation generatorImages reduction2507.relations [8,8,8,8,8,31] reduction2507.output := by lin_cert using reduction2507.terms
def map_32_134 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2645 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2645 : InImage map_32_134 image2645 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2645 : Bundle := named_bundle% "RealMapCertificates/relations/basis2645.json"
theorem reductionProof2645 : EqualModuloRelations reduction2645.relations reduction2645.input reduction2645.output := by lin_cert using reduction2645.terms
theorem substitutionProof2645 : IsMapEvaluation generatorImages reduction2645.relations [0,0,8,237] reduction2645.output := by lin_cert using reduction2645.terms
def map_32_135 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2732 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2732 : InImage map_32_135 image2732 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2732 : Bundle := named_bundle% "RealMapCertificates/relations/basis2732.json"
theorem reductionProof2732 : EqualModuloRelations reduction2732.relations reduction2732.input reduction2732.output := by lin_cert using reduction2732.terms
theorem substitutionProof2732 : IsMapEvaluation generatorImages reduction2732.relations [8,8,8,8,8,39] reduction2732.output := by lin_cert using reduction2732.terms
def map_32_137 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2881 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2881 : InImage map_32_137 image2881 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2881 : Bundle := named_bundle% "RealMapCertificates/relations/basis2881.json"
theorem reductionProof2881 : EqualModuloRelations reduction2881.relations reduction2881.input reduction2881.output := by lin_cert using reduction2881.terms
theorem substitutionProof2881 : IsMapEvaluation generatorImages reduction2881.relations [0,0,8,16,137] reduction2881.output := by lin_cert using reduction2881.terms
def map_32_138 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2959 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2959 : InImage map_32_138 image2959 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2959 : Bundle := named_bundle% "RealMapCertificates/relations/basis2959.json"
theorem reductionProof2959 : EqualModuloRelations reduction2959.relations reduction2959.input reduction2959.output := by lin_cert using reduction2959.terms
theorem substitutionProof2959 : IsMapEvaluation generatorImages reduction2959.relations [8,8,8,8,8,8,16] reduction2959.output := by lin_cert using reduction2959.terms
def map_32_140 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image3118 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3118 : InImage map_32_140 image3118 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3118 : Bundle := named_bundle% "RealMapCertificates/relations/basis3118.json"
theorem reductionProof3118 : EqualModuloRelations reduction3118.relations reduction3118.input reduction3118.output := by lin_cert using reduction3118.terms
theorem substitutionProof3118 : IsMapEvaluation generatorImages reduction3118.relations [452] reduction3118.output := by lin_cert using reduction3118.terms
def map_32_141 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image3214 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3214 : InImage map_32_141 image3214 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3214 : Bundle := named_bundle% "RealMapCertificates/relations/basis3214.json"
theorem reductionProof3214 : EqualModuloRelations reduction3214.relations reduction3214.input reduction3214.output := by lin_cert using reduction3214.terms
theorem substitutionProof3214 : IsMapEvaluation generatorImages reduction3214.relations [17,225] reduction3214.output := by lin_cert using reduction3214.terms
def image3215 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3215 : InImage map_32_141 image3215 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3215 : Bundle := named_bundle% "RealMapCertificates/relations/basis3215.json"
theorem reductionProof3215 : EqualModuloRelations reduction3215.relations reduction3215.input reduction3215.output := by lin_cert using reduction3215.terms
theorem substitutionProof3215 : IsMapEvaluation generatorImages reduction3215.relations [8,8,8,8,8,8,19] reduction3215.output := by lin_cert using reduction3215.terms
def map_32_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3372 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3372 : InImage map_32_143 image3372 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3372 : Bundle := named_bundle% "RealMapCertificates/relations/basis3372.json"
theorem reductionProof3372 : EqualModuloRelations reduction3372.relations reduction3372.input reduction3372.output := by lin_cert using reduction3372.terms
theorem substitutionProof3372 : IsMapEvaluation generatorImages reduction3372.relations [488] reduction3372.output := by lin_cert using reduction3372.terms
def map_32_144 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3457 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation3457 : InImage map_32_144 image3457 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3457 : Bundle := named_bundle% "RealMapCertificates/relations/basis3457.json"
theorem reductionProof3457 : EqualModuloRelations reduction3457.relations reduction3457.input reduction3457.output := by lin_cert using reduction3457.terms
theorem substitutionProof3457 : IsMapEvaluation generatorImages reduction3457.relations [17,238] reduction3457.output := by lin_cert using reduction3457.terms
def image3458 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3458 : InImage map_32_144 image3458 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3458 : Bundle := named_bundle% "RealMapCertificates/relations/basis3458.json"
theorem reductionProof3458 : EqualModuloRelations reduction3458.relations reduction3458.input reduction3458.output := by lin_cert using reduction3458.terms
theorem substitutionProof3458 : IsMapEvaluation generatorImages reduction3458.relations [8,8,8,8,8,8,8,8] reduction3458.output := by lin_cert using reduction3458.terms
def map_32_146 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3611 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3611 : InImage map_32_146 image3611 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3611 : Bundle := named_bundle% "RealMapCertificates/relations/basis3611.json"
theorem reductionProof3611 : EqualModuloRelations reduction3611.relations reduction3611.input reduction3611.output := by lin_cert using reduction3611.terms
theorem substitutionProof3611 : IsMapEvaluation generatorImages reduction3611.relations [16,244] reduction3611.output := by lin_cert using reduction3611.terms
def map_32_147 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3714 : InImage map_32_147 image3714 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3714 : Bundle := named_bundle% "RealMapCertificates/relations/basis3714.json"
theorem reductionProof3714 : EqualModuloRelations reduction3714.relations reduction3714.input reduction3714.output := by lin_cert using reduction3714.terms
theorem substitutionProof3714 : IsMapEvaluation generatorImages reduction3714.relations [16,17,138] reduction3714.output := by lin_cert using reduction3714.terms
def image3715 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3715 : InImage map_32_147 image3715 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3715 : Bundle := named_bundle% "RealMapCertificates/relations/basis3715.json"
theorem reductionProof3715 : EqualModuloRelations reduction3715.relations reduction3715.input reduction3715.output := by lin_cert using reduction3715.terms
theorem substitutionProof3715 : IsMapEvaluation generatorImages reduction3715.relations [8,8,8,8,8,8,8,9] reduction3715.output := by lin_cert using reduction3715.terms
def image3716 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3716 : InImage map_32_147 image3716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3716 : Bundle := named_bundle% "RealMapCertificates/relations/basis3716.json"
theorem reductionProof3716 : EqualModuloRelations reduction3716.relations reduction3716.input reduction3716.output := by lin_cert using reduction3716.terms
theorem substitutionProof3716 : IsMapEvaluation generatorImages reduction3716.relations [0,17,244] reduction3716.output := by lin_cert using reduction3716.terms
def map_32_148 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3805 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3805 : InImage map_32_148 image3805 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3805 : Bundle := named_bundle% "RealMapCertificates/relations/basis3805.json"
theorem reductionProof3805 : EqualModuloRelations reduction3805.relations reduction3805.input reduction3805.output := by lin_cert using reduction3805.terms
theorem substitutionProof3805 : IsMapEvaluation generatorImages reduction3805.relations [0,17,17,138] reduction3805.output := by lin_cert using reduction3805.terms
def map_32_149 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image3881 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3881 : InImage map_32_149 image3881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3881 : Bundle := named_bundle% "RealMapCertificates/relations/basis3881.json"
theorem reductionProof3881 : EqualModuloRelations reduction3881.relations reduction3881.input reduction3881.output := by lin_cert using reduction3881.terms
theorem substitutionProof3881 : IsMapEvaluation generatorImages reduction3881.relations [8,343] reduction3881.output := by lin_cert using reduction3881.terms
def image3882 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3882 : InImage map_32_149 image3882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3882 : Bundle := named_bundle% "RealMapCertificates/relations/basis3882.json"
theorem reductionProof3882 : EqualModuloRelations reduction3882.relations reduction3882.input reduction3882.output := by lin_cert using reduction3882.terms
theorem substitutionProof3882 : IsMapEvaluation generatorImages reduction3882.relations [1,59,137] reduction3882.output := by lin_cert using reduction3882.terms
def image3883 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3883 : InImage map_32_149 image3883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3883 : Bundle := named_bundle% "RealMapCertificates/relations/basis3883.json"
theorem reductionProof3883 : EqualModuloRelations reduction3883.relations reduction3883.input reduction3883.output := by lin_cert using reduction3883.terms
theorem substitutionProof3883 : IsMapEvaluation generatorImages reduction3883.relations [0,0,0,0,0,0,491] reduction3883.output := by lin_cert using reduction3883.terms
def map_32_150 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3972 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3972 : InImage map_32_150 image3972 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3972 : Bundle := named_bundle% "RealMapCertificates/relations/basis3972.json"
theorem reductionProof3972 : EqualModuloRelations reduction3972.relations reduction3972.input reduction3972.output := by lin_cert using reduction3972.terms
theorem substitutionProof3972 : IsMapEvaluation generatorImages reduction3972.relations [8,17,185] reduction3972.output := by lin_cert using reduction3972.terms
def image3973 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3973 : InImage map_32_150 image3973 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3973 : Bundle := named_bundle% "RealMapCertificates/relations/basis3973.json"
theorem reductionProof3973 : EqualModuloRelations reduction3973.relations reduction3973.input reduction3973.output := by lin_cert using reduction3973.terms
theorem substitutionProof3973 : IsMapEvaluation generatorImages reduction3973.relations [8,8,8,8,8,8,8,13] reduction3973.output := by lin_cert using reduction3973.terms
def image3974 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3974 : InImage map_32_150 image3974 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3974 : Bundle := named_bundle% "RealMapCertificates/relations/basis3974.json"
theorem reductionProof3974 : EqualModuloRelations reduction3974.relations reduction3974.input reduction3974.output := by lin_cert using reduction3974.terms
theorem substitutionProof3974 : IsMapEvaluation generatorImages reduction3974.relations [0,0,0,0,0,509] reduction3974.output := by lin_cert using reduction3974.terms
def map_32_152 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image4153 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4153 : InImage map_32_152 image4153 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4153 : Bundle := named_bundle% "RealMapCertificates/relations/basis4153.json"
theorem reductionProof4153 : EqualModuloRelations reduction4153.relations reduction4153.input reduction4153.output := by lin_cert using reduction4153.terms
theorem substitutionProof4153 : IsMapEvaluation generatorImages reduction4153.relations [8,8,244] reduction4153.output := by lin_cert using reduction4153.terms
def map_32_153 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4252 : InImage map_32_153 image4252 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4252 : Bundle := named_bundle% "RealMapCertificates/relations/basis4252.json"
theorem reductionProof4252 : EqualModuloRelations reduction4252.relations reduction4252.input reduction4252.output := by lin_cert using reduction4252.terms
theorem substitutionProof4252 : IsMapEvaluation generatorImages reduction4252.relations [8,8,17,138] reduction4252.output := by lin_cert using reduction4252.terms
def image4253 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4253 : InImage map_32_153 image4253 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4253 : Bundle := named_bundle% "RealMapCertificates/relations/basis4253.json"
theorem reductionProof4253 : EqualModuloRelations reduction4253.relations reduction4253.input reduction4253.output := by lin_cert using reduction4253.terms
theorem substitutionProof4253 : IsMapEvaluation generatorImages reduction4253.relations [8,8,8,8,8,8,9,13] reduction4253.output := by lin_cert using reduction4253.terms
def map_32_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4333 : InImage map_32_154 image4333 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4333 : Bundle := named_bundle% "RealMapCertificates/relations/basis4333.json"
theorem reductionProof4333 : EqualModuloRelations reduction4333.relations reduction4333.input reduction4333.output := by lin_cert using reduction4333.terms
theorem substitutionProof4333 : IsMapEvaluation generatorImages reduction4333.relations [0,0,0,0,64,137] reduction4333.output := by lin_cert using reduction4333.terms
def map_32_155 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4408 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4408 : InImage map_32_155 image4408 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4408 : Bundle := named_bundle% "RealMapCertificates/relations/basis4408.json"
theorem reductionProof4408 : EqualModuloRelations reduction4408.relations reduction4408.input reduction4408.output := by lin_cert using reduction4408.terms
theorem substitutionProof4408 : IsMapEvaluation generatorImages reduction4408.relations [8,8,257] reduction4408.output := by lin_cert using reduction4408.terms
def image4409 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4409 : InImage map_32_155 image4409 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4409 : Bundle := named_bundle% "RealMapCertificates/relations/basis4409.json"
theorem reductionProof4409 : EqualModuloRelations reduction4409.relations reduction4409.input reduction4409.output := by lin_cert using reduction4409.terms
theorem substitutionProof4409 : IsMapEvaluation generatorImages reduction4409.relations [0,0,0,0,0,64,138] reduction4409.output := by lin_cert using reduction4409.terms
def map_32_156 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image4499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4499 : InImage map_32_156 image4499 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4499 : Bundle := named_bundle% "RealMapCertificates/relations/basis4499.json"
theorem reductionProof4499 : EqualModuloRelations reduction4499.relations reduction4499.input reduction4499.output := by lin_cert using reduction4499.terms
theorem substitutionProof4499 : IsMapEvaluation generatorImages reduction4499.relations [8,8,17,147] reduction4499.output := by lin_cert using reduction4499.terms
def image4500 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4500 : InImage map_32_156 image4500 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4500 : Bundle := named_bundle% "RealMapCertificates/relations/basis4500.json"
theorem reductionProof4500 : EqualModuloRelations reduction4500.relations reduction4500.input reduction4500.output := by lin_cert using reduction4500.terms
theorem substitutionProof4500 : IsMapEvaluation generatorImages reduction4500.relations [8,8,8,8,8,8,13,13] reduction4500.output := by lin_cert using reduction4500.terms
def map_32_158 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4672 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4672 : InImage map_32_158 image4672 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4672 : Bundle := named_bundle% "RealMapCertificates/relations/basis4672.json"
theorem reductionProof4672 : EqualModuloRelations reduction4672.relations reduction4672.input reduction4672.output := by lin_cert using reduction4672.terms
theorem substitutionProof4672 : IsMapEvaluation generatorImages reduction4672.relations [8,8,16,149] reduction4672.output := by lin_cert using reduction4672.terms
def image4673 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4673 : InImage map_32_158 image4673 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4673 : Bundle := named_bundle% "RealMapCertificates/relations/basis4673.json"
theorem reductionProof4673 : EqualModuloRelations reduction4673.relations reduction4673.input reduction4673.output := by lin_cert using reduction4673.terms
theorem substitutionProof4673 : IsMapEvaluation generatorImages reduction4673.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4673.output := by lin_cert using reduction4673.terms
end RealMapCertificates
