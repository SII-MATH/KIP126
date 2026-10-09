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
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 64 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 105 => []
  | 133 => []
  | 149 => [[4,9,12]]
  | 150 => []
  | 159 => [[3,4,4,4,4,4,4,4]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 219 => [[7,7,7,12]]
  | 255 => []
  | 260 => []
  | 267 => []
  | 280 => []
  | 292 => []
  | 293 => []
  | 294 => []
  | 299 => []
  | 318 => []
  | 324 => []
  | 327 => []
  | 347 => []
  | 357 => []
  | 383 => []
  | 420 => []
  | 537 => []
  | 549 => []
  | 574 => []
  | 586 => []
  | 601 => []
  | 627 => []
  | 645 => []
  | 655 => []
  | 715 => [[7,7,7,12,12]]
  | 797 => []
  | 832 => []
  | 834 => []
  | 963 => []
  | 974 => []
  | 1035 => []
  | 1079 => []
  | 1169 => []
  | 1255 => []
  | 1302 => [[0,0,5,8,12,12,12]]
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1365 => [[6,9,12,12,12]]
  | 1366 => [[7,9,12,12,12]]
  | 1382 => []
  | 1383 => []
  | 1385 => []
  | 1401 => []
  | 1402 => []
  | 1439 => []
  | 1441 => []
  | 1481 => [[5,5,7,12,12,12]]
  | 1483 => []
  | 1538 => [[5,7,7,12,12,12]]
  | 1571 => []
  | 1594 => [[7,7,7,12,12,12]]
  | 1596 => []
  | 1606 => []
  | 1607 => []
  | 1719 => []
  | _ => []
def map_33_206 : Matrix 2 4 := fun i j => ([false,true,false,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image10665 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10665 : InImage map_33_206 image10665 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10665 : Bundle := named_bundle% "RealMapCertificates/relations/basis10665.json"
theorem reductionProof10665 : EqualModuloRelations reduction10665.relations reduction10665.input reduction10665.output := by lin_cert using reduction10665.terms
theorem substitutionProof10665 : IsMapEvaluation generatorImages reduction10665.relations [1302] reduction10665.output := by lin_cert using reduction10665.terms
def image10666 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10666 : InImage map_33_206 image10666 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10666 : Bundle := named_bundle% "RealMapCertificates/relations/basis10666.json"
theorem reductionProof10666 : EqualModuloRelations reduction10666.relations reduction10666.input reduction10666.output := by lin_cert using reduction10666.terms
theorem substitutionProof10666 : IsMapEvaluation generatorImages reduction10666.relations [13,13,13,13,219] reduction10666.output := by lin_cert using reduction10666.terms
def image10667 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10667 : InImage map_33_206 image10667 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10667 : Bundle := named_bundle% "RealMapCertificates/relations/basis10667.json"
theorem reductionProof10667 : EqualModuloRelations reduction10667.relations reduction10667.input reduction10667.output := by lin_cert using reduction10667.terms
theorem substitutionProof10667 : IsMapEvaluation generatorImages reduction10667.relations [8,8,9,13,292] reduction10667.output := by lin_cert using reduction10667.terms
def image10668 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10668 : InImage map_33_206 image10668 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10668 : Bundle := named_bundle% "RealMapCertificates/relations/basis10668.json"
theorem reductionProof10668 : EqualModuloRelations reduction10668.relations reduction10668.input reduction10668.output := by lin_cert using reduction10668.terms
theorem substitutionProof10668 : IsMapEvaluation generatorImages reduction10668.relations [8,8,8,8,383] reduction10668.output := by lin_cert using reduction10668.terms
def map_33_207 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image10894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10894 : InImage map_33_207 image10894 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10894 : Bundle := named_bundle% "RealMapCertificates/relations/basis10894.json"
theorem reductionProof10894 : EqualModuloRelations reduction10894.relations reduction10894.input reduction10894.output := by lin_cert using reduction10894.terms
theorem substitutionProof10894 : IsMapEvaluation generatorImages reduction10894.relations [8,64,299] reduction10894.output := by lin_cert using reduction10894.terms
def image10895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10895 : InImage map_33_207 image10895 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10895 : Bundle := named_bundle% "RealMapCertificates/relations/basis10895.json"
theorem reductionProof10895 : EqualModuloRelations reduction10895.relations reduction10895.input reduction10895.output := by lin_cert using reduction10895.terms
theorem substitutionProof10895 : IsMapEvaluation generatorImages reduction10895.relations [8,13,13,13,13,13,80] reduction10895.output := by lin_cert using reduction10895.terms
def image10896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10896 : InImage map_33_207 image10896 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10896 : Bundle := named_bundle% "RealMapCertificates/relations/basis10896.json"
theorem reductionProof10896 : EqualModuloRelations reduction10896.relations reduction10896.input reduction10896.output := by lin_cert using reduction10896.terms
theorem substitutionProof10896 : IsMapEvaluation generatorImages reduction10896.relations [8,8,8,20,267] reduction10896.output := by lin_cert using reduction10896.terms
def image10897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10897 : InImage map_33_207 image10897 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10897 : Bundle := named_bundle% "RealMapCertificates/relations/basis10897.json"
theorem reductionProof10897 : EqualModuloRelations reduction10897.relations reduction10897.input reduction10897.output := by lin_cert using reduction10897.terms
theorem substitutionProof10897 : IsMapEvaluation generatorImages reduction10897.relations [0,8,16,627] reduction10897.output := by lin_cert using reduction10897.terms
def map_33_208 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image11022 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11022 : InImage map_33_208 image11022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11022 : Bundle := named_bundle% "RealMapCertificates/relations/basis11022.json"
theorem reductionProof11022 : EqualModuloRelations reduction11022.relations reduction11022.input reduction11022.output := by lin_cert using reduction11022.terms
theorem substitutionProof11022 : IsMapEvaluation generatorImages reduction11022.relations [8,13,715] reduction11022.output := by lin_cert using reduction11022.terms
def image11023 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11023 : InImage map_33_208 image11023 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11023 : Bundle := named_bundle% "RealMapCertificates/relations/basis11023.json"
theorem reductionProof11023 : EqualModuloRelations reduction11023.relations reduction11023.input reduction11023.output := by lin_cert using reduction11023.terms
theorem substitutionProof11023 : IsMapEvaluation generatorImages reduction11023.relations [5,64,347] reduction11023.output := by lin_cert using reduction11023.terms
def image11024 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11024 : InImage map_33_208 image11024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11024 : Bundle := named_bundle% "RealMapCertificates/relations/basis11024.json"
theorem reductionProof11024 : EqualModuloRelations reduction11024.relations reduction11024.input reduction11024.output := by lin_cert using reduction11024.terms
theorem substitutionProof11024 : IsMapEvaluation generatorImages reduction11024.relations [0,1317] reduction11024.output := by lin_cert using reduction11024.terms
def image11025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11025 : InImage map_33_208 image11025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11025 : Bundle := named_bundle% "RealMapCertificates/relations/basis11025.json"
theorem reductionProof11025 : EqualModuloRelations reduction11025.relations reduction11025.input reduction11025.output := by lin_cert using reduction11025.terms
theorem substitutionProof11025 : IsMapEvaluation generatorImages reduction11025.relations [0,0,8,17,627] reduction11025.output := by lin_cert using reduction11025.terms
def map_33_209 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image11201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11201 : InImage map_33_209 image11201 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11201 : Bundle := named_bundle% "RealMapCertificates/relations/basis11201.json"
theorem reductionProof11201 : EqualModuloRelations reduction11201.relations reduction11201.input reduction11201.output := by lin_cert using reduction11201.terms
theorem substitutionProof11201 : IsMapEvaluation generatorImages reduction11201.relations [8,8,13,13,292] reduction11201.output := by lin_cert using reduction11201.terms
def image11202 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11202 : InImage map_33_209 image11202 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11202 : Bundle := named_bundle% "RealMapCertificates/relations/basis11202.json"
theorem reductionProof11202 : EqualModuloRelations reduction11202.relations reduction11202.input reduction11202.output := by lin_cert using reduction11202.terms
theorem substitutionProof11202 : IsMapEvaluation generatorImages reduction11202.relations [8,8,8,8,17,209] reduction11202.output := by lin_cert using reduction11202.terms
def image11203 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11203 : InImage map_33_209 image11203 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11203 : Bundle := named_bundle% "RealMapCertificates/relations/basis11203.json"
theorem reductionProof11203 : EqualModuloRelations reduction11203.relations reduction11203.input reduction11203.output := by lin_cert using reduction11203.terms
theorem substitutionProof11203 : IsMapEvaluation generatorImages reduction11203.relations [0,1336] reduction11203.output := by lin_cert using reduction11203.terms
def map_33_210 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11405 : InImage map_33_210 image11405 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11405 : Bundle := named_bundle% "RealMapCertificates/relations/basis11405.json"
theorem reductionProof11405 : EqualModuloRelations reduction11405.relations reduction11405.input reduction11405.output := by lin_cert using reduction11405.terms
theorem substitutionProof11405 : IsMapEvaluation generatorImages reduction11405.relations [9,13,13,13,13,13,80] reduction11405.output := by lin_cert using reduction11405.terms
def image11406 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11406 : InImage map_33_210 image11406 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11406 : Bundle := named_bundle% "RealMapCertificates/relations/basis11406.json"
theorem reductionProof11406 : EqualModuloRelations reduction11406.relations reduction11406.input reduction11406.output := by lin_cert using reduction11406.terms
theorem substitutionProof11406 : IsMapEvaluation generatorImages reduction11406.relations [8,64,327] reduction11406.output := by lin_cert using reduction11406.terms
def image11407 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11407 : InImage map_33_210 image11407 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11407 : Bundle := named_bundle% "RealMapCertificates/relations/basis11407.json"
theorem reductionProof11407 : EqualModuloRelations reduction11407.relations reduction11407.input reduction11407.output := by lin_cert using reduction11407.terms
theorem substitutionProof11407 : IsMapEvaluation generatorImages reduction11407.relations [8,8,8,8,23,188] reduction11407.output := by lin_cert using reduction11407.terms
def image11408 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11408 : InImage map_33_210 image11408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11408 : Bundle := named_bundle% "RealMapCertificates/relations/basis11408.json"
theorem reductionProof11408 : EqualModuloRelations reduction11408.relations reduction11408.input reduction11408.output := by lin_cert using reduction11408.terms
theorem substitutionProof11408 : IsMapEvaluation generatorImages reduction11408.relations [0,8,8,797] reduction11408.output := by lin_cert using reduction11408.terms
def map_33_211 : Matrix 2 3 := fun i j => ([true,false,false,false,true,false] : List Bool)[i.val*3+j.val]!
def image11567 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11567 : InImage map_33_211 image11567 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11567 : Bundle := named_bundle% "RealMapCertificates/relations/basis11567.json"
theorem reductionProof11567 : EqualModuloRelations reduction11567.relations reduction11567.input reduction11567.output := by lin_cert using reduction11567.terms
theorem substitutionProof11567 : IsMapEvaluation generatorImages reduction11567.relations [9,13,715] reduction11567.output := by lin_cert using reduction11567.terms
def image11568 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation11568 : InImage map_33_211 image11568 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11568 : Bundle := named_bundle% "RealMapCertificates/relations/basis11568.json"
theorem reductionProof11568 : EqualModuloRelations reduction11568.relations reduction11568.input reduction11568.output := by lin_cert using reduction11568.terms
theorem substitutionProof11568 : IsMapEvaluation generatorImages reduction11568.relations [0,1365] reduction11568.output := by lin_cert using reduction11568.terms
def image11569 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11569 : InImage map_33_211 image11569 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11569 : Bundle := named_bundle% "RealMapCertificates/relations/basis11569.json"
theorem reductionProof11569 : EqualModuloRelations reduction11569.relations reduction11569.input reduction11569.output := by lin_cert using reduction11569.terms
theorem substitutionProof11569 : IsMapEvaluation generatorImages reduction11569.relations [0,0,8,17,655] reduction11569.output := by lin_cert using reduction11569.terms
def map_33_212 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image11735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11735 : InImage map_33_212 image11735 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction11735 : Bundle := named_bundle% "RealMapCertificates/relations/basis11735.json"
theorem reductionProof11735 : EqualModuloRelations reduction11735.relations reduction11735.input reduction11735.output := by lin_cert using reduction11735.terms
theorem substitutionProof11735 : IsMapEvaluation generatorImages reduction11735.relations [1401] reduction11735.output := by lin_cert using reduction11735.terms
def image11736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11736 : InImage map_33_212 image11736 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction11736 : Bundle := named_bundle% "RealMapCertificates/relations/basis11736.json"
theorem reductionProof11736 : EqualModuloRelations reduction11736.relations reduction11736.input reduction11736.output := by lin_cert using reduction11736.terms
theorem substitutionProof11736 : IsMapEvaluation generatorImages reduction11736.relations [64,549] reduction11736.output := by lin_cert using reduction11736.terms
def image11737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11737 : InImage map_33_212 image11737 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction11737 : Bundle := named_bundle% "RealMapCertificates/relations/basis11737.json"
theorem reductionProof11737 : EqualModuloRelations reduction11737.relations reduction11737.input reduction11737.output := by lin_cert using reduction11737.terms
theorem substitutionProof11737 : IsMapEvaluation generatorImages reduction11737.relations [13,13,13,13,13,150] reduction11737.output := by lin_cert using reduction11737.terms
def image11738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11738 : InImage map_33_212 image11738 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction11738 : Bundle := named_bundle% "RealMapCertificates/relations/basis11738.json"
theorem reductionProof11738 : EqualModuloRelations reduction11738.relations reduction11738.input reduction11738.output := by lin_cert using reduction11738.terms
theorem substitutionProof11738 : IsMapEvaluation generatorImages reduction11738.relations [8,9,13,13,292] reduction11738.output := by lin_cert using reduction11738.terms
def image11739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11739 : InImage map_33_212 image11739 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction11739 : Bundle := named_bundle% "RealMapCertificates/relations/basis11739.json"
theorem reductionProof11739 : EqualModuloRelations reduction11739.relations reduction11739.input reduction11739.output := by lin_cert using reduction11739.terms
theorem substitutionProof11739 : IsMapEvaluation generatorImages reduction11739.relations [8,8,8,8,8,280] reduction11739.output := by lin_cert using reduction11739.terms
def image11740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11740 : InImage map_33_212 image11740 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction11740 : Bundle := named_bundle% "RealMapCertificates/relations/basis11740.json"
theorem reductionProof11740 : EqualModuloRelations reduction11740.relations reduction11740.input reduction11740.output := by lin_cert using reduction11740.terms
theorem substitutionProof11740 : IsMapEvaluation generatorImages reduction11740.relations [0,1382] reduction11740.output := by lin_cert using reduction11740.terms
def image11741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11741 : InImage map_33_212 image11741 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction11741 : Bundle := named_bundle% "RealMapCertificates/relations/basis11741.json"
theorem reductionProof11741 : EqualModuloRelations reduction11741.relations reduction11741.input reduction11741.output := by lin_cert using reduction11741.terms
theorem substitutionProof11741 : IsMapEvaluation generatorImages reduction11741.relations [0,0,1366] reduction11741.output := by lin_cert using reduction11741.terms
def map_33_213 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11987 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11987 : InImage map_33_213 image11987 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11987 : Bundle := named_bundle% "RealMapCertificates/relations/basis11987.json"
theorem reductionProof11987 : EqualModuloRelations reduction11987.relations reduction11987.input reduction11987.output := by lin_cert using reduction11987.terms
theorem substitutionProof11987 : IsMapEvaluation generatorImages reduction11987.relations [13,13,13,13,13,13,80] reduction11987.output := by lin_cert using reduction11987.terms
def image11988 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11988 : InImage map_33_213 image11988 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11988 : Bundle := named_bundle% "RealMapCertificates/relations/basis11988.json"
theorem reductionProof11988 : EqualModuloRelations reduction11988.relations reduction11988.input reduction11988.output := by lin_cert using reduction11988.terms
theorem substitutionProof11988 : IsMapEvaluation generatorImages reduction11988.relations [8,16,64,188] reduction11988.output := by lin_cert using reduction11988.terms
def image11989 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11989 : InImage map_33_213 image11989 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11989 : Bundle := named_bundle% "RealMapCertificates/relations/basis11989.json"
theorem reductionProof11989 : EqualModuloRelations reduction11989.relations reduction11989.input reduction11989.output := by lin_cert using reduction11989.terms
theorem substitutionProof11989 : IsMapEvaluation generatorImages reduction11989.relations [8,8,8,9,23,188] reduction11989.output := by lin_cert using reduction11989.terms
def image11990 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11990 : InImage map_33_213 image11990 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11990 : Bundle := named_bundle% "RealMapCertificates/relations/basis11990.json"
theorem reductionProof11990 : EqualModuloRelations reduction11990.relations reduction11990.input reduction11990.output := by lin_cert using reduction11990.terms
theorem substitutionProof11990 : IsMapEvaluation generatorImages reduction11990.relations [0,8,8,8,627] reduction11990.output := by lin_cert using reduction11990.terms
def image11991 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11991 : InImage map_33_213 image11991 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11991 : Bundle := named_bundle% "RealMapCertificates/relations/basis11991.json"
theorem reductionProof11991 : EqualModuloRelations reduction11991.relations reduction11991.input reduction11991.output := by lin_cert using reduction11991.terms
theorem substitutionProof11991 : IsMapEvaluation generatorImages reduction11991.relations [0,0,1383] reduction11991.output := by lin_cert using reduction11991.terms
def map_33_214 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image12152 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12152 : InImage map_33_214 image12152 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12152 : Bundle := named_bundle% "RealMapCertificates/relations/basis12152.json"
theorem reductionProof12152 : EqualModuloRelations reduction12152.relations reduction12152.input reduction12152.output := by lin_cert using reduction12152.terms
theorem substitutionProof12152 : IsMapEvaluation generatorImages reduction12152.relations [13,13,715] reduction12152.output := by lin_cert using reduction12152.terms
def image12153 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12153 : InImage map_33_214 image12153 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12153 : Bundle := named_bundle% "RealMapCertificates/relations/basis12153.json"
theorem reductionProof12153 : EqualModuloRelations reduction12153.relations reduction12153.input reduction12153.output := by lin_cert using reduction12153.terms
theorem substitutionProof12153 : IsMapEvaluation generatorImages reduction12153.relations [0,0,8,8,832] reduction12153.output := by lin_cert using reduction12153.terms
def image12154 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12154 : InImage map_33_214 image12154 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12154 : Bundle := named_bundle% "RealMapCertificates/relations/basis12154.json"
theorem reductionProof12154 : EqualModuloRelations reduction12154.relations reduction12154.input reduction12154.output := by lin_cert using reduction12154.terms
theorem substitutionProof12154 : IsMapEvaluation generatorImages reduction12154.relations [0,0,0,1385] reduction12154.output := by lin_cert using reduction12154.terms
def map_33_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12342 : InImage map_33_215 image12342 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12342 : Bundle := named_bundle% "RealMapCertificates/relations/basis12342.json"
theorem reductionProof12342 : EqualModuloRelations reduction12342.relations reduction12342.input reduction12342.output := by lin_cert using reduction12342.terms
theorem substitutionProof12342 : IsMapEvaluation generatorImages reduction12342.relations [64,574] reduction12342.output := by lin_cert using reduction12342.terms
def image12343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12343 : InImage map_33_215 image12343 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12343 : Bundle := named_bundle% "RealMapCertificates/relations/basis12343.json"
theorem reductionProof12343 : EqualModuloRelations reduction12343.relations reduction12343.input reduction12343.output := by lin_cert using reduction12343.terms
theorem substitutionProof12343 : IsMapEvaluation generatorImages reduction12343.relations [8,13,13,13,292] reduction12343.output := by lin_cert using reduction12343.terms
def image12344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12344 : InImage map_33_215 image12344 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12344 : Bundle := named_bundle% "RealMapCertificates/relations/basis12344.json"
theorem reductionProof12344 : EqualModuloRelations reduction12344.relations reduction12344.input reduction12344.output := by lin_cert using reduction12344.terms
theorem substitutionProof12344 : IsMapEvaluation generatorImages reduction12344.relations [8,8,8,8,8,294] reduction12344.output := by lin_cert using reduction12344.terms
def image12345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12345 : InImage map_33_215 image12345 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12345 : Bundle := named_bundle% "RealMapCertificates/relations/basis12345.json"
theorem reductionProof12345 : EqualModuloRelations reduction12345.relations reduction12345.input reduction12345.output := by lin_cert using reduction12345.terms
theorem substitutionProof12345 : IsMapEvaluation generatorImages reduction12345.relations [0,1439] reduction12345.output := by lin_cert using reduction12345.terms
def image12346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12346 : InImage map_33_215 image12346 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12346 : Bundle := named_bundle% "RealMapCertificates/relations/basis12346.json"
theorem reductionProof12346 : EqualModuloRelations reduction12346.relations reduction12346.input reduction12346.output := by lin_cert using reduction12346.terms
theorem substitutionProof12346 : IsMapEvaluation generatorImages reduction12346.relations [0,0,0,1402] reduction12346.output := by lin_cert using reduction12346.terms
def map_33_216 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image12552 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12552 : InImage map_33_216 image12552 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12552 : Bundle := named_bundle% "RealMapCertificates/relations/basis12552.json"
theorem reductionProof12552 : EqualModuloRelations reduction12552.relations reduction12552.input reduction12552.output := by lin_cert using reduction12552.terms
theorem substitutionProof12552 : IsMapEvaluation generatorImages reduction12552.relations [1481] reduction12552.output := by lin_cert using reduction12552.terms
def image12553 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12553 : InImage map_33_216 image12553 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12553 : Bundle := named_bundle% "RealMapCertificates/relations/basis12553.json"
theorem reductionProof12553 : EqualModuloRelations reduction12553.relations reduction12553.input reduction12553.output := by lin_cert using reduction12553.terms
theorem substitutionProof12553 : IsMapEvaluation generatorImages reduction12553.relations [8,8,64,255] reduction12553.output := by lin_cert using reduction12553.terms
def image12554 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12554 : InImage map_33_216 image12554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12554 : Bundle := named_bundle% "RealMapCertificates/relations/basis12554.json"
theorem reductionProof12554 : EqualModuloRelations reduction12554.relations reduction12554.input reduction12554.output := by lin_cert using reduction12554.terms
theorem substitutionProof12554 : IsMapEvaluation generatorImages reduction12554.relations [8,8,8,13,23,188] reduction12554.output := by lin_cert using reduction12554.terms
def map_33_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12719 : InImage map_33_217 image12719 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12719 : Bundle := named_bundle% "RealMapCertificates/relations/basis12719.json"
theorem reductionProof12719 : EqualModuloRelations reduction12719.relations reduction12719.input reduction12719.output := by lin_cert using reduction12719.terms
theorem substitutionProof12719 : IsMapEvaluation generatorImages reduction12719.relations [17,963] reduction12719.output := by lin_cert using reduction12719.terms
def map_33_218 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image12894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12894 : InImage map_33_218 image12894 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12894 : Bundle := named_bundle% "RealMapCertificates/relations/basis12894.json"
theorem reductionProof12894 : EqualModuloRelations reduction12894.relations reduction12894.input reduction12894.output := by lin_cert using reduction12894.terms
theorem substitutionProof12894 : IsMapEvaluation generatorImages reduction12894.relations [64,601] reduction12894.output := by lin_cert using reduction12894.terms
def image12895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12895 : InImage map_33_218 image12895 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12895 : Bundle := named_bundle% "RealMapCertificates/relations/basis12895.json"
theorem reductionProof12895 : EqualModuloRelations reduction12895.relations reduction12895.input reduction12895.output := by lin_cert using reduction12895.terms
theorem substitutionProof12895 : IsMapEvaluation generatorImages reduction12895.relations [59,627] reduction12895.output := by lin_cert using reduction12895.terms
def image12896 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12896 : InImage map_33_218 image12896 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12896 : Bundle := named_bundle% "RealMapCertificates/relations/basis12896.json"
theorem reductionProof12896 : EqualModuloRelations reduction12896.relations reduction12896.input reduction12896.output := by lin_cert using reduction12896.terms
theorem substitutionProof12896 : IsMapEvaluation generatorImages reduction12896.relations [17,974] reduction12896.output := by lin_cert using reduction12896.terms
def image12897 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12897 : InImage map_33_218 image12897 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12897 : Bundle := named_bundle% "RealMapCertificates/relations/basis12897.json"
theorem reductionProof12897 : EqualModuloRelations reduction12897.relations reduction12897.input reduction12897.output := by lin_cert using reduction12897.terms
theorem substitutionProof12897 : IsMapEvaluation generatorImages reduction12897.relations [9,13,13,13,292] reduction12897.output := by lin_cert using reduction12897.terms
def image12898 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12898 : InImage map_33_218 image12898 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12898 : Bundle := named_bundle% "RealMapCertificates/relations/basis12898.json"
theorem reductionProof12898 : EqualModuloRelations reduction12898.relations reduction12898.input reduction12898.output := by lin_cert using reduction12898.terms
theorem substitutionProof12898 : IsMapEvaluation generatorImages reduction12898.relations [8,64,420] reduction12898.output := by lin_cert using reduction12898.terms
def image12899 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12899 : InImage map_33_218 image12899 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12899 : Bundle := named_bundle% "RealMapCertificates/relations/basis12899.json"
theorem reductionProof12899 : EqualModuloRelations reduction12899.relations reduction12899.input reduction12899.output := by lin_cert using reduction12899.terms
theorem substitutionProof12899 : IsMapEvaluation generatorImages reduction12899.relations [8,8,8,8,9,294] reduction12899.output := by lin_cert using reduction12899.terms
def map_33_219 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13140 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13140 : InImage map_33_219 image13140 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13140 : Bundle := named_bundle% "RealMapCertificates/relations/basis13140.json"
theorem reductionProof13140 : EqualModuloRelations reduction13140.relations reduction13140.input reduction13140.output := by lin_cert using reduction13140.terms
theorem substitutionProof13140 : IsMapEvaluation generatorImages reduction13140.relations [1538] reduction13140.output := by lin_cert using reduction13140.terms
def image13141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13141 : InImage map_33_219 image13141 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13141 : Bundle := named_bundle% "RealMapCertificates/relations/basis13141.json"
theorem reductionProof13141 : EqualModuloRelations reduction13141.relations reduction13141.input reduction13141.output := by lin_cert using reduction13141.terms
theorem substitutionProof13141 : IsMapEvaluation generatorImages reduction13141.relations [8,8,9,13,23,188] reduction13141.output := by lin_cert using reduction13141.terms
def image13142 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13142 : InImage map_33_219 image13142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13142 : Bundle := named_bundle% "RealMapCertificates/relations/basis13142.json"
theorem reductionProof13142 : EqualModuloRelations reduction13142.relations reduction13142.input reduction13142.output := by lin_cert using reduction13142.terms
theorem substitutionProof13142 : IsMapEvaluation generatorImages reduction13142.relations [8,8,8,64,188] reduction13142.output := by lin_cert using reduction13142.terms
def image13143 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13143 : InImage map_33_219 image13143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13143 : Bundle := named_bundle% "RealMapCertificates/relations/basis13143.json"
theorem reductionProof13143 : EqualModuloRelations reduction13143.relations reduction13143.input reduction13143.output := by lin_cert using reduction13143.terms
theorem substitutionProof13143 : IsMapEvaluation generatorImages reduction13143.relations [0,0,64,586] reduction13143.output := by lin_cert using reduction13143.terms
def image13144 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13144 : InImage map_33_219 image13144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13144 : Bundle := named_bundle% "RealMapCertificates/relations/basis13144.json"
theorem reductionProof13144 : EqualModuloRelations reduction13144.relations reduction13144.input reduction13144.output := by lin_cert using reduction13144.terms
theorem substitutionProof13144 : IsMapEvaluation generatorImages reduction13144.relations [0,0,0,0,0,1441] reduction13144.output := by lin_cert using reduction13144.terms
def map_33_220 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image13278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13278 : InImage map_33_220 image13278 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13278 : Bundle := named_bundle% "RealMapCertificates/relations/basis13278.json"
theorem reductionProof13278 : EqualModuloRelations reduction13278.relations reduction13278.input reduction13278.output := by lin_cert using reduction13278.terms
theorem substitutionProof13278 : IsMapEvaluation generatorImages reduction13278.relations [20,963] reduction13278.output := by lin_cert using reduction13278.terms
def image13279 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13279 : InImage map_33_220 image13279 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13279 : Bundle := named_bundle% "RealMapCertificates/relations/basis13279.json"
theorem reductionProof13279 : EqualModuloRelations reduction13279.relations reduction13279.input reduction13279.output := by lin_cert using reduction13279.terms
theorem substitutionProof13279 : IsMapEvaluation generatorImages reduction13279.relations [13,13,13,537] reduction13279.output := by lin_cert using reduction13279.terms
def image13280 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13280 : InImage map_33_220 image13280 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13280 : Bundle := named_bundle% "RealMapCertificates/relations/basis13280.json"
theorem reductionProof13280 : EqualModuloRelations reduction13280.relations reduction13280.input reduction13280.output := by lin_cert using reduction13280.terms
theorem substitutionProof13280 : IsMapEvaluation generatorImages reduction13280.relations [13,13,13,13,13,13,105] reduction13280.output := by lin_cert using reduction13280.terms
def image13281 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13281 : InImage map_33_220 image13281 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13281 : Bundle := named_bundle% "RealMapCertificates/relations/basis13281.json"
theorem reductionProof13281 : EqualModuloRelations reduction13281.relations reduction13281.input reduction13281.output := by lin_cert using reduction13281.terms
theorem substitutionProof13281 : IsMapEvaluation generatorImages reduction13281.relations [0,0,0,0,1483] reduction13281.output := by lin_cert using reduction13281.terms
def map_33_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13469 : InImage map_33_221 image13469 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13469 : Bundle := named_bundle% "RealMapCertificates/relations/basis13469.json"
theorem reductionProof13469 : EqualModuloRelations reduction13469.relations reduction13469.input reduction13469.output := by lin_cert using reduction13469.terms
theorem substitutionProof13469 : IsMapEvaluation generatorImages reduction13469.relations [17,1035] reduction13469.output := by lin_cert using reduction13469.terms
def image13470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13470 : InImage map_33_221 image13470 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13470 : Bundle := named_bundle% "RealMapCertificates/relations/basis13470.json"
theorem reductionProof13470 : EqualModuloRelations reduction13470.relations reduction13470.input reduction13470.output := by lin_cert using reduction13470.terms
theorem substitutionProof13470 : IsMapEvaluation generatorImages reduction13470.relations [13,13,13,13,292] reduction13470.output := by lin_cert using reduction13470.terms
def image13471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13471 : InImage map_33_221 image13471 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13471 : Bundle := named_bundle% "RealMapCertificates/relations/basis13471.json"
theorem reductionProof13471 : EqualModuloRelations reduction13471.relations reduction13471.input reduction13471.output := by lin_cert using reduction13471.terms
theorem substitutionProof13471 : IsMapEvaluation generatorImages reduction13471.relations [8,72,420] reduction13471.output := by lin_cert using reduction13471.terms
def image13472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13472 : InImage map_33_221 image13472 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13472 : Bundle := named_bundle% "RealMapCertificates/relations/basis13472.json"
theorem reductionProof13472 : EqualModuloRelations reduction13472.relations reduction13472.input reduction13472.output := by lin_cert using reduction13472.terms
theorem substitutionProof13472 : IsMapEvaluation generatorImages reduction13472.relations [8,8,8,8,13,294] reduction13472.output := by lin_cert using reduction13472.terms
def image13473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13473 : InImage map_33_221 image13473 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13473 : Bundle := named_bundle% "RealMapCertificates/relations/basis13473.json"
theorem reductionProof13473 : EqualModuloRelations reduction13473.relations reduction13473.input reduction13473.output := by lin_cert using reduction13473.terms
theorem substitutionProof13473 : IsMapEvaluation generatorImages reduction13473.relations [0,149,318] reduction13473.output := by lin_cert using reduction13473.terms
def map_33_222 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13697 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13697 : InImage map_33_222 image13697 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13697 : Bundle := named_bundle% "RealMapCertificates/relations/basis13697.json"
theorem reductionProof13697 : EqualModuloRelations reduction13697.relations reduction13697.input reduction13697.output := by lin_cert using reduction13697.terms
theorem substitutionProof13697 : IsMapEvaluation generatorImages reduction13697.relations [1594] reduction13697.output := by lin_cert using reduction13697.terms
def image13698 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13698 : InImage map_33_222 image13698 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13698 : Bundle := named_bundle% "RealMapCertificates/relations/basis13698.json"
theorem reductionProof13698 : EqualModuloRelations reduction13698.relations reduction13698.input reduction13698.output := by lin_cert using reduction13698.terms
theorem substitutionProof13698 : IsMapEvaluation generatorImages reduction13698.relations [8,8,13,13,23,188] reduction13698.output := by lin_cert using reduction13698.terms
def image13699 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13699 : InImage map_33_222 image13699 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13699 : Bundle := named_bundle% "RealMapCertificates/relations/basis13699.json"
theorem reductionProof13699 : EqualModuloRelations reduction13699.relations reduction13699.input reduction13699.output := by lin_cert using reduction13699.terms
theorem substitutionProof13699 : IsMapEvaluation generatorImages reduction13699.relations [8,8,8,72,188] reduction13699.output := by lin_cert using reduction13699.terms
def map_33_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13848 : InImage map_33_223 image13848 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13848 : Bundle := named_bundle% "RealMapCertificates/relations/basis13848.json"
theorem reductionProof13848 : EqualModuloRelations reduction13848.relations reduction13848.input reduction13848.output := by lin_cert using reduction13848.terms
theorem substitutionProof13848 : IsMapEvaluation generatorImages reduction13848.relations [1606] reduction13848.output := by lin_cert using reduction13848.terms
def image13849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13849 : InImage map_33_223 image13849 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13849 : Bundle := named_bundle% "RealMapCertificates/relations/basis13849.json"
theorem reductionProof13849 : EqualModuloRelations reduction13849.relations reduction13849.input reduction13849.output := by lin_cert using reduction13849.terms
theorem substitutionProof13849 : IsMapEvaluation generatorImages reduction13849.relations [22,963] reduction13849.output := by lin_cert using reduction13849.terms
def map_33_224 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14021 : InImage map_33_224 image14021 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14021 : Bundle := named_bundle% "RealMapCertificates/relations/basis14021.json"
theorem reductionProof14021 : EqualModuloRelations reduction14021.relations reduction14021.input reduction14021.output := by lin_cert using reduction14021.terms
theorem substitutionProof14021 : IsMapEvaluation generatorImages reduction14021.relations [8,42,627] reduction14021.output := by lin_cert using reduction14021.terms
def image14022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14022 : InImage map_33_224 image14022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14022 : Bundle := named_bundle% "RealMapCertificates/relations/basis14022.json"
theorem reductionProof14022 : EqualModuloRelations reduction14022.relations reduction14022.input reduction14022.output := by lin_cert using reduction14022.terms
theorem substitutionProof14022 : IsMapEvaluation generatorImages reduction14022.relations [8,8,64,293] reduction14022.output := by lin_cert using reduction14022.terms
def image14023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14023 : InImage map_33_224 image14023 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14023 : Bundle := named_bundle% "RealMapCertificates/relations/basis14023.json"
theorem reductionProof14023 : EqualModuloRelations reduction14023.relations reduction14023.input reduction14023.output := by lin_cert using reduction14023.terms
theorem substitutionProof14023 : IsMapEvaluation generatorImages reduction14023.relations [8,8,8,9,13,294] reduction14023.output := by lin_cert using reduction14023.terms
def image14024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14024 : InImage map_33_224 image14024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14024 : Bundle := named_bundle% "RealMapCertificates/relations/basis14024.json"
theorem reductionProof14024 : EqualModuloRelations reduction14024.relations reduction14024.input reduction14024.output := by lin_cert using reduction14024.terms
theorem substitutionProof14024 : IsMapEvaluation generatorImages reduction14024.relations [0,0,0,64,627] reduction14024.output := by lin_cert using reduction14024.terms
def map_33_225 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14261 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14261 : InImage map_33_225 image14261 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14261 : Bundle := named_bundle% "RealMapCertificates/relations/basis14261.json"
theorem reductionProof14261 : EqualModuloRelations reduction14261.relations reduction14261.input reduction14261.output := by lin_cert using reduction14261.terms
theorem substitutionProof14261 : IsMapEvaluation generatorImages reduction14261.relations [8,9,13,13,23,188] reduction14261.output := by lin_cert using reduction14261.terms
def image14262 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14262 : InImage map_33_225 image14262 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14262 : Bundle := named_bundle% "RealMapCertificates/relations/basis14262.json"
theorem reductionProof14262 : EqualModuloRelations reduction14262.relations reduction14262.input reduction14262.output := by lin_cert using reduction14262.terms
theorem substitutionProof14262 : IsMapEvaluation generatorImages reduction14262.relations [8,8,8,79,188] reduction14262.output := by lin_cert using reduction14262.terms
def image14263 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14263 : InImage map_33_225 image14263 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14263 : Bundle := named_bundle% "RealMapCertificates/relations/basis14263.json"
theorem reductionProof14263 : EqualModuloRelations reduction14263.relations reduction14263.input reduction14263.output := by lin_cert using reduction14263.terms
theorem substitutionProof14263 : IsMapEvaluation generatorImages reduction14263.relations [1,159,324] reduction14263.output := by lin_cert using reduction14263.terms
def image14264 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14264 : InImage map_33_225 image14264 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14264 : Bundle := named_bundle% "RealMapCertificates/relations/basis14264.json"
theorem reductionProof14264 : EqualModuloRelations reduction14264.relations reduction14264.input reduction14264.output := by lin_cert using reduction14264.terms
theorem substitutionProof14264 : IsMapEvaluation generatorImages reduction14264.relations [0,0,1607] reduction14264.output := by lin_cert using reduction14264.terms
def image14265 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14265 : InImage map_33_225 image14265 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14265 : Bundle := named_bundle% "RealMapCertificates/relations/basis14265.json"
theorem reductionProof14265 : EqualModuloRelations reduction14265.relations reduction14265.input reduction14265.output := by lin_cert using reduction14265.terms
theorem substitutionProof14265 : IsMapEvaluation generatorImages reduction14265.relations [0,0,64,645] reduction14265.output := by lin_cert using reduction14265.terms
def image14266 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14266 : InImage map_33_225 image14266 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14266 : Bundle := named_bundle% "RealMapCertificates/relations/basis14266.json"
theorem reductionProof14266 : EqualModuloRelations reduction14266.relations reduction14266.input reduction14266.output := by lin_cert using reduction14266.terms
theorem substitutionProof14266 : IsMapEvaluation generatorImages reduction14266.relations [0,0,0,0,188,260] reduction14266.output := by lin_cert using reduction14266.terms
def map_33_226 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14403 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14403 : InImage map_33_226 image14403 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14403 : Bundle := named_bundle% "RealMapCertificates/relations/basis14403.json"
theorem reductionProof14403 : EqualModuloRelations reduction14403.relations reduction14403.input reduction14403.output := by lin_cert using reduction14403.terms
theorem substitutionProof14403 : IsMapEvaluation generatorImages reduction14403.relations [149,383] reduction14403.output := by lin_cert using reduction14403.terms
def image14404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14404 : InImage map_33_226 image14404 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14404 : Bundle := named_bundle% "RealMapCertificates/relations/basis14404.json"
theorem reductionProof14404 : EqualModuloRelations reduction14404.relations reduction14404.input reduction14404.output := by lin_cert using reduction14404.terms
theorem substitutionProof14404 : IsMapEvaluation generatorImages reduction14404.relations [29,963] reduction14404.output := by lin_cert using reduction14404.terms
def image14405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14405 : InImage map_33_226 image14405 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14405 : Bundle := named_bundle% "RealMapCertificates/relations/basis14405.json"
theorem reductionProof14405 : EqualModuloRelations reduction14405.relations reduction14405.input reduction14405.output := by lin_cert using reduction14405.terms
theorem substitutionProof14405 : IsMapEvaluation generatorImages reduction14405.relations [9,13,13,13,13,13,133] reduction14405.output := by lin_cert using reduction14405.terms
def image14406 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14406 : InImage map_33_226 image14406 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14406 : Bundle := named_bundle% "RealMapCertificates/relations/basis14406.json"
theorem reductionProof14406 : EqualModuloRelations reduction14406.relations reduction14406.input reduction14406.output := by lin_cert using reduction14406.terms
theorem substitutionProof14406 : IsMapEvaluation generatorImages reduction14406.relations [0,0,0,0,1596] reduction14406.output := by lin_cert using reduction14406.terms
def map_33_227 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14600 : InImage map_33_227 image14600 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14600 : Bundle := named_bundle% "RealMapCertificates/relations/basis14600.json"
theorem reductionProof14600 : EqualModuloRelations reduction14600.relations reduction14600.input reduction14600.output := by lin_cert using reduction14600.terms
theorem substitutionProof14600 : IsMapEvaluation generatorImages reduction14600.relations [8,42,655] reduction14600.output := by lin_cert using reduction14600.terms
def image14601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14601 : InImage map_33_227 image14601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14601 : Bundle := named_bundle% "RealMapCertificates/relations/basis14601.json"
theorem reductionProof14601 : EqualModuloRelations reduction14601.relations reduction14601.input reduction14601.output := by lin_cert using reduction14601.terms
theorem substitutionProof14601 : IsMapEvaluation generatorImages reduction14601.relations [8,8,72,293] reduction14601.output := by lin_cert using reduction14601.terms
def image14602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14602 : InImage map_33_227 image14602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14602 : Bundle := named_bundle% "RealMapCertificates/relations/basis14602.json"
theorem reductionProof14602 : EqualModuloRelations reduction14602.relations reduction14602.input reduction14602.output := by lin_cert using reduction14602.terms
theorem substitutionProof14602 : IsMapEvaluation generatorImages reduction14602.relations [8,8,8,13,13,294] reduction14602.output := by lin_cert using reduction14602.terms
def image14603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14603 : InImage map_33_227 image14603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14603 : Bundle := named_bundle% "RealMapCertificates/relations/basis14603.json"
theorem reductionProof14603 : EqualModuloRelations reduction14603.relations reduction14603.input reduction14603.output := by lin_cert using reduction14603.terms
theorem substitutionProof14603 : IsMapEvaluation generatorImages reduction14603.relations [0,0,0,0,0,0,1571] reduction14603.output := by lin_cert using reduction14603.terms
def map_33_228 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14831 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14831 : InImage map_33_228 image14831 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14831 : Bundle := named_bundle% "RealMapCertificates/relations/basis14831.json"
theorem reductionProof14831 : EqualModuloRelations reduction14831.relations reduction14831.input reduction14831.output := by lin_cert using reduction14831.terms
theorem substitutionProof14831 : IsMapEvaluation generatorImages reduction14831.relations [13,1255] reduction14831.output := by lin_cert using reduction14831.terms
def image14832 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14832 : InImage map_33_228 image14832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14832 : Bundle := named_bundle% "RealMapCertificates/relations/basis14832.json"
theorem reductionProof14832 : EqualModuloRelations reduction14832.relations reduction14832.input reduction14832.output := by lin_cert using reduction14832.terms
theorem substitutionProof14832 : IsMapEvaluation generatorImages reduction14832.relations [13,13,13,13,357] reduction14832.output := by lin_cert using reduction14832.terms
def image14833 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14833 : InImage map_33_228 image14833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14833 : Bundle := named_bundle% "RealMapCertificates/relations/basis14833.json"
theorem reductionProof14833 : EqualModuloRelations reduction14833.relations reduction14833.input reduction14833.output := by lin_cert using reduction14833.terms
theorem substitutionProof14833 : IsMapEvaluation generatorImages reduction14833.relations [8,13,13,13,23,188] reduction14833.output := by lin_cert using reduction14833.terms
def image14834 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14834 : InImage map_33_228 image14834 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14834 : Bundle := named_bundle% "RealMapCertificates/relations/basis14834.json"
theorem reductionProof14834 : EqualModuloRelations reduction14834.relations reduction14834.input reduction14834.output := by lin_cert using reduction14834.terms
theorem substitutionProof14834 : IsMapEvaluation generatorImages reduction14834.relations [8,8,8,80,201] reduction14834.output := by lin_cert using reduction14834.terms
def image14835 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14835 : InImage map_33_228 image14835 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14835 : Bundle := named_bundle% "RealMapCertificates/relations/basis14835.json"
theorem reductionProof14835 : EqualModuloRelations reduction14835.relations reduction14835.input reduction14835.output := by lin_cert using reduction14835.terms
theorem substitutionProof14835 : IsMapEvaluation generatorImages reduction14835.relations [5,1441] reduction14835.output := by lin_cert using reduction14835.terms
def map_33_229 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image14999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14999 : InImage map_33_229 image14999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14999 : Bundle := named_bundle% "RealMapCertificates/relations/basis14999.json"
theorem reductionProof14999 : EqualModuloRelations reduction14999.relations reduction14999.input reduction14999.output := by lin_cert using reduction14999.terms
theorem substitutionProof14999 : IsMapEvaluation generatorImages reduction14999.relations [32,963] reduction14999.output := by lin_cert using reduction14999.terms
def image15000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15000 : InImage map_33_229 image15000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15000 : Bundle := named_bundle% "RealMapCertificates/relations/basis15000.json"
theorem reductionProof15000 : EqualModuloRelations reduction15000.relations reduction15000.input reduction15000.output := by lin_cert using reduction15000.terms
theorem substitutionProof15000 : IsMapEvaluation generatorImages reduction15000.relations [16,1169] reduction15000.output := by lin_cert using reduction15000.terms
def image15001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15001 : InImage map_33_229 image15001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15001 : Bundle := named_bundle% "RealMapCertificates/relations/basis15001.json"
theorem reductionProof15001 : EqualModuloRelations reduction15001.relations reduction15001.input reduction15001.output := by lin_cert using reduction15001.terms
theorem substitutionProof15001 : IsMapEvaluation generatorImages reduction15001.relations [13,13,13,13,13,13,133] reduction15001.output := by lin_cert using reduction15001.terms
def image15002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15002 : InImage map_33_229 image15002 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15002 : Bundle := named_bundle% "RealMapCertificates/relations/basis15002.json"
theorem reductionProof15002 : EqualModuloRelations reduction15002.relations reduction15002.input reduction15002.output := by lin_cert using reduction15002.terms
theorem substitutionProof15002 : IsMapEvaluation generatorImages reduction15002.relations [0,64,64,187] reduction15002.output := by lin_cert using reduction15002.terms
def map_33_230 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image15194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15194 : InImage map_33_230 image15194 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15194 : Bundle := named_bundle% "RealMapCertificates/relations/basis15194.json"
theorem reductionProof15194 : EqualModuloRelations reduction15194.relations reduction15194.input reduction15194.output := by lin_cert using reduction15194.terms
theorem substitutionProof15194 : IsMapEvaluation generatorImages reduction15194.relations [182,324] reduction15194.output := by lin_cert using reduction15194.terms
def image15195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15195 : InImage map_33_230 image15195 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15195 : Bundle := named_bundle% "RealMapCertificates/relations/basis15195.json"
theorem reductionProof15195 : EqualModuloRelations reduction15195.relations reduction15195.input reduction15195.output := by lin_cert using reduction15195.terms
theorem substitutionProof15195 : IsMapEvaluation generatorImages reduction15195.relations [8,8,1079] reduction15195.output := by lin_cert using reduction15195.terms
def image15196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15196 : InImage map_33_230 image15196 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15196 : Bundle := named_bundle% "RealMapCertificates/relations/basis15196.json"
theorem reductionProof15196 : EqualModuloRelations reduction15196.relations reduction15196.input reduction15196.output := by lin_cert using reduction15196.terms
theorem substitutionProof15196 : IsMapEvaluation generatorImages reduction15196.relations [8,8,9,13,13,294] reduction15196.output := by lin_cert using reduction15196.terms
def image15197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15197 : InImage map_33_230 image15197 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15197 : Bundle := named_bundle% "RealMapCertificates/relations/basis15197.json"
theorem reductionProof15197 : EqualModuloRelations reduction15197.relations reduction15197.input reduction15197.output := by lin_cert using reduction15197.terms
theorem substitutionProof15197 : IsMapEvaluation generatorImages reduction15197.relations [8,8,8,834] reduction15197.output := by lin_cert using reduction15197.terms
def image15198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15198 : InImage map_33_230 image15198 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15198 : Bundle := named_bundle% "RealMapCertificates/relations/basis15198.json"
theorem reductionProof15198 : EqualModuloRelations reduction15198.relations reduction15198.input reduction15198.output := by lin_cert using reduction15198.terms
theorem substitutionProof15198 : IsMapEvaluation generatorImages reduction15198.relations [1,64,64,187] reduction15198.output := by lin_cert using reduction15198.terms
def image15199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15199 : InImage map_33_230 image15199 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15199 : Bundle := named_bundle% "RealMapCertificates/relations/basis15199.json"
theorem reductionProof15199 : EqualModuloRelations reduction15199.relations reduction15199.input reduction15199.output := by lin_cert using reduction15199.terms
theorem substitutionProof15199 : IsMapEvaluation generatorImages reduction15199.relations [0,1719] reduction15199.output := by lin_cert using reduction15199.terms
def image15200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15200 : InImage map_33_230 image15200 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15200 : Bundle := named_bundle% "RealMapCertificates/relations/basis15200.json"
theorem reductionProof15200 : EqualModuloRelations reduction15200.relations reduction15200.input reduction15200.output := by lin_cert using reduction15200.terms
theorem substitutionProof15200 : IsMapEvaluation generatorImages reduction15200.relations [0,0,64,64,188] reduction15200.output := by lin_cert using reduction15200.terms
end RealMapCertificates
