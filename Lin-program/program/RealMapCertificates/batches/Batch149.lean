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
  | 24 => []
  | 51 => [[7,7,7]]
  | 59 => []
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 127 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 193 => [[5,5,7,12]]
  | 208 => [[5,7,7,12]]
  | 209 => []
  | 219 => [[7,7,7,12]]
  | 246 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 301 => []
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 435 => [[1,9,12,12]]
  | 454 => []
  | 516 => []
  | 518 => []
  | 529 => [[0,0,4,8,12,12]]
  | 530 => []
  | 550 => []
  | 559 => [[0,0,5,8,12,12]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 624 => []
  | 665 => [[0,0,4,5,8,12,12]]
  | 715 => [[7,7,7,12,12]]
  | 795 => []
  | 807 => []
  | 808 => [[0,0,4,4,5,8,12,12]]
  | 809 => []
  | 830 => []
  | 862 => []
  | 863 => [[4,7,7,7,12,12]]
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 921 => []
  | 927 => [[4,5,5,10,12,12]]
  | 940 => []
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1061 => [[4,5,5,5,9,12,12]]
  | 1084 => []
  | _ => []
def map_33_174 : Matrix 2 5 := fun i j => ([false,false,false,true,false,false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image6334 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6334 : InImage map_33_174 image6334 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6334 : Bundle := named_bundle% "RealMapCertificates/relations/basis6334.json"
theorem reductionProof6334 : EqualModuloRelations reduction6334.relations reduction6334.input reduction6334.output := by lin_cert using reduction6334.terms
theorem substitutionProof6334 : IsMapEvaluation generatorImages reduction6334.relations [809] reduction6334.output := by lin_cert using reduction6334.terms
def image6335 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation6335 : InImage map_33_174 image6335 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6335 : Bundle := named_bundle% "RealMapCertificates/relations/basis6335.json"
theorem reductionProof6335 : EqualModuloRelations reduction6335.relations reduction6335.input reduction6335.output := by lin_cert using reduction6335.terms
theorem substitutionProof6335 : IsMapEvaluation generatorImages reduction6335.relations [808] reduction6335.output := by lin_cert using reduction6335.terms
def image6336 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6336 : InImage map_33_174 image6336 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6336 : Bundle := named_bundle% "RealMapCertificates/relations/basis6336.json"
theorem reductionProof6336 : EqualModuloRelations reduction6336.relations reduction6336.input reduction6336.output := by lin_cert using reduction6336.terms
theorem substitutionProof6336 : IsMapEvaluation generatorImages reduction6336.relations [807] reduction6336.output := by lin_cert using reduction6336.terms
def image6337 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6337 : InImage map_33_174 image6337 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6337 : Bundle := named_bundle% "RealMapCertificates/relations/basis6337.json"
theorem reductionProof6337 : EqualModuloRelations reduction6337.relations reduction6337.input reduction6337.output := by lin_cert using reduction6337.terms
theorem substitutionProof6337 : IsMapEvaluation generatorImages reduction6337.relations [8,8,8,8,13,13,51] reduction6337.output := by lin_cert using reduction6337.terms
def image6338 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6338 : InImage map_33_174 image6338 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6338 : Bundle := named_bundle% "RealMapCertificates/relations/basis6338.json"
theorem reductionProof6338 : EqualModuloRelations reduction6338.relations reduction6338.input reduction6338.output := by lin_cert using reduction6338.terms
theorem substitutionProof6338 : IsMapEvaluation generatorImages reduction6338.relations [8,8,8,8,8,127] reduction6338.output := by lin_cert using reduction6338.terms
def map_33_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6464 : InImage map_33_175 image6464 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6464 : Bundle := named_bundle% "RealMapCertificates/relations/basis6464.json"
theorem reductionProof6464 : EqualModuloRelations reduction6464.relations reduction6464.input reduction6464.output := by lin_cert using reduction6464.terms
theorem substitutionProof6464 : IsMapEvaluation generatorImages reduction6464.relations [0,0,795] reduction6464.output := by lin_cert using reduction6464.terms
def map_33_176 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6557 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6557 : InImage map_33_176 image6557 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6557 : Bundle := named_bundle% "RealMapCertificates/relations/basis6557.json"
theorem reductionProof6557 : EqualModuloRelations reduction6557.relations reduction6557.input reduction6557.output := by lin_cert using reduction6557.terms
theorem substitutionProof6557 : IsMapEvaluation generatorImages reduction6557.relations [17,516] reduction6557.output := by lin_cert using reduction6557.terms
def image6558 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6558 : InImage map_33_176 image6558 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6558 : Bundle := named_bundle% "RealMapCertificates/relations/basis6558.json"
theorem reductionProof6558 : EqualModuloRelations reduction6558.relations reduction6558.input reduction6558.output := by lin_cert using reduction6558.terms
theorem substitutionProof6558 : IsMapEvaluation generatorImages reduction6558.relations [8,8,8,8,193] reduction6558.output := by lin_cert using reduction6558.terms
def map_33_177 : Matrix 3 4 := fun i j => ([false,true,false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6695 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation6695 : InImage map_33_177 image6695 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6695 : Bundle := named_bundle% "RealMapCertificates/relations/basis6695.json"
theorem reductionProof6695 : EqualModuloRelations reduction6695.relations reduction6695.input reduction6695.output := by lin_cert using reduction6695.terms
theorem substitutionProof6695 : IsMapEvaluation generatorImages reduction6695.relations [17,529] reduction6695.output := by lin_cert using reduction6695.terms
def image6696 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6696 : InImage map_33_177 image6696 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6696 : Bundle := named_bundle% "RealMapCertificates/relations/basis6696.json"
theorem reductionProof6696 : EqualModuloRelations reduction6696.relations reduction6696.input reduction6696.output := by lin_cert using reduction6696.terms
theorem substitutionProof6696 : IsMapEvaluation generatorImages reduction6696.relations [8,8,8,9,13,13,51] reduction6696.output := by lin_cert using reduction6696.terms
def image6697 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6697 : InImage map_33_177 image6697 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6697 : Bundle := named_bundle% "RealMapCertificates/relations/basis6697.json"
theorem reductionProof6697 : EqualModuloRelations reduction6697.relations reduction6697.input reduction6697.output := by lin_cert using reduction6697.terms
theorem substitutionProof6697 : IsMapEvaluation generatorImages reduction6697.relations [8,8,8,8,8,8,80] reduction6697.output := by lin_cert using reduction6697.terms
def image6698 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6698 : InImage map_33_177 image6698 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6698 : Bundle := named_bundle% "RealMapCertificates/relations/basis6698.json"
theorem reductionProof6698 : EqualModuloRelations reduction6698.relations reduction6698.input reduction6698.output := by lin_cert using reduction6698.terms
theorem substitutionProof6698 : IsMapEvaluation generatorImages reduction6698.relations [0,830] reduction6698.output := by lin_cert using reduction6698.terms
def map_33_179 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image6916 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation6916 : InImage map_33_179 image6916 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6916 : Bundle := named_bundle% "RealMapCertificates/relations/basis6916.json"
theorem reductionProof6916 : EqualModuloRelations reduction6916.relations reduction6916.input reduction6916.output := by lin_cert using reduction6916.terms
theorem substitutionProof6916 : IsMapEvaluation generatorImages reduction6916.relations [138,149] reduction6916.output := by lin_cert using reduction6916.terms
def image6917 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6917 : InImage map_33_179 image6917 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6917 : Bundle := named_bundle% "RealMapCertificates/relations/basis6917.json"
theorem reductionProof6917 : EqualModuloRelations reduction6917.relations reduction6917.input reduction6917.output := by lin_cert using reduction6917.terms
theorem substitutionProof6917 : IsMapEvaluation generatorImages reduction6917.relations [16,17,260] reduction6917.output := by lin_cert using reduction6917.terms
def image6918 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6918 : InImage map_33_179 image6918 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6918 : Bundle := named_bundle% "RealMapCertificates/relations/basis6918.json"
theorem reductionProof6918 : EqualModuloRelations reduction6918.relations reduction6918.input reduction6918.output := by lin_cert using reduction6918.terms
theorem substitutionProof6918 : IsMapEvaluation generatorImages reduction6918.relations [8,8,8,8,208] reduction6918.output := by lin_cert using reduction6918.terms
def map_33_180 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image7057 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7057 : InImage map_33_180 image7057 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7057 : Bundle := named_bundle% "RealMapCertificates/relations/basis7057.json"
theorem reductionProof7057 : EqualModuloRelations reduction7057.relations reduction7057.input reduction7057.output := by lin_cert using reduction7057.terms
theorem substitutionProof7057 : IsMapEvaluation generatorImages reduction7057.relations [8,665] reduction7057.output := by lin_cert using reduction7057.terms
def image7058 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7058 : InImage map_33_180 image7058 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7058 : Bundle := named_bundle% "RealMapCertificates/relations/basis7058.json"
theorem reductionProof7058 : EqualModuloRelations reduction7058.relations reduction7058.input reduction7058.output := by lin_cert using reduction7058.terms
theorem substitutionProof7058 : IsMapEvaluation generatorImages reduction7058.relations [8,8,8,13,13,13,51] reduction7058.output := by lin_cert using reduction7058.terms
def image7059 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7059 : InImage map_33_180 image7059 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7059 : Bundle := named_bundle% "RealMapCertificates/relations/basis7059.json"
theorem reductionProof7059 : EqualModuloRelations reduction7059.relations reduction7059.input reduction7059.output := by lin_cert using reduction7059.terms
theorem substitutionProof7059 : IsMapEvaluation generatorImages reduction7059.relations [8,8,8,8,8,9,80] reduction7059.output := by lin_cert using reduction7059.terms
def image7060 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7060 : InImage map_33_180 image7060 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7060 : Bundle := named_bundle% "RealMapCertificates/relations/basis7060.json"
theorem reductionProof7060 : EqualModuloRelations reduction7060.relations reduction7060.input reduction7060.output := by lin_cert using reduction7060.terms
theorem substitutionProof7060 : IsMapEvaluation generatorImages reduction7060.relations [0,17,17,260] reduction7060.output := by lin_cert using reduction7060.terms
def map_33_181 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7182 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7182 : InImage map_33_181 image7182 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7182 : Bundle := named_bundle% "RealMapCertificates/relations/basis7182.json"
theorem reductionProof7182 : EqualModuloRelations reduction7182.relations reduction7182.input reduction7182.output := by lin_cert using reduction7182.terms
theorem substitutionProof7182 : IsMapEvaluation generatorImages reduction7182.relations [0,0,64,246] reduction7182.output := by lin_cert using reduction7182.terms
def image7183 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7183 : InImage map_33_181 image7183 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7183 : Bundle := named_bundle% "RealMapCertificates/relations/basis7183.json"
theorem reductionProof7183 : EqualModuloRelations reduction7183.relations reduction7183.input reduction7183.output := by lin_cert using reduction7183.terms
theorem substitutionProof7183 : IsMapEvaluation generatorImages reduction7183.relations [0,0,59,260] reduction7183.output := by lin_cert using reduction7183.terms
def map_33_182 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image7276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7276 : InImage map_33_182 image7276 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7276 : Bundle := named_bundle% "RealMapCertificates/relations/basis7276.json"
theorem reductionProof7276 : EqualModuloRelations reduction7276.relations reduction7276.input reduction7276.output := by lin_cert using reduction7276.terms
theorem substitutionProof7276 : IsMapEvaluation generatorImages reduction7276.relations [138,160] reduction7276.output := by lin_cert using reduction7276.terms
def image7277 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7277 : InImage map_33_182 image7277 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7277 : Bundle := named_bundle% "RealMapCertificates/relations/basis7277.json"
theorem reductionProof7277 : EqualModuloRelations reduction7277.relations reduction7277.input reduction7277.output := by lin_cert using reduction7277.terms
theorem substitutionProof7277 : IsMapEvaluation generatorImages reduction7277.relations [8,17,380] reduction7277.output := by lin_cert using reduction7277.terms
def image7278 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7278 : InImage map_33_182 image7278 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7278 : Bundle := named_bundle% "RealMapCertificates/relations/basis7278.json"
theorem reductionProof7278 : EqualModuloRelations reduction7278.relations reduction7278.input reduction7278.output := by lin_cert using reduction7278.terms
theorem substitutionProof7278 : IsMapEvaluation generatorImages reduction7278.relations [8,8,8,8,219] reduction7278.output := by lin_cert using reduction7278.terms
def image7279 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7279 : InImage map_33_182 image7279 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7279 : Bundle := named_bundle% "RealMapCertificates/relations/basis7279.json"
theorem reductionProof7279 : EqualModuloRelations reduction7279.relations reduction7279.input reduction7279.output := by lin_cert using reduction7279.terms
theorem substitutionProof7279 : IsMapEvaluation generatorImages reduction7279.relations [0,0,0,0,862] reduction7279.output := by lin_cert using reduction7279.terms
def map_33_183 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image7427 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7427 : InImage map_33_183 image7427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7427 : Bundle := named_bundle% "RealMapCertificates/relations/basis7427.json"
theorem reductionProof7427 : EqualModuloRelations reduction7427.relations reduction7427.input reduction7427.output := by lin_cert using reduction7427.terms
theorem substitutionProof7427 : IsMapEvaluation generatorImages reduction7427.relations [8,17,404] reduction7427.output := by lin_cert using reduction7427.terms
def image7428 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7428 : InImage map_33_183 image7428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7428 : Bundle := named_bundle% "RealMapCertificates/relations/basis7428.json"
theorem reductionProof7428 : EqualModuloRelations reduction7428.relations reduction7428.input reduction7428.output := by lin_cert using reduction7428.terms
theorem substitutionProof7428 : IsMapEvaluation generatorImages reduction7428.relations [8,8,9,13,13,13,51] reduction7428.output := by lin_cert using reduction7428.terms
def image7429 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7429 : InImage map_33_183 image7429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7429 : Bundle := named_bundle% "RealMapCertificates/relations/basis7429.json"
theorem reductionProof7429 : EqualModuloRelations reduction7429.relations reduction7429.input reduction7429.output := by lin_cert using reduction7429.terms
theorem substitutionProof7429 : IsMapEvaluation generatorImages reduction7429.relations [8,8,8,8,8,13,80] reduction7429.output := by lin_cert using reduction7429.terms
def image7430 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7430 : InImage map_33_183 image7430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7430 : Bundle := named_bundle% "RealMapCertificates/relations/basis7430.json"
theorem reductionProof7430 : EqualModuloRelations reduction7430.relations reduction7430.input reduction7430.output := by lin_cert using reduction7430.terms
theorem substitutionProof7430 : IsMapEvaluation generatorImages reduction7430.relations [0,17,17,278] reduction7430.output := by lin_cert using reduction7430.terms
def map_33_185 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image7640 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7640 : InImage map_33_185 image7640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7640 : Bundle := named_bundle% "RealMapCertificates/relations/basis7640.json"
theorem reductionProof7640 : EqualModuloRelations reduction7640.relations reduction7640.input reduction7640.output := by lin_cert using reduction7640.terms
theorem substitutionProof7640 : IsMapEvaluation generatorImages reduction7640.relations [16,598] reduction7640.output := by lin_cert using reduction7640.terms
def image7641 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7641 : InImage map_33_185 image7641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7641 : Bundle := named_bundle% "RealMapCertificates/relations/basis7641.json"
theorem reductionProof7641 : EqualModuloRelations reduction7641.relations reduction7641.input reduction7641.output := by lin_cert using reduction7641.terms
theorem substitutionProof7641 : IsMapEvaluation generatorImages reduction7641.relations [8,8,17,260] reduction7641.output := by lin_cert using reduction7641.terms
def image7642 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7642 : InImage map_33_185 image7642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7642 : Bundle := named_bundle% "RealMapCertificates/relations/basis7642.json"
theorem reductionProof7642 : EqualModuloRelations reduction7642.relations reduction7642.input reduction7642.output := by lin_cert using reduction7642.terms
theorem substitutionProof7642 : IsMapEvaluation generatorImages reduction7642.relations [8,8,8,9,219] reduction7642.output := by lin_cert using reduction7642.terms
def image7643 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7643 : InImage map_33_185 image7643 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7643 : Bundle := named_bundle% "RealMapCertificates/relations/basis7643.json"
theorem reductionProof7643 : EqualModuloRelations reduction7643.relations reduction7643.input reduction7643.output := by lin_cert using reduction7643.terms
theorem substitutionProof7643 : IsMapEvaluation generatorImages reduction7643.relations [0,149,149] reduction7643.output := by lin_cert using reduction7643.terms
def map_33_186 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image7781 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7781 : InImage map_33_186 image7781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7781 : Bundle := named_bundle% "RealMapCertificates/relations/basis7781.json"
theorem reductionProof7781 : EqualModuloRelations reduction7781.relations reduction7781.input reduction7781.output := by lin_cert using reduction7781.terms
theorem substitutionProof7781 : IsMapEvaluation generatorImages reduction7781.relations [8,8,559] reduction7781.output := by lin_cert using reduction7781.terms
def image7782 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7782 : InImage map_33_186 image7782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7782 : Bundle := named_bundle% "RealMapCertificates/relations/basis7782.json"
theorem reductionProof7782 : EqualModuloRelations reduction7782.relations reduction7782.input reduction7782.output := by lin_cert using reduction7782.terms
theorem substitutionProof7782 : IsMapEvaluation generatorImages reduction7782.relations [8,8,13,13,13,13,51] reduction7782.output := by lin_cert using reduction7782.terms
def image7783 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7783 : InImage map_33_186 image7783 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7783 : Bundle := named_bundle% "RealMapCertificates/relations/basis7783.json"
theorem reductionProof7783 : EqualModuloRelations reduction7783.relations reduction7783.input reduction7783.output := by lin_cert using reduction7783.terms
theorem substitutionProof7783 : IsMapEvaluation generatorImages reduction7783.relations [8,8,8,8,9,13,80] reduction7783.output := by lin_cert using reduction7783.terms
def image7784 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7784 : InImage map_33_186 image7784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7784 : Bundle := named_bundle% "RealMapCertificates/relations/basis7784.json"
theorem reductionProof7784 : EqualModuloRelations reduction7784.relations reduction7784.input reduction7784.output := by lin_cert using reduction7784.terms
theorem substitutionProof7784 : IsMapEvaluation generatorImages reduction7784.relations [1,149,149] reduction7784.output := by lin_cert using reduction7784.terms
def image7785 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7785 : InImage map_33_186 image7785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7785 : Bundle := named_bundle% "RealMapCertificates/relations/basis7785.json"
theorem reductionProof7785 : EqualModuloRelations reduction7785.relations reduction7785.input reduction7785.output := by lin_cert using reduction7785.terms
theorem substitutionProof7785 : IsMapEvaluation generatorImages reduction7785.relations [0,0,927] reduction7785.output := by lin_cert using reduction7785.terms
def map_33_187 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7892 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7892 : InImage map_33_187 image7892 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7892 : Bundle := named_bundle% "RealMapCertificates/relations/basis7892.json"
theorem reductionProof7892 : EqualModuloRelations reduction7892.relations reduction7892.input reduction7892.output := by lin_cert using reduction7892.terms
theorem substitutionProof7892 : IsMapEvaluation generatorImages reduction7892.relations [0,0,0,0,0,64,260] reduction7892.output := by lin_cert using reduction7892.terms
def map_33_188 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image7982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7982 : InImage map_33_188 image7982 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7982 : Bundle := named_bundle% "RealMapCertificates/relations/basis7982.json"
theorem reductionProof7982 : EqualModuloRelations reduction7982.relations reduction7982.input reduction7982.output := by lin_cert using reduction7982.terms
theorem substitutionProof7982 : IsMapEvaluation generatorImages reduction7982.relations [8,113,149] reduction7982.output := by lin_cert using reduction7982.terms
def image7983 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7983 : InImage map_33_188 image7983 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7983 : Bundle := named_bundle% "RealMapCertificates/relations/basis7983.json"
theorem reductionProof7983 : EqualModuloRelations reduction7983.relations reduction7983.input reduction7983.output := by lin_cert using reduction7983.terms
theorem substitutionProof7983 : IsMapEvaluation generatorImages reduction7983.relations [8,8,17,278] reduction7983.output := by lin_cert using reduction7983.terms
def image7984 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7984 : InImage map_33_188 image7984 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7984 : Bundle := named_bundle% "RealMapCertificates/relations/basis7984.json"
theorem reductionProof7984 : EqualModuloRelations reduction7984.relations reduction7984.input reduction7984.output := by lin_cert using reduction7984.terms
theorem substitutionProof7984 : IsMapEvaluation generatorImages reduction7984.relations [8,8,8,13,219] reduction7984.output := by lin_cert using reduction7984.terms
def image7985 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7985 : InImage map_33_188 image7985 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7985 : Bundle := named_bundle% "RealMapCertificates/relations/basis7985.json"
theorem reductionProof7985 : EqualModuloRelations reduction7985.relations reduction7985.input reduction7985.output := by lin_cert using reduction7985.terms
theorem substitutionProof7985 : IsMapEvaluation generatorImages reduction7985.relations [0,0,0,0,64,274] reduction7985.output := by lin_cert using reduction7985.terms
def image7986 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7986 : InImage map_33_188 image7986 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7986 : Bundle := named_bundle% "RealMapCertificates/relations/basis7986.json"
theorem reductionProof7986 : EqualModuloRelations reduction7986.relations reduction7986.input reduction7986.output := by lin_cert using reduction7986.terms
theorem substitutionProof7986 : IsMapEvaluation generatorImages reduction7986.relations [0,0,0,0,0,0,897] reduction7986.output := by lin_cert using reduction7986.terms
def map_33_189 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8138 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8138 : InImage map_33_189 image8138 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8138 : Bundle := named_bundle% "RealMapCertificates/relations/basis8138.json"
theorem reductionProof8138 : EqualModuloRelations reduction8138.relations reduction8138.input reduction8138.output := by lin_cert using reduction8138.terms
theorem substitutionProof8138 : IsMapEvaluation generatorImages reduction8138.relations [8,9,13,13,13,13,51] reduction8138.output := by lin_cert using reduction8138.terms
def image8139 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8139 : InImage map_33_189 image8139 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8139 : Bundle := named_bundle% "RealMapCertificates/relations/basis8139.json"
theorem reductionProof8139 : EqualModuloRelations reduction8139.relations reduction8139.input reduction8139.output := by lin_cert using reduction8139.terms
theorem substitutionProof8139 : IsMapEvaluation generatorImages reduction8139.relations [8,8,580] reduction8139.output := by lin_cert using reduction8139.terms
def image8140 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8140 : InImage map_33_189 image8140 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8140 : Bundle := named_bundle% "RealMapCertificates/relations/basis8140.json"
theorem reductionProof8140 : EqualModuloRelations reduction8140.relations reduction8140.input reduction8140.output := by lin_cert using reduction8140.terms
theorem substitutionProof8140 : IsMapEvaluation generatorImages reduction8140.relations [8,8,8,8,13,13,80] reduction8140.output := by lin_cert using reduction8140.terms
def image8141 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8141 : InImage map_33_189 image8141 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8141 : Bundle := named_bundle% "RealMapCertificates/relations/basis8141.json"
theorem reductionProof8141 : EqualModuloRelations reduction8141.relations reduction8141.input reduction8141.output := by lin_cert using reduction8141.terms
theorem substitutionProof8141 : IsMapEvaluation generatorImages reduction8141.relations [0,0,0,0,0,0,921] reduction8141.output := by lin_cert using reduction8141.terms
def image8142 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8142 : InImage map_33_189 image8142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8142 : Bundle := named_bundle% "RealMapCertificates/relations/basis8142.json"
theorem reductionProof8142 : EqualModuloRelations reduction8142.relations reduction8142.input reduction8142.output := by lin_cert using reduction8142.terms
theorem substitutionProof8142 : IsMapEvaluation generatorImages reduction8142.relations [0,0,0,0,0,0,919] reduction8142.output := by lin_cert using reduction8142.terms
def map_33_190 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8245 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8245 : InImage map_33_190 image8245 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8245 : Bundle := named_bundle% "RealMapCertificates/relations/basis8245.json"
theorem reductionProof8245 : EqualModuloRelations reduction8245.relations reduction8245.input reduction8245.output := by lin_cert using reduction8245.terms
theorem substitutionProof8245 : IsMapEvaluation generatorImages reduction8245.relations [1009] reduction8245.output := by lin_cert using reduction8245.terms
def image8246 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8246 : InImage map_33_190 image8246 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8246 : Bundle := named_bundle% "RealMapCertificates/relations/basis8246.json"
theorem reductionProof8246 : EqualModuloRelations reduction8246.relations reduction8246.input reduction8246.output := by lin_cert using reduction8246.terms
theorem substitutionProof8246 : IsMapEvaluation generatorImages reduction8246.relations [0,0,0,0,0,0,0,0,898] reduction8246.output := by lin_cert using reduction8246.terms
def map_33_191 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image8364 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8364 : InImage map_33_191 image8364 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8364 : Bundle := named_bundle% "RealMapCertificates/relations/basis8364.json"
theorem reductionProof8364 : EqualModuloRelations reduction8364.relations reduction8364.input reduction8364.output := by lin_cert using reduction8364.terms
theorem substitutionProof8364 : IsMapEvaluation generatorImages reduction8364.relations [8,8,598] reduction8364.output := by lin_cert using reduction8364.terms
def image8365 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8365 : InImage map_33_191 image8365 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8365 : Bundle := named_bundle% "RealMapCertificates/relations/basis8365.json"
theorem reductionProof8365 : EqualModuloRelations reduction8365.relations reduction8365.input reduction8365.output := by lin_cert using reduction8365.terms
theorem substitutionProof8365 : IsMapEvaluation generatorImages reduction8365.relations [8,8,16,292] reduction8365.output := by lin_cert using reduction8365.terms
def image8366 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8366 : InImage map_33_191 image8366 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8366 : Bundle := named_bundle% "RealMapCertificates/relations/basis8366.json"
theorem reductionProof8366 : EqualModuloRelations reduction8366.relations reduction8366.input reduction8366.output := by lin_cert using reduction8366.terms
theorem substitutionProof8366 : IsMapEvaluation generatorImages reduction8366.relations [8,8,9,13,219] reduction8366.output := by lin_cert using reduction8366.terms
def map_33_192 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image8508 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8508 : InImage map_33_192 image8508 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8508 : Bundle := named_bundle% "RealMapCertificates/relations/basis8508.json"
theorem reductionProof8508 : EqualModuloRelations reduction8508.relations reduction8508.input reduction8508.output := by lin_cert using reduction8508.terms
theorem substitutionProof8508 : IsMapEvaluation generatorImages reduction8508.relations [8,13,13,13,13,13,51] reduction8508.output := by lin_cert using reduction8508.terms
def image8509 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8509 : InImage map_33_192 image8509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8509 : Bundle := named_bundle% "RealMapCertificates/relations/basis8509.json"
theorem reductionProof8509 : EqualModuloRelations reduction8509.relations reduction8509.input reduction8509.output := by lin_cert using reduction8509.terms
theorem substitutionProof8509 : IsMapEvaluation generatorImages reduction8509.relations [8,8,8,435] reduction8509.output := by lin_cert using reduction8509.terms
def image8510 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8510 : InImage map_33_192 image8510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8510 : Bundle := named_bundle% "RealMapCertificates/relations/basis8510.json"
theorem reductionProof8510 : EqualModuloRelations reduction8510.relations reduction8510.input reduction8510.output := by lin_cert using reduction8510.terms
theorem substitutionProof8510 : IsMapEvaluation generatorImages reduction8510.relations [8,8,8,9,13,13,80] reduction8510.output := by lin_cert using reduction8510.terms
def image8511 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8511 : InImage map_33_192 image8511 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8511 : Bundle := named_bundle% "RealMapCertificates/relations/basis8511.json"
theorem reductionProof8511 : EqualModuloRelations reduction8511.relations reduction8511.input reduction8511.output := by lin_cert using reduction8511.terms
theorem substitutionProof8511 : IsMapEvaluation generatorImages reduction8511.relations [0,0,0,64,64,64] reduction8511.output := by lin_cert using reduction8511.terms
def map_33_193 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image8625 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8625 : InImage map_33_193 image8625 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8625 : Bundle := named_bundle% "RealMapCertificates/relations/basis8625.json"
theorem reductionProof8625 : EqualModuloRelations reduction8625.relations reduction8625.input reduction8625.output := by lin_cert using reduction8625.terms
theorem substitutionProof8625 : IsMapEvaluation generatorImages reduction8625.relations [1061] reduction8625.output := by lin_cert using reduction8625.terms
def image8626 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8626 : InImage map_33_193 image8626 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8626 : Bundle := named_bundle% "RealMapCertificates/relations/basis8626.json"
theorem reductionProof8626 : EqualModuloRelations reduction8626.relations reduction8626.input reduction8626.output := by lin_cert using reduction8626.terms
theorem substitutionProof8626 : IsMapEvaluation generatorImages reduction8626.relations [0,0,0,0,64,299] reduction8626.output := by lin_cert using reduction8626.terms
def map_33_194 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8745 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8745 : InImage map_33_194 image8745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8745 : Bundle := named_bundle% "RealMapCertificates/relations/basis8745.json"
theorem reductionProof8745 : EqualModuloRelations reduction8745.relations reduction8745.input reduction8745.output := by lin_cert using reduction8745.terms
theorem substitutionProof8745 : IsMapEvaluation generatorImages reduction8745.relations [8,8,624] reduction8745.output := by lin_cert using reduction8745.terms
def image8746 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8746 : InImage map_33_194 image8746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8746 : Bundle := named_bundle% "RealMapCertificates/relations/basis8746.json"
theorem reductionProof8746 : EqualModuloRelations reduction8746.relations reduction8746.input reduction8746.output := by lin_cert using reduction8746.terms
theorem substitutionProof8746 : IsMapEvaluation generatorImages reduction8746.relations [8,8,13,13,219] reduction8746.output := by lin_cert using reduction8746.terms
def image8747 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8747 : InImage map_33_194 image8747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8747 : Bundle := named_bundle% "RealMapCertificates/relations/basis8747.json"
theorem reductionProof8747 : EqualModuloRelations reduction8747.relations reduction8747.input reduction8747.output := by lin_cert using reduction8747.terms
theorem substitutionProof8747 : IsMapEvaluation generatorImages reduction8747.relations [8,8,8,454] reduction8747.output := by lin_cert using reduction8747.terms
def map_33_195 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image8916 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8916 : InImage map_33_195 image8916 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8916 : Bundle := named_bundle% "RealMapCertificates/relations/basis8916.json"
theorem reductionProof8916 : EqualModuloRelations reduction8916.relations reduction8916.input reduction8916.output := by lin_cert using reduction8916.terms
theorem substitutionProof8916 : IsMapEvaluation generatorImages reduction8916.relations [9,13,13,13,13,13,51] reduction8916.output := by lin_cert using reduction8916.terms
def image8917 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8917 : InImage map_33_195 image8917 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8917 : Bundle := named_bundle% "RealMapCertificates/relations/basis8917.json"
theorem reductionProof8917 : EqualModuloRelations reduction8917.relations reduction8917.input reduction8917.output := by lin_cert using reduction8917.terms
theorem substitutionProof8917 : IsMapEvaluation generatorImages reduction8917.relations [8,8,9,435] reduction8917.output := by lin_cert using reduction8917.terms
def image8918 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8918 : InImage map_33_195 image8918 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8918 : Bundle := named_bundle% "RealMapCertificates/relations/basis8918.json"
theorem reductionProof8918 : EqualModuloRelations reduction8918.relations reduction8918.input reduction8918.output := by lin_cert using reduction8918.terms
theorem substitutionProof8918 : IsMapEvaluation generatorImages reduction8918.relations [8,8,8,13,13,13,80] reduction8918.output := by lin_cert using reduction8918.terms
def image8919 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8919 : InImage map_33_195 image8919 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8919 : Bundle := named_bundle% "RealMapCertificates/relations/basis8919.json"
theorem reductionProof8919 : EqualModuloRelations reduction8919.relations reduction8919.input reduction8919.output := by lin_cert using reduction8919.terms
theorem substitutionProof8919 : IsMapEvaluation generatorImages reduction8919.relations [0,0,0,0,0,0,64,301] reduction8919.output := by lin_cert using reduction8919.terms
def map_33_196 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9025 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9025 : InImage map_33_196 image9025 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9025 : Bundle := named_bundle% "RealMapCertificates/relations/basis9025.json"
theorem reductionProof9025 : EqualModuloRelations reduction9025.relations reduction9025.input reduction9025.output := by lin_cert using reduction9025.terms
theorem substitutionProof9025 : IsMapEvaluation generatorImages reduction9025.relations [8,863] reduction9025.output := by lin_cert using reduction9025.terms
def image9026 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9026 : InImage map_33_196 image9026 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9026 : Bundle := named_bundle% "RealMapCertificates/relations/basis9026.json"
theorem reductionProof9026 : EqualModuloRelations reduction9026.relations reduction9026.input reduction9026.output := by lin_cert using reduction9026.terms
theorem substitutionProof9026 : IsMapEvaluation generatorImages reduction9026.relations [5,64,260] reduction9026.output := by lin_cert using reduction9026.terms
def map_33_197 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9170 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9170 : InImage map_33_197 image9170 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9170 : Bundle := named_bundle% "RealMapCertificates/relations/basis9170.json"
theorem reductionProof9170 : EqualModuloRelations reduction9170.relations reduction9170.input reduction9170.output := by lin_cert using reduction9170.terms
theorem substitutionProof9170 : IsMapEvaluation generatorImages reduction9170.relations [8,9,13,13,219] reduction9170.output := by lin_cert using reduction9170.terms
def image9171 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9171 : InImage map_33_197 image9171 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9171 : Bundle := named_bundle% "RealMapCertificates/relations/basis9171.json"
theorem reductionProof9171 : EqualModuloRelations reduction9171.relations reduction9171.input reduction9171.output := by lin_cert using reduction9171.terms
theorem substitutionProof9171 : IsMapEvaluation generatorImages reduction9171.relations [8,8,17,347] reduction9171.output := by lin_cert using reduction9171.terms
def image9172 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9172 : InImage map_33_197 image9172 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9172 : Bundle := named_bundle% "RealMapCertificates/relations/basis9172.json"
theorem reductionProof9172 : EqualModuloRelations reduction9172.relations reduction9172.input reduction9172.output := by lin_cert using reduction9172.terms
theorem substitutionProof9172 : IsMapEvaluation generatorImages reduction9172.relations [8,8,8,8,292] reduction9172.output := by lin_cert using reduction9172.terms
def map_33_198 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image9353 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9353 : InImage map_33_198 image9353 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9353 : Bundle := named_bundle% "RealMapCertificates/relations/basis9353.json"
theorem reductionProof9353 : EqualModuloRelations reduction9353.relations reduction9353.input reduction9353.output := by lin_cert using reduction9353.terms
theorem substitutionProof9353 : IsMapEvaluation generatorImages reduction9353.relations [13,13,13,13,13,13,51] reduction9353.output := by lin_cert using reduction9353.terms
def image9354 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9354 : InImage map_33_198 image9354 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9354 : Bundle := named_bundle% "RealMapCertificates/relations/basis9354.json"
theorem reductionProof9354 : EqualModuloRelations reduction9354.relations reduction9354.input reduction9354.output := by lin_cert using reduction9354.terms
theorem substitutionProof9354 : IsMapEvaluation generatorImages reduction9354.relations [8,8,13,435] reduction9354.output := by lin_cert using reduction9354.terms
def image9355 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9355 : InImage map_33_198 image9355 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9355 : Bundle := named_bundle% "RealMapCertificates/relations/basis9355.json"
theorem reductionProof9355 : EqualModuloRelations reduction9355.relations reduction9355.input reduction9355.output := by lin_cert using reduction9355.terms
theorem substitutionProof9355 : IsMapEvaluation generatorImages reduction9355.relations [8,8,9,13,13,13,80] reduction9355.output := by lin_cert using reduction9355.terms
def image9356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9356 : InImage map_33_198 image9356 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9356 : Bundle := named_bundle% "RealMapCertificates/relations/basis9356.json"
theorem reductionProof9356 : EqualModuloRelations reduction9356.relations reduction9356.input reduction9356.output := by lin_cert using reduction9356.terms
theorem substitutionProof9356 : IsMapEvaluation generatorImages reduction9356.relations [0,64,380] reduction9356.output := by lin_cert using reduction9356.terms
def map_33_199 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9496 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9496 : InImage map_33_199 image9496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9496 : Bundle := named_bundle% "RealMapCertificates/relations/basis9496.json"
theorem reductionProof9496 : EqualModuloRelations reduction9496.relations reduction9496.input reduction9496.output := by lin_cert using reduction9496.terms
theorem substitutionProof9496 : IsMapEvaluation generatorImages reduction9496.relations [8,890] reduction9496.output := by lin_cert using reduction9496.terms
def image9497 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9497 : InImage map_33_199 image9497 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9497 : Bundle := named_bundle% "RealMapCertificates/relations/basis9497.json"
theorem reductionProof9497 : EqualModuloRelations reduction9497.relations reduction9497.input reduction9497.output := by lin_cert using reduction9497.terms
theorem substitutionProof9497 : IsMapEvaluation generatorImages reduction9497.relations [0,64,404] reduction9497.output := by lin_cert using reduction9497.terms
def image9498 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9498 : InImage map_33_199 image9498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9498 : Bundle := named_bundle% "RealMapCertificates/relations/basis9498.json"
theorem reductionProof9498 : EqualModuloRelations reduction9498.relations reduction9498.input reduction9498.output := by lin_cert using reduction9498.terms
theorem substitutionProof9498 : IsMapEvaluation generatorImages reduction9498.relations [0,0,113,260] reduction9498.output := by lin_cert using reduction9498.terms
def image9499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9499 : InImage map_33_199 image9499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9499 : Bundle := named_bundle% "RealMapCertificates/relations/basis9499.json"
theorem reductionProof9499 : EqualModuloRelations reduction9499.relations reduction9499.input reduction9499.output := by lin_cert using reduction9499.terms
theorem substitutionProof9499 : IsMapEvaluation generatorImages reduction9499.relations [0,0,0,0,0,64,347] reduction9499.output := by lin_cert using reduction9499.terms
def map_33_200 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9639 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9639 : InImage map_33_200 image9639 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9639 : Bundle := named_bundle% "RealMapCertificates/relations/basis9639.json"
theorem reductionProof9639 : EqualModuloRelations reduction9639.relations reduction9639.input reduction9639.output := by lin_cert using reduction9639.terms
theorem substitutionProof9639 : IsMapEvaluation generatorImages reduction9639.relations [8,13,13,13,219] reduction9639.output := by lin_cert using reduction9639.terms
def image9640 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9640 : InImage map_33_200 image9640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9640 : Bundle := named_bundle% "RealMapCertificates/relations/basis9640.json"
theorem reductionProof9640 : EqualModuloRelations reduction9640.relations reduction9640.input reduction9640.output := by lin_cert using reduction9640.terms
theorem substitutionProof9640 : IsMapEvaluation generatorImages reduction9640.relations [8,8,8,518] reduction9640.output := by lin_cert using reduction9640.terms
def image9641 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9641 : InImage map_33_200 image9641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9641 : Bundle := named_bundle% "RealMapCertificates/relations/basis9641.json"
theorem reductionProof9641 : EqualModuloRelations reduction9641.relations reduction9641.input reduction9641.output := by lin_cert using reduction9641.terms
theorem substitutionProof9641 : IsMapEvaluation generatorImages reduction9641.relations [8,8,8,9,292] reduction9641.output := by lin_cert using reduction9641.terms
def image9642 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9642 : InImage map_33_200 image9642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9642 : Bundle := named_bundle% "RealMapCertificates/relations/basis9642.json"
theorem reductionProof9642 : EqualModuloRelations reduction9642.relations reduction9642.input reduction9642.output := by lin_cert using reduction9642.terms
theorem substitutionProof9642 : IsMapEvaluation generatorImages reduction9642.relations [0,0,0,0,0,0,138,209] reduction9642.output := by lin_cert using reduction9642.terms
def map_33_201 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image9840 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9840 : InImage map_33_201 image9840 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9840 : Bundle := named_bundle% "RealMapCertificates/relations/basis9840.json"
theorem reductionProof9840 : EqualModuloRelations reduction9840.relations reduction9840.input reduction9840.output := by lin_cert using reduction9840.terms
theorem substitutionProof9840 : IsMapEvaluation generatorImages reduction9840.relations [8,8,13,13,13,13,80] reduction9840.output := by lin_cert using reduction9840.terms
def image9841 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9841 : InImage map_33_201 image9841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9841 : Bundle := named_bundle% "RealMapCertificates/relations/basis9841.json"
theorem reductionProof9841 : EqualModuloRelations reduction9841.relations reduction9841.input reduction9841.output := by lin_cert using reduction9841.terms
theorem substitutionProof9841 : IsMapEvaluation generatorImages reduction9841.relations [8,8,8,530] reduction9841.output := by lin_cert using reduction9841.terms
def image9842 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9842 : InImage map_33_201 image9842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9842 : Bundle := named_bundle% "RealMapCertificates/relations/basis9842.json"
theorem reductionProof9842 : EqualModuloRelations reduction9842.relations reduction9842.input reduction9842.output := by lin_cert using reduction9842.terms
theorem substitutionProof9842 : IsMapEvaluation generatorImages reduction9842.relations [0,8,64,260] reduction9842.output := by lin_cert using reduction9842.terms
def map_33_202 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9971 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9971 : InImage map_33_202 image9971 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9971 : Bundle := named_bundle% "RealMapCertificates/relations/basis9971.json"
theorem reductionProof9971 : EqualModuloRelations reduction9971.relations reduction9971.input reduction9971.output := by lin_cert using reduction9971.terms
theorem substitutionProof9971 : IsMapEvaluation generatorImages reduction9971.relations [8,8,715] reduction9971.output := by lin_cert using reduction9971.terms
def image9972 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9972 : InImage map_33_202 image9972 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9972 : Bundle := named_bundle% "RealMapCertificates/relations/basis9972.json"
theorem reductionProof9972 : EqualModuloRelations reduction9972.relations reduction9972.input reduction9972.output := by lin_cert using reduction9972.terms
theorem substitutionProof9972 : IsMapEvaluation generatorImages reduction9972.relations [0,0,8,897] reduction9972.output := by lin_cert using reduction9972.terms
def map_33_203 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10136 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10136 : InImage map_33_203 image10136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10136 : Bundle := named_bundle% "RealMapCertificates/relations/basis10136.json"
theorem reductionProof10136 : EqualModuloRelations reduction10136.relations reduction10136.input reduction10136.output := by lin_cert using reduction10136.terms
theorem substitutionProof10136 : IsMapEvaluation generatorImages reduction10136.relations [9,13,13,13,219] reduction10136.output := by lin_cert using reduction10136.terms
def image10137 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10137 : InImage map_33_203 image10137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10137 : Bundle := named_bundle% "RealMapCertificates/relations/basis10137.json"
theorem reductionProof10137 : EqualModuloRelations reduction10137.relations reduction10137.input reduction10137.output := by lin_cert using reduction10137.terms
theorem substitutionProof10137 : IsMapEvaluation generatorImages reduction10137.relations [8,8,8,550] reduction10137.output := by lin_cert using reduction10137.terms
def image10138 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10138 : InImage map_33_203 image10138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10138 : Bundle := named_bundle% "RealMapCertificates/relations/basis10138.json"
theorem reductionProof10138 : EqualModuloRelations reduction10138.relations reduction10138.input reduction10138.output := by lin_cert using reduction10138.terms
theorem substitutionProof10138 : IsMapEvaluation generatorImages reduction10138.relations [8,8,8,13,292] reduction10138.output := by lin_cert using reduction10138.terms
def map_33_204 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image10339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10339 : InImage map_33_204 image10339 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10339 : Bundle := named_bundle% "RealMapCertificates/relations/basis10339.json"
theorem reductionProof10339 : EqualModuloRelations reduction10339.relations reduction10339.input reduction10339.output := by lin_cert using reduction10339.terms
theorem substitutionProof10339 : IsMapEvaluation generatorImages reduction10339.relations [64,64,113] reduction10339.output := by lin_cert using reduction10339.terms
def image10340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10340 : InImage map_33_204 image10340 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10340 : Bundle := named_bundle% "RealMapCertificates/relations/basis10340.json"
theorem reductionProof10340 : EqualModuloRelations reduction10340.relations reduction10340.input reduction10340.output := by lin_cert using reduction10340.terms
theorem substitutionProof10340 : IsMapEvaluation generatorImages reduction10340.relations [13,13,13,13,13,13,13,24] reduction10340.output := by lin_cert using reduction10340.terms
def image10341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10341 : InImage map_33_204 image10341 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10341 : Bundle := named_bundle% "RealMapCertificates/relations/basis10341.json"
theorem reductionProof10341 : EqualModuloRelations reduction10341.relations reduction10341.input reduction10341.output := by lin_cert using reduction10341.terms
theorem substitutionProof10341 : IsMapEvaluation generatorImages reduction10341.relations [8,9,13,13,13,13,80] reduction10341.output := by lin_cert using reduction10341.terms
def image10342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10342 : InImage map_33_204 image10342 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10342 : Bundle := named_bundle% "RealMapCertificates/relations/basis10342.json"
theorem reductionProof10342 : EqualModuloRelations reduction10342.relations reduction10342.input reduction10342.output := by lin_cert using reduction10342.terms
theorem substitutionProof10342 : IsMapEvaluation generatorImages reduction10342.relations [8,8,8,17,267] reduction10342.output := by lin_cert using reduction10342.terms
def image10343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10343 : InImage map_33_204 image10343 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10343 : Bundle := named_bundle% "RealMapCertificates/relations/basis10343.json"
theorem reductionProof10343 : EqualModuloRelations reduction10343.relations reduction10343.input reduction10343.output := by lin_cert using reduction10343.terms
theorem substitutionProof10343 : IsMapEvaluation generatorImages reduction10343.relations [0,8,64,278] reduction10343.output := by lin_cert using reduction10343.terms
def map_33_205 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10500 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10500 : InImage map_33_205 image10500 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10500 : Bundle := named_bundle% "RealMapCertificates/relations/basis10500.json"
theorem reductionProof10500 : EqualModuloRelations reduction10500.relations reduction10500.input reduction10500.output := by lin_cert using reduction10500.terms
theorem substitutionProof10500 : IsMapEvaluation generatorImages reduction10500.relations [8,9,715] reduction10500.output := by lin_cert using reduction10500.terms
def image10501 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10501 : InImage map_33_205 image10501 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10501 : Bundle := named_bundle% "RealMapCertificates/relations/basis10501.json"
theorem reductionProof10501 : EqualModuloRelations reduction10501.relations reduction10501.input reduction10501.output := by lin_cert using reduction10501.terms
theorem substitutionProof10501 : IsMapEvaluation generatorImages reduction10501.relations [0,0,8,940] reduction10501.output := by lin_cert using reduction10501.terms
def image10502 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10502 : InImage map_33_205 image10502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10502 : Bundle := named_bundle% "RealMapCertificates/relations/basis10502.json"
theorem reductionProof10502 : EqualModuloRelations reduction10502.relations reduction10502.input reduction10502.output := by lin_cert using reduction10502.terms
theorem substitutionProof10502 : IsMapEvaluation generatorImages reduction10502.relations [0,0,0,0,0,0,0,0,0,0,0,1084] reduction10502.output := by lin_cert using reduction10502.terms
end RealMapCertificates
