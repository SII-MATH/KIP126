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
  | 23 => [[7,7]]
  | 52 => []
  | 64 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 140 => [[2,4,4,4,4,4,4,4]]
  | 149 => [[4,9,12]]
  | 159 => [[3,4,4,4,4,4,4,4]]
  | 188 => []
  | 194 => [[7,10,12]]
  | 209 => []
  | 212 => []
  | 220 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 278 => []
  | 279 => []
  | 303 => []
  | 316 => []
  | 318 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 382 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 517 => []
  | 586 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 655 => []
  | 667 => []
  | 690 => []
  | 704 => []
  | 716 => []
  | 738 => []
  | 797 => []
  | 812 => []
  | 832 => []
  | 854 => []
  | 897 => []
  | 940 => []
  | 956 => []
  | 963 => []
  | 1051 => []
  | 1084 => []
  | 1105 => []
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1365 => [[6,9,12,12,12]]
  | 1366 => [[7,9,12,12,12]]
  | 1382 => []
  | 1383 => []
  | 1385 => []
  | 1402 => []
  | 1427 => [[5,10,12,12,12]]
  | 1439 => []
  | 1441 => []
  | 1482 => [[7,10,12,12,12]]
  | 1483 => []
  | 1502 => []
  | 1553 => []
  | 1568 => []
  | 1595 => []
  | _ => []
