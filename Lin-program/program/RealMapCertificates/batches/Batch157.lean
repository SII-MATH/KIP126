import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 3 => []
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
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 175 => [[2,4,4,4,4,4,4,4,4]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 185 => [[0,4,4,8,12]]
  | 187 => []
  | 188 => []
  | 190 => []
  | 194 => [[7,10,12]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 205 => [[3,4,4,4,4,4,4,4,4]]
  | 206 => [[4,6,8,12]]
  | 209 => []
  | 210 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 257 => [[4,4,6,8,12]]
  | 279 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 500 => []
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 761 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 807 => []
  | 809 => []
  | 1051 => []
  | 1062 => []
  | 1104 => []
  | 1475 => []
  | 1539 => []
  | 1608 => []
  | 1758 => []
  | 1861 => []
  | 1862 => []
  | 2337 => []
  | 2490 => []
  | 2492 => []
  | 2679 => []
  | 2680 => []
  | 2796 => []
  | _ => []
def map_34_258 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22483 : InImage map_34_258 image22483 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22483 : Bundle := named_bundle% "RealMapCertificates/relations/basis22483.json"
theorem reductionProof22483 : EqualModuloRelations reduction22483.relations reduction22483.input reduction22483.output := by lin_cert using reduction22483.terms
theorem substitutionProof22483 : IsMapEvaluation generatorImages reduction22483.relations [2680] reduction22483.output := by lin_cert using reduction22483.terms
def image22484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22484 : InImage map_34_258 image22484 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22484 : Bundle := named_bundle% "RealMapCertificates/relations/basis22484.json"
theorem reductionProof22484 : EqualModuloRelations reduction22484.relations reduction22484.input reduction22484.output := by lin_cert using reduction22484.terms
theorem substitutionProof22484 : IsMapEvaluation generatorImages reduction22484.relations [2679] reduction22484.output := by lin_cert using reduction22484.terms
def image22485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22485 : InImage map_34_258 image22485 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22485 : Bundle := named_bundle% "RealMapCertificates/relations/basis22485.json"
theorem reductionProof22485 : EqualModuloRelations reduction22485.relations reduction22485.input reduction22485.output := by lin_cert using reduction22485.terms
theorem substitutionProof22485 : IsMapEvaluation generatorImages reduction22485.relations [13,13,13,13,13,23,190] reduction22485.output := by lin_cert using reduction22485.terms
def image22486 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22486 : InImage map_34_258 image22486 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22486 : Bundle := named_bundle% "RealMapCertificates/relations/basis22486.json"
theorem reductionProof22486 : EqualModuloRelations reduction22486.relations reduction22486.input reduction22486.output := by lin_cert using reduction22486.terms
theorem substitutionProof22486 : IsMapEvaluation generatorImages reduction22486.relations [8,9,1539] reduction22486.output := by lin_cert using reduction22486.terms
def image22487 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22487 : InImage map_34_258 image22487 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22487 : Bundle := named_bundle% "RealMapCertificates/relations/basis22487.json"
theorem reductionProof22487 : EqualModuloRelations reduction22487.relations reduction22487.input reduction22487.output := by lin_cert using reduction22487.terms
theorem substitutionProof22487 : IsMapEvaluation generatorImages reduction22487.relations [8,8,8,188,188] reduction22487.output := by lin_cert using reduction22487.terms
def image22488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22488 : InImage map_34_258 image22488 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22488 : Bundle := named_bundle% "RealMapCertificates/relations/basis22488.json"
theorem reductionProof22488 : EqualModuloRelations reduction22488.relations reduction22488.input reduction22488.output := by lin_cert using reduction22488.terms
theorem substitutionProof22488 : IsMapEvaluation generatorImages reduction22488.relations [1,64,1062] reduction22488.output := by lin_cert using reduction22488.terms
def image22489 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22489 : InImage map_34_258 image22489 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22489 : Bundle := named_bundle% "RealMapCertificates/relations/basis22489.json"
theorem reductionProof22489 : EqualModuloRelations reduction22489.relations reduction22489.input reduction22489.output := by lin_cert using reduction22489.terms
theorem substitutionProof22489 : IsMapEvaluation generatorImages reduction22489.relations [0,0,0,64,1051] reduction22489.output := by lin_cert using reduction22489.terms
def image22490 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22490 : InImage map_34_258 image22490 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22490 : Bundle := named_bundle% "RealMapCertificates/relations/basis22490.json"
theorem reductionProof22490 : EqualModuloRelations reduction22490.relations reduction22490.input reduction22490.output := by lin_cert using reduction22490.terms
theorem substitutionProof22490 : IsMapEvaluation generatorImages reduction22490.relations [0,0,0,0,2490] reduction22490.output := by lin_cert using reduction22490.terms
def map_34_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22789 : InImage map_34_259 image22789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22789 : Bundle := named_bundle% "RealMapCertificates/relations/basis22789.json"
theorem reductionProof22789 : EqualModuloRelations reduction22789.relations reduction22789.input reduction22789.output := by lin_cert using reduction22789.terms
theorem substitutionProof22789 : IsMapEvaluation generatorImages reduction22789.relations [64,1104] reduction22789.output := by lin_cert using reduction22789.terms
def image22790 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22790 : InImage map_34_259 image22790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22790 : Bundle := named_bundle% "RealMapCertificates/relations/basis22790.json"
theorem reductionProof22790 : EqualModuloRelations reduction22790.relations reduction22790.input reduction22790.output := by lin_cert using reduction22790.terms
theorem substitutionProof22790 : IsMapEvaluation generatorImages reduction22790.relations [13,1861] reduction22790.output := by lin_cert using reduction22790.terms
def image22791 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22791 : InImage map_34_259 image22791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22791 : Bundle := named_bundle% "RealMapCertificates/relations/basis22791.json"
theorem reductionProof22791 : EqualModuloRelations reduction22791.relations reduction22791.input reduction22791.output := by lin_cert using reduction22791.terms
theorem substitutionProof22791 : IsMapEvaluation generatorImages reduction22791.relations [13,13,194,209] reduction22791.output := by lin_cert using reduction22791.terms
def image22792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22792 : InImage map_34_259 image22792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22792 : Bundle := named_bundle% "RealMapCertificates/relations/basis22792.json"
theorem reductionProof22792 : EqualModuloRelations reduction22792.relations reduction22792.input reduction22792.output := by lin_cert using reduction22792.terms
theorem substitutionProof22792 : IsMapEvaluation generatorImages reduction22792.relations [8,8,1608] reduction22792.output := by lin_cert using reduction22792.terms
def image22793 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22793 : InImage map_34_259 image22793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22793 : Bundle := named_bundle% "RealMapCertificates/relations/basis22793.json"
theorem reductionProof22793 : EqualModuloRelations reduction22793.relations reduction22793.input reduction22793.output := by lin_cert using reduction22793.terms
theorem substitutionProof22793 : IsMapEvaluation generatorImages reduction22793.relations [0,3,2337] reduction22793.output := by lin_cert using reduction22793.terms
def image22794 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22794 : InImage map_34_259 image22794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22794 : Bundle := named_bundle% "RealMapCertificates/relations/basis22794.json"
theorem reductionProof22794 : EqualModuloRelations reduction22794.relations reduction22794.input reduction22794.output := by lin_cert using reduction22794.terms
theorem substitutionProof22794 : IsMapEvaluation generatorImages reduction22794.relations [0,0,0,0,0,2492] reduction22794.output := by lin_cert using reduction22794.terms
def map_34_260 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23171 : InImage map_34_260 image23171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23171 : Bundle := named_bundle% "RealMapCertificates/relations/basis23171.json"
theorem reductionProof23171 : EqualModuloRelations reduction23171.relations reduction23171.input reduction23171.output := by lin_cert using reduction23171.terms
theorem substitutionProof23171 : IsMapEvaluation generatorImages reduction23171.relations [2796] reduction23171.output := by lin_cert using reduction23171.terms
def image23172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23172 : InImage map_34_260 image23172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23172 : Bundle := named_bundle% "RealMapCertificates/relations/basis23172.json"
theorem reductionProof23172 : EqualModuloRelations reduction23172.relations reduction23172.input reduction23172.output := by lin_cert using reduction23172.terms
theorem substitutionProof23172 : IsMapEvaluation generatorImages reduction23172.relations [9,13,1475] reduction23172.output := by lin_cert using reduction23172.terms
def image23173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23173 : InImage map_34_260 image23173 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23173 : Bundle := named_bundle% "RealMapCertificates/relations/basis23173.json"
theorem reductionProof23173 : EqualModuloRelations reduction23173.relations reduction23173.input reduction23173.output := by lin_cert using reduction23173.terms
theorem substitutionProof23173 : IsMapEvaluation generatorImages reduction23173.relations [8,13,13,13,761] reduction23173.output := by lin_cert using reduction23173.terms
def image23174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23174 : InImage map_34_260 image23174 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23174 : Bundle := named_bundle% "RealMapCertificates/relations/basis23174.json"
theorem reductionProof23174 : EqualModuloRelations reduction23174.relations reduction23174.input reduction23174.output := by lin_cert using reduction23174.terms
theorem substitutionProof23174 : IsMapEvaluation generatorImages reduction23174.relations [8,8,187,279] reduction23174.output := by lin_cert using reduction23174.terms
def map_34_261 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image23601 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23601 : InImage map_34_261 image23601 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23601 : Bundle := named_bundle% "RealMapCertificates/relations/basis23601.json"
theorem reductionProof23601 : EqualModuloRelations reduction23601.relations reduction23601.input reduction23601.output := by lin_cert using reduction23601.terms
theorem substitutionProof23601 : IsMapEvaluation generatorImages reduction23601.relations [16,1758] reduction23601.output := by lin_cert using reduction23601.terms
def image23602 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23602 : InImage map_34_261 image23602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23602 : Bundle := named_bundle% "RealMapCertificates/relations/basis23602.json"
theorem reductionProof23602 : EqualModuloRelations reduction23602.relations reduction23602.input reduction23602.output := by lin_cert using reduction23602.terms
theorem substitutionProof23602 : IsMapEvaluation generatorImages reduction23602.relations [8,13,1539] reduction23602.output := by lin_cert using reduction23602.terms
def image23603 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23603 : InImage map_34_261 image23603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23603 : Bundle := named_bundle% "RealMapCertificates/relations/basis23603.json"
theorem reductionProof23603 : EqualModuloRelations reduction23603.relations reduction23603.input reduction23603.output := by lin_cert using reduction23603.terms
theorem substitutionProof23603 : IsMapEvaluation generatorImages reduction23603.relations [8,8,9,188,188] reduction23603.output := by lin_cert using reduction23603.terms
def image23604 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23604 : InImage map_34_261 image23604 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23604 : Bundle := named_bundle% "RealMapCertificates/relations/basis23604.json"
theorem reductionProof23604 : EqualModuloRelations reduction23604.relations reduction23604.input reduction23604.output := by lin_cert using reduction23604.terms
theorem substitutionProof23604 : IsMapEvaluation generatorImages reduction23604.relations [1,13,1862] reduction23604.output := by lin_cert using reduction23604.terms
def map_35_35 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image121 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation121 : InImage map_35_35 image121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction121 : Bundle := named_bundle% "RealMapCertificates/relations/basis121.json"
theorem reductionProof121 : EqualModuloRelations reduction121.relations reduction121.input reduction121.output := by lin_cert using reduction121.terms
theorem substitutionProof121 : IsMapEvaluation generatorImages reduction121.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction121.output := by lin_cert using reduction121.terms
def map_35_102 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1272 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1272 : InImage map_35_102 image1272 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1272 : Bundle := named_bundle% "RealMapCertificates/relations/basis1272.json"
theorem reductionProof1272 : EqualModuloRelations reduction1272.relations reduction1272.input reduction1272.output := by lin_cert using reduction1272.terms
theorem substitutionProof1272 : IsMapEvaluation generatorImages reduction1272.relations [0,0,175] reduction1272.output := by lin_cert using reduction1272.terms
def map_35_106 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1411 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1411 : InImage map_35_106 image1411 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1411 : Bundle := named_bundle% "RealMapCertificates/relations/basis1411.json"
theorem reductionProof1411 : EqualModuloRelations reduction1411.relations reduction1411.input reduction1411.output := by lin_cert using reduction1411.terms
theorem substitutionProof1411 : IsMapEvaluation generatorImages reduction1411.relations [0,0,0,0,183] reduction1411.output := by lin_cert using reduction1411.terms
def map_35_107 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image1448 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation1448 : InImage map_35_107 image1448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1448 : Bundle := named_bundle% "RealMapCertificates/relations/basis1448.json"
theorem reductionProof1448 : EqualModuloRelations reduction1448.relations reduction1448.input reduction1448.output := by lin_cert using reduction1448.terms
theorem substitutionProof1448 : IsMapEvaluation generatorImages reduction1448.relations [205] reduction1448.output := by lin_cert using reduction1448.terms
def map_35_108 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1469 : InImage map_35_108 image1469 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1469 : Bundle := named_bundle% "RealMapCertificates/relations/basis1469.json"
theorem reductionProof1469 : EqualModuloRelations reduction1469.relations reduction1469.input reduction1469.output := by lin_cert using reduction1469.terms
theorem substitutionProof1469 : IsMapEvaluation generatorImages reduction1469.relations [0,0,0,199] reduction1469.output := by lin_cert using reduction1469.terms
def map_35_113 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1669 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1669 : InImage map_35_113 image1669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1669 : Bundle := named_bundle% "RealMapCertificates/relations/basis1669.json"
theorem reductionProof1669 : EqualModuloRelations reduction1669.relations reduction1669.input reduction1669.output := by lin_cert using reduction1669.terms
theorem substitutionProof1669 : IsMapEvaluation generatorImages reduction1669.relations [0,0,0,0,0,17,111] reduction1669.output := by lin_cert using reduction1669.terms
def map_35_114 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1701 : InImage map_35_114 image1701 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1701 : Bundle := named_bundle% "RealMapCertificates/relations/basis1701.json"
theorem reductionProof1701 : EqualModuloRelations reduction1701.relations reduction1701.input reduction1701.output := by lin_cert using reduction1701.terms
theorem substitutionProof1701 : IsMapEvaluation generatorImages reduction1701.relations [0,0,0,0,0,0,210] reduction1701.output := by lin_cert using reduction1701.terms
def map_35_117 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1806 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1806 : InImage map_35_117 image1806 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1806 : Bundle := named_bundle% "RealMapCertificates/relations/basis1806.json"
theorem reductionProof1806 : EqualModuloRelations reduction1806.relations reduction1806.input reduction1806.output := by lin_cert using reduction1806.terms
theorem substitutionProof1806 : IsMapEvaluation generatorImages reduction1806.relations [253] reduction1806.output := by lin_cert using reduction1806.terms
def map_35_120 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1918 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1918 : InImage map_35_120 image1918 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1918 : Bundle := named_bundle% "RealMapCertificates/relations/basis1918.json"
theorem reductionProof1918 : EqualModuloRelations reduction1918.relations reduction1918.input reduction1918.output := by lin_cert using reduction1918.terms
theorem substitutionProof1918 : IsMapEvaluation generatorImages reduction1918.relations [8,183] reduction1918.output := by lin_cert using reduction1918.terms
def map_35_123 : Matrix 4 1 := fun i j => ([false,true,false,false] : List Bool)[i.val*1+j.val]!
def image2038 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation2038 : InImage map_35_123 image2038 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2038 : Bundle := named_bundle% "RealMapCertificates/relations/basis2038.json"
theorem reductionProof2038 : EqualModuloRelations reduction2038.relations reduction2038.input reduction2038.output := by lin_cert using reduction2038.terms
theorem substitutionProof2038 : IsMapEvaluation generatorImages reduction2038.relations [8,200] reduction2038.output := by lin_cert using reduction2038.terms
def map_35_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2093 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2093 : InImage map_35_124 image2093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2093 : Bundle := named_bundle% "RealMapCertificates/relations/basis2093.json"
theorem reductionProof2093 : EqualModuloRelations reduction2093.relations reduction2093.input reduction2093.output := by lin_cert using reduction2093.terms
theorem substitutionProof2093 : IsMapEvaluation generatorImages reduction2093.relations [0,17,153] reduction2093.output := by lin_cert using reduction2093.terms
def map_35_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2165 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2165 : InImage map_35_126 image2165 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2165 : Bundle := named_bundle% "RealMapCertificates/relations/basis2165.json"
theorem reductionProof2165 : EqualModuloRelations reduction2165.relations reduction2165.input reduction2165.output := by lin_cert using reduction2165.terms
theorem substitutionProof2165 : IsMapEvaluation generatorImages reduction2165.relations [8,16,111] reduction2165.output := by lin_cert using reduction2165.terms
def map_35_129 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2321 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2321 : InImage map_35_129 image2321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2321 : Bundle := named_bundle% "RealMapCertificates/relations/basis2321.json"
theorem reductionProof2321 : EqualModuloRelations reduction2321.relations reduction2321.input reduction2321.output := by lin_cert using reduction2321.terms
theorem substitutionProof2321 : IsMapEvaluation generatorImages reduction2321.relations [8,8,153] reduction2321.output := by lin_cert using reduction2321.terms
def image2322 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2322 : InImage map_35_129 image2322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2322 : Bundle := named_bundle% "RealMapCertificates/relations/basis2322.json"
theorem reductionProof2322 : EqualModuloRelations reduction2322.relations reduction2322.input reduction2322.output := by lin_cert using reduction2322.terms
theorem substitutionProof2322 : IsMapEvaluation generatorImages reduction2322.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,245] reduction2322.output := by lin_cert using reduction2322.terms
def map_35_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2388 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2388 : InImage map_35_130 image2388 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2388 : Bundle := named_bundle% "RealMapCertificates/relations/basis2388.json"
theorem reductionProof2388 : EqualModuloRelations reduction2388.relations reduction2388.input reduction2388.output := by lin_cert using reduction2388.terms
theorem substitutionProof2388 : IsMapEvaluation generatorImages reduction2388.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2388.output := by lin_cert using reduction2388.terms
def map_35_132 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2504 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2504 : InImage map_35_132 image2504 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2504 : Bundle := named_bundle% "RealMapCertificates/relations/basis2504.json"
theorem reductionProof2504 : EqualModuloRelations reduction2504.relations reduction2504.input reduction2504.output := by lin_cert using reduction2504.terms
theorem substitutionProof2504 : IsMapEvaluation generatorImages reduction2504.relations [8,8,8,111] reduction2504.output := by lin_cert using reduction2504.terms
def map_35_135 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2727 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2727 : InImage map_35_135 image2727 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2727 : Bundle := named_bundle% "RealMapCertificates/relations/basis2727.json"
theorem reductionProof2727 : EqualModuloRelations reduction2727.relations reduction2727.input reduction2727.output := by lin_cert using reduction2727.terms
theorem substitutionProof2727 : IsMapEvaluation generatorImages reduction2727.relations [8,8,8,117] reduction2727.output := by lin_cert using reduction2727.terms
def map_35_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2812 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2812 : InImage map_35_136 image2812 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2812 : Bundle := named_bundle% "RealMapCertificates/relations/basis2812.json"
theorem reductionProof2812 : EqualModuloRelations reduction2812.relations reduction2812.input reduction2812.output := by lin_cert using reduction2812.terms
theorem substitutionProof2812 : IsMapEvaluation generatorImages reduction2812.relations [0,402] reduction2812.output := by lin_cert using reduction2812.terms
def map_35_137 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2879 : InImage map_35_137 image2879 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2879 : Bundle := named_bundle% "RealMapCertificates/relations/basis2879.json"
theorem reductionProof2879 : EqualModuloRelations reduction2879.relations reduction2879.input reduction2879.output := by lin_cert using reduction2879.terms
theorem substitutionProof2879 : IsMapEvaluation generatorImages reduction2879.relations [1,402] reduction2879.output := by lin_cert using reduction2879.terms
def image2880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2880 : InImage map_35_137 image2880 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2880 : Bundle := named_bundle% "RealMapCertificates/relations/basis2880.json"
theorem reductionProof2880 : EqualModuloRelations reduction2880.relations reduction2880.input reduction2880.output := by lin_cert using reduction2880.terms
theorem substitutionProof2880 : IsMapEvaluation generatorImages reduction2880.relations [0,0,403] reduction2880.output := by lin_cert using reduction2880.terms
def map_35_138 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2954 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2954 : InImage map_35_138 image2954 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2954 : Bundle := named_bundle% "RealMapCertificates/relations/basis2954.json"
theorem reductionProof2954 : EqualModuloRelations reduction2954.relations reduction2954.input reduction2954.output := by lin_cert using reduction2954.terms
theorem substitutionProof2954 : IsMapEvaluation generatorImages reduction2954.relations [8,8,8,16,50] reduction2954.output := by lin_cert using reduction2954.terms
def map_35_139 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3050 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3050 : InImage map_35_139 image3050 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3050 : Bundle := named_bundle% "RealMapCertificates/relations/basis3050.json"
theorem reductionProof3050 : EqualModuloRelations reduction3050.relations reduction3050.input reduction3050.output := by lin_cert using reduction3050.terms
theorem substitutionProof3050 : IsMapEvaluation generatorImages reduction3050.relations [0,432] reduction3050.output := by lin_cert using reduction3050.terms
def map_35_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3117 : InImage map_35_140 image3117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3117 : Bundle := named_bundle% "RealMapCertificates/relations/basis3117.json"
theorem reductionProof3117 : EqualModuloRelations reduction3117.relations reduction3117.input reduction3117.output := by lin_cert using reduction3117.terms
theorem substitutionProof3117 : IsMapEvaluation generatorImages reduction3117.relations [0,0,433] reduction3117.output := by lin_cert using reduction3117.terms
def map_35_141 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3208 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3208 : InImage map_35_141 image3208 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3208 : Bundle := named_bundle% "RealMapCertificates/relations/basis3208.json"
theorem reductionProof3208 : EqualModuloRelations reduction3208.relations reduction3208.input reduction3208.output := by lin_cert using reduction3208.terms
theorem substitutionProof3208 : IsMapEvaluation generatorImages reduction3208.relations [8,8,8,8,78] reduction3208.output := by lin_cert using reduction3208.terms
def map_35_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3293 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3293 : InImage map_35_142 image3293 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3293 : Bundle := named_bundle% "RealMapCertificates/relations/basis3293.json"
theorem reductionProof3293 : EqualModuloRelations reduction3293.relations reduction3293.input reduction3293.output := by lin_cert using reduction3293.terms
theorem substitutionProof3293 : IsMapEvaluation generatorImages reduction3293.relations [0,16,224] reduction3293.output := by lin_cert using reduction3293.terms
def map_35_143 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3369 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3369 : InImage map_35_143 image3369 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3369 : Bundle := named_bundle% "RealMapCertificates/relations/basis3369.json"
theorem reductionProof3369 : EqualModuloRelations reduction3369.relations reduction3369.input reduction3369.output := by lin_cert using reduction3369.terms
theorem substitutionProof3369 : IsMapEvaluation generatorImages reduction3369.relations [0,0,16,225] reduction3369.output := by lin_cert using reduction3369.terms
def image3370 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3370 : InImage map_35_143 image3370 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3370 : Bundle := named_bundle% "RealMapCertificates/relations/basis3370.json"
theorem reductionProof3370 : EqualModuloRelations reduction3370.relations reduction3370.input reduction3370.output := by lin_cert using reduction3370.terms
theorem substitutionProof3370 : IsMapEvaluation generatorImages reduction3370.relations [0,0,0,452] reduction3370.output := by lin_cert using reduction3370.terms
def map_35_144 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3449 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3449 : InImage map_35_144 image3449 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3449 : Bundle := named_bundle% "RealMapCertificates/relations/basis3449.json"
theorem reductionProof3449 : EqualModuloRelations reduction3449.relations reduction3449.input reduction3449.output := by lin_cert using reduction3449.terms
theorem substitutionProof3449 : IsMapEvaluation generatorImages reduction3449.relations [8,8,8,8,8,50] reduction3449.output := by lin_cert using reduction3449.terms
def image3450 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3450 : InImage map_35_144 image3450 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3450 : Bundle := named_bundle% "RealMapCertificates/relations/basis3450.json"
theorem reductionProof3450 : EqualModuloRelations reduction3450.relations reduction3450.input reduction3450.output := by lin_cert using reduction3450.terms
theorem substitutionProof3450 : IsMapEvaluation generatorImages reduction3450.relations [0,0,0,17,225] reduction3450.output := by lin_cert using reduction3450.terms
def map_35_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3542 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3542 : InImage map_35_145 image3542 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3542 : Bundle := named_bundle% "RealMapCertificates/relations/basis3542.json"
theorem reductionProof3542 : EqualModuloRelations reduction3542.relations reduction3542.input reduction3542.output := by lin_cert using reduction3542.terms
theorem substitutionProof3542 : IsMapEvaluation generatorImages reduction3542.relations [0,8,297] reduction3542.output := by lin_cert using reduction3542.terms
def map_35_146 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image3609 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3609 : InImage map_35_146 image3609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3609 : Bundle := named_bundle% "RealMapCertificates/relations/basis3609.json"
theorem reductionProof3609 : EqualModuloRelations reduction3609.relations reduction3609.input reduction3609.output := by lin_cert using reduction3609.terms
theorem substitutionProof3609 : IsMapEvaluation generatorImages reduction3609.relations [0,0,8,298] reduction3609.output := by lin_cert using reduction3609.terms
def image3610 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3610 : InImage map_35_146 image3610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3610 : Bundle := named_bundle% "RealMapCertificates/relations/basis3610.json"
theorem reductionProof3610 : EqualModuloRelations reduction3610.relations reduction3610.input reduction3610.output := by lin_cert using reduction3610.terms
theorem substitutionProof3610 : IsMapEvaluation generatorImages reduction3610.relations [0,0,0,488] reduction3610.output := by lin_cert using reduction3610.terms
def map_35_147 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image3708 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3708 : InImage map_35_147 image3708 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3708 : Bundle := named_bundle% "RealMapCertificates/relations/basis3708.json"
theorem reductionProof3708 : EqualModuloRelations reduction3708.relations reduction3708.input reduction3708.output := by lin_cert using reduction3708.terms
theorem substitutionProof3708 : IsMapEvaluation generatorImages reduction3708.relations [8,8,8,8,8,56] reduction3708.output := by lin_cert using reduction3708.terms
def map_35_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3800 : InImage map_35_148 image3800 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3800 : Bundle := named_bundle% "RealMapCertificates/relations/basis3800.json"
theorem reductionProof3800 : EqualModuloRelations reduction3800.relations reduction3800.input reduction3800.output := by lin_cert using reduction3800.terms
theorem substitutionProof3800 : IsMapEvaluation generatorImages reduction3800.relations [0,8,8,224] reduction3800.output := by lin_cert using reduction3800.terms
def map_35_149 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3878 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3878 : InImage map_35_149 image3878 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3878 : Bundle := named_bundle% "RealMapCertificates/relations/basis3878.json"
theorem reductionProof3878 : EqualModuloRelations reduction3878.relations reduction3878.input reduction3878.output := by lin_cert using reduction3878.terms
theorem substitutionProof3878 : IsMapEvaluation generatorImages reduction3878.relations [0,0,8,8,225] reduction3878.output := by lin_cert using reduction3878.terms
def map_35_150 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image3964 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3964 : InImage map_35_150 image3964 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3964 : Bundle := named_bundle% "RealMapCertificates/relations/basis3964.json"
theorem reductionProof3964 : EqualModuloRelations reduction3964.relations reduction3964.input reduction3964.output := by lin_cert using reduction3964.terms
theorem substitutionProof3964 : IsMapEvaluation generatorImages reduction3964.relations [8,8,8,8,8,16,17] reduction3964.output := by lin_cert using reduction3964.terms
def image3965 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation3965 : InImage map_35_150 image3965 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3965 : Bundle := named_bundle% "RealMapCertificates/relations/basis3965.json"
theorem reductionProof3965 : EqualModuloRelations reduction3965.relations reduction3965.input reduction3965.output := by lin_cert using reduction3965.terms
theorem substitutionProof3965 : IsMapEvaluation generatorImages reduction3965.relations [0,0,0,0,17,244] reduction3965.output := by lin_cert using reduction3965.terms
def map_35_151 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4081 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4081 : InImage map_35_151 image4081 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4081 : Bundle := named_bundle% "RealMapCertificates/relations/basis4081.json"
theorem reductionProof4081 : EqualModuloRelations reduction4081.relations reduction4081.input reduction4081.output := by lin_cert using reduction4081.terms
theorem substitutionProof4081 : IsMapEvaluation generatorImages reduction4081.relations [0,8,8,237] reduction4081.output := by lin_cert using reduction4081.terms
def image4082 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4082 : InImage map_35_151 image4082 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4082 : Bundle := named_bundle% "RealMapCertificates/relations/basis4082.json"
theorem reductionProof4082 : EqualModuloRelations reduction4082.relations reduction4082.input reduction4082.output := by lin_cert using reduction4082.terms
theorem substitutionProof4082 : IsMapEvaluation generatorImages reduction4082.relations [0,0,0,0,17,17,138] reduction4082.output := by lin_cert using reduction4082.terms
def map_35_152 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4151 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4151 : InImage map_35_152 image4151 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4151 : Bundle := named_bundle% "RealMapCertificates/relations/basis4151.json"
theorem reductionProof4151 : EqualModuloRelations reduction4151.relations reduction4151.input reduction4151.output := by lin_cert using reduction4151.terms
theorem substitutionProof4151 : IsMapEvaluation generatorImages reduction4151.relations [0,0,8,8,238] reduction4151.output := by lin_cert using reduction4151.terms
def map_35_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4247 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4247 : InImage map_35_153 image4247 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4247 : Bundle := named_bundle% "RealMapCertificates/relations/basis4247.json"
theorem reductionProof4247 : EqualModuloRelations reduction4247.relations reduction4247.input reduction4247.output := by lin_cert using reduction4247.terms
theorem substitutionProof4247 : IsMapEvaluation generatorImages reduction4247.relations [8,8,8,8,8,8,40] reduction4247.output := by lin_cert using reduction4247.terms
def map_35_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4330 : InImage map_35_154 image4330 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4330 : Bundle := named_bundle% "RealMapCertificates/relations/basis4330.json"
theorem reductionProof4330 : EqualModuloRelations reduction4330.relations reduction4330.input reduction4330.output := by lin_cert using reduction4330.terms
theorem substitutionProof4330 : IsMapEvaluation generatorImages reduction4330.relations [0,8,8,16,137] reduction4330.output := by lin_cert using reduction4330.terms
def map_35_155 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4404 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation4404 : InImage map_35_155 image4404 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4404 : Bundle := named_bundle% "RealMapCertificates/relations/basis4404.json"
theorem reductionProof4404 : EqualModuloRelations reduction4404.relations reduction4404.input reduction4404.output := by lin_cert using reduction4404.terms
theorem substitutionProof4404 : IsMapEvaluation generatorImages reduction4404.relations [0,0,8,8,16,138] reduction4404.output := by lin_cert using reduction4404.terms
def map_35_156 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4491 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4491 : InImage map_35_156 image4491 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4491 : Bundle := named_bundle% "RealMapCertificates/relations/basis4491.json"
theorem reductionProof4491 : EqualModuloRelations reduction4491.relations reduction4491.input reduction4491.output := by lin_cert using reduction4491.terms
theorem substitutionProof4491 : IsMapEvaluation generatorImages reduction4491.relations [8,8,8,8,8,8,8,17] reduction4491.output := by lin_cert using reduction4491.terms
def image4492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4492 : InImage map_35_156 image4492 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4492 : Bundle := named_bundle% "RealMapCertificates/relations/basis4492.json"
theorem reductionProof4492 : EqualModuloRelations reduction4492.relations reduction4492.input reduction4492.output := by lin_cert using reduction4492.terms
theorem substitutionProof4492 : IsMapEvaluation generatorImages reduction4492.relations [0,596] reduction4492.output := by lin_cert using reduction4492.terms
def map_35_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4596 : InImage map_35_157 image4596 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4596 : Bundle := named_bundle% "RealMapCertificates/relations/basis4596.json"
theorem reductionProof4596 : EqualModuloRelations reduction4596.relations reduction4596.input reduction4596.output := by lin_cert using reduction4596.terms
theorem substitutionProof4596 : IsMapEvaluation generatorImages reduction4596.relations [0,0,0,0,0,0,0,64,137] reduction4596.output := by lin_cert using reduction4596.terms
def map_35_158 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4669 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4669 : InImage map_35_158 image4669 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4669 : Bundle := named_bundle% "RealMapCertificates/relations/basis4669.json"
theorem reductionProof4669 : EqualModuloRelations reduction4669.relations reduction4669.input reduction4669.output := by lin_cert using reduction4669.terms
theorem substitutionProof4669 : IsMapEvaluation generatorImages reduction4669.relations [0,0,0,0,0,0,0,0,64,138] reduction4669.output := by lin_cert using reduction4669.terms
def map_35_159 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image4761 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation4761 : InImage map_35_159 image4761 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4761 : Bundle := named_bundle% "RealMapCertificates/relations/basis4761.json"
theorem reductionProof4761 : EqualModuloRelations reduction4761.relations reduction4761.input reduction4761.output := by lin_cert using reduction4761.terms
theorem substitutionProof4761 : IsMapEvaluation generatorImages reduction4761.relations [42,224] reduction4761.output := by lin_cert using reduction4761.terms
def image4762 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4762 : InImage map_35_159 image4762 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4762 : Bundle := named_bundle% "RealMapCertificates/relations/basis4762.json"
theorem reductionProof4762 : EqualModuloRelations reduction4762.relations reduction4762.input reduction4762.output := by lin_cert using reduction4762.terms
theorem substitutionProof4762 : IsMapEvaluation generatorImages reduction4762.relations [8,8,8,8,8,8,8,20] reduction4762.output := by lin_cert using reduction4762.terms
def map_35_161 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4931 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4931 : InImage map_35_161 image4931 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4931 : Bundle := named_bundle% "RealMapCertificates/relations/basis4931.json"
theorem reductionProof4931 : EqualModuloRelations reduction4931.relations reduction4931.input reduction4931.output := by lin_cert using reduction4931.terms
theorem substitutionProof4931 : IsMapEvaluation generatorImages reduction4931.relations [17,343] reduction4931.output := by lin_cert using reduction4931.terms
def image4932 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4932 : InImage map_35_161 image4932 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4932 : Bundle := named_bundle% "RealMapCertificates/relations/basis4932.json"
theorem reductionProof4932 : EqualModuloRelations reduction4932.relations reduction4932.input reduction4932.output := by lin_cert using reduction4932.terms
theorem substitutionProof4932 : IsMapEvaluation generatorImages reduction4932.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction4932.output := by lin_cert using reduction4932.terms
def map_35_162 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5032 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5032 : InImage map_35_162 image5032 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5032 : Bundle := named_bundle% "RealMapCertificates/relations/basis5032.json"
theorem reductionProof5032 : EqualModuloRelations reduction5032.relations reduction5032.input reduction5032.output := by lin_cert using reduction5032.terms
theorem substitutionProof5032 : IsMapEvaluation generatorImages reduction5032.relations [17,17,185] reduction5032.output := by lin_cert using reduction5032.terms
def image5033 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5033 : InImage map_35_162 image5033 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5033 : Bundle := named_bundle% "RealMapCertificates/relations/basis5033.json"
theorem reductionProof5033 : EqualModuloRelations reduction5033.relations reduction5033.input reduction5033.output := by lin_cert using reduction5033.terms
theorem substitutionProof5033 : IsMapEvaluation generatorImages reduction5033.relations [8,8,8,8,8,8,8,22] reduction5033.output := by lin_cert using reduction5033.terms
def image5034 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5034 : InImage map_35_162 image5034 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5034 : Bundle := named_bundle% "RealMapCertificates/relations/basis5034.json"
theorem reductionProof5034 : EqualModuloRelations reduction5034.relations reduction5034.input reduction5034.output := by lin_cert using reduction5034.terms
theorem substitutionProof5034 : IsMapEvaluation generatorImages reduction5034.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5034.output := by lin_cert using reduction5034.terms
def map_35_164 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5222 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5222 : InImage map_35_164 image5222 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5222 : Bundle := named_bundle% "RealMapCertificates/relations/basis5222.json"
theorem reductionProof5222 : EqualModuloRelations reduction5222.relations reduction5222.input reduction5222.output := by lin_cert using reduction5222.terms
theorem substitutionProof5222 : IsMapEvaluation generatorImages reduction5222.relations [8,17,244] reduction5222.output := by lin_cert using reduction5222.terms
def map_35_165 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5337 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5337 : InImage map_35_165 image5337 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5337 : Bundle := named_bundle% "RealMapCertificates/relations/basis5337.json"
theorem reductionProof5337 : EqualModuloRelations reduction5337.relations reduction5337.input reduction5337.output := by lin_cert using reduction5337.terms
theorem substitutionProof5337 : IsMapEvaluation generatorImages reduction5337.relations [8,17,17,138] reduction5337.output := by lin_cert using reduction5337.terms
def image5338 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5338 : InImage map_35_165 image5338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5338 : Bundle := named_bundle% "RealMapCertificates/relations/basis5338.json"
theorem reductionProof5338 : EqualModuloRelations reduction5338.relations reduction5338.input reduction5338.output := by lin_cert using reduction5338.terms
theorem substitutionProof5338 : IsMapEvaluation generatorImages reduction5338.relations [8,8,8,8,8,8,8,29] reduction5338.output := by lin_cert using reduction5338.terms
def map_35_167 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image5548 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5548 : InImage map_35_167 image5548 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5548 : Bundle := named_bundle% "RealMapCertificates/relations/basis5548.json"
theorem reductionProof5548 : EqualModuloRelations reduction5548.relations reduction5548.input reduction5548.output := by lin_cert using reduction5548.terms
theorem substitutionProof5548 : IsMapEvaluation generatorImages reduction5548.relations [8,17,257] reduction5548.output := by lin_cert using reduction5548.terms
def map_35_168 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5655 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5655 : InImage map_35_168 image5655 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5655 : Bundle := named_bundle% "RealMapCertificates/relations/basis5655.json"
theorem reductionProof5655 : EqualModuloRelations reduction5655.relations reduction5655.input reduction5655.output := by lin_cert using reduction5655.terms
theorem substitutionProof5655 : IsMapEvaluation generatorImages reduction5655.relations [8,17,17,147] reduction5655.output := by lin_cert using reduction5655.terms
def image5656 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5656 : InImage map_35_168 image5656 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5656 : Bundle := named_bundle% "RealMapCertificates/relations/basis5656.json"
theorem reductionProof5656 : EqualModuloRelations reduction5656.relations reduction5656.input reduction5656.output := by lin_cert using reduction5656.terms
theorem substitutionProof5656 : IsMapEvaluation generatorImages reduction5656.relations [8,8,8,8,8,8,8,32] reduction5656.output := by lin_cert using reduction5656.terms
def image5657 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5657 : InImage map_35_168 image5657 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5657 : Bundle := named_bundle% "RealMapCertificates/relations/basis5657.json"
theorem reductionProof5657 : EqualModuloRelations reduction5657.relations reduction5657.input reduction5657.output := by lin_cert using reduction5657.terms
theorem substitutionProof5657 : IsMapEvaluation generatorImages reduction5657.relations [0,725] reduction5657.output := by lin_cert using reduction5657.terms
def map_35_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5780 : InImage map_35_169 image5780 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5780 : Bundle := named_bundle% "RealMapCertificates/relations/basis5780.json"
theorem reductionProof5780 : EqualModuloRelations reduction5780.relations reduction5780.input reduction5780.output := by lin_cert using reduction5780.terms
theorem substitutionProof5780 : IsMapEvaluation generatorImages reduction5780.relations [752] reduction5780.output := by lin_cert using reduction5780.terms
def image5781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5781 : InImage map_35_169 image5781 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5781 : Bundle := named_bundle% "RealMapCertificates/relations/basis5781.json"
theorem reductionProof5781 : EqualModuloRelations reduction5781.relations reduction5781.input reduction5781.output := by lin_cert using reduction5781.terms
theorem substitutionProof5781 : IsMapEvaluation generatorImages reduction5781.relations [1,725] reduction5781.output := by lin_cert using reduction5781.terms
def map_35_170 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5875 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5875 : InImage map_35_170 image5875 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5875 : Bundle := named_bundle% "RealMapCertificates/relations/basis5875.json"
theorem reductionProof5875 : EqualModuloRelations reduction5875.relations reduction5875.input reduction5875.output := by lin_cert using reduction5875.terms
theorem substitutionProof5875 : IsMapEvaluation generatorImages reduction5875.relations [8,16,17,149] reduction5875.output := by lin_cert using reduction5875.terms
def map_35_171 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6003 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6003 : InImage map_35_171 image6003 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6003 : Bundle := named_bundle% "RealMapCertificates/relations/basis6003.json"
theorem reductionProof6003 : EqualModuloRelations reduction6003.relations reduction6003.input reduction6003.output := by lin_cert using reduction6003.terms
theorem substitutionProof6003 : IsMapEvaluation generatorImages reduction6003.relations [8,8,42,137] reduction6003.output := by lin_cert using reduction6003.terms
def image6004 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6004 : InImage map_35_171 image6004 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6004 : Bundle := named_bundle% "RealMapCertificates/relations/basis6004.json"
theorem reductionProof6004 : EqualModuloRelations reduction6004.relations reduction6004.input reduction6004.output := by lin_cert using reduction6004.terms
theorem substitutionProof6004 : IsMapEvaluation generatorImages reduction6004.relations [8,8,8,8,8,8,9,32] reduction6004.output := by lin_cert using reduction6004.terms
def image6005 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6005 : InImage map_35_171 image6005 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6005 : Bundle := named_bundle% "RealMapCertificates/relations/basis6005.json"
theorem reductionProof6005 : EqualModuloRelations reduction6005.relations reduction6005.input reduction6005.output := by lin_cert using reduction6005.terms
theorem substitutionProof6005 : IsMapEvaluation generatorImages reduction6005.relations [0,759] reduction6005.output := by lin_cert using reduction6005.terms
def map_35_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6121 : InImage map_35_172 image6121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6121 : Bundle := named_bundle% "RealMapCertificates/relations/basis6121.json"
theorem reductionProof6121 : EqualModuloRelations reduction6121.relations reduction6121.input reduction6121.output := by lin_cert using reduction6121.terms
theorem substitutionProof6121 : IsMapEvaluation generatorImages reduction6121.relations [0,778] reduction6121.output := by lin_cert using reduction6121.terms
def map_35_173 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6214 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6214 : InImage map_35_173 image6214 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6214 : Bundle := named_bundle% "RealMapCertificates/relations/basis6214.json"
theorem reductionProof6214 : EqualModuloRelations reduction6214.relations reduction6214.input reduction6214.output := by lin_cert using reduction6214.terms
theorem substitutionProof6214 : IsMapEvaluation generatorImages reduction6214.relations [8,8,17,206] reduction6214.output := by lin_cert using reduction6214.terms
def map_35_174 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image6326 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6326 : InImage map_35_174 image6326 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction6326 : Bundle := named_bundle% "RealMapCertificates/relations/basis6326.json"
theorem reductionProof6326 : EqualModuloRelations reduction6326.relations reduction6326.input reduction6326.output := by lin_cert using reduction6326.terms
theorem substitutionProof6326 : IsMapEvaluation generatorImages reduction6326.relations [64,225] reduction6326.output := by lin_cert using reduction6326.terms
def image6327 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6327 : InImage map_35_174 image6327 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction6327 : Bundle := named_bundle% "RealMapCertificates/relations/basis6327.json"
theorem reductionProof6327 : EqualModuloRelations reduction6327.relations reduction6327.input reduction6327.output := by lin_cert using reduction6327.terms
theorem substitutionProof6327 : IsMapEvaluation generatorImages reduction6327.relations [8,8,17,17,113] reduction6327.output := by lin_cert using reduction6327.terms
def image6328 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6328 : InImage map_35_174 image6328 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction6328 : Bundle := named_bundle% "RealMapCertificates/relations/basis6328.json"
theorem reductionProof6328 : EqualModuloRelations reduction6328.relations reduction6328.input reduction6328.output := by lin_cert using reduction6328.terms
theorem substitutionProof6328 : IsMapEvaluation generatorImages reduction6328.relations [8,8,8,8,8,8,13,32] reduction6328.output := by lin_cert using reduction6328.terms
def image6329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6329 : InImage map_35_174 image6329 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction6329 : Bundle := named_bundle% "RealMapCertificates/relations/basis6329.json"
theorem reductionProof6329 : EqualModuloRelations reduction6329.relations reduction6329.input reduction6329.output := by lin_cert using reduction6329.terms
theorem substitutionProof6329 : IsMapEvaluation generatorImages reduction6329.relations [0,16,491] reduction6329.output := by lin_cert using reduction6329.terms
def map_35_175 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6460 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6460 : InImage map_35_175 image6460 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6460 : Bundle := named_bundle% "RealMapCertificates/relations/basis6460.json"
theorem reductionProof6460 : EqualModuloRelations reduction6460.relations reduction6460.input reduction6460.output := by lin_cert using reduction6460.terms
theorem substitutionProof6460 : IsMapEvaluation generatorImages reduction6460.relations [0,138,138] reduction6460.output := by lin_cert using reduction6460.terms
def image6461 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6461 : InImage map_35_175 image6461 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6461 : Bundle := named_bundle% "RealMapCertificates/relations/basis6461.json"
theorem reductionProof6461 : EqualModuloRelations reduction6461.relations reduction6461.input reduction6461.output := by lin_cert using reduction6461.terms
theorem substitutionProof6461 : IsMapEvaluation generatorImages reduction6461.relations [0,0,17,491] reduction6461.output := by lin_cert using reduction6461.terms
def map_35_176 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6550 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6550 : InImage map_35_176 image6550 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6550 : Bundle := named_bundle% "RealMapCertificates/relations/basis6550.json"
theorem reductionProof6550 : EqualModuloRelations reduction6550.relations reduction6550.input reduction6550.output := by lin_cert using reduction6550.terms
theorem substitutionProof6550 : IsMapEvaluation generatorImages reduction6550.relations [8,8,8,17,149] reduction6550.output := by lin_cert using reduction6550.terms
def image6551 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6551 : InImage map_35_176 image6551 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6551 : Bundle := named_bundle% "RealMapCertificates/relations/basis6551.json"
theorem reductionProof6551 : EqualModuloRelations reduction6551.relations reduction6551.input reduction6551.output := by lin_cert using reduction6551.terms
theorem substitutionProof6551 : IsMapEvaluation generatorImages reduction6551.relations [0,0,809] reduction6551.output := by lin_cert using reduction6551.terms
def image6552 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6552 : InImage map_35_176 image6552 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6552 : Bundle := named_bundle% "RealMapCertificates/relations/basis6552.json"
theorem reductionProof6552 : EqualModuloRelations reduction6552.relations reduction6552.input reduction6552.output := by lin_cert using reduction6552.terms
theorem substitutionProof6552 : IsMapEvaluation generatorImages reduction6552.relations [0,0,807] reduction6552.output := by lin_cert using reduction6552.terms
end RealMapCertificates
