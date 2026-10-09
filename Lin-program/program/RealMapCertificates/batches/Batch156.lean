import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 3 => []
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 180 => [[5,10,12]]
  | 181 => []
  | 189 => []
  | 194 => [[7,10,12]]
  | 209 => []
  | 250 => []
  | 260 => []
  | 278 => []
  | 279 => []
  | 286 => []
  | 293 => []
  | 297 => []
  | 318 => []
  | 324 => []
  | 349 => []
  | 380 => []
  | 581 => []
  | 628 => []
  | 640 => []
  | 655 => []
  | 667 => []
  | 690 => []
  | 704 => []
  | 761 => []
  | 876 => []
  | 900 => []
  | 1063 => []
  | 1205 => []
  | 1350 => []
  | 1405 => []
  | 1428 => []
  | 1441 => []
  | 1475 => []
  | 1486 => []
  | 1539 => []
  | 1572 => []
  | 1773 => []
  | 1775 => []
  | 1834 => []
  | 1861 => []
  | 1928 => []
  | 2060 => []
  | 2094 => []
  | 2095 => []
  | 2097 => []
  | 2121 => []
  | 2122 => []
  | 2123 => []
  | 2124 => []
  | 2125 => []
  | 2164 => []
  | 2165 => []
  | 2198 => []
  | 2199 => []
  | 2240 => []
  | 2241 => []
  | 2279 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2335 => []
  | 2336 => []
  | 2337 => []
  | 2338 => []
  | 2340 => []
  | 2342 => []
  | 2381 => []
  | 2406 => []
  | 2439 => []
  | 2489 => []
  | 2544 => []
  | 2545 => []
  | 2546 => []
  | 2582 => []
  | 2583 => []
  | _ => []
