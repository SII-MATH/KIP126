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
  | 80 => []
  | 101 => []
  | 181 => []
  | 187 => []
  | 188 => []
  | 190 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 246 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 278 => []
  | 291 => []
  | 292 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 316 => []
  | 324 => []
  | 335 => []
  | 346 => []
  | 347 => []
  | 408 => []
  | 517 => []
  | 618 => []
  | 629 => []
  | 677 => []
  | 729 => []
  | 761 => []
  | 959 => []
  | 978 => []
  | 1051 => []
  | 1123 => []
  | 1170 => []
  | 1442 => []
  | 1554 => []
  | 1690 => []
  | 1755 => []
  | 1758 => []
  | 1773 => []
  | 1775 => []
  | 1860 => []
  | 1938 => []
  | 1997 => []
  | 1998 => []
  | 2040 => []
  | 2096 => []
  | 2097 => []
  | 2126 => []
  | 2166 => []
  | 2279 => []
  | 2304 => []
  | 2306 => []
  | 2307 => []
  | 2309 => []
  | 2337 => []
  | 2338 => []
  | 2339 => []
  | 2340 => []
  | 2341 => []
  | 2342 => []
  | 2380 => []
  | 2381 => []
  | 2407 => []
  | 2440 => []
  | 2442 => []
  | 2489 => []
  | 2490 => []
  | 2492 => []
  | 2494 => []
  | 2547 => []
  | 2548 => []
  | 2549 => []
  | 2550 => []
  | _ => []
