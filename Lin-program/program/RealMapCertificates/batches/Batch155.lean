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
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 59 => []
  | 64 => []
  | 72 => []
  | 75 => []
  | 83 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 164 => []
  | 166 => [[6,9,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 187 => []
  | 188 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 201 => []
  | 209 => []
  | 210 => []
  | 212 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 267 => []
  | 279 => []
  | 286 => []
  | 292 => []
  | 303 => []
  | 318 => []
  | 324 => []
  | 346 => []
  | 348 => []
  | 455 => []
  | 492 => []
  | 585 => []
  | 586 => []
  | 601 => []
  | 610 => []
  | 627 => []
  | 640 => []
  | 642 => [[7,10,12,12]]
  | 645 => []
  | 655 => []
  | 690 => []
  | 706 => []
  | 729 => []
  | 779 => []
  | 784 => [[7,7,9,12,12]]
  | 797 => []
  | 812 => []
  | 854 => []
  | 963 => []
  | 974 => []
  | 1035 => []
  | 1220 => []
  | 1367 => []
  | 1385 => []
  | 1441 => []
  | 1483 => []
  | 1504 => []
  | 1537 => [[5,5,8,12,12,12]]
  | 1593 => [[5,5,9,12,12,12]]
  | 1596 => []
  | 1606 => []
  | 1639 => [[5,7,9,12,12,12]]
  | 1688 => [[7,7,9,12,12,12]]
  | 1719 => []
  | 1901 => []
  | 1927 => []
  | 1993 => []
  | 1994 => []
  | 1995 => []
  | 2039 => []
  | _ => []
def map_34_219 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13134 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13134 : InImage map_34_219 image13134 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13134 : Bundle := named_bundle% "RealMapCertificates/relations/basis13134.json"
theorem reductionProof13134 : EqualModuloRelations reduction13134.relations reduction13134.input reduction13134.output := by lin_cert using reduction13134.terms
theorem substitutionProof13134 : IsMapEvaluation generatorImages reduction13134.relations [1537] reduction13134.output := by lin_cert using reduction13134.terms
def image13135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13135 : InImage map_34_219 image13135 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13135 : Bundle := named_bundle% "RealMapCertificates/relations/basis13135.json"
theorem reductionProof13135 : EqualModuloRelations reduction13135.relations reduction13135.input reduction13135.output := by lin_cert using reduction13135.terms
theorem substitutionProof13135 : IsMapEvaluation generatorImages reduction13135.relations [13,13,13,13,13,13,101] reduction13135.output := by lin_cert using reduction13135.terms
def image13136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13136 : InImage map_34_219 image13136 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13136 : Bundle := named_bundle% "RealMapCertificates/relations/basis13136.json"
theorem reductionProof13136 : EqualModuloRelations reduction13136.relations reduction13136.input reduction13136.output := by lin_cert using reduction13136.terms
theorem substitutionProof13136 : IsMapEvaluation generatorImages reduction13136.relations [8,8,8,64,187] reduction13136.output := by lin_cert using reduction13136.terms
def image13137 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13137 : InImage map_34_219 image13137 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13137 : Bundle := named_bundle% "RealMapCertificates/relations/basis13137.json"
theorem reductionProof13137 : EqualModuloRelations reduction13137.relations reduction13137.input reduction13137.output := by lin_cert using reduction13137.terms
theorem substitutionProof13137 : IsMapEvaluation generatorImages reduction13137.relations [8,8,8,9,13,267] reduction13137.output := by lin_cert using reduction13137.terms
def image13138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13138 : InImage map_34_219 image13138 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13138 : Bundle := named_bundle% "RealMapCertificates/relations/basis13138.json"
theorem reductionProof13138 : EqualModuloRelations reduction13138.relations reduction13138.input reduction13138.output := by lin_cert using reduction13138.terms
theorem substitutionProof13138 : IsMapEvaluation generatorImages reduction13138.relations [0,64,601] reduction13138.output := by lin_cert using reduction13138.terms
def image13139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13139 : InImage map_34_219 image13139 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13139 : Bundle := named_bundle% "RealMapCertificates/relations/basis13139.json"
theorem reductionProof13139 : EqualModuloRelations reduction13139.relations reduction13139.input reduction13139.output := by lin_cert using reduction13139.terms
theorem substitutionProof13139 : IsMapEvaluation generatorImages reduction13139.relations [0,17,974] reduction13139.output := by lin_cert using reduction13139.terms
def map_34_220 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13273 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13273 : InImage map_34_220 image13273 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13273 : Bundle := named_bundle% "RealMapCertificates/relations/basis13273.json"
theorem reductionProof13273 : EqualModuloRelations reduction13273.relations reduction13273.input reduction13273.output := by lin_cert using reduction13273.terms
theorem substitutionProof13273 : IsMapEvaluation generatorImages reduction13273.relations [13,13,784] reduction13273.output := by lin_cert using reduction13273.terms
def image13274 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13274 : InImage map_34_220 image13274 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13274 : Bundle := named_bundle% "RealMapCertificates/relations/basis13274.json"
theorem reductionProof13274 : EqualModuloRelations reduction13274.relations reduction13274.input reduction13274.output := by lin_cert using reduction13274.terms
theorem substitutionProof13274 : IsMapEvaluation generatorImages reduction13274.relations [8,1220] reduction13274.output := by lin_cert using reduction13274.terms
def image13275 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13275 : InImage map_34_220 image13275 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13275 : Bundle := named_bundle% "RealMapCertificates/relations/basis13275.json"
theorem reductionProof13275 : EqualModuloRelations reduction13275.relations reduction13275.input reduction13275.output := by lin_cert using reduction13275.terms
theorem substitutionProof13275 : IsMapEvaluation generatorImages reduction13275.relations [1,59,627] reduction13275.output := by lin_cert using reduction13275.terms
def image13276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13276 : InImage map_34_220 image13276 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13276 : Bundle := named_bundle% "RealMapCertificates/relations/basis13276.json"
theorem reductionProof13276 : EqualModuloRelations reduction13276.relations reduction13276.input reduction13276.output := by lin_cert using reduction13276.terms
theorem substitutionProof13276 : IsMapEvaluation generatorImages reduction13276.relations [0,0,0,64,586] reduction13276.output := by lin_cert using reduction13276.terms
def image13277 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13277 : InImage map_34_220 image13277 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13277 : Bundle := named_bundle% "RealMapCertificates/relations/basis13277.json"
theorem reductionProof13277 : EqualModuloRelations reduction13277.relations reduction13277.input reduction13277.output := by lin_cert using reduction13277.terms
theorem substitutionProof13277 : IsMapEvaluation generatorImages reduction13277.relations [0,0,0,0,0,0,1441] reduction13277.output := by lin_cert using reduction13277.terms
def map_34_221 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image13464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13464 : InImage map_34_221 image13464 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13464 : Bundle := named_bundle% "RealMapCertificates/relations/basis13464.json"
theorem reductionProof13464 : EqualModuloRelations reduction13464.relations reduction13464.input reduction13464.output := by lin_cert using reduction13464.terms
theorem substitutionProof13464 : IsMapEvaluation generatorImages reduction13464.relations [8,113,292] reduction13464.output := by lin_cert using reduction13464.terms
def image13465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13465 : InImage map_34_221 image13465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13465 : Bundle := named_bundle% "RealMapCertificates/relations/basis13465.json"
theorem reductionProof13465 : EqualModuloRelations reduction13465.relations reduction13465.input reduction13465.output := by lin_cert using reduction13465.terms
theorem substitutionProof13465 : IsMapEvaluation generatorImages reduction13465.relations [8,64,455] reduction13465.output := by lin_cert using reduction13465.terms
def image13466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13466 : InImage map_34_221 image13466 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13466 : Bundle := named_bundle% "RealMapCertificates/relations/basis13466.json"
theorem reductionProof13466 : EqualModuloRelations reduction13466.relations reduction13466.input reduction13466.output := by lin_cert using reduction13466.terms
theorem substitutionProof13466 : IsMapEvaluation generatorImages reduction13466.relations [8,13,13,13,346] reduction13466.output := by lin_cert using reduction13466.terms
def image13467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13467 : InImage map_34_221 image13467 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13467 : Bundle := named_bundle% "RealMapCertificates/relations/basis13467.json"
theorem reductionProof13467 : EqualModuloRelations reduction13467.relations reduction13467.input reduction13467.output := by lin_cert using reduction13467.terms
theorem substitutionProof13467 : IsMapEvaluation generatorImages reduction13467.relations [8,8,8,8,8,13,209] reduction13467.output := by lin_cert using reduction13467.terms
def image13468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13468 : InImage map_34_221 image13468 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13468 : Bundle := named_bundle% "RealMapCertificates/relations/basis13468.json"
theorem reductionProof13468 : EqualModuloRelations reduction13468.relations reduction13468.input reduction13468.output := by lin_cert using reduction13468.terms
theorem substitutionProof13468 : IsMapEvaluation generatorImages reduction13468.relations [0,0,0,0,0,1483] reduction13468.output := by lin_cert using reduction13468.terms
def map_34_222 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13694 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13694 : InImage map_34_222 image13694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13694 : Bundle := named_bundle% "RealMapCertificates/relations/basis13694.json"
theorem reductionProof13694 : EqualModuloRelations reduction13694.relations reduction13694.input reduction13694.output := by lin_cert using reduction13694.terms
theorem substitutionProof13694 : IsMapEvaluation generatorImages reduction13694.relations [1593] reduction13694.output := by lin_cert using reduction13694.terms
def image13695 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13695 : InImage map_34_222 image13695 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13695 : Bundle := named_bundle% "RealMapCertificates/relations/basis13695.json"
theorem reductionProof13695 : EqualModuloRelations reduction13695.relations reduction13695.input reduction13695.output := by lin_cert using reduction13695.terms
theorem substitutionProof13695 : IsMapEvaluation generatorImages reduction13695.relations [8,8,8,64,201] reduction13695.output := by lin_cert using reduction13695.terms
def image13696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13696 : InImage map_34_222 image13696 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13696 : Bundle := named_bundle% "RealMapCertificates/relations/basis13696.json"
theorem reductionProof13696 : EqualModuloRelations reduction13696.relations reduction13696.input reduction13696.output := by lin_cert using reduction13696.terms
theorem substitutionProof13696 : IsMapEvaluation generatorImages reduction13696.relations [8,8,8,13,13,267] reduction13696.output := by lin_cert using reduction13696.terms
def map_34_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13846 : InImage map_34_223 image13846 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13846 : Bundle := named_bundle% "RealMapCertificates/relations/basis13846.json"
theorem reductionProof13846 : EqualModuloRelations reduction13846.relations reduction13846.input reduction13846.output := by lin_cert using reduction13846.terms
theorem substitutionProof13846 : IsMapEvaluation generatorImages reduction13846.relations [64,642] reduction13846.output := by lin_cert using reduction13846.terms
def image13847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13847 : InImage map_34_223 image13847 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13847 : Bundle := named_bundle% "RealMapCertificates/relations/basis13847.json"
theorem reductionProof13847 : EqualModuloRelations reduction13847.relations reduction13847.input reduction13847.output := by lin_cert using reduction13847.terms
theorem substitutionProof13847 : IsMapEvaluation generatorImages reduction13847.relations [8,8,963] reduction13847.output := by lin_cert using reduction13847.terms
def map_34_224 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14016 : InImage map_34_224 image14016 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14016 : Bundle := named_bundle% "RealMapCertificates/relations/basis14016.json"
theorem reductionProof14016 : EqualModuloRelations reduction14016.relations reduction14016.input reduction14016.output := by lin_cert using reduction14016.terms
theorem substitutionProof14016 : IsMapEvaluation generatorImages reduction14016.relations [9,13,13,13,346] reduction14016.output := by lin_cert using reduction14016.terms
def image14017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14017 : InImage map_34_224 image14017 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14017 : Bundle := named_bundle% "RealMapCertificates/relations/basis14017.json"
theorem reductionProof14017 : EqualModuloRelations reduction14017.relations reduction14017.input reduction14017.output := by lin_cert using reduction14017.terms
theorem substitutionProof14017 : IsMapEvaluation generatorImages reduction14017.relations [8,64,492] reduction14017.output := by lin_cert using reduction14017.terms
def image14018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14018 : InImage map_34_224 image14018 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14018 : Bundle := named_bundle% "RealMapCertificates/relations/basis14018.json"
theorem reductionProof14018 : EqualModuloRelations reduction14018.relations reduction14018.input reduction14018.output := by lin_cert using reduction14018.terms
theorem substitutionProof14018 : IsMapEvaluation generatorImages reduction14018.relations [8,8,974] reduction14018.output := by lin_cert using reduction14018.terms
def image14019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14019 : InImage map_34_224 image14019 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14019 : Bundle := named_bundle% "RealMapCertificates/relations/basis14019.json"
theorem reductionProof14019 : EqualModuloRelations reduction14019.relations reduction14019.input reduction14019.output := by lin_cert using reduction14019.terms
theorem substitutionProof14019 : IsMapEvaluation generatorImages reduction14019.relations [8,8,8,8,9,13,209] reduction14019.output := by lin_cert using reduction14019.terms
def image14020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14020 : InImage map_34_224 image14020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14020 : Bundle := named_bundle% "RealMapCertificates/relations/basis14020.json"
theorem reductionProof14020 : EqualModuloRelations reduction14020.relations reduction14020.input reduction14020.output := by lin_cert using reduction14020.terms
theorem substitutionProof14020 : IsMapEvaluation generatorImages reduction14020.relations [0,1606] reduction14020.output := by lin_cert using reduction14020.terms
def map_34_225 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image14257 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14257 : InImage map_34_225 image14257 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14257 : Bundle := named_bundle% "RealMapCertificates/relations/basis14257.json"
theorem reductionProof14257 : EqualModuloRelations reduction14257.relations reduction14257.input reduction14257.output := by lin_cert using reduction14257.terms
theorem substitutionProof14257 : IsMapEvaluation generatorImages reduction14257.relations [1639] reduction14257.output := by lin_cert using reduction14257.terms
def image14258 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14258 : InImage map_34_225 image14258 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14258 : Bundle := named_bundle% "RealMapCertificates/relations/basis14258.json"
theorem reductionProof14258 : EqualModuloRelations reduction14258.relations reduction14258.input reduction14258.output := by lin_cert using reduction14258.terms
theorem substitutionProof14258 : IsMapEvaluation generatorImages reduction14258.relations [8,8,9,13,13,267] reduction14258.output := by lin_cert using reduction14258.terms
def image14259 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14259 : InImage map_34_225 image14259 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14259 : Bundle := named_bundle% "RealMapCertificates/relations/basis14259.json"
theorem reductionProof14259 : EqualModuloRelations reduction14259.relations reduction14259.input reduction14259.output := by lin_cert using reduction14259.terms
theorem substitutionProof14259 : IsMapEvaluation generatorImages reduction14259.relations [8,8,8,64,212] reduction14259.output := by lin_cert using reduction14259.terms
def image14260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14260 : InImage map_34_225 image14260 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14260 : Bundle := named_bundle% "RealMapCertificates/relations/basis14260.json"
theorem reductionProof14260 : EqualModuloRelations reduction14260.relations reduction14260.input reduction14260.output := by lin_cert using reduction14260.terms
theorem substitutionProof14260 : IsMapEvaluation generatorImages reduction14260.relations [0,0,0,0,64,627] reduction14260.output := by lin_cert using reduction14260.terms
def map_34_226 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14397 : InImage map_34_226 image14397 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14397 : Bundle := named_bundle% "RealMapCertificates/relations/basis14397.json"
theorem reductionProof14397 : EqualModuloRelations reduction14397.relations reduction14397.input reduction14397.output := by lin_cert using reduction14397.terms
theorem substitutionProof14397 : IsMapEvaluation generatorImages reduction14397.relations [72,642] reduction14397.output := by lin_cert using reduction14397.terms
def image14398 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14398 : InImage map_34_226 image14398 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14398 : Bundle := named_bundle% "RealMapCertificates/relations/basis14398.json"
theorem reductionProof14398 : EqualModuloRelations reduction14398.relations reduction14398.input reduction14398.output := by lin_cert using reduction14398.terms
theorem substitutionProof14398 : IsMapEvaluation generatorImages reduction14398.relations [13,13,13,585] reduction14398.output := by lin_cert using reduction14398.terms
def image14399 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14399 : InImage map_34_226 image14399 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14399 : Bundle := named_bundle% "RealMapCertificates/relations/basis14399.json"
theorem reductionProof14399 : EqualModuloRelations reduction14399.relations reduction14399.input reduction14399.output := by lin_cert using reduction14399.terms
theorem substitutionProof14399 : IsMapEvaluation generatorImages reduction14399.relations [13,13,13,13,13,23,83] reduction14399.output := by lin_cert using reduction14399.terms
def image14400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14400 : InImage map_34_226 image14400 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14400 : Bundle := named_bundle% "RealMapCertificates/relations/basis14400.json"
theorem reductionProof14400 : EqualModuloRelations reduction14400.relations reduction14400.input reduction14400.output := by lin_cert using reduction14400.terms
theorem substitutionProof14400 : IsMapEvaluation generatorImages reduction14400.relations [8,9,963] reduction14400.output := by lin_cert using reduction14400.terms
def image14401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14401 : InImage map_34_226 image14401 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14401 : Bundle := named_bundle% "RealMapCertificates/relations/basis14401.json"
theorem reductionProof14401 : EqualModuloRelations reduction14401.relations reduction14401.input reduction14401.output := by lin_cert using reduction14401.terms
theorem substitutionProof14401 : IsMapEvaluation generatorImages reduction14401.relations [0,0,0,64,645] reduction14401.output := by lin_cert using reduction14401.terms
def image14402 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14402 : InImage map_34_226 image14402 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14402 : Bundle := named_bundle% "RealMapCertificates/relations/basis14402.json"
theorem reductionProof14402 : EqualModuloRelations reduction14402.relations reduction14402.input reduction14402.output := by lin_cert using reduction14402.terms
theorem substitutionProof14402 : IsMapEvaluation generatorImages reduction14402.relations [0,0,0,0,0,188,260] reduction14402.output := by lin_cert using reduction14402.terms
def map_34_227 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image14595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14595 : InImage map_34_227 image14595 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14595 : Bundle := named_bundle% "RealMapCertificates/relations/basis14595.json"
theorem reductionProof14595 : EqualModuloRelations reduction14595.relations reduction14595.input reduction14595.output := by lin_cert using reduction14595.terms
theorem substitutionProof14595 : IsMapEvaluation generatorImages reduction14595.relations [13,13,13,13,346] reduction14595.output := by lin_cert using reduction14595.terms
def image14596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14596 : InImage map_34_227 image14596 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14596 : Bundle := named_bundle% "RealMapCertificates/relations/basis14596.json"
theorem reductionProof14596 : EqualModuloRelations reduction14596.relations reduction14596.input reduction14596.output := by lin_cert using reduction14596.terms
theorem substitutionProof14596 : IsMapEvaluation generatorImages reduction14596.relations [8,8,1035] reduction14596.output := by lin_cert using reduction14596.terms
def image14597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14597 : InImage map_34_227 image14597 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14597 : Bundle := named_bundle% "RealMapCertificates/relations/basis14597.json"
theorem reductionProof14597 : EqualModuloRelations reduction14597.relations reduction14597.input reduction14597.output := by lin_cert using reduction14597.terms
theorem substitutionProof14597 : IsMapEvaluation generatorImages reduction14597.relations [8,8,64,318] reduction14597.output := by lin_cert using reduction14597.terms
def image14598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14598 : InImage map_34_227 image14598 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14598 : Bundle := named_bundle% "RealMapCertificates/relations/basis14598.json"
theorem reductionProof14598 : EqualModuloRelations reduction14598.relations reduction14598.input reduction14598.output := by lin_cert using reduction14598.terms
theorem substitutionProof14598 : IsMapEvaluation generatorImages reduction14598.relations [8,8,8,8,13,13,209] reduction14598.output := by lin_cert using reduction14598.terms
def image14599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14599 : InImage map_34_227 image14599 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14599 : Bundle := named_bundle% "RealMapCertificates/relations/basis14599.json"
theorem reductionProof14599 : EqualModuloRelations reduction14599.relations reduction14599.input reduction14599.output := by lin_cert using reduction14599.terms
theorem substitutionProof14599 : IsMapEvaluation generatorImages reduction14599.relations [0,0,0,0,0,1596] reduction14599.output := by lin_cert using reduction14599.terms
def map_34_228 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14828 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14828 : InImage map_34_228 image14828 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14828 : Bundle := named_bundle% "RealMapCertificates/relations/basis14828.json"
theorem reductionProof14828 : EqualModuloRelations reduction14828.relations reduction14828.input reduction14828.output := by lin_cert using reduction14828.terms
theorem substitutionProof14828 : IsMapEvaluation generatorImages reduction14828.relations [1688] reduction14828.output := by lin_cert using reduction14828.terms
def image14829 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14829 : InImage map_34_228 image14829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14829 : Bundle := named_bundle% "RealMapCertificates/relations/basis14829.json"
theorem reductionProof14829 : EqualModuloRelations reduction14829.relations reduction14829.input reduction14829.output := by lin_cert using reduction14829.terms
theorem substitutionProof14829 : IsMapEvaluation generatorImages reduction14829.relations [8,8,13,13,13,267] reduction14829.output := by lin_cert using reduction14829.terms
def image14830 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14830 : InImage map_34_228 image14830 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14830 : Bundle := named_bundle% "RealMapCertificates/relations/basis14830.json"
theorem reductionProof14830 : EqualModuloRelations reduction14830.relations reduction14830.input reduction14830.output := by lin_cert using reduction14830.terms
theorem substitutionProof14830 : IsMapEvaluation generatorImages reduction14830.relations [8,8,8,8,610] reduction14830.output := by lin_cert using reduction14830.terms
def map_34_229 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image14997 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14997 : InImage map_34_229 image14997 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14997 : Bundle := named_bundle% "RealMapCertificates/relations/basis14997.json"
theorem reductionProof14997 : EqualModuloRelations reduction14997.relations reduction14997.input reduction14997.output := by lin_cert using reduction14997.terms
theorem substitutionProof14997 : IsMapEvaluation generatorImages reduction14997.relations [8,1385] reduction14997.output := by lin_cert using reduction14997.terms
def image14998 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14998 : InImage map_34_229 image14998 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14998 : Bundle := named_bundle% "RealMapCertificates/relations/basis14998.json"
theorem reductionProof14998 : EqualModuloRelations reduction14998.relations reduction14998.input reduction14998.output := by lin_cert using reduction14998.terms
theorem substitutionProof14998 : IsMapEvaluation generatorImages reduction14998.relations [8,13,963] reduction14998.output := by lin_cert using reduction14998.terms
def map_34_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15189 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15189 : InImage map_34_230 image15189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15189 : Bundle := named_bundle% "RealMapCertificates/relations/basis15189.json"
theorem reductionProof15189 : EqualModuloRelations reduction15189.relations reduction15189.input reduction15189.output := by lin_cert using reduction15189.terms
theorem substitutionProof15189 : IsMapEvaluation generatorImages reduction15189.relations [8,8,64,348] reduction15189.output := by lin_cert using reduction15189.terms
def image15190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15190 : InImage map_34_230 image15190 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15190 : Bundle := named_bundle% "RealMapCertificates/relations/basis15190.json"
theorem reductionProof15190 : EqualModuloRelations reduction15190.relations reduction15190.input reduction15190.output := by lin_cert using reduction15190.terms
theorem substitutionProof15190 : IsMapEvaluation generatorImages reduction15190.relations [8,8,23,627] reduction15190.output := by lin_cert using reduction15190.terms
def image15191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15191 : InImage map_34_230 image15191 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15191 : Bundle := named_bundle% "RealMapCertificates/relations/basis15191.json"
theorem reductionProof15191 : EqualModuloRelations reduction15191.relations reduction15191.input reduction15191.output := by lin_cert using reduction15191.terms
theorem substitutionProof15191 : IsMapEvaluation generatorImages reduction15191.relations [8,8,8,9,13,13,209] reduction15191.output := by lin_cert using reduction15191.terms
def image15192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15192 : InImage map_34_230 image15192 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15192 : Bundle := named_bundle% "RealMapCertificates/relations/basis15192.json"
theorem reductionProof15192 : EqualModuloRelations reduction15192.relations reduction15192.input reduction15192.output := by lin_cert using reduction15192.terms
theorem substitutionProof15192 : IsMapEvaluation generatorImages reduction15192.relations [1,5,1441] reduction15192.output := by lin_cert using reduction15192.terms
def image15193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15193 : InImage map_34_230 image15193 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15193 : Bundle := named_bundle% "RealMapCertificates/relations/basis15193.json"
theorem reductionProof15193 : EqualModuloRelations reduction15193.relations reduction15193.input reduction15193.output := by lin_cert using reduction15193.terms
theorem substitutionProof15193 : IsMapEvaluation generatorImages reduction15193.relations [0,0,64,64,187] reduction15193.output := by lin_cert using reduction15193.terms
def map_34_231 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15451 : InImage map_34_231 image15451 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15451 : Bundle := named_bundle% "RealMapCertificates/relations/basis15451.json"
theorem reductionProof15451 : EqualModuloRelations reduction15451.relations reduction15451.input reduction15451.output := by lin_cert using reduction15451.terms
theorem substitutionProof15451 : IsMapEvaluation generatorImages reduction15451.relations [8,9,13,13,13,267] reduction15451.output := by lin_cert using reduction15451.terms
def image15452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15452 : InImage map_34_231 image15452 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15452 : Bundle := named_bundle% "RealMapCertificates/relations/basis15452.json"
theorem reductionProof15452 : EqualModuloRelations reduction15452.relations reduction15452.input reduction15452.output := by lin_cert using reduction15452.terms
theorem substitutionProof15452 : IsMapEvaluation generatorImages reduction15452.relations [8,8,8,8,640] reduction15452.output := by lin_cert using reduction15452.terms
def image15453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15453 : InImage map_34_231 image15453 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15453 : Bundle := named_bundle% "RealMapCertificates/relations/basis15453.json"
theorem reductionProof15453 : EqualModuloRelations reduction15453.relations reduction15453.input reduction15453.output := by lin_cert using reduction15453.terms
theorem substitutionProof15453 : IsMapEvaluation generatorImages reduction15453.relations [0,0,1719] reduction15453.output := by lin_cert using reduction15453.terms
def image15454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15454 : InImage map_34_231 image15454 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15454 : Bundle := named_bundle% "RealMapCertificates/relations/basis15454.json"
theorem reductionProof15454 : EqualModuloRelations reduction15454.relations reduction15454.input reduction15454.output := by lin_cert using reduction15454.terms
theorem substitutionProof15454 : IsMapEvaluation generatorImages reduction15454.relations [0,0,0,64,64,188] reduction15454.output := by lin_cert using reduction15454.terms
def map_34_232 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image15628 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15628 : InImage map_34_232 image15628 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15628 : Bundle := named_bundle% "RealMapCertificates/relations/basis15628.json"
theorem reductionProof15628 : EqualModuloRelations reduction15628.relations reduction15628.input reduction15628.output := by lin_cert using reduction15628.terms
theorem substitutionProof15628 : IsMapEvaluation generatorImages reduction15628.relations [9,13,963] reduction15628.output := by lin_cert using reduction15628.terms
def image15629 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15629 : InImage map_34_232 image15629 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15629 : Bundle := named_bundle% "RealMapCertificates/relations/basis15629.json"
theorem reductionProof15629 : EqualModuloRelations reduction15629.relations reduction15629.input reduction15629.output := by lin_cert using reduction15629.terms
theorem substitutionProof15629 : IsMapEvaluation generatorImages reduction15629.relations [9,13,13,13,13,13,13,75] reduction15629.output := by lin_cert using reduction15629.terms
def image15630 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15630 : InImage map_34_232 image15630 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15630 : Bundle := named_bundle% "RealMapCertificates/relations/basis15630.json"
theorem reductionProof15630 : EqualModuloRelations reduction15630.relations reduction15630.input reduction15630.output := by lin_cert using reduction15630.terms
theorem substitutionProof15630 : IsMapEvaluation generatorImages reduction15630.relations [8,149,279] reduction15630.output := by lin_cert using reduction15630.terms
def image15631 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15631 : InImage map_34_232 image15631 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15631 : Bundle := named_bundle% "RealMapCertificates/relations/basis15631.json"
theorem reductionProof15631 : EqualModuloRelations reduction15631.relations reduction15631.input reduction15631.output := by lin_cert using reduction15631.terms
theorem substitutionProof15631 : IsMapEvaluation generatorImages reduction15631.relations [1,1,64,64,187] reduction15631.output := by lin_cert using reduction15631.terms
def image15632 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15632 : InImage map_34_232 image15632 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15632 : Bundle := named_bundle% "RealMapCertificates/relations/basis15632.json"
theorem reductionProof15632 : EqualModuloRelations reduction15632.relations reduction15632.input reduction15632.output := by lin_cert using reduction15632.terms
theorem substitutionProof15632 : IsMapEvaluation generatorImages reduction15632.relations [0,0,183,324] reduction15632.output := by lin_cert using reduction15632.terms
def image15633 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15633 : InImage map_34_232 image15633 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15633 : Bundle := named_bundle% "RealMapCertificates/relations/basis15633.json"
theorem reductionProof15633 : EqualModuloRelations reduction15633.relations reduction15633.input reduction15633.output := by lin_cert using reduction15633.terms
theorem substitutionProof15633 : IsMapEvaluation generatorImages reduction15633.relations [0,0,0,0,0,0,209,260] reduction15633.output := by lin_cert using reduction15633.terms
def map_34_233 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15847 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15847 : InImage map_34_233 image15847 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15847 : Bundle := named_bundle% "RealMapCertificates/relations/basis15847.json"
theorem reductionProof15847 : EqualModuloRelations reduction15847.relations reduction15847.input reduction15847.output := by lin_cert using reduction15847.terms
theorem substitutionProof15847 : IsMapEvaluation generatorImages reduction15847.relations [8,8,23,655] reduction15847.output := by lin_cert using reduction15847.terms
def image15848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15848 : InImage map_34_233 image15848 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15848 : Bundle := named_bundle% "RealMapCertificates/relations/basis15848.json"
theorem reductionProof15848 : EqualModuloRelations reduction15848.relations reduction15848.input reduction15848.output := by lin_cert using reduction15848.terms
theorem substitutionProof15848 : IsMapEvaluation generatorImages reduction15848.relations [8,8,8,64,250] reduction15848.output := by lin_cert using reduction15848.terms
def image15849 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15849 : InImage map_34_233 image15849 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15849 : Bundle := named_bundle% "RealMapCertificates/relations/basis15849.json"
theorem reductionProof15849 : EqualModuloRelations reduction15849.relations reduction15849.input reduction15849.output := by lin_cert using reduction15849.terms
theorem substitutionProof15849 : IsMapEvaluation generatorImages reduction15849.relations [8,8,8,13,13,13,209] reduction15849.output := by lin_cert using reduction15849.terms
def image15850 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15850 : InImage map_34_233 image15850 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15850 : Bundle := named_bundle% "RealMapCertificates/relations/basis15850.json"
theorem reductionProof15850 : EqualModuloRelations reduction15850.relations reduction15850.input reduction15850.output := by lin_cert using reduction15850.terms
theorem substitutionProof15850 : IsMapEvaluation generatorImages reduction15850.relations [0,0,0,0,0,64,706] reduction15850.output := by lin_cert using reduction15850.terms
def map_34_234 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16099 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16099 : InImage map_34_234 image16099 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16099 : Bundle := named_bundle% "RealMapCertificates/relations/basis16099.json"
theorem reductionProof16099 : EqualModuloRelations reduction16099.relations reduction16099.input reduction16099.output := by lin_cert using reduction16099.terms
theorem substitutionProof16099 : IsMapEvaluation generatorImages reduction16099.relations [13,1367] reduction16099.output := by lin_cert using reduction16099.terms
def image16100 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16100 : InImage map_34_234 image16100 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16100 : Bundle := named_bundle% "RealMapCertificates/relations/basis16100.json"
theorem reductionProof16100 : EqualModuloRelations reduction16100.relations reduction16100.input reduction16100.output := by lin_cert using reduction16100.terms
theorem substitutionProof16100 : IsMapEvaluation generatorImages reduction16100.relations [13,13,13,23,303] reduction16100.output := by lin_cert using reduction16100.terms
def image16101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16101 : InImage map_34_234 image16101 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16101 : Bundle := named_bundle% "RealMapCertificates/relations/basis16101.json"
theorem reductionProof16101 : EqualModuloRelations reduction16101.relations reduction16101.input reduction16101.output := by lin_cert using reduction16101.terms
theorem substitutionProof16101 : IsMapEvaluation generatorImages reduction16101.relations [8,13,13,13,13,267] reduction16101.output := by lin_cert using reduction16101.terms
def image16102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16102 : InImage map_34_234 image16102 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16102 : Bundle := named_bundle% "RealMapCertificates/relations/basis16102.json"
theorem reductionProof16102 : EqualModuloRelations reduction16102.relations reduction16102.input reduction16102.output := by lin_cert using reduction16102.terms
theorem substitutionProof16102 : IsMapEvaluation generatorImages reduction16102.relations [8,8,8,9,640] reduction16102.output := by lin_cert using reduction16102.terms
def image16103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16103 : InImage map_34_234 image16103 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16103 : Bundle := named_bundle% "RealMapCertificates/relations/basis16103.json"
theorem reductionProof16103 : EqualModuloRelations reduction16103.relations reduction16103.input reduction16103.output := by lin_cert using reduction16103.terms
theorem substitutionProof16103 : IsMapEvaluation generatorImages reduction16103.relations [0,0,8,1441] reduction16103.output := by lin_cert using reduction16103.terms
def map_34_235 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16293 : InImage map_34_235 image16293 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16293 : Bundle := named_bundle% "RealMapCertificates/relations/basis16293.json"
theorem reductionProof16293 : EqualModuloRelations reduction16293.relations reduction16293.input reduction16293.output := by lin_cert using reduction16293.terms
theorem substitutionProof16293 : IsMapEvaluation generatorImages reduction16293.relations [13,13,963] reduction16293.output := by lin_cert using reduction16293.terms
def image16294 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16294 : InImage map_34_235 image16294 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16294 : Bundle := named_bundle% "RealMapCertificates/relations/basis16294.json"
theorem reductionProof16294 : EqualModuloRelations reduction16294.relations reduction16294.input reduction16294.output := by lin_cert using reduction16294.terms
theorem substitutionProof16294 : IsMapEvaluation generatorImages reduction16294.relations [13,13,13,13,13,13,13,75] reduction16294.output := by lin_cert using reduction16294.terms
def image16295 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16295 : InImage map_34_235 image16295 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16295 : Bundle := named_bundle% "RealMapCertificates/relations/basis16295.json"
theorem reductionProof16295 : EqualModuloRelations reduction16295.relations reduction16295.input reduction16295.output := by lin_cert using reduction16295.terms
theorem substitutionProof16295 : IsMapEvaluation generatorImages reduction16295.relations [8,8,149,209] reduction16295.output := by lin_cert using reduction16295.terms
def image16296 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16296 : InImage map_34_235 image16296 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16296 : Bundle := named_bundle% "RealMapCertificates/relations/basis16296.json"
theorem reductionProof16296 : EqualModuloRelations reduction16296.relations reduction16296.input reduction16296.output := by lin_cert using reduction16296.terms
theorem substitutionProof16296 : IsMapEvaluation generatorImages reduction16296.relations [0,0,200,324] reduction16296.output := by lin_cert using reduction16296.terms
def map_34_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16518 : InImage map_34_236 image16518 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16518 : Bundle := named_bundle% "RealMapCertificates/relations/basis16518.json"
theorem reductionProof16518 : EqualModuloRelations reduction16518.relations reduction16518.input reduction16518.output := by lin_cert using reduction16518.terms
theorem substitutionProof16518 : IsMapEvaluation generatorImages reduction16518.relations [64,797] reduction16518.output := by lin_cert using reduction16518.terms
def image16519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16519 : InImage map_34_236 image16519 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16519 : Bundle := named_bundle% "RealMapCertificates/relations/basis16519.json"
theorem reductionProof16519 : EqualModuloRelations reduction16519.relations reduction16519.input reduction16519.output := by lin_cert using reduction16519.terms
theorem substitutionProof16519 : IsMapEvaluation generatorImages reduction16519.relations [8,8,23,690] reduction16519.output := by lin_cert using reduction16519.terms
def image16520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16520 : InImage map_34_236 image16520 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16520 : Bundle := named_bundle% "RealMapCertificates/relations/basis16520.json"
theorem reductionProof16520 : EqualModuloRelations reduction16520.relations reduction16520.input reduction16520.output := by lin_cert using reduction16520.terms
theorem substitutionProof16520 : IsMapEvaluation generatorImages reduction16520.relations [8,8,9,13,13,13,209] reduction16520.output := by lin_cert using reduction16520.terms
def image16521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16521 : InImage map_34_236 image16521 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16521 : Bundle := named_bundle% "RealMapCertificates/relations/basis16521.json"
theorem reductionProof16521 : EqualModuloRelations reduction16521.relations reduction16521.input reduction16521.output := by lin_cert using reduction16521.terms
theorem substitutionProof16521 : IsMapEvaluation generatorImages reduction16521.relations [8,8,8,64,261] reduction16521.output := by lin_cert using reduction16521.terms
def image16522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16522 : InImage map_34_236 image16522 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16522 : Bundle := named_bundle% "RealMapCertificates/relations/basis16522.json"
theorem reductionProof16522 : EqualModuloRelations reduction16522.relations reduction16522.input reduction16522.output := by lin_cert using reduction16522.terms
theorem substitutionProof16522 : IsMapEvaluation generatorImages reduction16522.relations [1,64,779] reduction16522.output := by lin_cert using reduction16522.terms
def map_34_237 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16778 : InImage map_34_237 image16778 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16778 : Bundle := named_bundle% "RealMapCertificates/relations/basis16778.json"
theorem reductionProof16778 : EqualModuloRelations reduction16778.relations reduction16778.input reduction16778.output := by lin_cert using reduction16778.terms
theorem substitutionProof16778 : IsMapEvaluation generatorImages reduction16778.relations [1901] reduction16778.output := by lin_cert using reduction16778.terms
def image16779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16779 : InImage map_34_237 image16779 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16779 : Bundle := named_bundle% "RealMapCertificates/relations/basis16779.json"
theorem reductionProof16779 : EqualModuloRelations reduction16779.relations reduction16779.input reduction16779.output := by lin_cert using reduction16779.terms
theorem substitutionProof16779 : IsMapEvaluation generatorImages reduction16779.relations [64,812] reduction16779.output := by lin_cert using reduction16779.terms
def image16780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16780 : InImage map_34_237 image16780 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16780 : Bundle := named_bundle% "RealMapCertificates/relations/basis16780.json"
theorem reductionProof16780 : EqualModuloRelations reduction16780.relations reduction16780.input reduction16780.output := by lin_cert using reduction16780.terms
theorem substitutionProof16780 : IsMapEvaluation generatorImages reduction16780.relations [9,13,13,13,13,267] reduction16780.output := by lin_cert using reduction16780.terms
def image16781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16781 : InImage map_34_237 image16781 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16781 : Bundle := named_bundle% "RealMapCertificates/relations/basis16781.json"
theorem reductionProof16781 : EqualModuloRelations reduction16781.relations reduction16781.input reduction16781.output := by lin_cert using reduction16781.terms
theorem substitutionProof16781 : IsMapEvaluation generatorImages reduction16781.relations [8,8,8,13,640] reduction16781.output := by lin_cert using reduction16781.terms
def image16782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16782 : InImage map_34_237 image16782 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16782 : Bundle := named_bundle% "RealMapCertificates/relations/basis16782.json"
theorem reductionProof16782 : EqualModuloRelations reduction16782.relations reduction16782.input reduction16782.output := by lin_cert using reduction16782.terms
theorem substitutionProof16782 : IsMapEvaluation generatorImages reduction16782.relations [0,0,8,1504] reduction16782.output := by lin_cert using reduction16782.terms
def map_34_238 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image16963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16963 : InImage map_34_238 image16963 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16963 : Bundle := named_bundle% "RealMapCertificates/relations/basis16963.json"
theorem reductionProof16963 : EqualModuloRelations reduction16963.relations reduction16963.input reduction16963.output := by lin_cert using reduction16963.terms
theorem substitutionProof16963 : IsMapEvaluation generatorImages reduction16963.relations [8,8,160,209] reduction16963.output := by lin_cert using reduction16963.terms
def map_34_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17211 : InImage map_34_239 image17211 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17211 : Bundle := named_bundle% "RealMapCertificates/relations/basis17211.json"
theorem reductionProof17211 : EqualModuloRelations reduction17211.relations reduction17211.input reduction17211.output := by lin_cert using reduction17211.terms
theorem substitutionProof17211 : IsMapEvaluation generatorImages reduction17211.relations [8,64,627] reduction17211.output := by lin_cert using reduction17211.terms
def image17212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17212 : InImage map_34_239 image17212 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17212 : Bundle := named_bundle% "RealMapCertificates/relations/basis17212.json"
theorem reductionProof17212 : EqualModuloRelations reduction17212.relations reduction17212.input reduction17212.output := by lin_cert using reduction17212.terms
theorem substitutionProof17212 : IsMapEvaluation generatorImages reduction17212.relations [8,9,23,690] reduction17212.output := by lin_cert using reduction17212.terms
def image17213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17213 : InImage map_34_239 image17213 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17213 : Bundle := named_bundle% "RealMapCertificates/relations/basis17213.json"
theorem reductionProof17213 : EqualModuloRelations reduction17213.relations reduction17213.input reduction17213.output := by lin_cert using reduction17213.terms
theorem substitutionProof17213 : IsMapEvaluation generatorImages reduction17213.relations [8,8,13,13,13,13,209] reduction17213.output := by lin_cert using reduction17213.terms
def image17214 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17214 : InImage map_34_239 image17214 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17214 : Bundle := named_bundle% "RealMapCertificates/relations/basis17214.json"
theorem reductionProof17214 : EqualModuloRelations reduction17214.relations reduction17214.input reduction17214.output := by lin_cert using reduction17214.terms
theorem substitutionProof17214 : IsMapEvaluation generatorImages reduction17214.relations [8,8,8,8,729] reduction17214.output := by lin_cert using reduction17214.terms
def image17215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17215 : InImage map_34_239 image17215 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17215 : Bundle := named_bundle% "RealMapCertificates/relations/basis17215.json"
theorem reductionProof17215 : EqualModuloRelations reduction17215.relations reduction17215.input reduction17215.output := by lin_cert using reduction17215.terms
theorem substitutionProof17215 : IsMapEvaluation generatorImages reduction17215.relations [0,1927] reduction17215.output := by lin_cert using reduction17215.terms
def map_34_240 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17478 : InImage map_34_240 image17478 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17478 : Bundle := named_bundle% "RealMapCertificates/relations/basis17478.json"
theorem reductionProof17478 : EqualModuloRelations reduction17478.relations reduction17478.input reduction17478.output := by lin_cert using reduction17478.terms
theorem substitutionProof17478 : IsMapEvaluation generatorImages reduction17478.relations [1995] reduction17478.output := by lin_cert using reduction17478.terms
def image17479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17479 : InImage map_34_240 image17479 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17479 : Bundle := named_bundle% "RealMapCertificates/relations/basis17479.json"
theorem reductionProof17479 : EqualModuloRelations reduction17479.relations reduction17479.input reduction17479.output := by lin_cert using reduction17479.terms
theorem substitutionProof17479 : IsMapEvaluation generatorImages reduction17479.relations [1994] reduction17479.output := by lin_cert using reduction17479.terms
def image17480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17480 : InImage map_34_240 image17480 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17480 : Bundle := named_bundle% "RealMapCertificates/relations/basis17480.json"
theorem reductionProof17480 : EqualModuloRelations reduction17480.relations reduction17480.input reduction17480.output := by lin_cert using reduction17480.terms
theorem substitutionProof17480 : IsMapEvaluation generatorImages reduction17480.relations [1993] reduction17480.output := by lin_cert using reduction17480.terms
def image17481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17481 : InImage map_34_240 image17481 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17481 : Bundle := named_bundle% "RealMapCertificates/relations/basis17481.json"
theorem reductionProof17481 : EqualModuloRelations reduction17481.relations reduction17481.input reduction17481.output := by lin_cert using reduction17481.terms
theorem substitutionProof17481 : IsMapEvaluation generatorImages reduction17481.relations [64,854] reduction17481.output := by lin_cert using reduction17481.terms
def image17482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17482 : InImage map_34_240 image17482 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17482 : Bundle := named_bundle% "RealMapCertificates/relations/basis17482.json"
theorem reductionProof17482 : EqualModuloRelations reduction17482.relations reduction17482.input reduction17482.output := by lin_cert using reduction17482.terms
theorem substitutionProof17482 : IsMapEvaluation generatorImages reduction17482.relations [13,13,13,13,13,267] reduction17482.output := by lin_cert using reduction17482.terms
def image17483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17483 : InImage map_34_240 image17483 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17483 : Bundle := named_bundle% "RealMapCertificates/relations/basis17483.json"
theorem reductionProof17483 : EqualModuloRelations reduction17483.relations reduction17483.input reduction17483.output := by lin_cert using reduction17483.terms
theorem substitutionProof17483 : IsMapEvaluation generatorImages reduction17483.relations [9,13,13,13,13,286] reduction17483.output := by lin_cert using reduction17483.terms
def image17484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17484 : InImage map_34_240 image17484 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17484 : Bundle := named_bundle% "RealMapCertificates/relations/basis17484.json"
theorem reductionProof17484 : EqualModuloRelations reduction17484.relations reduction17484.input reduction17484.output := by lin_cert using reduction17484.terms
theorem substitutionProof17484 : IsMapEvaluation generatorImages reduction17484.relations [8,8,9,13,640] reduction17484.output := by lin_cert using reduction17484.terms
def image17485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17485 : InImage map_34_240 image17485 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17485 : Bundle := named_bundle% "RealMapCertificates/relations/basis17485.json"
theorem reductionProof17485 : EqualModuloRelations reduction17485.relations reduction17485.input reduction17485.output := by lin_cert using reduction17485.terms
theorem substitutionProof17485 : IsMapEvaluation generatorImages reduction17485.relations [0,0,0,0,210,324] reduction17485.output := by lin_cert using reduction17485.terms
def map_34_241 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image17727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17727 : InImage map_34_241 image17727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17727 : Bundle := named_bundle% "RealMapCertificates/relations/basis17727.json"
theorem reductionProof17727 : EqualModuloRelations reduction17727.relations reduction17727.input reduction17727.output := by lin_cert using reduction17727.terms
theorem substitutionProof17727 : IsMapEvaluation generatorImages reduction17727.relations [2039] reduction17727.output := by lin_cert using reduction17727.terms
def image17728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17728 : InImage map_34_241 image17728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17728 : Bundle := named_bundle% "RealMapCertificates/relations/basis17728.json"
theorem reductionProof17728 : EqualModuloRelations reduction17728.relations reduction17728.input reduction17728.output := by lin_cert using reduction17728.terms
theorem substitutionProof17728 : IsMapEvaluation generatorImages reduction17728.relations [13,13,13,13,13,13,164] reduction17728.output := by lin_cert using reduction17728.terms
def image17729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17729 : InImage map_34_241 image17729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17729 : Bundle := named_bundle% "RealMapCertificates/relations/basis17729.json"
theorem reductionProof17729 : EqualModuloRelations reduction17729.relations reduction17729.input reduction17729.output := by lin_cert using reduction17729.terms
theorem substitutionProof17729 : IsMapEvaluation generatorImages reduction17729.relations [8,8,166,209] reduction17729.output := by lin_cert using reduction17729.terms
end RealMapCertificates
