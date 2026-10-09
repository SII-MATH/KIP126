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
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 64 => []
  | 76 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 149 => [[4,9,12]]
  | 167 => [[7,9,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 188 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 209 => []
  | 210 => []
  | 212 => []
  | 225 => [[0,4,4,4,6,12]]
  | 250 => []
  | 260 => []
  | 268 => []
  | 278 => []
  | 280 => []
  | 287 => []
  | 293 => []
  | 294 => []
  | 324 => []
  | 347 => []
  | 472 => []
  | 627 => []
  | 638 => []
  | 655 => []
  | 668 => []
  | 692 => []
  | 693 => []
  | 706 => []
  | 760 => []
  | 762 => []
  | 779 => []
  | 813 => []
  | 833 => []
  | 878 => []
  | 975 => []
  | 1079 => []
  | 1122 => []
  | 1169 => []
  | 1221 => []
  | 1369 => []
  | 1429 => []
  | 1441 => []
  | 1504 => []
  | 1539 => []
  | 1554 => []
  | 1652 => []
  | 1720 => []
  | 1738 => []
  | 1773 => []
  | 1774 => []
  | 1775 => []
  | 1858 => []
  | 1859 => []
  | 1927 => []
  | 1928 => []
  | 1930 => []
  | 1931 => []
  | 1996 => []
  | 2040 => []
  | 2097 => []
  | 2124 => []
  | 2125 => []
  | 2165 => []
  | 2166 => []
  | 2199 => []
  | 2303 => []
  | _ => []
def map_33_231 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15455 : InImage map_33_231 image15455 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15455 : Bundle := named_bundle% "RealMapCertificates/relations/basis15455.json"
theorem reductionProof15455 : EqualModuloRelations reduction15455.relations reduction15455.input reduction15455.output := by lin_cert using reduction15455.terms
theorem substitutionProof15455 : IsMapEvaluation generatorImages reduction15455.relations [9,13,13,13,23,188] reduction15455.output := by lin_cert using reduction15455.terms
def image15456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15456 : InImage map_33_231 image15456 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15456 : Bundle := named_bundle% "RealMapCertificates/relations/basis15456.json"
theorem reductionProof15456 : EqualModuloRelations reduction15456.relations reduction15456.input reduction15456.output := by lin_cert using reduction15456.terms
theorem substitutionProof15456 : IsMapEvaluation generatorImages reduction15456.relations [8,8,8,80,212] reduction15456.output := by lin_cert using reduction15456.terms
def image15457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15457 : InImage map_33_231 image15457 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15457 : Bundle := named_bundle% "RealMapCertificates/relations/basis15457.json"
theorem reductionProof15457 : EqualModuloRelations reduction15457.relations reduction15457.input reduction15457.output := by lin_cert using reduction15457.terms
theorem substitutionProof15457 : IsMapEvaluation generatorImages reduction15457.relations [0,1738] reduction15457.output := by lin_cert using reduction15457.terms
def image15458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15458 : InImage map_33_231 image15458 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15458 : Bundle := named_bundle% "RealMapCertificates/relations/basis15458.json"
theorem reductionProof15458 : EqualModuloRelations reduction15458.relations reduction15458.input reduction15458.output := by lin_cert using reduction15458.terms
theorem substitutionProof15458 : IsMapEvaluation generatorImages reduction15458.relations [0,183,324] reduction15458.output := by lin_cert using reduction15458.terms
def image15459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15459 : InImage map_33_231 image15459 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15459 : Bundle := named_bundle% "RealMapCertificates/relations/basis15459.json"
theorem reductionProof15459 : EqualModuloRelations reduction15459.relations reduction15459.input reduction15459.output := by lin_cert using reduction15459.terms
theorem substitutionProof15459 : IsMapEvaluation generatorImages reduction15459.relations [0,0,1720] reduction15459.output := by lin_cert using reduction15459.terms
def image15460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15460 : InImage map_33_231 image15460 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15460 : Bundle := named_bundle% "RealMapCertificates/relations/basis15460.json"
theorem reductionProof15460 : EqualModuloRelations reduction15460.relations reduction15460.input reduction15460.output := by lin_cert using reduction15460.terms
theorem substitutionProof15460 : IsMapEvaluation generatorImages reduction15460.relations [0,0,0,0,0,209,260] reduction15460.output := by lin_cert using reduction15460.terms
def map_33_232 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image15634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15634 : InImage map_33_232 image15634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15634 : Bundle := named_bundle% "RealMapCertificates/relations/basis15634.json"
theorem reductionProof15634 : EqualModuloRelations reduction15634.relations reduction15634.input reduction15634.output := by lin_cert using reduction15634.terms
theorem substitutionProof15634 : IsMapEvaluation generatorImages reduction15634.relations [8,149,280] reduction15634.output := by lin_cert using reduction15634.terms
def image15635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15635 : InImage map_33_232 image15635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15635 : Bundle := named_bundle% "RealMapCertificates/relations/basis15635.json"
theorem reductionProof15635 : EqualModuloRelations reduction15635.relations reduction15635.input reduction15635.output := by lin_cert using reduction15635.terms
theorem substitutionProof15635 : IsMapEvaluation generatorImages reduction15635.relations [0,0,0,0,64,706] reduction15635.output := by lin_cert using reduction15635.terms
def image15636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15636 : InImage map_33_232 image15636 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15636 : Bundle := named_bundle% "RealMapCertificates/relations/basis15636.json"
theorem reductionProof15636 : EqualModuloRelations reduction15636.relations reduction15636.input reduction15636.output := by lin_cert using reduction15636.terms
theorem substitutionProof15636 : IsMapEvaluation generatorImages reduction15636.relations [0,0,0,0,0,0,1652] reduction15636.output := by lin_cert using reduction15636.terms
def map_33_233 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image15851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15851 : InImage map_33_233 image15851 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15851 : Bundle := named_bundle% "RealMapCertificates/relations/basis15851.json"
theorem reductionProof15851 : EqualModuloRelations reduction15851.relations reduction15851.input reduction15851.output := by lin_cert using reduction15851.terms
theorem substitutionProof15851 : IsMapEvaluation generatorImages reduction15851.relations [199,324] reduction15851.output := by lin_cert using reduction15851.terms
def image15852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15852 : InImage map_33_233 image15852 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15852 : Bundle := named_bundle% "RealMapCertificates/relations/basis15852.json"
theorem reductionProof15852 : EqualModuloRelations reduction15852.relations reduction15852.input reduction15852.output := by lin_cert using reduction15852.terms
theorem substitutionProof15852 : IsMapEvaluation generatorImages reduction15852.relations [8,9,1079] reduction15852.output := by lin_cert using reduction15852.terms
def image15853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15853 : InImage map_33_233 image15853 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15853 : Bundle := named_bundle% "RealMapCertificates/relations/basis15853.json"
theorem reductionProof15853 : EqualModuloRelations reduction15853.relations reduction15853.input reduction15853.output := by lin_cert using reduction15853.terms
theorem substitutionProof15853 : IsMapEvaluation generatorImages reduction15853.relations [8,8,13,13,13,294] reduction15853.output := by lin_cert using reduction15853.terms
def image15854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15854 : InImage map_33_233 image15854 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15854 : Bundle := named_bundle% "RealMapCertificates/relations/basis15854.json"
theorem reductionProof15854 : EqualModuloRelations reduction15854.relations reduction15854.input reduction15854.output := by lin_cert using reduction15854.terms
theorem substitutionProof15854 : IsMapEvaluation generatorImages reduction15854.relations [8,8,8,878] reduction15854.output := by lin_cert using reduction15854.terms
def image15855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15855 : InImage map_33_233 image15855 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15855 : Bundle := named_bundle% "RealMapCertificates/relations/basis15855.json"
theorem reductionProof15855 : EqualModuloRelations reduction15855.relations reduction15855.input reduction15855.output := by lin_cert using reduction15855.terms
theorem substitutionProof15855 : IsMapEvaluation generatorImages reduction15855.relations [0,8,1441] reduction15855.output := by lin_cert using reduction15855.terms
def image15856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15856 : InImage map_33_233 image15856 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15856 : Bundle := named_bundle% "RealMapCertificates/relations/basis15856.json"
theorem reductionProof15856 : EqualModuloRelations reduction15856.relations reduction15856.input reduction15856.output := by lin_cert using reduction15856.terms
theorem substitutionProof15856 : IsMapEvaluation generatorImages reduction15856.relations [0,0,0,0,0,0,64,693] reduction15856.output := by lin_cert using reduction15856.terms
def map_33_234 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16104 : InImage map_33_234 image16104 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16104 : Bundle := named_bundle% "RealMapCertificates/relations/basis16104.json"
theorem reductionProof16104 : EqualModuloRelations reduction16104.relations reduction16104.input reduction16104.output := by lin_cert using reduction16104.terms
theorem substitutionProof16104 : IsMapEvaluation generatorImages reduction16104.relations [64,779] reduction16104.output := by lin_cert using reduction16104.terms
def image16105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16105 : InImage map_33_234 image16105 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16105 : Bundle := named_bundle% "RealMapCertificates/relations/basis16105.json"
theorem reductionProof16105 : EqualModuloRelations reduction16105.relations reduction16105.input reduction16105.output := by lin_cert using reduction16105.terms
theorem substitutionProof16105 : IsMapEvaluation generatorImages reduction16105.relations [13,13,13,13,23,188] reduction16105.output := by lin_cert using reduction16105.terms
def image16106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16106 : InImage map_33_234 image16106 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16106 : Bundle := named_bundle% "RealMapCertificates/relations/basis16106.json"
theorem reductionProof16106 : EqualModuloRelations reduction16106.relations reduction16106.input reduction16106.output := by lin_cert using reduction16106.terms
theorem substitutionProof16106 : IsMapEvaluation generatorImages reduction16106.relations [9,13,13,13,472] reduction16106.output := by lin_cert using reduction16106.terms
def image16107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16107 : InImage map_33_234 image16107 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16107 : Bundle := named_bundle% "RealMapCertificates/relations/basis16107.json"
theorem reductionProof16107 : EqualModuloRelations reduction16107.relations reduction16107.input reduction16107.output := by lin_cert using reduction16107.terms
theorem substitutionProof16107 : IsMapEvaluation generatorImages reduction16107.relations [8,8,9,80,212] reduction16107.output := by lin_cert using reduction16107.terms
def image16108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16108 : InImage map_33_234 image16108 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16108 : Bundle := named_bundle% "RealMapCertificates/relations/basis16108.json"
theorem reductionProof16108 : EqualModuloRelations reduction16108.relations reduction16108.input reduction16108.output := by lin_cert using reduction16108.terms
theorem substitutionProof16108 : IsMapEvaluation generatorImages reduction16108.relations [0,200,324] reduction16108.output := by lin_cert using reduction16108.terms
def image16109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16109 : InImage map_33_234 image16109 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16109 : Bundle := named_bundle% "RealMapCertificates/relations/basis16109.json"
theorem reductionProof16109 : EqualModuloRelations reduction16109.relations reduction16109.input reduction16109.output := by lin_cert using reduction16109.terms
theorem substitutionProof16109 : IsMapEvaluation generatorImages reduction16109.relations [0,0,1774] reduction16109.output := by lin_cert using reduction16109.terms
def image16110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16110 : InImage map_33_234 image16110 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16110 : Bundle := named_bundle% "RealMapCertificates/relations/basis16110.json"
theorem reductionProof16110 : EqualModuloRelations reduction16110.relations reduction16110.input reduction16110.output := by lin_cert using reduction16110.terms
theorem substitutionProof16110 : IsMapEvaluation generatorImages reduction16110.relations [0,0,1773] reduction16110.output := by lin_cert using reduction16110.terms
def map_33_235 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16297 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16297 : InImage map_33_235 image16297 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16297 : Bundle := named_bundle% "RealMapCertificates/relations/basis16297.json"
theorem reductionProof16297 : EqualModuloRelations reduction16297.relations reduction16297.input reduction16297.output := by lin_cert using reduction16297.terms
theorem substitutionProof16297 : IsMapEvaluation generatorImages reduction16297.relations [13,13,13,13,13,13,13,76] reduction16297.output := by lin_cert using reduction16297.terms
def image16298 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16298 : InImage map_33_235 image16298 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16298 : Bundle := named_bundle% "RealMapCertificates/relations/basis16298.json"
theorem reductionProof16298 : EqualModuloRelations reduction16298.relations reduction16298.input reduction16298.output := by lin_cert using reduction16298.terms
theorem substitutionProof16298 : IsMapEvaluation generatorImages reduction16298.relations [8,8,1169] reduction16298.output := by lin_cert using reduction16298.terms
def map_33_236 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image16523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16523 : InImage map_33_236 image16523 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16523 : Bundle := named_bundle% "RealMapCertificates/relations/basis16523.json"
theorem reductionProof16523 : EqualModuloRelations reduction16523.relations reduction16523.input reduction16523.output := by lin_cert using reduction16523.terms
theorem substitutionProof16523 : IsMapEvaluation generatorImages reduction16523.relations [113,627] reduction16523.output := by lin_cert using reduction16523.terms
def image16524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16524 : InImage map_33_236 image16524 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16524 : Bundle := named_bundle% "RealMapCertificates/relations/basis16524.json"
theorem reductionProof16524 : EqualModuloRelations reduction16524.relations reduction16524.input reduction16524.output := by lin_cert using reduction16524.terms
theorem substitutionProof16524 : IsMapEvaluation generatorImages reduction16524.relations [13,13,975] reduction16524.output := by lin_cert using reduction16524.terms
def image16525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16525 : InImage map_33_236 image16525 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16525 : Bundle := named_bundle% "RealMapCertificates/relations/basis16525.json"
theorem reductionProof16525 : EqualModuloRelations reduction16525.relations reduction16525.input reduction16525.output := by lin_cert using reduction16525.terms
theorem substitutionProof16525 : IsMapEvaluation generatorImages reduction16525.relations [8,13,1079] reduction16525.output := by lin_cert using reduction16525.terms
def image16526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16526 : InImage map_33_236 image16526 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16526 : Bundle := named_bundle% "RealMapCertificates/relations/basis16526.json"
theorem reductionProof16526 : EqualModuloRelations reduction16526.relations reduction16526.input reduction16526.output := by lin_cert using reduction16526.terms
theorem substitutionProof16526 : IsMapEvaluation generatorImages reduction16526.relations [8,9,13,13,13,294] reduction16526.output := by lin_cert using reduction16526.terms
def image16527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16527 : InImage map_33_236 image16527 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16527 : Bundle := named_bundle% "RealMapCertificates/relations/basis16527.json"
theorem reductionProof16527 : EqualModuloRelations reduction16527.relations reduction16527.input reduction16527.output := by lin_cert using reduction16527.terms
theorem substitutionProof16527 : IsMapEvaluation generatorImages reduction16527.relations [8,8,8,8,692] reduction16527.output := by lin_cert using reduction16527.terms
def image16528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16528 : InImage map_33_236 image16528 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16528 : Bundle := named_bundle% "RealMapCertificates/relations/basis16528.json"
theorem reductionProof16528 : EqualModuloRelations reduction16528.relations reduction16528.input reduction16528.output := by lin_cert using reduction16528.terms
theorem substitutionProof16528 : IsMapEvaluation generatorImages reduction16528.relations [0,8,1504] reduction16528.output := by lin_cert using reduction16528.terms
def image16529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16529 : InImage map_33_236 image16529 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16529 : Bundle := named_bundle% "RealMapCertificates/relations/basis16529.json"
theorem reductionProof16529 : EqualModuloRelations reduction16529.relations reduction16529.input reduction16529.output := by lin_cert using reduction16529.terms
theorem substitutionProof16529 : IsMapEvaluation generatorImages reduction16529.relations [0,0,0,64,64,209] reduction16529.output := by lin_cert using reduction16529.terms
def map_33_237 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16783 : InImage map_33_237 image16783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16783 : Bundle := named_bundle% "RealMapCertificates/relations/basis16783.json"
theorem reductionProof16783 : EqualModuloRelations reduction16783.relations reduction16783.input reduction16783.output := by lin_cert using reduction16783.terms
theorem substitutionProof16783 : IsMapEvaluation generatorImages reduction16783.relations [64,813] reduction16783.output := by lin_cert using reduction16783.terms
def image16784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16784 : InImage map_33_237 image16784 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16784 : Bundle := named_bundle% "RealMapCertificates/relations/basis16784.json"
theorem reductionProof16784 : EqualModuloRelations reduction16784.relations reduction16784.input reduction16784.output := by lin_cert using reduction16784.terms
theorem substitutionProof16784 : IsMapEvaluation generatorImages reduction16784.relations [13,13,13,13,472] reduction16784.output := by lin_cert using reduction16784.terms
def image16785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16785 : InImage map_33_237 image16785 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16785 : Bundle := named_bundle% "RealMapCertificates/relations/basis16785.json"
theorem reductionProof16785 : EqualModuloRelations reduction16785.relations reduction16785.input reduction16785.output := by lin_cert using reduction16785.terms
theorem substitutionProof16785 : IsMapEvaluation generatorImages reduction16785.relations [8,8,13,80,212] reduction16785.output := by lin_cert using reduction16785.terms
def image16786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16786 : InImage map_33_237 image16786 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16786 : Bundle := named_bundle% "RealMapCertificates/relations/basis16786.json"
theorem reductionProof16786 : EqualModuloRelations reduction16786.relations reduction16786.input reduction16786.output := by lin_cert using reduction16786.terms
theorem substitutionProof16786 : IsMapEvaluation generatorImages reduction16786.relations [0,0,1859] reduction16786.output := by lin_cert using reduction16786.terms
def image16787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16787 : InImage map_33_237 image16787 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16787 : Bundle := named_bundle% "RealMapCertificates/relations/basis16787.json"
theorem reductionProof16787 : EqualModuloRelations reduction16787.relations reduction16787.input reduction16787.output := by lin_cert using reduction16787.terms
theorem substitutionProof16787 : IsMapEvaluation generatorImages reduction16787.relations [0,0,1858] reduction16787.output := by lin_cert using reduction16787.terms
def image16788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16788 : InImage map_33_237 image16788 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16788 : Bundle := named_bundle% "RealMapCertificates/relations/basis16788.json"
theorem reductionProof16788 : EqualModuloRelations reduction16788.relations reduction16788.input reduction16788.output := by lin_cert using reduction16788.terms
theorem substitutionProof16788 : IsMapEvaluation generatorImages reduction16788.relations [0,0,0,0,64,760] reduction16788.output := by lin_cert using reduction16788.terms
def map_33_238 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16964 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16964 : InImage map_33_238 image16964 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16964 : Bundle := named_bundle% "RealMapCertificates/relations/basis16964.json"
theorem reductionProof16964 : EqualModuloRelations reduction16964.relations reduction16964.input reduction16964.output := by lin_cert using reduction16964.terms
theorem substitutionProof16964 : IsMapEvaluation generatorImages reduction16964.relations [1927] reduction16964.output := by lin_cert using reduction16964.terms
def image16965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16965 : InImage map_33_238 image16965 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16965 : Bundle := named_bundle% "RealMapCertificates/relations/basis16965.json"
theorem reductionProof16965 : EqualModuloRelations reduction16965.relations reduction16965.input reduction16965.output := by lin_cert using reduction16965.terms
theorem substitutionProof16965 : IsMapEvaluation generatorImages reduction16965.relations [8,8,1221] reduction16965.output := by lin_cert using reduction16965.terms
def map_33_239 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17216 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17216 : InImage map_33_239 image17216 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17216 : Bundle := named_bundle% "RealMapCertificates/relations/basis17216.json"
theorem reductionProof17216 : EqualModuloRelations reduction17216.relations reduction17216.input reduction17216.output := by lin_cert using reduction17216.terms
theorem substitutionProof17216 : IsMapEvaluation generatorImages reduction17216.relations [9,13,1079] reduction17216.output := by lin_cert using reduction17216.terms
def image17217 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17217 : InImage map_33_239 image17217 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17217 : Bundle := named_bundle% "RealMapCertificates/relations/basis17217.json"
theorem reductionProof17217 : EqualModuloRelations reduction17217.relations reduction17217.input reduction17217.output := by lin_cert using reduction17217.terms
theorem substitutionProof17217 : IsMapEvaluation generatorImages reduction17217.relations [8,188,260] reduction17217.output := by lin_cert using reduction17217.terms
def image17218 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17218 : InImage map_33_239 image17218 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17218 : Bundle := named_bundle% "RealMapCertificates/relations/basis17218.json"
theorem reductionProof17218 : EqualModuloRelations reduction17218.relations reduction17218.input reduction17218.output := by lin_cert using reduction17218.terms
theorem substitutionProof17218 : IsMapEvaluation generatorImages reduction17218.relations [8,13,13,13,13,294] reduction17218.output := by lin_cert using reduction17218.terms
def image17219 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17219 : InImage map_33_239 image17219 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17219 : Bundle := named_bundle% "RealMapCertificates/relations/basis17219.json"
theorem reductionProof17219 : EqualModuloRelations reduction17219.relations reduction17219.input reduction17219.output := by lin_cert using reduction17219.terms
theorem substitutionProof17219 : IsMapEvaluation generatorImages reduction17219.relations [8,8,8,9,692] reduction17219.output := by lin_cert using reduction17219.terms
def image17220 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17220 : InImage map_33_239 image17220 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17220 : Bundle := named_bundle% "RealMapCertificates/relations/basis17220.json"
theorem reductionProof17220 : EqualModuloRelations reduction17220.relations reduction17220.input reduction17220.output := by lin_cert using reduction17220.terms
theorem substitutionProof17220 : IsMapEvaluation generatorImages reduction17220.relations [0,8,1554] reduction17220.output := by lin_cert using reduction17220.terms
def image17221 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17221 : InImage map_33_239 image17221 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17221 : Bundle := named_bundle% "RealMapCertificates/relations/basis17221.json"
theorem reductionProof17221 : EqualModuloRelations reduction17221.relations reduction17221.input reduction17221.output := by lin_cert using reduction17221.terms
theorem substitutionProof17221 : IsMapEvaluation generatorImages reduction17221.relations [0,0,0,210,324] reduction17221.output := by lin_cert using reduction17221.terms
def image17222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17222 : InImage map_33_239 image17222 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17222 : Bundle := named_bundle% "RealMapCertificates/relations/basis17222.json"
theorem reductionProof17222 : EqualModuloRelations reduction17222.relations reduction17222.input reduction17222.output := by lin_cert using reduction17222.terms
theorem substitutionProof17222 : IsMapEvaluation generatorImages reduction17222.relations [0,0,0,0,0,0,64,762] reduction17222.output := by lin_cert using reduction17222.terms
def map_33_240 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image17486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17486 : InImage map_33_240 image17486 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17486 : Bundle := named_bundle% "RealMapCertificates/relations/basis17486.json"
theorem reductionProof17486 : EqualModuloRelations reduction17486.relations reduction17486.input reduction17486.output := by lin_cert using reduction17486.terms
theorem substitutionProof17486 : IsMapEvaluation generatorImages reduction17486.relations [13,13,13,13,13,268] reduction17486.output := by lin_cert using reduction17486.terms
def image17487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17487 : InImage map_33_240 image17487 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17487 : Bundle := named_bundle% "RealMapCertificates/relations/basis17487.json"
theorem reductionProof17487 : EqualModuloRelations reduction17487.relations reduction17487.input reduction17487.output := by lin_cert using reduction17487.terms
theorem substitutionProof17487 : IsMapEvaluation generatorImages reduction17487.relations [8,64,638] reduction17487.output := by lin_cert using reduction17487.terms
def image17488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17488 : InImage map_33_240 image17488 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17488 : Bundle := named_bundle% "RealMapCertificates/relations/basis17488.json"
theorem reductionProof17488 : EqualModuloRelations reduction17488.relations reduction17488.input reduction17488.output := by lin_cert using reduction17488.terms
theorem substitutionProof17488 : IsMapEvaluation generatorImages reduction17488.relations [8,9,13,80,212] reduction17488.output := by lin_cert using reduction17488.terms
def image17489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17489 : InImage map_33_240 image17489 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17489 : Bundle := named_bundle% "RealMapCertificates/relations/basis17489.json"
theorem reductionProof17489 : EqualModuloRelations reduction17489.relations reduction17489.input reduction17489.output := by lin_cert using reduction17489.terms
theorem substitutionProof17489 : IsMapEvaluation generatorImages reduction17489.relations [5,209,260] reduction17489.output := by lin_cert using reduction17489.terms
def image17490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17490 : InImage map_33_240 image17490 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17490 : Bundle := named_bundle% "RealMapCertificates/relations/basis17490.json"
theorem reductionProof17490 : EqualModuloRelations reduction17490.relations reduction17490.input reduction17490.output := by lin_cert using reduction17490.terms
theorem substitutionProof17490 : IsMapEvaluation generatorImages reduction17490.relations [1,1928] reduction17490.output := by lin_cert using reduction17490.terms
def image17491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17491 : InImage map_33_240 image17491 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17491 : Bundle := named_bundle% "RealMapCertificates/relations/basis17491.json"
theorem reductionProof17491 : EqualModuloRelations reduction17491.relations reduction17491.input reduction17491.output := by lin_cert using reduction17491.terms
theorem substitutionProof17491 : IsMapEvaluation generatorImages reduction17491.relations [0,0,1931] reduction17491.output := by lin_cert using reduction17491.terms
def image17492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17492 : InImage map_33_240 image17492 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17492 : Bundle := named_bundle% "RealMapCertificates/relations/basis17492.json"
theorem reductionProof17492 : EqualModuloRelations reduction17492.relations reduction17492.input reduction17492.output := by lin_cert using reduction17492.terms
theorem substitutionProof17492 : IsMapEvaluation generatorImages reduction17492.relations [0,0,1930] reduction17492.output := by lin_cert using reduction17492.terms
def map_33_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17730 : InImage map_33_241 image17730 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17730 : Bundle := named_bundle% "RealMapCertificates/relations/basis17730.json"
theorem reductionProof17730 : EqualModuloRelations reduction17730.relations reduction17730.input reduction17730.output := by lin_cert using reduction17730.terms
theorem substitutionProof17730 : IsMapEvaluation generatorImages reduction17730.relations [8,8,167,209] reduction17730.output := by lin_cert using reduction17730.terms
def image17731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17731 : InImage map_33_241 image17731 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17731 : Bundle := named_bundle% "RealMapCertificates/relations/basis17731.json"
theorem reductionProof17731 : EqualModuloRelations reduction17731.relations reduction17731.input reduction17731.output := by lin_cert using reduction17731.terms
theorem substitutionProof17731 : IsMapEvaluation generatorImages reduction17731.relations [0,1996] reduction17731.output := by lin_cert using reduction17731.terms
def image17732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17732 : InImage map_33_241 image17732 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17732 : Bundle := named_bundle% "RealMapCertificates/relations/basis17732.json"
theorem reductionProof17732 : EqualModuloRelations reduction17732.relations reduction17732.input reduction17732.output := by lin_cert using reduction17732.terms
theorem substitutionProof17732 : IsMapEvaluation generatorImages reduction17732.relations [0,3,1773] reduction17732.output := by lin_cert using reduction17732.terms
def map_33_242 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17994 : InImage map_33_242 image17994 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17994 : Bundle := named_bundle% "RealMapCertificates/relations/basis17994.json"
theorem reductionProof17994 : EqualModuloRelations reduction17994.relations reduction17994.input reduction17994.output := by lin_cert using reduction17994.terms
theorem substitutionProof17994 : IsMapEvaluation generatorImages reduction17994.relations [13,13,1079] reduction17994.output := by lin_cert using reduction17994.terms
def image17995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17995 : InImage map_33_242 image17995 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17995 : Bundle := named_bundle% "RealMapCertificates/relations/basis17995.json"
theorem reductionProof17995 : EqualModuloRelations reduction17995.relations reduction17995.input reduction17995.output := by lin_cert using reduction17995.terms
theorem substitutionProof17995 : IsMapEvaluation generatorImages reduction17995.relations [9,13,1122] reduction17995.output := by lin_cert using reduction17995.terms
def image17996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17996 : InImage map_33_242 image17996 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17996 : Bundle := named_bundle% "RealMapCertificates/relations/basis17996.json"
theorem reductionProof17996 : EqualModuloRelations reduction17996.relations reduction17996.input reduction17996.output := by lin_cert using reduction17996.terms
theorem substitutionProof17996 : IsMapEvaluation generatorImages reduction17996.relations [9,13,13,13,13,294] reduction17996.output := by lin_cert using reduction17996.terms
def image17997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17997 : InImage map_33_242 image17997 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17997 : Bundle := named_bundle% "RealMapCertificates/relations/basis17997.json"
theorem reductionProof17997 : EqualModuloRelations reduction17997.relations reduction17997.input reduction17997.output := by lin_cert using reduction17997.terms
theorem substitutionProof17997 : IsMapEvaluation generatorImages reduction17997.relations [8,188,278] reduction17997.output := by lin_cert using reduction17997.terms
def image17998 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17998 : InImage map_33_242 image17998 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17998 : Bundle := named_bundle% "RealMapCertificates/relations/basis17998.json"
theorem reductionProof17998 : EqualModuloRelations reduction17998.relations reduction17998.input reduction17998.output := by lin_cert using reduction17998.terms
theorem substitutionProof17998 : IsMapEvaluation generatorImages reduction17998.relations [8,8,8,13,692] reduction17998.output := by lin_cert using reduction17998.terms
def image17999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17999 : InImage map_33_242 image17999 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17999 : Bundle := named_bundle% "RealMapCertificates/relations/basis17999.json"
theorem reductionProof17999 : EqualModuloRelations reduction17999.relations reduction17999.input reduction17999.output := by lin_cert using reduction17999.terms
theorem substitutionProof17999 : IsMapEvaluation generatorImages reduction17999.relations [2,1928] reduction17999.output := by lin_cert using reduction17999.terms
def image18000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18000 : InImage map_33_242 image18000 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18000 : Bundle := named_bundle% "RealMapCertificates/relations/basis18000.json"
theorem reductionProof18000 : EqualModuloRelations reduction18000.relations reduction18000.input reduction18000.output := by lin_cert using reduction18000.terms
theorem substitutionProof18000 : IsMapEvaluation generatorImages reduction18000.relations [0,9,1554] reduction18000.output := by lin_cert using reduction18000.terms
def image18001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18001 : InImage map_33_242 image18001 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18001 : Bundle := named_bundle% "RealMapCertificates/relations/basis18001.json"
theorem reductionProof18001 : EqualModuloRelations reduction18001.relations reduction18001.input reduction18001.output := by lin_cert using reduction18001.terms
theorem substitutionProof18001 : IsMapEvaluation generatorImages reduction18001.relations [0,0,3,1775] reduction18001.output := by lin_cert using reduction18001.terms
def map_33_243 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18269 : InImage map_33_243 image18269 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18269 : Bundle := named_bundle% "RealMapCertificates/relations/basis18269.json"
theorem reductionProof18269 : EqualModuloRelations reduction18269.relations reduction18269.input reduction18269.output := by lin_cert using reduction18269.terms
theorem substitutionProof18269 : IsMapEvaluation generatorImages reduction18269.relations [13,13,13,13,13,287] reduction18269.output := by lin_cert using reduction18269.terms
def image18270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18270 : InImage map_33_243 image18270 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18270 : Bundle := named_bundle% "RealMapCertificates/relations/basis18270.json"
theorem reductionProof18270 : EqualModuloRelations reduction18270.relations reduction18270.input reduction18270.output := by lin_cert using reduction18270.terms
theorem substitutionProof18270 : IsMapEvaluation generatorImages reduction18270.relations [8,64,668] reduction18270.output := by lin_cert using reduction18270.terms
def image18271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18271 : InImage map_33_243 image18271 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18271 : Bundle := named_bundle% "RealMapCertificates/relations/basis18271.json"
theorem reductionProof18271 : EqualModuloRelations reduction18271.relations reduction18271.input reduction18271.output := by lin_cert using reduction18271.terms
theorem substitutionProof18271 : IsMapEvaluation generatorImages reduction18271.relations [8,13,13,80,212] reduction18271.output := by lin_cert using reduction18271.terms
def image18272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18272 : InImage map_33_243 image18272 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18272 : Bundle := named_bundle% "RealMapCertificates/relations/basis18272.json"
theorem reductionProof18272 : EqualModuloRelations reduction18272.relations reduction18272.input reduction18272.output := by lin_cert using reduction18272.terms
theorem substitutionProof18272 : IsMapEvaluation generatorImages reduction18272.relations [0,64,64,250] reduction18272.output := by lin_cert using reduction18272.terms
def image18273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18273 : InImage map_33_243 image18273 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18273 : Bundle := named_bundle% "RealMapCertificates/relations/basis18273.json"
theorem reductionProof18273 : EqualModuloRelations reduction18273.relations reduction18273.input reduction18273.output := by lin_cert using reduction18273.terms
theorem substitutionProof18273 : IsMapEvaluation generatorImages reduction18273.relations [0,2,1930] reduction18273.output := by lin_cert using reduction18273.terms
def image18274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18274 : InImage map_33_243 image18274 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18274 : Bundle := named_bundle% "RealMapCertificates/relations/basis18274.json"
theorem reductionProof18274 : EqualModuloRelations reduction18274.relations reduction18274.input reduction18274.output := by lin_cert using reduction18274.terms
theorem substitutionProof18274 : IsMapEvaluation generatorImages reduction18274.relations [0,0,0,0,0,209,347] reduction18274.output := by lin_cert using reduction18274.terms
def map_33_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18470 : InImage map_33_244 image18470 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18470 : Bundle := named_bundle% "RealMapCertificates/relations/basis18470.json"
theorem reductionProof18470 : EqualModuloRelations reduction18470.relations reduction18470.input reduction18470.output := by lin_cert using reduction18470.terms
theorem substitutionProof18470 : IsMapEvaluation generatorImages reduction18470.relations [2125] reduction18470.output := by lin_cert using reduction18470.terms
def image18471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18471 : InImage map_33_244 image18471 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18471 : Bundle := named_bundle% "RealMapCertificates/relations/basis18471.json"
theorem reductionProof18471 : EqualModuloRelations reduction18471.relations reduction18471.input reduction18471.output := by lin_cert using reduction18471.terms
theorem substitutionProof18471 : IsMapEvaluation generatorImages reduction18471.relations [2124] reduction18471.output := by lin_cert using reduction18471.terms
def image18472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18472 : InImage map_33_244 image18472 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18472 : Bundle := named_bundle% "RealMapCertificates/relations/basis18472.json"
theorem reductionProof18472 : EqualModuloRelations reduction18472.relations reduction18472.input reduction18472.output := by lin_cert using reduction18472.terms
theorem substitutionProof18472 : IsMapEvaluation generatorImages reduction18472.relations [260,293] reduction18472.output := by lin_cert using reduction18472.terms
def image18473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18473 : InImage map_33_244 image18473 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18473 : Bundle := named_bundle% "RealMapCertificates/relations/basis18473.json"
theorem reductionProof18473 : EqualModuloRelations reduction18473.relations reduction18473.input reduction18473.output := by lin_cert using reduction18473.terms
theorem substitutionProof18473 : IsMapEvaluation generatorImages reduction18473.relations [8,9,167,209] reduction18473.output := by lin_cert using reduction18473.terms
def map_33_245 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image18739 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18739 : InImage map_33_245 image18739 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18739 : Bundle := named_bundle% "RealMapCertificates/relations/basis18739.json"
theorem reductionProof18739 : EqualModuloRelations reduction18739.relations reduction18739.input reduction18739.output := by lin_cert using reduction18739.terms
theorem substitutionProof18739 : IsMapEvaluation generatorImages reduction18739.relations [2165] reduction18739.output := by lin_cert using reduction18739.terms
def image18740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18740 : InImage map_33_245 image18740 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18740 : Bundle := named_bundle% "RealMapCertificates/relations/basis18740.json"
theorem reductionProof18740 : EqualModuloRelations reduction18740.relations reduction18740.input reduction18740.output := by lin_cert using reduction18740.terms
theorem substitutionProof18740 : IsMapEvaluation generatorImages reduction18740.relations [13,13,1122] reduction18740.output := by lin_cert using reduction18740.terms
def image18741 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18741 : InImage map_33_245 image18741 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18741 : Bundle := named_bundle% "RealMapCertificates/relations/basis18741.json"
theorem reductionProof18741 : EqualModuloRelations reduction18741.relations reduction18741.input reduction18741.output := by lin_cert using reduction18741.terms
theorem substitutionProof18741 : IsMapEvaluation generatorImages reduction18741.relations [13,13,13,13,13,294] reduction18741.output := by lin_cert using reduction18741.terms
def image18742 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18742 : InImage map_33_245 image18742 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18742 : Bundle := named_bundle% "RealMapCertificates/relations/basis18742.json"
theorem reductionProof18742 : EqualModuloRelations reduction18742.relations reduction18742.input reduction18742.output := by lin_cert using reduction18742.terms
theorem substitutionProof18742 : IsMapEvaluation generatorImages reduction18742.relations [8,80,627] reduction18742.output := by lin_cert using reduction18742.terms
def image18743 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18743 : InImage map_33_245 image18743 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18743 : Bundle := named_bundle% "RealMapCertificates/relations/basis18743.json"
theorem reductionProof18743 : EqualModuloRelations reduction18743.relations reduction18743.input reduction18743.output := by lin_cert using reduction18743.terms
theorem substitutionProof18743 : IsMapEvaluation generatorImages reduction18743.relations [8,8,9,13,692] reduction18743.output := by lin_cert using reduction18743.terms
def image18744 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18744 : InImage map_33_245 image18744 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18744 : Bundle := named_bundle% "RealMapCertificates/relations/basis18744.json"
theorem reductionProof18744 : EqualModuloRelations reduction18744.relations reduction18744.input reduction18744.output := by lin_cert using reduction18744.terms
theorem substitutionProof18744 : IsMapEvaluation generatorImages reduction18744.relations [0,13,1554] reduction18744.output := by lin_cert using reduction18744.terms
def image18745 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18745 : InImage map_33_245 image18745 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18745 : Bundle := named_bundle% "RealMapCertificates/relations/basis18745.json"
theorem reductionProof18745 : EqualModuloRelations reduction18745.relations reduction18745.input reduction18745.output := by lin_cert using reduction18745.terms
theorem substitutionProof18745 : IsMapEvaluation generatorImages reduction18745.relations [0,0,2097] reduction18745.output := by lin_cert using reduction18745.terms
def map_33_246 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19033 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19033 : InImage map_33_246 image19033 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19033 : Bundle := named_bundle% "RealMapCertificates/relations/basis19033.json"
theorem reductionProof19033 : EqualModuloRelations reduction19033.relations reduction19033.input reduction19033.output := by lin_cert using reduction19033.terms
theorem substitutionProof19033 : IsMapEvaluation generatorImages reduction19033.relations [2199] reduction19033.output := by lin_cert using reduction19033.terms
def image19034 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19034 : InImage map_33_246 image19034 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19034 : Bundle := named_bundle% "RealMapCertificates/relations/basis19034.json"
theorem reductionProof19034 : EqualModuloRelations reduction19034.relations reduction19034.input reduction19034.output := by lin_cert using reduction19034.terms
theorem substitutionProof19034 : IsMapEvaluation generatorImages reduction19034.relations [9,13,13,80,212] reduction19034.output := by lin_cert using reduction19034.terms
def image19035 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19035 : InImage map_33_246 image19035 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19035 : Bundle := named_bundle% "RealMapCertificates/relations/basis19035.json"
theorem reductionProof19035 : EqualModuloRelations reduction19035.relations reduction19035.input reduction19035.output := by lin_cert using reduction19035.terms
theorem substitutionProof19035 : IsMapEvaluation generatorImages reduction19035.relations [8,8,1369] reduction19035.output := by lin_cert using reduction19035.terms
def image19036 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19036 : InImage map_33_246 image19036 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19036 : Bundle := named_bundle% "RealMapCertificates/relations/basis19036.json"
theorem reductionProof19036 : EqualModuloRelations reduction19036.relations reduction19036.input reduction19036.output := by lin_cert using reduction19036.terms
theorem substitutionProof19036 : IsMapEvaluation generatorImages reduction19036.relations [3,1928] reduction19036.output := by lin_cert using reduction19036.terms
def image19037 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19037 : InImage map_33_246 image19037 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19037 : Bundle := named_bundle% "RealMapCertificates/relations/basis19037.json"
theorem reductionProof19037 : EqualModuloRelations reduction19037.relations reduction19037.input reduction19037.output := by lin_cert using reduction19037.terms
theorem substitutionProof19037 : IsMapEvaluation generatorImages reduction19037.relations [0,2,2040] reduction19037.output := by lin_cert using reduction19037.terms
def image19038 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19038 : InImage map_33_246 image19038 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19038 : Bundle := named_bundle% "RealMapCertificates/relations/basis19038.json"
theorem reductionProof19038 : EqualModuloRelations reduction19038.relations reduction19038.input reduction19038.output := by lin_cert using reduction19038.terms
theorem substitutionProof19038 : IsMapEvaluation generatorImages reduction19038.relations [0,0,0,0,0,0,0,225,324] reduction19038.output := by lin_cert using reduction19038.terms
def map_33_247 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image19276 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19276 : InImage map_33_247 image19276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19276 : Bundle := named_bundle% "RealMapCertificates/relations/basis19276.json"
theorem reductionProof19276 : EqualModuloRelations reduction19276.relations reduction19276.input reduction19276.output := by lin_cert using reduction19276.terms
theorem substitutionProof19276 : IsMapEvaluation generatorImages reduction19276.relations [278,293] reduction19276.output := by lin_cert using reduction19276.terms
def image19277 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19277 : InImage map_33_247 image19277 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19277 : Bundle := named_bundle% "RealMapCertificates/relations/basis19277.json"
theorem reductionProof19277 : EqualModuloRelations reduction19277.relations reduction19277.input reduction19277.output := by lin_cert using reduction19277.terms
theorem substitutionProof19277 : IsMapEvaluation generatorImages reduction19277.relations [8,13,167,209] reduction19277.output := by lin_cert using reduction19277.terms
def image19278 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19278 : InImage map_33_247 image19278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19278 : Bundle := named_bundle% "RealMapCertificates/relations/basis19278.json"
theorem reductionProof19278 : EqualModuloRelations reduction19278.relations reduction19278.input reduction19278.output := by lin_cert using reduction19278.terms
theorem substitutionProof19278 : IsMapEvaluation generatorImages reduction19278.relations [1,2166] reduction19278.output := by lin_cert using reduction19278.terms
def map_33_248 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19547 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19547 : InImage map_33_248 image19547 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19547 : Bundle := named_bundle% "RealMapCertificates/relations/basis19547.json"
theorem reductionProof19547 : EqualModuloRelations reduction19547.relations reduction19547.input reduction19547.output := by lin_cert using reduction19547.terms
theorem substitutionProof19547 : IsMapEvaluation generatorImages reduction19547.relations [64,64,280] reduction19547.output := by lin_cert using reduction19547.terms
def image19548 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19548 : InImage map_33_248 image19548 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19548 : Bundle := named_bundle% "RealMapCertificates/relations/basis19548.json"
theorem reductionProof19548 : EqualModuloRelations reduction19548.relations reduction19548.input reduction19548.output := by lin_cert using reduction19548.terms
theorem substitutionProof19548 : IsMapEvaluation generatorImages reduction19548.relations [13,13,13,833] reduction19548.output := by lin_cert using reduction19548.terms
def image19549 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19549 : InImage map_33_248 image19549 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19549 : Bundle := named_bundle% "RealMapCertificates/relations/basis19549.json"
theorem reductionProof19549 : EqualModuloRelations reduction19549.relations reduction19549.input reduction19549.output := by lin_cert using reduction19549.terms
theorem substitutionProof19549 : IsMapEvaluation generatorImages reduction19549.relations [8,80,655] reduction19549.output := by lin_cert using reduction19549.terms
def image19550 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19550 : InImage map_33_248 image19550 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19550 : Bundle := named_bundle% "RealMapCertificates/relations/basis19550.json"
theorem reductionProof19550 : EqualModuloRelations reduction19550.relations reduction19550.input reduction19550.output := by lin_cert using reduction19550.terms
theorem substitutionProof19550 : IsMapEvaluation generatorImages reduction19550.relations [8,8,13,13,692] reduction19550.output := by lin_cert using reduction19550.terms
def image19551 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19551 : InImage map_33_248 image19551 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19551 : Bundle := named_bundle% "RealMapCertificates/relations/basis19551.json"
theorem reductionProof19551 : EqualModuloRelations reduction19551.relations reduction19551.input reduction19551.output := by lin_cert using reduction19551.terms
theorem substitutionProof19551 : IsMapEvaluation generatorImages reduction19551.relations [3,3,1773] reduction19551.output := by lin_cert using reduction19551.terms
def map_33_249 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19840 : InImage map_33_249 image19840 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19840 : Bundle := named_bundle% "RealMapCertificates/relations/basis19840.json"
theorem reductionProof19840 : EqualModuloRelations reduction19840.relations reduction19840.input reduction19840.output := by lin_cert using reduction19840.terms
theorem substitutionProof19840 : IsMapEvaluation generatorImages reduction19840.relations [2303] reduction19840.output := by lin_cert using reduction19840.terms
def image19841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19841 : InImage map_33_249 image19841 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19841 : Bundle := named_bundle% "RealMapCertificates/relations/basis19841.json"
theorem reductionProof19841 : EqualModuloRelations reduction19841.relations reduction19841.input reduction19841.output := by lin_cert using reduction19841.terms
theorem substitutionProof19841 : IsMapEvaluation generatorImages reduction19841.relations [17,1539] reduction19841.output := by lin_cert using reduction19841.terms
def image19842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19842 : InImage map_33_249 image19842 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19842 : Bundle := named_bundle% "RealMapCertificates/relations/basis19842.json"
theorem reductionProof19842 : EqualModuloRelations reduction19842.relations reduction19842.input reduction19842.output := by lin_cert using reduction19842.terms
theorem substitutionProof19842 : IsMapEvaluation generatorImages reduction19842.relations [13,13,13,80,212] reduction19842.output := by lin_cert using reduction19842.terms
def image19843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19843 : InImage map_33_249 image19843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19843 : Bundle := named_bundle% "RealMapCertificates/relations/basis19843.json"
theorem reductionProof19843 : EqualModuloRelations reduction19843.relations reduction19843.input reduction19843.output := by lin_cert using reduction19843.terms
theorem substitutionProof19843 : IsMapEvaluation generatorImages reduction19843.relations [8,8,1429] reduction19843.output := by lin_cert using reduction19843.terms
def image19844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19844 : InImage map_33_249 image19844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19844 : Bundle := named_bundle% "RealMapCertificates/relations/basis19844.json"
theorem reductionProof19844 : EqualModuloRelations reduction19844.relations reduction19844.input reduction19844.output := by lin_cert using reduction19844.terms
theorem substitutionProof19844 : IsMapEvaluation generatorImages reduction19844.relations [0,3,3,1775] reduction19844.output := by lin_cert using reduction19844.terms
end RealMapCertificates
