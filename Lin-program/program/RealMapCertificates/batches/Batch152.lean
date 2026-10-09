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
  | 7 => []
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 50 => [[4,4,4,7]]
  | 64 => []
  | 67 => []
  | 72 => []
  | 75 => []
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 165 => [[1,4,4,4,4,4,4,4,4]]
  | 167 => [[7,9,12]]
  | 175 => [[2,4,4,4,4,4,4,4,4]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 187 => []
  | 188 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 209 => []
  | 210 => []
  | 213 => []
  | 224 => []
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 260 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 280 => []
  | 286 => []
  | 297 => []
  | 324 => []
  | 349 => []
  | 402 => []
  | 417 => []
  | 474 => []
  | 627 => []
  | 690 => []
  | 691 => []
  | 692 => []
  | 760 => []
  | 798 => []
  | 877 => []
  | 978 => []
  | 1051 => []
  | 1062 => []
  | 1063 => []
  | 1148 => []
  | 1556 => []
  | 1759 => []
  | 1775 => []
  | 1776 => []
  | 1777 => []
  | 1835 => []
  | 1862 => []
  | 1903 => []
  | 2040 => []
  | 2279 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2335 => []
  | 2336 => []
  | 2337 => []
  | 2338 => []
  | 2339 => []
  | 2340 => []
  | 2341 => []
  | 2342 => []
  | 2380 => []
  | 2381 => []
  | 2406 => []
  | 2407 => []
  | 2439 => []
  | 2440 => []
  | 2489 => []
  | 2490 => []
  | 2492 => []
  | 2494 => []
  | 2545 => []
  | 2546 => []
  | 2547 => []
  | 2681 => []
  | 2797 => []
  | _ => []
def map_33_250 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20055 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20055 : InImage map_33_250 image20055 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20055 : Bundle := named_bundle% "RealMapCertificates/relations/basis20055.json"
theorem reductionProof20055 : EqualModuloRelations reduction20055.relations reduction20055.input reduction20055.output := by lin_cert using reduction20055.terms
theorem substitutionProof20055 : IsMapEvaluation generatorImages reduction20055.relations [2336] reduction20055.output := by lin_cert using reduction20055.terms
def image20056 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20056 : InImage map_33_250 image20056 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20056 : Bundle := named_bundle% "RealMapCertificates/relations/basis20056.json"
theorem reductionProof20056 : EqualModuloRelations reduction20056.relations reduction20056.input reduction20056.output := by lin_cert using reduction20056.terms
theorem substitutionProof20056 : IsMapEvaluation generatorImages reduction20056.relations [2335] reduction20056.output := by lin_cert using reduction20056.terms
def image20057 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20057 : InImage map_33_250 image20057 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20057 : Bundle := named_bundle% "RealMapCertificates/relations/basis20057.json"
theorem reductionProof20057 : EqualModuloRelations reduction20057.relations reduction20057.input reduction20057.output := by lin_cert using reduction20057.terms
theorem substitutionProof20057 : IsMapEvaluation generatorImages reduction20057.relations [260,349] reduction20057.output := by lin_cert using reduction20057.terms
def image20058 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20058 : InImage map_33_250 image20058 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20058 : Bundle := named_bundle% "RealMapCertificates/relations/basis20058.json"
theorem reductionProof20058 : EqualModuloRelations reduction20058.relations reduction20058.input reduction20058.output := by lin_cert using reduction20058.terms
theorem substitutionProof20058 : IsMapEvaluation generatorImages reduction20058.relations [9,13,167,209] reduction20058.output := by lin_cert using reduction20058.terms
def image20059 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20059 : InImage map_33_250 image20059 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20059 : Bundle := named_bundle% "RealMapCertificates/relations/basis20059.json"
theorem reductionProof20059 : EqualModuloRelations reduction20059.relations reduction20059.input reduction20059.output := by lin_cert using reduction20059.terms
theorem substitutionProof20059 : IsMapEvaluation generatorImages reduction20059.relations [8,1777] reduction20059.output := by lin_cert using reduction20059.terms
def image20060 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20060 : InImage map_33_250 image20060 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20060 : Bundle := named_bundle% "RealMapCertificates/relations/basis20060.json"
theorem reductionProof20060 : EqualModuloRelations reduction20060.relations reduction20060.input reduction20060.output := by lin_cert using reduction20060.terms
theorem substitutionProof20060 : IsMapEvaluation generatorImages reduction20060.relations [0,2304] reduction20060.output := by lin_cert using reduction20060.terms
def image20061 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20061 : InImage map_33_250 image20061 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20061 : Bundle := named_bundle% "RealMapCertificates/relations/basis20061.json"
theorem reductionProof20061 : EqualModuloRelations reduction20061.relations reduction20061.input reduction20061.output := by lin_cert using reduction20061.terms
theorem substitutionProof20061 : IsMapEvaluation generatorImages reduction20061.relations [0,0,7,1775] reduction20061.output := by lin_cert using reduction20061.terms
def map_33_251 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20355 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20355 : InImage map_33_251 image20355 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20355 : Bundle := named_bundle% "RealMapCertificates/relations/basis20355.json"
theorem reductionProof20355 : EqualModuloRelations reduction20355.relations reduction20355.input reduction20355.output := by lin_cert using reduction20355.terms
theorem substitutionProof20355 : IsMapEvaluation generatorImages reduction20355.relations [13,13,13,877] reduction20355.output := by lin_cert using reduction20355.terms
def image20356 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20356 : InImage map_33_251 image20356 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20356 : Bundle := named_bundle% "RealMapCertificates/relations/basis20356.json"
theorem reductionProof20356 : EqualModuloRelations reduction20356.relations reduction20356.input reduction20356.output := by lin_cert using reduction20356.terms
theorem substitutionProof20356 : IsMapEvaluation generatorImages reduction20356.relations [13,13,13,13,13,67,75] reduction20356.output := by lin_cert using reduction20356.terms
def image20357 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20357 : InImage map_33_251 image20357 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20357 : Bundle := named_bundle% "RealMapCertificates/relations/basis20357.json"
theorem reductionProof20357 : EqualModuloRelations reduction20357.relations reduction20357.input reduction20357.output := by lin_cert using reduction20357.terms
theorem substitutionProof20357 : IsMapEvaluation generatorImages reduction20357.relations [8,80,690] reduction20357.output := by lin_cert using reduction20357.terms
def image20358 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20358 : InImage map_33_251 image20358 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20358 : Bundle := named_bundle% "RealMapCertificates/relations/basis20358.json"
theorem reductionProof20358 : EqualModuloRelations reduction20358.relations reduction20358.input reduction20358.output := by lin_cert using reduction20358.terms
theorem substitutionProof20358 : IsMapEvaluation generatorImages reduction20358.relations [8,64,760] reduction20358.output := by lin_cert using reduction20358.terms
def image20359 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20359 : InImage map_33_251 image20359 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20359 : Bundle := named_bundle% "RealMapCertificates/relations/basis20359.json"
theorem reductionProof20359 : EqualModuloRelations reduction20359.relations reduction20359.input reduction20359.output := by lin_cert using reduction20359.terms
theorem substitutionProof20359 : IsMapEvaluation generatorImages reduction20359.relations [8,9,13,13,692] reduction20359.output := by lin_cert using reduction20359.terms
def image20360 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20360 : InImage map_33_251 image20360 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20360 : Bundle := named_bundle% "RealMapCertificates/relations/basis20360.json"
theorem reductionProof20360 : EqualModuloRelations reduction20360.relations reduction20360.input reduction20360.output := by lin_cert using reduction20360.terms
theorem substitutionProof20360 : IsMapEvaluation generatorImages reduction20360.relations [0,2338] reduction20360.output := by lin_cert using reduction20360.terms
def image20361 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20361 : InImage map_33_251 image20361 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20361 : Bundle := named_bundle% "RealMapCertificates/relations/basis20361.json"
theorem reductionProof20361 : EqualModuloRelations reduction20361.relations reduction20361.input reduction20361.output := by lin_cert using reduction20361.terms
theorem substitutionProof20361 : IsMapEvaluation generatorImages reduction20361.relations [0,2337] reduction20361.output := by lin_cert using reduction20361.terms
def image20362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20362 : InImage map_33_251 image20362 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20362 : Bundle := named_bundle% "RealMapCertificates/relations/basis20362.json"
theorem reductionProof20362 : EqualModuloRelations reduction20362.relations reduction20362.input reduction20362.output := by lin_cert using reduction20362.terms
theorem substitutionProof20362 : IsMapEvaluation generatorImages reduction20362.relations [0,0,2307] reduction20362.output := by lin_cert using reduction20362.terms
def map_33_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20652 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20652 : InImage map_33_252 image20652 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20652 : Bundle := named_bundle% "RealMapCertificates/relations/basis20652.json"
theorem reductionProof20652 : EqualModuloRelations reduction20652.relations reduction20652.input reduction20652.output := by lin_cert using reduction20652.terms
theorem substitutionProof20652 : IsMapEvaluation generatorImages reduction20652.relations [2406] reduction20652.output := by lin_cert using reduction20652.terms
def image20653 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20653 : InImage map_33_252 image20653 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20653 : Bundle := named_bundle% "RealMapCertificates/relations/basis20653.json"
theorem reductionProof20653 : EqualModuloRelations reduction20653.relations reduction20653.input reduction20653.output := by lin_cert using reduction20653.terms
theorem substitutionProof20653 : IsMapEvaluation generatorImages reduction20653.relations [13,13,13,13,13,13,213] reduction20653.output := by lin_cert using reduction20653.terms
def image20654 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20654 : InImage map_33_252 image20654 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20654 : Bundle := named_bundle% "RealMapCertificates/relations/basis20654.json"
theorem reductionProof20654 : EqualModuloRelations reduction20654.relations reduction20654.input reduction20654.output := by lin_cert using reduction20654.terms
theorem substitutionProof20654 : IsMapEvaluation generatorImages reduction20654.relations [8,1835] reduction20654.output := by lin_cert using reduction20654.terms
def image20655 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20655 : InImage map_33_252 image20655 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20655 : Bundle := named_bundle% "RealMapCertificates/relations/basis20655.json"
theorem reductionProof20655 : EqualModuloRelations reduction20655.relations reduction20655.input reduction20655.output := by lin_cert using reduction20655.terms
theorem substitutionProof20655 : IsMapEvaluation generatorImages reduction20655.relations [8,8,8,1148] reduction20655.output := by lin_cert using reduction20655.terms
def image20656 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20656 : InImage map_33_252 image20656 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20656 : Bundle := named_bundle% "RealMapCertificates/relations/basis20656.json"
theorem reductionProof20656 : EqualModuloRelations reduction20656.relations reduction20656.input reduction20656.output := by lin_cert using reduction20656.terms
theorem substitutionProof20656 : IsMapEvaluation generatorImages reduction20656.relations [1,2338] reduction20656.output := by lin_cert using reduction20656.terms
def image20657 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20657 : InImage map_33_252 image20657 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20657 : Bundle := named_bundle% "RealMapCertificates/relations/basis20657.json"
theorem reductionProof20657 : EqualModuloRelations reduction20657.relations reduction20657.input reduction20657.output := by lin_cert using reduction20657.terms
theorem substitutionProof20657 : IsMapEvaluation generatorImages reduction20657.relations [0,0,2340] reduction20657.output := by lin_cert using reduction20657.terms
def image20658 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20658 : InImage map_33_252 image20658 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20658 : Bundle := named_bundle% "RealMapCertificates/relations/basis20658.json"
theorem reductionProof20658 : EqualModuloRelations reduction20658.relations reduction20658.input reduction20658.output := by lin_cert using reduction20658.terms
theorem substitutionProof20658 : IsMapEvaluation generatorImages reduction20658.relations [0,0,2339] reduction20658.output := by lin_cert using reduction20658.terms
def image20659 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20659 : InImage map_33_252 image20659 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20659 : Bundle := named_bundle% "RealMapCertificates/relations/basis20659.json"
theorem reductionProof20659 : EqualModuloRelations reduction20659.relations reduction20659.input reduction20659.output := by lin_cert using reduction20659.terms
theorem substitutionProof20659 : IsMapEvaluation generatorImages reduction20659.relations [0,0,0,0,2279] reduction20659.output := by lin_cert using reduction20659.terms
def map_33_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20889 : InImage map_33_253 image20889 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20889 : Bundle := named_bundle% "RealMapCertificates/relations/basis20889.json"
theorem reductionProof20889 : EqualModuloRelations reduction20889.relations reduction20889.input reduction20889.output := by lin_cert using reduction20889.terms
theorem substitutionProof20889 : IsMapEvaluation generatorImages reduction20889.relations [2439] reduction20889.output := by lin_cert using reduction20889.terms
def image20890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20890 : InImage map_33_253 image20890 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20890 : Bundle := named_bundle% "RealMapCertificates/relations/basis20890.json"
theorem reductionProof20890 : EqualModuloRelations reduction20890.relations reduction20890.input reduction20890.output := by lin_cert using reduction20890.terms
theorem substitutionProof20890 : IsMapEvaluation generatorImages reduction20890.relations [13,13,167,209] reduction20890.output := by lin_cert using reduction20890.terms
def image20891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20891 : InImage map_33_253 image20891 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20891 : Bundle := named_bundle% "RealMapCertificates/relations/basis20891.json"
theorem reductionProof20891 : EqualModuloRelations reduction20891.relations reduction20891.input reduction20891.output := by lin_cert using reduction20891.terms
theorem substitutionProof20891 : IsMapEvaluation generatorImages reduction20891.relations [8,1862] reduction20891.output := by lin_cert using reduction20891.terms
def image20892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20892 : InImage map_33_253 image20892 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20892 : Bundle := named_bundle% "RealMapCertificates/relations/basis20892.json"
theorem reductionProof20892 : EqualModuloRelations reduction20892.relations reduction20892.input reduction20892.output := by lin_cert using reduction20892.terms
theorem substitutionProof20892 : IsMapEvaluation generatorImages reduction20892.relations [0,2407] reduction20892.output := by lin_cert using reduction20892.terms
def image20893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20893 : InImage map_33_253 image20893 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20893 : Bundle := named_bundle% "RealMapCertificates/relations/basis20893.json"
theorem reductionProof20893 : EqualModuloRelations reduction20893.relations reduction20893.input reduction20893.output := by lin_cert using reduction20893.terms
theorem substitutionProof20893 : IsMapEvaluation generatorImages reduction20893.relations [0,0,2380] reduction20893.output := by lin_cert using reduction20893.terms
def image20894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20894 : InImage map_33_253 image20894 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20894 : Bundle := named_bundle% "RealMapCertificates/relations/basis20894.json"
theorem reductionProof20894 : EqualModuloRelations reduction20894.relations reduction20894.input reduction20894.output := by lin_cert using reduction20894.terms
theorem substitutionProof20894 : IsMapEvaluation generatorImages reduction20894.relations [0,0,0,2342] reduction20894.output := by lin_cert using reduction20894.terms
def image20895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20895 : InImage map_33_253 image20895 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20895 : Bundle := named_bundle% "RealMapCertificates/relations/basis20895.json"
theorem reductionProof20895 : EqualModuloRelations reduction20895.relations reduction20895.input reduction20895.output := by lin_cert using reduction20895.terms
theorem substitutionProof20895 : IsMapEvaluation generatorImages reduction20895.relations [0,0,0,2341] reduction20895.output := by lin_cert using reduction20895.terms
def map_33_254 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21188 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21188 : InImage map_33_254 image21188 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21188 : Bundle := named_bundle% "RealMapCertificates/relations/basis21188.json"
theorem reductionProof21188 : EqualModuloRelations reduction21188.relations reduction21188.input reduction21188.output := by lin_cert using reduction21188.terms
theorem substitutionProof21188 : IsMapEvaluation generatorImages reduction21188.relations [9,80,690] reduction21188.output := by lin_cert using reduction21188.terms
def image21189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21189 : InImage map_33_254 image21189 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21189 : Bundle := named_bundle% "RealMapCertificates/relations/basis21189.json"
theorem reductionProof21189 : EqualModuloRelations reduction21189.relations reduction21189.input reduction21189.output := by lin_cert using reduction21189.terms
theorem substitutionProof21189 : IsMapEvaluation generatorImages reduction21189.relations [8,64,798] reduction21189.output := by lin_cert using reduction21189.terms
def image21190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21190 : InImage map_33_254 image21190 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21190 : Bundle := named_bundle% "RealMapCertificates/relations/basis21190.json"
theorem reductionProof21190 : EqualModuloRelations reduction21190.relations reduction21190.input reduction21190.output := by lin_cert using reduction21190.terms
theorem substitutionProof21190 : IsMapEvaluation generatorImages reduction21190.relations [8,13,13,13,692] reduction21190.output := by lin_cert using reduction21190.terms
def image21191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21191 : InImage map_33_254 image21191 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21191 : Bundle := named_bundle% "RealMapCertificates/relations/basis21191.json"
theorem reductionProof21191 : EqualModuloRelations reduction21191.relations reduction21191.input reduction21191.output := by lin_cert using reduction21191.terms
theorem substitutionProof21191 : IsMapEvaluation generatorImages reduction21191.relations [0,0,67,978] reduction21191.output := by lin_cert using reduction21191.terms
def image21192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21192 : InImage map_33_254 image21192 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21192 : Bundle := named_bundle% "RealMapCertificates/relations/basis21192.json"
theorem reductionProof21192 : EqualModuloRelations reduction21192.relations reduction21192.input reduction21192.output := by lin_cert using reduction21192.terms
theorem substitutionProof21192 : IsMapEvaluation generatorImages reduction21192.relations [0,0,0,2381] reduction21192.output := by lin_cert using reduction21192.terms
def image21193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21193 : InImage map_33_254 image21193 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21193 : Bundle := named_bundle% "RealMapCertificates/relations/basis21193.json"
theorem reductionProof21193 : EqualModuloRelations reduction21193.relations reduction21193.input reduction21193.output := by lin_cert using reduction21193.terms
theorem substitutionProof21193 : IsMapEvaluation generatorImages reduction21193.relations [0,0,0,0,0,2309] reduction21193.output := by lin_cert using reduction21193.terms
def map_33_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21522 : InImage map_33_255 image21522 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21522 : Bundle := named_bundle% "RealMapCertificates/relations/basis21522.json"
theorem reductionProof21522 : EqualModuloRelations reduction21522.relations reduction21522.input reduction21522.output := by lin_cert using reduction21522.terms
theorem substitutionProof21522 : IsMapEvaluation generatorImages reduction21522.relations [2546] reduction21522.output := by lin_cert using reduction21522.terms
def image21523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21523 : InImage map_33_255 image21523 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21523 : Bundle := named_bundle% "RealMapCertificates/relations/basis21523.json"
theorem reductionProof21523 : EqualModuloRelations reduction21523.relations reduction21523.input reduction21523.output := by lin_cert using reduction21523.terms
theorem substitutionProof21523 : IsMapEvaluation generatorImages reduction21523.relations [2545] reduction21523.output := by lin_cert using reduction21523.terms
def image21524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21524 : InImage map_33_255 image21524 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21524 : Bundle := named_bundle% "RealMapCertificates/relations/basis21524.json"
theorem reductionProof21524 : EqualModuloRelations reduction21524.relations reduction21524.input reduction21524.output := by lin_cert using reduction21524.terms
theorem substitutionProof21524 : IsMapEvaluation generatorImages reduction21524.relations [8,1903] reduction21524.output := by lin_cert using reduction21524.terms
def image21525 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21525 : InImage map_33_255 image21525 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21525 : Bundle := named_bundle% "RealMapCertificates/relations/basis21525.json"
theorem reductionProof21525 : EqualModuloRelations reduction21525.relations reduction21525.input reduction21525.output := by lin_cert using reduction21525.terms
theorem substitutionProof21525 : IsMapEvaluation generatorImages reduction21525.relations [8,8,9,1148] reduction21525.output := by lin_cert using reduction21525.terms
def image21526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21526 : InImage map_33_255 image21526 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21526 : Bundle := named_bundle% "RealMapCertificates/relations/basis21526.json"
theorem reductionProof21526 : EqualModuloRelations reduction21526.relations reduction21526.input reduction21526.output := by lin_cert using reduction21526.terms
theorem substitutionProof21526 : IsMapEvaluation generatorImages reduction21526.relations [1,1,2380] reduction21526.output := by lin_cert using reduction21526.terms
def image21527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21527 : InImage map_33_255 image21527 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21527 : Bundle := named_bundle% "RealMapCertificates/relations/basis21527.json"
theorem reductionProof21527 : EqualModuloRelations reduction21527.relations reduction21527.input reduction21527.output := by lin_cert using reduction21527.terms
theorem substitutionProof21527 : IsMapEvaluation generatorImages reduction21527.relations [0,0,0,0,0,0,0,0,0,0,0,246,324] reduction21527.output := by lin_cert using reduction21527.terms
def map_33_256 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21782 : InImage map_33_256 image21782 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21782 : Bundle := named_bundle% "RealMapCertificates/relations/basis21782.json"
theorem reductionProof21782 : EqualModuloRelations reduction21782.relations reduction21782.input reduction21782.output := by lin_cert using reduction21782.terms
theorem substitutionProof21782 : IsMapEvaluation generatorImages reduction21782.relations [64,1063] reduction21782.output := by lin_cert using reduction21782.terms
def image21783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21783 : InImage map_33_256 image21783 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21783 : Bundle := named_bundle% "RealMapCertificates/relations/basis21783.json"
theorem reductionProof21783 : EqualModuloRelations reduction21783.relations reduction21783.input reduction21783.output := by lin_cert using reduction21783.terms
theorem substitutionProof21783 : IsMapEvaluation generatorImages reduction21783.relations [64,1062] reduction21783.output := by lin_cert using reduction21783.terms
def image21784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21784 : InImage map_33_256 image21784 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21784 : Bundle := named_bundle% "RealMapCertificates/relations/basis21784.json"
theorem reductionProof21784 : EqualModuloRelations reduction21784.relations reduction21784.input reduction21784.output := by lin_cert using reduction21784.terms
theorem substitutionProof21784 : IsMapEvaluation generatorImages reduction21784.relations [13,1776] reduction21784.output := by lin_cert using reduction21784.terms
def image21785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21785 : InImage map_33_256 image21785 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21785 : Bundle := named_bundle% "RealMapCertificates/relations/basis21785.json"
theorem reductionProof21785 : EqualModuloRelations reduction21785.relations reduction21785.input reduction21785.output := by lin_cert using reduction21785.terms
theorem substitutionProof21785 : IsMapEvaluation generatorImages reduction21785.relations [13,13,13,13,13,417] reduction21785.output := by lin_cert using reduction21785.terms
def image21786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21786 : InImage map_33_256 image21786 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21786 : Bundle := named_bundle% "RealMapCertificates/relations/basis21786.json"
theorem reductionProof21786 : EqualModuloRelations reduction21786.relations reduction21786.input reduction21786.output := by lin_cert using reduction21786.terms
theorem substitutionProof21786 : IsMapEvaluation generatorImages reduction21786.relations [8,8,1556] reduction21786.output := by lin_cert using reduction21786.terms
def image21787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21787 : InImage map_33_256 image21787 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21787 : Bundle := named_bundle% "RealMapCertificates/relations/basis21787.json"
theorem reductionProof21787 : EqualModuloRelations reduction21787.relations reduction21787.input reduction21787.output := by lin_cert using reduction21787.terms
theorem substitutionProof21787 : IsMapEvaluation generatorImages reduction21787.relations [0,0,2489] reduction21787.output := by lin_cert using reduction21787.terms
def image21788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21788 : InImage map_33_256 image21788 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21788 : Bundle := named_bundle% "RealMapCertificates/relations/basis21788.json"
theorem reductionProof21788 : EqualModuloRelations reduction21788.relations reduction21788.input reduction21788.output := by lin_cert using reduction21788.terms
theorem substitutionProof21788 : IsMapEvaluation generatorImages reduction21788.relations [0,0,297,324] reduction21788.output := by lin_cert using reduction21788.terms
def image21789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21789 : InImage map_33_256 image21789 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21789 : Bundle := named_bundle% "RealMapCertificates/relations/basis21789.json"
theorem reductionProof21789 : EqualModuloRelations reduction21789.relations reduction21789.input reduction21789.output := by lin_cert using reduction21789.terms
theorem substitutionProof21789 : IsMapEvaluation generatorImages reduction21789.relations [0,0,2,2341] reduction21789.output := by lin_cert using reduction21789.terms
def map_33_257 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22136 : InImage map_33_257 image22136 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22136 : Bundle := named_bundle% "RealMapCertificates/relations/basis22136.json"
theorem reductionProof22136 : EqualModuloRelations reduction22136.relations reduction22136.input reduction22136.output := by lin_cert using reduction22136.terms
theorem substitutionProof22136 : IsMapEvaluation generatorImages reduction22136.relations [13,80,690] reduction22136.output := by lin_cert using reduction22136.terms
def image22137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22137 : InImage map_33_257 image22137 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22137 : Bundle := named_bundle% "RealMapCertificates/relations/basis22137.json"
theorem reductionProof22137 : EqualModuloRelations reduction22137.relations reduction22137.input reduction22137.output := by lin_cert using reduction22137.terms
theorem substitutionProof22137 : IsMapEvaluation generatorImages reduction22137.relations [9,13,13,13,692] reduction22137.output := by lin_cert using reduction22137.terms
def image22138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22138 : InImage map_33_257 image22138 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22138 : Bundle := named_bundle% "RealMapCertificates/relations/basis22138.json"
theorem reductionProof22138 : EqualModuloRelations reduction22138.relations reduction22138.input reduction22138.output := by lin_cert using reduction22138.terms
theorem substitutionProof22138 : IsMapEvaluation generatorImages reduction22138.relations [8,16,188,209] reduction22138.output := by lin_cert using reduction22138.terms
def image22139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22139 : InImage map_33_257 image22139 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22139 : Bundle := named_bundle% "RealMapCertificates/relations/basis22139.json"
theorem reductionProof22139 : EqualModuloRelations reduction22139.relations reduction22139.input reduction22139.output := by lin_cert using reduction22139.terms
theorem substitutionProof22139 : IsMapEvaluation generatorImages reduction22139.relations [2,2440] reduction22139.output := by lin_cert using reduction22139.terms
def image22140 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22140 : InImage map_33_257 image22140 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22140 : Bundle := named_bundle% "RealMapCertificates/relations/basis22140.json"
theorem reductionProof22140 : EqualModuloRelations reduction22140.relations reduction22140.input reduction22140.output := by lin_cert using reduction22140.terms
theorem substitutionProof22140 : IsMapEvaluation generatorImages reduction22140.relations [1,2547] reduction22140.output := by lin_cert using reduction22140.terms
def image22141 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22141 : InImage map_33_257 image22141 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22141 : Bundle := named_bundle% "RealMapCertificates/relations/basis22141.json"
theorem reductionProof22141 : EqualModuloRelations reduction22141.relations reduction22141.input reduction22141.output := by lin_cert using reduction22141.terms
theorem substitutionProof22141 : IsMapEvaluation generatorImages reduction22141.relations [0,0,64,1051] reduction22141.output := by lin_cert using reduction22141.terms
def image22142 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22142 : InImage map_33_257 image22142 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22142 : Bundle := named_bundle% "RealMapCertificates/relations/basis22142.json"
theorem reductionProof22142 : EqualModuloRelations reduction22142.relations reduction22142.input reduction22142.output := by lin_cert using reduction22142.terms
theorem substitutionProof22142 : IsMapEvaluation generatorImages reduction22142.relations [0,0,0,2490] reduction22142.output := by lin_cert using reduction22142.terms
def map_33_258 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22491 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22491 : InImage map_33_258 image22491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22491 : Bundle := named_bundle% "RealMapCertificates/relations/basis22491.json"
theorem reductionProof22491 : EqualModuloRelations reduction22491.relations reduction22491.input reduction22491.output := by lin_cert using reduction22491.terms
theorem substitutionProof22491 : IsMapEvaluation generatorImages reduction22491.relations [2681] reduction22491.output := by lin_cert using reduction22491.terms
def image22492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22492 : InImage map_33_258 image22492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22492 : Bundle := named_bundle% "RealMapCertificates/relations/basis22492.json"
theorem reductionProof22492 : EqualModuloRelations reduction22492.relations reduction22492.input reduction22492.output := by lin_cert using reduction22492.terms
theorem substitutionProof22492 : IsMapEvaluation generatorImages reduction22492.relations [9,1903] reduction22492.output := by lin_cert using reduction22492.terms
def image22493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22493 : InImage map_33_258 image22493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22493 : Bundle := named_bundle% "RealMapCertificates/relations/basis22493.json"
theorem reductionProof22493 : EqualModuloRelations reduction22493.relations reduction22493.input reduction22493.output := by lin_cert using reduction22493.terms
theorem substitutionProof22493 : IsMapEvaluation generatorImages reduction22493.relations [9,13,13,13,13,474] reduction22493.output := by lin_cert using reduction22493.terms
def image22494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22494 : InImage map_33_258 image22494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22494 : Bundle := named_bundle% "RealMapCertificates/relations/basis22494.json"
theorem reductionProof22494 : EqualModuloRelations reduction22494.relations reduction22494.input reduction22494.output := by lin_cert using reduction22494.terms
theorem substitutionProof22494 : IsMapEvaluation generatorImages reduction22494.relations [8,8,13,1148] reduction22494.output := by lin_cert using reduction22494.terms
def image22495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22495 : InImage map_33_258 image22495 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22495 : Bundle := named_bundle% "RealMapCertificates/relations/basis22495.json"
theorem reductionProof22495 : EqualModuloRelations reduction22495.relations reduction22495.input reduction22495.output := by lin_cert using reduction22495.terms
theorem substitutionProof22495 : IsMapEvaluation generatorImages reduction22495.relations [3,2337] reduction22495.output := by lin_cert using reduction22495.terms
def image22496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22496 : InImage map_33_258 image22496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22496 : Bundle := named_bundle% "RealMapCertificates/relations/basis22496.json"
theorem reductionProof22496 : EqualModuloRelations reduction22496.relations reduction22496.input reduction22496.output := by lin_cert using reduction22496.terms
theorem substitutionProof22496 : IsMapEvaluation generatorImages reduction22496.relations [0,0,0,0,2492] reduction22496.output := by lin_cert using reduction22496.terms
def map_33_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22795 : InImage map_33_259 image22795 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22795 : Bundle := named_bundle% "RealMapCertificates/relations/basis22795.json"
theorem reductionProof22795 : EqualModuloRelations reduction22795.relations reduction22795.input reduction22795.output := by lin_cert using reduction22795.terms
theorem substitutionProof22795 : IsMapEvaluation generatorImages reduction22795.relations [72,1062] reduction22795.output := by lin_cert using reduction22795.terms
def image22796 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22796 : InImage map_33_259 image22796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22796 : Bundle := named_bundle% "RealMapCertificates/relations/basis22796.json"
theorem reductionProof22796 : EqualModuloRelations reduction22796.relations reduction22796.input reduction22796.output := by lin_cert using reduction22796.terms
theorem substitutionProof22796 : IsMapEvaluation generatorImages reduction22796.relations [13,1862] reduction22796.output := by lin_cert using reduction22796.terms
def image22797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22797 : InImage map_33_259 image22797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22797 : Bundle := named_bundle% "RealMapCertificates/relations/basis22797.json"
theorem reductionProof22797 : EqualModuloRelations reduction22797.relations reduction22797.input reduction22797.output := by lin_cert using reduction22797.terms
theorem substitutionProof22797 : IsMapEvaluation generatorImages reduction22797.relations [13,13,13,67,286] reduction22797.output := by lin_cert using reduction22797.terms
def image22798 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22798 : InImage map_33_259 image22798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22798 : Bundle := named_bundle% "RealMapCertificates/relations/basis22798.json"
theorem reductionProof22798 : EqualModuloRelations reduction22798.relations reduction22798.input reduction22798.output := by lin_cert using reduction22798.terms
theorem substitutionProof22798 : IsMapEvaluation generatorImages reduction22798.relations [8,9,1556] reduction22798.output := by lin_cert using reduction22798.terms
def image22799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22799 : InImage map_33_259 image22799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22799 : Bundle := named_bundle% "RealMapCertificates/relations/basis22799.json"
theorem reductionProof22799 : EqualModuloRelations reduction22799.relations reduction22799.input reduction22799.output := by lin_cert using reduction22799.terms
theorem substitutionProof22799 : IsMapEvaluation generatorImages reduction22799.relations [0,0,8,224,324] reduction22799.output := by lin_cert using reduction22799.terms
def image22800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22800 : InImage map_33_259 image22800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22800 : Bundle := named_bundle% "RealMapCertificates/relations/basis22800.json"
theorem reductionProof22800 : EqualModuloRelations reduction22800.relations reduction22800.input reduction22800.output := by lin_cert using reduction22800.terms
theorem substitutionProof22800 : IsMapEvaluation generatorImages reduction22800.relations [0,0,0,0,0,2494] reduction22800.output := by lin_cert using reduction22800.terms
def map_33_260 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23175 : InImage map_33_260 image23175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23175 : Bundle := named_bundle% "RealMapCertificates/relations/basis23175.json"
theorem reductionProof23175 : EqualModuloRelations reduction23175.relations reduction23175.input reduction23175.output := by lin_cert using reduction23175.terms
theorem substitutionProof23175 : IsMapEvaluation generatorImages reduction23175.relations [2797] reduction23175.output := by lin_cert using reduction23175.terms
def image23176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23176 : InImage map_33_260 image23176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23176 : Bundle := named_bundle% "RealMapCertificates/relations/basis23176.json"
theorem reductionProof23176 : EqualModuloRelations reduction23176.relations reduction23176.input reduction23176.output := by lin_cert using reduction23176.terms
theorem substitutionProof23176 : IsMapEvaluation generatorImages reduction23176.relations [13,13,13,13,692] reduction23176.output := by lin_cert using reduction23176.terms
def image23177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23177 : InImage map_33_260 image23177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23177 : Bundle := named_bundle% "RealMapCertificates/relations/basis23177.json"
theorem reductionProof23177 : EqualModuloRelations reduction23177.relations reduction23177.input reduction23177.output := by lin_cert using reduction23177.terms
theorem substitutionProof23177 : IsMapEvaluation generatorImages reduction23177.relations [13,13,13,13,691] reduction23177.output := by lin_cert using reduction23177.terms
def image23178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23178 : InImage map_33_260 image23178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23178 : Bundle := named_bundle% "RealMapCertificates/relations/basis23178.json"
theorem reductionProof23178 : EqualModuloRelations reduction23178.relations reduction23178.input reduction23178.output := by lin_cert using reduction23178.terms
theorem substitutionProof23178 : IsMapEvaluation generatorImages reduction23178.relations [8,8,187,280] reduction23178.output := by lin_cert using reduction23178.terms
def map_33_261 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23605 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23605 : InImage map_33_261 image23605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23605 : Bundle := named_bundle% "RealMapCertificates/relations/basis23605.json"
theorem reductionProof23605 : EqualModuloRelations reduction23605.relations reduction23605.input reduction23605.output := by lin_cert using reduction23605.terms
theorem substitutionProof23605 : IsMapEvaluation generatorImages reduction23605.relations [16,1759] reduction23605.output := by lin_cert using reduction23605.terms
def image23606 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23606 : InImage map_33_261 image23606 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23606 : Bundle := named_bundle% "RealMapCertificates/relations/basis23606.json"
theorem reductionProof23606 : EqualModuloRelations reduction23606.relations reduction23606.input reduction23606.output := by lin_cert using reduction23606.terms
theorem substitutionProof23606 : IsMapEvaluation generatorImages reduction23606.relations [13,1903] reduction23606.output := by lin_cert using reduction23606.terms
def image23607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23607 : InImage map_33_261 image23607 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23607 : Bundle := named_bundle% "RealMapCertificates/relations/basis23607.json"
theorem reductionProof23607 : EqualModuloRelations reduction23607.relations reduction23607.input reduction23607.output := by lin_cert using reduction23607.terms
theorem substitutionProof23607 : IsMapEvaluation generatorImages reduction23607.relations [13,13,13,13,13,474] reduction23607.output := by lin_cert using reduction23607.terms
def image23608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23608 : InImage map_33_261 image23608 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23608 : Bundle := named_bundle% "RealMapCertificates/relations/basis23608.json"
theorem reductionProof23608 : EqualModuloRelations reduction23608.relations reduction23608.input reduction23608.output := by lin_cert using reduction23608.terms
theorem substitutionProof23608 : IsMapEvaluation generatorImages reduction23608.relations [8,9,13,1148] reduction23608.output := by lin_cert using reduction23608.terms
def image23609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23609 : InImage map_33_261 image23609 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23609 : Bundle := named_bundle% "RealMapCertificates/relations/basis23609.json"
theorem reductionProof23609 : EqualModuloRelations reduction23609.relations reduction23609.input reduction23609.output := by lin_cert using reduction23609.terms
theorem substitutionProof23609 : IsMapEvaluation generatorImages reduction23609.relations [2,7,2040] reduction23609.output := by lin_cert using reduction23609.terms
def image23610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23610 : InImage map_33_261 image23610 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23610 : Bundle := named_bundle% "RealMapCertificates/relations/basis23610.json"
theorem reductionProof23610 : EqualModuloRelations reduction23610.relations reduction23610.input reduction23610.output := by lin_cert using reduction23610.terms
theorem substitutionProof23610 : IsMapEvaluation generatorImages reduction23610.relations [0,187,627] reduction23610.output := by lin_cert using reduction23610.terms
def map_34_34 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image112 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation112 : InImage map_34_34 image112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction112 : Bundle := named_bundle% "RealMapCertificates/relations/basis112.json"
theorem reductionProof112 : EqualModuloRelations reduction112.relations reduction112.input reduction112.output := by lin_cert using reduction112.terms
theorem substitutionProof112 : IsMapEvaluation generatorImages reduction112.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction112.output := by lin_cert using reduction112.terms
def map_34_100 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1215 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1215 : InImage map_34_100 image1215 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1215 : Bundle := named_bundle% "RealMapCertificates/relations/basis1215.json"
theorem reductionProof1215 : EqualModuloRelations reduction1215.relations reduction1215.input reduction1215.output := by lin_cert using reduction1215.terms
theorem substitutionProof1215 : IsMapEvaluation generatorImages reduction1215.relations [1,165] reduction1215.output := by lin_cert using reduction1215.terms
def map_34_101 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1247 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1247 : InImage map_34_101 image1247 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1247 : Bundle := named_bundle% "RealMapCertificates/relations/basis1247.json"
theorem reductionProof1247 : EqualModuloRelations reduction1247.relations reduction1247.input reduction1247.output := by lin_cert using reduction1247.terms
theorem substitutionProof1247 : IsMapEvaluation generatorImages reduction1247.relations [0,175] reduction1247.output := by lin_cert using reduction1247.terms
def map_34_104 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1341 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1341 : InImage map_34_104 image1341 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1341 : Bundle := named_bundle% "RealMapCertificates/relations/basis1341.json"
theorem reductionProof1341 : EqualModuloRelations reduction1341.relations reduction1341.input reduction1341.output := by lin_cert using reduction1341.terms
theorem substitutionProof1341 : IsMapEvaluation generatorImages reduction1341.relations [0,0,182] reduction1341.output := by lin_cert using reduction1341.terms
def map_34_105 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1374 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1374 : InImage map_34_105 image1374 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1374 : Bundle := named_bundle% "RealMapCertificates/relations/basis1374.json"
theorem reductionProof1374 : EqualModuloRelations reduction1374.relations reduction1374.input reduction1374.output := by lin_cert using reduction1374.terms
theorem substitutionProof1374 : IsMapEvaluation generatorImages reduction1374.relations [0,0,0,183] reduction1374.output := by lin_cert using reduction1374.terms
def map_34_106 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image1412 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1412 : InImage map_34_106 image1412 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1412 : Bundle := named_bundle% "RealMapCertificates/relations/basis1412.json"
theorem reductionProof1412 : EqualModuloRelations reduction1412.relations reduction1412.input reduction1412.output := by lin_cert using reduction1412.terms
theorem substitutionProof1412 : IsMapEvaluation generatorImages reduction1412.relations [1,1,182] reduction1412.output := by lin_cert using reduction1412.terms
def map_34_107 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1449 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1449 : InImage map_34_107 image1449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1449 : Bundle := named_bundle% "RealMapCertificates/relations/basis1449.json"
theorem reductionProof1449 : EqualModuloRelations reduction1449.relations reduction1449.input reduction1449.output := by lin_cert using reduction1449.terms
theorem substitutionProof1449 : IsMapEvaluation generatorImages reduction1449.relations [0,0,199] reduction1449.output := by lin_cert using reduction1449.terms
def map_34_110 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image1553 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation1553 : InImage map_34_110 image1553 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1553 : Bundle := named_bundle% "RealMapCertificates/relations/basis1553.json"
theorem reductionProof1553 : EqualModuloRelations reduction1553.relations reduction1553.input reduction1553.output := by lin_cert using reduction1553.terms
theorem substitutionProof1553 : IsMapEvaluation generatorImages reduction1553.relations [0,0,8,145] reduction1553.output := by lin_cert using reduction1553.terms
def map_34_112 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1633 : InImage map_34_112 image1633 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1633 : Bundle := named_bundle% "RealMapCertificates/relations/basis1633.json"
theorem reductionProof1633 : EqualModuloRelations reduction1633.relations reduction1633.input reduction1633.output := by lin_cert using reduction1633.terms
theorem substitutionProof1633 : IsMapEvaluation generatorImages reduction1633.relations [0,0,0,0,17,111] reduction1633.output := by lin_cert using reduction1633.terms
def map_34_113 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image1670 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1670 : InImage map_34_113 image1670 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1670 : Bundle := named_bundle% "RealMapCertificates/relations/basis1670.json"
theorem reductionProof1670 : EqualModuloRelations reduction1670.relations reduction1670.input reduction1670.output := by lin_cert using reduction1670.terms
theorem substitutionProof1670 : IsMapEvaluation generatorImages reduction1670.relations [0,0,8,152] reduction1670.output := by lin_cert using reduction1670.terms
def image1671 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1671 : InImage map_34_113 image1671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1671 : Bundle := named_bundle% "RealMapCertificates/relations/basis1671.json"
theorem reductionProof1671 : EqualModuloRelations reduction1671.relations reduction1671.input reduction1671.output := by lin_cert using reduction1671.terms
theorem substitutionProof1671 : IsMapEvaluation generatorImages reduction1671.relations [0,0,0,0,0,210] reduction1671.output := by lin_cert using reduction1671.terms
def map_34_116 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1772 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1772 : InImage map_34_116 image1772 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1772 : Bundle := named_bundle% "RealMapCertificates/relations/basis1772.json"
theorem reductionProof1772 : EqualModuloRelations reduction1772.relations reduction1772.input reduction1772.output := by lin_cert using reduction1772.terms
theorem substitutionProof1772 : IsMapEvaluation generatorImages reduction1772.relations [0,0,8,8,110] reduction1772.output := by lin_cert using reduction1772.terms
def map_34_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1887 : InImage map_34_119 image1887 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1887 : Bundle := named_bundle% "RealMapCertificates/relations/basis1887.json"
theorem reductionProof1887 : EqualModuloRelations reduction1887.relations reduction1887.input reduction1887.output := by lin_cert using reduction1887.terms
theorem substitutionProof1887 : IsMapEvaluation generatorImages reduction1887.relations [0,0,0,0,0,0,0,0,224] reduction1887.output := by lin_cert using reduction1887.terms
def map_34_122 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image2006 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation2006 : InImage map_34_122 image2006 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2006 : Bundle := named_bundle% "RealMapCertificates/relations/basis2006.json"
theorem reductionProof2006 : EqualModuloRelations reduction2006.relations reduction2006.input reduction2006.output := by lin_cert using reduction2006.terms
theorem substitutionProof2006 : IsMapEvaluation generatorImages reduction2006.relations [1,265] reduction2006.output := by lin_cert using reduction2006.terms
def map_34_123 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2039 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2039 : InImage map_34_123 image2039 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2039 : Bundle := named_bundle% "RealMapCertificates/relations/basis2039.json"
theorem reductionProof2039 : EqualModuloRelations reduction2039.relations reduction2039.input reduction2039.output := by lin_cert using reduction2039.terms
theorem substitutionProof2039 : IsMapEvaluation generatorImages reduction2039.relations [17,153] reduction2039.output := by lin_cert using reduction2039.terms
def map_34_126 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2166 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2166 : InImage map_34_126 image2166 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2166 : Bundle := named_bundle% "RealMapCertificates/relations/basis2166.json"
theorem reductionProof2166 : EqualModuloRelations reduction2166.relations reduction2166.input reduction2166.output := by lin_cert using reduction2166.terms
theorem substitutionProof2166 : IsMapEvaluation generatorImages reduction2166.relations [8,17,111] reduction2166.output := by lin_cert using reduction2166.terms
def map_34_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2265 : InImage map_34_128 image2265 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2265 : Bundle := named_bundle% "RealMapCertificates/relations/basis2265.json"
theorem reductionProof2265 : EqualModuloRelations reduction2265.relations reduction2265.input reduction2265.output := by lin_cert using reduction2265.terms
theorem substitutionProof2265 : IsMapEvaluation generatorImages reduction2265.relations [0,0,0,0,0,0,0,0,0,0,0,0,245] reduction2265.output := by lin_cert using reduction2265.terms
def map_34_129 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2323 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2323 : InImage map_34_129 image2323 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2323 : Bundle := named_bundle% "RealMapCertificates/relations/basis2323.json"
theorem reductionProof2323 : EqualModuloRelations reduction2323.relations reduction2323.input reduction2323.output := by lin_cert using reduction2323.terms
theorem substitutionProof2323 : IsMapEvaluation generatorImages reduction2323.relations [8,17,117] reduction2323.output := by lin_cert using reduction2323.terms
def image2324 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2324 : InImage map_34_129 image2324 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2324 : Bundle := named_bundle% "RealMapCertificates/relations/basis2324.json"
theorem reductionProof2324 : EqualModuloRelations reduction2324.relations reduction2324.input reduction2324.output := by lin_cert using reduction2324.terms
theorem substitutionProof2324 : IsMapEvaluation generatorImages reduction2324.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2324.output := by lin_cert using reduction2324.terms
def map_34_132 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image2505 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation2505 : InImage map_34_132 image2505 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2505 : Bundle := named_bundle% "RealMapCertificates/relations/basis2505.json"
theorem reductionProof2505 : EqualModuloRelations reduction2505.relations reduction2505.input reduction2505.output := by lin_cert using reduction2505.terms
theorem substitutionProof2505 : IsMapEvaluation generatorImages reduction2505.relations [8,16,17,50] reduction2505.output := by lin_cert using reduction2505.terms
def map_34_135 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image2728 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2728 : InImage map_34_135 image2728 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2728 : Bundle := named_bundle% "RealMapCertificates/relations/basis2728.json"
theorem reductionProof2728 : EqualModuloRelations reduction2728.relations reduction2728.input reduction2728.output := by lin_cert using reduction2728.terms
theorem substitutionProof2728 : IsMapEvaluation generatorImages reduction2728.relations [402] reduction2728.output := by lin_cert using reduction2728.terms
def image2729 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2729 : InImage map_34_135 image2729 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2729 : Bundle := named_bundle% "RealMapCertificates/relations/basis2729.json"
theorem reductionProof2729 : EqualModuloRelations reduction2729.relations reduction2729.input reduction2729.output := by lin_cert using reduction2729.terms
theorem substitutionProof2729 : IsMapEvaluation generatorImages reduction2729.relations [8,8,17,78] reduction2729.output := by lin_cert using reduction2729.terms
end RealMapCertificates