def map_34_242 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17986 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17986 : InImage map_34_242 image17986 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17986 : Bundle := named_bundle% "RealMapCertificates/relations/basis17986.json"
theorem reductionProof17986 : EqualModuloRelations reduction17986.relations reduction17986.input reduction17986.output := by lin_cert using reduction17986.terms
theorem substitutionProof17986 : IsMapEvaluation generatorImages reduction17986.relations [2060] reduction17986.output := by lin_cert using reduction17986.terms
def image17987 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17987 : InImage map_34_242 image17987 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17987 : Bundle := named_bundle% "RealMapCertificates/relations/basis17987.json"
theorem reductionProof17987 : EqualModuloRelations reduction17987.relations reduction17987.input reduction17987.output := by lin_cert using reduction17987.terms
theorem substitutionProof17987 : IsMapEvaluation generatorImages reduction17987.relations [13,23,900] reduction17987.output := by lin_cert using reduction17987.terms
def image17988 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17988 : InImage map_34_242 image17988 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17988 : Bundle := named_bundle% "RealMapCertificates/relations/basis17988.json"
theorem reductionProof17988 : EqualModuloRelations reduction17988.relations reduction17988.input reduction17988.output := by lin_cert using reduction17988.terms
theorem substitutionProof17988 : IsMapEvaluation generatorImages reduction17988.relations [8,64,655] reduction17988.output := by lin_cert using reduction17988.terms
def image17989 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17989 : InImage map_34_242 image17989 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17989 : Bundle := named_bundle% "RealMapCertificates/relations/basis17989.json"
theorem reductionProof17989 : EqualModuloRelations reduction17989.relations reduction17989.input reduction17989.output := by lin_cert using reduction17989.terms
theorem substitutionProof17989 : IsMapEvaluation generatorImages reduction17989.relations [8,13,23,690] reduction17989.output := by lin_cert using reduction17989.terms
def image17990 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17990 : InImage map_34_242 image17990 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17990 : Bundle := named_bundle% "RealMapCertificates/relations/basis17990.json"
theorem reductionProof17990 : EqualModuloRelations reduction17990.relations reduction17990.input reduction17990.output := by lin_cert using reduction17990.terms
theorem substitutionProof17990 : IsMapEvaluation generatorImages reduction17990.relations [8,9,13,13,13,13,209] reduction17990.output := by lin_cert using reduction17990.terms
def image17991 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17991 : InImage map_34_242 image17991 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17991 : Bundle := named_bundle% "RealMapCertificates/relations/basis17991.json"
theorem reductionProof17991 : EqualModuloRelations reduction17991.relations reduction17991.input reduction17991.output := by lin_cert using reduction17991.terms
theorem substitutionProof17991 : IsMapEvaluation generatorImages reduction17991.relations [8,8,8,8,761] reduction17991.output := by lin_cert using reduction17991.terms
def image17992 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17992 : InImage map_34_242 image17992 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17992 : Bundle := named_bundle% "RealMapCertificates/relations/basis17992.json"
theorem reductionProof17992 : EqualModuloRelations reduction17992.relations reduction17992.input reduction17992.output := by lin_cert using reduction17992.terms
theorem substitutionProof17992 : IsMapEvaluation generatorImages reduction17992.relations [1,5,209,260] reduction17992.output := by lin_cert using reduction17992.terms
def image17993 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17993 : InImage map_34_242 image17993 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17993 : Bundle := named_bundle% "RealMapCertificates/relations/basis17993.json"
theorem reductionProof17993 : EqualModuloRelations reduction17993.relations reduction17993.input reduction17993.output := by lin_cert using reduction17993.terms
theorem substitutionProof17993 : IsMapEvaluation generatorImages reduction17993.relations [0,0,3,1773] reduction17993.output := by lin_cert using reduction17993.terms
def map_34_243 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18264 : InImage map_34_243 image18264 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18264 : Bundle := named_bundle% "RealMapCertificates/relations/basis18264.json"
theorem reductionProof18264 : EqualModuloRelations reduction18264.relations reduction18264.input reduction18264.output := by lin_cert using reduction18264.terms
theorem substitutionProof18264 : IsMapEvaluation generatorImages reduction18264.relations [2095] reduction18264.output := by lin_cert using reduction18264.terms
def image18265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18265 : InImage map_34_243 image18265 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18265 : Bundle := named_bundle% "RealMapCertificates/relations/basis18265.json"
theorem reductionProof18265 : EqualModuloRelations reduction18265.relations reduction18265.input reduction18265.output := by lin_cert using reduction18265.terms
theorem substitutionProof18265 : IsMapEvaluation generatorImages reduction18265.relations [2094] reduction18265.output := by lin_cert using reduction18265.terms
def image18266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18266 : InImage map_34_243 image18266 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18266 : Bundle := named_bundle% "RealMapCertificates/relations/basis18266.json"
theorem reductionProof18266 : EqualModuloRelations reduction18266.relations reduction18266.input reduction18266.output := by lin_cert using reduction18266.terms
theorem substitutionProof18266 : IsMapEvaluation generatorImages reduction18266.relations [13,13,13,13,13,286] reduction18266.output := by lin_cert using reduction18266.terms
def image18267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18267 : InImage map_34_243 image18267 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18267 : Bundle := named_bundle% "RealMapCertificates/relations/basis18267.json"
theorem reductionProof18267 : EqualModuloRelations reduction18267.relations reduction18267.input reduction18267.output := by lin_cert using reduction18267.terms
theorem substitutionProof18267 : IsMapEvaluation generatorImages reduction18267.relations [8,64,667] reduction18267.output := by lin_cert using reduction18267.terms
def image18268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18268 : InImage map_34_243 image18268 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18268 : Bundle := named_bundle% "RealMapCertificates/relations/basis18268.json"
theorem reductionProof18268 : EqualModuloRelations reduction18268.relations reduction18268.input reduction18268.output := by lin_cert using reduction18268.terms
theorem substitutionProof18268 : IsMapEvaluation generatorImages reduction18268.relations [8,8,13,13,640] reduction18268.output := by lin_cert using reduction18268.terms
def map_34_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18466 : InImage map_34_244 image18466 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18466 : Bundle := named_bundle% "RealMapCertificates/relations/basis18466.json"
theorem reductionProof18466 : EqualModuloRelations reduction18466.relations reduction18466.input reduction18466.output := by lin_cert using reduction18466.terms
theorem substitutionProof18466 : IsMapEvaluation generatorImages reduction18466.relations [2123] reduction18466.output := by lin_cert using reduction18466.terms
def image18467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18467 : InImage map_34_244 image18467 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18467 : Bundle := named_bundle% "RealMapCertificates/relations/basis18467.json"
theorem reductionProof18467 : EqualModuloRelations reduction18467.relations reduction18467.input reduction18467.output := by lin_cert using reduction18467.terms
theorem substitutionProof18467 : IsMapEvaluation generatorImages reduction18467.relations [2122] reduction18467.output := by lin_cert using reduction18467.terms
def image18468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18468 : InImage map_34_244 image18468 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18468 : Bundle := named_bundle% "RealMapCertificates/relations/basis18468.json"
theorem reductionProof18468 : EqualModuloRelations reduction18468.relations reduction18468.input reduction18468.output := by lin_cert using reduction18468.terms
theorem substitutionProof18468 : IsMapEvaluation generatorImages reduction18468.relations [2121] reduction18468.output := by lin_cert using reduction18468.terms
def image18469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18469 : InImage map_34_244 image18469 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18469 : Bundle := named_bundle% "RealMapCertificates/relations/basis18469.json"
theorem reductionProof18469 : EqualModuloRelations reduction18469.relations reduction18469.input reduction18469.output := by lin_cert using reduction18469.terms
theorem substitutionProof18469 : IsMapEvaluation generatorImages reduction18469.relations [8,8,180,209] reduction18469.output := by lin_cert using reduction18469.terms
def map_34_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18733 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18733 : InImage map_34_245 image18733 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18733 : Bundle := named_bundle% "RealMapCertificates/relations/basis18733.json"
theorem reductionProof18733 : EqualModuloRelations reduction18733.relations reduction18733.input reduction18733.output := by lin_cert using reduction18733.terms
theorem substitutionProof18733 : IsMapEvaluation generatorImages reduction18733.relations [2164] reduction18733.output := by lin_cert using reduction18733.terms
def image18734 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18734 : InImage map_34_245 image18734 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18734 : Bundle := named_bundle% "RealMapCertificates/relations/basis18734.json"
theorem reductionProof18734 : EqualModuloRelations reduction18734.relations reduction18734.input reduction18734.output := by lin_cert using reduction18734.terms
theorem substitutionProof18734 : IsMapEvaluation generatorImages reduction18734.relations [9,13,23,690] reduction18734.output := by lin_cert using reduction18734.terms
def image18735 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18735 : InImage map_34_245 image18735 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18735 : Bundle := named_bundle% "RealMapCertificates/relations/basis18735.json"
theorem reductionProof18735 : EqualModuloRelations reduction18735.relations reduction18735.input reduction18735.output := by lin_cert using reduction18735.terms
theorem substitutionProof18735 : IsMapEvaluation generatorImages reduction18735.relations [8,64,690] reduction18735.output := by lin_cert using reduction18735.terms
def image18736 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18736 : InImage map_34_245 image18736 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18736 : Bundle := named_bundle% "RealMapCertificates/relations/basis18736.json"
theorem reductionProof18736 : EqualModuloRelations reduction18736.relations reduction18736.input reduction18736.output := by lin_cert using reduction18736.terms
theorem substitutionProof18736 : IsMapEvaluation generatorImages reduction18736.relations [8,13,13,13,13,13,209] reduction18736.output := by lin_cert using reduction18736.terms
def image18737 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18737 : InImage map_34_245 image18737 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18737 : Bundle := named_bundle% "RealMapCertificates/relations/basis18737.json"
theorem reductionProof18737 : EqualModuloRelations reduction18737.relations reduction18737.input reduction18737.output := by lin_cert using reduction18737.terms
theorem substitutionProof18737 : IsMapEvaluation generatorImages reduction18737.relations [8,8,8,9,761] reduction18737.output := by lin_cert using reduction18737.terms
def image18738 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18738 : InImage map_34_245 image18738 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18738 : Bundle := named_bundle% "RealMapCertificates/relations/basis18738.json"
theorem reductionProof18738 : EqualModuloRelations reduction18738.relations reduction18738.input reduction18738.output := by lin_cert using reduction18738.terms
theorem substitutionProof18738 : IsMapEvaluation generatorImages reduction18738.relations [0,2125] reduction18738.output := by lin_cert using reduction18738.terms
def map_34_246 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19025 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19025 : InImage map_34_246 image19025 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19025 : Bundle := named_bundle% "RealMapCertificates/relations/basis19025.json"
theorem reductionProof19025 : EqualModuloRelations reduction19025.relations reduction19025.input reduction19025.output := by lin_cert using reduction19025.terms
theorem substitutionProof19025 : IsMapEvaluation generatorImages reduction19025.relations [2198] reduction19025.output := by lin_cert using reduction19025.terms
def image19026 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19026 : InImage map_34_246 image19026 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19026 : Bundle := named_bundle% "RealMapCertificates/relations/basis19026.json"
theorem reductionProof19026 : EqualModuloRelations reduction19026.relations reduction19026.input reduction19026.output := by lin_cert using reduction19026.terms
theorem substitutionProof19026 : IsMapEvaluation generatorImages reduction19026.relations [13,13,13,13,13,13,189] reduction19026.output := by lin_cert using reduction19026.terms
def image19027 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19027 : InImage map_34_246 image19027 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19027 : Bundle := named_bundle% "RealMapCertificates/relations/basis19027.json"
theorem reductionProof19027 : EqualModuloRelations reduction19027.relations reduction19027.input reduction19027.output := by lin_cert using reduction19027.terms
theorem substitutionProof19027 : IsMapEvaluation generatorImages reduction19027.relations [8,64,704] reduction19027.output := by lin_cert using reduction19027.terms
def image19028 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19028 : InImage map_34_246 image19028 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19028 : Bundle := named_bundle% "RealMapCertificates/relations/basis19028.json"
theorem reductionProof19028 : EqualModuloRelations reduction19028.relations reduction19028.input reduction19028.output := by lin_cert using reduction19028.terms
theorem substitutionProof19028 : IsMapEvaluation generatorImages reduction19028.relations [8,9,13,13,640] reduction19028.output := by lin_cert using reduction19028.terms
def image19029 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19029 : InImage map_34_246 image19029 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19029 : Bundle := named_bundle% "RealMapCertificates/relations/basis19029.json"
theorem reductionProof19029 : EqualModuloRelations reduction19029.relations reduction19029.input reduction19029.output := by lin_cert using reduction19029.terms
theorem substitutionProof19029 : IsMapEvaluation generatorImages reduction19029.relations [1,2124] reduction19029.output := by lin_cert using reduction19029.terms
def image19030 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19030 : InImage map_34_246 image19030 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19030 : Bundle := named_bundle% "RealMapCertificates/relations/basis19030.json"
theorem reductionProof19030 : EqualModuloRelations reduction19030.relations reduction19030.input reduction19030.output := by lin_cert using reduction19030.terms
theorem substitutionProof19030 : IsMapEvaluation generatorImages reduction19030.relations [1,260,293] reduction19030.output := by lin_cert using reduction19030.terms
def image19031 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19031 : InImage map_34_246 image19031 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19031 : Bundle := named_bundle% "RealMapCertificates/relations/basis19031.json"
theorem reductionProof19031 : EqualModuloRelations reduction19031.relations reduction19031.input reduction19031.output := by lin_cert using reduction19031.terms
theorem substitutionProof19031 : IsMapEvaluation generatorImages reduction19031.relations [0,2165] reduction19031.output := by lin_cert using reduction19031.terms
def image19032 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19032 : InImage map_34_246 image19032 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19032 : Bundle := named_bundle% "RealMapCertificates/relations/basis19032.json"
theorem reductionProof19032 : EqualModuloRelations reduction19032.relations reduction19032.input reduction19032.output := by lin_cert using reduction19032.terms
theorem substitutionProof19032 : IsMapEvaluation generatorImages reduction19032.relations [0,0,0,2097] reduction19032.output := by lin_cert using reduction19032.terms
def map_34_247 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19272 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19272 : InImage map_34_247 image19272 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19272 : Bundle := named_bundle% "RealMapCertificates/relations/basis19272.json"
theorem reductionProof19272 : EqualModuloRelations reduction19272.relations reduction19272.input reduction19272.output := by lin_cert using reduction19272.terms
theorem substitutionProof19272 : IsMapEvaluation generatorImages reduction19272.relations [2241] reduction19272.output := by lin_cert using reduction19272.terms
def image19273 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19273 : InImage map_34_247 image19273 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19273 : Bundle := named_bundle% "RealMapCertificates/relations/basis19273.json"
theorem reductionProof19273 : EqualModuloRelations reduction19273.relations reduction19273.input reduction19273.output := by lin_cert using reduction19273.terms
theorem substitutionProof19273 : IsMapEvaluation generatorImages reduction19273.relations [2240] reduction19273.output := by lin_cert using reduction19273.terms
def image19274 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19274 : InImage map_34_247 image19274 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19274 : Bundle := named_bundle% "RealMapCertificates/relations/basis19274.json"
theorem reductionProof19274 : EqualModuloRelations reduction19274.relations reduction19274.input reduction19274.output := by lin_cert using reduction19274.terms
theorem substitutionProof19274 : IsMapEvaluation generatorImages reduction19274.relations [260,318] reduction19274.output := by lin_cert using reduction19274.terms
def image19275 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19275 : InImage map_34_247 image19275 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19275 : Bundle := named_bundle% "RealMapCertificates/relations/basis19275.json"
theorem reductionProof19275 : EqualModuloRelations reduction19275.relations reduction19275.input reduction19275.output := by lin_cert using reduction19275.terms
theorem substitutionProof19275 : IsMapEvaluation generatorImages reduction19275.relations [8,8,194,209] reduction19275.output := by lin_cert using reduction19275.terms
def map_34_248 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19539 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19539 : InImage map_34_248 image19539 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19539 : Bundle := named_bundle% "RealMapCertificates/relations/basis19539.json"
theorem reductionProof19539 : EqualModuloRelations reduction19539.relations reduction19539.input reduction19539.output := by lin_cert using reduction19539.terms
theorem substitutionProof19539 : IsMapEvaluation generatorImages reduction19539.relations [64,64,279] reduction19539.output := by lin_cert using reduction19539.terms
def image19540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19540 : InImage map_34_248 image19540 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19540 : Bundle := named_bundle% "RealMapCertificates/relations/basis19540.json"
theorem reductionProof19540 : EqualModuloRelations reduction19540.relations reduction19540.input reduction19540.output := by lin_cert using reduction19540.terms
theorem substitutionProof19540 : IsMapEvaluation generatorImages reduction19540.relations [13,13,23,690] reduction19540.output := by lin_cert using reduction19540.terms
def image19541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19541 : InImage map_34_248 image19541 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19541 : Bundle := named_bundle% "RealMapCertificates/relations/basis19541.json"
theorem reductionProof19541 : EqualModuloRelations reduction19541.relations reduction19541.input reduction19541.output := by lin_cert using reduction19541.terms
theorem substitutionProof19541 : IsMapEvaluation generatorImages reduction19541.relations [9,13,13,876] reduction19541.output := by lin_cert using reduction19541.terms
def image19542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19542 : InImage map_34_248 image19542 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19542 : Bundle := named_bundle% "RealMapCertificates/relations/basis19542.json"
theorem reductionProof19542 : EqualModuloRelations reduction19542.relations reduction19542.input reduction19542.output := by lin_cert using reduction19542.terms
theorem substitutionProof19542 : IsMapEvaluation generatorImages reduction19542.relations [9,13,13,13,13,13,209] reduction19542.output := by lin_cert using reduction19542.terms
def image19543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19543 : InImage map_34_248 image19543 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19543 : Bundle := named_bundle% "RealMapCertificates/relations/basis19543.json"
theorem reductionProof19543 : EqualModuloRelations reduction19543.relations reduction19543.input reduction19543.output := by lin_cert using reduction19543.terms
theorem substitutionProof19543 : IsMapEvaluation generatorImages reduction19543.relations [8,8,1405] reduction19543.output := by lin_cert using reduction19543.terms
def image19544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19544 : InImage map_34_248 image19544 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19544 : Bundle := named_bundle% "RealMapCertificates/relations/basis19544.json"
theorem reductionProof19544 : EqualModuloRelations reduction19544.relations reduction19544.input reduction19544.output := by lin_cert using reduction19544.terms
theorem substitutionProof19544 : IsMapEvaluation generatorImages reduction19544.relations [8,8,8,13,761] reduction19544.output := by lin_cert using reduction19544.terms
def image19545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19545 : InImage map_34_248 image19545 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19545 : Bundle := named_bundle% "RealMapCertificates/relations/basis19545.json"
theorem reductionProof19545 : EqualModuloRelations reduction19545.relations reduction19545.input reduction19545.output := by lin_cert using reduction19545.terms
theorem substitutionProof19545 : IsMapEvaluation generatorImages reduction19545.relations [1,2199] reduction19545.output := by lin_cert using reduction19545.terms
def image19546 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19546 : InImage map_34_248 image19546 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19546 : Bundle := named_bundle% "RealMapCertificates/relations/basis19546.json"
theorem reductionProof19546 : EqualModuloRelations reduction19546.relations reduction19546.input reduction19546.output := by lin_cert using reduction19546.terms
theorem substitutionProof19546 : IsMapEvaluation generatorImages reduction19546.relations [1,3,1928] reduction19546.output := by lin_cert using reduction19546.terms
def map_34_249 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image19835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19835 : InImage map_34_249 image19835 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19835 : Bundle := named_bundle% "RealMapCertificates/relations/basis19835.json"
theorem reductionProof19835 : EqualModuloRelations reduction19835.relations reduction19835.input reduction19835.output := by lin_cert using reduction19835.terms
theorem substitutionProof19835 : IsMapEvaluation generatorImages reduction19835.relations [16,1539] reduction19835.output := by lin_cert using reduction19835.terms
def image19836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19836 : InImage map_34_249 image19836 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19836 : Bundle := named_bundle% "RealMapCertificates/relations/basis19836.json"
theorem reductionProof19836 : EqualModuloRelations reduction19836.relations reduction19836.input reduction19836.output := by lin_cert using reduction19836.terms
theorem substitutionProof19836 : IsMapEvaluation generatorImages reduction19836.relations [13,13,13,13,581] reduction19836.output := by lin_cert using reduction19836.terms
def image19837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19837 : InImage map_34_249 image19837 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19837 : Bundle := named_bundle% "RealMapCertificates/relations/basis19837.json"
theorem reductionProof19837 : EqualModuloRelations reduction19837.relations reduction19837.input reduction19837.output := by lin_cert using reduction19837.terms
theorem substitutionProof19837 : IsMapEvaluation generatorImages reduction19837.relations [8,13,13,13,640] reduction19837.output := by lin_cert using reduction19837.terms
def image19838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19838 : InImage map_34_249 image19838 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19838 : Bundle := named_bundle% "RealMapCertificates/relations/basis19838.json"
theorem reductionProof19838 : EqualModuloRelations reduction19838.relations reduction19838.input reduction19838.output := by lin_cert using reduction19838.terms
theorem substitutionProof19838 : IsMapEvaluation generatorImages reduction19838.relations [8,8,1428] reduction19838.output := by lin_cert using reduction19838.terms
def image19839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19839 : InImage map_34_249 image19839 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19839 : Bundle := named_bundle% "RealMapCertificates/relations/basis19839.json"
theorem reductionProof19839 : EqualModuloRelations reduction19839.relations reduction19839.input reduction19839.output := by lin_cert using reduction19839.terms
theorem substitutionProof19839 : IsMapEvaluation generatorImages reduction19839.relations [0,3,3,1773] reduction19839.output := by lin_cert using reduction19839.terms
def map_34_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20050 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20050 : InImage map_34_250 image20050 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20050 : Bundle := named_bundle% "RealMapCertificates/relations/basis20050.json"
theorem reductionProof20050 : EqualModuloRelations reduction20050.relations reduction20050.input reduction20050.output := by lin_cert using reduction20050.terms
theorem substitutionProof20050 : IsMapEvaluation generatorImages reduction20050.relations [250,380] reduction20050.output := by lin_cert using reduction20050.terms
def image20051 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20051 : InImage map_34_250 image20051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20051 : Bundle := named_bundle% "RealMapCertificates/relations/basis20051.json"
theorem reductionProof20051 : EqualModuloRelations reduction20051.relations reduction20051.input reduction20051.output := by lin_cert using reduction20051.terms
theorem substitutionProof20051 : IsMapEvaluation generatorImages reduction20051.relations [23,1441] reduction20051.output := by lin_cert using reduction20051.terms
def image20052 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20052 : InImage map_34_250 image20052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20052 : Bundle := named_bundle% "RealMapCertificates/relations/basis20052.json"
theorem reductionProof20052 : EqualModuloRelations reduction20052.relations reduction20052.input reduction20052.output := by lin_cert using reduction20052.terms
theorem substitutionProof20052 : IsMapEvaluation generatorImages reduction20052.relations [8,1775] reduction20052.output := by lin_cert using reduction20052.terms
def image20053 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20053 : InImage map_34_250 image20053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20053 : Bundle := named_bundle% "RealMapCertificates/relations/basis20053.json"
theorem reductionProof20053 : EqualModuloRelations reduction20053.relations reduction20053.input reduction20053.output := by lin_cert using reduction20053.terms
theorem substitutionProof20053 : IsMapEvaluation generatorImages reduction20053.relations [8,9,194,209] reduction20053.output := by lin_cert using reduction20053.terms
def image20054 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20054 : InImage map_34_250 image20054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20054 : Bundle := named_bundle% "RealMapCertificates/relations/basis20054.json"
theorem reductionProof20054 : EqualModuloRelations reduction20054.relations reduction20054.input reduction20054.output := by lin_cert using reduction20054.terms
theorem substitutionProof20054 : IsMapEvaluation generatorImages reduction20054.relations [0,17,1539] reduction20054.output := by lin_cert using reduction20054.terms
def map_34_251 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20347 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20347 : InImage map_34_251 image20347 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20347 : Bundle := named_bundle% "RealMapCertificates/relations/basis20347.json"
theorem reductionProof20347 : EqualModuloRelations reduction20347.relations reduction20347.input reduction20347.output := by lin_cert using reduction20347.terms
theorem substitutionProof20347 : IsMapEvaluation generatorImages reduction20347.relations [13,13,13,876] reduction20347.output := by lin_cert using reduction20347.terms
def image20348 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20348 : InImage map_34_251 image20348 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20348 : Bundle := named_bundle% "RealMapCertificates/relations/basis20348.json"
theorem reductionProof20348 : EqualModuloRelations reduction20348.relations reduction20348.input reduction20348.output := by lin_cert using reduction20348.terms
theorem substitutionProof20348 : IsMapEvaluation generatorImages reduction20348.relations [13,13,13,13,13,13,209] reduction20348.output := by lin_cert using reduction20348.terms
def image20349 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20349 : InImage map_34_251 image20349 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20349 : Bundle := named_bundle% "RealMapCertificates/relations/basis20349.json"
theorem reductionProof20349 : EqualModuloRelations reduction20349.relations reduction20349.input reduction20349.output := by lin_cert using reduction20349.terms
theorem substitutionProof20349 : IsMapEvaluation generatorImages reduction20349.relations [8,64,64,209] reduction20349.output := by lin_cert using reduction20349.terms
def image20350 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20350 : InImage map_34_251 image20350 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20350 : Bundle := named_bundle% "RealMapCertificates/relations/basis20350.json"
theorem reductionProof20350 : EqualModuloRelations reduction20350.relations reduction20350.input reduction20350.output := by lin_cert using reduction20350.terms
theorem substitutionProof20350 : IsMapEvaluation generatorImages reduction20350.relations [8,8,1475] reduction20350.output := by lin_cert using reduction20350.terms
def image20351 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20351 : InImage map_34_251 image20351 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20351 : Bundle := named_bundle% "RealMapCertificates/relations/basis20351.json"
theorem reductionProof20351 : EqualModuloRelations reduction20351.relations reduction20351.input reduction20351.output := by lin_cert using reduction20351.terms
theorem substitutionProof20351 : IsMapEvaluation generatorImages reduction20351.relations [8,8,9,13,761] reduction20351.output := by lin_cert using reduction20351.terms
def image20352 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20352 : InImage map_34_251 image20352 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20352 : Bundle := named_bundle% "RealMapCertificates/relations/basis20352.json"
theorem reductionProof20352 : EqualModuloRelations reduction20352.relations reduction20352.input reduction20352.output := by lin_cert using reduction20352.terms
theorem substitutionProof20352 : IsMapEvaluation generatorImages reduction20352.relations [0,2335] reduction20352.output := by lin_cert using reduction20352.terms
def image20353 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20353 : InImage map_34_251 image20353 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20353 : Bundle := named_bundle% "RealMapCertificates/relations/basis20353.json"
theorem reductionProof20353 : EqualModuloRelations reduction20353.relations reduction20353.input reduction20353.output := by lin_cert using reduction20353.terms
theorem substitutionProof20353 : IsMapEvaluation generatorImages reduction20353.relations [0,260,349] reduction20353.output := by lin_cert using reduction20353.terms
def image20354 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20354 : InImage map_34_251 image20354 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20354 : Bundle := named_bundle% "RealMapCertificates/relations/basis20354.json"
theorem reductionProof20354 : EqualModuloRelations reduction20354.relations reduction20354.input reduction20354.output := by lin_cert using reduction20354.terms
theorem substitutionProof20354 : IsMapEvaluation generatorImages reduction20354.relations [0,0,2304] reduction20354.output := by lin_cert using reduction20354.terms
def map_34_252 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20645 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20645 : InImage map_34_252 image20645 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20645 : Bundle := named_bundle% "RealMapCertificates/relations/basis20645.json"
theorem reductionProof20645 : EqualModuloRelations reduction20645.relations reduction20645.input reduction20645.output := by lin_cert using reduction20645.terms
theorem substitutionProof20645 : IsMapEvaluation generatorImages reduction20645.relations [9,13,13,13,640] reduction20645.output := by lin_cert using reduction20645.terms
def image20646 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20646 : InImage map_34_252 image20646 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20646 : Bundle := named_bundle% "RealMapCertificates/relations/basis20646.json"
theorem reductionProof20646 : EqualModuloRelations reduction20646.relations reduction20646.input reduction20646.output := by lin_cert using reduction20646.terms
theorem substitutionProof20646 : IsMapEvaluation generatorImages reduction20646.relations [8,1834] reduction20646.output := by lin_cert using reduction20646.terms
def image20647 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20647 : InImage map_34_252 image20647 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20647 : Bundle := named_bundle% "RealMapCertificates/relations/basis20647.json"
theorem reductionProof20647 : EqualModuloRelations reduction20647.relations reduction20647.input reduction20647.output := by lin_cert using reduction20647.terms
theorem substitutionProof20647 : IsMapEvaluation generatorImages reduction20647.relations [8,8,1486] reduction20647.output := by lin_cert using reduction20647.terms
def image20648 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20648 : InImage map_34_252 image20648 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20648 : Bundle := named_bundle% "RealMapCertificates/relations/basis20648.json"
theorem reductionProof20648 : EqualModuloRelations reduction20648.relations reduction20648.input reduction20648.output := by lin_cert using reduction20648.terms
theorem substitutionProof20648 : IsMapEvaluation generatorImages reduction20648.relations [1,2336] reduction20648.output := by lin_cert using reduction20648.terms
def image20649 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20649 : InImage map_34_252 image20649 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20649 : Bundle := named_bundle% "RealMapCertificates/relations/basis20649.json"
theorem reductionProof20649 : EqualModuloRelations reduction20649.relations reduction20649.input reduction20649.output := by lin_cert using reduction20649.terms
theorem substitutionProof20649 : IsMapEvaluation generatorImages reduction20649.relations [0,0,2338] reduction20649.output := by lin_cert using reduction20649.terms
def image20650 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20650 : InImage map_34_252 image20650 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20650 : Bundle := named_bundle% "RealMapCertificates/relations/basis20650.json"
theorem reductionProof20650 : EqualModuloRelations reduction20650.relations reduction20650.input reduction20650.output := by lin_cert using reduction20650.terms
theorem substitutionProof20650 : IsMapEvaluation generatorImages reduction20650.relations [0,0,2337] reduction20650.output := by lin_cert using reduction20650.terms
def image20651 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20651 : InImage map_34_252 image20651 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20651 : Bundle := named_bundle% "RealMapCertificates/relations/basis20651.json"
theorem reductionProof20651 : EqualModuloRelations reduction20651.relations reduction20651.input reduction20651.output := by lin_cert using reduction20651.terms
theorem substitutionProof20651 : IsMapEvaluation generatorImages reduction20651.relations [0,0,0,2307] reduction20651.output := by lin_cert using reduction20651.terms
def map_34_253 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20883 : InImage map_34_253 image20883 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20883 : Bundle := named_bundle% "RealMapCertificates/relations/basis20883.json"
theorem reductionProof20883 : EqualModuloRelations reduction20883.relations reduction20883.input reduction20883.output := by lin_cert using reduction20883.terms
theorem substitutionProof20883 : IsMapEvaluation generatorImages reduction20883.relations [9,1775] reduction20883.output := by lin_cert using reduction20883.terms
def image20884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20884 : InImage map_34_253 image20884 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20884 : Bundle := named_bundle% "RealMapCertificates/relations/basis20884.json"
theorem reductionProof20884 : EqualModuloRelations reduction20884.relations reduction20884.input reduction20884.output := by lin_cert using reduction20884.terms
theorem substitutionProof20884 : IsMapEvaluation generatorImages reduction20884.relations [8,250,260] reduction20884.output := by lin_cert using reduction20884.terms
def image20885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20885 : InImage map_34_253 image20885 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20885 : Bundle := named_bundle% "RealMapCertificates/relations/basis20885.json"
theorem reductionProof20885 : EqualModuloRelations reduction20885.relations reduction20885.input reduction20885.output := by lin_cert using reduction20885.terms
theorem substitutionProof20885 : IsMapEvaluation generatorImages reduction20885.relations [8,13,194,209] reduction20885.output := by lin_cert using reduction20885.terms
def image20886 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20886 : InImage map_34_253 image20886 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20886 : Bundle := named_bundle% "RealMapCertificates/relations/basis20886.json"
theorem reductionProof20886 : EqualModuloRelations reduction20886.relations reduction20886.input reduction20886.output := by lin_cert using reduction20886.terms
theorem substitutionProof20886 : IsMapEvaluation generatorImages reduction20886.relations [0,2406] reduction20886.output := by lin_cert using reduction20886.terms
def image20887 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20887 : InImage map_34_253 image20887 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20887 : Bundle := named_bundle% "RealMapCertificates/relations/basis20887.json"
theorem reductionProof20887 : EqualModuloRelations reduction20887.relations reduction20887.input reduction20887.output := by lin_cert using reduction20887.terms
theorem substitutionProof20887 : IsMapEvaluation generatorImages reduction20887.relations [0,0,0,2340] reduction20887.output := by lin_cert using reduction20887.terms
def image20888 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20888 : InImage map_34_253 image20888 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20888 : Bundle := named_bundle% "RealMapCertificates/relations/basis20888.json"
theorem reductionProof20888 : EqualModuloRelations reduction20888.relations reduction20888.input reduction20888.output := by lin_cert using reduction20888.terms
theorem substitutionProof20888 : IsMapEvaluation generatorImages reduction20888.relations [0,0,0,0,0,2279] reduction20888.output := by lin_cert using reduction20888.terms
def map_34_254 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21181 : InImage map_34_254 image21181 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21181 : Bundle := named_bundle% "RealMapCertificates/relations/basis21181.json"
theorem reductionProof21181 : EqualModuloRelations reduction21181.relations reduction21181.input reduction21181.output := by lin_cert using reduction21181.terms
theorem substitutionProof21181 : IsMapEvaluation generatorImages reduction21181.relations [13,13,13,13,628] reduction21181.output := by lin_cert using reduction21181.terms
def image21182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21182 : InImage map_34_254 image21182 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21182 : Bundle := named_bundle% "RealMapCertificates/relations/basis21182.json"
theorem reductionProof21182 : EqualModuloRelations reduction21182.relations reduction21182.input reduction21182.output := by lin_cert using reduction21182.terms
theorem substitutionProof21182 : IsMapEvaluation generatorImages reduction21182.relations [8,64,72,209] reduction21182.output := by lin_cert using reduction21182.terms
def image21183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21183 : InImage map_34_254 image21183 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21183 : Bundle := named_bundle% "RealMapCertificates/relations/basis21183.json"
theorem reductionProof21183 : EqualModuloRelations reduction21183.relations reduction21183.input reduction21183.output := by lin_cert using reduction21183.terms
theorem substitutionProof21183 : IsMapEvaluation generatorImages reduction21183.relations [8,9,1475] reduction21183.output := by lin_cert using reduction21183.terms
def image21184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21184 : InImage map_34_254 image21184 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21184 : Bundle := named_bundle% "RealMapCertificates/relations/basis21184.json"
theorem reductionProof21184 : EqualModuloRelations reduction21184.relations reduction21184.input reduction21184.output := by lin_cert using reduction21184.terms
theorem substitutionProof21184 : IsMapEvaluation generatorImages reduction21184.relations [8,8,13,13,761] reduction21184.output := by lin_cert using reduction21184.terms
def image21185 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21185 : InImage map_34_254 image21185 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21185 : Bundle := named_bundle% "RealMapCertificates/relations/basis21185.json"
theorem reductionProof21185 : EqualModuloRelations reduction21185.relations reduction21185.input reduction21185.output := by lin_cert using reduction21185.terms
theorem substitutionProof21185 : IsMapEvaluation generatorImages reduction21185.relations [1,1,2338] reduction21185.output := by lin_cert using reduction21185.terms
def image21186 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21186 : InImage map_34_254 image21186 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21186 : Bundle := named_bundle% "RealMapCertificates/relations/basis21186.json"
theorem reductionProof21186 : EqualModuloRelations reduction21186.relations reduction21186.input reduction21186.output := by lin_cert using reduction21186.terms
theorem substitutionProof21186 : IsMapEvaluation generatorImages reduction21186.relations [0,2439] reduction21186.output := by lin_cert using reduction21186.terms
def image21187 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21187 : InImage map_34_254 image21187 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21187 : Bundle := named_bundle% "RealMapCertificates/relations/basis21187.json"
theorem reductionProof21187 : EqualModuloRelations reduction21187.relations reduction21187.input reduction21187.output := by lin_cert using reduction21187.terms
theorem substitutionProof21187 : IsMapEvaluation generatorImages reduction21187.relations [0,0,0,0,2342] reduction21187.output := by lin_cert using reduction21187.terms
def map_34_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21516 : InImage map_34_255 image21516 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21516 : Bundle := named_bundle% "RealMapCertificates/relations/basis21516.json"
theorem reductionProof21516 : EqualModuloRelations reduction21516.relations reduction21516.input reduction21516.output := by lin_cert using reduction21516.terms
theorem substitutionProof21516 : IsMapEvaluation generatorImages reduction21516.relations [2544] reduction21516.output := by lin_cert using reduction21516.terms
def image21517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21517 : InImage map_34_255 image21517 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21517 : Bundle := named_bundle% "RealMapCertificates/relations/basis21517.json"
theorem reductionProof21517 : EqualModuloRelations reduction21517.relations reduction21517.input reduction21517.output := by lin_cert using reduction21517.terms
theorem substitutionProof21517 : IsMapEvaluation generatorImages reduction21517.relations [13,13,13,13,640] reduction21517.output := by lin_cert using reduction21517.terms
def image21518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21518 : InImage map_34_255 image21518 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21518 : Bundle := named_bundle% "RealMapCertificates/relations/basis21518.json"
theorem reductionProof21518 : EqualModuloRelations reduction21518.relations reduction21518.input reduction21518.output := by lin_cert using reduction21518.terms
theorem substitutionProof21518 : IsMapEvaluation generatorImages reduction21518.relations [8,8,1539] reduction21518.output := by lin_cert using reduction21518.terms
def image21519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21519 : InImage map_34_255 image21519 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21519 : Bundle := named_bundle% "RealMapCertificates/relations/basis21519.json"
theorem reductionProof21519 : EqualModuloRelations reduction21519.relations reduction21519.input reduction21519.output := by lin_cert using reduction21519.terms
theorem substitutionProof21519 : IsMapEvaluation generatorImages reduction21519.relations [8,8,8,1205] reduction21519.output := by lin_cert using reduction21519.terms
def image21520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21520 : InImage map_34_255 image21520 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21520 : Bundle := named_bundle% "RealMapCertificates/relations/basis21520.json"
theorem reductionProof21520 : EqualModuloRelations reduction21520.relations reduction21520.input reduction21520.output := by lin_cert using reduction21520.terms
theorem substitutionProof21520 : IsMapEvaluation generatorImages reduction21520.relations [0,0,0,0,2381] reduction21520.output := by lin_cert using reduction21520.terms
def image21521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21521 : InImage map_34_255 image21521 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21521 : Bundle := named_bundle% "RealMapCertificates/relations/basis21521.json"
theorem reductionProof21521 : EqualModuloRelations reduction21521.relations reduction21521.input reduction21521.output := by lin_cert using reduction21521.terms
theorem substitutionProof21521 : IsMapEvaluation generatorImages reduction21521.relations [0,0,0,0,0,0,2309] reduction21521.output := by lin_cert using reduction21521.terms
def map_34_256 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21775 : InImage map_34_256 image21775 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21775 : Bundle := named_bundle% "RealMapCertificates/relations/basis21775.json"
theorem reductionProof21775 : EqualModuloRelations reduction21775.relations reduction21775.input reduction21775.output := by lin_cert using reduction21775.terms
theorem substitutionProof21775 : IsMapEvaluation generatorImages reduction21775.relations [2583] reduction21775.output := by lin_cert using reduction21775.terms
def image21776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21776 : InImage map_34_256 image21776 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21776 : Bundle := named_bundle% "RealMapCertificates/relations/basis21776.json"
theorem reductionProof21776 : EqualModuloRelations reduction21776.relations reduction21776.input reduction21776.output := by lin_cert using reduction21776.terms
theorem substitutionProof21776 : IsMapEvaluation generatorImages reduction21776.relations [2582] reduction21776.output := by lin_cert using reduction21776.terms
def image21777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21777 : InImage map_34_256 image21777 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21777 : Bundle := named_bundle% "RealMapCertificates/relations/basis21777.json"
theorem reductionProof21777 : EqualModuloRelations reduction21777.relations reduction21777.input reduction21777.output := by lin_cert using reduction21777.terms
theorem substitutionProof21777 : IsMapEvaluation generatorImages reduction21777.relations [13,1775] reduction21777.output := by lin_cert using reduction21777.terms
def image21778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21778 : InImage map_34_256 image21778 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21778 : Bundle := named_bundle% "RealMapCertificates/relations/basis21778.json"
theorem reductionProof21778 : EqualModuloRelations reduction21778.relations reduction21778.input reduction21778.output := by lin_cert using reduction21778.terms
theorem substitutionProof21778 : IsMapEvaluation generatorImages reduction21778.relations [9,1861] reduction21778.output := by lin_cert using reduction21778.terms
def image21779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21779 : InImage map_34_256 image21779 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21779 : Bundle := named_bundle% "RealMapCertificates/relations/basis21779.json"
theorem reductionProof21779 : EqualModuloRelations reduction21779.relations reduction21779.input reduction21779.output := by lin_cert using reduction21779.terms
theorem substitutionProof21779 : IsMapEvaluation generatorImages reduction21779.relations [9,13,194,209] reduction21779.output := by lin_cert using reduction21779.terms
def image21780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21780 : InImage map_34_256 image21780 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21780 : Bundle := named_bundle% "RealMapCertificates/relations/basis21780.json"
theorem reductionProof21780 : EqualModuloRelations reduction21780.relations reduction21780.input reduction21780.output := by lin_cert using reduction21780.terms
theorem substitutionProof21780 : IsMapEvaluation generatorImages reduction21780.relations [8,250,278] reduction21780.output := by lin_cert using reduction21780.terms
def image21781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21781 : InImage map_34_256 image21781 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21781 : Bundle := named_bundle% "RealMapCertificates/relations/basis21781.json"
theorem reductionProof21781 : EqualModuloRelations reduction21781.relations reduction21781.input reduction21781.output := by lin_cert using reduction21781.terms
theorem substitutionProof21781 : IsMapEvaluation generatorImages reduction21781.relations [0,2546] reduction21781.output := by lin_cert using reduction21781.terms
def map_34_257 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22127 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22127 : InImage map_34_257 image22127 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22127 : Bundle := named_bundle% "RealMapCertificates/relations/basis22127.json"
theorem reductionProof22127 : EqualModuloRelations reduction22127.relations reduction22127.input reduction22127.output := by lin_cert using reduction22127.terms
theorem substitutionProof22127 : IsMapEvaluation generatorImages reduction22127.relations [13,13,1350] reduction22127.output := by lin_cert using reduction22127.terms
def image22128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22128 : InImage map_34_257 image22128 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22128 : Bundle := named_bundle% "RealMapCertificates/relations/basis22128.json"
theorem reductionProof22128 : EqualModuloRelations reduction22128.relations reduction22128.input reduction22128.output := by lin_cert using reduction22128.terms
theorem substitutionProof22128 : IsMapEvaluation generatorImages reduction22128.relations [13,13,13,13,13,23,181] reduction22128.output := by lin_cert using reduction22128.terms
def image22129 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22129 : InImage map_34_257 image22129 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22129 : Bundle := named_bundle% "RealMapCertificates/relations/basis22129.json"
theorem reductionProof22129 : EqualModuloRelations reduction22129.relations reduction22129.input reduction22129.output := by lin_cert using reduction22129.terms
theorem substitutionProof22129 : IsMapEvaluation generatorImages reduction22129.relations [8,13,1475] reduction22129.output := by lin_cert using reduction22129.terms
def image22130 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22130 : InImage map_34_257 image22130 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22130 : Bundle := named_bundle% "RealMapCertificates/relations/basis22130.json"
theorem reductionProof22130 : EqualModuloRelations reduction22130.relations reduction22130.input reduction22130.output := by lin_cert using reduction22130.terms
theorem substitutionProof22130 : IsMapEvaluation generatorImages reduction22130.relations [8,9,13,13,761] reduction22130.output := by lin_cert using reduction22130.terms
def image22131 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22131 : InImage map_34_257 image22131 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22131 : Bundle := named_bundle% "RealMapCertificates/relations/basis22131.json"
theorem reductionProof22131 : EqualModuloRelations reduction22131.relations reduction22131.input reduction22131.output := by lin_cert using reduction22131.terms
theorem substitutionProof22131 : IsMapEvaluation generatorImages reduction22131.relations [8,8,1572] reduction22131.output := by lin_cert using reduction22131.terms
def image22132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22132 : InImage map_34_257 image22132 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22132 : Bundle := named_bundle% "RealMapCertificates/relations/basis22132.json"
theorem reductionProof22132 : EqualModuloRelations reduction22132.relations reduction22132.input reduction22132.output := by lin_cert using reduction22132.terms
theorem substitutionProof22132 : IsMapEvaluation generatorImages reduction22132.relations [1,2545] reduction22132.output := by lin_cert using reduction22132.terms
def image22133 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22133 : InImage map_34_257 image22133 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22133 : Bundle := named_bundle% "RealMapCertificates/relations/basis22133.json"
theorem reductionProof22133 : EqualModuloRelations reduction22133.relations reduction22133.input reduction22133.output := by lin_cert using reduction22133.terms
theorem substitutionProof22133 : IsMapEvaluation generatorImages reduction22133.relations [0,64,1063] reduction22133.output := by lin_cert using reduction22133.terms
def image22134 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22134 : InImage map_34_257 image22134 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22134 : Bundle := named_bundle% "RealMapCertificates/relations/basis22134.json"
theorem reductionProof22134 : EqualModuloRelations reduction22134.relations reduction22134.input reduction22134.output := by lin_cert using reduction22134.terms
theorem substitutionProof22134 : IsMapEvaluation generatorImages reduction22134.relations [0,0,0,2489] reduction22134.output := by lin_cert using reduction22134.terms
def image22135 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22135 : InImage map_34_257 image22135 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22135 : Bundle := named_bundle% "RealMapCertificates/relations/basis22135.json"
theorem reductionProof22135 : EqualModuloRelations reduction22135.relations reduction22135.input reduction22135.output := by lin_cert using reduction22135.terms
theorem substitutionProof22135 : IsMapEvaluation generatorImages reduction22135.relations [0,0,0,297,324] reduction22135.output := by lin_cert using reduction22135.terms
end RealMapCertificates