def map_32_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18275 : InImage map_32_243 image18275 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18275 : Bundle := named_bundle% "RealMapCertificates/relations/basis18275.json"
theorem reductionProof18275 : EqualModuloRelations reduction18275.relations reduction18275.input reduction18275.output := by lin_cert using reduction18275.terms
theorem substitutionProof18275 : IsMapEvaluation generatorImages reduction18275.relations [2096] reduction18275.output := by lin_cert using reduction18275.terms
def image18276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18276 : InImage map_32_243 image18276 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18276 : Bundle := named_bundle% "RealMapCertificates/relations/basis18276.json"
theorem reductionProof18276 : EqualModuloRelations reduction18276.relations reduction18276.input reduction18276.output := by lin_cert using reduction18276.terms
theorem substitutionProof18276 : IsMapEvaluation generatorImages reduction18276.relations [13,13,13,80,188] reduction18276.output := by lin_cert using reduction18276.terms
def image18277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18277 : InImage map_32_243 image18277 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18277 : Bundle := named_bundle% "RealMapCertificates/relations/basis18277.json"
theorem reductionProof18277 : EqualModuloRelations reduction18277.relations reduction18277.input reduction18277.output := by lin_cert using reduction18277.terms
theorem substitutionProof18277 : IsMapEvaluation generatorImages reduction18277.relations [8,8,187,201] reduction18277.output := by lin_cert using reduction18277.terms
def image18278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18278 : InImage map_32_243 image18278 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18278 : Bundle := named_bundle% "RealMapCertificates/relations/basis18278.json"
theorem reductionProof18278 : EqualModuloRelations reduction18278.relations reduction18278.input reduction18278.output := by lin_cert using reduction18278.terms
theorem substitutionProof18278 : IsMapEvaluation generatorImages reduction18278.relations [1,2040] reduction18278.output := by lin_cert using reduction18278.terms
def image18279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18279 : InImage map_32_243 image18279 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18279 : Bundle := named_bundle% "RealMapCertificates/relations/basis18279.json"
theorem reductionProof18279 : EqualModuloRelations reduction18279.relations reduction18279.input reduction18279.output := by lin_cert using reduction18279.terms
theorem substitutionProof18279 : IsMapEvaluation generatorImages reduction18279.relations [0,0,0,0,0,1938] reduction18279.output := by lin_cert using reduction18279.terms
def map_32_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18474 : InImage map_32_244 image18474 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18474 : Bundle := named_bundle% "RealMapCertificates/relations/basis18474.json"
theorem reductionProof18474 : EqualModuloRelations reduction18474.relations reduction18474.input reduction18474.output := by lin_cert using reduction18474.terms
theorem substitutionProof18474 : IsMapEvaluation generatorImages reduction18474.relations [13,1554] reduction18474.output := by lin_cert using reduction18474.terms
def image18475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18475 : InImage map_32_244 image18475 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18475 : Bundle := named_bundle% "RealMapCertificates/relations/basis18475.json"
theorem reductionProof18475 : EqualModuloRelations reduction18475.relations reduction18475.input reduction18475.output := by lin_cert using reduction18475.terms
theorem substitutionProof18475 : IsMapEvaluation generatorImages reduction18475.relations [9,13,1170] reduction18475.output := by lin_cert using reduction18475.terms
def image18476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18476 : InImage map_32_244 image18476 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18476 : Bundle := named_bundle% "RealMapCertificates/relations/basis18476.json"
theorem reductionProof18476 : EqualModuloRelations reduction18476.relations reduction18476.input reduction18476.output := by lin_cert using reduction18476.terms
theorem substitutionProof18476 : IsMapEvaluation generatorImages reduction18476.relations [8,209,260] reduction18476.output := by lin_cert using reduction18476.terms
def image18477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18477 : InImage map_32_244 image18477 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18477 : Bundle := named_bundle% "RealMapCertificates/relations/basis18477.json"
theorem reductionProof18477 : EqualModuloRelations reduction18477.relations reduction18477.input reduction18477.output := by lin_cert using reduction18477.terms
theorem substitutionProof18477 : IsMapEvaluation generatorImages reduction18477.relations [0,2097] reduction18477.output := by lin_cert using reduction18477.terms
def image18478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18478 : InImage map_32_244 image18478 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18478 : Bundle := named_bundle% "RealMapCertificates/relations/basis18478.json"
theorem reductionProof18478 : EqualModuloRelations reduction18478.relations reduction18478.input reduction18478.output := by lin_cert using reduction18478.terms
theorem substitutionProof18478 : IsMapEvaluation generatorImages reduction18478.relations [0,3,1860] reduction18478.output := by lin_cert using reduction18478.terms
def map_32_245 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image18746 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18746 : InImage map_32_245 image18746 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction18746 : Bundle := named_bundle% "RealMapCertificates/relations/basis18746.json"
theorem reductionProof18746 : EqualModuloRelations reduction18746.relations reduction18746.input reduction18746.output := by lin_cert using reduction18746.terms
theorem substitutionProof18746 : IsMapEvaluation generatorImages reduction18746.relations [2166] reduction18746.output := by lin_cert using reduction18746.terms
def image18747 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18747 : InImage map_32_245 image18747 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction18747 : Bundle := named_bundle% "RealMapCertificates/relations/basis18747.json"
theorem reductionProof18747 : EqualModuloRelations reduction18747.relations reduction18747.input reduction18747.output := by lin_cert using reduction18747.terms
theorem substitutionProof18747 : IsMapEvaluation generatorImages reduction18747.relations [64,64,261] reduction18747.output := by lin_cert using reduction18747.terms
def image18748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18748 : InImage map_32_245 image18748 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction18748 : Bundle := named_bundle% "RealMapCertificates/relations/basis18748.json"
theorem reductionProof18748 : EqualModuloRelations reduction18748.relations reduction18748.input reduction18748.output := by lin_cert using reduction18748.terms
theorem substitutionProof18748 : IsMapEvaluation generatorImages reduction18748.relations [13,13,1123] reduction18748.output := by lin_cert using reduction18748.terms
def image18749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18749 : InImage map_32_245 image18749 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction18749 : Bundle := named_bundle% "RealMapCertificates/relations/basis18749.json"
theorem reductionProof18749 : EqualModuloRelations reduction18749.relations reduction18749.input reduction18749.output := by lin_cert using reduction18749.terms
theorem substitutionProof18749 : IsMapEvaluation generatorImages reduction18749.relations [13,13,13,13,13,13,181] reduction18749.output := by lin_cert using reduction18749.terms
def image18750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18750 : InImage map_32_245 image18750 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction18750 : Bundle := named_bundle% "RealMapCertificates/relations/basis18750.json"
theorem reductionProof18750 : EqualModuloRelations reduction18750.relations reduction18750.input reduction18750.output := by lin_cert using reduction18750.terms
theorem substitutionProof18750 : IsMapEvaluation generatorImages reduction18750.relations [8,188,292] reduction18750.output := by lin_cert using reduction18750.terms
def image18751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18751 : InImage map_32_245 image18751 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction18751 : Bundle := named_bundle% "RealMapCertificates/relations/basis18751.json"
theorem reductionProof18751 : EqualModuloRelations reduction18751.relations reduction18751.input reduction18751.output := by lin_cert using reduction18751.terms
theorem substitutionProof18751 : IsMapEvaluation generatorImages reduction18751.relations [8,9,13,101,209] reduction18751.output := by lin_cert using reduction18751.terms
def image18752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18752 : InImage map_32_245 image18752 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction18752 : Bundle := named_bundle% "RealMapCertificates/relations/basis18752.json"
theorem reductionProof18752 : EqualModuloRelations reduction18752.relations reduction18752.input reduction18752.output := by lin_cert using reduction18752.terms
theorem substitutionProof18752 : IsMapEvaluation generatorImages reduction18752.relations [2,2040] reduction18752.output := by lin_cert using reduction18752.terms
def image18753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18753 : InImage map_32_245 image18753 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction18753 : Bundle := named_bundle% "RealMapCertificates/relations/basis18753.json"
theorem reductionProof18753 : EqualModuloRelations reduction18753.relations reduction18753.input reduction18753.output := by lin_cert using reduction18753.terms
theorem substitutionProof18753 : IsMapEvaluation generatorImages reduction18753.relations [1,2097] reduction18753.output := by lin_cert using reduction18753.terms
def image18754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18754 : InImage map_32_245 image18754 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction18754 : Bundle := named_bundle% "RealMapCertificates/relations/basis18754.json"
theorem reductionProof18754 : EqualModuloRelations reduction18754.relations reduction18754.input reduction18754.output := by lin_cert using reduction18754.terms
theorem substitutionProof18754 : IsMapEvaluation generatorImages reduction18754.relations [0,0,0,0,0,0,225,324] reduction18754.output := by lin_cert using reduction18754.terms
def map_32_246 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19039 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19039 : InImage map_32_246 image19039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19039 : Bundle := named_bundle% "RealMapCertificates/relations/basis19039.json"
theorem reductionProof19039 : EqualModuloRelations reduction19039.relations reduction19039.input reduction19039.output := by lin_cert using reduction19039.terms
theorem substitutionProof19039 : IsMapEvaluation generatorImages reduction19039.relations [13,13,13,13,13,13,190] reduction19039.output := by lin_cert using reduction19039.terms
def image19040 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19040 : InImage map_32_246 image19040 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19040 : Bundle := named_bundle% "RealMapCertificates/relations/basis19040.json"
theorem reductionProof19040 : EqualModuloRelations reduction19040.relations reduction19040.input reduction19040.output := by lin_cert using reduction19040.terms
theorem substitutionProof19040 : IsMapEvaluation generatorImages reduction19040.relations [8,1690] reduction19040.output := by lin_cert using reduction19040.terms
def image19041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19041 : InImage map_32_246 image19041 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19041 : Bundle := named_bundle% "RealMapCertificates/relations/basis19041.json"
theorem reductionProof19041 : EqualModuloRelations reduction19041.relations reduction19041.input reduction19041.output := by lin_cert using reduction19041.terms
theorem substitutionProof19041 : IsMapEvaluation generatorImages reduction19041.relations [8,8,187,212] reduction19041.output := by lin_cert using reduction19041.terms
def image19042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19042 : InImage map_32_246 image19042 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19042 : Bundle := named_bundle% "RealMapCertificates/relations/basis19042.json"
theorem reductionProof19042 : EqualModuloRelations reduction19042.relations reduction19042.input reduction19042.output := by lin_cert using reduction19042.terms
theorem substitutionProof19042 : IsMapEvaluation generatorImages reduction19042.relations [1,2126] reduction19042.output := by lin_cert using reduction19042.terms
def map_32_247 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19279 : InImage map_32_247 image19279 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19279 : Bundle := named_bundle% "RealMapCertificates/relations/basis19279.json"
theorem reductionProof19279 : EqualModuloRelations reduction19279.relations reduction19279.input reduction19279.output := by lin_cert using reduction19279.terms
theorem substitutionProof19279 : IsMapEvaluation generatorImages reduction19279.relations [13,13,1170] reduction19279.output := by lin_cert using reduction19279.terms
def image19280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19280 : InImage map_32_247 image19280 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19280 : Bundle := named_bundle% "RealMapCertificates/relations/basis19280.json"
theorem reductionProof19280 : EqualModuloRelations reduction19280.relations reduction19280.input reduction19280.output := by lin_cert using reduction19280.terms
theorem substitutionProof19280 : IsMapEvaluation generatorImages reduction19280.relations [8,209,278] reduction19280.output := by lin_cert using reduction19280.terms
def image19281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19281 : InImage map_32_247 image19281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19281 : Bundle := named_bundle% "RealMapCertificates/relations/basis19281.json"
theorem reductionProof19281 : EqualModuloRelations reduction19281.relations reduction19281.input reduction19281.output := by lin_cert using reduction19281.terms
theorem substitutionProof19281 : IsMapEvaluation generatorImages reduction19281.relations [1,5,1758] reduction19281.output := by lin_cert using reduction19281.terms
def map_32_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19552 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19552 : InImage map_32_248 image19552 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19552 : Bundle := named_bundle% "RealMapCertificates/relations/basis19552.json"
theorem reductionProof19552 : EqualModuloRelations reduction19552.relations reduction19552.input reduction19552.output := by lin_cert using reduction19552.terms
theorem substitutionProof19552 : IsMapEvaluation generatorImages reduction19552.relations [9,188,292] reduction19552.output := by lin_cert using reduction19552.terms
def image19553 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19553 : InImage map_32_248 image19553 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19553 : Bundle := named_bundle% "RealMapCertificates/relations/basis19553.json"
theorem reductionProof19553 : EqualModuloRelations reduction19553.relations reduction19553.input reduction19553.output := by lin_cert using reduction19553.terms
theorem substitutionProof19553 : IsMapEvaluation generatorImages reduction19553.relations [8,64,729] reduction19553.output := by lin_cert using reduction19553.terms
def image19554 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19554 : InImage map_32_248 image19554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19554 : Bundle := named_bundle% "RealMapCertificates/relations/basis19554.json"
theorem reductionProof19554 : EqualModuloRelations reduction19554.relations reduction19554.input reduction19554.output := by lin_cert using reduction19554.terms
theorem substitutionProof19554 : IsMapEvaluation generatorImages reduction19554.relations [8,13,13,101,209] reduction19554.output := by lin_cert using reduction19554.terms
def image19555 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19555 : InImage map_32_248 image19555 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19555 : Bundle := named_bundle% "RealMapCertificates/relations/basis19555.json"
theorem reductionProof19555 : EqualModuloRelations reduction19555.relations reduction19555.input reduction19555.output := by lin_cert using reduction19555.terms
theorem substitutionProof19555 : IsMapEvaluation generatorImages reduction19555.relations [7,1773] reduction19555.output := by lin_cert using reduction19555.terms
def image19556 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19556 : InImage map_32_248 image19556 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19556 : Bundle := named_bundle% "RealMapCertificates/relations/basis19556.json"
theorem reductionProof19556 : EqualModuloRelations reduction19556.relations reduction19556.input reduction19556.output := by lin_cert using reduction19556.terms
theorem substitutionProof19556 : IsMapEvaluation generatorImages reduction19556.relations [3,3,1775] reduction19556.output := by lin_cert using reduction19556.terms
def map_32_249 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19845 : InImage map_32_249 image19845 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19845 : Bundle := named_bundle% "RealMapCertificates/relations/basis19845.json"
theorem reductionProof19845 : EqualModuloRelations reduction19845.relations reduction19845.input reduction19845.output := by lin_cert using reduction19845.terms
theorem substitutionProof19845 : IsMapEvaluation generatorImages reduction19845.relations [2304] reduction19845.output := by lin_cert using reduction19845.terms
def image19846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19846 : InImage map_32_249 image19846 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19846 : Bundle := named_bundle% "RealMapCertificates/relations/basis19846.json"
theorem reductionProof19846 : EqualModuloRelations reduction19846.relations reduction19846.input reduction19846.output := by lin_cert using reduction19846.terms
theorem substitutionProof19846 : IsMapEvaluation generatorImages reduction19846.relations [8,1755] reduction19846.output := by lin_cert using reduction19846.terms
def image19847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19847 : InImage map_32_249 image19847 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19847 : Bundle := named_bundle% "RealMapCertificates/relations/basis19847.json"
theorem reductionProof19847 : EqualModuloRelations reduction19847.relations reduction19847.input reduction19847.output := by lin_cert using reduction19847.terms
theorem substitutionProof19847 : IsMapEvaluation generatorImages reduction19847.relations [8,8,201,212] reduction19847.output := by lin_cert using reduction19847.terms
def image19848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19848 : InImage map_32_249 image19848 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19848 : Bundle := named_bundle% "RealMapCertificates/relations/basis19848.json"
theorem reductionProof19848 : EqualModuloRelations reduction19848.relations reduction19848.input reduction19848.output := by lin_cert using reduction19848.terms
theorem substitutionProof19848 : IsMapEvaluation generatorImages reduction19848.relations [0,7,1775] reduction19848.output := by lin_cert using reduction19848.terms
def map_32_250 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20062 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20062 : InImage map_32_250 image20062 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20062 : Bundle := named_bundle% "RealMapCertificates/relations/basis20062.json"
theorem reductionProof20062 : EqualModuloRelations reduction20062.relations reduction20062.input reduction20062.output := by lin_cert using reduction20062.terms
theorem substitutionProof20062 : IsMapEvaluation generatorImages reduction20062.relations [2338] reduction20062.output := by lin_cert using reduction20062.terms
def image20063 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20063 : InImage map_32_250 image20063 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20063 : Bundle := named_bundle% "RealMapCertificates/relations/basis20063.json"
theorem reductionProof20063 : EqualModuloRelations reduction20063.relations reduction20063.input reduction20063.output := by lin_cert using reduction20063.terms
theorem substitutionProof20063 : IsMapEvaluation generatorImages reduction20063.relations [2337] reduction20063.output := by lin_cert using reduction20063.terms
def image20064 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20064 : InImage map_32_250 image20064 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20064 : Bundle := named_bundle% "RealMapCertificates/relations/basis20064.json"
theorem reductionProof20064 : EqualModuloRelations reduction20064.relations reduction20064.input reduction20064.output := by lin_cert using reduction20064.terms
theorem substitutionProof20064 : IsMapEvaluation generatorImages reduction20064.relations [23,1442] reduction20064.output := by lin_cert using reduction20064.terms
def image20065 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20065 : InImage map_32_250 image20065 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20065 : Bundle := named_bundle% "RealMapCertificates/relations/basis20065.json"
theorem reductionProof20065 : EqualModuloRelations reduction20065.relations reduction20065.input reduction20065.output := by lin_cert using reduction20065.terms
theorem substitutionProof20065 : IsMapEvaluation generatorImages reduction20065.relations [13,13,13,13,13,335] reduction20065.output := by lin_cert using reduction20065.terms
def image20066 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20066 : InImage map_32_250 image20066 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20066 : Bundle := named_bundle% "RealMapCertificates/relations/basis20066.json"
theorem reductionProof20066 : EqualModuloRelations reduction20066.relations reduction20066.input reduction20066.output := by lin_cert using reduction20066.terms
theorem substitutionProof20066 : IsMapEvaluation generatorImages reduction20066.relations [8,209,291] reduction20066.output := by lin_cert using reduction20066.terms
def image20067 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20067 : InImage map_32_250 image20067 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20067 : Bundle := named_bundle% "RealMapCertificates/relations/basis20067.json"
theorem reductionProof20067 : EqualModuloRelations reduction20067.relations reduction20067.input reduction20067.output := by lin_cert using reduction20067.terms
theorem substitutionProof20067 : IsMapEvaluation generatorImages reduction20067.relations [0,2307] reduction20067.output := by lin_cert using reduction20067.terms
def image20068 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20068 : InImage map_32_250 image20068 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20068 : Bundle := named_bundle% "RealMapCertificates/relations/basis20068.json"
theorem reductionProof20068 : EqualModuloRelations reduction20068.relations reduction20068.input reduction20068.output := by lin_cert using reduction20068.terms
theorem substitutionProof20068 : IsMapEvaluation generatorImages reduction20068.relations [0,2306] reduction20068.output := by lin_cert using reduction20068.terms
def map_32_251 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20363 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20363 : InImage map_32_251 image20363 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20363 : Bundle := named_bundle% "RealMapCertificates/relations/basis20363.json"
theorem reductionProof20363 : EqualModuloRelations reduction20363.relations reduction20363.input reduction20363.output := by lin_cert using reduction20363.terms
theorem substitutionProof20363 : IsMapEvaluation generatorImages reduction20363.relations [13,188,292] reduction20363.output := by lin_cert using reduction20363.terms
def image20364 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20364 : InImage map_32_251 image20364 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20364 : Bundle := named_bundle% "RealMapCertificates/relations/basis20364.json"
theorem reductionProof20364 : EqualModuloRelations reduction20364.relations reduction20364.input reduction20364.output := by lin_cert using reduction20364.terms
theorem substitutionProof20364 : IsMapEvaluation generatorImages reduction20364.relations [9,13,13,101,209] reduction20364.output := by lin_cert using reduction20364.terms
def image20365 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20365 : InImage map_32_251 image20365 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20365 : Bundle := named_bundle% "RealMapCertificates/relations/basis20365.json"
theorem reductionProof20365 : EqualModuloRelations reduction20365.relations reduction20365.input reduction20365.output := by lin_cert using reduction20365.terms
theorem substitutionProof20365 : IsMapEvaluation generatorImages reduction20365.relations [8,64,761] reduction20365.output := by lin_cert using reduction20365.terms
def image20366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20366 : InImage map_32_251 image20366 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20366 : Bundle := named_bundle% "RealMapCertificates/relations/basis20366.json"
theorem reductionProof20366 : EqualModuloRelations reduction20366.relations reduction20366.input reduction20366.output := by lin_cert using reduction20366.terms
theorem substitutionProof20366 : IsMapEvaluation generatorImages reduction20366.relations [1,2307] reduction20366.output := by lin_cert using reduction20366.terms
def image20367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20367 : InImage map_32_251 image20367 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20367 : Bundle := named_bundle% "RealMapCertificates/relations/basis20367.json"
theorem reductionProof20367 : EqualModuloRelations reduction20367.relations reduction20367.input reduction20367.output := by lin_cert using reduction20367.terms
theorem substitutionProof20367 : IsMapEvaluation generatorImages reduction20367.relations [1,2306] reduction20367.output := by lin_cert using reduction20367.terms
def image20368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20368 : InImage map_32_251 image20368 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20368 : Bundle := named_bundle% "RealMapCertificates/relations/basis20368.json"
theorem reductionProof20368 : EqualModuloRelations reduction20368.relations reduction20368.input reduction20368.output := by lin_cert using reduction20368.terms
theorem substitutionProof20368 : IsMapEvaluation generatorImages reduction20368.relations [0,2340] reduction20368.output := by lin_cert using reduction20368.terms
def image20369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20369 : InImage map_32_251 image20369 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20369 : Bundle := named_bundle% "RealMapCertificates/relations/basis20369.json"
theorem reductionProof20369 : EqualModuloRelations reduction20369.relations reduction20369.input reduction20369.output := by lin_cert using reduction20369.terms
theorem substitutionProof20369 : IsMapEvaluation generatorImages reduction20369.relations [0,2339] reduction20369.output := by lin_cert using reduction20369.terms
def image20370 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20370 : InImage map_32_251 image20370 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20370 : Bundle := named_bundle% "RealMapCertificates/relations/basis20370.json"
theorem reductionProof20370 : EqualModuloRelations reduction20370.relations reduction20370.input reduction20370.output := by lin_cert using reduction20370.terms
theorem substitutionProof20370 : IsMapEvaluation generatorImages reduction20370.relations [0,0,0,2279] reduction20370.output := by lin_cert using reduction20370.terms
def map_32_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20660 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20660 : InImage map_32_252 image20660 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20660 : Bundle := named_bundle% "RealMapCertificates/relations/basis20660.json"
theorem reductionProof20660 : EqualModuloRelations reduction20660.relations reduction20660.input reduction20660.output := by lin_cert using reduction20660.terms
theorem substitutionProof20660 : IsMapEvaluation generatorImages reduction20660.relations [2407] reduction20660.output := by lin_cert using reduction20660.terms
def image20661 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20661 : InImage map_32_252 image20661 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20661 : Bundle := named_bundle% "RealMapCertificates/relations/basis20661.json"
theorem reductionProof20661 : EqualModuloRelations reduction20661.relations reduction20661.input reduction20661.output := by lin_cert using reduction20661.terms
theorem substitutionProof20661 : IsMapEvaluation generatorImages reduction20661.relations [9,1755] reduction20661.output := by lin_cert using reduction20661.terms
def image20662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20662 : InImage map_32_252 image20662 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20662 : Bundle := named_bundle% "RealMapCertificates/relations/basis20662.json"
theorem reductionProof20662 : EqualModuloRelations reduction20662.relations reduction20662.input reduction20662.output := by lin_cert using reduction20662.terms
theorem substitutionProof20662 : IsMapEvaluation generatorImages reduction20662.relations [9,13,13,13,13,408] reduction20662.output := by lin_cert using reduction20662.terms
def image20663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20663 : InImage map_32_252 image20663 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20663 : Bundle := named_bundle% "RealMapCertificates/relations/basis20663.json"
theorem reductionProof20663 : EqualModuloRelations reduction20663.relations reduction20663.input reduction20663.output := by lin_cert using reduction20663.terms
theorem substitutionProof20663 : IsMapEvaluation generatorImages reduction20663.relations [8,8,212,212] reduction20663.output := by lin_cert using reduction20663.terms
def image20664 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20664 : InImage map_32_252 image20664 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20664 : Bundle := named_bundle% "RealMapCertificates/relations/basis20664.json"
theorem reductionProof20664 : EqualModuloRelations reduction20664.relations reduction20664.input reduction20664.output := by lin_cert using reduction20664.terms
theorem substitutionProof20664 : IsMapEvaluation generatorImages reduction20664.relations [1,2339] reduction20664.output := by lin_cert using reduction20664.terms
def image20665 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20665 : InImage map_32_252 image20665 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20665 : Bundle := named_bundle% "RealMapCertificates/relations/basis20665.json"
theorem reductionProof20665 : EqualModuloRelations reduction20665.relations reduction20665.input reduction20665.output := by lin_cert using reduction20665.terms
theorem substitutionProof20665 : IsMapEvaluation generatorImages reduction20665.relations [0,2380] reduction20665.output := by lin_cert using reduction20665.terms
def image20666 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20666 : InImage map_32_252 image20666 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20666 : Bundle := named_bundle% "RealMapCertificates/relations/basis20666.json"
theorem reductionProof20666 : EqualModuloRelations reduction20666.relations reduction20666.input reduction20666.output := by lin_cert using reduction20666.terms
theorem substitutionProof20666 : IsMapEvaluation generatorImages reduction20666.relations [0,0,2342] reduction20666.output := by lin_cert using reduction20666.terms
def image20667 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20667 : InImage map_32_252 image20667 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20667 : Bundle := named_bundle% "RealMapCertificates/relations/basis20667.json"
theorem reductionProof20667 : EqualModuloRelations reduction20667.relations reduction20667.input reduction20667.output := by lin_cert using reduction20667.terms
theorem substitutionProof20667 : IsMapEvaluation generatorImages reduction20667.relations [0,0,2341] reduction20667.output := by lin_cert using reduction20667.terms
def map_32_253 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20896 : InImage map_32_253 image20896 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20896 : Bundle := named_bundle% "RealMapCertificates/relations/basis20896.json"
theorem reductionProof20896 : EqualModuloRelations reduction20896.relations reduction20896.input reduction20896.output := by lin_cert using reduction20896.terms
theorem substitutionProof20896 : IsMapEvaluation generatorImages reduction20896.relations [2440] reduction20896.output := by lin_cert using reduction20896.terms
def image20897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20897 : InImage map_32_253 image20897 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20897 : Bundle := named_bundle% "RealMapCertificates/relations/basis20897.json"
theorem reductionProof20897 : EqualModuloRelations reduction20897.relations reduction20897.input reduction20897.output := by lin_cert using reduction20897.terms
theorem substitutionProof20897 : IsMapEvaluation generatorImages reduction20897.relations [209,517] reduction20897.output := by lin_cert using reduction20897.terms
def image20898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20898 : InImage map_32_253 image20898 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20898 : Bundle := named_bundle% "RealMapCertificates/relations/basis20898.json"
theorem reductionProof20898 : EqualModuloRelations reduction20898.relations reduction20898.input reduction20898.output := by lin_cert using reduction20898.terms
theorem substitutionProof20898 : IsMapEvaluation generatorImages reduction20898.relations [13,13,13,13,618] reduction20898.output := by lin_cert using reduction20898.terms
def image20899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20899 : InImage map_32_253 image20899 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20899 : Bundle := named_bundle% "RealMapCertificates/relations/basis20899.json"
theorem reductionProof20899 : EqualModuloRelations reduction20899.relations reduction20899.input reduction20899.output := by lin_cert using reduction20899.terms
theorem substitutionProof20899 : IsMapEvaluation generatorImages reduction20899.relations [8,209,316] reduction20899.output := by lin_cert using reduction20899.terms
def image20900 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20900 : InImage map_32_253 image20900 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20900 : Bundle := named_bundle% "RealMapCertificates/relations/basis20900.json"
theorem reductionProof20900 : EqualModuloRelations reduction20900.relations reduction20900.input reduction20900.output := by lin_cert using reduction20900.terms
theorem substitutionProof20900 : IsMapEvaluation generatorImages reduction20900.relations [1,2380] reduction20900.output := by lin_cert using reduction20900.terms
def image20901 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20901 : InImage map_32_253 image20901 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20901 : Bundle := named_bundle% "RealMapCertificates/relations/basis20901.json"
theorem reductionProof20901 : EqualModuloRelations reduction20901.relations reduction20901.input reduction20901.output := by lin_cert using reduction20901.terms
theorem substitutionProof20901 : IsMapEvaluation generatorImages reduction20901.relations [0,67,978] reduction20901.output := by lin_cert using reduction20901.terms
def image20902 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20902 : InImage map_32_253 image20902 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20902 : Bundle := named_bundle% "RealMapCertificates/relations/basis20902.json"
theorem reductionProof20902 : EqualModuloRelations reduction20902.relations reduction20902.input reduction20902.output := by lin_cert using reduction20902.terms
theorem substitutionProof20902 : IsMapEvaluation generatorImages reduction20902.relations [0,0,2381] reduction20902.output := by lin_cert using reduction20902.terms
def image20903 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20903 : InImage map_32_253 image20903 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20903 : Bundle := named_bundle% "RealMapCertificates/relations/basis20903.json"
theorem reductionProof20903 : EqualModuloRelations reduction20903.relations reduction20903.input reduction20903.output := by lin_cert using reduction20903.terms
theorem substitutionProof20903 : IsMapEvaluation generatorImages reduction20903.relations [0,0,0,0,2309] reduction20903.output := by lin_cert using reduction20903.terms
def map_32_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21194 : InImage map_32_254 image21194 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21194 : Bundle := named_bundle% "RealMapCertificates/relations/basis21194.json"
theorem reductionProof21194 : EqualModuloRelations reduction21194.relations reduction21194.input reduction21194.output := by lin_cert using reduction21194.terms
theorem substitutionProof21194 : IsMapEvaluation generatorImages reduction21194.relations [13,13,13,101,209] reduction21194.output := by lin_cert using reduction21194.terms
def image21195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21195 : InImage map_32_254 image21195 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21195 : Bundle := named_bundle% "RealMapCertificates/relations/basis21195.json"
theorem reductionProof21195 : EqualModuloRelations reduction21195.relations reduction21195.input reduction21195.output := by lin_cert using reduction21195.terms
theorem substitutionProof21195 : IsMapEvaluation generatorImages reduction21195.relations [13,13,13,13,629] reduction21195.output := by lin_cert using reduction21195.terms
def image21196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21196 : InImage map_32_254 image21196 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21196 : Bundle := named_bundle% "RealMapCertificates/relations/basis21196.json"
theorem reductionProof21196 : EqualModuloRelations reduction21196.relations reduction21196.input reduction21196.output := by lin_cert using reduction21196.terms
theorem substitutionProof21196 : IsMapEvaluation generatorImages reduction21196.relations [8,8,187,250] reduction21196.output := by lin_cert using reduction21196.terms
def image21197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21197 : InImage map_32_254 image21197 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21197 : Bundle := named_bundle% "RealMapCertificates/relations/basis21197.json"
theorem reductionProof21197 : EqualModuloRelations reduction21197.relations reduction21197.input reduction21197.output := by lin_cert using reduction21197.terms
theorem substitutionProof21197 : IsMapEvaluation generatorImages reduction21197.relations [1,1,2341] reduction21197.output := by lin_cert using reduction21197.terms
def image21198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21198 : InImage map_32_254 image21198 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21198 : Bundle := named_bundle% "RealMapCertificates/relations/basis21198.json"
theorem reductionProof21198 : EqualModuloRelations reduction21198.relations reduction21198.input reduction21198.output := by lin_cert using reduction21198.terms
theorem substitutionProof21198 : IsMapEvaluation generatorImages reduction21198.relations [0,0,68,978] reduction21198.output := by lin_cert using reduction21198.terms
def image21199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21199 : InImage map_32_254 image21199 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21199 : Bundle := named_bundle% "RealMapCertificates/relations/basis21199.json"
theorem reductionProof21199 : EqualModuloRelations reduction21199.relations reduction21199.input reduction21199.output := by lin_cert using reduction21199.terms
theorem substitutionProof21199 : IsMapEvaluation generatorImages reduction21199.relations [0,0,0,0,0,0,0,0,0,0,246,324] reduction21199.output := by lin_cert using reduction21199.terms
def map_32_255 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21528 : InImage map_32_255 image21528 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21528 : Bundle := named_bundle% "RealMapCertificates/relations/basis21528.json"
theorem reductionProof21528 : EqualModuloRelations reduction21528.relations reduction21528.input reduction21528.output := by lin_cert using reduction21528.terms
theorem substitutionProof21528 : IsMapEvaluation generatorImages reduction21528.relations [2548] reduction21528.output := by lin_cert using reduction21528.terms
def image21529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21529 : InImage map_32_255 image21529 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21529 : Bundle := named_bundle% "RealMapCertificates/relations/basis21529.json"
theorem reductionProof21529 : EqualModuloRelations reduction21529.relations reduction21529.input reduction21529.output := by lin_cert using reduction21529.terms
theorem substitutionProof21529 : IsMapEvaluation generatorImages reduction21529.relations [2547] reduction21529.output := by lin_cert using reduction21529.terms
def image21530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21530 : InImage map_32_255 image21530 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21530 : Bundle := named_bundle% "RealMapCertificates/relations/basis21530.json"
theorem reductionProof21530 : EqualModuloRelations reduction21530.relations reduction21530.input reduction21530.output := by lin_cert using reduction21530.terms
theorem substitutionProof21530 : IsMapEvaluation generatorImages reduction21530.relations [13,1755] reduction21530.output := by lin_cert using reduction21530.terms
def image21531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21531 : InImage map_32_255 image21531 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21531 : Bundle := named_bundle% "RealMapCertificates/relations/basis21531.json"
theorem reductionProof21531 : EqualModuloRelations reduction21531.relations reduction21531.input reduction21531.output := by lin_cert using reduction21531.terms
theorem substitutionProof21531 : IsMapEvaluation generatorImages reduction21531.relations [13,13,13,13,13,408] reduction21531.output := by lin_cert using reduction21531.terms
def image21532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21532 : InImage map_32_255 image21532 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21532 : Bundle := named_bundle% "RealMapCertificates/relations/basis21532.json"
theorem reductionProof21532 : EqualModuloRelations reduction21532.relations reduction21532.input reduction21532.output := by lin_cert using reduction21532.terms
theorem substitutionProof21532 : IsMapEvaluation generatorImages reduction21532.relations [8,9,212,212] reduction21532.output := by lin_cert using reduction21532.terms
def image21533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21533 : InImage map_32_255 image21533 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21533 : Bundle := named_bundle% "RealMapCertificates/relations/basis21533.json"
theorem reductionProof21533 : EqualModuloRelations reduction21533.relations reduction21533.input reduction21533.output := by lin_cert using reduction21533.terms
theorem substitutionProof21533 : IsMapEvaluation generatorImages reduction21533.relations [0,2489] reduction21533.output := by lin_cert using reduction21533.terms
def image21534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21534 : InImage map_32_255 image21534 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21534 : Bundle := named_bundle% "RealMapCertificates/relations/basis21534.json"
theorem reductionProof21534 : EqualModuloRelations reduction21534.relations reduction21534.input reduction21534.output := by lin_cert using reduction21534.terms
theorem substitutionProof21534 : IsMapEvaluation generatorImages reduction21534.relations [0,297,324] reduction21534.output := by lin_cert using reduction21534.terms
def image21535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21535 : InImage map_32_255 image21535 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21535 : Bundle := named_bundle% "RealMapCertificates/relations/basis21535.json"
theorem reductionProof21535 : EqualModuloRelations reduction21535.relations reduction21535.input reduction21535.output := by lin_cert using reduction21535.terms
theorem substitutionProof21535 : IsMapEvaluation generatorImages reduction21535.relations [0,2,2341] reduction21535.output := by lin_cert using reduction21535.terms
def map_32_256 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21790 : InImage map_32_256 image21790 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21790 : Bundle := named_bundle% "RealMapCertificates/relations/basis21790.json"
theorem reductionProof21790 : EqualModuloRelations reduction21790.relations reduction21790.input reduction21790.output := by lin_cert using reduction21790.terms
theorem substitutionProof21790 : IsMapEvaluation generatorImages reduction21790.relations [9,13,13,13,677] reduction21790.output := by lin_cert using reduction21790.terms
def image21791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21791 : InImage map_32_256 image21791 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21791 : Bundle := named_bundle% "RealMapCertificates/relations/basis21791.json"
theorem reductionProof21791 : EqualModuloRelations reduction21791.relations reduction21791.input reduction21791.output := by lin_cert using reduction21791.terms
theorem substitutionProof21791 : IsMapEvaluation generatorImages reduction21791.relations [8,209,347] reduction21791.output := by lin_cert using reduction21791.terms
def image21792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21792 : InImage map_32_256 image21792 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21792 : Bundle := named_bundle% "RealMapCertificates/relations/basis21792.json"
theorem reductionProof21792 : EqualModuloRelations reduction21792.relations reduction21792.input reduction21792.output := by lin_cert using reduction21792.terms
theorem substitutionProof21792 : IsMapEvaluation generatorImages reduction21792.relations [8,209,346] reduction21792.output := by lin_cert using reduction21792.terms
def image21793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21793 : InImage map_32_256 image21793 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21793 : Bundle := named_bundle% "RealMapCertificates/relations/basis21793.json"
theorem reductionProof21793 : EqualModuloRelations reduction21793.relations reduction21793.input reduction21793.output := by lin_cert using reduction21793.terms
theorem substitutionProof21793 : IsMapEvaluation generatorImages reduction21793.relations [0,2549] reduction21793.output := by lin_cert using reduction21793.terms
def image21794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21794 : InImage map_32_256 image21794 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21794 : Bundle := named_bundle% "RealMapCertificates/relations/basis21794.json"
theorem reductionProof21794 : EqualModuloRelations reduction21794.relations reduction21794.input reduction21794.output := by lin_cert using reduction21794.terms
theorem substitutionProof21794 : IsMapEvaluation generatorImages reduction21794.relations [0,64,1051] reduction21794.output := by lin_cert using reduction21794.terms
def image21795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21795 : InImage map_32_256 image21795 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21795 : Bundle := named_bundle% "RealMapCertificates/relations/basis21795.json"
theorem reductionProof21795 : EqualModuloRelations reduction21795.relations reduction21795.input reduction21795.output := by lin_cert using reduction21795.terms
theorem substitutionProof21795 : IsMapEvaluation generatorImages reduction21795.relations [0,0,2490] reduction21795.output := by lin_cert using reduction21795.terms
def image21796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21796 : InImage map_32_256 image21796 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21796 : Bundle := named_bundle% "RealMapCertificates/relations/basis21796.json"
theorem reductionProof21796 : EqualModuloRelations reduction21796.relations reduction21796.input reduction21796.output := by lin_cert using reduction21796.terms
theorem substitutionProof21796 : IsMapEvaluation generatorImages reduction21796.relations [0,0,298,324] reduction21796.output := by lin_cert using reduction21796.terms
def image21797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21797 : InImage map_32_256 image21797 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21797 : Bundle := named_bundle% "RealMapCertificates/relations/basis21797.json"
theorem reductionProof21797 : EqualModuloRelations reduction21797.relations reduction21797.input reduction21797.output := by lin_cert using reduction21797.terms
theorem substitutionProof21797 : IsMapEvaluation generatorImages reduction21797.relations [0,0,0,2442] reduction21797.output := by lin_cert using reduction21797.terms
def map_32_257 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22143 : InImage map_32_257 image22143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22143 : Bundle := named_bundle% "RealMapCertificates/relations/basis22143.json"
theorem reductionProof22143 : EqualModuloRelations reduction22143.relations reduction22143.input reduction22143.output := by lin_cert using reduction22143.terms
theorem substitutionProof22143 : IsMapEvaluation generatorImages reduction22143.relations [8,8,187,261] reduction22143.output := by lin_cert using reduction22143.terms
def image22144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22144 : InImage map_32_257 image22144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22144 : Bundle := named_bundle% "RealMapCertificates/relations/basis22144.json"
theorem reductionProof22144 : EqualModuloRelations reduction22144.relations reduction22144.input reduction22144.output := by lin_cert using reduction22144.terms
theorem substitutionProof22144 : IsMapEvaluation generatorImages reduction22144.relations [7,2040] reduction22144.output := by lin_cert using reduction22144.terms
def image22145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22145 : InImage map_32_257 image22145 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22145 : Bundle := named_bundle% "RealMapCertificates/relations/basis22145.json"
theorem reductionProof22145 : EqualModuloRelations reduction22145.relations reduction22145.input reduction22145.output := by lin_cert using reduction22145.terms
theorem substitutionProof22145 : IsMapEvaluation generatorImages reduction22145.relations [1,2549] reduction22145.output := by lin_cert using reduction22145.terms
def image22146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22146 : InImage map_32_257 image22146 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22146 : Bundle := named_bundle% "RealMapCertificates/relations/basis22146.json"
theorem reductionProof22146 : EqualModuloRelations reduction22146.relations reduction22146.input reduction22146.output := by lin_cert using reduction22146.terms
theorem substitutionProof22146 : IsMapEvaluation generatorImages reduction22146.relations [0,0,2550] reduction22146.output := by lin_cert using reduction22146.terms
def image22147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22147 : InImage map_32_257 image22147 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22147 : Bundle := named_bundle% "RealMapCertificates/relations/basis22147.json"
theorem reductionProof22147 : EqualModuloRelations reduction22147.relations reduction22147.input reduction22147.output := by lin_cert using reduction22147.terms
theorem substitutionProof22147 : IsMapEvaluation generatorImages reduction22147.relations [0,0,0,2492] reduction22147.output := by lin_cert using reduction22147.terms
def map_32_258 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22497 : InImage map_32_258 image22497 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22497 : Bundle := named_bundle% "RealMapCertificates/relations/basis22497.json"
theorem reductionProof22497 : EqualModuloRelations reduction22497.relations reduction22497.input reduction22497.output := by lin_cert using reduction22497.terms
theorem substitutionProof22497 : IsMapEvaluation generatorImages reduction22497.relations [13,13,13,959] reduction22497.output := by lin_cert using reduction22497.terms
def image22498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22498 : InImage map_32_258 image22498 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22498 : Bundle := named_bundle% "RealMapCertificates/relations/basis22498.json"
theorem reductionProof22498 : EqualModuloRelations reduction22498.relations reduction22498.input reduction22498.output := by lin_cert using reduction22498.terms
theorem substitutionProof22498 : IsMapEvaluation generatorImages reduction22498.relations [8,1998] reduction22498.output := by lin_cert using reduction22498.terms
def image22499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22499 : InImage map_32_258 image22499 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22499 : Bundle := named_bundle% "RealMapCertificates/relations/basis22499.json"
theorem reductionProof22499 : EqualModuloRelations reduction22499.relations reduction22499.input reduction22499.output := by lin_cert using reduction22499.terms
theorem substitutionProof22499 : IsMapEvaluation generatorImages reduction22499.relations [8,13,212,212] reduction22499.output := by lin_cert using reduction22499.terms
def image22500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22500 : InImage map_32_258 image22500 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22500 : Bundle := named_bundle% "RealMapCertificates/relations/basis22500.json"
theorem reductionProof22500 : EqualModuloRelations reduction22500.relations reduction22500.input reduction22500.output := by lin_cert using reduction22500.terms
theorem substitutionProof22500 : IsMapEvaluation generatorImages reduction22500.relations [3,2339] reduction22500.output := by lin_cert using reduction22500.terms
def image22501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22501 : InImage map_32_258 image22501 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22501 : Bundle := named_bundle% "RealMapCertificates/relations/basis22501.json"
theorem reductionProof22501 : EqualModuloRelations reduction22501.relations reduction22501.input reduction22501.output := by lin_cert using reduction22501.terms
theorem substitutionProof22501 : IsMapEvaluation generatorImages reduction22501.relations [0,8,224,324] reduction22501.output := by lin_cert using reduction22501.terms
def image22502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22502 : InImage map_32_258 image22502 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22502 : Bundle := named_bundle% "RealMapCertificates/relations/basis22502.json"
theorem reductionProof22502 : EqualModuloRelations reduction22502.relations reduction22502.input reduction22502.output := by lin_cert using reduction22502.terms
theorem substitutionProof22502 : IsMapEvaluation generatorImages reduction22502.relations [0,0,7,1997] reduction22502.output := by lin_cert using reduction22502.terms
def image22503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22503 : InImage map_32_258 image22503 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22503 : Bundle := named_bundle% "RealMapCertificates/relations/basis22503.json"
theorem reductionProof22503 : EqualModuloRelations reduction22503.relations reduction22503.input reduction22503.output := by lin_cert using reduction22503.terms
theorem substitutionProof22503 : IsMapEvaluation generatorImages reduction22503.relations [0,0,0,0,2494] reduction22503.output := by lin_cert using reduction22503.terms
end RealMapCertificates
