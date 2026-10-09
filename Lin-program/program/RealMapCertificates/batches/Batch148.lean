import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 5 => [[1,4]]
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 147 => [[0,4,8,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 165 => [[1,4,4,4,4,4,4,4,4]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 175 => [[2,4,4,4,4,4,4,4,4]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 209 => []
  | 210 => []
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 212 => []
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 259 => [[4,5,7,7,12]]
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 280 => []
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 315 => [[4,4,5,5,7,12]]
  | 324 => []
  | 345 => [[4,4,5,7,7,12]]
  | 346 => []
  | 382 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 476 => []
  | 488 => [[4,4,4,4,6,8,12]]
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 500 => []
  | 509 => []
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 623 => []
  | 627 => []
  | 677 => []
  | 1038 => []
  | 1430 => []
  | 1971 => []
  | 2099 => []
  | 2498 => []
  | 2550 => []
  | 2867 => []
  | 2868 => []
  | _ => []
def map_32_259 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22801 : InImage map_32_259 image22801 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22801 : Bundle := named_bundle% "RealMapCertificates/relations/basis22801.json"
theorem reductionProof22801 : EqualModuloRelations reduction22801.relations reduction22801.input reduction22801.output := by lin_cert using reduction22801.terms
theorem substitutionProof22801 : IsMapEvaluation generatorImages reduction22801.relations [13,13,13,13,677] reduction22801.output := by lin_cert using reduction22801.terms
def image22802 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22802 : InImage map_32_259 image22802 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22802 : Bundle := named_bundle% "RealMapCertificates/relations/basis22802.json"
theorem reductionProof22802 : EqualModuloRelations reduction22802.relations reduction22802.input reduction22802.output := by lin_cert using reduction22802.terms
theorem substitutionProof22802 : IsMapEvaluation generatorImages reduction22802.relations [9,209,346] reduction22802.output := by lin_cert using reduction22802.terms
def image22803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22803 : InImage map_32_259 image22803 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22803 : Bundle := named_bundle% "RealMapCertificates/relations/basis22803.json"
theorem reductionProof22803 : EqualModuloRelations reduction22803.relations reduction22803.input reduction22803.output := by lin_cert using reduction22803.terms
theorem substitutionProof22803 : IsMapEvaluation generatorImages reduction22803.relations [8,209,382] reduction22803.output := by lin_cert using reduction22803.terms
def image22804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22804 : InImage map_32_259 image22804 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22804 : Bundle := named_bundle% "RealMapCertificates/relations/basis22804.json"
theorem reductionProof22804 : EqualModuloRelations reduction22804.relations reduction22804.input reduction22804.output := by lin_cert using reduction22804.terms
theorem substitutionProof22804 : IsMapEvaluation generatorImages reduction22804.relations [1,1,2550] reduction22804.output := by lin_cert using reduction22804.terms
def image22805 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22805 : InImage map_32_259 image22805 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22805 : Bundle := named_bundle% "RealMapCertificates/relations/basis22805.json"
theorem reductionProof22805 : EqualModuloRelations reduction22805.relations reduction22805.input reduction22805.output := by lin_cert using reduction22805.terms
theorem substitutionProof22805 : IsMapEvaluation generatorImages reduction22805.relations [0,0,8,225,324] reduction22805.output := by lin_cert using reduction22805.terms
def map_32_260 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23179 : InImage map_32_260 image23179 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23179 : Bundle := named_bundle% "RealMapCertificates/relations/basis23179.json"
theorem reductionProof23179 : EqualModuloRelations reduction23179.relations reduction23179.input reduction23179.output := by lin_cert using reduction23179.terms
theorem substitutionProof23179 : IsMapEvaluation generatorImages reduction23179.relations [187,627] reduction23179.output := by lin_cert using reduction23179.terms
def image23180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23180 : InImage map_32_260 image23180 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23180 : Bundle := named_bundle% "RealMapCertificates/relations/basis23180.json"
theorem reductionProof23180 : EqualModuloRelations reduction23180.relations reduction23180.input reduction23180.output := by lin_cert using reduction23180.terms
theorem substitutionProof23180 : IsMapEvaluation generatorImages reduction23180.relations [9,13,13,1038] reduction23180.output := by lin_cert using reduction23180.terms
def image23181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23181 : InImage map_32_260 image23181 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23181 : Bundle := named_bundle% "RealMapCertificates/relations/basis23181.json"
theorem reductionProof23181 : EqualModuloRelations reduction23181.relations reduction23181.input reduction23181.output := by lin_cert using reduction23181.terms
theorem substitutionProof23181 : IsMapEvaluation generatorImages reduction23181.relations [8,8,188,280] reduction23181.output := by lin_cert using reduction23181.terms
def image23182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23182 : InImage map_32_260 image23182 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23182 : Bundle := named_bundle% "RealMapCertificates/relations/basis23182.json"
theorem reductionProof23182 : EqualModuloRelations reduction23182.relations reduction23182.input reduction23182.output := by lin_cert using reduction23182.terms
theorem substitutionProof23182 : IsMapEvaluation generatorImages reduction23182.relations [0,0,0,0,0,0,2498] reduction23182.output := by lin_cert using reduction23182.terms
def map_32_261 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23611 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23611 : InImage map_32_261 image23611 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23611 : Bundle := named_bundle% "RealMapCertificates/relations/basis23611.json"
theorem reductionProof23611 : EqualModuloRelations reduction23611.relations reduction23611.input reduction23611.output := by lin_cert using reduction23611.terms
theorem substitutionProof23611 : IsMapEvaluation generatorImages reduction23611.relations [2868] reduction23611.output := by lin_cert using reduction23611.terms
def image23612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23612 : InImage map_32_261 image23612 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23612 : Bundle := named_bundle% "RealMapCertificates/relations/basis23612.json"
theorem reductionProof23612 : EqualModuloRelations reduction23612.relations reduction23612.input reduction23612.output := by lin_cert using reduction23612.terms
theorem substitutionProof23612 : IsMapEvaluation generatorImages reduction23612.relations [2867] reduction23612.output := by lin_cert using reduction23612.terms
def image23613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23613 : InImage map_32_261 image23613 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23613 : Bundle := named_bundle% "RealMapCertificates/relations/basis23613.json"
theorem reductionProof23613 : EqualModuloRelations reduction23613.relations reduction23613.input reduction23613.output := by lin_cert using reduction23613.terms
theorem substitutionProof23613 : IsMapEvaluation generatorImages reduction23613.relations [13,13,1430] reduction23613.output := by lin_cert using reduction23613.terms
def image23614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23614 : InImage map_32_261 image23614 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23614 : Bundle := named_bundle% "RealMapCertificates/relations/basis23614.json"
theorem reductionProof23614 : EqualModuloRelations reduction23614.relations reduction23614.input reduction23614.output := by lin_cert using reduction23614.terms
theorem substitutionProof23614 : IsMapEvaluation generatorImages reduction23614.relations [13,13,13,13,13,476] reduction23614.output := by lin_cert using reduction23614.terms
def image23615 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23615 : InImage map_32_261 image23615 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23615 : Bundle := named_bundle% "RealMapCertificates/relations/basis23615.json"
theorem reductionProof23615 : EqualModuloRelations reduction23615.relations reduction23615.input reduction23615.output := by lin_cert using reduction23615.terms
theorem substitutionProof23615 : IsMapEvaluation generatorImages reduction23615.relations [9,13,212,212] reduction23615.output := by lin_cert using reduction23615.terms
def image23616 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23616 : InImage map_32_261 image23616 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23616 : Bundle := named_bundle% "RealMapCertificates/relations/basis23616.json"
theorem reductionProof23616 : EqualModuloRelations reduction23616.relations reduction23616.input reduction23616.output := by lin_cert using reduction23616.terms
theorem substitutionProof23616 : IsMapEvaluation generatorImages reduction23616.relations [8,2099] reduction23616.output := by lin_cert using reduction23616.terms
def image23617 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23617 : InImage map_32_261 image23617 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23617 : Bundle := named_bundle% "RealMapCertificates/relations/basis23617.json"
theorem reductionProof23617 : EqualModuloRelations reduction23617.relations reduction23617.input reduction23617.output := by lin_cert using reduction23617.terms
theorem substitutionProof23617 : IsMapEvaluation generatorImages reduction23617.relations [0,188,627] reduction23617.output := by lin_cert using reduction23617.terms
def image23618 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23618 : InImage map_32_261 image23618 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23618 : Bundle := named_bundle% "RealMapCertificates/relations/basis23618.json"
theorem reductionProof23618 : EqualModuloRelations reduction23618.relations reduction23618.input reduction23618.output := by lin_cert using reduction23618.terms
theorem substitutionProof23618 : IsMapEvaluation generatorImages reduction23618.relations [0,8,237,324] reduction23618.output := by lin_cert using reduction23618.terms
def image23619 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23619 : InImage map_32_261 image23619 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23619 : Bundle := named_bundle% "RealMapCertificates/relations/basis23619.json"
theorem reductionProof23619 : EqualModuloRelations reduction23619.relations reduction23619.input reduction23619.output := by lin_cert using reduction23619.terms
theorem substitutionProof23619 : IsMapEvaluation generatorImages reduction23619.relations [0,0,0,0,0,0,7,1971] reduction23619.output := by lin_cert using reduction23619.terms
def map_33_33 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image106 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation106 : InImage map_33_33 image106 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction106 : Bundle := named_bundle% "RealMapCertificates/relations/basis106.json"
theorem reductionProof106 : EqualModuloRelations reduction106.relations reduction106.input reduction106.output := by lin_cert using reduction106.terms
theorem substitutionProof106 : IsMapEvaluation generatorImages reduction106.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction106.output := by lin_cert using reduction106.terms
def map_33_98 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1162 : InImage map_33_98 image1162 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1162 : Bundle := named_bundle% "RealMapCertificates/relations/basis1162.json"
theorem reductionProof1162 : EqualModuloRelations reduction1162.relations reduction1162.input reduction1162.output := by lin_cert using reduction1162.terms
theorem substitutionProof1162 : IsMapEvaluation generatorImages reduction1162.relations [165] reduction1162.output := by lin_cert using reduction1162.terms
def map_33_100 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1216 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1216 : InImage map_33_100 image1216 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1216 : Bundle := named_bundle% "RealMapCertificates/relations/basis1216.json"
theorem reductionProof1216 : EqualModuloRelations reduction1216.relations reduction1216.input reduction1216.output := by lin_cert using reduction1216.terms
theorem substitutionProof1216 : IsMapEvaluation generatorImages reduction1216.relations [175] reduction1216.output := by lin_cert using reduction1216.terms
def map_33_103 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1313 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1313 : InImage map_33_103 image1313 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1313 : Bundle := named_bundle% "RealMapCertificates/relations/basis1313.json"
theorem reductionProof1313 : EqualModuloRelations reduction1313.relations reduction1313.input reduction1313.output := by lin_cert using reduction1313.terms
theorem substitutionProof1313 : IsMapEvaluation generatorImages reduction1313.relations [0,182] reduction1313.output := by lin_cert using reduction1313.terms
def map_33_104 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image1342 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1342 : InImage map_33_104 image1342 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1342 : Bundle := named_bundle% "RealMapCertificates/relations/basis1342.json"
theorem reductionProof1342 : EqualModuloRelations reduction1342.relations reduction1342.input reduction1342.output := by lin_cert using reduction1342.terms
theorem substitutionProof1342 : IsMapEvaluation generatorImages reduction1342.relations [1,182] reduction1342.output := by lin_cert using reduction1342.terms
def image1343 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1343 : InImage map_33_104 image1343 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1343 : Bundle := named_bundle% "RealMapCertificates/relations/basis1343.json"
theorem reductionProof1343 : EqualModuloRelations reduction1343.relations reduction1343.input reduction1343.output := by lin_cert using reduction1343.terms
theorem substitutionProof1343 : IsMapEvaluation generatorImages reduction1343.relations [0,0,183] reduction1343.output := by lin_cert using reduction1343.terms
def map_33_106 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1413 : InImage map_33_106 image1413 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1413 : Bundle := named_bundle% "RealMapCertificates/relations/basis1413.json"
theorem reductionProof1413 : EqualModuloRelations reduction1413.relations reduction1413.input reduction1413.output := by lin_cert using reduction1413.terms
theorem substitutionProof1413 : IsMapEvaluation generatorImages reduction1413.relations [0,199] reduction1413.output := by lin_cert using reduction1413.terms
def map_33_107 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1450 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1450 : InImage map_33_107 image1450 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1450 : Bundle := named_bundle% "RealMapCertificates/relations/basis1450.json"
theorem reductionProof1450 : EqualModuloRelations reduction1450.relations reduction1450.input reduction1450.output := by lin_cert using reduction1450.terms
theorem substitutionProof1450 : IsMapEvaluation generatorImages reduction1450.relations [0,0,200] reduction1450.output := by lin_cert using reduction1450.terms
def map_33_109 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1522 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1522 : InImage map_33_109 image1522 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1522 : Bundle := named_bundle% "RealMapCertificates/relations/basis1522.json"
theorem reductionProof1522 : EqualModuloRelations reduction1522.relations reduction1522.input reduction1522.output := by lin_cert using reduction1522.terms
theorem substitutionProof1522 : IsMapEvaluation generatorImages reduction1522.relations [0,8,145] reduction1522.output := by lin_cert using reduction1522.terms
def map_33_110 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1554 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1554 : InImage map_33_110 image1554 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1554 : Bundle := named_bundle% "RealMapCertificates/relations/basis1554.json"
theorem reductionProof1554 : EqualModuloRelations reduction1554.relations reduction1554.input reduction1554.output := by lin_cert using reduction1554.terms
theorem substitutionProof1554 : IsMapEvaluation generatorImages reduction1554.relations [0,0,16,111] reduction1554.output := by lin_cert using reduction1554.terms
def map_33_111 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1589 : InImage map_33_111 image1589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1589 : Bundle := named_bundle% "RealMapCertificates/relations/basis1589.json"
theorem reductionProof1589 : EqualModuloRelations reduction1589.relations reduction1589.input reduction1589.output := by lin_cert using reduction1589.terms
theorem substitutionProof1589 : IsMapEvaluation generatorImages reduction1589.relations [0,0,0,17,111] reduction1589.output := by lin_cert using reduction1589.terms
def map_33_112 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1634 : InImage map_33_112 image1634 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1634 : Bundle := named_bundle% "RealMapCertificates/relations/basis1634.json"
theorem reductionProof1634 : EqualModuloRelations reduction1634.relations reduction1634.input reduction1634.output := by lin_cert using reduction1634.terms
theorem substitutionProof1634 : IsMapEvaluation generatorImages reduction1634.relations [0,8,152] reduction1634.output := by lin_cert using reduction1634.terms
def image1635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1635 : InImage map_33_112 image1635 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1635 : Bundle := named_bundle% "RealMapCertificates/relations/basis1635.json"
theorem reductionProof1635 : EqualModuloRelations reduction1635.relations reduction1635.input reduction1635.output := by lin_cert using reduction1635.terms
theorem substitutionProof1635 : IsMapEvaluation generatorImages reduction1635.relations [0,0,0,0,210] reduction1635.output := by lin_cert using reduction1635.terms
def map_33_113 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1672 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1672 : InImage map_33_113 image1672 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1672 : Bundle := named_bundle% "RealMapCertificates/relations/basis1672.json"
theorem reductionProof1672 : EqualModuloRelations reduction1672.relations reduction1672.input reduction1672.output := by lin_cert using reduction1672.terms
theorem substitutionProof1672 : IsMapEvaluation generatorImages reduction1672.relations [0,0,8,153] reduction1672.output := by lin_cert using reduction1672.terms
def map_33_115 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1743 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1743 : InImage map_33_115 image1743 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1743 : Bundle := named_bundle% "RealMapCertificates/relations/basis1743.json"
theorem reductionProof1743 : EqualModuloRelations reduction1743.relations reduction1743.input reduction1743.output := by lin_cert using reduction1743.terms
theorem substitutionProof1743 : IsMapEvaluation generatorImages reduction1743.relations [0,8,8,110] reduction1743.output := by lin_cert using reduction1743.terms
def map_33_116 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1773 : InImage map_33_116 image1773 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1773 : Bundle := named_bundle% "RealMapCertificates/relations/basis1773.json"
theorem reductionProof1773 : EqualModuloRelations reduction1773.relations reduction1773.input reduction1773.output := by lin_cert using reduction1773.terms
theorem substitutionProof1773 : IsMapEvaluation generatorImages reduction1773.relations [0,0,8,8,111] reduction1773.output := by lin_cert using reduction1773.terms
def map_33_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1849 : InImage map_33_118 image1849 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1849 : Bundle := named_bundle% "RealMapCertificates/relations/basis1849.json"
theorem reductionProof1849 : EqualModuloRelations reduction1849.relations reduction1849.input reduction1849.output := by lin_cert using reduction1849.terms
theorem substitutionProof1849 : IsMapEvaluation generatorImages reduction1849.relations [0,0,0,0,0,0,0,224] reduction1849.output := by lin_cert using reduction1849.terms
def map_33_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1888 : InImage map_33_119 image1888 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1888 : Bundle := named_bundle% "RealMapCertificates/relations/basis1888.json"
theorem reductionProof1888 : EqualModuloRelations reduction1888.relations reduction1888.input reduction1888.output := by lin_cert using reduction1888.terms
theorem substitutionProof1888 : IsMapEvaluation generatorImages reduction1888.relations [0,0,0,0,0,0,0,0,225] reduction1888.output := by lin_cert using reduction1888.terms
def map_33_120 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1919 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1919 : InImage map_33_120 image1919 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1919 : Bundle := named_bundle% "RealMapCertificates/relations/basis1919.json"
theorem reductionProof1919 : EqualModuloRelations reduction1919.relations reduction1919.input reduction1919.output := by lin_cert using reduction1919.terms
theorem substitutionProof1919 : IsMapEvaluation generatorImages reduction1919.relations [265] reduction1919.output := by lin_cert using reduction1919.terms
def map_33_123 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2040 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2040 : InImage map_33_123 image2040 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2040 : Bundle := named_bundle% "RealMapCertificates/relations/basis2040.json"
theorem reductionProof2040 : EqualModuloRelations reduction2040.relations reduction2040.input reduction2040.output := by lin_cert using reduction2040.terms
theorem substitutionProof2040 : IsMapEvaluation generatorImages reduction2040.relations [283] reduction2040.output := by lin_cert using reduction2040.terms
def map_33_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2167 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2167 : InImage map_33_126 image2167 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2167 : Bundle := named_bundle% "RealMapCertificates/relations/basis2167.json"
theorem reductionProof2167 : EqualModuloRelations reduction2167.relations reduction2167.input reduction2167.output := by lin_cert using reduction2167.terms
theorem substitutionProof2167 : IsMapEvaluation generatorImages reduction2167.relations [8,211] reduction2167.output := by lin_cert using reduction2167.terms
def map_33_127 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2223 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2223 : InImage map_33_127 image2223 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2223 : Bundle := named_bundle% "RealMapCertificates/relations/basis2223.json"
theorem reductionProof2223 : EqualModuloRelations reduction2223.relations reduction2223.input reduction2223.output := by lin_cert using reduction2223.terms
theorem substitutionProof2223 : IsMapEvaluation generatorImages reduction2223.relations [0,0,0,0,0,0,0,0,0,0,0,245] reduction2223.output := by lin_cert using reduction2223.terms
def map_33_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2266 : InImage map_33_128 image2266 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2266 : Bundle := named_bundle% "RealMapCertificates/relations/basis2266.json"
theorem reductionProof2266 : EqualModuloRelations reduction2266.relations reduction2266.input reduction2266.output := by lin_cert using reduction2266.terms
theorem substitutionProof2266 : IsMapEvaluation generatorImages reduction2266.relations [0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2266.output := by lin_cert using reduction2266.terms
def map_33_129 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image2325 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2325 : InImage map_33_129 image2325 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2325 : Bundle := named_bundle% "RealMapCertificates/relations/basis2325.json"
theorem reductionProof2325 : EqualModuloRelations reduction2325.relations reduction2325.input reduction2325.output := by lin_cert using reduction2325.terms
theorem substitutionProof2325 : IsMapEvaluation generatorImages reduction2325.relations [8,223] reduction2325.output := by lin_cert using reduction2325.terms
def image2326 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation2326 : InImage map_33_129 image2326 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2326 : Bundle := named_bundle% "RealMapCertificates/relations/basis2326.json"
theorem reductionProof2326 : EqualModuloRelations reduction2326.relations reduction2326.input reduction2326.output := by lin_cert using reduction2326.terms
theorem substitutionProof2326 : IsMapEvaluation generatorImages reduction2326.relations [0,0,0,297] reduction2326.output := by lin_cert using reduction2326.terms
def map_33_132 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2506 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2506 : InImage map_33_132 image2506 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2506 : Bundle := named_bundle% "RealMapCertificates/relations/basis2506.json"
theorem reductionProof2506 : EqualModuloRelations reduction2506.relations reduction2506.input reduction2506.output := by lin_cert using reduction2506.terms
theorem substitutionProof2506 : IsMapEvaluation generatorImages reduction2506.relations [8,8,161] reduction2506.output := by lin_cert using reduction2506.terms
def map_33_135 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image2730 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2730 : InImage map_33_135 image2730 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2730 : Bundle := named_bundle% "RealMapCertificates/relations/basis2730.json"
theorem reductionProof2730 : EqualModuloRelations reduction2730.relations reduction2730.input reduction2730.output := by lin_cert using reduction2730.terms
theorem substitutionProof2730 : IsMapEvaluation generatorImages reduction2730.relations [403] reduction2730.output := by lin_cert using reduction2730.terms
def image2731 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2731 : InImage map_33_135 image2731 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2731 : Bundle := named_bundle% "RealMapCertificates/relations/basis2731.json"
theorem reductionProof2731 : EqualModuloRelations reduction2731.relations reduction2731.input reduction2731.output := by lin_cert using reduction2731.terms
theorem substitutionProof2731 : IsMapEvaluation generatorImages reduction2731.relations [8,8,171] reduction2731.output := by lin_cert using reduction2731.terms
def map_33_138 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image2957 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation2957 : InImage map_33_138 image2957 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2957 : Bundle := named_bundle% "RealMapCertificates/relations/basis2957.json"
theorem reductionProof2957 : EqualModuloRelations reduction2957.relations reduction2957.input reduction2957.output := by lin_cert using reduction2957.terms
theorem substitutionProof2957 : IsMapEvaluation generatorImages reduction2957.relations [433] reduction2957.output := by lin_cert using reduction2957.terms
def image2958 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2958 : InImage map_33_138 image2958 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2958 : Bundle := named_bundle% "RealMapCertificates/relations/basis2958.json"
theorem reductionProof2958 : EqualModuloRelations reduction2958.relations reduction2958.input reduction2958.output := by lin_cert using reduction2958.terms
theorem substitutionProof2958 : IsMapEvaluation generatorImages reduction2958.relations [8,8,8,125] reduction2958.output := by lin_cert using reduction2958.terms
def map_33_141 : Matrix 4 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image3211 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation3211 : InImage map_33_141 image3211 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3211 : Bundle := named_bundle% "RealMapCertificates/relations/basis3211.json"
theorem reductionProof3211 : EqualModuloRelations reduction3211.relations reduction3211.input reduction3211.output := by lin_cert using reduction3211.terms
theorem substitutionProof3211 : IsMapEvaluation generatorImages reduction3211.relations [16,225] reduction3211.output := by lin_cert using reduction3211.terms
def image3212 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3212 : InImage map_33_141 image3212 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3212 : Bundle := named_bundle% "RealMapCertificates/relations/basis3212.json"
theorem reductionProof3212 : EqualModuloRelations reduction3212.relations reduction3212.input reduction3212.output := by lin_cert using reduction3212.terms
theorem substitutionProof3212 : IsMapEvaluation generatorImages reduction3212.relations [8,8,8,136] reduction3212.output := by lin_cert using reduction3212.terms
def image3213 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation3213 : InImage map_33_141 image3213 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3213 : Bundle := named_bundle% "RealMapCertificates/relations/basis3213.json"
theorem reductionProof3213 : EqualModuloRelations reduction3213.relations reduction3213.input reduction3213.output := by lin_cert using reduction3213.terms
theorem substitutionProof3213 : IsMapEvaluation generatorImages reduction3213.relations [0,452] reduction3213.output := by lin_cert using reduction3213.terms
def map_33_142 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image3296 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3296 : InImage map_33_142 image3296 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3296 : Bundle := named_bundle% "RealMapCertificates/relations/basis3296.json"
theorem reductionProof3296 : EqualModuloRelations reduction3296.relations reduction3296.input reduction3296.output := by lin_cert using reduction3296.terms
theorem substitutionProof3296 : IsMapEvaluation generatorImages reduction3296.relations [1,452] reduction3296.output := by lin_cert using reduction3296.terms
def image3297 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3297 : InImage map_33_142 image3297 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3297 : Bundle := named_bundle% "RealMapCertificates/relations/basis3297.json"
theorem reductionProof3297 : EqualModuloRelations reduction3297.relations reduction3297.input reduction3297.output := by lin_cert using reduction3297.terms
theorem substitutionProof3297 : IsMapEvaluation generatorImages reduction3297.relations [0,17,225] reduction3297.output := by lin_cert using reduction3297.terms
def map_33_144 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3454 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3454 : InImage map_33_144 image3454 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3454 : Bundle := named_bundle% "RealMapCertificates/relations/basis3454.json"
theorem reductionProof3454 : EqualModuloRelations reduction3454.relations reduction3454.input reduction3454.output := by lin_cert using reduction3454.terms
theorem substitutionProof3454 : IsMapEvaluation generatorImages reduction3454.relations [8,298] reduction3454.output := by lin_cert using reduction3454.terms
def image3455 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3455 : InImage map_33_144 image3455 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3455 : Bundle := named_bundle% "RealMapCertificates/relations/basis3455.json"
theorem reductionProof3455 : EqualModuloRelations reduction3455.relations reduction3455.input reduction3455.output := by lin_cert using reduction3455.terms
theorem substitutionProof3455 : IsMapEvaluation generatorImages reduction3455.relations [8,8,8,8,88] reduction3455.output := by lin_cert using reduction3455.terms
def image3456 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3456 : InImage map_33_144 image3456 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3456 : Bundle := named_bundle% "RealMapCertificates/relations/basis3456.json"
theorem reductionProof3456 : EqualModuloRelations reduction3456.relations reduction3456.input reduction3456.output := by lin_cert using reduction3456.terms
theorem substitutionProof3456 : IsMapEvaluation generatorImages reduction3456.relations [0,488] reduction3456.output := by lin_cert using reduction3456.terms
def map_33_145 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3545 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3545 : InImage map_33_145 image3545 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3545 : Bundle := named_bundle% "RealMapCertificates/relations/basis3545.json"
theorem reductionProof3545 : EqualModuloRelations reduction3545.relations reduction3545.input reduction3545.output := by lin_cert using reduction3545.terms
theorem substitutionProof3545 : IsMapEvaluation generatorImages reduction3545.relations [0,17,238] reduction3545.output := by lin_cert using reduction3545.terms
def map_33_147 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image3711 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3711 : InImage map_33_147 image3711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3711 : Bundle := named_bundle% "RealMapCertificates/relations/basis3711.json"
theorem reductionProof3711 : EqualModuloRelations reduction3711.relations reduction3711.input reduction3711.output := by lin_cert using reduction3711.terms
theorem substitutionProof3711 : IsMapEvaluation generatorImages reduction3711.relations [8,8,225] reduction3711.output := by lin_cert using reduction3711.terms
def image3712 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3712 : InImage map_33_147 image3712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3712 : Bundle := named_bundle% "RealMapCertificates/relations/basis3712.json"
theorem reductionProof3712 : EqualModuloRelations reduction3712.relations reduction3712.input reduction3712.output := by lin_cert using reduction3712.terms
theorem substitutionProof3712 : IsMapEvaluation generatorImages reduction3712.relations [8,8,8,8,100] reduction3712.output := by lin_cert using reduction3712.terms
def image3713 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3713 : InImage map_33_147 image3713 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3713 : Bundle := named_bundle% "RealMapCertificates/relations/basis3713.json"
theorem reductionProof3713 : EqualModuloRelations reduction3713.relations reduction3713.input reduction3713.output := by lin_cert using reduction3713.terms
theorem substitutionProof3713 : IsMapEvaluation generatorImages reduction3713.relations [0,16,244] reduction3713.output := by lin_cert using reduction3713.terms
def map_33_148 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3803 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3803 : InImage map_33_148 image3803 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3803 : Bundle := named_bundle% "RealMapCertificates/relations/basis3803.json"
theorem reductionProof3803 : EqualModuloRelations reduction3803.relations reduction3803.input reduction3803.output := by lin_cert using reduction3803.terms
theorem substitutionProof3803 : IsMapEvaluation generatorImages reduction3803.relations [0,16,17,138] reduction3803.output := by lin_cert using reduction3803.terms
def image3804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3804 : InImage map_33_148 image3804 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3804 : Bundle := named_bundle% "RealMapCertificates/relations/basis3804.json"
theorem reductionProof3804 : EqualModuloRelations reduction3804.relations reduction3804.input reduction3804.output := by lin_cert using reduction3804.terms
theorem substitutionProof3804 : IsMapEvaluation generatorImages reduction3804.relations [0,0,17,244] reduction3804.output := by lin_cert using reduction3804.terms
def map_33_149 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image3880 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3880 : InImage map_33_149 image3880 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3880 : Bundle := named_bundle% "RealMapCertificates/relations/basis3880.json"
theorem reductionProof3880 : EqualModuloRelations reduction3880.relations reduction3880.input reduction3880.output := by lin_cert using reduction3880.terms
theorem substitutionProof3880 : IsMapEvaluation generatorImages reduction3880.relations [0,0,17,17,138] reduction3880.output := by lin_cert using reduction3880.terms
def map_33_150 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3969 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3969 : InImage map_33_150 image3969 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3969 : Bundle := named_bundle% "RealMapCertificates/relations/basis3969.json"
theorem reductionProof3969 : EqualModuloRelations reduction3969.relations reduction3969.input reduction3969.output := by lin_cert using reduction3969.terms
theorem substitutionProof3969 : IsMapEvaluation generatorImages reduction3969.relations [8,8,238] reduction3969.output := by lin_cert using reduction3969.terms
def image3970 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3970 : InImage map_33_150 image3970 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3970 : Bundle := named_bundle% "RealMapCertificates/relations/basis3970.json"
theorem reductionProof3970 : EqualModuloRelations reduction3970.relations reduction3970.input reduction3970.output := by lin_cert using reduction3970.terms
theorem substitutionProof3970 : IsMapEvaluation generatorImages reduction3970.relations [8,8,8,8,8,60] reduction3970.output := by lin_cert using reduction3970.terms
def image3971 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3971 : InImage map_33_150 image3971 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3971 : Bundle := named_bundle% "RealMapCertificates/relations/basis3971.json"
theorem reductionProof3971 : EqualModuloRelations reduction3971.relations reduction3971.input reduction3971.output := by lin_cert using reduction3971.terms
theorem substitutionProof3971 : IsMapEvaluation generatorImages reduction3971.relations [0,0,0,0,0,0,0,491] reduction3971.output := by lin_cert using reduction3971.terms
def map_33_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4085 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4085 : InImage map_33_151 image4085 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4085 : Bundle := named_bundle% "RealMapCertificates/relations/basis4085.json"
theorem reductionProof4085 : EqualModuloRelations reduction4085.relations reduction4085.input reduction4085.output := by lin_cert using reduction4085.terms
theorem substitutionProof4085 : IsMapEvaluation generatorImages reduction4085.relations [0,8,17,185] reduction4085.output := by lin_cert using reduction4085.terms
def image4086 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4086 : InImage map_33_151 image4086 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4086 : Bundle := named_bundle% "RealMapCertificates/relations/basis4086.json"
theorem reductionProof4086 : EqualModuloRelations reduction4086.relations reduction4086.input reduction4086.output := by lin_cert using reduction4086.terms
theorem substitutionProof4086 : IsMapEvaluation generatorImages reduction4086.relations [0,0,0,0,0,0,509] reduction4086.output := by lin_cert using reduction4086.terms
def map_33_152 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4152 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4152 : InImage map_33_152 image4152 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4152 : Bundle := named_bundle% "RealMapCertificates/relations/basis4152.json"
theorem reductionProof4152 : EqualModuloRelations reduction4152.relations reduction4152.input reduction4152.output := by lin_cert using reduction4152.terms
theorem substitutionProof4152 : IsMapEvaluation generatorImages reduction4152.relations [572] reduction4152.output := by lin_cert using reduction4152.terms
def map_33_153 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4250 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4250 : InImage map_33_153 image4250 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4250 : Bundle := named_bundle% "RealMapCertificates/relations/basis4250.json"
theorem reductionProof4250 : EqualModuloRelations reduction4250.relations reduction4250.input reduction4250.output := by lin_cert using reduction4250.terms
theorem substitutionProof4250 : IsMapEvaluation generatorImages reduction4250.relations [8,8,16,138] reduction4250.output := by lin_cert using reduction4250.terms
def image4251 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4251 : InImage map_33_153 image4251 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4251 : Bundle := named_bundle% "RealMapCertificates/relations/basis4251.json"
theorem reductionProof4251 : EqualModuloRelations reduction4251.relations reduction4251.input reduction4251.output := by lin_cert using reduction4251.terms
theorem substitutionProof4251 : IsMapEvaluation generatorImages reduction4251.relations [8,8,8,8,8,63] reduction4251.output := by lin_cert using reduction4251.terms
def map_33_155 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4406 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4406 : InImage map_33_155 image4406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4406 : Bundle := named_bundle% "RealMapCertificates/relations/basis4406.json"
theorem reductionProof4406 : EqualModuloRelations reduction4406.relations reduction4406.input reduction4406.output := by lin_cert using reduction4406.terms
theorem substitutionProof4406 : IsMapEvaluation generatorImages reduction4406.relations [597] reduction4406.output := by lin_cert using reduction4406.terms
def image4407 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4407 : InImage map_33_155 image4407 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4407 : Bundle := named_bundle% "RealMapCertificates/relations/basis4407.json"
theorem reductionProof4407 : EqualModuloRelations reduction4407.relations reduction4407.input reduction4407.output := by lin_cert using reduction4407.terms
theorem substitutionProof4407 : IsMapEvaluation generatorImages reduction4407.relations [0,0,0,0,0,64,137] reduction4407.output := by lin_cert using reduction4407.terms
def map_33_156 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4496 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4496 : InImage map_33_156 image4496 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4496 : Bundle := named_bundle% "RealMapCertificates/relations/basis4496.json"
theorem reductionProof4496 : EqualModuloRelations reduction4496.relations reduction4496.input reduction4496.output := by lin_cert using reduction4496.terms
theorem substitutionProof4496 : IsMapEvaluation generatorImages reduction4496.relations [8,8,8,185] reduction4496.output := by lin_cert using reduction4496.terms
def image4497 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4497 : InImage map_33_156 image4497 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4497 : Bundle := named_bundle% "RealMapCertificates/relations/basis4497.json"
theorem reductionProof4497 : EqualModuloRelations reduction4497.relations reduction4497.input reduction4497.output := by lin_cert using reduction4497.terms
theorem substitutionProof4497 : IsMapEvaluation generatorImages reduction4497.relations [8,8,8,8,8,8,42] reduction4497.output := by lin_cert using reduction4497.terms
def image4498 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4498 : InImage map_33_156 image4498 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4498 : Bundle := named_bundle% "RealMapCertificates/relations/basis4498.json"
theorem reductionProof4498 : EqualModuloRelations reduction4498.relations reduction4498.input reduction4498.output := by lin_cert using reduction4498.terms
theorem substitutionProof4498 : IsMapEvaluation generatorImages reduction4498.relations [0,0,0,0,0,0,64,138] reduction4498.output := by lin_cert using reduction4498.terms
def map_33_158 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4671 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4671 : InImage map_33_158 image4671 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4671 : Bundle := named_bundle% "RealMapCertificates/relations/basis4671.json"
theorem reductionProof4671 : EqualModuloRelations reduction4671.relations reduction4671.input reduction4671.output := by lin_cert using reduction4671.terms
theorem substitutionProof4671 : IsMapEvaluation generatorImages reduction4671.relations [8,453] reduction4671.output := by lin_cert using reduction4671.terms
def map_33_159 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4765 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4765 : InImage map_33_159 image4765 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4765 : Bundle := named_bundle% "RealMapCertificates/relations/basis4765.json"
theorem reductionProof4765 : EqualModuloRelations reduction4765.relations reduction4765.input reduction4765.output := by lin_cert using reduction4765.terms
theorem substitutionProof4765 : IsMapEvaluation generatorImages reduction4765.relations [8,8,8,8,138] reduction4765.output := by lin_cert using reduction4765.terms
def image4766 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4766 : InImage map_33_159 image4766 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4766 : Bundle := named_bundle% "RealMapCertificates/relations/basis4766.json"
theorem reductionProof4766 : EqualModuloRelations reduction4766.relations reduction4766.input reduction4766.output := by lin_cert using reduction4766.terms
theorem substitutionProof4766 : IsMapEvaluation generatorImages reduction4766.relations [8,8,8,8,8,8,46] reduction4766.output := by lin_cert using reduction4766.terms
def image4767 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4767 : InImage map_33_159 image4767 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4767 : Bundle := named_bundle% "RealMapCertificates/relations/basis4767.json"
theorem reductionProof4767 : EqualModuloRelations reduction4767.relations reduction4767.input reduction4767.output := by lin_cert using reduction4767.terms
theorem substitutionProof4767 : IsMapEvaluation generatorImages reduction4767.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4767.output := by lin_cert using reduction4767.terms
def map_33_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4853 : InImage map_33_160 image4853 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4853 : Bundle := named_bundle% "RealMapCertificates/relations/basis4853.json"
theorem reductionProof4853 : EqualModuloRelations reduction4853.relations reduction4853.input reduction4853.output := by lin_cert using reduction4853.terms
theorem substitutionProof4853 : IsMapEvaluation generatorImages reduction4853.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4853.output := by lin_cert using reduction4853.terms
def map_33_161 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4935 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4935 : InImage map_33_161 image4935 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4935 : Bundle := named_bundle% "RealMapCertificates/relations/basis4935.json"
theorem reductionProof4935 : EqualModuloRelations reduction4935.relations reduction4935.input reduction4935.output := by lin_cert using reduction4935.terms
theorem substitutionProof4935 : IsMapEvaluation generatorImages reduction4935.relations [8,490] reduction4935.output := by lin_cert using reduction4935.terms
def image4936 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4936 : InImage map_33_161 image4936 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4936 : Bundle := named_bundle% "RealMapCertificates/relations/basis4936.json"
theorem reductionProof4936 : EqualModuloRelations reduction4936.relations reduction4936.input reduction4936.output := by lin_cert using reduction4936.terms
theorem substitutionProof4936 : IsMapEvaluation generatorImages reduction4936.relations [0,0,0,623] reduction4936.output := by lin_cert using reduction4936.terms
def map_33_162 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5037 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5037 : InImage map_33_162 image5037 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5037 : Bundle := named_bundle% "RealMapCertificates/relations/basis5037.json"
theorem reductionProof5037 : EqualModuloRelations reduction5037.relations reduction5037.input reduction5037.output := by lin_cert using reduction5037.terms
theorem substitutionProof5037 : IsMapEvaluation generatorImages reduction5037.relations [8,8,8,8,147] reduction5037.output := by lin_cert using reduction5037.terms
def image5038 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5038 : InImage map_33_162 image5038 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5038 : Bundle := named_bundle% "RealMapCertificates/relations/basis5038.json"
theorem reductionProof5038 : EqualModuloRelations reduction5038.relations reduction5038.input reduction5038.output := by lin_cert using reduction5038.terms
theorem substitutionProof5038 : IsMapEvaluation generatorImages reduction5038.relations [8,8,8,8,8,8,51] reduction5038.output := by lin_cert using reduction5038.terms
def map_33_164 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image5224 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5224 : InImage map_33_164 image5224 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5224 : Bundle := named_bundle% "RealMapCertificates/relations/basis5224.json"
theorem reductionProof5224 : EqualModuloRelations reduction5224.relations reduction5224.input reduction5224.output := by lin_cert using reduction5224.terms
theorem substitutionProof5224 : IsMapEvaluation generatorImages reduction5224.relations [8,8,315] reduction5224.output := by lin_cert using reduction5224.terms
def image5225 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5225 : InImage map_33_164 image5225 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5225 : Bundle := named_bundle% "RealMapCertificates/relations/basis5225.json"
theorem reductionProof5225 : EqualModuloRelations reduction5225.relations reduction5225.input reduction5225.output := by lin_cert using reduction5225.terms
theorem substitutionProof5225 : IsMapEvaluation generatorImages reduction5225.relations [5,64,137] reduction5225.output := by lin_cert using reduction5225.terms
def map_33_165 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5341 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5341 : InImage map_33_165 image5341 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5341 : Bundle := named_bundle% "RealMapCertificates/relations/basis5341.json"
theorem reductionProof5341 : EqualModuloRelations reduction5341.relations reduction5341.input reduction5341.output := by lin_cert using reduction5341.terms
theorem substitutionProof5341 : IsMapEvaluation generatorImages reduction5341.relations [8,8,8,8,17,64] reduction5341.output := by lin_cert using reduction5341.terms
def image5342 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5342 : InImage map_33_165 image5342 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5342 : Bundle := named_bundle% "RealMapCertificates/relations/basis5342.json"
theorem reductionProof5342 : EqualModuloRelations reduction5342.relations reduction5342.input reduction5342.output := by lin_cert using reduction5342.terms
theorem substitutionProof5342 : IsMapEvaluation generatorImages reduction5342.relations [8,8,8,8,8,9,51] reduction5342.output := by lin_cert using reduction5342.terms
def map_33_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5449 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5449 : InImage map_33_166 image5449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5449 : Bundle := named_bundle% "RealMapCertificates/relations/basis5449.json"
theorem reductionProof5449 : EqualModuloRelations reduction5449.relations reduction5449.input reduction5449.output := by lin_cert using reduction5449.terms
theorem substitutionProof5449 : IsMapEvaluation generatorImages reduction5449.relations [0,64,184] reduction5449.output := by lin_cert using reduction5449.terms
def map_33_167 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image5551 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5551 : InImage map_33_167 image5551 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5551 : Bundle := named_bundle% "RealMapCertificates/relations/basis5551.json"
theorem reductionProof5551 : EqualModuloRelations reduction5551.relations reduction5551.input reduction5551.output := by lin_cert using reduction5551.terms
theorem substitutionProof5551 : IsMapEvaluation generatorImages reduction5551.relations [8,8,345] reduction5551.output := by lin_cert using reduction5551.terms
def image5552 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5552 : InImage map_33_167 image5552 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5552 : Bundle := named_bundle% "RealMapCertificates/relations/basis5552.json"
theorem reductionProof5552 : EqualModuloRelations reduction5552.relations reduction5552.input reduction5552.output := by lin_cert using reduction5552.terms
theorem substitutionProof5552 : IsMapEvaluation generatorImages reduction5552.relations [0,0,64,185] reduction5552.output := by lin_cert using reduction5552.terms
def map_33_168 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5660 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5660 : InImage map_33_168 image5660 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5660 : Bundle := named_bundle% "RealMapCertificates/relations/basis5660.json"
theorem reductionProof5660 : EqualModuloRelations reduction5660.relations reduction5660.input reduction5660.output := by lin_cert using reduction5660.terms
theorem substitutionProof5660 : IsMapEvaluation generatorImages reduction5660.relations [8,8,8,8,8,113] reduction5660.output := by lin_cert using reduction5660.terms
def image5661 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5661 : InImage map_33_168 image5661 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5661 : Bundle := named_bundle% "RealMapCertificates/relations/basis5661.json"
theorem reductionProof5661 : EqualModuloRelations reduction5661.relations reduction5661.input reduction5661.output := by lin_cert using reduction5661.terms
theorem substitutionProof5661 : IsMapEvaluation generatorImages reduction5661.relations [8,8,8,8,8,13,51] reduction5661.output := by lin_cert using reduction5661.terms
def map_33_169 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5782 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5782 : InImage map_33_169 image5782 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5782 : Bundle := named_bundle% "RealMapCertificates/relations/basis5782.json"
theorem reductionProof5782 : EqualModuloRelations reduction5782.relations reduction5782.input reduction5782.output := by lin_cert using reduction5782.terms
theorem substitutionProof5782 : IsMapEvaluation generatorImages reduction5782.relations [0,8,64,137] reduction5782.output := by lin_cert using reduction5782.terms
def map_33_170 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image5878 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5878 : InImage map_33_170 image5878 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5878 : Bundle := named_bundle% "RealMapCertificates/relations/basis5878.json"
theorem reductionProof5878 : EqualModuloRelations reduction5878.relations reduction5878.input reduction5878.output := by lin_cert using reduction5878.terms
theorem substitutionProof5878 : IsMapEvaluation generatorImages reduction5878.relations [8,8,8,247] reduction5878.output := by lin_cert using reduction5878.terms
def image5879 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5879 : InImage map_33_170 image5879 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5879 : Bundle := named_bundle% "RealMapCertificates/relations/basis5879.json"
theorem reductionProof5879 : EqualModuloRelations reduction5879.relations reduction5879.input reduction5879.output := by lin_cert using reduction5879.terms
theorem substitutionProof5879 : IsMapEvaluation generatorImages reduction5879.relations [0,0,8,64,138] reduction5879.output := by lin_cert using reduction5879.terms
def map_33_171 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image6009 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6009 : InImage map_33_171 image6009 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6009 : Bundle := named_bundle% "RealMapCertificates/relations/basis6009.json"
theorem reductionProof6009 : EqualModuloRelations reduction6009.relations reduction6009.input reduction6009.output := by lin_cert using reduction6009.terms
theorem substitutionProof6009 : IsMapEvaluation generatorImages reduction6009.relations [8,8,8,8,9,13,51] reduction6009.output := by lin_cert using reduction6009.terms
def image6010 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6010 : InImage map_33_171 image6010 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6010 : Bundle := named_bundle% "RealMapCertificates/relations/basis6010.json"
theorem reductionProof6010 : EqualModuloRelations reduction6010.relations reduction6010.input reduction6010.output := by lin_cert using reduction6010.terms
theorem substitutionProof6010 : IsMapEvaluation generatorImages reduction6010.relations [8,8,8,8,8,118] reduction6010.output := by lin_cert using reduction6010.terms
def map_33_173 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6217 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6217 : InImage map_33_173 image6217 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6217 : Bundle := named_bundle% "RealMapCertificates/relations/basis6217.json"
theorem reductionProof6217 : EqualModuloRelations reduction6217.relations reduction6217.input reduction6217.output := by lin_cert using reduction6217.terms
theorem substitutionProof6217 : IsMapEvaluation generatorImages reduction6217.relations [17,491] reduction6217.output := by lin_cert using reduction6217.terms
def image6218 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6218 : InImage map_33_173 image6218 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6218 : Bundle := named_bundle% "RealMapCertificates/relations/basis6218.json"
theorem reductionProof6218 : EqualModuloRelations reduction6218.relations reduction6218.input reduction6218.output := by lin_cert using reduction6218.terms
theorem substitutionProof6218 : IsMapEvaluation generatorImages reduction6218.relations [8,8,8,259] reduction6218.output := by lin_cert using reduction6218.terms
end RealMapCertificates
