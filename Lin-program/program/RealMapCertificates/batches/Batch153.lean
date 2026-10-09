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
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 72 => []
  | 79 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 184 => []
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 233 => [[5,7,9,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 257 => [[4,4,6,8,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 344 => [[4,4,5,5,8,12]]
  | 380 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 500 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 807 => []
  | 809 => []
  | 862 => []
  | 927 => [[4,5,5,10,12,12]]
  | _ => []
def map_34_136 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2813 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2813 : InImage map_34_136 image2813 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2813 : Bundle := named_bundle% "RealMapCertificates/relations/basis2813.json"
theorem reductionProof2813 : EqualModuloRelations reduction2813.relations reduction2813.input reduction2813.output := by lin_cert using reduction2813.terms
theorem substitutionProof2813 : IsMapEvaluation generatorImages reduction2813.relations [0,403] reduction2813.output := by lin_cert using reduction2813.terms
def map_34_138 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image2955 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2955 : InImage map_34_138 image2955 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2955 : Bundle := named_bundle% "RealMapCertificates/relations/basis2955.json"
theorem reductionProof2955 : EqualModuloRelations reduction2955.relations reduction2955.input reduction2955.output := by lin_cert using reduction2955.terms
theorem substitutionProof2955 : IsMapEvaluation generatorImages reduction2955.relations [432] reduction2955.output := by lin_cert using reduction2955.terms
def image2956 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2956 : InImage map_34_138 image2956 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2956 : Bundle := named_bundle% "RealMapCertificates/relations/basis2956.json"
theorem reductionProof2956 : EqualModuloRelations reduction2956.relations reduction2956.input reduction2956.output := by lin_cert using reduction2956.terms
theorem substitutionProof2956 : IsMapEvaluation generatorImages reduction2956.relations [8,8,8,17,50] reduction2956.output := by lin_cert using reduction2956.terms
def map_34_139 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3051 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3051 : InImage map_34_139 image3051 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3051 : Bundle := named_bundle% "RealMapCertificates/relations/basis3051.json"
theorem reductionProof3051 : EqualModuloRelations reduction3051.relations reduction3051.input reduction3051.output := by lin_cert using reduction3051.terms
theorem substitutionProof3051 : IsMapEvaluation generatorImages reduction3051.relations [0,433] reduction3051.output := by lin_cert using reduction3051.terms
def map_34_141 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3209 : InImage map_34_141 image3209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3209 : Bundle := named_bundle% "RealMapCertificates/relations/basis3209.json"
theorem reductionProof3209 : EqualModuloRelations reduction3209.relations reduction3209.input reduction3209.output := by lin_cert using reduction3209.terms
theorem substitutionProof3209 : IsMapEvaluation generatorImages reduction3209.relations [16,224] reduction3209.output := by lin_cert using reduction3209.terms
def image3210 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3210 : InImage map_34_141 image3210 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3210 : Bundle := named_bundle% "RealMapCertificates/relations/basis3210.json"
theorem reductionProof3210 : EqualModuloRelations reduction3210.relations reduction3210.input reduction3210.output := by lin_cert using reduction3210.terms
theorem substitutionProof3210 : IsMapEvaluation generatorImages reduction3210.relations [8,8,8,17,56] reduction3210.output := by lin_cert using reduction3210.terms
def map_34_142 : Matrix 3 2 := fun i j => ([true,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3294 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3294 : InImage map_34_142 image3294 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3294 : Bundle := named_bundle% "RealMapCertificates/relations/basis3294.json"
theorem reductionProof3294 : EqualModuloRelations reduction3294.relations reduction3294.input reduction3294.output := by lin_cert using reduction3294.terms
theorem substitutionProof3294 : IsMapEvaluation generatorImages reduction3294.relations [0,16,225] reduction3294.output := by lin_cert using reduction3294.terms
def image3295 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3295 : InImage map_34_142 image3295 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3295 : Bundle := named_bundle% "RealMapCertificates/relations/basis3295.json"
theorem reductionProof3295 : EqualModuloRelations reduction3295.relations reduction3295.input reduction3295.output := by lin_cert using reduction3295.terms
theorem substitutionProof3295 : IsMapEvaluation generatorImages reduction3295.relations [0,0,452] reduction3295.output := by lin_cert using reduction3295.terms
def map_34_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3371 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3371 : InImage map_34_143 image3371 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3371 : Bundle := named_bundle% "RealMapCertificates/relations/basis3371.json"
theorem reductionProof3371 : EqualModuloRelations reduction3371.relations reduction3371.input reduction3371.output := by lin_cert using reduction3371.terms
theorem substitutionProof3371 : IsMapEvaluation generatorImages reduction3371.relations [0,0,17,225] reduction3371.output := by lin_cert using reduction3371.terms
def map_34_144 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image3451 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3451 : InImage map_34_144 image3451 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3451 : Bundle := named_bundle% "RealMapCertificates/relations/basis3451.json"
theorem reductionProof3451 : EqualModuloRelations reduction3451.relations reduction3451.input reduction3451.output := by lin_cert using reduction3451.terms
theorem substitutionProof3451 : IsMapEvaluation generatorImages reduction3451.relations [8,297] reduction3451.output := by lin_cert using reduction3451.terms
def image3452 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3452 : InImage map_34_144 image3452 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3452 : Bundle := named_bundle% "RealMapCertificates/relations/basis3452.json"
theorem reductionProof3452 : EqualModuloRelations reduction3452.relations reduction3452.input reduction3452.output := by lin_cert using reduction3452.terms
theorem substitutionProof3452 : IsMapEvaluation generatorImages reduction3452.relations [8,8,8,16,17,17] reduction3452.output := by lin_cert using reduction3452.terms
def image3453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3453 : InImage map_34_144 image3453 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3453 : Bundle := named_bundle% "RealMapCertificates/relations/basis3453.json"
theorem reductionProof3453 : EqualModuloRelations reduction3453.relations reduction3453.input reduction3453.output := by lin_cert using reduction3453.terms
theorem substitutionProof3453 : IsMapEvaluation generatorImages reduction3453.relations [1,1,452] reduction3453.output := by lin_cert using reduction3453.terms
def map_34_145 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image3543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3543 : InImage map_34_145 image3543 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3543 : Bundle := named_bundle% "RealMapCertificates/relations/basis3543.json"
theorem reductionProof3543 : EqualModuloRelations reduction3543.relations reduction3543.input reduction3543.output := by lin_cert using reduction3543.terms
theorem substitutionProof3543 : IsMapEvaluation generatorImages reduction3543.relations [0,8,298] reduction3543.output := by lin_cert using reduction3543.terms
def image3544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3544 : InImage map_34_145 image3544 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3544 : Bundle := named_bundle% "RealMapCertificates/relations/basis3544.json"
theorem reductionProof3544 : EqualModuloRelations reduction3544.relations reduction3544.input reduction3544.output := by lin_cert using reduction3544.terms
theorem substitutionProof3544 : IsMapEvaluation generatorImages reduction3544.relations [0,0,488] reduction3544.output := by lin_cert using reduction3544.terms
def map_34_147 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image3709 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3709 : InImage map_34_147 image3709 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3709 : Bundle := named_bundle% "RealMapCertificates/relations/basis3709.json"
theorem reductionProof3709 : EqualModuloRelations reduction3709.relations reduction3709.input reduction3709.output := by lin_cert using reduction3709.terms
theorem substitutionProof3709 : IsMapEvaluation generatorImages reduction3709.relations [8,8,224] reduction3709.output := by lin_cert using reduction3709.terms
def image3710 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3710 : InImage map_34_147 image3710 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3710 : Bundle := named_bundle% "RealMapCertificates/relations/basis3710.json"
theorem reductionProof3710 : EqualModuloRelations reduction3710.relations reduction3710.input reduction3710.output := by lin_cert using reduction3710.terms
theorem substitutionProof3710 : IsMapEvaluation generatorImages reduction3710.relations [8,8,8,8,17,40] reduction3710.output := by lin_cert using reduction3710.terms
def map_34_148 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3801 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3801 : InImage map_34_148 image3801 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3801 : Bundle := named_bundle% "RealMapCertificates/relations/basis3801.json"
theorem reductionProof3801 : EqualModuloRelations reduction3801.relations reduction3801.input reduction3801.output := by lin_cert using reduction3801.terms
theorem substitutionProof3801 : IsMapEvaluation generatorImages reduction3801.relations [0,8,8,225] reduction3801.output := by lin_cert using reduction3801.terms
def image3802 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3802 : InImage map_34_148 image3802 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3802 : Bundle := named_bundle% "RealMapCertificates/relations/basis3802.json"
theorem reductionProof3802 : EqualModuloRelations reduction3802.relations reduction3802.input reduction3802.output := by lin_cert using reduction3802.terms
theorem substitutionProof3802 : IsMapEvaluation generatorImages reduction3802.relations [0,0,16,244] reduction3802.output := by lin_cert using reduction3802.terms
def map_34_149 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3879 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3879 : InImage map_34_149 image3879 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3879 : Bundle := named_bundle% "RealMapCertificates/relations/basis3879.json"
theorem reductionProof3879 : EqualModuloRelations reduction3879.relations reduction3879.input reduction3879.output := by lin_cert using reduction3879.terms
theorem substitutionProof3879 : IsMapEvaluation generatorImages reduction3879.relations [0,0,0,17,244] reduction3879.output := by lin_cert using reduction3879.terms
def map_34_150 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image3966 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3966 : InImage map_34_150 image3966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction3966 : Bundle := named_bundle% "RealMapCertificates/relations/basis3966.json"
theorem reductionProof3966 : EqualModuloRelations reduction3966.relations reduction3966.input reduction3966.output := by lin_cert using reduction3966.terms
theorem substitutionProof3966 : IsMapEvaluation generatorImages reduction3966.relations [8,8,237] reduction3966.output := by lin_cert using reduction3966.terms
def image3967 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3967 : InImage map_34_150 image3967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction3967 : Bundle := named_bundle% "RealMapCertificates/relations/basis3967.json"
theorem reductionProof3967 : EqualModuloRelations reduction3967.relations reduction3967.input reduction3967.output := by lin_cert using reduction3967.terms
theorem substitutionProof3967 : IsMapEvaluation generatorImages reduction3967.relations [8,8,8,8,8,17,17] reduction3967.output := by lin_cert using reduction3967.terms
def image3968 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3968 : InImage map_34_150 image3968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction3968 : Bundle := named_bundle% "RealMapCertificates/relations/basis3968.json"
theorem reductionProof3968 : EqualModuloRelations reduction3968.relations reduction3968.input reduction3968.output := by lin_cert using reduction3968.terms
theorem substitutionProof3968 : IsMapEvaluation generatorImages reduction3968.relations [0,0,0,17,17,138] reduction3968.output := by lin_cert using reduction3968.terms
def map_34_151 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4083 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4083 : InImage map_34_151 image4083 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4083 : Bundle := named_bundle% "RealMapCertificates/relations/basis4083.json"
theorem reductionProof4083 : EqualModuloRelations reduction4083.relations reduction4083.input reduction4083.output := by lin_cert using reduction4083.terms
theorem substitutionProof4083 : IsMapEvaluation generatorImages reduction4083.relations [0,8,8,238] reduction4083.output := by lin_cert using reduction4083.terms
def image4084 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4084 : InImage map_34_151 image4084 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4084 : Bundle := named_bundle% "RealMapCertificates/relations/basis4084.json"
theorem reductionProof4084 : EqualModuloRelations reduction4084.relations reduction4084.input reduction4084.output := by lin_cert using reduction4084.terms
theorem substitutionProof4084 : IsMapEvaluation generatorImages reduction4084.relations [0,0,0,0,0,0,0,0,491] reduction4084.output := by lin_cert using reduction4084.terms
def map_34_153 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4248 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4248 : InImage map_34_153 image4248 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4248 : Bundle := named_bundle% "RealMapCertificates/relations/basis4248.json"
theorem reductionProof4248 : EqualModuloRelations reduction4248.relations reduction4248.input reduction4248.output := by lin_cert using reduction4248.terms
theorem substitutionProof4248 : IsMapEvaluation generatorImages reduction4248.relations [8,8,16,137] reduction4248.output := by lin_cert using reduction4248.terms
def image4249 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4249 : InImage map_34_153 image4249 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4249 : Bundle := named_bundle% "RealMapCertificates/relations/basis4249.json"
theorem reductionProof4249 : EqualModuloRelations reduction4249.relations reduction4249.input reduction4249.output := by lin_cert using reduction4249.terms
theorem substitutionProof4249 : IsMapEvaluation generatorImages reduction4249.relations [8,8,8,8,8,17,20] reduction4249.output := by lin_cert using reduction4249.terms
def map_34_154 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4331 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4331 : InImage map_34_154 image4331 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4331 : Bundle := named_bundle% "RealMapCertificates/relations/basis4331.json"
theorem reductionProof4331 : EqualModuloRelations reduction4331.relations reduction4331.input reduction4331.output := by lin_cert using reduction4331.terms
theorem substitutionProof4331 : IsMapEvaluation generatorImages reduction4331.relations [1,572] reduction4331.output := by lin_cert using reduction4331.terms
def image4332 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4332 : InImage map_34_154 image4332 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4332 : Bundle := named_bundle% "RealMapCertificates/relations/basis4332.json"
theorem reductionProof4332 : EqualModuloRelations reduction4332.relations reduction4332.input reduction4332.output := by lin_cert using reduction4332.terms
theorem substitutionProof4332 : IsMapEvaluation generatorImages reduction4332.relations [0,8,8,16,138] reduction4332.output := by lin_cert using reduction4332.terms
def map_34_155 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4405 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4405 : InImage map_34_155 image4405 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4405 : Bundle := named_bundle% "RealMapCertificates/relations/basis4405.json"
theorem reductionProof4405 : EqualModuloRelations reduction4405.relations reduction4405.input reduction4405.output := by lin_cert using reduction4405.terms
theorem substitutionProof4405 : IsMapEvaluation generatorImages reduction4405.relations [596] reduction4405.output := by lin_cert using reduction4405.terms
def map_34_156 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4493 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4493 : InImage map_34_156 image4493 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4493 : Bundle := named_bundle% "RealMapCertificates/relations/basis4493.json"
theorem reductionProof4493 : EqualModuloRelations reduction4493.relations reduction4493.input reduction4493.output := by lin_cert using reduction4493.terms
theorem substitutionProof4493 : IsMapEvaluation generatorImages reduction4493.relations [8,8,8,184] reduction4493.output := by lin_cert using reduction4493.terms
def image4494 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4494 : InImage map_34_156 image4494 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4494 : Bundle := named_bundle% "RealMapCertificates/relations/basis4494.json"
theorem reductionProof4494 : EqualModuloRelations reduction4494.relations reduction4494.input reduction4494.output := by lin_cert using reduction4494.terms
theorem substitutionProof4494 : IsMapEvaluation generatorImages reduction4494.relations [8,8,8,8,8,16,23] reduction4494.output := by lin_cert using reduction4494.terms
def image4495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4495 : InImage map_34_156 image4495 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4495 : Bundle := named_bundle% "RealMapCertificates/relations/basis4495.json"
theorem reductionProof4495 : EqualModuloRelations reduction4495.relations reduction4495.input reduction4495.output := by lin_cert using reduction4495.terms
theorem substitutionProof4495 : IsMapEvaluation generatorImages reduction4495.relations [0,0,0,0,0,0,64,137] reduction4495.output := by lin_cert using reduction4495.terms
def map_34_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4597 : InImage map_34_157 image4597 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4597 : Bundle := named_bundle% "RealMapCertificates/relations/basis4597.json"
theorem reductionProof4597 : EqualModuloRelations reduction4597.relations reduction4597.input reduction4597.output := by lin_cert using reduction4597.terms
theorem substitutionProof4597 : IsMapEvaluation generatorImages reduction4597.relations [0,0,0,0,0,0,0,64,138] reduction4597.output := by lin_cert using reduction4597.terms
def map_34_158 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4670 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4670 : InImage map_34_158 image4670 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4670 : Bundle := named_bundle% "RealMapCertificates/relations/basis4670.json"
theorem reductionProof4670 : EqualModuloRelations reduction4670.relations reduction4670.input reduction4670.output := by lin_cert using reduction4670.terms
theorem substitutionProof4670 : IsMapEvaluation generatorImages reduction4670.relations [31,245] reduction4670.output := by lin_cert using reduction4670.terms
def map_34_159 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4763 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4763 : InImage map_34_159 image4763 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4763 : Bundle := named_bundle% "RealMapCertificates/relations/basis4763.json"
theorem reductionProof4763 : EqualModuloRelations reduction4763.relations reduction4763.input reduction4763.output := by lin_cert using reduction4763.terms
theorem substitutionProof4763 : IsMapEvaluation generatorImages reduction4763.relations [8,8,8,8,137] reduction4763.output := by lin_cert using reduction4763.terms
def image4764 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4764 : InImage map_34_159 image4764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4764 : Bundle := named_bundle% "RealMapCertificates/relations/basis4764.json"
theorem reductionProof4764 : EqualModuloRelations reduction4764.relations reduction4764.input reduction4764.output := by lin_cert using reduction4764.terms
theorem substitutionProof4764 : IsMapEvaluation generatorImages reduction4764.relations [8,8,8,8,8,8,45] reduction4764.output := by lin_cert using reduction4764.terms
def map_34_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4852 : InImage map_34_160 image4852 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4852 : Bundle := named_bundle% "RealMapCertificates/relations/basis4852.json"
theorem reductionProof4852 : EqualModuloRelations reduction4852.relations reduction4852.input reduction4852.output := by lin_cert using reduction4852.terms
theorem substitutionProof4852 : IsMapEvaluation generatorImages reduction4852.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4852.output := by lin_cert using reduction4852.terms
def map_34_161 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4933 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4933 : InImage map_34_161 image4933 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4933 : Bundle := named_bundle% "RealMapCertificates/relations/basis4933.json"
theorem reductionProof4933 : EqualModuloRelations reduction4933.relations reduction4933.input reduction4933.output := by lin_cert using reduction4933.terms
theorem substitutionProof4933 : IsMapEvaluation generatorImages reduction4933.relations [8,489] reduction4933.output := by lin_cert using reduction4933.terms
def image4934 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4934 : InImage map_34_161 image4934 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4934 : Bundle := named_bundle% "RealMapCertificates/relations/basis4934.json"
theorem reductionProof4934 : EqualModuloRelations reduction4934.relations reduction4934.input reduction4934.output := by lin_cert using reduction4934.terms
theorem substitutionProof4934 : IsMapEvaluation generatorImages reduction4934.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction4934.output := by lin_cert using reduction4934.terms
def map_34_162 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5035 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5035 : InImage map_34_162 image5035 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5035 : Bundle := named_bundle% "RealMapCertificates/relations/basis5035.json"
theorem reductionProof5035 : EqualModuloRelations reduction5035.relations reduction5035.input reduction5035.output := by lin_cert using reduction5035.terms
theorem substitutionProof5035 : IsMapEvaluation generatorImages reduction5035.relations [8,8,8,8,146] reduction5035.output := by lin_cert using reduction5035.terms
def image5036 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5036 : InImage map_34_162 image5036 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5036 : Bundle := named_bundle% "RealMapCertificates/relations/basis5036.json"
theorem reductionProof5036 : EqualModuloRelations reduction5036.relations reduction5036.input reduction5036.output := by lin_cert using reduction5036.terms
theorem substitutionProof5036 : IsMapEvaluation generatorImages reduction5036.relations [8,8,8,8,8,8,8,23] reduction5036.output := by lin_cert using reduction5036.terms
def map_34_164 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5223 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5223 : InImage map_34_164 image5223 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5223 : Bundle := named_bundle% "RealMapCertificates/relations/basis5223.json"
theorem reductionProof5223 : EqualModuloRelations reduction5223.relations reduction5223.input reduction5223.output := by lin_cert using reduction5223.terms
theorem substitutionProof5223 : IsMapEvaluation generatorImages reduction5223.relations [8,16,245] reduction5223.output := by lin_cert using reduction5223.terms
def map_34_165 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5339 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5339 : InImage map_34_165 image5339 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5339 : Bundle := named_bundle% "RealMapCertificates/relations/basis5339.json"
theorem reductionProof5339 : EqualModuloRelations reduction5339.relations reduction5339.input reduction5339.output := by lin_cert using reduction5339.terms
theorem substitutionProof5339 : IsMapEvaluation generatorImages reduction5339.relations [8,8,8,8,16,64] reduction5339.output := by lin_cert using reduction5339.terms
def image5340 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5340 : InImage map_34_165 image5340 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5340 : Bundle := named_bundle% "RealMapCertificates/relations/basis5340.json"
theorem reductionProof5340 : EqualModuloRelations reduction5340.relations reduction5340.input reduction5340.output := by lin_cert using reduction5340.terms
theorem substitutionProof5340 : IsMapEvaluation generatorImages reduction5340.relations [8,8,8,8,8,8,9,23] reduction5340.output := by lin_cert using reduction5340.terms
def map_34_166 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image5448 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5448 : InImage map_34_166 image5448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5448 : Bundle := named_bundle% "RealMapCertificates/relations/basis5448.json"
theorem reductionProof5448 : EqualModuloRelations reduction5448.relations reduction5448.input reduction5448.output := by lin_cert using reduction5448.terms
theorem substitutionProof5448 : IsMapEvaluation generatorImages reduction5448.relations [1,5,64,137] reduction5448.output := by lin_cert using reduction5448.terms
def map_34_167 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5549 : InImage map_34_167 image5549 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5549 : Bundle := named_bundle% "RealMapCertificates/relations/basis5549.json"
theorem reductionProof5549 : EqualModuloRelations reduction5549.relations reduction5549.input reduction5549.output := by lin_cert using reduction5549.terms
theorem substitutionProof5549 : IsMapEvaluation generatorImages reduction5549.relations [725] reduction5549.output := by lin_cert using reduction5549.terms
def image5550 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5550 : InImage map_34_167 image5550 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5550 : Bundle := named_bundle% "RealMapCertificates/relations/basis5550.json"
theorem reductionProof5550 : EqualModuloRelations reduction5550.relations reduction5550.input reduction5550.output := by lin_cert using reduction5550.terms
theorem substitutionProof5550 : IsMapEvaluation generatorImages reduction5550.relations [8,8,344] reduction5550.output := by lin_cert using reduction5550.terms
def map_34_168 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5658 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5658 : InImage map_34_168 image5658 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5658 : Bundle := named_bundle% "RealMapCertificates/relations/basis5658.json"
theorem reductionProof5658 : EqualModuloRelations reduction5658.relations reduction5658.input reduction5658.output := by lin_cert using reduction5658.terms
theorem substitutionProof5658 : IsMapEvaluation generatorImages reduction5658.relations [8,8,8,8,8,112] reduction5658.output := by lin_cert using reduction5658.terms
def image5659 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5659 : InImage map_34_168 image5659 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5659 : Bundle := named_bundle% "RealMapCertificates/relations/basis5659.json"
theorem reductionProof5659 : EqualModuloRelations reduction5659.relations reduction5659.input reduction5659.output := by lin_cert using reduction5659.terms
theorem substitutionProof5659 : IsMapEvaluation generatorImages reduction5659.relations [8,8,8,8,8,8,13,23] reduction5659.output := by lin_cert using reduction5659.terms
def map_34_170 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image5876 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5876 : InImage map_34_170 image5876 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5876 : Bundle := named_bundle% "RealMapCertificates/relations/basis5876.json"
theorem reductionProof5876 : EqualModuloRelations reduction5876.relations reduction5876.input reduction5876.output := by lin_cert using reduction5876.terms
theorem substitutionProof5876 : IsMapEvaluation generatorImages reduction5876.relations [759] reduction5876.output := by lin_cert using reduction5876.terms
def image5877 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5877 : InImage map_34_170 image5877 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5877 : Bundle := named_bundle% "RealMapCertificates/relations/basis5877.json"
theorem reductionProof5877 : EqualModuloRelations reduction5877.relations reduction5877.input reduction5877.output := by lin_cert using reduction5877.terms
theorem substitutionProof5877 : IsMapEvaluation generatorImages reduction5877.relations [8,8,8,245] reduction5877.output := by lin_cert using reduction5877.terms
def map_34_171 : Matrix 2 3 := fun i j => ([false,true,false,true,false,false] : List Bool)[i.val*3+j.val]!
def image6006 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation6006 : InImage map_34_171 image6006 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6006 : Bundle := named_bundle% "RealMapCertificates/relations/basis6006.json"
theorem reductionProof6006 : EqualModuloRelations reduction6006.relations reduction6006.input reduction6006.output := by lin_cert using reduction6006.terms
theorem substitutionProof6006 : IsMapEvaluation generatorImages reduction6006.relations [778] reduction6006.output := by lin_cert using reduction6006.terms
def image6007 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6007 : InImage map_34_171 image6007 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6007 : Bundle := named_bundle% "RealMapCertificates/relations/basis6007.json"
theorem reductionProof6007 : EqualModuloRelations reduction6007.relations reduction6007.input reduction6007.output := by lin_cert using reduction6007.terms
theorem substitutionProof6007 : IsMapEvaluation generatorImages reduction6007.relations [8,8,8,8,8,9,13,23] reduction6007.output := by lin_cert using reduction6007.terms
def image6008 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6008 : InImage map_34_171 image6008 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6008 : Bundle := named_bundle% "RealMapCertificates/relations/basis6008.json"
theorem reductionProof6008 : EqualModuloRelations reduction6008.relations reduction6008.input reduction6008.output := by lin_cert using reduction6008.terms
theorem substitutionProof6008 : IsMapEvaluation generatorImages reduction6008.relations [8,8,8,8,8,8,64] reduction6008.output := by lin_cert using reduction6008.terms
def map_34_173 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6215 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6215 : InImage map_34_173 image6215 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6215 : Bundle := named_bundle% "RealMapCertificates/relations/basis6215.json"
theorem reductionProof6215 : EqualModuloRelations reduction6215.relations reduction6215.input reduction6215.output := by lin_cert using reduction6215.terms
theorem substitutionProof6215 : IsMapEvaluation generatorImages reduction6215.relations [16,491] reduction6215.output := by lin_cert using reduction6215.terms
def image6216 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6216 : InImage map_34_173 image6216 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6216 : Bundle := named_bundle% "RealMapCertificates/relations/basis6216.json"
theorem reductionProof6216 : EqualModuloRelations reduction6216.relations reduction6216.input reduction6216.output := by lin_cert using reduction6216.terms
theorem substitutionProof6216 : IsMapEvaluation generatorImages reduction6216.relations [8,8,8,258] reduction6216.output := by lin_cert using reduction6216.terms
def map_34_174 : Matrix 3 4 := fun i j => ([false,true,false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image6330 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation6330 : InImage map_34_174 image6330 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6330 : Bundle := named_bundle% "RealMapCertificates/relations/basis6330.json"
theorem reductionProof6330 : EqualModuloRelations reduction6330.relations reduction6330.input reduction6330.output := by lin_cert using reduction6330.terms
theorem substitutionProof6330 : IsMapEvaluation generatorImages reduction6330.relations [138,138] reduction6330.output := by lin_cert using reduction6330.terms
def image6331 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6331 : InImage map_34_174 image6331 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6331 : Bundle := named_bundle% "RealMapCertificates/relations/basis6331.json"
theorem reductionProof6331 : EqualModuloRelations reduction6331.relations reduction6331.input reduction6331.output := by lin_cert using reduction6331.terms
theorem substitutionProof6331 : IsMapEvaluation generatorImages reduction6331.relations [8,8,8,8,8,13,13,23] reduction6331.output := by lin_cert using reduction6331.terms
def image6332 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6332 : InImage map_34_174 image6332 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6332 : Bundle := named_bundle% "RealMapCertificates/relations/basis6332.json"
theorem reductionProof6332 : EqualModuloRelations reduction6332.relations reduction6332.input reduction6332.output := by lin_cert using reduction6332.terms
theorem substitutionProof6332 : IsMapEvaluation generatorImages reduction6332.relations [8,8,8,8,8,8,72] reduction6332.output := by lin_cert using reduction6332.terms
def image6333 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6333 : InImage map_34_174 image6333 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6333 : Bundle := named_bundle% "RealMapCertificates/relations/basis6333.json"
theorem reductionProof6333 : EqualModuloRelations reduction6333.relations reduction6333.input reduction6333.output := by lin_cert using reduction6333.terms
theorem substitutionProof6333 : IsMapEvaluation generatorImages reduction6333.relations [0,17,491] reduction6333.output := by lin_cert using reduction6333.terms
def map_34_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6462 : InImage map_34_175 image6462 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6462 : Bundle := named_bundle% "RealMapCertificates/relations/basis6462.json"
theorem reductionProof6462 : EqualModuloRelations reduction6462.relations reduction6462.input reduction6462.output := by lin_cert using reduction6462.terms
theorem substitutionProof6462 : IsMapEvaluation generatorImages reduction6462.relations [0,809] reduction6462.output := by lin_cert using reduction6462.terms
def image6463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6463 : InImage map_34_175 image6463 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6463 : Bundle := named_bundle% "RealMapCertificates/relations/basis6463.json"
theorem reductionProof6463 : EqualModuloRelations reduction6463.relations reduction6463.input reduction6463.output := by lin_cert using reduction6463.terms
theorem substitutionProof6463 : IsMapEvaluation generatorImages reduction6463.relations [0,807] reduction6463.output := by lin_cert using reduction6463.terms
def map_34_176 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image6553 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6553 : InImage map_34_176 image6553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6553 : Bundle := named_bundle% "RealMapCertificates/relations/basis6553.json"
theorem reductionProof6553 : EqualModuloRelations reduction6553.relations reduction6553.input reduction6553.output := by lin_cert using reduction6553.terms
theorem substitutionProof6553 : IsMapEvaluation generatorImages reduction6553.relations [8,623] reduction6553.output := by lin_cert using reduction6553.terms
def image6554 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6554 : InImage map_34_176 image6554 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6554 : Bundle := named_bundle% "RealMapCertificates/relations/basis6554.json"
theorem reductionProof6554 : EqualModuloRelations reduction6554.relations reduction6554.input reduction6554.output := by lin_cert using reduction6554.terms
theorem substitutionProof6554 : IsMapEvaluation generatorImages reduction6554.relations [8,8,8,277] reduction6554.output := by lin_cert using reduction6554.terms
def image6555 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6555 : InImage map_34_176 image6555 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6555 : Bundle := named_bundle% "RealMapCertificates/relations/basis6555.json"
theorem reductionProof6555 : EqualModuloRelations reduction6555.relations reduction6555.input reduction6555.output := by lin_cert using reduction6555.terms
theorem substitutionProof6555 : IsMapEvaluation generatorImages reduction6555.relations [1,807] reduction6555.output := by lin_cert using reduction6555.terms
def image6556 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6556 : InImage map_34_176 image6556 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6556 : Bundle := named_bundle% "RealMapCertificates/relations/basis6556.json"
theorem reductionProof6556 : EqualModuloRelations reduction6556.relations reduction6556.input reduction6556.output := by lin_cert using reduction6556.terms
theorem substitutionProof6556 : IsMapEvaluation generatorImages reduction6556.relations [0,0,0,795] reduction6556.output := by lin_cert using reduction6556.terms
def map_34_177 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image6691 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6691 : InImage map_34_177 image6691 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6691 : Bundle := named_bundle% "RealMapCertificates/relations/basis6691.json"
theorem reductionProof6691 : EqualModuloRelations reduction6691.relations reduction6691.input reduction6691.output := by lin_cert using reduction6691.terms
theorem substitutionProof6691 : IsMapEvaluation generatorImages reduction6691.relations [8,637] reduction6691.output := by lin_cert using reduction6691.terms
def image6692 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6692 : InImage map_34_177 image6692 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6692 : Bundle := named_bundle% "RealMapCertificates/relations/basis6692.json"
theorem reductionProof6692 : EqualModuloRelations reduction6692.relations reduction6692.input reduction6692.output := by lin_cert using reduction6692.terms
theorem substitutionProof6692 : IsMapEvaluation generatorImages reduction6692.relations [8,8,8,8,9,13,13,23] reduction6692.output := by lin_cert using reduction6692.terms
def image6693 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6693 : InImage map_34_177 image6693 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6693 : Bundle := named_bundle% "RealMapCertificates/relations/basis6693.json"
theorem reductionProof6693 : EqualModuloRelations reduction6693.relations reduction6693.input reduction6693.output := by lin_cert using reduction6693.terms
theorem substitutionProof6693 : IsMapEvaluation generatorImages reduction6693.relations [8,8,8,8,8,8,79] reduction6693.output := by lin_cert using reduction6693.terms
def image6694 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6694 : InImage map_34_177 image6694 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6694 : Bundle := named_bundle% "RealMapCertificates/relations/basis6694.json"
theorem reductionProof6694 : EqualModuloRelations reduction6694.relations reduction6694.input reduction6694.output := by lin_cert using reduction6694.terms
theorem substitutionProof6694 : IsMapEvaluation generatorImages reduction6694.relations [0,17,516] reduction6694.output := by lin_cert using reduction6694.terms
def map_34_179 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image6913 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6913 : InImage map_34_179 image6913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6913 : Bundle := named_bundle% "RealMapCertificates/relations/basis6913.json"
theorem reductionProof6913 : EqualModuloRelations reduction6913.relations reduction6913.input reduction6913.output := by lin_cert using reduction6913.terms
theorem substitutionProof6913 : IsMapEvaluation generatorImages reduction6913.relations [64,244] reduction6913.output := by lin_cert using reduction6913.terms
def image6914 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6914 : InImage map_34_179 image6914 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6914 : Bundle := named_bundle% "RealMapCertificates/relations/basis6914.json"
theorem reductionProof6914 : EqualModuloRelations reduction6914.relations reduction6914.input reduction6914.output := by lin_cert using reduction6914.terms
theorem substitutionProof6914 : IsMapEvaluation generatorImages reduction6914.relations [8,8,491] reduction6914.output := by lin_cert using reduction6914.terms
def image6915 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6915 : InImage map_34_179 image6915 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6915 : Bundle := named_bundle% "RealMapCertificates/relations/basis6915.json"
theorem reductionProof6915 : EqualModuloRelations reduction6915.relations reduction6915.input reduction6915.output := by lin_cert using reduction6915.terms
theorem substitutionProof6915 : IsMapEvaluation generatorImages reduction6915.relations [8,8,8,8,207] reduction6915.output := by lin_cert using reduction6915.terms
def map_34_180 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image7052 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7052 : InImage map_34_180 image7052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7052 : Bundle := named_bundle% "RealMapCertificates/relations/basis7052.json"
theorem reductionProof7052 : EqualModuloRelations reduction7052.relations reduction7052.input reduction7052.output := by lin_cert using reduction7052.terms
theorem substitutionProof7052 : IsMapEvaluation generatorImages reduction7052.relations [8,664] reduction7052.output := by lin_cert using reduction7052.terms
def image7053 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7053 : InImage map_34_180 image7053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7053 : Bundle := named_bundle% "RealMapCertificates/relations/basis7053.json"
theorem reductionProof7053 : EqualModuloRelations reduction7053.relations reduction7053.input reduction7053.output := by lin_cert using reduction7053.terms
theorem substitutionProof7053 : IsMapEvaluation generatorImages reduction7053.relations [8,8,8,8,13,13,13,23] reduction7053.output := by lin_cert using reduction7053.terms
def image7054 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7054 : InImage map_34_180 image7054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7054 : Bundle := named_bundle% "RealMapCertificates/relations/basis7054.json"
theorem reductionProof7054 : EqualModuloRelations reduction7054.relations reduction7054.input reduction7054.output := by lin_cert using reduction7054.terms
theorem substitutionProof7054 : IsMapEvaluation generatorImages reduction7054.relations [8,8,8,8,8,8,89] reduction7054.output := by lin_cert using reduction7054.terms
def image7055 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7055 : InImage map_34_180 image7055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7055 : Bundle := named_bundle% "RealMapCertificates/relations/basis7055.json"
theorem reductionProof7055 : EqualModuloRelations reduction7055.relations reduction7055.input reduction7055.output := by lin_cert using reduction7055.terms
theorem substitutionProof7055 : IsMapEvaluation generatorImages reduction7055.relations [0,138,149] reduction7055.output := by lin_cert using reduction7055.terms
def image7056 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7056 : InImage map_34_180 image7056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7056 : Bundle := named_bundle% "RealMapCertificates/relations/basis7056.json"
theorem reductionProof7056 : EqualModuloRelations reduction7056.relations reduction7056.input reduction7056.output := by lin_cert using reduction7056.terms
theorem substitutionProof7056 : IsMapEvaluation generatorImages reduction7056.relations [0,16,17,260] reduction7056.output := by lin_cert using reduction7056.terms
def map_34_181 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7181 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7181 : InImage map_34_181 image7181 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7181 : Bundle := named_bundle% "RealMapCertificates/relations/basis7181.json"
theorem reductionProof7181 : EqualModuloRelations reduction7181.relations reduction7181.input reduction7181.output := by lin_cert using reduction7181.terms
theorem substitutionProof7181 : IsMapEvaluation generatorImages reduction7181.relations [0,0,17,17,260] reduction7181.output := by lin_cert using reduction7181.terms
def map_34_182 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image7271 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7271 : InImage map_34_182 image7271 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7271 : Bundle := named_bundle% "RealMapCertificates/relations/basis7271.json"
theorem reductionProof7271 : EqualModuloRelations reduction7271.relations reduction7271.input reduction7271.output := by lin_cert using reduction7271.terms
theorem substitutionProof7271 : IsMapEvaluation generatorImages reduction7271.relations [64,257] reduction7271.output := by lin_cert using reduction7271.terms
def image7272 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7272 : InImage map_34_182 image7272 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7272 : Bundle := named_bundle% "RealMapCertificates/relations/basis7272.json"
theorem reductionProof7272 : EqualModuloRelations reduction7272.relations reduction7272.input reduction7272.output := by lin_cert using reduction7272.terms
theorem substitutionProof7272 : IsMapEvaluation generatorImages reduction7272.relations [8,8,516] reduction7272.output := by lin_cert using reduction7272.terms
def image7273 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7273 : InImage map_34_182 image7273 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7273 : Bundle := named_bundle% "RealMapCertificates/relations/basis7273.json"
theorem reductionProof7273 : EqualModuloRelations reduction7273.relations reduction7273.input reduction7273.output := by lin_cert using reduction7273.terms
theorem substitutionProof7273 : IsMapEvaluation generatorImages reduction7273.relations [8,8,8,8,218] reduction7273.output := by lin_cert using reduction7273.terms
def image7274 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7274 : InImage map_34_182 image7274 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7274 : Bundle := named_bundle% "RealMapCertificates/relations/basis7274.json"
theorem reductionProof7274 : EqualModuloRelations reduction7274.relations reduction7274.input reduction7274.output := by lin_cert using reduction7274.terms
theorem substitutionProof7274 : IsMapEvaluation generatorImages reduction7274.relations [0,0,0,64,246] reduction7274.output := by lin_cert using reduction7274.terms
def image7275 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7275 : InImage map_34_182 image7275 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7275 : Bundle := named_bundle% "RealMapCertificates/relations/basis7275.json"
theorem reductionProof7275 : EqualModuloRelations reduction7275.relations reduction7275.input reduction7275.output := by lin_cert using reduction7275.terms
theorem substitutionProof7275 : IsMapEvaluation generatorImages reduction7275.relations [0,0,0,59,260] reduction7275.output := by lin_cert using reduction7275.terms
def map_34_183 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image7422 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7422 : InImage map_34_183 image7422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7422 : Bundle := named_bundle% "RealMapCertificates/relations/basis7422.json"
theorem reductionProof7422 : EqualModuloRelations reduction7422.relations reduction7422.input reduction7422.output := by lin_cert using reduction7422.terms
theorem substitutionProof7422 : IsMapEvaluation generatorImages reduction7422.relations [8,8,529] reduction7422.output := by lin_cert using reduction7422.terms
def image7423 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7423 : InImage map_34_183 image7423 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7423 : Bundle := named_bundle% "RealMapCertificates/relations/basis7423.json"
theorem reductionProof7423 : EqualModuloRelations reduction7423.relations reduction7423.input reduction7423.output := by lin_cert using reduction7423.terms
theorem substitutionProof7423 : IsMapEvaluation generatorImages reduction7423.relations [8,8,8,9,13,13,13,23] reduction7423.output := by lin_cert using reduction7423.terms
def image7424 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7424 : InImage map_34_183 image7424 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7424 : Bundle := named_bundle% "RealMapCertificates/relations/basis7424.json"
theorem reductionProof7424 : EqualModuloRelations reduction7424.relations reduction7424.input reduction7424.output := by lin_cert using reduction7424.terms
theorem substitutionProof7424 : IsMapEvaluation generatorImages reduction7424.relations [8,8,8,8,8,8,101] reduction7424.output := by lin_cert using reduction7424.terms
def image7425 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7425 : InImage map_34_183 image7425 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7425 : Bundle := named_bundle% "RealMapCertificates/relations/basis7425.json"
theorem reductionProof7425 : EqualModuloRelations reduction7425.relations reduction7425.input reduction7425.output := by lin_cert using reduction7425.terms
theorem substitutionProof7425 : IsMapEvaluation generatorImages reduction7425.relations [0,8,17,380] reduction7425.output := by lin_cert using reduction7425.terms
def image7426 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7426 : InImage map_34_183 image7426 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7426 : Bundle := named_bundle% "RealMapCertificates/relations/basis7426.json"
theorem reductionProof7426 : EqualModuloRelations reduction7426.relations reduction7426.input reduction7426.output := by lin_cert using reduction7426.terms
theorem substitutionProof7426 : IsMapEvaluation generatorImages reduction7426.relations [0,0,0,0,0,862] reduction7426.output := by lin_cert using reduction7426.terms
def map_34_185 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image7637 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7637 : InImage map_34_185 image7637 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7637 : Bundle := named_bundle% "RealMapCertificates/relations/basis7637.json"
theorem reductionProof7637 : EqualModuloRelations reduction7637.relations reduction7637.input reduction7637.output := by lin_cert using reduction7637.terms
theorem substitutionProof7637 : IsMapEvaluation generatorImages reduction7637.relations [16,64,149] reduction7637.output := by lin_cert using reduction7637.terms
def image7638 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7638 : InImage map_34_185 image7638 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7638 : Bundle := named_bundle% "RealMapCertificates/relations/basis7638.json"
theorem reductionProof7638 : EqualModuloRelations reduction7638.relations reduction7638.input reduction7638.output := by lin_cert using reduction7638.terms
theorem substitutionProof7638 : IsMapEvaluation generatorImages reduction7638.relations [8,8,16,260] reduction7638.output := by lin_cert using reduction7638.terms
def image7639 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7639 : InImage map_34_185 image7639 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7639 : Bundle := named_bundle% "RealMapCertificates/relations/basis7639.json"
theorem reductionProof7639 : EqualModuloRelations reduction7639.relations reduction7639.input reduction7639.output := by lin_cert using reduction7639.terms
theorem substitutionProof7639 : IsMapEvaluation generatorImages reduction7639.relations [8,8,8,8,233] reduction7639.output := by lin_cert using reduction7639.terms
def map_34_186 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image7776 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7776 : InImage map_34_186 image7776 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7776 : Bundle := named_bundle% "RealMapCertificates/relations/basis7776.json"
theorem reductionProof7776 : EqualModuloRelations reduction7776.relations reduction7776.input reduction7776.output := by lin_cert using reduction7776.terms
theorem substitutionProof7776 : IsMapEvaluation generatorImages reduction7776.relations [8,8,557] reduction7776.output := by lin_cert using reduction7776.terms
def image7777 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7777 : InImage map_34_186 image7777 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7777 : Bundle := named_bundle% "RealMapCertificates/relations/basis7777.json"
theorem reductionProof7777 : EqualModuloRelations reduction7777.relations reduction7777.input reduction7777.output := by lin_cert using reduction7777.terms
theorem substitutionProof7777 : IsMapEvaluation generatorImages reduction7777.relations [8,8,8,13,13,13,13,23] reduction7777.output := by lin_cert using reduction7777.terms
def image7778 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7778 : InImage map_34_186 image7778 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7778 : Bundle := named_bundle% "RealMapCertificates/relations/basis7778.json"
theorem reductionProof7778 : EqualModuloRelations reduction7778.relations reduction7778.input reduction7778.output := by lin_cert using reduction7778.terms
theorem substitutionProof7778 : IsMapEvaluation generatorImages reduction7778.relations [8,8,8,8,8,9,101] reduction7778.output := by lin_cert using reduction7778.terms
def image7779 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7779 : InImage map_34_186 image7779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7779 : Bundle := named_bundle% "RealMapCertificates/relations/basis7779.json"
theorem reductionProof7779 : EqualModuloRelations reduction7779.relations reduction7779.input reduction7779.output := by lin_cert using reduction7779.terms
theorem substitutionProof7779 : IsMapEvaluation generatorImages reduction7779.relations [0,8,8,17,260] reduction7779.output := by lin_cert using reduction7779.terms
def image7780 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7780 : InImage map_34_186 image7780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7780 : Bundle := named_bundle% "RealMapCertificates/relations/basis7780.json"
theorem reductionProof7780 : EqualModuloRelations reduction7780.relations reduction7780.input reduction7780.output := by lin_cert using reduction7780.terms
theorem substitutionProof7780 : IsMapEvaluation generatorImages reduction7780.relations [0,0,149,149] reduction7780.output := by lin_cert using reduction7780.terms
def map_34_187 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7891 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7891 : InImage map_34_187 image7891 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7891 : Bundle := named_bundle% "RealMapCertificates/relations/basis7891.json"
theorem reductionProof7891 : EqualModuloRelations reduction7891.relations reduction7891.input reduction7891.output := by lin_cert using reduction7891.terms
theorem substitutionProof7891 : IsMapEvaluation generatorImages reduction7891.relations [0,0,0,927] reduction7891.output := by lin_cert using reduction7891.terms
def map_34_188 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image7977 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7977 : InImage map_34_188 image7977 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7977 : Bundle := named_bundle% "RealMapCertificates/relations/basis7977.json"
theorem reductionProof7977 : EqualModuloRelations reduction7977.relations reduction7977.input reduction7977.output := by lin_cert using reduction7977.terms
theorem substitutionProof7977 : IsMapEvaluation generatorImages reduction7977.relations [8,64,206] reduction7977.output := by lin_cert using reduction7977.terms
def image7978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7978 : InImage map_34_188 image7978 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7978 : Bundle := named_bundle% "RealMapCertificates/relations/basis7978.json"
theorem reductionProof7978 : EqualModuloRelations reduction7978.relations reduction7978.input reduction7978.output := by lin_cert using reduction7978.terms
theorem substitutionProof7978 : IsMapEvaluation generatorImages reduction7978.relations [8,8,8,380] reduction7978.output := by lin_cert using reduction7978.terms
def image7979 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7979 : InImage map_34_188 image7979 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7979 : Bundle := named_bundle% "RealMapCertificates/relations/basis7979.json"
theorem reductionProof7979 : EqualModuloRelations reduction7979.relations reduction7979.input reduction7979.output := by lin_cert using reduction7979.terms
theorem substitutionProof7979 : IsMapEvaluation generatorImages reduction7979.relations [8,8,8,8,248] reduction7979.output := by lin_cert using reduction7979.terms
def image7980 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7980 : InImage map_34_188 image7980 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7980 : Bundle := named_bundle% "RealMapCertificates/relations/basis7980.json"
theorem reductionProof7980 : EqualModuloRelations reduction7980.relations reduction7980.input reduction7980.output := by lin_cert using reduction7980.terms
theorem substitutionProof7980 : IsMapEvaluation generatorImages reduction7980.relations [1,1,149,149] reduction7980.output := by lin_cert using reduction7980.terms
def image7981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7981 : InImage map_34_188 image7981 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7981 : Bundle := named_bundle% "RealMapCertificates/relations/basis7981.json"
theorem reductionProof7981 : EqualModuloRelations reduction7981.relations reduction7981.input reduction7981.output := by lin_cert using reduction7981.terms
theorem substitutionProof7981 : IsMapEvaluation generatorImages reduction7981.relations [0,0,0,0,0,0,64,260] reduction7981.output := by lin_cert using reduction7981.terms
end RealMapCertificates
