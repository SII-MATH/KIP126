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
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 134 => []
  | 149 => [[4,9,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 187 => []
  | 188 => []
  | 189 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 201 => []
  | 209 => []
  | 210 => []
  | 212 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 286 => []
  | 324 => []
  | 347 => []
  | 380 => []
  | 473 => []
  | 610 => []
  | 627 => []
  | 628 => []
  | 645 => []
  | 690 => []
  | 693 => []
  | 706 => []
  | 760 => []
  | 762 => []
  | 834 => []
  | 876 => []
  | 900 => []
  | 1104 => []
  | 1170 => []
  | 1256 => []
  | 1441 => []
  | 1484 => []
  | 1504 => []
  | 1517 => []
  | 1539 => []
  | 1554 => []
  | 1569 => []
  | 1571 => []
  | 1596 => []
  | 1607 => []
  | 1622 => []
  | 1652 => []
  | 1682 => []
  | 1719 => []
  | 1720 => []
  | 1738 => []
  | 1758 => []
  | 1773 => []
  | 1774 => []
  | 1775 => []
  | 1814 => []
  | 1858 => []
  | 1859 => []
  | 1860 => []
  | 1861 => []
  | 1902 => []
  | 1928 => []
  | 1929 => []
  | 1930 => []
  | 1931 => []
  | 1933 => []
  | 1996 => []
  | 2040 => []
  | _ => []
def map_32_224 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14025 : InImage map_32_224 image14025 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14025 : Bundle := named_bundle% "RealMapCertificates/relations/basis14025.json"
theorem reductionProof14025 : EqualModuloRelations reduction14025.relations reduction14025.input reduction14025.output := by lin_cert using reduction14025.terms
theorem substitutionProof14025 : IsMapEvaluation generatorImages reduction14025.relations [8,8,13,690] reduction14025.output := by lin_cert using reduction14025.terms
def image14026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14026 : InImage map_32_224 image14026 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14026 : Bundle := named_bundle% "RealMapCertificates/relations/basis14026.json"
theorem reductionProof14026 : EqualModuloRelations reduction14026.relations reduction14026.input reduction14026.output := by lin_cert using reduction14026.terms
theorem substitutionProof14026 : IsMapEvaluation generatorImages reduction14026.relations [8,8,9,13,13,261] reduction14026.output := by lin_cert using reduction14026.terms
def image14027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14027 : InImage map_32_224 image14027 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14027 : Bundle := named_bundle% "RealMapCertificates/relations/basis14027.json"
theorem reductionProof14027 : EqualModuloRelations reduction14027.relations reduction14027.input reduction14027.output := by lin_cert using reduction14027.terms
theorem substitutionProof14027 : IsMapEvaluation generatorImages reduction14027.relations [8,8,8,64,209] reduction14027.output := by lin_cert using reduction14027.terms
def image14028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14028 : InImage map_32_224 image14028 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14028 : Bundle := named_bundle% "RealMapCertificates/relations/basis14028.json"
theorem reductionProof14028 : EqualModuloRelations reduction14028.relations reduction14028.input reduction14028.output := by lin_cert using reduction14028.terms
theorem substitutionProof14028 : IsMapEvaluation generatorImages reduction14028.relations [0,1607] reduction14028.output := by lin_cert using reduction14028.terms
def image14029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14029 : InImage map_32_224 image14029 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14029 : Bundle := named_bundle% "RealMapCertificates/relations/basis14029.json"
theorem reductionProof14029 : EqualModuloRelations reduction14029.relations reduction14029.input reduction14029.output := by lin_cert using reduction14029.terms
theorem substitutionProof14029 : IsMapEvaluation generatorImages reduction14029.relations [0,64,645] reduction14029.output := by lin_cert using reduction14029.terms
def image14030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14030 : InImage map_32_224 image14030 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14030 : Bundle := named_bundle% "RealMapCertificates/relations/basis14030.json"
theorem reductionProof14030 : EqualModuloRelations reduction14030.relations reduction14030.input reduction14030.output := by lin_cert using reduction14030.terms
theorem substitutionProof14030 : IsMapEvaluation generatorImages reduction14030.relations [0,0,0,188,260] reduction14030.output := by lin_cert using reduction14030.terms
def map_32_225 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14267 : InImage map_32_225 image14267 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14267 : Bundle := named_bundle% "RealMapCertificates/relations/basis14267.json"
theorem reductionProof14267 : EqualModuloRelations reduction14267.relations reduction14267.input reduction14267.output := by lin_cert using reduction14267.terms
theorem substitutionProof14267 : IsMapEvaluation generatorImages reduction14267.relations [9,13,13,13,13,212] reduction14267.output := by lin_cert using reduction14267.terms
def image14268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14268 : InImage map_32_225 image14268 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14268 : Bundle := named_bundle% "RealMapCertificates/relations/basis14268.json"
theorem reductionProof14268 : EqualModuloRelations reduction14268.relations reduction14268.input reduction14268.output := by lin_cert using reduction14268.terms
theorem substitutionProof14268 : IsMapEvaluation generatorImages reduction14268.relations [8,8,8,80,188] reduction14268.output := by lin_cert using reduction14268.terms
def image14269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14269 : InImage map_32_225 image14269 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14269 : Bundle := named_bundle% "RealMapCertificates/relations/basis14269.json"
theorem reductionProof14269 : EqualModuloRelations reduction14269.relations reduction14269.input reduction14269.output := by lin_cert using reduction14269.terms
theorem substitutionProof14269 : IsMapEvaluation generatorImages reduction14269.relations [1,1,64,627] reduction14269.output := by lin_cert using reduction14269.terms
def image14270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14270 : InImage map_32_225 image14270 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14270 : Bundle := named_bundle% "RealMapCertificates/relations/basis14270.json"
theorem reductionProof14270 : EqualModuloRelations reduction14270.relations reduction14270.input reduction14270.output := by lin_cert using reduction14270.terms
theorem substitutionProof14270 : IsMapEvaluation generatorImages reduction14270.relations [0,0,0,1596] reduction14270.output := by lin_cert using reduction14270.terms
def image14271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14271 : InImage map_32_225 image14271 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14271 : Bundle := named_bundle% "RealMapCertificates/relations/basis14271.json"
theorem reductionProof14271 : EqualModuloRelations reduction14271.relations reduction14271.input reduction14271.output := by lin_cert using reduction14271.terms
theorem substitutionProof14271 : IsMapEvaluation generatorImages reduction14271.relations [0,0,0,0,0,0,1539] reduction14271.output := by lin_cert using reduction14271.terms
def map_32_226 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14407 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14407 : InImage map_32_226 image14407 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14407 : Bundle := named_bundle% "RealMapCertificates/relations/basis14407.json"
theorem reductionProof14407 : EqualModuloRelations reduction14407.relations reduction14407.input reduction14407.output := by lin_cert using reduction14407.terms
theorem substitutionProof14407 : IsMapEvaluation generatorImages reduction14407.relations [8,149,250] reduction14407.output := by lin_cert using reduction14407.terms
def image14408 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14408 : InImage map_32_226 image14408 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14408 : Bundle := named_bundle% "RealMapCertificates/relations/basis14408.json"
theorem reductionProof14408 : EqualModuloRelations reduction14408.relations reduction14408.input reduction14408.output := by lin_cert using reduction14408.terms
theorem substitutionProof14408 : IsMapEvaluation generatorImages reduction14408.relations [0,0,0,0,0,1571] reduction14408.output := by lin_cert using reduction14408.terms
def map_32_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14604 : InImage map_32_227 image14604 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14604 : Bundle := named_bundle% "RealMapCertificates/relations/basis14604.json"
theorem reductionProof14604 : EqualModuloRelations reduction14604.relations reduction14604.input reduction14604.output := by lin_cert using reduction14604.terms
theorem substitutionProof14604 : IsMapEvaluation generatorImages reduction14604.relations [8,9,13,690] reduction14604.output := by lin_cert using reduction14604.terms
def image14605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14605 : InImage map_32_227 image14605 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14605 : Bundle := named_bundle% "RealMapCertificates/relations/basis14605.json"
theorem reductionProof14605 : EqualModuloRelations reduction14605.relations reduction14605.input reduction14605.output := by lin_cert using reduction14605.terms
theorem substitutionProof14605 : IsMapEvaluation generatorImages reduction14605.relations [8,8,13,13,13,261] reduction14605.output := by lin_cert using reduction14605.terms
def image14606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14606 : InImage map_32_227 image14606 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14606 : Bundle := named_bundle% "RealMapCertificates/relations/basis14606.json"
theorem reductionProof14606 : EqualModuloRelations reduction14606.relations reduction14606.input reduction14606.output := by lin_cert using reduction14606.terms
theorem substitutionProof14606 : IsMapEvaluation generatorImages reduction14606.relations [8,8,8,72,209] reduction14606.output := by lin_cert using reduction14606.terms
def image14607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14607 : InImage map_32_227 image14607 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14607 : Bundle := named_bundle% "RealMapCertificates/relations/basis14607.json"
theorem reductionProof14607 : EqualModuloRelations reduction14607.relations reduction14607.input reduction14607.output := by lin_cert using reduction14607.terms
theorem substitutionProof14607 : IsMapEvaluation generatorImages reduction14607.relations [2,1607] reduction14607.output := by lin_cert using reduction14607.terms
def map_32_228 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14836 : InImage map_32_228 image14836 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14836 : Bundle := named_bundle% "RealMapCertificates/relations/basis14836.json"
theorem reductionProof14836 : EqualModuloRelations reduction14836.relations reduction14836.input reduction14836.output := by lin_cert using reduction14836.terms
theorem substitutionProof14836 : IsMapEvaluation generatorImages reduction14836.relations [64,64,187] reduction14836.output := by lin_cert using reduction14836.terms
def image14837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14837 : InImage map_32_228 image14837 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14837 : Bundle := named_bundle% "RealMapCertificates/relations/basis14837.json"
theorem reductionProof14837 : EqualModuloRelations reduction14837.relations reduction14837.input reduction14837.output := by lin_cert using reduction14837.terms
theorem substitutionProof14837 : IsMapEvaluation generatorImages reduction14837.relations [13,1256] reduction14837.output := by lin_cert using reduction14837.terms
def image14838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14838 : InImage map_32_228 image14838 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14838 : Bundle := named_bundle% "RealMapCertificates/relations/basis14838.json"
theorem reductionProof14838 : EqualModuloRelations reduction14838.relations reduction14838.input reduction14838.output := by lin_cert using reduction14838.terms
theorem substitutionProof14838 : IsMapEvaluation generatorImages reduction14838.relations [13,13,13,13,13,212] reduction14838.output := by lin_cert using reduction14838.terms
def image14839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14839 : InImage map_32_228 image14839 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14839 : Bundle := named_bundle% "RealMapCertificates/relations/basis14839.json"
theorem reductionProof14839 : EqualModuloRelations reduction14839.relations reduction14839.input reduction14839.output := by lin_cert using reduction14839.terms
theorem substitutionProof14839 : IsMapEvaluation generatorImages reduction14839.relations [9,13,13,23,286] reduction14839.output := by lin_cert using reduction14839.terms
def image14840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14840 : InImage map_32_228 image14840 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14840 : Bundle := named_bundle% "RealMapCertificates/relations/basis14840.json"
theorem reductionProof14840 : EqualModuloRelations reduction14840.relations reduction14840.input reduction14840.output := by lin_cert using reduction14840.terms
theorem substitutionProof14840 : IsMapEvaluation generatorImages reduction14840.relations [8,8,9,80,188] reduction14840.output := by lin_cert using reduction14840.terms
def map_32_229 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15003 : InImage map_32_229 image15003 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15003 : Bundle := named_bundle% "RealMapCertificates/relations/basis15003.json"
theorem reductionProof15003 : EqualModuloRelations reduction15003.relations reduction15003.input reduction15003.output := by lin_cert using reduction15003.terms
theorem substitutionProof15003 : IsMapEvaluation generatorImages reduction15003.relations [1719] reduction15003.output := by lin_cert using reduction15003.terms
def image15004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15004 : InImage map_32_229 image15004 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15004 : Bundle := named_bundle% "RealMapCertificates/relations/basis15004.json"
theorem reductionProof15004 : EqualModuloRelations reduction15004.relations reduction15004.input reduction15004.output := by lin_cert using reduction15004.terms
theorem substitutionProof15004 : IsMapEvaluation generatorImages reduction15004.relations [13,13,13,13,13,13,134] reduction15004.output := by lin_cert using reduction15004.terms
def image15005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15005 : InImage map_32_229 image15005 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15005 : Bundle := named_bundle% "RealMapCertificates/relations/basis15005.json"
theorem reductionProof15005 : EqualModuloRelations reduction15005.relations reduction15005.input reduction15005.output := by lin_cert using reduction15005.terms
theorem substitutionProof15005 : IsMapEvaluation generatorImages reduction15005.relations [8,149,261] reduction15005.output := by lin_cert using reduction15005.terms
def image15006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15006 : InImage map_32_229 image15006 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15006 : Bundle := named_bundle% "RealMapCertificates/relations/basis15006.json"
theorem reductionProof15006 : EqualModuloRelations reduction15006.relations reduction15006.input reduction15006.output := by lin_cert using reduction15006.terms
theorem substitutionProof15006 : IsMapEvaluation generatorImages reduction15006.relations [1,1682] reduction15006.output := by lin_cert using reduction15006.terms
def image15007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15007 : InImage map_32_229 image15007 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15007 : Bundle := named_bundle% "RealMapCertificates/relations/basis15007.json"
theorem reductionProof15007 : EqualModuloRelations reduction15007.relations reduction15007.input reduction15007.output := by lin_cert using reduction15007.terms
theorem substitutionProof15007 : IsMapEvaluation generatorImages reduction15007.relations [0,64,64,188] reduction15007.output := by lin_cert using reduction15007.terms
def map_32_230 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image15201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15201 : InImage map_32_230 image15201 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction15201 : Bundle := named_bundle% "RealMapCertificates/relations/basis15201.json"
theorem reductionProof15201 : EqualModuloRelations reduction15201.relations reduction15201.input reduction15201.output := by lin_cert using reduction15201.terms
theorem substitutionProof15201 : IsMapEvaluation generatorImages reduction15201.relations [1738] reduction15201.output := by lin_cert using reduction15201.terms
def image15202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15202 : InImage map_32_230 image15202 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction15202 : Bundle := named_bundle% "RealMapCertificates/relations/basis15202.json"
theorem reductionProof15202 : EqualModuloRelations reduction15202.relations reduction15202.input reduction15202.output := by lin_cert using reduction15202.terms
theorem substitutionProof15202 : IsMapEvaluation generatorImages reduction15202.relations [183,324] reduction15202.output := by lin_cert using reduction15202.terms
def image15203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15203 : InImage map_32_230 image15203 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction15203 : Bundle := named_bundle% "RealMapCertificates/relations/basis15203.json"
theorem reductionProof15203 : EqualModuloRelations reduction15203.relations reduction15203.input reduction15203.output := by lin_cert using reduction15203.terms
theorem substitutionProof15203 : IsMapEvaluation generatorImages reduction15203.relations [13,13,900] reduction15203.output := by lin_cert using reduction15203.terms
def image15204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15204 : InImage map_32_230 image15204 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction15204 : Bundle := named_bundle% "RealMapCertificates/relations/basis15204.json"
theorem reductionProof15204 : EqualModuloRelations reduction15204.relations reduction15204.input reduction15204.output := by lin_cert using reduction15204.terms
theorem substitutionProof15204 : IsMapEvaluation generatorImages reduction15204.relations [8,13,13,690] reduction15204.output := by lin_cert using reduction15204.terms
def image15205 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15205 : InImage map_32_230 image15205 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction15205 : Bundle := named_bundle% "RealMapCertificates/relations/basis15205.json"
theorem reductionProof15205 : EqualModuloRelations reduction15205.relations reduction15205.input reduction15205.output := by lin_cert using reduction15205.terms
theorem substitutionProof15205 : IsMapEvaluation generatorImages reduction15205.relations [8,9,13,13,13,261] reduction15205.output := by lin_cert using reduction15205.terms
def image15206 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15206 : InImage map_32_230 image15206 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction15206 : Bundle := named_bundle% "RealMapCertificates/relations/basis15206.json"
theorem reductionProof15206 : EqualModuloRelations reduction15206.relations reduction15206.input reduction15206.output := by lin_cert using reduction15206.terms
theorem substitutionProof15206 : IsMapEvaluation generatorImages reduction15206.relations [8,8,8,79,209] reduction15206.output := by lin_cert using reduction15206.terms
def image15207 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15207 : InImage map_32_230 image15207 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction15207 : Bundle := named_bundle% "RealMapCertificates/relations/basis15207.json"
theorem reductionProof15207 : EqualModuloRelations reduction15207.relations reduction15207.input reduction15207.output := by lin_cert using reduction15207.terms
theorem substitutionProof15207 : IsMapEvaluation generatorImages reduction15207.relations [0,1720] reduction15207.output := by lin_cert using reduction15207.terms
def image15208 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15208 : InImage map_32_230 image15208 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction15208 : Bundle := named_bundle% "RealMapCertificates/relations/basis15208.json"
theorem reductionProof15208 : EqualModuloRelations reduction15208.relations reduction15208.input reduction15208.output := by lin_cert using reduction15208.terms
theorem substitutionProof15208 : IsMapEvaluation generatorImages reduction15208.relations [0,0,0,0,209,260] reduction15208.output := by lin_cert using reduction15208.terms
def map_32_231 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15461 : InImage map_32_231 image15461 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15461 : Bundle := named_bundle% "RealMapCertificates/relations/basis15461.json"
theorem reductionProof15461 : EqualModuloRelations reduction15461.relations reduction15461.input reduction15461.output := by lin_cert using reduction15461.terms
theorem substitutionProof15461 : IsMapEvaluation generatorImages reduction15461.relations [64,64,201] reduction15461.output := by lin_cert using reduction15461.terms
def image15462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15462 : InImage map_32_231 image15462 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15462 : Bundle := named_bundle% "RealMapCertificates/relations/basis15462.json"
theorem reductionProof15462 : EqualModuloRelations reduction15462.relations reduction15462.input reduction15462.output := by lin_cert using reduction15462.terms
theorem substitutionProof15462 : IsMapEvaluation generatorImages reduction15462.relations [13,13,13,23,286] reduction15462.output := by lin_cert using reduction15462.terms
def image15463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15463 : InImage map_32_231 image15463 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15463 : Bundle := named_bundle% "RealMapCertificates/relations/basis15463.json"
theorem reductionProof15463 : EqualModuloRelations reduction15463.relations reduction15463.input reduction15463.output := by lin_cert using reduction15463.terms
theorem substitutionProof15463 : IsMapEvaluation generatorImages reduction15463.relations [8,8,13,80,188] reduction15463.output := by lin_cert using reduction15463.terms
def image15464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15464 : InImage map_32_231 image15464 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15464 : Bundle := named_bundle% "RealMapCertificates/relations/basis15464.json"
theorem reductionProof15464 : EqualModuloRelations reduction15464.relations reduction15464.input reduction15464.output := by lin_cert using reduction15464.terms
theorem substitutionProof15464 : IsMapEvaluation generatorImages reduction15464.relations [0,0,0,64,706] reduction15464.output := by lin_cert using reduction15464.terms
def image15465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15465 : InImage map_32_231 image15465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15465 : Bundle := named_bundle% "RealMapCertificates/relations/basis15465.json"
theorem reductionProof15465 : EqualModuloRelations reduction15465.relations reduction15465.input reduction15465.output := by lin_cert using reduction15465.terms
theorem substitutionProof15465 : IsMapEvaluation generatorImages reduction15465.relations [0,0,0,0,0,1652] reduction15465.output := by lin_cert using reduction15465.terms
def map_32_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15637 : InImage map_32_232 image15637 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15637 : Bundle := named_bundle% "RealMapCertificates/relations/basis15637.json"
theorem reductionProof15637 : EqualModuloRelations reduction15637.relations reduction15637.input reduction15637.output := by lin_cert using reduction15637.terms
theorem substitutionProof15637 : IsMapEvaluation generatorImages reduction15637.relations [8,1441] reduction15637.output := by lin_cert using reduction15637.terms
def image15638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15638 : InImage map_32_232 image15638 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15638 : Bundle := named_bundle% "RealMapCertificates/relations/basis15638.json"
theorem reductionProof15638 : EqualModuloRelations reduction15638.relations reduction15638.input reduction15638.output := by lin_cert using reduction15638.terms
theorem substitutionProof15638 : IsMapEvaluation generatorImages reduction15638.relations [8,8,1104] reduction15638.output := by lin_cert using reduction15638.terms
def image15639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15639 : InImage map_32_232 image15639 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15639 : Bundle := named_bundle% "RealMapCertificates/relations/basis15639.json"
theorem reductionProof15639 : EqualModuloRelations reduction15639.relations reduction15639.input reduction15639.output := by lin_cert using reduction15639.terms
theorem substitutionProof15639 : IsMapEvaluation generatorImages reduction15639.relations [0,0,0,0,0,64,693] reduction15639.output := by lin_cert using reduction15639.terms
def map_32_233 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15857 : InImage map_32_233 image15857 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15857 : Bundle := named_bundle% "RealMapCertificates/relations/basis15857.json"
theorem reductionProof15857 : EqualModuloRelations reduction15857.relations reduction15857.input reduction15857.output := by lin_cert using reduction15857.terms
theorem substitutionProof15857 : IsMapEvaluation generatorImages reduction15857.relations [1814] reduction15857.output := by lin_cert using reduction15857.terms
def image15858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15858 : InImage map_32_233 image15858 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15858 : Bundle := named_bundle% "RealMapCertificates/relations/basis15858.json"
theorem reductionProof15858 : EqualModuloRelations reduction15858.relations reduction15858.input reduction15858.output := by lin_cert using reduction15858.terms
theorem substitutionProof15858 : IsMapEvaluation generatorImages reduction15858.relations [200,324] reduction15858.output := by lin_cert using reduction15858.terms
def image15859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15859 : InImage map_32_233 image15859 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15859 : Bundle := named_bundle% "RealMapCertificates/relations/basis15859.json"
theorem reductionProof15859 : EqualModuloRelations reduction15859.relations reduction15859.input reduction15859.output := by lin_cert using reduction15859.terms
theorem substitutionProof15859 : IsMapEvaluation generatorImages reduction15859.relations [9,13,13,690] reduction15859.output := by lin_cert using reduction15859.terms
def image15860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15860 : InImage map_32_233 image15860 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15860 : Bundle := named_bundle% "RealMapCertificates/relations/basis15860.json"
theorem reductionProof15860 : EqualModuloRelations reduction15860.relations reduction15860.input reduction15860.output := by lin_cert using reduction15860.terms
theorem substitutionProof15860 : IsMapEvaluation generatorImages reduction15860.relations [8,13,13,13,13,261] reduction15860.output := by lin_cert using reduction15860.terms
def image15861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15861 : InImage map_32_233 image15861 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15861 : Bundle := named_bundle% "RealMapCertificates/relations/basis15861.json"
theorem reductionProof15861 : EqualModuloRelations reduction15861.relations reduction15861.input reduction15861.output := by lin_cert using reduction15861.terms
theorem substitutionProof15861 : IsMapEvaluation generatorImages reduction15861.relations [8,8,8,89,209] reduction15861.output := by lin_cert using reduction15861.terms
def image15862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15862 : InImage map_32_233 image15862 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15862 : Bundle := named_bundle% "RealMapCertificates/relations/basis15862.json"
theorem reductionProof15862 : EqualModuloRelations reduction15862.relations reduction15862.input reduction15862.output := by lin_cert using reduction15862.terms
theorem substitutionProof15862 : IsMapEvaluation generatorImages reduction15862.relations [0,1774] reduction15862.output := by lin_cert using reduction15862.terms
def image15863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15863 : InImage map_32_233 image15863 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15863 : Bundle := named_bundle% "RealMapCertificates/relations/basis15863.json"
theorem reductionProof15863 : EqualModuloRelations reduction15863.relations reduction15863.input reduction15863.output := by lin_cert using reduction15863.terms
theorem substitutionProof15863 : IsMapEvaluation generatorImages reduction15863.relations [0,1773] reduction15863.output := by lin_cert using reduction15863.terms
def map_32_234 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16111 : InImage map_32_234 image16111 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16111 : Bundle := named_bundle% "RealMapCertificates/relations/basis16111.json"
theorem reductionProof16111 : EqualModuloRelations reduction16111.relations reduction16111.input reduction16111.output := by lin_cert using reduction16111.terms
theorem substitutionProof16111 : IsMapEvaluation generatorImages reduction16111.relations [13,13,13,13,23,189] reduction16111.output := by lin_cert using reduction16111.terms
def image16112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16112 : InImage map_32_234 image16112 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16112 : Bundle := named_bundle% "RealMapCertificates/relations/basis16112.json"
theorem reductionProof16112 : EqualModuloRelations reduction16112.relations reduction16112.input reduction16112.output := by lin_cert using reduction16112.terms
theorem substitutionProof16112 : IsMapEvaluation generatorImages reduction16112.relations [8,1484] reduction16112.output := by lin_cert using reduction16112.terms
def image16113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16113 : InImage map_32_234 image16113 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16113 : Bundle := named_bundle% "RealMapCertificates/relations/basis16113.json"
theorem reductionProof16113 : EqualModuloRelations reduction16113.relations reduction16113.input reduction16113.output := by lin_cert using reduction16113.terms
theorem substitutionProof16113 : IsMapEvaluation generatorImages reduction16113.relations [8,9,13,80,188] reduction16113.output := by lin_cert using reduction16113.terms
def image16114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16114 : InImage map_32_234 image16114 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16114 : Bundle := named_bundle% "RealMapCertificates/relations/basis16114.json"
theorem reductionProof16114 : EqualModuloRelations reduction16114.relations reduction16114.input reduction16114.output := by lin_cert using reduction16114.terms
theorem substitutionProof16114 : IsMapEvaluation generatorImages reduction16114.relations [0,0,1775] reduction16114.output := by lin_cert using reduction16114.terms
def map_32_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16299 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16299 : InImage map_32_235 image16299 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16299 : Bundle := named_bundle% "RealMapCertificates/relations/basis16299.json"
theorem reductionProof16299 : EqualModuloRelations reduction16299.relations reduction16299.input reduction16299.output := by lin_cert using reduction16299.terms
theorem substitutionProof16299 : IsMapEvaluation generatorImages reduction16299.relations [8,1504] reduction16299.output := by lin_cert using reduction16299.terms
def image16300 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16300 : InImage map_32_235 image16300 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16300 : Bundle := named_bundle% "RealMapCertificates/relations/basis16300.json"
theorem reductionProof16300 : EqualModuloRelations reduction16300.relations reduction16300.input reduction16300.output := by lin_cert using reduction16300.terms
theorem substitutionProof16300 : IsMapEvaluation generatorImages reduction16300.relations [8,8,1170] reduction16300.output := by lin_cert using reduction16300.terms
def image16301 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16301 : InImage map_32_235 image16301 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16301 : Bundle := named_bundle% "RealMapCertificates/relations/basis16301.json"
theorem reductionProof16301 : EqualModuloRelations reduction16301.relations reduction16301.input reduction16301.output := by lin_cert using reduction16301.terms
theorem substitutionProof16301 : IsMapEvaluation generatorImages reduction16301.relations [1,5,1539] reduction16301.output := by lin_cert using reduction16301.terms
def image16302 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16302 : InImage map_32_235 image16302 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16302 : Bundle := named_bundle% "RealMapCertificates/relations/basis16302.json"
theorem reductionProof16302 : EqualModuloRelations reduction16302.relations reduction16302.input reduction16302.output := by lin_cert using reduction16302.terms
theorem substitutionProof16302 : IsMapEvaluation generatorImages reduction16302.relations [0,0,64,64,209] reduction16302.output := by lin_cert using reduction16302.terms
def map_32_236 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image16530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16530 : InImage map_32_236 image16530 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction16530 : Bundle := named_bundle% "RealMapCertificates/relations/basis16530.json"
theorem reductionProof16530 : EqualModuloRelations reduction16530.relations reduction16530.input reduction16530.output := by lin_cert using reduction16530.terms
theorem substitutionProof16530 : IsMapEvaluation generatorImages reduction16530.relations [13,13,13,690] reduction16530.output := by lin_cert using reduction16530.terms
def image16531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16531 : InImage map_32_236 image16531 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction16531 : Bundle := named_bundle% "RealMapCertificates/relations/basis16531.json"
theorem reductionProof16531 : EqualModuloRelations reduction16531.relations reduction16531.input reduction16531.output := by lin_cert using reduction16531.terms
theorem substitutionProof16531 : IsMapEvaluation generatorImages reduction16531.relations [9,23,876] reduction16531.output := by lin_cert using reduction16531.terms
def image16532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16532 : InImage map_32_236 image16532 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction16532 : Bundle := named_bundle% "RealMapCertificates/relations/basis16532.json"
theorem reductionProof16532 : EqualModuloRelations reduction16532.relations reduction16532.input reduction16532.output := by lin_cert using reduction16532.terms
theorem substitutionProof16532 : IsMapEvaluation generatorImages reduction16532.relations [9,13,13,13,13,261] reduction16532.output := by lin_cert using reduction16532.terms
def image16533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16533 : InImage map_32_236 image16533 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction16533 : Bundle := named_bundle% "RealMapCertificates/relations/basis16533.json"
theorem reductionProof16533 : EqualModuloRelations reduction16533.relations reduction16533.input reduction16533.output := by lin_cert using reduction16533.terms
theorem substitutionProof16533 : IsMapEvaluation generatorImages reduction16533.relations [8,1517] reduction16533.output := by lin_cert using reduction16533.terms
def image16534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16534 : InImage map_32_236 image16534 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction16534 : Bundle := named_bundle% "RealMapCertificates/relations/basis16534.json"
theorem reductionProof16534 : EqualModuloRelations reduction16534.relations reduction16534.input reduction16534.output := by lin_cert using reduction16534.terms
theorem substitutionProof16534 : IsMapEvaluation generatorImages reduction16534.relations [8,8,8,101,209] reduction16534.output := by lin_cert using reduction16534.terms
def image16535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16535 : InImage map_32_236 image16535 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction16535 : Bundle := named_bundle% "RealMapCertificates/relations/basis16535.json"
theorem reductionProof16535 : EqualModuloRelations reduction16535.relations reduction16535.input reduction16535.output := by lin_cert using reduction16535.terms
theorem substitutionProof16535 : IsMapEvaluation generatorImages reduction16535.relations [0,1859] reduction16535.output := by lin_cert using reduction16535.terms
def image16536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16536 : InImage map_32_236 image16536 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction16536 : Bundle := named_bundle% "RealMapCertificates/relations/basis16536.json"
theorem reductionProof16536 : EqualModuloRelations reduction16536.relations reduction16536.input reduction16536.output := by lin_cert using reduction16536.terms
theorem substitutionProof16536 : IsMapEvaluation generatorImages reduction16536.relations [0,1858] reduction16536.output := by lin_cert using reduction16536.terms
def image16537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16537 : InImage map_32_236 image16537 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction16537 : Bundle := named_bundle% "RealMapCertificates/relations/basis16537.json"
theorem reductionProof16537 : EqualModuloRelations reduction16537.relations reduction16537.input reduction16537.output := by lin_cert using reduction16537.terms
theorem substitutionProof16537 : IsMapEvaluation generatorImages reduction16537.relations [0,0,0,64,760] reduction16537.output := by lin_cert using reduction16537.terms
def map_32_237 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16789 : InImage map_32_237 image16789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16789 : Bundle := named_bundle% "RealMapCertificates/relations/basis16789.json"
theorem reductionProof16789 : EqualModuloRelations reduction16789.relations reduction16789.input reduction16789.output := by lin_cert using reduction16789.terms
theorem substitutionProof16789 : IsMapEvaluation generatorImages reduction16789.relations [13,13,13,13,473] reduction16789.output := by lin_cert using reduction16789.terms
def image16790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16790 : InImage map_32_237 image16790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16790 : Bundle := named_bundle% "RealMapCertificates/relations/basis16790.json"
theorem reductionProof16790 : EqualModuloRelations reduction16790.relations reduction16790.input reduction16790.output := by lin_cert using reduction16790.terms
theorem substitutionProof16790 : IsMapEvaluation generatorImages reduction16790.relations [8,64,610] reduction16790.output := by lin_cert using reduction16790.terms
def image16791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16791 : InImage map_32_237 image16791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16791 : Bundle := named_bundle% "RealMapCertificates/relations/basis16791.json"
theorem reductionProof16791 : EqualModuloRelations reduction16791.relations reduction16791.input reduction16791.output := by lin_cert using reduction16791.terms
theorem substitutionProof16791 : IsMapEvaluation generatorImages reduction16791.relations [8,13,13,80,188] reduction16791.output := by lin_cert using reduction16791.terms
def image16792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16792 : InImage map_32_237 image16792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16792 : Bundle := named_bundle% "RealMapCertificates/relations/basis16792.json"
theorem reductionProof16792 : EqualModuloRelations reduction16792.relations reduction16792.input reduction16792.output := by lin_cert using reduction16792.terms
theorem substitutionProof16792 : IsMapEvaluation generatorImages reduction16792.relations [1,1,64,64,209] reduction16792.output := by lin_cert using reduction16792.terms
def image16793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16793 : InImage map_32_237 image16793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16793 : Bundle := named_bundle% "RealMapCertificates/relations/basis16793.json"
theorem reductionProof16793 : EqualModuloRelations reduction16793.relations reduction16793.input reduction16793.output := by lin_cert using reduction16793.terms
theorem substitutionProof16793 : IsMapEvaluation generatorImages reduction16793.relations [0,0,1860] reduction16793.output := by lin_cert using reduction16793.terms
def image16794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16794 : InImage map_32_237 image16794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16794 : Bundle := named_bundle% "RealMapCertificates/relations/basis16794.json"
theorem reductionProof16794 : EqualModuloRelations reduction16794.relations reduction16794.input reduction16794.output := by lin_cert using reduction16794.terms
theorem substitutionProof16794 : IsMapEvaluation generatorImages reduction16794.relations [0,0,0,0,0,0,1758] reduction16794.output := by lin_cert using reduction16794.terms
def map_32_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16966 : InImage map_32_238 image16966 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16966 : Bundle := named_bundle% "RealMapCertificates/relations/basis16966.json"
theorem reductionProof16966 : EqualModuloRelations reduction16966.relations reduction16966.input reduction16966.output := by lin_cert using reduction16966.terms
theorem substitutionProof16966 : IsMapEvaluation generatorImages reduction16966.relations [1929] reduction16966.output := by lin_cert using reduction16966.terms
def image16967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16967 : InImage map_32_238 image16967 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16967 : Bundle := named_bundle% "RealMapCertificates/relations/basis16967.json"
theorem reductionProof16967 : EqualModuloRelations reduction16967.relations reduction16967.input reduction16967.output := by lin_cert using reduction16967.terms
theorem substitutionProof16967 : IsMapEvaluation generatorImages reduction16967.relations [1928] reduction16967.output := by lin_cert using reduction16967.terms
def image16968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16968 : InImage map_32_238 image16968 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16968 : Bundle := named_bundle% "RealMapCertificates/relations/basis16968.json"
theorem reductionProof16968 : EqualModuloRelations reduction16968.relations reduction16968.input reduction16968.output := by lin_cert using reduction16968.terms
theorem substitutionProof16968 : IsMapEvaluation generatorImages reduction16968.relations [8,1554] reduction16968.output := by lin_cert using reduction16968.terms
def image16969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16969 : InImage map_32_238 image16969 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16969 : Bundle := named_bundle% "RealMapCertificates/relations/basis16969.json"
theorem reductionProof16969 : EqualModuloRelations reduction16969.relations reduction16969.input reduction16969.output := by lin_cert using reduction16969.terms
theorem substitutionProof16969 : IsMapEvaluation generatorImages reduction16969.relations [8,9,1170] reduction16969.output := by lin_cert using reduction16969.terms
def image16970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16970 : InImage map_32_238 image16970 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16970 : Bundle := named_bundle% "RealMapCertificates/relations/basis16970.json"
theorem reductionProof16970 : EqualModuloRelations reduction16970.relations reduction16970.input reduction16970.output := by lin_cert using reduction16970.terms
theorem substitutionProof16970 : IsMapEvaluation generatorImages reduction16970.relations [0,0,210,324] reduction16970.output := by lin_cert using reduction16970.terms
def image16971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16971 : InImage map_32_238 image16971 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16971 : Bundle := named_bundle% "RealMapCertificates/relations/basis16971.json"
theorem reductionProof16971 : EqualModuloRelations reduction16971.relations reduction16971.input reduction16971.output := by lin_cert using reduction16971.terms
theorem substitutionProof16971 : IsMapEvaluation generatorImages reduction16971.relations [0,0,0,0,0,64,762] reduction16971.output := by lin_cert using reduction16971.terms
def map_32_239 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17223 : InImage map_32_239 image17223 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17223 : Bundle := named_bundle% "RealMapCertificates/relations/basis17223.json"
theorem reductionProof17223 : EqualModuloRelations reduction17223.relations reduction17223.input reduction17223.output := by lin_cert using reduction17223.terms
theorem substitutionProof17223 : IsMapEvaluation generatorImages reduction17223.relations [13,23,876] reduction17223.output := by lin_cert using reduction17223.terms
def image17224 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17224 : InImage map_32_239 image17224 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17224 : Bundle := named_bundle% "RealMapCertificates/relations/basis17224.json"
theorem reductionProof17224 : EqualModuloRelations reduction17224.relations reduction17224.input reduction17224.output := by lin_cert using reduction17224.terms
theorem substitutionProof17224 : IsMapEvaluation generatorImages reduction17224.relations [13,13,13,13,13,261] reduction17224.output := by lin_cert using reduction17224.terms
def image17225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17225 : InImage map_32_239 image17225 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17225 : Bundle := named_bundle% "RealMapCertificates/relations/basis17225.json"
theorem reductionProof17225 : EqualModuloRelations reduction17225.relations reduction17225.input reduction17225.output := by lin_cert using reduction17225.terms
theorem substitutionProof17225 : IsMapEvaluation generatorImages reduction17225.relations [8,1569] reduction17225.output := by lin_cert using reduction17225.terms
def image17226 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17226 : InImage map_32_239 image17226 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17226 : Bundle := named_bundle% "RealMapCertificates/relations/basis17226.json"
theorem reductionProof17226 : EqualModuloRelations reduction17226.relations reduction17226.input reduction17226.output := by lin_cert using reduction17226.terms
theorem substitutionProof17226 : IsMapEvaluation generatorImages reduction17226.relations [8,8,9,101,209] reduction17226.output := by lin_cert using reduction17226.terms
def image17227 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17227 : InImage map_32_239 image17227 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17227 : Bundle := named_bundle% "RealMapCertificates/relations/basis17227.json"
theorem reductionProof17227 : EqualModuloRelations reduction17227.relations reduction17227.input reduction17227.output := by lin_cert using reduction17227.terms
theorem substitutionProof17227 : IsMapEvaluation generatorImages reduction17227.relations [1,1902] reduction17227.output := by lin_cert using reduction17227.terms
def image17228 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17228 : InImage map_32_239 image17228 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17228 : Bundle := named_bundle% "RealMapCertificates/relations/basis17228.json"
theorem reductionProof17228 : EqualModuloRelations reduction17228.relations reduction17228.input reduction17228.output := by lin_cert using reduction17228.terms
theorem substitutionProof17228 : IsMapEvaluation generatorImages reduction17228.relations [0,1931] reduction17228.output := by lin_cert using reduction17228.terms
def image17229 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17229 : InImage map_32_239 image17229 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17229 : Bundle := named_bundle% "RealMapCertificates/relations/basis17229.json"
theorem reductionProof17229 : EqualModuloRelations reduction17229.relations reduction17229.input reduction17229.output := by lin_cert using reduction17229.terms
theorem substitutionProof17229 : IsMapEvaluation generatorImages reduction17229.relations [0,1930] reduction17229.output := by lin_cert using reduction17229.terms
def map_32_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17493 : InImage map_32_240 image17493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17493 : Bundle := named_bundle% "RealMapCertificates/relations/basis17493.json"
theorem reductionProof17493 : EqualModuloRelations reduction17493.relations reduction17493.input reduction17493.output := by lin_cert using reduction17493.terms
theorem substitutionProof17493 : IsMapEvaluation generatorImages reduction17493.relations [1996] reduction17493.output := by lin_cert using reduction17493.terms
def image17494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17494 : InImage map_32_240 image17494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17494 : Bundle := named_bundle% "RealMapCertificates/relations/basis17494.json"
theorem reductionProof17494 : EqualModuloRelations reduction17494.relations reduction17494.input reduction17494.output := by lin_cert using reduction17494.terms
theorem substitutionProof17494 : IsMapEvaluation generatorImages reduction17494.relations [9,13,13,80,188] reduction17494.output := by lin_cert using reduction17494.terms
def image17495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17495 : InImage map_32_240 image17495 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17495 : Bundle := named_bundle% "RealMapCertificates/relations/basis17495.json"
theorem reductionProof17495 : EqualModuloRelations reduction17495.relations reduction17495.input reduction17495.output := by lin_cert using reduction17495.terms
theorem substitutionProof17495 : IsMapEvaluation generatorImages reduction17495.relations [8,8,187,187] reduction17495.output := by lin_cert using reduction17495.terms
def image17496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17496 : InImage map_32_240 image17496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17496 : Bundle := named_bundle% "RealMapCertificates/relations/basis17496.json"
theorem reductionProof17496 : EqualModuloRelations reduction17496.relations reduction17496.input reduction17496.output := by lin_cert using reduction17496.terms
theorem substitutionProof17496 : IsMapEvaluation generatorImages reduction17496.relations [3,1773] reduction17496.output := by lin_cert using reduction17496.terms
def image17497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17497 : InImage map_32_240 image17497 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17497 : Bundle := named_bundle% "RealMapCertificates/relations/basis17497.json"
theorem reductionProof17497 : EqualModuloRelations reduction17497.relations reduction17497.input reduction17497.output := by lin_cert using reduction17497.terms
theorem substitutionProof17497 : IsMapEvaluation generatorImages reduction17497.relations [0,2,1861] reduction17497.output := by lin_cert using reduction17497.terms
def image17498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17498 : InImage map_32_240 image17498 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17498 : Bundle := named_bundle% "RealMapCertificates/relations/basis17498.json"
theorem reductionProof17498 : EqualModuloRelations reduction17498.relations reduction17498.input reduction17498.output := by lin_cert using reduction17498.terms
theorem substitutionProof17498 : IsMapEvaluation generatorImages reduction17498.relations [0,0,1933] reduction17498.output := by lin_cert using reduction17498.terms
def map_32_241 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17733 : InImage map_32_241 image17733 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17733 : Bundle := named_bundle% "RealMapCertificates/relations/basis17733.json"
theorem reductionProof17733 : EqualModuloRelations reduction17733.relations reduction17733.input reduction17733.output := by lin_cert using reduction17733.terms
theorem substitutionProof17733 : IsMapEvaluation generatorImages reduction17733.relations [209,380] reduction17733.output := by lin_cert using reduction17733.terms
def image17734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17734 : InImage map_32_241 image17734 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17734 : Bundle := named_bundle% "RealMapCertificates/relations/basis17734.json"
theorem reductionProof17734 : EqualModuloRelations reduction17734.relations reduction17734.input reduction17734.output := by lin_cert using reduction17734.terms
theorem substitutionProof17734 : IsMapEvaluation generatorImages reduction17734.relations [9,1554] reduction17734.output := by lin_cert using reduction17734.terms
def image17735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17735 : InImage map_32_241 image17735 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17735 : Bundle := named_bundle% "RealMapCertificates/relations/basis17735.json"
theorem reductionProof17735 : EqualModuloRelations reduction17735.relations reduction17735.input reduction17735.output := by lin_cert using reduction17735.terms
theorem substitutionProof17735 : IsMapEvaluation generatorImages reduction17735.relations [8,13,1170] reduction17735.output := by lin_cert using reduction17735.terms
def image17736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17736 : InImage map_32_241 image17736 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17736 : Bundle := named_bundle% "RealMapCertificates/relations/basis17736.json"
theorem reductionProof17736 : EqualModuloRelations reduction17736.relations reduction17736.input reduction17736.output := by lin_cert using reduction17736.terms
theorem substitutionProof17736 : IsMapEvaluation generatorImages reduction17736.relations [1,64,834] reduction17736.output := by lin_cert using reduction17736.terms
def image17737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17737 : InImage map_32_241 image17737 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17737 : Bundle := named_bundle% "RealMapCertificates/relations/basis17737.json"
theorem reductionProof17737 : EqualModuloRelations reduction17737.relations reduction17737.input reduction17737.output := by lin_cert using reduction17737.terms
theorem substitutionProof17737 : IsMapEvaluation generatorImages reduction17737.relations [0,3,1775] reduction17737.output := by lin_cert using reduction17737.terms
def map_32_242 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18002 : InImage map_32_242 image18002 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18002 : Bundle := named_bundle% "RealMapCertificates/relations/basis18002.json"
theorem reductionProof18002 : EqualModuloRelations reduction18002.relations reduction18002.input reduction18002.output := by lin_cert using reduction18002.terms
theorem substitutionProof18002 : IsMapEvaluation generatorImages reduction18002.relations [64,64,250] reduction18002.output := by lin_cert using reduction18002.terms
def image18003 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18003 : InImage map_32_242 image18003 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18003 : Bundle := named_bundle% "RealMapCertificates/relations/basis18003.json"
theorem reductionProof18003 : EqualModuloRelations reduction18003.relations reduction18003.input reduction18003.output := by lin_cert using reduction18003.terms
theorem substitutionProof18003 : IsMapEvaluation generatorImages reduction18003.relations [13,13,23,628] reduction18003.output := by lin_cert using reduction18003.terms
def image18004 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18004 : InImage map_32_242 image18004 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18004 : Bundle := named_bundle% "RealMapCertificates/relations/basis18004.json"
theorem reductionProof18004 : EqualModuloRelations reduction18004.relations reduction18004.input reduction18004.output := by lin_cert using reduction18004.terms
theorem substitutionProof18004 : IsMapEvaluation generatorImages reduction18004.relations [8,1622] reduction18004.output := by lin_cert using reduction18004.terms
def image18005 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18005 : InImage map_32_242 image18005 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18005 : Bundle := named_bundle% "RealMapCertificates/relations/basis18005.json"
theorem reductionProof18005 : EqualModuloRelations reduction18005.relations reduction18005.input reduction18005.output := by lin_cert using reduction18005.terms
theorem substitutionProof18005 : IsMapEvaluation generatorImages reduction18005.relations [8,8,13,101,209] reduction18005.output := by lin_cert using reduction18005.terms
def image18006 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18006 : InImage map_32_242 image18006 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18006 : Bundle := named_bundle% "RealMapCertificates/relations/basis18006.json"
theorem reductionProof18006 : EqualModuloRelations reduction18006.relations reduction18006.input reduction18006.output := by lin_cert using reduction18006.terms
theorem substitutionProof18006 : IsMapEvaluation generatorImages reduction18006.relations [2,1930] reduction18006.output := by lin_cert using reduction18006.terms
def image18007 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18007 : InImage map_32_242 image18007 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18007 : Bundle := named_bundle% "RealMapCertificates/relations/basis18007.json"
theorem reductionProof18007 : EqualModuloRelations reduction18007.relations reduction18007.input reduction18007.output := by lin_cert using reduction18007.terms
theorem substitutionProof18007 : IsMapEvaluation generatorImages reduction18007.relations [0,2040] reduction18007.output := by lin_cert using reduction18007.terms
def image18008 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18008 : InImage map_32_242 image18008 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18008 : Bundle := named_bundle% "RealMapCertificates/relations/basis18008.json"
theorem reductionProof18008 : EqualModuloRelations reduction18008.relations reduction18008.input reduction18008.output := by lin_cert using reduction18008.terms
theorem substitutionProof18008 : IsMapEvaluation generatorImages reduction18008.relations [0,0,0,0,209,347] reduction18008.output := by lin_cert using reduction18008.terms
end RealMapCertificates
