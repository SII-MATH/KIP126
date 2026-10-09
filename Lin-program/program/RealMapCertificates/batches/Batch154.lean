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
  | 33 => []
  | 64 => []
  | 72 => []
  | 101 => []
  | 112 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 168 => []
  | 187 => []
  | 188 => []
  | 209 => []
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 255 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 279 => []
  | 291 => []
  | 299 => []
  | 316 => []
  | 346 => []
  | 347 => []
  | 380 => []
  | 382 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 471 => []
  | 499 => []
  | 517 => []
  | 549 => []
  | 573 => []
  | 599 => []
  | 627 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 928 => [[4,7,7,9,12,12]]
  | 940 => []
  | 963 => []
  | 974 => []
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1102 => [[4,4,7,7,9,12,12]]
  | 1302 => [[0,0,5,8,12,12,12]]
  | 1317 => [[6,8,12,12,12]]
  | 1365 => [[6,9,12,12,12]]
  | 1366 => [[7,9,12,12,12]]
  | 1383 => []
  | 1385 => []
  | 1401 => []
  | 1481 => [[5,5,7,12,12,12]]
  | _ => []
def map_34_189 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8133 : InImage map_34_189 image8133 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8133 : Bundle := named_bundle% "RealMapCertificates/relations/basis8133.json"
theorem reductionProof8133 : EqualModuloRelations reduction8133.relations reduction8133.input reduction8133.output := by lin_cert using reduction8133.terms
theorem substitutionProof8133 : IsMapEvaluation generatorImages reduction8133.relations [8,8,9,13,13,13,13,23] reduction8133.output := by lin_cert using reduction8133.terms
def image8134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8134 : InImage map_34_189 image8134 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8134 : Bundle := named_bundle% "RealMapCertificates/relations/basis8134.json"
theorem reductionProof8134 : EqualModuloRelations reduction8134.relations reduction8134.input reduction8134.output := by lin_cert using reduction8134.terms
theorem substitutionProof8134 : IsMapEvaluation generatorImages reduction8134.relations [8,8,8,404] reduction8134.output := by lin_cert using reduction8134.terms
def image8135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8135 : InImage map_34_189 image8135 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8135 : Bundle := named_bundle% "RealMapCertificates/relations/basis8135.json"
theorem reductionProof8135 : EqualModuloRelations reduction8135.relations reduction8135.input reduction8135.output := by lin_cert using reduction8135.terms
theorem substitutionProof8135 : IsMapEvaluation generatorImages reduction8135.relations [8,8,8,8,8,13,101] reduction8135.output := by lin_cert using reduction8135.terms
def image8136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8136 : InImage map_34_189 image8136 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8136 : Bundle := named_bundle% "RealMapCertificates/relations/basis8136.json"
theorem reductionProof8136 : EqualModuloRelations reduction8136.relations reduction8136.input reduction8136.output := by lin_cert using reduction8136.terms
theorem substitutionProof8136 : IsMapEvaluation generatorImages reduction8136.relations [0,0,0,0,0,64,274] reduction8136.output := by lin_cert using reduction8136.terms
def image8137 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8137 : InImage map_34_189 image8137 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8137 : Bundle := named_bundle% "RealMapCertificates/relations/basis8137.json"
theorem reductionProof8137 : EqualModuloRelations reduction8137.relations reduction8137.input reduction8137.output := by lin_cert using reduction8137.terms
theorem substitutionProof8137 : IsMapEvaluation generatorImages reduction8137.relations [0,0,0,0,0,0,0,897] reduction8137.output := by lin_cert using reduction8137.terms
def map_34_190 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image8244 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8244 : InImage map_34_190 image8244 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8244 : Bundle := named_bundle% "RealMapCertificates/relations/basis8244.json"
theorem reductionProof8244 : EqualModuloRelations reduction8244.relations reduction8244.input reduction8244.output := by lin_cert using reduction8244.terms
theorem substitutionProof8244 : IsMapEvaluation generatorImages reduction8244.relations [0,0,0,0,0,0,0,919] reduction8244.output := by lin_cert using reduction8244.terms
def map_34_191 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8360 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8360 : InImage map_34_191 image8360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8360 : Bundle := named_bundle% "RealMapCertificates/relations/basis8360.json"
theorem reductionProof8360 : EqualModuloRelations reduction8360.relations reduction8360.input reduction8360.output := by lin_cert using reduction8360.terms
theorem substitutionProof8360 : IsMapEvaluation generatorImages reduction8360.relations [8,8,64,149] reduction8360.output := by lin_cert using reduction8360.terms
def image8361 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8361 : InImage map_34_191 image8361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8361 : Bundle := named_bundle% "RealMapCertificates/relations/basis8361.json"
theorem reductionProof8361 : EqualModuloRelations reduction8361.relations reduction8361.input reduction8361.output := by lin_cert using reduction8361.terms
theorem substitutionProof8361 : IsMapEvaluation generatorImages reduction8361.relations [8,8,8,9,248] reduction8361.output := by lin_cert using reduction8361.terms
def image8362 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8362 : InImage map_34_191 image8362 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8362 : Bundle := named_bundle% "RealMapCertificates/relations/basis8362.json"
theorem reductionProof8362 : EqualModuloRelations reduction8362.relations reduction8362.input reduction8362.output := by lin_cert using reduction8362.terms
theorem substitutionProof8362 : IsMapEvaluation generatorImages reduction8362.relations [8,8,8,8,260] reduction8362.output := by lin_cert using reduction8362.terms
def image8363 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8363 : InImage map_34_191 image8363 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8363 : Bundle := named_bundle% "RealMapCertificates/relations/basis8363.json"
theorem reductionProof8363 : EqualModuloRelations reduction8363.relations reduction8363.input reduction8363.output := by lin_cert using reduction8363.terms
theorem substitutionProof8363 : IsMapEvaluation generatorImages reduction8363.relations [0,0,0,0,0,0,0,0,0,898] reduction8363.output := by lin_cert using reduction8363.terms
def map_34_192 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image8504 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8504 : InImage map_34_192 image8504 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8504 : Bundle := named_bundle% "RealMapCertificates/relations/basis8504.json"
theorem reductionProof8504 : EqualModuloRelations reduction8504.relations reduction8504.input reduction8504.output := by lin_cert using reduction8504.terms
theorem substitutionProof8504 : IsMapEvaluation generatorImages reduction8504.relations [8,8,13,13,13,13,13,23] reduction8504.output := by lin_cert using reduction8504.terms
def image8505 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8505 : InImage map_34_192 image8505 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8505 : Bundle := named_bundle% "RealMapCertificates/relations/basis8505.json"
theorem reductionProof8505 : EqualModuloRelations reduction8505.relations reduction8505.input reduction8505.output := by lin_cert using reduction8505.terms
theorem substitutionProof8505 : IsMapEvaluation generatorImages reduction8505.relations [8,8,8,434] reduction8505.output := by lin_cert using reduction8505.terms
def image8506 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8506 : InImage map_34_192 image8506 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8506 : Bundle := named_bundle% "RealMapCertificates/relations/basis8506.json"
theorem reductionProof8506 : EqualModuloRelations reduction8506.relations reduction8506.input reduction8506.output := by lin_cert using reduction8506.terms
theorem substitutionProof8506 : IsMapEvaluation generatorImages reduction8506.relations [8,8,8,8,9,13,101] reduction8506.output := by lin_cert using reduction8506.terms
def image8507 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8507 : InImage map_34_192 image8507 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8507 : Bundle := named_bundle% "RealMapCertificates/relations/basis8507.json"
theorem reductionProof8507 : EqualModuloRelations reduction8507.relations reduction8507.input reduction8507.output := by lin_cert using reduction8507.terms
theorem substitutionProof8507 : IsMapEvaluation generatorImages reduction8507.relations [1,1009] reduction8507.output := by lin_cert using reduction8507.terms
def map_34_193 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8623 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8623 : InImage map_34_193 image8623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8623 : Bundle := named_bundle% "RealMapCertificates/relations/basis8623.json"
theorem reductionProof8623 : EqualModuloRelations reduction8623.relations reduction8623.input reduction8623.output := by lin_cert using reduction8623.terms
theorem substitutionProof8623 : IsMapEvaluation generatorImages reduction8623.relations [1060] reduction8623.output := by lin_cert using reduction8623.terms
def image8624 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8624 : InImage map_34_193 image8624 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8624 : Bundle := named_bundle% "RealMapCertificates/relations/basis8624.json"
theorem reductionProof8624 : EqualModuloRelations reduction8624.relations reduction8624.input reduction8624.output := by lin_cert using reduction8624.terms
theorem substitutionProof8624 : IsMapEvaluation generatorImages reduction8624.relations [0,0,0,0,64,64,64] reduction8624.output := by lin_cert using reduction8624.terms
def map_34_194 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8741 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8741 : InImage map_34_194 image8741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8741 : Bundle := named_bundle% "RealMapCertificates/relations/basis8741.json"
theorem reductionProof8741 : EqualModuloRelations reduction8741.relations reduction8741.input reduction8741.output := by lin_cert using reduction8741.terms
theorem substitutionProof8741 : IsMapEvaluation generatorImages reduction8741.relations [8,8,64,160] reduction8741.output := by lin_cert using reduction8741.terms
def image8742 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8742 : InImage map_34_194 image8742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8742 : Bundle := named_bundle% "RealMapCertificates/relations/basis8742.json"
theorem reductionProof8742 : EqualModuloRelations reduction8742.relations reduction8742.input reduction8742.output := by lin_cert using reduction8742.terms
theorem substitutionProof8742 : IsMapEvaluation generatorImages reduction8742.relations [8,8,8,13,248] reduction8742.output := by lin_cert using reduction8742.terms
def image8743 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8743 : InImage map_34_194 image8743 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8743 : Bundle := named_bundle% "RealMapCertificates/relations/basis8743.json"
theorem reductionProof8743 : EqualModuloRelations reduction8743.relations reduction8743.input reduction8743.output := by lin_cert using reduction8743.terms
theorem substitutionProof8743 : IsMapEvaluation generatorImages reduction8743.relations [8,8,8,8,278] reduction8743.output := by lin_cert using reduction8743.terms
def image8744 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8744 : InImage map_34_194 image8744 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8744 : Bundle := named_bundle% "RealMapCertificates/relations/basis8744.json"
theorem reductionProof8744 : EqualModuloRelations reduction8744.relations reduction8744.input reduction8744.output := by lin_cert using reduction8744.terms
theorem substitutionProof8744 : IsMapEvaluation generatorImages reduction8744.relations [0,0,0,0,0,64,299] reduction8744.output := by lin_cert using reduction8744.terms
def map_34_195 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image8913 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8913 : InImage map_34_195 image8913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8913 : Bundle := named_bundle% "RealMapCertificates/relations/basis8913.json"
theorem reductionProof8913 : EqualModuloRelations reduction8913.relations reduction8913.input reduction8913.output := by lin_cert using reduction8913.terms
theorem substitutionProof8913 : IsMapEvaluation generatorImages reduction8913.relations [8,9,13,13,13,13,13,23] reduction8913.output := by lin_cert using reduction8913.terms
def image8914 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8914 : InImage map_34_195 image8914 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8914 : Bundle := named_bundle% "RealMapCertificates/relations/basis8914.json"
theorem reductionProof8914 : EqualModuloRelations reduction8914.relations reduction8914.input reduction8914.output := by lin_cert using reduction8914.terms
theorem substitutionProof8914 : IsMapEvaluation generatorImages reduction8914.relations [8,8,8,471] reduction8914.output := by lin_cert using reduction8914.terms
def image8915 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8915 : InImage map_34_195 image8915 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8915 : Bundle := named_bundle% "RealMapCertificates/relations/basis8915.json"
theorem reductionProof8915 : EqualModuloRelations reduction8915.relations reduction8915.input reduction8915.output := by lin_cert using reduction8915.terms
theorem substitutionProof8915 : IsMapEvaluation generatorImages reduction8915.relations [8,8,8,8,13,13,101] reduction8915.output := by lin_cert using reduction8915.terms
def map_34_196 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9024 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9024 : InImage map_34_196 image9024 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9024 : Bundle := named_bundle% "RealMapCertificates/relations/basis9024.json"
theorem reductionProof9024 : EqualModuloRelations reduction9024.relations reduction9024.input reduction9024.output := by lin_cert using reduction9024.terms
theorem substitutionProof9024 : IsMapEvaluation generatorImages reduction9024.relations [1102] reduction9024.output := by lin_cert using reduction9024.terms
def map_34_197 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9167 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9167 : InImage map_34_197 image9167 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9167 : Bundle := named_bundle% "RealMapCertificates/relations/basis9167.json"
theorem reductionProof9167 : EqualModuloRelations reduction9167.relations reduction9167.input reduction9167.output := by lin_cert using reduction9167.terms
theorem substitutionProof9167 : IsMapEvaluation generatorImages reduction9167.relations [8,8,16,347] reduction9167.output := by lin_cert using reduction9167.terms
def image9168 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9168 : InImage map_34_197 image9168 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9168 : Bundle := named_bundle% "RealMapCertificates/relations/basis9168.json"
theorem reductionProof9168 : EqualModuloRelations reduction9168.relations reduction9168.input reduction9168.output := by lin_cert using reduction9168.terms
theorem substitutionProof9168 : IsMapEvaluation generatorImages reduction9168.relations [8,8,9,13,248] reduction9168.output := by lin_cert using reduction9168.terms
def image9169 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9169 : InImage map_34_197 image9169 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9169 : Bundle := named_bundle% "RealMapCertificates/relations/basis9169.json"
theorem reductionProof9169 : EqualModuloRelations reduction9169.relations reduction9169.input reduction9169.output := by lin_cert using reduction9169.terms
theorem substitutionProof9169 : IsMapEvaluation generatorImages reduction9169.relations [8,8,8,8,291] reduction9169.output := by lin_cert using reduction9169.terms
def map_34_198 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9349 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9349 : InImage map_34_198 image9349 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9349 : Bundle := named_bundle% "RealMapCertificates/relations/basis9349.json"
theorem reductionProof9349 : EqualModuloRelations reduction9349.relations reduction9349.input reduction9349.output := by lin_cert using reduction9349.terms
theorem substitutionProof9349 : IsMapEvaluation generatorImages reduction9349.relations [8,13,13,13,13,13,13,23] reduction9349.output := by lin_cert using reduction9349.terms
def image9350 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9350 : InImage map_34_198 image9350 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9350 : Bundle := named_bundle% "RealMapCertificates/relations/basis9350.json"
theorem reductionProof9350 : EqualModuloRelations reduction9350.relations reduction9350.input reduction9350.output := by lin_cert using reduction9350.terms
theorem substitutionProof9350 : IsMapEvaluation generatorImages reduction9350.relations [8,8,8,499] reduction9350.output := by lin_cert using reduction9350.terms
def image9351 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9351 : InImage map_34_198 image9351 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9351 : Bundle := named_bundle% "RealMapCertificates/relations/basis9351.json"
theorem reductionProof9351 : EqualModuloRelations reduction9351.relations reduction9351.input reduction9351.output := by lin_cert using reduction9351.terms
theorem substitutionProof9351 : IsMapEvaluation generatorImages reduction9351.relations [8,8,8,9,13,13,101] reduction9351.output := by lin_cert using reduction9351.terms
def image9352 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9352 : InImage map_34_198 image9352 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9352 : Bundle := named_bundle% "RealMapCertificates/relations/basis9352.json"
theorem reductionProof9352 : EqualModuloRelations reduction9352.relations reduction9352.input reduction9352.output := by lin_cert using reduction9352.terms
theorem substitutionProof9352 : IsMapEvaluation generatorImages reduction9352.relations [1,5,64,260] reduction9352.output := by lin_cert using reduction9352.terms
def map_34_199 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image9494 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9494 : InImage map_34_199 image9494 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9494 : Bundle := named_bundle% "RealMapCertificates/relations/basis9494.json"
theorem reductionProof9494 : EqualModuloRelations reduction9494.relations reduction9494.input reduction9494.output := by lin_cert using reduction9494.terms
theorem substitutionProof9494 : IsMapEvaluation generatorImages reduction9494.relations [8,889] reduction9494.output := by lin_cert using reduction9494.terms
def image9495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9495 : InImage map_34_199 image9495 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9495 : Bundle := named_bundle% "RealMapCertificates/relations/basis9495.json"
theorem reductionProof9495 : EqualModuloRelations reduction9495.relations reduction9495.input reduction9495.output := by lin_cert using reduction9495.terms
theorem substitutionProof9495 : IsMapEvaluation generatorImages reduction9495.relations [0,0,64,380] reduction9495.output := by lin_cert using reduction9495.terms
def map_34_200 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9635 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9635 : InImage map_34_200 image9635 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9635 : Bundle := named_bundle% "RealMapCertificates/relations/basis9635.json"
theorem reductionProof9635 : EqualModuloRelations reduction9635.relations reduction9635.input reduction9635.output := by lin_cert using reduction9635.terms
theorem substitutionProof9635 : IsMapEvaluation generatorImages reduction9635.relations [8,8,13,13,248] reduction9635.output := by lin_cert using reduction9635.terms
def image9636 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9636 : InImage map_34_200 image9636 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9636 : Bundle := named_bundle% "RealMapCertificates/relations/basis9636.json"
theorem reductionProof9636 : EqualModuloRelations reduction9636.relations reduction9636.input reduction9636.output := by lin_cert using reduction9636.terms
theorem substitutionProof9636 : IsMapEvaluation generatorImages reduction9636.relations [8,8,8,517] reduction9636.output := by lin_cert using reduction9636.terms
def image9637 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9637 : InImage map_34_200 image9637 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9637 : Bundle := named_bundle% "RealMapCertificates/relations/basis9637.json"
theorem reductionProof9637 : EqualModuloRelations reduction9637.relations reduction9637.input reduction9637.output := by lin_cert using reduction9637.terms
theorem substitutionProof9637 : IsMapEvaluation generatorImages reduction9637.relations [8,8,8,8,316] reduction9637.output := by lin_cert using reduction9637.terms
def image9638 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9638 : InImage map_34_200 image9638 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9638 : Bundle := named_bundle% "RealMapCertificates/relations/basis9638.json"
theorem reductionProof9638 : EqualModuloRelations reduction9638.relations reduction9638.input reduction9638.output := by lin_cert using reduction9638.terms
theorem substitutionProof9638 : IsMapEvaluation generatorImages reduction9638.relations [0,0,0,0,0,0,64,347] reduction9638.output := by lin_cert using reduction9638.terms
def map_34_201 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image9837 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9837 : InImage map_34_201 image9837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9837 : Bundle := named_bundle% "RealMapCertificates/relations/basis9837.json"
theorem reductionProof9837 : EqualModuloRelations reduction9837.relations reduction9837.input reduction9837.output := by lin_cert using reduction9837.terms
theorem substitutionProof9837 : IsMapEvaluation generatorImages reduction9837.relations [9,13,13,13,13,13,13,23] reduction9837.output := by lin_cert using reduction9837.terms
def image9838 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9838 : InImage map_34_201 image9838 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9838 : Bundle := named_bundle% "RealMapCertificates/relations/basis9838.json"
theorem reductionProof9838 : EqualModuloRelations reduction9838.relations reduction9838.input reduction9838.output := by lin_cert using reduction9838.terms
theorem substitutionProof9838 : IsMapEvaluation generatorImages reduction9838.relations [8,8,8,17,255] reduction9838.output := by lin_cert using reduction9838.terms
def image9839 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9839 : InImage map_34_201 image9839 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9839 : Bundle := named_bundle% "RealMapCertificates/relations/basis9839.json"
theorem reductionProof9839 : EqualModuloRelations reduction9839.relations reduction9839.input reduction9839.output := by lin_cert using reduction9839.terms
theorem substitutionProof9839 : IsMapEvaluation generatorImages reduction9839.relations [8,8,8,13,13,13,101] reduction9839.output := by lin_cert using reduction9839.terms
def map_34_202 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9969 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9969 : InImage map_34_202 image9969 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9969 : Bundle := named_bundle% "RealMapCertificates/relations/basis9969.json"
theorem reductionProof9969 : EqualModuloRelations reduction9969.relations reduction9969.input reduction9969.output := by lin_cert using reduction9969.terms
theorem substitutionProof9969 : IsMapEvaluation generatorImages reduction9969.relations [8,928] reduction9969.output := by lin_cert using reduction9969.terms
def image9970 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9970 : InImage map_34_202 image9970 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9970 : Bundle := named_bundle% "RealMapCertificates/relations/basis9970.json"
theorem reductionProof9970 : EqualModuloRelations reduction9970.relations reduction9970.input reduction9970.output := by lin_cert using reduction9970.terms
theorem substitutionProof9970 : IsMapEvaluation generatorImages reduction9970.relations [0,0,8,64,260] reduction9970.output := by lin_cert using reduction9970.terms
def map_34_203 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10133 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10133 : InImage map_34_203 image10133 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10133 : Bundle := named_bundle% "RealMapCertificates/relations/basis10133.json"
theorem reductionProof10133 : EqualModuloRelations reduction10133.relations reduction10133.input reduction10133.output := by lin_cert using reduction10133.terms
theorem substitutionProof10133 : IsMapEvaluation generatorImages reduction10133.relations [8,9,13,13,248] reduction10133.output := by lin_cert using reduction10133.terms
def image10134 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10134 : InImage map_34_203 image10134 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10134 : Bundle := named_bundle% "RealMapCertificates/relations/basis10134.json"
theorem reductionProof10134 : EqualModuloRelations reduction10134.relations reduction10134.input reduction10134.output := by lin_cert using reduction10134.terms
theorem substitutionProof10134 : IsMapEvaluation generatorImages reduction10134.relations [8,8,8,8,347] reduction10134.output := by lin_cert using reduction10134.terms
def image10135 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10135 : InImage map_34_203 image10135 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10135 : Bundle := named_bundle% "RealMapCertificates/relations/basis10135.json"
theorem reductionProof10135 : EqualModuloRelations reduction10135.relations reduction10135.input reduction10135.output := by lin_cert using reduction10135.terms
theorem substitutionProof10135 : IsMapEvaluation generatorImages reduction10135.relations [8,8,8,8,346] reduction10135.output := by lin_cert using reduction10135.terms
def map_34_204 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image10335 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10335 : InImage map_34_204 image10335 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10335 : Bundle := named_bundle% "RealMapCertificates/relations/basis10335.json"
theorem reductionProof10335 : EqualModuloRelations reduction10335.relations reduction10335.input reduction10335.output := by lin_cert using reduction10335.terms
theorem substitutionProof10335 : IsMapEvaluation generatorImages reduction10335.relations [64,64,112] reduction10335.output := by lin_cert using reduction10335.terms
def image10336 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10336 : InImage map_34_204 image10336 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10336 : Bundle := named_bundle% "RealMapCertificates/relations/basis10336.json"
theorem reductionProof10336 : EqualModuloRelations reduction10336.relations reduction10336.input reduction10336.output := by lin_cert using reduction10336.terms
theorem substitutionProof10336 : IsMapEvaluation generatorImages reduction10336.relations [13,13,13,13,13,13,13,23] reduction10336.output := by lin_cert using reduction10336.terms
def image10337 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10337 : InImage map_34_204 image10337 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10337 : Bundle := named_bundle% "RealMapCertificates/relations/basis10337.json"
theorem reductionProof10337 : EqualModuloRelations reduction10337.relations reduction10337.input reduction10337.output := by lin_cert using reduction10337.terms
theorem substitutionProof10337 : IsMapEvaluation generatorImages reduction10337.relations [8,8,9,13,13,13,101] reduction10337.output := by lin_cert using reduction10337.terms
def image10338 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10338 : InImage map_34_204 image10338 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10338 : Bundle := named_bundle% "RealMapCertificates/relations/basis10338.json"
theorem reductionProof10338 : EqualModuloRelations reduction10338.relations reduction10338.input reduction10338.output := by lin_cert using reduction10338.terms
theorem substitutionProof10338 : IsMapEvaluation generatorImages reduction10338.relations [8,8,8,8,17,188] reduction10338.output := by lin_cert using reduction10338.terms
def map_34_205 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10498 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10498 : InImage map_34_205 image10498 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10498 : Bundle := named_bundle% "RealMapCertificates/relations/basis10498.json"
theorem reductionProof10498 : EqualModuloRelations reduction10498.relations reduction10498.input reduction10498.output := by lin_cert using reduction10498.terms
theorem substitutionProof10498 : IsMapEvaluation generatorImages reduction10498.relations [8,8,753] reduction10498.output := by lin_cert using reduction10498.terms
def image10499 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10499 : InImage map_34_205 image10499 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10499 : Bundle := named_bundle% "RealMapCertificates/relations/basis10499.json"
theorem reductionProof10499 : EqualModuloRelations reduction10499.relations reduction10499.input reduction10499.output := by lin_cert using reduction10499.terms
theorem substitutionProof10499 : IsMapEvaluation generatorImages reduction10499.relations [0,0,8,64,278] reduction10499.output := by lin_cert using reduction10499.terms
def map_34_206 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10662 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10662 : InImage map_34_206 image10662 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10662 : Bundle := named_bundle% "RealMapCertificates/relations/basis10662.json"
theorem reductionProof10662 : EqualModuloRelations reduction10662.relations reduction10662.input reduction10662.output := by lin_cert using reduction10662.terms
theorem substitutionProof10662 : IsMapEvaluation generatorImages reduction10662.relations [8,13,13,13,248] reduction10662.output := by lin_cert using reduction10662.terms
def image10663 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10663 : InImage map_34_206 image10663 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10663 : Bundle := named_bundle% "RealMapCertificates/relations/basis10663.json"
theorem reductionProof10663 : EqualModuloRelations reduction10663.relations reduction10663.input reduction10663.output := by lin_cert using reduction10663.terms
theorem substitutionProof10663 : IsMapEvaluation generatorImages reduction10663.relations [8,8,8,9,346] reduction10663.output := by lin_cert using reduction10663.terms
def image10664 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10664 : InImage map_34_206 image10664 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10664 : Bundle := named_bundle% "RealMapCertificates/relations/basis10664.json"
theorem reductionProof10664 : EqualModuloRelations reduction10664.relations reduction10664.input reduction10664.output := by lin_cert using reduction10664.terms
theorem substitutionProof10664 : IsMapEvaluation generatorImages reduction10664.relations [8,8,8,8,382] reduction10664.output := by lin_cert using reduction10664.terms
def map_34_207 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image10891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10891 : InImage map_34_207 image10891 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10891 : Bundle := named_bundle% "RealMapCertificates/relations/basis10891.json"
theorem reductionProof10891 : EqualModuloRelations reduction10891.relations reduction10891.input reduction10891.output := by lin_cert using reduction10891.terms
theorem substitutionProof10891 : IsMapEvaluation generatorImages reduction10891.relations [8,64,64,64] reduction10891.output := by lin_cert using reduction10891.terms
def image10892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10892 : InImage map_34_207 image10892 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10892 : Bundle := named_bundle% "RealMapCertificates/relations/basis10892.json"
theorem reductionProof10892 : EqualModuloRelations reduction10892.relations reduction10892.input reduction10892.output := by lin_cert using reduction10892.terms
theorem substitutionProof10892 : IsMapEvaluation generatorImages reduction10892.relations [8,8,13,13,13,13,101] reduction10892.output := by lin_cert using reduction10892.terms
def image10893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10893 : InImage map_34_207 image10893 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10893 : Bundle := named_bundle% "RealMapCertificates/relations/basis10893.json"
theorem reductionProof10893 : EqualModuloRelations reduction10893.relations reduction10893.input reduction10893.output := by lin_cert using reduction10893.terms
theorem substitutionProof10893 : IsMapEvaluation generatorImages reduction10893.relations [8,8,8,8,20,188] reduction10893.output := by lin_cert using reduction10893.terms
def map_34_208 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image11019 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11019 : InImage map_34_208 image11019 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11019 : Bundle := named_bundle% "RealMapCertificates/relations/basis11019.json"
theorem reductionProof11019 : EqualModuloRelations reduction11019.relations reduction11019.input reduction11019.output := by lin_cert using reduction11019.terms
theorem substitutionProof11019 : IsMapEvaluation generatorImages reduction11019.relations [8,8,784] reduction11019.output := by lin_cert using reduction11019.terms
def image11020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11020 : InImage map_34_208 image11020 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11020 : Bundle := named_bundle% "RealMapCertificates/relations/basis11020.json"
theorem reductionProof11020 : EqualModuloRelations reduction11020.relations reduction11020.input reduction11020.output := by lin_cert using reduction11020.terms
theorem substitutionProof11020 : IsMapEvaluation generatorImages reduction11020.relations [1,1302] reduction11020.output := by lin_cert using reduction11020.terms
def image11021 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11021 : InImage map_34_208 image11021 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11021 : Bundle := named_bundle% "RealMapCertificates/relations/basis11021.json"
theorem reductionProof11021 : EqualModuloRelations reduction11021.relations reduction11021.input reduction11021.output := by lin_cert using reduction11021.terms
theorem substitutionProof11021 : IsMapEvaluation generatorImages reduction11021.relations [0,0,8,16,627] reduction11021.output := by lin_cert using reduction11021.terms
def map_34_209 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image11197 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11197 : InImage map_34_209 image11197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11197 : Bundle := named_bundle% "RealMapCertificates/relations/basis11197.json"
theorem reductionProof11197 : EqualModuloRelations reduction11197.relations reduction11197.input reduction11197.output := by lin_cert using reduction11197.terms
theorem substitutionProof11197 : IsMapEvaluation generatorImages reduction11197.relations [9,13,13,13,248] reduction11197.output := by lin_cert using reduction11197.terms
def image11198 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11198 : InImage map_34_209 image11198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11198 : Bundle := named_bundle% "RealMapCertificates/relations/basis11198.json"
theorem reductionProof11198 : EqualModuloRelations reduction11198.relations reduction11198.input reduction11198.output := by lin_cert using reduction11198.terms
theorem substitutionProof11198 : IsMapEvaluation generatorImages reduction11198.relations [8,8,8,13,346] reduction11198.output := by lin_cert using reduction11198.terms
def image11199 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11199 : InImage map_34_209 image11199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11199 : Bundle := named_bundle% "RealMapCertificates/relations/basis11199.json"
theorem reductionProof11199 : EqualModuloRelations reduction11199.relations reduction11199.input reduction11199.output := by lin_cert using reduction11199.terms
theorem substitutionProof11199 : IsMapEvaluation generatorImages reduction11199.relations [8,8,8,8,16,209] reduction11199.output := by lin_cert using reduction11199.terms
def image11200 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11200 : InImage map_34_209 image11200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11200 : Bundle := named_bundle% "RealMapCertificates/relations/basis11200.json"
theorem reductionProof11200 : EqualModuloRelations reduction11200.relations reduction11200.input reduction11200.output := by lin_cert using reduction11200.terms
theorem substitutionProof11200 : IsMapEvaluation generatorImages reduction11200.relations [0,0,1317] reduction11200.output := by lin_cert using reduction11200.terms
def map_34_210 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11400 : InImage map_34_210 image11400 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11400 : Bundle := named_bundle% "RealMapCertificates/relations/basis11400.json"
theorem reductionProof11400 : EqualModuloRelations reduction11400.relations reduction11400.input reduction11400.output := by lin_cert using reduction11400.terms
theorem substitutionProof11400 : IsMapEvaluation generatorImages reduction11400.relations [13,13,13,13,13,13,13,33] reduction11400.output := by lin_cert using reduction11400.terms
def image11401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11401 : InImage map_34_210 image11401 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11401 : Bundle := named_bundle% "RealMapCertificates/relations/basis11401.json"
theorem reductionProof11401 : EqualModuloRelations reduction11401.relations reduction11401.input reduction11401.output := by lin_cert using reduction11401.terms
theorem substitutionProof11401 : IsMapEvaluation generatorImages reduction11401.relations [8,64,64,72] reduction11401.output := by lin_cert using reduction11401.terms
def image11402 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11402 : InImage map_34_210 image11402 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11402 : Bundle := named_bundle% "RealMapCertificates/relations/basis11402.json"
theorem reductionProof11402 : EqualModuloRelations reduction11402.relations reduction11402.input reduction11402.output := by lin_cert using reduction11402.terms
theorem substitutionProof11402 : IsMapEvaluation generatorImages reduction11402.relations [8,9,13,13,13,13,101] reduction11402.output := by lin_cert using reduction11402.terms
def image11403 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11403 : InImage map_34_210 image11403 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11403 : Bundle := named_bundle% "RealMapCertificates/relations/basis11403.json"
theorem reductionProof11403 : EqualModuloRelations reduction11403.relations reduction11403.input reduction11403.output := by lin_cert using reduction11403.terms
theorem substitutionProof11403 : IsMapEvaluation generatorImages reduction11403.relations [8,8,8,8,8,267] reduction11403.output := by lin_cert using reduction11403.terms
def image11404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11404 : InImage map_34_210 image11404 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11404 : Bundle := named_bundle% "RealMapCertificates/relations/basis11404.json"
theorem reductionProof11404 : EqualModuloRelations reduction11404.relations reduction11404.input reduction11404.output := by lin_cert using reduction11404.terms
theorem substitutionProof11404 : IsMapEvaluation generatorImages reduction11404.relations [1,5,64,347] reduction11404.output := by lin_cert using reduction11404.terms
def map_34_211 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11565 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11565 : InImage map_34_211 image11565 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11565 : Bundle := named_bundle% "RealMapCertificates/relations/basis11565.json"
theorem reductionProof11565 : EqualModuloRelations reduction11565.relations reduction11565.input reduction11565.output := by lin_cert using reduction11565.terms
theorem substitutionProof11565 : IsMapEvaluation generatorImages reduction11565.relations [149,260] reduction11565.output := by lin_cert using reduction11565.terms
def image11566 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11566 : InImage map_34_211 image11566 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11566 : Bundle := named_bundle% "RealMapCertificates/relations/basis11566.json"
theorem reductionProof11566 : EqualModuloRelations reduction11566.relations reduction11566.input reduction11566.output := by lin_cert using reduction11566.terms
theorem substitutionProof11566 : IsMapEvaluation generatorImages reduction11566.relations [8,9,784] reduction11566.output := by lin_cert using reduction11566.terms
def map_34_212 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11730 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11730 : InImage map_34_212 image11730 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11730 : Bundle := named_bundle% "RealMapCertificates/relations/basis11730.json"
theorem reductionProof11730 : EqualModuloRelations reduction11730.relations reduction11730.input reduction11730.output := by lin_cert using reduction11730.terms
theorem substitutionProof11730 : IsMapEvaluation generatorImages reduction11730.relations [17,897] reduction11730.output := by lin_cert using reduction11730.terms
def image11731 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11731 : InImage map_34_212 image11731 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11731 : Bundle := named_bundle% "RealMapCertificates/relations/basis11731.json"
theorem reductionProof11731 : EqualModuloRelations reduction11731.relations reduction11731.input reduction11731.output := by lin_cert using reduction11731.terms
theorem substitutionProof11731 : IsMapEvaluation generatorImages reduction11731.relations [13,13,13,13,248] reduction11731.output := by lin_cert using reduction11731.terms
def image11732 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11732 : InImage map_34_212 image11732 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11732 : Bundle := named_bundle% "RealMapCertificates/relations/basis11732.json"
theorem reductionProof11732 : EqualModuloRelations reduction11732.relations reduction11732.input reduction11732.output := by lin_cert using reduction11732.terms
theorem substitutionProof11732 : IsMapEvaluation generatorImages reduction11732.relations [8,8,9,13,346] reduction11732.output := by lin_cert using reduction11732.terms
def image11733 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11733 : InImage map_34_212 image11733 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11733 : Bundle := named_bundle% "RealMapCertificates/relations/basis11733.json"
theorem reductionProof11733 : EqualModuloRelations reduction11733.relations reduction11733.input reduction11733.output := by lin_cert using reduction11733.terms
theorem substitutionProof11733 : IsMapEvaluation generatorImages reduction11733.relations [8,8,8,8,8,279] reduction11733.output := by lin_cert using reduction11733.terms
def image11734 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11734 : InImage map_34_212 image11734 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11734 : Bundle := named_bundle% "RealMapCertificates/relations/basis11734.json"
theorem reductionProof11734 : EqualModuloRelations reduction11734.relations reduction11734.input reduction11734.output := by lin_cert using reduction11734.terms
theorem substitutionProof11734 : IsMapEvaluation generatorImages reduction11734.relations [0,0,1365] reduction11734.output := by lin_cert using reduction11734.terms
def map_34_213 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11982 : InImage map_34_213 image11982 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11982 : Bundle := named_bundle% "RealMapCertificates/relations/basis11982.json"
theorem reductionProof11982 : EqualModuloRelations reduction11982.relations reduction11982.input reduction11982.output := by lin_cert using reduction11982.terms
theorem substitutionProof11982 : IsMapEvaluation generatorImages reduction11982.relations [8,16,64,187] reduction11982.output := by lin_cert using reduction11982.terms
def image11983 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11983 : InImage map_34_213 image11983 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11983 : Bundle := named_bundle% "RealMapCertificates/relations/basis11983.json"
theorem reductionProof11983 : EqualModuloRelations reduction11983.relations reduction11983.input reduction11983.output := by lin_cert using reduction11983.terms
theorem substitutionProof11983 : IsMapEvaluation generatorImages reduction11983.relations [8,13,13,13,13,13,101] reduction11983.output := by lin_cert using reduction11983.terms
def image11984 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11984 : InImage map_34_213 image11984 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11984 : Bundle := named_bundle% "RealMapCertificates/relations/basis11984.json"
theorem reductionProof11984 : EqualModuloRelations reduction11984.relations reduction11984.input reduction11984.output := by lin_cert using reduction11984.terms
theorem substitutionProof11984 : IsMapEvaluation generatorImages reduction11984.relations [8,8,8,8,9,267] reduction11984.output := by lin_cert using reduction11984.terms
def image11985 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11985 : InImage map_34_213 image11985 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11985 : Bundle := named_bundle% "RealMapCertificates/relations/basis11985.json"
theorem reductionProof11985 : EqualModuloRelations reduction11985.relations reduction11985.input reduction11985.output := by lin_cert using reduction11985.terms
theorem substitutionProof11985 : IsMapEvaluation generatorImages reduction11985.relations [0,1401] reduction11985.output := by lin_cert using reduction11985.terms
def image11986 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11986 : InImage map_34_213 image11986 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11986 : Bundle := named_bundle% "RealMapCertificates/relations/basis11986.json"
theorem reductionProof11986 : EqualModuloRelations reduction11986.relations reduction11986.input reduction11986.output := by lin_cert using reduction11986.terms
theorem substitutionProof11986 : IsMapEvaluation generatorImages reduction11986.relations [0,0,0,1366] reduction11986.output := by lin_cert using reduction11986.terms
def map_34_214 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image12148 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12148 : InImage map_34_214 image12148 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12148 : Bundle := named_bundle% "RealMapCertificates/relations/basis12148.json"
theorem reductionProof12148 : EqualModuloRelations reduction12148.relations reduction12148.input reduction12148.output := by lin_cert using reduction12148.terms
theorem substitutionProof12148 : IsMapEvaluation generatorImages reduction12148.relations [149,278] reduction12148.output := by lin_cert using reduction12148.terms
def image12149 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12149 : InImage map_34_214 image12149 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12149 : Bundle := named_bundle% "RealMapCertificates/relations/basis12149.json"
theorem reductionProof12149 : EqualModuloRelations reduction12149.relations reduction12149.input reduction12149.output := by lin_cert using reduction12149.terms
theorem substitutionProof12149 : IsMapEvaluation generatorImages reduction12149.relations [8,13,784] reduction12149.output := by lin_cert using reduction12149.terms
def image12150 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12150 : InImage map_34_214 image12150 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12150 : Bundle := named_bundle% "RealMapCertificates/relations/basis12150.json"
theorem reductionProof12150 : EqualModuloRelations reduction12150.relations reduction12150.input reduction12150.output := by lin_cert using reduction12150.terms
theorem substitutionProof12150 : IsMapEvaluation generatorImages reduction12150.relations [1,64,549] reduction12150.output := by lin_cert using reduction12150.terms
def image12151 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12151 : InImage map_34_214 image12151 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12151 : Bundle := named_bundle% "RealMapCertificates/relations/basis12151.json"
theorem reductionProof12151 : EqualModuloRelations reduction12151.relations reduction12151.input reduction12151.output := by lin_cert using reduction12151.terms
theorem substitutionProof12151 : IsMapEvaluation generatorImages reduction12151.relations [0,0,0,1383] reduction12151.output := by lin_cert using reduction12151.terms
def map_34_215 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image12337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12337 : InImage map_34_215 image12337 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12337 : Bundle := named_bundle% "RealMapCertificates/relations/basis12337.json"
theorem reductionProof12337 : EqualModuloRelations reduction12337.relations reduction12337.input reduction12337.output := by lin_cert using reduction12337.terms
theorem substitutionProof12337 : IsMapEvaluation generatorImages reduction12337.relations [64,573] reduction12337.output := by lin_cert using reduction12337.terms
def image12338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12338 : InImage map_34_215 image12338 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12338 : Bundle := named_bundle% "RealMapCertificates/relations/basis12338.json"
theorem reductionProof12338 : EqualModuloRelations reduction12338.relations reduction12338.input reduction12338.output := by lin_cert using reduction12338.terms
theorem substitutionProof12338 : IsMapEvaluation generatorImages reduction12338.relations [17,940] reduction12338.output := by lin_cert using reduction12338.terms
def image12339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12339 : InImage map_34_215 image12339 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12339 : Bundle := named_bundle% "RealMapCertificates/relations/basis12339.json"
theorem reductionProof12339 : EqualModuloRelations reduction12339.relations reduction12339.input reduction12339.output := by lin_cert using reduction12339.terms
theorem substitutionProof12339 : IsMapEvaluation generatorImages reduction12339.relations [8,8,13,13,346] reduction12339.output := by lin_cert using reduction12339.terms
def image12340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12340 : InImage map_34_215 image12340 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12340 : Bundle := named_bundle% "RealMapCertificates/relations/basis12340.json"
theorem reductionProof12340 : EqualModuloRelations reduction12340.relations reduction12340.input reduction12340.output := by lin_cert using reduction12340.terms
theorem substitutionProof12340 : IsMapEvaluation generatorImages reduction12340.relations [8,8,8,8,8,8,209] reduction12340.output := by lin_cert using reduction12340.terms
def image12341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12341 : InImage map_34_215 image12341 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12341 : Bundle := named_bundle% "RealMapCertificates/relations/basis12341.json"
theorem reductionProof12341 : EqualModuloRelations reduction12341.relations reduction12341.input reduction12341.output := by lin_cert using reduction12341.terms
theorem substitutionProof12341 : IsMapEvaluation generatorImages reduction12341.relations [0,0,0,0,1385] reduction12341.output := by lin_cert using reduction12341.terms
def map_34_216 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image12549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12549 : InImage map_34_216 image12549 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12549 : Bundle := named_bundle% "RealMapCertificates/relations/basis12549.json"
theorem reductionProof12549 : EqualModuloRelations reduction12549.relations reduction12549.input reduction12549.output := by lin_cert using reduction12549.terms
theorem substitutionProof12549 : IsMapEvaluation generatorImages reduction12549.relations [9,13,13,13,13,13,101] reduction12549.output := by lin_cert using reduction12549.terms
def image12550 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12550 : InImage map_34_216 image12550 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12550 : Bundle := named_bundle% "RealMapCertificates/relations/basis12550.json"
theorem reductionProof12550 : EqualModuloRelations reduction12550.relations reduction12550.input reduction12550.output := by lin_cert using reduction12550.terms
theorem substitutionProof12550 : IsMapEvaluation generatorImages reduction12550.relations [8,8,64,254] reduction12550.output := by lin_cert using reduction12550.terms
def image12551 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12551 : InImage map_34_216 image12551 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12551 : Bundle := named_bundle% "RealMapCertificates/relations/basis12551.json"
theorem reductionProof12551 : EqualModuloRelations reduction12551.relations reduction12551.input reduction12551.output := by lin_cert using reduction12551.terms
theorem substitutionProof12551 : IsMapEvaluation generatorImages reduction12551.relations [8,8,8,8,13,267] reduction12551.output := by lin_cert using reduction12551.terms
def map_34_217 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12717 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12717 : InImage map_34_217 image12717 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12717 : Bundle := named_bundle% "RealMapCertificates/relations/basis12717.json"
theorem reductionProof12717 : EqualModuloRelations reduction12717.relations reduction12717.input reduction12717.output := by lin_cert using reduction12717.terms
theorem substitutionProof12717 : IsMapEvaluation generatorImages reduction12717.relations [16,963] reduction12717.output := by lin_cert using reduction12717.terms
def image12718 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12718 : InImage map_34_217 image12718 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12718 : Bundle := named_bundle% "RealMapCertificates/relations/basis12718.json"
theorem reductionProof12718 : EqualModuloRelations reduction12718.relations reduction12718.input reduction12718.output := by lin_cert using reduction12718.terms
theorem substitutionProof12718 : IsMapEvaluation generatorImages reduction12718.relations [9,13,784] reduction12718.output := by lin_cert using reduction12718.terms
def map_34_218 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image12887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12887 : InImage map_34_218 image12887 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12887 : Bundle := named_bundle% "RealMapCertificates/relations/basis12887.json"
theorem reductionProof12887 : EqualModuloRelations reduction12887.relations reduction12887.input reduction12887.output := by lin_cert using reduction12887.terms
theorem substitutionProof12887 : IsMapEvaluation generatorImages reduction12887.relations [64,599] reduction12887.output := by lin_cert using reduction12887.terms
def image12888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12888 : InImage map_34_218 image12888 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12888 : Bundle := named_bundle% "RealMapCertificates/relations/basis12888.json"
theorem reductionProof12888 : EqualModuloRelations reduction12888.relations reduction12888.input reduction12888.output := by lin_cert using reduction12888.terms
theorem substitutionProof12888 : IsMapEvaluation generatorImages reduction12888.relations [16,974] reduction12888.output := by lin_cert using reduction12888.terms
def image12889 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12889 : InImage map_34_218 image12889 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12889 : Bundle := named_bundle% "RealMapCertificates/relations/basis12889.json"
theorem reductionProof12889 : EqualModuloRelations reduction12889.relations reduction12889.input reduction12889.output := by lin_cert using reduction12889.terms
theorem substitutionProof12889 : IsMapEvaluation generatorImages reduction12889.relations [13,13,13,13,13,168] reduction12889.output := by lin_cert using reduction12889.terms
def image12890 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12890 : InImage map_34_218 image12890 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12890 : Bundle := named_bundle% "RealMapCertificates/relations/basis12890.json"
theorem reductionProof12890 : EqualModuloRelations reduction12890.relations reduction12890.input reduction12890.output := by lin_cert using reduction12890.terms
theorem substitutionProof12890 : IsMapEvaluation generatorImages reduction12890.relations [8,9,13,13,346] reduction12890.output := by lin_cert using reduction12890.terms
def image12891 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12891 : InImage map_34_218 image12891 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12891 : Bundle := named_bundle% "RealMapCertificates/relations/basis12891.json"
theorem reductionProof12891 : EqualModuloRelations reduction12891.relations reduction12891.input reduction12891.output := by lin_cert using reduction12891.terms
theorem substitutionProof12891 : IsMapEvaluation generatorImages reduction12891.relations [8,8,8,8,8,9,209] reduction12891.output := by lin_cert using reduction12891.terms
def image12892 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12892 : InImage map_34_218 image12892 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12892 : Bundle := named_bundle% "RealMapCertificates/relations/basis12892.json"
theorem reductionProof12892 : EqualModuloRelations reduction12892.relations reduction12892.input reduction12892.output := by lin_cert using reduction12892.terms
theorem substitutionProof12892 : IsMapEvaluation generatorImages reduction12892.relations [1,1481] reduction12892.output := by lin_cert using reduction12892.terms
def image12893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12893 : InImage map_34_218 image12893 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12893 : Bundle := named_bundle% "RealMapCertificates/relations/basis12893.json"
theorem reductionProof12893 : EqualModuloRelations reduction12893.relations reduction12893.input reduction12893.output := by lin_cert using reduction12893.terms
theorem substitutionProof12893 : IsMapEvaluation generatorImages reduction12893.relations [0,17,963] reduction12893.output := by lin_cert using reduction12893.terms
end RealMapCertificates