def map_32_198 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image9357 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9357 : InImage map_32_198 image9357 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction9357 : Bundle := named_bundle% "RealMapCertificates/relations/basis9357.json"
theorem reductionProof9357 : EqualModuloRelations reduction9357.relations reduction9357.input reduction9357.output := by lin_cert using reduction9357.terms
theorem substitutionProof9357 : IsMapEvaluation generatorImages reduction9357.relations [64,404] reduction9357.output := by lin_cert using reduction9357.terms
def image9358 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9358 : InImage map_32_198 image9358 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction9358 : Bundle := named_bundle% "RealMapCertificates/relations/basis9358.json"
theorem reductionProof9358 : EqualModuloRelations reduction9358.relations reduction9358.input reduction9358.output := by lin_cert using reduction9358.terms
theorem substitutionProof9358 : IsMapEvaluation generatorImages reduction9358.relations [13,13,13,13,13,13,52] reduction9358.output := by lin_cert using reduction9358.terms
def image9359 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9359 : InImage map_32_198 image9359 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction9359 : Bundle := named_bundle% "RealMapCertificates/relations/basis9359.json"
theorem reductionProof9359 : EqualModuloRelations reduction9359.relations reduction9359.input reduction9359.output := by lin_cert using reduction9359.terms
theorem substitutionProof9359 : IsMapEvaluation generatorImages reduction9359.relations [8,9,13,13,23,101] reduction9359.output := by lin_cert using reduction9359.terms
def image9360 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9360 : InImage map_32_198 image9360 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction9360 : Bundle := named_bundle% "RealMapCertificates/relations/basis9360.json"
theorem reductionProof9360 : EqualModuloRelations reduction9360.relations reduction9360.input reduction9360.output := by lin_cert using reduction9360.terms
theorem substitutionProof9360 : IsMapEvaluation generatorImages reduction9360.relations [8,8,8,8,8,212] reduction9360.output := by lin_cert using reduction9360.terms
def image9361 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9361 : InImage map_32_198 image9361 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction9361 : Bundle := named_bundle% "RealMapCertificates/relations/basis9361.json"
theorem reductionProof9361 : EqualModuloRelations reduction9361.relations reduction9361.input reduction9361.output := by lin_cert using reduction9361.terms
theorem substitutionProof9361 : IsMapEvaluation generatorImages reduction9361.relations [0,113,260] reduction9361.output := by lin_cert using reduction9361.terms
def image9362 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9362 : InImage map_32_198 image9362 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction9362 : Bundle := named_bundle% "RealMapCertificates/relations/basis9362.json"
theorem reductionProof9362 : EqualModuloRelations reduction9362.relations reduction9362.input reduction9362.output := by lin_cert using reduction9362.terms
theorem substitutionProof9362 : IsMapEvaluation generatorImages reduction9362.relations [0,0,0,0,64,347] reduction9362.output := by lin_cert using reduction9362.terms
def map_32_199 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9500 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9500 : InImage map_32_199 image9500 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9500 : Bundle := named_bundle% "RealMapCertificates/relations/basis9500.json"
theorem reductionProof9500 : EqualModuloRelations reduction9500.relations reduction9500.input reduction9500.output := by lin_cert using reduction9500.terms
theorem substitutionProof9500 : IsMapEvaluation generatorImages reduction9500.relations [8,9,642] reduction9500.output := by lin_cert using reduction9500.terms
def image9501 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9501 : InImage map_32_199 image9501 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9501 : Bundle := named_bundle% "RealMapCertificates/relations/basis9501.json"
theorem reductionProof9501 : EqualModuloRelations reduction9501.relations reduction9501.input reduction9501.output := by lin_cert using reduction9501.terms
theorem substitutionProof9501 : IsMapEvaluation generatorImages reduction9501.relations [0,0,0,0,0,138,209] reduction9501.output := by lin_cert using reduction9501.terms
def map_32_200 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9643 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9643 : InImage map_32_200 image9643 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9643 : Bundle := named_bundle% "RealMapCertificates/relations/basis9643.json"
theorem reductionProof9643 : EqualModuloRelations reduction9643.relations reduction9643.input reduction9643.output := by lin_cert using reduction9643.terms
theorem substitutionProof9643 : IsMapEvaluation generatorImages reduction9643.relations [13,13,13,13,194] reduction9643.output := by lin_cert using reduction9643.terms
def image9644 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9644 : InImage map_32_200 image9644 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9644 : Bundle := named_bundle% "RealMapCertificates/relations/basis9644.json"
theorem reductionProof9644 : EqualModuloRelations reduction9644.relations reduction9644.input reduction9644.output := by lin_cert using reduction9644.terms
theorem substitutionProof9644 : IsMapEvaluation generatorImages reduction9644.relations [8,64,260] reduction9644.output := by lin_cert using reduction9644.terms
def image9645 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9645 : InImage map_32_200 image9645 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9645 : Bundle := named_bundle% "RealMapCertificates/relations/basis9645.json"
theorem reductionProof9645 : EqualModuloRelations reduction9645.relations reduction9645.input reduction9645.output := by lin_cert using reduction9645.terms
theorem substitutionProof9645 : IsMapEvaluation generatorImages reduction9645.relations [8,8,23,316] reduction9645.output := by lin_cert using reduction9645.terms
def image9646 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9646 : InImage map_32_200 image9646 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9646 : Bundle := named_bundle% "RealMapCertificates/relations/basis9646.json"
theorem reductionProof9646 : EqualModuloRelations reduction9646.relations reduction9646.input reduction9646.output := by lin_cert using reduction9646.terms
theorem substitutionProof9646 : IsMapEvaluation generatorImages reduction9646.relations [8,8,8,8,318] reduction9646.output := by lin_cert using reduction9646.terms
def map_32_201 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9843 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9843 : InImage map_32_201 image9843 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9843 : Bundle := named_bundle% "RealMapCertificates/relations/basis9843.json"
theorem reductionProof9843 : EqualModuloRelations reduction9843.relations reduction9843.input reduction9843.output := by lin_cert using reduction9843.terms
theorem substitutionProof9843 : IsMapEvaluation generatorImages reduction9843.relations [64,434] reduction9843.output := by lin_cert using reduction9843.terms
def image9844 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9844 : InImage map_32_201 image9844 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9844 : Bundle := named_bundle% "RealMapCertificates/relations/basis9844.json"
theorem reductionProof9844 : EqualModuloRelations reduction9844.relations reduction9844.input reduction9844.output := by lin_cert using reduction9844.terms
theorem substitutionProof9844 : IsMapEvaluation generatorImages reduction9844.relations [8,13,13,13,23,101] reduction9844.output := by lin_cert using reduction9844.terms
def image9845 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9845 : InImage map_32_201 image9845 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9845 : Bundle := named_bundle% "RealMapCertificates/relations/basis9845.json"
theorem reductionProof9845 : EqualModuloRelations reduction9845.relations reduction9845.input reduction9845.output := by lin_cert using reduction9845.terms
theorem substitutionProof9845 : IsMapEvaluation generatorImages reduction9845.relations [8,8,8,8,9,212] reduction9845.output := by lin_cert using reduction9845.terms
def image9846 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9846 : InImage map_32_201 image9846 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9846 : Bundle := named_bundle% "RealMapCertificates/relations/basis9846.json"
theorem reductionProof9846 : EqualModuloRelations reduction9846.relations reduction9846.input reduction9846.output := by lin_cert using reduction9846.terms
theorem substitutionProof9846 : IsMapEvaluation generatorImages reduction9846.relations [0,8,897] reduction9846.output := by lin_cert using reduction9846.terms
def map_32_202 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9973 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9973 : InImage map_32_202 image9973 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9973 : Bundle := named_bundle% "RealMapCertificates/relations/basis9973.json"
theorem reductionProof9973 : EqualModuloRelations reduction9973.relations reduction9973.input reduction9973.output := by lin_cert using reduction9973.terms
theorem substitutionProof9973 : IsMapEvaluation generatorImages reduction9973.relations [8,13,642] reduction9973.output := by lin_cert using reduction9973.terms
def map_32_203 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10139 : InImage map_32_203 image10139 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10139 : Bundle := named_bundle% "RealMapCertificates/relations/basis10139.json"
theorem reductionProof10139 : EqualModuloRelations reduction10139.relations reduction10139.input reduction10139.output := by lin_cert using reduction10139.terms
theorem substitutionProof10139 : IsMapEvaluation generatorImages reduction10139.relations [8,64,278] reduction10139.output := by lin_cert using reduction10139.terms
def image10140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10140 : InImage map_32_203 image10140 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10140 : Bundle := named_bundle% "RealMapCertificates/relations/basis10140.json"
theorem reductionProof10140 : EqualModuloRelations reduction10140.relations reduction10140.input reduction10140.output := by lin_cert using reduction10140.terms
theorem substitutionProof10140 : IsMapEvaluation generatorImages reduction10140.relations [8,8,23,346] reduction10140.output := by lin_cert using reduction10140.terms
def image10141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10141 : InImage map_32_203 image10141 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10141 : Bundle := named_bundle% "RealMapCertificates/relations/basis10141.json"
theorem reductionProof10141 : EqualModuloRelations reduction10141.relations reduction10141.input reduction10141.output := by lin_cert using reduction10141.terms
theorem substitutionProof10141 : IsMapEvaluation generatorImages reduction10141.relations [8,8,8,8,348] reduction10141.output := by lin_cert using reduction10141.terms
def image10142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10142 : InImage map_32_203 image10142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10142 : Bundle := named_bundle% "RealMapCertificates/relations/basis10142.json"
theorem reductionProof10142 : EqualModuloRelations reduction10142.relations reduction10142.input reduction10142.output := by lin_cert using reduction10142.terms
theorem substitutionProof10142 : IsMapEvaluation generatorImages reduction10142.relations [1,5,963] reduction10142.output := by lin_cert using reduction10142.terms
def image10143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10143 : InImage map_32_203 image10143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10143 : Bundle := named_bundle% "RealMapCertificates/relations/basis10143.json"
theorem reductionProof10143 : EqualModuloRelations reduction10143.relations reduction10143.input reduction10143.output := by lin_cert using reduction10143.terms
theorem substitutionProof10143 : IsMapEvaluation generatorImages reduction10143.relations [0,0,0,0,0,0,0,0,0,0,0,1051] reduction10143.output := by lin_cert using reduction10143.terms
def map_32_204 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10344 : InImage map_32_204 image10344 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10344 : Bundle := named_bundle% "RealMapCertificates/relations/basis10344.json"
theorem reductionProof10344 : EqualModuloRelations reduction10344.relations reduction10344.input reduction10344.output := by lin_cert using reduction10344.terms
theorem substitutionProof10344 : IsMapEvaluation generatorImages reduction10344.relations [9,13,13,13,23,101] reduction10344.output := by lin_cert using reduction10344.terms
def image10345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10345 : InImage map_32_204 image10345 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10345 : Bundle := named_bundle% "RealMapCertificates/relations/basis10345.json"
theorem reductionProof10345 : EqualModuloRelations reduction10345.relations reduction10345.input reduction10345.output := by lin_cert using reduction10345.terms
theorem substitutionProof10345 : IsMapEvaluation generatorImages reduction10345.relations [8,956] reduction10345.output := by lin_cert using reduction10345.terms
def image10346 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10346 : InImage map_32_204 image10346 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10346 : Bundle := named_bundle% "RealMapCertificates/relations/basis10346.json"
theorem reductionProof10346 : EqualModuloRelations reduction10346.relations reduction10346.input reduction10346.output := by lin_cert using reduction10346.terms
theorem substitutionProof10346 : IsMapEvaluation generatorImages reduction10346.relations [8,8,8,8,13,212] reduction10346.output := by lin_cert using reduction10346.terms
def image10347 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10347 : InImage map_32_204 image10347 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10347 : Bundle := named_bundle% "RealMapCertificates/relations/basis10347.json"
theorem reductionProof10347 : EqualModuloRelations reduction10347.relations reduction10347.input reduction10347.output := by lin_cert using reduction10347.terms
theorem substitutionProof10347 : IsMapEvaluation generatorImages reduction10347.relations [0,8,940] reduction10347.output := by lin_cert using reduction10347.terms
def image10348 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10348 : InImage map_32_204 image10348 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10348 : Bundle := named_bundle% "RealMapCertificates/relations/basis10348.json"
theorem reductionProof10348 : EqualModuloRelations reduction10348.relations reduction10348.input reduction10348.output := by lin_cert using reduction10348.terms
theorem substitutionProof10348 : IsMapEvaluation generatorImages reduction10348.relations [0,0,0,0,0,0,0,0,0,0,1084] reduction10348.output := by lin_cert using reduction10348.terms
def map_32_205 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image10503 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10503 : InImage map_32_205 image10503 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10503 : Bundle := named_bundle% "RealMapCertificates/relations/basis10503.json"
theorem reductionProof10503 : EqualModuloRelations reduction10503.relations reduction10503.input reduction10503.output := by lin_cert using reduction10503.terms
theorem substitutionProof10503 : IsMapEvaluation generatorImages reduction10503.relations [9,13,642] reduction10503.output := by lin_cert using reduction10503.terms
def image10504 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10504 : InImage map_32_205 image10504 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10504 : Bundle := named_bundle% "RealMapCertificates/relations/basis10504.json"
theorem reductionProof10504 : EqualModuloRelations reduction10504.relations reduction10504.input reduction10504.output := by lin_cert using reduction10504.terms
theorem substitutionProof10504 : IsMapEvaluation generatorImages reduction10504.relations [0,0,0,0,0,0,0,0,0,1105] reduction10504.output := by lin_cert using reduction10504.terms
def map_32_206 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10669 : InImage map_32_206 image10669 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10669 : Bundle := named_bundle% "RealMapCertificates/relations/basis10669.json"
theorem reductionProof10669 : EqualModuloRelations reduction10669.relations reduction10669.input reduction10669.output := by lin_cert using reduction10669.terms
theorem substitutionProof10669 : IsMapEvaluation generatorImages reduction10669.relations [13,13,13,13,220] reduction10669.output := by lin_cert using reduction10669.terms
def image10670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10670 : InImage map_32_206 image10670 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10670 : Bundle := named_bundle% "RealMapCertificates/relations/basis10670.json"
theorem reductionProof10670 : EqualModuloRelations reduction10670.relations reduction10670.input reduction10670.output := by lin_cert using reduction10670.terms
theorem substitutionProof10670 : IsMapEvaluation generatorImages reduction10670.relations [8,16,627] reduction10670.output := by lin_cert using reduction10670.terms
def image10671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10671 : InImage map_32_206 image10671 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10671 : Bundle := named_bundle% "RealMapCertificates/relations/basis10671.json"
theorem reductionProof10671 : EqualModuloRelations reduction10671.relations reduction10671.input reduction10671.output := by lin_cert using reduction10671.terms
theorem substitutionProof10671 : IsMapEvaluation generatorImages reduction10671.relations [8,9,23,346] reduction10671.output := by lin_cert using reduction10671.terms
def image10672 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10672 : InImage map_32_206 image10672 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10672 : Bundle := named_bundle% "RealMapCertificates/relations/basis10672.json"
theorem reductionProof10672 : EqualModuloRelations reduction10672.relations reduction10672.input reduction10672.output := by lin_cert using reduction10672.terms
theorem substitutionProof10672 : IsMapEvaluation generatorImages reduction10672.relations [8,8,8,8,8,250] reduction10672.output := by lin_cert using reduction10672.terms
def map_32_207 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10898 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10898 : InImage map_32_207 image10898 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10898 : Bundle := named_bundle% "RealMapCertificates/relations/basis10898.json"
theorem reductionProof10898 : EqualModuloRelations reduction10898.relations reduction10898.input reduction10898.output := by lin_cert using reduction10898.terms
theorem substitutionProof10898 : IsMapEvaluation generatorImages reduction10898.relations [1317] reduction10898.output := by lin_cert using reduction10898.terms
def image10899 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10899 : InImage map_32_207 image10899 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10899 : Bundle := named_bundle% "RealMapCertificates/relations/basis10899.json"
theorem reductionProof10899 : EqualModuloRelations reduction10899.relations reduction10899.input reduction10899.output := by lin_cert using reduction10899.terms
theorem substitutionProof10899 : IsMapEvaluation generatorImages reduction10899.relations [13,13,13,13,23,101] reduction10899.output := by lin_cert using reduction10899.terms
def image10900 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10900 : InImage map_32_207 image10900 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10900 : Bundle := named_bundle% "RealMapCertificates/relations/basis10900.json"
theorem reductionProof10900 : EqualModuloRelations reduction10900.relations reduction10900.input reduction10900.output := by lin_cert using reduction10900.terms
theorem substitutionProof10900 : IsMapEvaluation generatorImages reduction10900.relations [8,138,188] reduction10900.output := by lin_cert using reduction10900.terms
def image10901 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10901 : InImage map_32_207 image10901 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10901 : Bundle := named_bundle% "RealMapCertificates/relations/basis10901.json"
theorem reductionProof10901 : EqualModuloRelations reduction10901.relations reduction10901.input reduction10901.output := by lin_cert using reduction10901.terms
theorem substitutionProof10901 : IsMapEvaluation generatorImages reduction10901.relations [8,8,8,9,13,212] reduction10901.output := by lin_cert using reduction10901.terms
def image10902 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10902 : InImage map_32_207 image10902 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10902 : Bundle := named_bundle% "RealMapCertificates/relations/basis10902.json"
theorem reductionProof10902 : EqualModuloRelations reduction10902.relations reduction10902.input reduction10902.output := by lin_cert using reduction10902.terms
theorem substitutionProof10902 : IsMapEvaluation generatorImages reduction10902.relations [0,8,17,627] reduction10902.output := by lin_cert using reduction10902.terms
def map_32_208 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image11026 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation11026 : InImage map_32_208 image11026 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11026 : Bundle := named_bundle% "RealMapCertificates/relations/basis11026.json"
theorem reductionProof11026 : EqualModuloRelations reduction11026.relations reduction11026.input reduction11026.output := by lin_cert using reduction11026.terms
theorem substitutionProof11026 : IsMapEvaluation generatorImages reduction11026.relations [1336] reduction11026.output := by lin_cert using reduction11026.terms
def image11027 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11027 : InImage map_32_208 image11027 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11027 : Bundle := named_bundle% "RealMapCertificates/relations/basis11027.json"
theorem reductionProof11027 : EqualModuloRelations reduction11027.relations reduction11027.input reduction11027.output := by lin_cert using reduction11027.terms
theorem substitutionProof11027 : IsMapEvaluation generatorImages reduction11027.relations [13,13,642] reduction11027.output := by lin_cert using reduction11027.terms
def map_32_209 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11204 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11204 : InImage map_32_209 image11204 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11204 : Bundle := named_bundle% "RealMapCertificates/relations/basis11204.json"
theorem reductionProof11204 : EqualModuloRelations reduction11204.relations reduction11204.input reduction11204.output := by lin_cert using reduction11204.terms
theorem substitutionProof11204 : IsMapEvaluation generatorImages reduction11204.relations [64,517] reduction11204.output := by lin_cert using reduction11204.terms
def image11205 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11205 : InImage map_32_209 image11205 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11205 : Bundle := named_bundle% "RealMapCertificates/relations/basis11205.json"
theorem reductionProof11205 : EqualModuloRelations reduction11205.relations reduction11205.input reduction11205.output := by lin_cert using reduction11205.terms
theorem substitutionProof11205 : IsMapEvaluation generatorImages reduction11205.relations [8,13,23,346] reduction11205.output := by lin_cert using reduction11205.terms
def image11206 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11206 : InImage map_32_209 image11206 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11206 : Bundle := named_bundle% "RealMapCertificates/relations/basis11206.json"
theorem reductionProof11206 : EqualModuloRelations reduction11206.relations reduction11206.input reduction11206.output := by lin_cert using reduction11206.terms
theorem substitutionProof11206 : IsMapEvaluation generatorImages reduction11206.relations [8,8,797] reduction11206.output := by lin_cert using reduction11206.terms
def image11207 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11207 : InImage map_32_209 image11207 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11207 : Bundle := named_bundle% "RealMapCertificates/relations/basis11207.json"
theorem reductionProof11207 : EqualModuloRelations reduction11207.relations reduction11207.input reduction11207.output := by lin_cert using reduction11207.terms
theorem substitutionProof11207 : IsMapEvaluation generatorImages reduction11207.relations [8,8,8,8,8,261] reduction11207.output := by lin_cert using reduction11207.terms
def map_32_210 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image11409 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11409 : InImage map_32_210 image11409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11409 : Bundle := named_bundle% "RealMapCertificates/relations/basis11409.json"
theorem reductionProof11409 : EqualModuloRelations reduction11409.relations reduction11409.input reduction11409.output := by lin_cert using reduction11409.terms
theorem substitutionProof11409 : IsMapEvaluation generatorImages reduction11409.relations [1365] reduction11409.output := by lin_cert using reduction11409.terms
def image11410 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11410 : InImage map_32_210 image11410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11410 : Bundle := named_bundle% "RealMapCertificates/relations/basis11410.json"
theorem reductionProof11410 : EqualModuloRelations reduction11410.relations reduction11410.input reduction11410.output := by lin_cert using reduction11410.terms
theorem substitutionProof11410 : IsMapEvaluation generatorImages reduction11410.relations [8,8,812] reduction11410.output := by lin_cert using reduction11410.terms
def image11411 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11411 : InImage map_32_210 image11411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11411 : Bundle := named_bundle% "RealMapCertificates/relations/basis11411.json"
theorem reductionProof11411 : EqualModuloRelations reduction11411.relations reduction11411.input reduction11411.output := by lin_cert using reduction11411.terms
theorem substitutionProof11411 : IsMapEvaluation generatorImages reduction11411.relations [8,8,8,13,13,212] reduction11411.output := by lin_cert using reduction11411.terms
def image11412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11412 : InImage map_32_210 image11412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11412 : Bundle := named_bundle% "RealMapCertificates/relations/basis11412.json"
theorem reductionProof11412 : EqualModuloRelations reduction11412.relations reduction11412.input reduction11412.output := by lin_cert using reduction11412.terms
theorem substitutionProof11412 : IsMapEvaluation generatorImages reduction11412.relations [0,8,17,655] reduction11412.output := by lin_cert using reduction11412.terms
def map_32_211 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image11570 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11570 : InImage map_32_211 image11570 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11570 : Bundle := named_bundle% "RealMapCertificates/relations/basis11570.json"
theorem reductionProof11570 : EqualModuloRelations reduction11570.relations reduction11570.input reduction11570.output := by lin_cert using reduction11570.terms
theorem substitutionProof11570 : IsMapEvaluation generatorImages reduction11570.relations [1382] reduction11570.output := by lin_cert using reduction11570.terms
def image11571 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11571 : InImage map_32_211 image11571 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11571 : Bundle := named_bundle% "RealMapCertificates/relations/basis11571.json"
theorem reductionProof11571 : EqualModuloRelations reduction11571.relations reduction11571.input reduction11571.output := by lin_cert using reduction11571.terms
theorem substitutionProof11571 : IsMapEvaluation generatorImages reduction11571.relations [0,1366] reduction11571.output := by lin_cert using reduction11571.terms
def map_32_212 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image11742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11742 : InImage map_32_212 image11742 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11742 : Bundle := named_bundle% "RealMapCertificates/relations/basis11742.json"
theorem reductionProof11742 : EqualModuloRelations reduction11742.relations reduction11742.input reduction11742.output := by lin_cert using reduction11742.terms
theorem substitutionProof11742 : IsMapEvaluation generatorImages reduction11742.relations [9,13,23,346] reduction11742.output := by lin_cert using reduction11742.terms
def image11743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11743 : InImage map_32_212 image11743 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11743 : Bundle := named_bundle% "RealMapCertificates/relations/basis11743.json"
theorem reductionProof11743 : EqualModuloRelations reduction11743.relations reduction11743.input reduction11743.output := by lin_cert using reduction11743.terms
theorem substitutionProof11743 : IsMapEvaluation generatorImages reduction11743.relations [8,64,347] reduction11743.output := by lin_cert using reduction11743.terms
def image11744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11744 : InImage map_32_212 image11744 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11744 : Bundle := named_bundle% "RealMapCertificates/relations/basis11744.json"
theorem reductionProof11744 : EqualModuloRelations reduction11744.relations reduction11744.input reduction11744.output := by lin_cert using reduction11744.terms
theorem substitutionProof11744 : IsMapEvaluation generatorImages reduction11744.relations [8,8,8,627] reduction11744.output := by lin_cert using reduction11744.terms
def image11745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11745 : InImage map_32_212 image11745 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11745 : Bundle := named_bundle% "RealMapCertificates/relations/basis11745.json"
theorem reductionProof11745 : EqualModuloRelations reduction11745.relations reduction11745.input reduction11745.output := by lin_cert using reduction11745.terms
theorem substitutionProof11745 : IsMapEvaluation generatorImages reduction11745.relations [8,8,8,8,9,261] reduction11745.output := by lin_cert using reduction11745.terms
def image11746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11746 : InImage map_32_212 image11746 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11746 : Bundle := named_bundle% "RealMapCertificates/relations/basis11746.json"
theorem reductionProof11746 : EqualModuloRelations reduction11746.relations reduction11746.input reduction11746.output := by lin_cert using reduction11746.terms
theorem substitutionProof11746 : IsMapEvaluation generatorImages reduction11746.relations [0,1383] reduction11746.output := by lin_cert using reduction11746.terms
def map_32_213 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image11992 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11992 : InImage map_32_213 image11992 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11992 : Bundle := named_bundle% "RealMapCertificates/relations/basis11992.json"
theorem reductionProof11992 : EqualModuloRelations reduction11992.relations reduction11992.input reduction11992.output := by lin_cert using reduction11992.terms
theorem substitutionProof11992 : IsMapEvaluation generatorImages reduction11992.relations [1427] reduction11992.output := by lin_cert using reduction11992.terms
def image11993 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11993 : InImage map_32_213 image11993 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11993 : Bundle := named_bundle% "RealMapCertificates/relations/basis11993.json"
theorem reductionProof11993 : EqualModuloRelations reduction11993.relations reduction11993.input reduction11993.output := by lin_cert using reduction11993.terms
theorem substitutionProof11993 : IsMapEvaluation generatorImages reduction11993.relations [8,8,854] reduction11993.output := by lin_cert using reduction11993.terms
def image11994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11994 : InImage map_32_213 image11994 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11994 : Bundle := named_bundle% "RealMapCertificates/relations/basis11994.json"
theorem reductionProof11994 : EqualModuloRelations reduction11994.relations reduction11994.input reduction11994.output := by lin_cert using reduction11994.terms
theorem substitutionProof11994 : IsMapEvaluation generatorImages reduction11994.relations [8,8,9,13,13,212] reduction11994.output := by lin_cert using reduction11994.terms
def image11995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11995 : InImage map_32_213 image11995 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11995 : Bundle := named_bundle% "RealMapCertificates/relations/basis11995.json"
theorem reductionProof11995 : EqualModuloRelations reduction11995.relations reduction11995.input reduction11995.output := by lin_cert using reduction11995.terms
theorem substitutionProof11995 : IsMapEvaluation generatorImages reduction11995.relations [1,1383] reduction11995.output := by lin_cert using reduction11995.terms
def image11996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11996 : InImage map_32_213 image11996 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11996 : Bundle := named_bundle% "RealMapCertificates/relations/basis11996.json"
theorem reductionProof11996 : EqualModuloRelations reduction11996.relations reduction11996.input reduction11996.output := by lin_cert using reduction11996.terms
theorem substitutionProof11996 : IsMapEvaluation generatorImages reduction11996.relations [0,8,8,832] reduction11996.output := by lin_cert using reduction11996.terms
def image11997 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11997 : InImage map_32_213 image11997 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11997 : Bundle := named_bundle% "RealMapCertificates/relations/basis11997.json"
theorem reductionProof11997 : EqualModuloRelations reduction11997.relations reduction11997.input reduction11997.output := by lin_cert using reduction11997.terms
theorem substitutionProof11997 : IsMapEvaluation generatorImages reduction11997.relations [0,0,1385] reduction11997.output := by lin_cert using reduction11997.terms
def map_32_214 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image12155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12155 : InImage map_32_214 image12155 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12155 : Bundle := named_bundle% "RealMapCertificates/relations/basis12155.json"
theorem reductionProof12155 : EqualModuloRelations reduction12155.relations reduction12155.input reduction12155.output := by lin_cert using reduction12155.terms
theorem substitutionProof12155 : IsMapEvaluation generatorImages reduction12155.relations [1439] reduction12155.output := by lin_cert using reduction12155.terms
def image12156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12156 : InImage map_32_214 image12156 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12156 : Bundle := named_bundle% "RealMapCertificates/relations/basis12156.json"
theorem reductionProof12156 : EqualModuloRelations reduction12156.relations reduction12156.input reduction12156.output := by lin_cert using reduction12156.terms
theorem substitutionProof12156 : IsMapEvaluation generatorImages reduction12156.relations [13,13,716] reduction12156.output := by lin_cert using reduction12156.terms
def image12157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12157 : InImage map_32_214 image12157 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12157 : Bundle := named_bundle% "RealMapCertificates/relations/basis12157.json"
theorem reductionProof12157 : EqualModuloRelations reduction12157.relations reduction12157.input reduction12157.output := by lin_cert using reduction12157.terms
theorem substitutionProof12157 : IsMapEvaluation generatorImages reduction12157.relations [13,13,13,13,13,13,83] reduction12157.output := by lin_cert using reduction12157.terms
def image12158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12158 : InImage map_32_214 image12158 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12158 : Bundle := named_bundle% "RealMapCertificates/relations/basis12158.json"
theorem reductionProof12158 : EqualModuloRelations reduction12158.relations reduction12158.input reduction12158.output := by lin_cert using reduction12158.terms
theorem substitutionProof12158 : IsMapEvaluation generatorImages reduction12158.relations [0,0,1402] reduction12158.output := by lin_cert using reduction12158.terms
def map_32_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12347 : InImage map_32_215 image12347 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12347 : Bundle := named_bundle% "RealMapCertificates/relations/basis12347.json"
theorem reductionProof12347 : EqualModuloRelations reduction12347.relations reduction12347.input reduction12347.output := by lin_cert using reduction12347.terms
theorem substitutionProof12347 : IsMapEvaluation generatorImages reduction12347.relations [13,13,23,346] reduction12347.output := by lin_cert using reduction12347.terms
def image12348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12348 : InImage map_32_215 image12348 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12348 : Bundle := named_bundle% "RealMapCertificates/relations/basis12348.json"
theorem reductionProof12348 : EqualModuloRelations reduction12348.relations reduction12348.input reduction12348.output := by lin_cert using reduction12348.terms
theorem substitutionProof12348 : IsMapEvaluation generatorImages reduction12348.relations [8,64,382] reduction12348.output := by lin_cert using reduction12348.terms
def image12349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12349 : InImage map_32_215 image12349 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12349 : Bundle := named_bundle% "RealMapCertificates/relations/basis12349.json"
theorem reductionProof12349 : EqualModuloRelations reduction12349.relations reduction12349.input reduction12349.output := by lin_cert using reduction12349.terms
theorem substitutionProof12349 : IsMapEvaluation generatorImages reduction12349.relations [8,8,8,655] reduction12349.output := by lin_cert using reduction12349.terms
def image12350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12350 : InImage map_32_215 image12350 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12350 : Bundle := named_bundle% "RealMapCertificates/relations/basis12350.json"
theorem reductionProof12350 : EqualModuloRelations reduction12350.relations reduction12350.input reduction12350.output := by lin_cert using reduction12350.terms
theorem substitutionProof12350 : IsMapEvaluation generatorImages reduction12350.relations [8,8,8,8,13,261] reduction12350.output := by lin_cert using reduction12350.terms
def image12351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12351 : InImage map_32_215 image12351 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12351 : Bundle := named_bundle% "RealMapCertificates/relations/basis12351.json"
theorem reductionProof12351 : EqualModuloRelations reduction12351.relations reduction12351.input reduction12351.output := by lin_cert using reduction12351.terms
theorem substitutionProof12351 : IsMapEvaluation generatorImages reduction12351.relations [1,1,1385] reduction12351.output := by lin_cert using reduction12351.terms
def map_32_216 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image12555 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12555 : InImage map_32_216 image12555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12555 : Bundle := named_bundle% "RealMapCertificates/relations/basis12555.json"
theorem reductionProof12555 : EqualModuloRelations reduction12555.relations reduction12555.input reduction12555.output := by lin_cert using reduction12555.terms
theorem substitutionProof12555 : IsMapEvaluation generatorImages reduction12555.relations [1482] reduction12555.output := by lin_cert using reduction12555.terms
def image12556 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12556 : InImage map_32_216 image12556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12556 : Bundle := named_bundle% "RealMapCertificates/relations/basis12556.json"
theorem reductionProof12556 : EqualModuloRelations reduction12556.relations reduction12556.input reduction12556.output := by lin_cert using reduction12556.terms
theorem substitutionProof12556 : IsMapEvaluation generatorImages reduction12556.relations [8,8,13,13,13,212] reduction12556.output := by lin_cert using reduction12556.terms
def image12557 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12557 : InImage map_32_216 image12557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12557 : Bundle := named_bundle% "RealMapCertificates/relations/basis12557.json"
theorem reductionProof12557 : EqualModuloRelations reduction12557.relations reduction12557.input reduction12557.output := by lin_cert using reduction12557.terms
theorem substitutionProof12557 : IsMapEvaluation generatorImages reduction12557.relations [8,8,8,667] reduction12557.output := by lin_cert using reduction12557.terms
def map_32_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12720 : InImage map_32_217 image12720 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12720 : Bundle := named_bundle% "RealMapCertificates/relations/basis12720.json"
theorem reductionProof12720 : EqualModuloRelations reduction12720.relations reduction12720.input reduction12720.output := by lin_cert using reduction12720.terms
theorem substitutionProof12720 : IsMapEvaluation generatorImages reduction12720.relations [1502] reduction12720.output := by lin_cert using reduction12720.terms
def map_32_218 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12900 : InImage map_32_218 image12900 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12900 : Bundle := named_bundle% "RealMapCertificates/relations/basis12900.json"
theorem reductionProof12900 : EqualModuloRelations reduction12900.relations reduction12900.input reduction12900.output := by lin_cert using reduction12900.terms
theorem substitutionProof12900 : IsMapEvaluation generatorImages reduction12900.relations [8,16,64,209] reduction12900.output := by lin_cert using reduction12900.terms
def image12901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12901 : InImage map_32_218 image12901 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12901 : Bundle := named_bundle% "RealMapCertificates/relations/basis12901.json"
theorem reductionProof12901 : EqualModuloRelations reduction12901.relations reduction12901.input reduction12901.output := by lin_cert using reduction12901.terms
theorem substitutionProof12901 : IsMapEvaluation generatorImages reduction12901.relations [8,8,8,690] reduction12901.output := by lin_cert using reduction12901.terms
def image12902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12902 : InImage map_32_218 image12902 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12902 : Bundle := named_bundle% "RealMapCertificates/relations/basis12902.json"
theorem reductionProof12902 : EqualModuloRelations reduction12902.relations reduction12902.input reduction12902.output := by lin_cert using reduction12902.terms
theorem substitutionProof12902 : IsMapEvaluation generatorImages reduction12902.relations [8,8,8,9,13,261] reduction12902.output := by lin_cert using reduction12902.terms
def image12903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12903 : InImage map_32_218 image12903 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12903 : Bundle := named_bundle% "RealMapCertificates/relations/basis12903.json"
theorem reductionProof12903 : EqualModuloRelations reduction12903.relations reduction12903.input reduction12903.output := by lin_cert using reduction12903.terms
theorem substitutionProof12903 : IsMapEvaluation generatorImages reduction12903.relations [0,64,586] reduction12903.output := by lin_cert using reduction12903.terms
def image12904 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12904 : InImage map_32_218 image12904 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12904 : Bundle := named_bundle% "RealMapCertificates/relations/basis12904.json"
theorem reductionProof12904 : EqualModuloRelations reduction12904.relations reduction12904.input reduction12904.output := by lin_cert using reduction12904.terms
theorem substitutionProof12904 : IsMapEvaluation generatorImages reduction12904.relations [0,0,140,324] reduction12904.output := by lin_cert using reduction12904.terms
def image12905 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12905 : InImage map_32_218 image12905 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12905 : Bundle := named_bundle% "RealMapCertificates/relations/basis12905.json"
theorem reductionProof12905 : EqualModuloRelations reduction12905.relations reduction12905.input reduction12905.output := by lin_cert using reduction12905.terms
theorem substitutionProof12905 : IsMapEvaluation generatorImages reduction12905.relations [0,0,0,0,1441] reduction12905.output := by lin_cert using reduction12905.terms
def map_32_219 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13145 : InImage map_32_219 image13145 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13145 : Bundle := named_bundle% "RealMapCertificates/relations/basis13145.json"
theorem reductionProof13145 : EqualModuloRelations reduction13145.relations reduction13145.input reduction13145.output := by lin_cert using reduction13145.terms
theorem substitutionProof13145 : IsMapEvaluation generatorImages reduction13145.relations [8,9,13,13,13,212] reduction13145.output := by lin_cert using reduction13145.terms
def image13146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13146 : InImage map_32_219 image13146 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13146 : Bundle := named_bundle% "RealMapCertificates/relations/basis13146.json"
theorem reductionProof13146 : EqualModuloRelations reduction13146.relations reduction13146.input reduction13146.output := by lin_cert using reduction13146.terms
theorem substitutionProof13146 : IsMapEvaluation generatorImages reduction13146.relations [8,8,8,704] reduction13146.output := by lin_cert using reduction13146.terms
def image13147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13147 : InImage map_32_219 image13147 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13147 : Bundle := named_bundle% "RealMapCertificates/relations/basis13147.json"
theorem reductionProof13147 : EqualModuloRelations reduction13147.relations reduction13147.input reduction13147.output := by lin_cert using reduction13147.terms
theorem substitutionProof13147 : IsMapEvaluation generatorImages reduction13147.relations [1,64,586] reduction13147.output := by lin_cert using reduction13147.terms
def image13148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13148 : InImage map_32_219 image13148 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13148 : Bundle := named_bundle% "RealMapCertificates/relations/basis13148.json"
theorem reductionProof13148 : EqualModuloRelations reduction13148.relations reduction13148.input reduction13148.output := by lin_cert using reduction13148.terms
theorem substitutionProof13148 : IsMapEvaluation generatorImages reduction13148.relations [0,0,0,1483] reduction13148.output := by lin_cert using reduction13148.terms
def map_32_220 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13282 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13282 : InImage map_32_220 image13282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13282 : Bundle := named_bundle% "RealMapCertificates/relations/basis13282.json"
theorem reductionProof13282 : EqualModuloRelations reduction13282.relations reduction13282.input reduction13282.output := by lin_cert using reduction13282.terms
theorem substitutionProof13282 : IsMapEvaluation generatorImages reduction13282.relations [1553] reduction13282.output := by lin_cert using reduction13282.terms
def image13283 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13283 : InImage map_32_220 image13283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13283 : Bundle := named_bundle% "RealMapCertificates/relations/basis13283.json"
theorem reductionProof13283 : EqualModuloRelations reduction13283.relations reduction13283.input reduction13283.output := by lin_cert using reduction13283.terms
theorem substitutionProof13283 : IsMapEvaluation generatorImages reduction13283.relations [149,318] reduction13283.output := by lin_cert using reduction13283.terms
def image13284 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13284 : InImage map_32_220 image13284 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13284 : Bundle := named_bundle% "RealMapCertificates/relations/basis13284.json"
theorem reductionProof13284 : EqualModuloRelations reduction13284.relations reduction13284.input reduction13284.output := by lin_cert using reduction13284.terms
theorem substitutionProof13284 : IsMapEvaluation generatorImages reduction13284.relations [9,13,13,13,13,23,75] reduction13284.output := by lin_cert using reduction13284.terms
def map_32_221 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image13474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13474 : InImage map_32_221 image13474 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13474 : Bundle := named_bundle% "RealMapCertificates/relations/basis13474.json"
theorem reductionProof13474 : EqualModuloRelations reduction13474.relations reduction13474.input reduction13474.output := by lin_cert using reduction13474.terms
theorem substitutionProof13474 : IsMapEvaluation generatorImages reduction13474.relations [8,8,64,279] reduction13474.output := by lin_cert using reduction13474.terms
def image13475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13475 : InImage map_32_221 image13475 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13475 : Bundle := named_bundle% "RealMapCertificates/relations/basis13475.json"
theorem reductionProof13475 : EqualModuloRelations reduction13475.relations reduction13475.input reduction13475.output := by lin_cert using reduction13475.terms
theorem substitutionProof13475 : IsMapEvaluation generatorImages reduction13475.relations [8,8,9,690] reduction13475.output := by lin_cert using reduction13475.terms
def image13476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13476 : InImage map_32_221 image13476 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13476 : Bundle := named_bundle% "RealMapCertificates/relations/basis13476.json"
theorem reductionProof13476 : EqualModuloRelations reduction13476.relations reduction13476.input reduction13476.output := by lin_cert using reduction13476.terms
theorem substitutionProof13476 : IsMapEvaluation generatorImages reduction13476.relations [8,8,8,13,13,261] reduction13476.output := by lin_cert using reduction13476.terms
def map_32_222 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13700 : InImage map_32_222 image13700 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13700 : Bundle := named_bundle% "RealMapCertificates/relations/basis13700.json"
theorem reductionProof13700 : EqualModuloRelations reduction13700.relations reduction13700.input reduction13700.output := by lin_cert using reduction13700.terms
theorem substitutionProof13700 : IsMapEvaluation generatorImages reduction13700.relations [1595] reduction13700.output := by lin_cert using reduction13700.terms
def image13701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13701 : InImage map_32_222 image13701 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13701 : Bundle := named_bundle% "RealMapCertificates/relations/basis13701.json"
theorem reductionProof13701 : EqualModuloRelations reduction13701.relations reduction13701.input reduction13701.output := by lin_cert using reduction13701.terms
theorem substitutionProof13701 : IsMapEvaluation generatorImages reduction13701.relations [13,13,13,13,303] reduction13701.output := by lin_cert using reduction13701.terms
def image13702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13702 : InImage map_32_222 image13702 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13702 : Bundle := named_bundle% "RealMapCertificates/relations/basis13702.json"
theorem reductionProof13702 : EqualModuloRelations reduction13702.relations reduction13702.input reduction13702.output := by lin_cert using reduction13702.terms
theorem substitutionProof13702 : IsMapEvaluation generatorImages reduction13702.relations [8,13,13,13,13,212] reduction13702.output := by lin_cert using reduction13702.terms
def image13703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13703 : InImage map_32_222 image13703 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13703 : Bundle := named_bundle% "RealMapCertificates/relations/basis13703.json"
theorem reductionProof13703 : EqualModuloRelations reduction13703.relations reduction13703.input reduction13703.output := by lin_cert using reduction13703.terms
theorem substitutionProof13703 : IsMapEvaluation generatorImages reduction13703.relations [8,8,8,738] reduction13703.output := by lin_cert using reduction13703.terms
def map_32_223 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13850 : InImage map_32_223 image13850 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13850 : Bundle := named_bundle% "RealMapCertificates/relations/basis13850.json"
theorem reductionProof13850 : EqualModuloRelations reduction13850.relations reduction13850.input reduction13850.output := by lin_cert using reduction13850.terms
theorem substitutionProof13850 : IsMapEvaluation generatorImages reduction13850.relations [159,324] reduction13850.output := by lin_cert using reduction13850.terms
def image13851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13851 : InImage map_32_223 image13851 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13851 : Bundle := named_bundle% "RealMapCertificates/relations/basis13851.json"
theorem reductionProof13851 : EqualModuloRelations reduction13851.relations reduction13851.input reduction13851.output := by lin_cert using reduction13851.terms
theorem substitutionProof13851 : IsMapEvaluation generatorImages reduction13851.relations [149,348] reduction13851.output := by lin_cert using reduction13851.terms
def image13852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13852 : InImage map_32_223 image13852 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13852 : Bundle := named_bundle% "RealMapCertificates/relations/basis13852.json"
theorem reductionProof13852 : EqualModuloRelations reduction13852.relations reduction13852.input reduction13852.output := by lin_cert using reduction13852.terms
theorem substitutionProof13852 : IsMapEvaluation generatorImages reduction13852.relations [23,963] reduction13852.output := by lin_cert using reduction13852.terms
def image13853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13853 : InImage map_32_223 image13853 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13853 : Bundle := named_bundle% "RealMapCertificates/relations/basis13853.json"
theorem reductionProof13853 : EqualModuloRelations reduction13853.relations reduction13853.input reduction13853.output := by lin_cert using reduction13853.terms
theorem substitutionProof13853 : IsMapEvaluation generatorImages reduction13853.relations [13,13,13,13,13,23,75] reduction13853.output := by lin_cert using reduction13853.terms
def image13854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13854 : InImage map_32_223 image13854 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13854 : Bundle := named_bundle% "RealMapCertificates/relations/basis13854.json"
theorem reductionProof13854 : EqualModuloRelations reduction13854.relations reduction13854.input reduction13854.output := by lin_cert using reduction13854.terms
theorem substitutionProof13854 : IsMapEvaluation generatorImages reduction13854.relations [1,1568] reduction13854.output := by lin_cert using reduction13854.terms
def image13855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13855 : InImage map_32_223 image13855 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13855 : Bundle := named_bundle% "RealMapCertificates/relations/basis13855.json"
theorem reductionProof13855 : EqualModuloRelations reduction13855.relations reduction13855.input reduction13855.output := by lin_cert using reduction13855.terms
theorem substitutionProof13855 : IsMapEvaluation generatorImages reduction13855.relations [0,0,64,627] reduction13855.output := by lin_cert using reduction13855.terms
end RealMapCertificates
