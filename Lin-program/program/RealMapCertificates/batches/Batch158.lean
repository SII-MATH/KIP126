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
  | 23 => [[7,7]]
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 185 => [[0,4,4,8,12]]
  | 186 => []
  | 188 => []
  | 232 => [[5,6,9,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 255 => []
  | 260 => []
  | 274 => []
  | 278 => []
  | 299 => []
  | 327 => []
  | 380 => []
  | 420 => []
  | 491 => []
  | 516 => []
  | 549 => []
  | 574 => []
  | 602 => []
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 642 => [[7,10,12,12]]
  | 653 => []
  | 689 => []
  | 795 => []
  | 796 => []
  | 831 => []
  | 862 => []
  | 897 => []
  | 898 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 962 => [[4,5,7,10,12,12]]
  | 972 => []
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1167 => [[4,4,5,7,10,12,12]]
  | 1315 => []
  | 1316 => []
  | 1317 => [[6,8,12,12,12]]
  | 1364 => []
  | _ => []
def map_35_177 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image6686 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6686 : InImage map_35_177 image6686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6686 : Bundle := named_bundle% "RealMapCertificates/relations/basis6686.json"
theorem reductionProof6686 : EqualModuloRelations reduction6686.relations reduction6686.input reduction6686.output := by lin_cert using reduction6686.terms
theorem substitutionProof6686 : IsMapEvaluation generatorImages reduction6686.relations [64,238] reduction6686.output := by lin_cert using reduction6686.terms
def image6687 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6687 : InImage map_35_177 image6687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6687 : Bundle := named_bundle% "RealMapCertificates/relations/basis6687.json"
theorem reductionProof6687 : EqualModuloRelations reduction6687.relations reduction6687.input reduction6687.output := by lin_cert using reduction6687.terms
theorem substitutionProof6687 : IsMapEvaluation generatorImages reduction6687.relations [8,8,8,17,154] reduction6687.output := by lin_cert using reduction6687.terms
def image6688 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6688 : InImage map_35_177 image6688 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6688 : Bundle := named_bundle% "RealMapCertificates/relations/basis6688.json"
theorem reductionProof6688 : EqualModuloRelations reduction6688.relations reduction6688.input reduction6688.output := by lin_cert using reduction6688.terms
theorem substitutionProof6688 : IsMapEvaluation generatorImages reduction6688.relations [8,8,8,8,8,9,13,32] reduction6688.output := by lin_cert using reduction6688.terms
def image6689 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6689 : InImage map_35_177 image6689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6689 : Bundle := named_bundle% "RealMapCertificates/relations/basis6689.json"
theorem reductionProof6689 : EqualModuloRelations reduction6689.relations reduction6689.input reduction6689.output := by lin_cert using reduction6689.terms
theorem substitutionProof6689 : IsMapEvaluation generatorImages reduction6689.relations [0,8,623] reduction6689.output := by lin_cert using reduction6689.terms
def image6690 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6690 : InImage map_35_177 image6690 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6690 : Bundle := named_bundle% "RealMapCertificates/relations/basis6690.json"
theorem reductionProof6690 : EqualModuloRelations reduction6690.relations reduction6690.input reduction6690.output := by lin_cert using reduction6690.terms
theorem substitutionProof6690 : IsMapEvaluation generatorImages reduction6690.relations [0,0,0,0,795] reduction6690.output := by lin_cert using reduction6690.terms
def map_35_178 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image6805 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6805 : InImage map_35_178 image6805 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6805 : Bundle := named_bundle% "RealMapCertificates/relations/basis6805.json"
theorem reductionProof6805 : EqualModuloRelations reduction6805.relations reduction6805.input reduction6805.output := by lin_cert using reduction6805.terms
theorem substitutionProof6805 : IsMapEvaluation generatorImages reduction6805.relations [0,8,637] reduction6805.output := by lin_cert using reduction6805.terms
def image6806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6806 : InImage map_35_178 image6806 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6806 : Bundle := named_bundle% "RealMapCertificates/relations/basis6806.json"
theorem reductionProof6806 : EqualModuloRelations reduction6806.relations reduction6806.input reduction6806.output := by lin_cert using reduction6806.terms
theorem substitutionProof6806 : IsMapEvaluation generatorImages reduction6806.relations [0,0,17,516] reduction6806.output := by lin_cert using reduction6806.terms
def map_35_179 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image6912 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6912 : InImage map_35_179 image6912 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6912 : Bundle := named_bundle% "RealMapCertificates/relations/basis6912.json"
theorem reductionProof6912 : EqualModuloRelations reduction6912.relations reduction6912.input reduction6912.output := by lin_cert using reduction6912.terms
theorem substitutionProof6912 : IsMapEvaluation generatorImages reduction6912.relations [8,8,8,17,160] reduction6912.output := by lin_cert using reduction6912.terms
def map_35_180 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image7047 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7047 : InImage map_35_180 image7047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7047 : Bundle := named_bundle% "RealMapCertificates/relations/basis7047.json"
theorem reductionProof7047 : EqualModuloRelations reduction7047.relations reduction7047.input reduction7047.output := by lin_cert using reduction7047.terms
theorem substitutionProof7047 : IsMapEvaluation generatorImages reduction7047.relations [16,64,138] reduction7047.output := by lin_cert using reduction7047.terms
def image7048 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7048 : InImage map_35_180 image7048 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7048 : Bundle := named_bundle% "RealMapCertificates/relations/basis7048.json"
theorem reductionProof7048 : EqualModuloRelations reduction7048.relations reduction7048.input reduction7048.output := by lin_cert using reduction7048.terms
theorem substitutionProof7048 : IsMapEvaluation generatorImages reduction7048.relations [8,8,8,17,162] reduction7048.output := by lin_cert using reduction7048.terms
def image7049 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7049 : InImage map_35_180 image7049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7049 : Bundle := named_bundle% "RealMapCertificates/relations/basis7049.json"
theorem reductionProof7049 : EqualModuloRelations reduction7049.relations reduction7049.input reduction7049.output := by lin_cert using reduction7049.terms
theorem substitutionProof7049 : IsMapEvaluation generatorImages reduction7049.relations [8,8,8,8,8,13,13,32] reduction7049.output := by lin_cert using reduction7049.terms
def image7050 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7050 : InImage map_35_180 image7050 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7050 : Bundle := named_bundle% "RealMapCertificates/relations/basis7050.json"
theorem reductionProof7050 : EqualModuloRelations reduction7050.relations reduction7050.input reduction7050.output := by lin_cert using reduction7050.terms
theorem substitutionProof7050 : IsMapEvaluation generatorImages reduction7050.relations [0,64,244] reduction7050.output := by lin_cert using reduction7050.terms
def image7051 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7051 : InImage map_35_180 image7051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7051 : Bundle := named_bundle% "RealMapCertificates/relations/basis7051.json"
theorem reductionProof7051 : EqualModuloRelations reduction7051.relations reduction7051.input reduction7051.output := by lin_cert using reduction7051.terms
theorem substitutionProof7051 : IsMapEvaluation generatorImages reduction7051.relations [0,8,8,491] reduction7051.output := by lin_cert using reduction7051.terms
def map_35_181 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image7178 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7178 : InImage map_35_181 image7178 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7178 : Bundle := named_bundle% "RealMapCertificates/relations/basis7178.json"
theorem reductionProof7178 : EqualModuloRelations reduction7178.relations reduction7178.input reduction7178.output := by lin_cert using reduction7178.terms
theorem substitutionProof7178 : IsMapEvaluation generatorImages reduction7178.relations [1,64,244] reduction7178.output := by lin_cert using reduction7178.terms
def image7179 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7179 : InImage map_35_181 image7179 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7179 : Bundle := named_bundle% "RealMapCertificates/relations/basis7179.json"
theorem reductionProof7179 : EqualModuloRelations reduction7179.relations reduction7179.input reduction7179.output := by lin_cert using reduction7179.terms
theorem substitutionProof7179 : IsMapEvaluation generatorImages reduction7179.relations [0,0,138,149] reduction7179.output := by lin_cert using reduction7179.terms
def image7180 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7180 : InImage map_35_181 image7180 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7180 : Bundle := named_bundle% "RealMapCertificates/relations/basis7180.json"
theorem reductionProof7180 : EqualModuloRelations reduction7180.relations reduction7180.input reduction7180.output := by lin_cert using reduction7180.terms
theorem substitutionProof7180 : IsMapEvaluation generatorImages reduction7180.relations [0,0,16,17,260] reduction7180.output := by lin_cert using reduction7180.terms
def map_35_182 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7269 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7269 : InImage map_35_182 image7269 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7269 : Bundle := named_bundle% "RealMapCertificates/relations/basis7269.json"
theorem reductionProof7269 : EqualModuloRelations reduction7269.relations reduction7269.input reduction7269.output := by lin_cert using reduction7269.terms
theorem substitutionProof7269 : IsMapEvaluation generatorImages reduction7269.relations [8,8,8,16,167] reduction7269.output := by lin_cert using reduction7269.terms
def image7270 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7270 : InImage map_35_182 image7270 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7270 : Bundle := named_bundle% "RealMapCertificates/relations/basis7270.json"
theorem reductionProof7270 : EqualModuloRelations reduction7270.relations reduction7270.input reduction7270.output := by lin_cert using reduction7270.terms
theorem substitutionProof7270 : IsMapEvaluation generatorImages reduction7270.relations [0,0,0,17,17,260] reduction7270.output := by lin_cert using reduction7270.terms
def map_35_183 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image7416 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7416 : InImage map_35_183 image7416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction7416 : Bundle := named_bundle% "RealMapCertificates/relations/basis7416.json"
theorem reductionProof7416 : EqualModuloRelations reduction7416.relations reduction7416.input reduction7416.output := by lin_cert using reduction7416.terms
theorem substitutionProof7416 : IsMapEvaluation generatorImages reduction7416.relations [8,64,185] reduction7416.output := by lin_cert using reduction7416.terms
def image7417 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7417 : InImage map_35_183 image7417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction7417 : Bundle := named_bundle% "RealMapCertificates/relations/basis7417.json"
theorem reductionProof7417 : EqualModuloRelations reduction7417.relations reduction7417.input reduction7417.output := by lin_cert using reduction7417.terms
theorem substitutionProof7417 : IsMapEvaluation generatorImages reduction7417.relations [8,8,8,8,42,64] reduction7417.output := by lin_cert using reduction7417.terms
def image7418 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7418 : InImage map_35_183 image7418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction7418 : Bundle := named_bundle% "RealMapCertificates/relations/basis7418.json"
theorem reductionProof7418 : EqualModuloRelations reduction7418.relations reduction7418.input reduction7418.output := by lin_cert using reduction7418.terms
theorem substitutionProof7418 : IsMapEvaluation generatorImages reduction7418.relations [8,8,8,8,9,13,13,32] reduction7418.output := by lin_cert using reduction7418.terms
def image7419 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7419 : InImage map_35_183 image7419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction7419 : Bundle := named_bundle% "RealMapCertificates/relations/basis7419.json"
theorem reductionProof7419 : EqualModuloRelations reduction7419.relations reduction7419.input reduction7419.output := by lin_cert using reduction7419.terms
theorem substitutionProof7419 : IsMapEvaluation generatorImages reduction7419.relations [0,8,8,516] reduction7419.output := by lin_cert using reduction7419.terms
def image7420 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7420 : InImage map_35_183 image7420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction7420 : Bundle := named_bundle% "RealMapCertificates/relations/basis7420.json"
theorem reductionProof7420 : EqualModuloRelations reduction7420.relations reduction7420.input reduction7420.output := by lin_cert using reduction7420.terms
theorem substitutionProof7420 : IsMapEvaluation generatorImages reduction7420.relations [0,0,0,0,64,246] reduction7420.output := by lin_cert using reduction7420.terms
def image7421 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7421 : InImage map_35_183 image7421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction7421 : Bundle := named_bundle% "RealMapCertificates/relations/basis7421.json"
theorem reductionProof7421 : EqualModuloRelations reduction7421.relations reduction7421.input reduction7421.output := by lin_cert using reduction7421.terms
theorem substitutionProof7421 : IsMapEvaluation generatorImages reduction7421.relations [0,0,0,0,59,260] reduction7421.output := by lin_cert using reduction7421.terms
def map_35_184 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7533 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7533 : InImage map_35_184 image7533 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7533 : Bundle := named_bundle% "RealMapCertificates/relations/basis7533.json"
theorem reductionProof7533 : EqualModuloRelations reduction7533.relations reduction7533.input reduction7533.output := by lin_cert using reduction7533.terms
theorem substitutionProof7533 : IsMapEvaluation generatorImages reduction7533.relations [0,0,8,17,380] reduction7533.output := by lin_cert using reduction7533.terms
def image7534 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7534 : InImage map_35_184 image7534 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7534 : Bundle := named_bundle% "RealMapCertificates/relations/basis7534.json"
theorem reductionProof7534 : EqualModuloRelations reduction7534.relations reduction7534.input reduction7534.output := by lin_cert using reduction7534.terms
theorem substitutionProof7534 : IsMapEvaluation generatorImages reduction7534.relations [0,0,0,0,0,0,862] reduction7534.output := by lin_cert using reduction7534.terms
def map_35_185 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7635 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7635 : InImage map_35_185 image7635 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7635 : Bundle := named_bundle% "RealMapCertificates/relations/basis7635.json"
theorem reductionProof7635 : EqualModuloRelations reduction7635.relations reduction7635.input reduction7635.output := by lin_cert using reduction7635.terms
theorem substitutionProof7635 : IsMapEvaluation generatorImages reduction7635.relations [939] reduction7635.output := by lin_cert using reduction7635.terms
def image7636 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7636 : InImage map_35_185 image7636 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7636 : Bundle := named_bundle% "RealMapCertificates/relations/basis7636.json"
theorem reductionProof7636 : EqualModuloRelations reduction7636.relations reduction7636.input reduction7636.output := by lin_cert using reduction7636.terms
theorem substitutionProof7636 : IsMapEvaluation generatorImages reduction7636.relations [8,8,8,8,232] reduction7636.output := by lin_cert using reduction7636.terms
def map_35_186 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image7772 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7772 : InImage map_35_186 image7772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7772 : Bundle := named_bundle% "RealMapCertificates/relations/basis7772.json"
theorem reductionProof7772 : EqualModuloRelations reduction7772.relations reduction7772.input reduction7772.output := by lin_cert using reduction7772.terms
theorem substitutionProof7772 : IsMapEvaluation generatorImages reduction7772.relations [8,8,64,138] reduction7772.output := by lin_cert using reduction7772.terms
def image7773 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7773 : InImage map_35_186 image7773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7773 : Bundle := named_bundle% "RealMapCertificates/relations/basis7773.json"
theorem reductionProof7773 : EqualModuloRelations reduction7773.relations reduction7773.input reduction7773.output := by lin_cert using reduction7773.terms
theorem substitutionProof7773 : IsMapEvaluation generatorImages reduction7773.relations [8,8,8,8,23,113] reduction7773.output := by lin_cert using reduction7773.terms
def image7774 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7774 : InImage map_35_186 image7774 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7774 : Bundle := named_bundle% "RealMapCertificates/relations/basis7774.json"
theorem reductionProof7774 : EqualModuloRelations reduction7774.relations reduction7774.input reduction7774.output := by lin_cert using reduction7774.terms
theorem substitutionProof7774 : IsMapEvaluation generatorImages reduction7774.relations [8,8,8,8,13,13,13,32] reduction7774.output := by lin_cert using reduction7774.terms
def image7775 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7775 : InImage map_35_186 image7775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7775 : Bundle := named_bundle% "RealMapCertificates/relations/basis7775.json"
theorem reductionProof7775 : EqualModuloRelations reduction7775.relations reduction7775.input reduction7775.output := by lin_cert using reduction7775.terms
theorem substitutionProof7775 : IsMapEvaluation generatorImages reduction7775.relations [0,8,8,16,260] reduction7775.output := by lin_cert using reduction7775.terms
def map_35_187 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7889 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7889 : InImage map_35_187 image7889 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7889 : Bundle := named_bundle% "RealMapCertificates/relations/basis7889.json"
theorem reductionProof7889 : EqualModuloRelations reduction7889.relations reduction7889.input reduction7889.output := by lin_cert using reduction7889.terms
theorem substitutionProof7889 : IsMapEvaluation generatorImages reduction7889.relations [0,0,8,8,17,260] reduction7889.output := by lin_cert using reduction7889.terms
def image7890 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7890 : InImage map_35_187 image7890 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7890 : Bundle := named_bundle% "RealMapCertificates/relations/basis7890.json"
theorem reductionProof7890 : EqualModuloRelations reduction7890.relations reduction7890.input reduction7890.output := by lin_cert using reduction7890.terms
theorem substitutionProof7890 : IsMapEvaluation generatorImages reduction7890.relations [0,0,0,149,149] reduction7890.output := by lin_cert using reduction7890.terms
def map_35_188 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7974 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7974 : InImage map_35_188 image7974 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7974 : Bundle := named_bundle% "RealMapCertificates/relations/basis7974.json"
theorem reductionProof7974 : EqualModuloRelations reduction7974.relations reduction7974.input reduction7974.output := by lin_cert using reduction7974.terms
theorem substitutionProof7974 : IsMapEvaluation generatorImages reduction7974.relations [972] reduction7974.output := by lin_cert using reduction7974.terms
def image7975 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7975 : InImage map_35_188 image7975 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7975 : Bundle := named_bundle% "RealMapCertificates/relations/basis7975.json"
theorem reductionProof7975 : EqualModuloRelations reduction7975.relations reduction7975.input reduction7975.output := by lin_cert using reduction7975.terms
theorem substitutionProof7975 : IsMapEvaluation generatorImages reduction7975.relations [8,8,8,8,8,167] reduction7975.output := by lin_cert using reduction7975.terms
def image7976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7976 : InImage map_35_188 image7976 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7976 : Bundle := named_bundle% "RealMapCertificates/relations/basis7976.json"
theorem reductionProof7976 : EqualModuloRelations reduction7976.relations reduction7976.input reduction7976.output := by lin_cert using reduction7976.terms
theorem substitutionProof7976 : IsMapEvaluation generatorImages reduction7976.relations [0,0,0,0,927] reduction7976.output := by lin_cert using reduction7976.terms
def map_35_189 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8129 : InImage map_35_189 image8129 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8129 : Bundle := named_bundle% "RealMapCertificates/relations/basis8129.json"
theorem reductionProof8129 : EqualModuloRelations reduction8129.relations reduction8129.input reduction8129.output := by lin_cert using reduction8129.terms
theorem substitutionProof8129 : IsMapEvaluation generatorImages reduction8129.relations [8,8,64,147] reduction8129.output := by lin_cert using reduction8129.terms
def image8130 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8130 : InImage map_35_189 image8130 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8130 : Bundle := named_bundle% "RealMapCertificates/relations/basis8130.json"
theorem reductionProof8130 : EqualModuloRelations reduction8130.relations reduction8130.input reduction8130.output := by lin_cert using reduction8130.terms
theorem substitutionProof8130 : IsMapEvaluation generatorImages reduction8130.relations [8,8,8,9,13,13,13,32] reduction8130.output := by lin_cert using reduction8130.terms
def image8131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8131 : InImage map_35_189 image8131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8131 : Bundle := named_bundle% "RealMapCertificates/relations/basis8131.json"
theorem reductionProof8131 : EqualModuloRelations reduction8131.relations reduction8131.input reduction8131.output := by lin_cert using reduction8131.terms
theorem substitutionProof8131 : IsMapEvaluation generatorImages reduction8131.relations [8,8,8,8,8,173] reduction8131.output := by lin_cert using reduction8131.terms
def image8132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8132 : InImage map_35_189 image8132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8132 : Bundle := named_bundle% "RealMapCertificates/relations/basis8132.json"
theorem reductionProof8132 : EqualModuloRelations reduction8132.relations reduction8132.input reduction8132.output := by lin_cert using reduction8132.terms
theorem substitutionProof8132 : IsMapEvaluation generatorImages reduction8132.relations [0,0,0,0,0,0,0,64,260] reduction8132.output := by lin_cert using reduction8132.terms
def map_35_190 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8242 : InImage map_35_190 image8242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8242 : Bundle := named_bundle% "RealMapCertificates/relations/basis8242.json"
theorem reductionProof8242 : EqualModuloRelations reduction8242.relations reduction8242.input reduction8242.output := by lin_cert using reduction8242.terms
theorem substitutionProof8242 : IsMapEvaluation generatorImages reduction8242.relations [0,0,0,0,0,0,64,274] reduction8242.output := by lin_cert using reduction8242.terms
def image8243 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8243 : InImage map_35_190 image8243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8243 : Bundle := named_bundle% "RealMapCertificates/relations/basis8243.json"
theorem reductionProof8243 : EqualModuloRelations reduction8243.relations reduction8243.input reduction8243.output := by lin_cert using reduction8243.terms
theorem substitutionProof8243 : IsMapEvaluation generatorImages reduction8243.relations [0,0,0,0,0,0,0,0,897] reduction8243.output := by lin_cert using reduction8243.terms
def map_35_191 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8356 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8356 : InImage map_35_191 image8356 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8356 : Bundle := named_bundle% "RealMapCertificates/relations/basis8356.json"
theorem reductionProof8356 : EqualModuloRelations reduction8356.relations reduction8356.input reduction8356.output := by lin_cert using reduction8356.terms
theorem substitutionProof8356 : IsMapEvaluation generatorImages reduction8356.relations [42,491] reduction8356.output := by lin_cert using reduction8356.terms
def image8357 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8357 : InImage map_35_191 image8357 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8357 : Bundle := named_bundle% "RealMapCertificates/relations/basis8357.json"
theorem reductionProof8357 : EqualModuloRelations reduction8357.relations reduction8357.input reduction8357.output := by lin_cert using reduction8357.terms
theorem substitutionProof8357 : IsMapEvaluation generatorImages reduction8357.relations [8,796] reduction8357.output := by lin_cert using reduction8357.terms
def image8358 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8358 : InImage map_35_191 image8358 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8358 : Bundle := named_bundle% "RealMapCertificates/relations/basis8358.json"
theorem reductionProof8358 : EqualModuloRelations reduction8358.relations reduction8358.input reduction8358.output := by lin_cert using reduction8358.terms
theorem substitutionProof8358 : IsMapEvaluation generatorImages reduction8358.relations [8,8,8,8,9,167] reduction8358.output := by lin_cert using reduction8358.terms
def image8359 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8359 : InImage map_35_191 image8359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8359 : Bundle := named_bundle% "RealMapCertificates/relations/basis8359.json"
theorem reductionProof8359 : EqualModuloRelations reduction8359.relations reduction8359.input reduction8359.output := by lin_cert using reduction8359.terms
theorem substitutionProof8359 : IsMapEvaluation generatorImages reduction8359.relations [0,0,0,0,0,0,0,0,919] reduction8359.output := by lin_cert using reduction8359.terms
def map_35_192 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8500 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8500 : InImage map_35_192 image8500 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8500 : Bundle := named_bundle% "RealMapCertificates/relations/basis8500.json"
theorem reductionProof8500 : EqualModuloRelations reduction8500.relations reduction8500.input reduction8500.output := by lin_cert using reduction8500.terms
theorem substitutionProof8500 : IsMapEvaluation generatorImages reduction8500.relations [8,8,16,299] reduction8500.output := by lin_cert using reduction8500.terms
def image8501 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8501 : InImage map_35_192 image8501 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8501 : Bundle := named_bundle% "RealMapCertificates/relations/basis8501.json"
theorem reductionProof8501 : EqualModuloRelations reduction8501.relations reduction8501.input reduction8501.output := by lin_cert using reduction8501.terms
theorem substitutionProof8501 : IsMapEvaluation generatorImages reduction8501.relations [8,8,8,13,13,13,13,32] reduction8501.output := by lin_cert using reduction8501.terms
def image8502 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8502 : InImage map_35_192 image8502 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8502 : Bundle := named_bundle% "RealMapCertificates/relations/basis8502.json"
theorem reductionProof8502 : EqualModuloRelations reduction8502.relations reduction8502.input reduction8502.output := by lin_cert using reduction8502.terms
theorem substitutionProof8502 : IsMapEvaluation generatorImages reduction8502.relations [8,8,8,8,8,186] reduction8502.output := by lin_cert using reduction8502.terms
def image8503 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8503 : InImage map_35_192 image8503 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8503 : Bundle := named_bundle% "RealMapCertificates/relations/basis8503.json"
theorem reductionProof8503 : EqualModuloRelations reduction8503.relations reduction8503.input reduction8503.output := by lin_cert using reduction8503.terms
theorem substitutionProof8503 : IsMapEvaluation generatorImages reduction8503.relations [0,0,0,0,0,0,0,0,0,0,898] reduction8503.output := by lin_cert using reduction8503.terms
def map_35_194 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image8736 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8736 : InImage map_35_194 image8736 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8736 : Bundle := named_bundle% "RealMapCertificates/relations/basis8736.json"
theorem reductionProof8736 : EqualModuloRelations reduction8736.relations reduction8736.input reduction8736.output := by lin_cert using reduction8736.terms
theorem substitutionProof8736 : IsMapEvaluation generatorImages reduction8736.relations [42,516] reduction8736.output := by lin_cert using reduction8736.terms
def image8737 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8737 : InImage map_35_194 image8737 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8737 : Bundle := named_bundle% "RealMapCertificates/relations/basis8737.json"
theorem reductionProof8737 : EqualModuloRelations reduction8737.relations reduction8737.input reduction8737.output := by lin_cert using reduction8737.terms
theorem substitutionProof8737 : IsMapEvaluation generatorImages reduction8737.relations [8,831] reduction8737.output := by lin_cert using reduction8737.terms
def image8738 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8738 : InImage map_35_194 image8738 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8738 : Bundle := named_bundle% "RealMapCertificates/relations/basis8738.json"
theorem reductionProof8738 : EqualModuloRelations reduction8738.relations reduction8738.input reduction8738.output := by lin_cert using reduction8738.terms
theorem substitutionProof8738 : IsMapEvaluation generatorImages reduction8738.relations [8,8,8,8,13,167] reduction8738.output := by lin_cert using reduction8738.terms
def image8739 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8739 : InImage map_35_194 image8739 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8739 : Bundle := named_bundle% "RealMapCertificates/relations/basis8739.json"
theorem reductionProof8739 : EqualModuloRelations reduction8739.relations reduction8739.input reduction8739.output := by lin_cert using reduction8739.terms
theorem substitutionProof8739 : IsMapEvaluation generatorImages reduction8739.relations [0,1060] reduction8739.output := by lin_cert using reduction8739.terms
def image8740 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8740 : InImage map_35_194 image8740 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8740 : Bundle := named_bundle% "RealMapCertificates/relations/basis8740.json"
theorem reductionProof8740 : EqualModuloRelations reduction8740.relations reduction8740.input reduction8740.output := by lin_cert using reduction8740.terms
theorem substitutionProof8740 : IsMapEvaluation generatorImages reduction8740.relations [0,0,0,0,0,64,64,64] reduction8740.output := by lin_cert using reduction8740.terms
def map_35_195 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8909 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8909 : InImage map_35_195 image8909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8909 : Bundle := named_bundle% "RealMapCertificates/relations/basis8909.json"
theorem reductionProof8909 : EqualModuloRelations reduction8909.relations reduction8909.input reduction8909.output := by lin_cert using reduction8909.terms
theorem substitutionProof8909 : IsMapEvaluation generatorImages reduction8909.relations [8,8,9,13,13,13,13,32] reduction8909.output := by lin_cert using reduction8909.terms
def image8910 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8910 : InImage map_35_195 image8910 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8910 : Bundle := named_bundle% "RealMapCertificates/relations/basis8910.json"
theorem reductionProof8910 : EqualModuloRelations reduction8910.relations reduction8910.input reduction8910.output := by lin_cert using reduction8910.terms
theorem substitutionProof8910 : IsMapEvaluation generatorImages reduction8910.relations [8,8,8,64,113] reduction8910.output := by lin_cert using reduction8910.terms
def image8911 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8911 : InImage map_35_195 image8911 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8911 : Bundle := named_bundle% "RealMapCertificates/relations/basis8911.json"
theorem reductionProof8911 : EqualModuloRelations reduction8911.relations reduction8911.input reduction8911.output := by lin_cert using reduction8911.terms
theorem substitutionProof8911 : IsMapEvaluation generatorImages reduction8911.relations [8,8,8,8,8,23,80] reduction8911.output := by lin_cert using reduction8911.terms
def image8912 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8912 : InImage map_35_195 image8912 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8912 : Bundle := named_bundle% "RealMapCertificates/relations/basis8912.json"
theorem reductionProof8912 : EqualModuloRelations reduction8912.relations reduction8912.input reduction8912.output := by lin_cert using reduction8912.terms
theorem substitutionProof8912 : IsMapEvaluation generatorImages reduction8912.relations [0,0,0,0,0,0,64,299] reduction8912.output := by lin_cert using reduction8912.terms
def map_35_197 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9164 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9164 : InImage map_35_197 image9164 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9164 : Bundle := named_bundle% "RealMapCertificates/relations/basis9164.json"
theorem reductionProof9164 : EqualModuloRelations reduction9164.relations reduction9164.input reduction9164.output := by lin_cert using reduction9164.terms
theorem substitutionProof9164 : IsMapEvaluation generatorImages reduction9164.relations [8,60,260] reduction9164.output := by lin_cert using reduction9164.terms
def image9165 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9165 : InImage map_35_197 image9165 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9165 : Bundle := named_bundle% "RealMapCertificates/relations/basis9165.json"
theorem reductionProof9165 : EqualModuloRelations reduction9165.relations reduction9165.input reduction9165.output := by lin_cert using reduction9165.terms
theorem substitutionProof9165 : IsMapEvaluation generatorImages reduction9165.relations [8,8,653] reduction9165.output := by lin_cert using reduction9165.terms
def image9166 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9166 : InImage map_35_197 image9166 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9166 : Bundle := named_bundle% "RealMapCertificates/relations/basis9166.json"
theorem reductionProof9166 : EqualModuloRelations reduction9166.relations reduction9166.input reduction9166.output := by lin_cert using reduction9166.terms
theorem substitutionProof9166 : IsMapEvaluation generatorImages reduction9166.relations [8,8,8,9,13,167] reduction9166.output := by lin_cert using reduction9166.terms
def map_35_198 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9346 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9346 : InImage map_35_198 image9346 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9346 : Bundle := named_bundle% "RealMapCertificates/relations/basis9346.json"
theorem reductionProof9346 : EqualModuloRelations reduction9346.relations reduction9346.input reduction9346.output := by lin_cert using reduction9346.terms
theorem substitutionProof9346 : IsMapEvaluation generatorImages reduction9346.relations [8,8,13,13,13,13,13,32] reduction9346.output := by lin_cert using reduction9346.terms
def image9347 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9347 : InImage map_35_198 image9347 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9347 : Bundle := named_bundle% "RealMapCertificates/relations/basis9347.json"
theorem reductionProof9347 : EqualModuloRelations reduction9347.relations reduction9347.input reduction9347.output := by lin_cert using reduction9347.terms
theorem substitutionProof9347 : IsMapEvaluation generatorImages reduction9347.relations [8,8,8,8,299] reduction9347.output := by lin_cert using reduction9347.terms
def image9348 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9348 : InImage map_35_198 image9348 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9348 : Bundle := named_bundle% "RealMapCertificates/relations/basis9348.json"
theorem reductionProof9348 : EqualModuloRelations reduction9348.relations reduction9348.input reduction9348.output := by lin_cert using reduction9348.terms
theorem substitutionProof9348 : IsMapEvaluation generatorImages reduction9348.relations [8,8,8,8,9,23,80] reduction9348.output := by lin_cert using reduction9348.terms
def map_35_199 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9493 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9493 : InImage map_35_199 image9493 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9493 : Bundle := named_bundle% "RealMapCertificates/relations/basis9493.json"
theorem reductionProof9493 : EqualModuloRelations reduction9493.relations reduction9493.input reduction9493.output := by lin_cert using reduction9493.terms
theorem substitutionProof9493 : IsMapEvaluation generatorImages reduction9493.relations [1167] reduction9493.output := by lin_cert using reduction9493.terms
def map_35_200 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9631 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9631 : InImage map_35_200 image9631 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9631 : Bundle := named_bundle% "RealMapCertificates/relations/basis9631.json"
theorem reductionProof9631 : EqualModuloRelations reduction9631.relations reduction9631.input reduction9631.output := by lin_cert using reduction9631.terms
theorem substitutionProof9631 : IsMapEvaluation generatorImages reduction9631.relations [8,42,380] reduction9631.output := by lin_cert using reduction9631.terms
def image9632 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9632 : InImage map_35_200 image9632 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9632 : Bundle := named_bundle% "RealMapCertificates/relations/basis9632.json"
theorem reductionProof9632 : EqualModuloRelations reduction9632.relations reduction9632.input reduction9632.output := by lin_cert using reduction9632.terms
theorem substitutionProof9632 : IsMapEvaluation generatorImages reduction9632.relations [8,8,689] reduction9632.output := by lin_cert using reduction9632.terms
def image9633 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9633 : InImage map_35_200 image9633 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9633 : Bundle := named_bundle% "RealMapCertificates/relations/basis9633.json"
theorem reductionProof9633 : EqualModuloRelations reduction9633.relations reduction9633.input reduction9633.output := by lin_cert using reduction9633.terms
theorem substitutionProof9633 : IsMapEvaluation generatorImages reduction9633.relations [8,8,8,13,13,167] reduction9633.output := by lin_cert using reduction9633.terms
def image9634 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9634 : InImage map_35_200 image9634 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9634 : Bundle := named_bundle% "RealMapCertificates/relations/basis9634.json"
theorem reductionProof9634 : EqualModuloRelations reduction9634.relations reduction9634.input reduction9634.output := by lin_cert using reduction9634.terms
theorem substitutionProof9634 : IsMapEvaluation generatorImages reduction9634.relations [0,0,0,64,380] reduction9634.output := by lin_cert using reduction9634.terms
def map_35_201 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image9834 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9834 : InImage map_35_201 image9834 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9834 : Bundle := named_bundle% "RealMapCertificates/relations/basis9834.json"
theorem reductionProof9834 : EqualModuloRelations reduction9834.relations reduction9834.input reduction9834.output := by lin_cert using reduction9834.terms
theorem substitutionProof9834 : IsMapEvaluation generatorImages reduction9834.relations [8,9,13,13,13,13,13,32] reduction9834.output := by lin_cert using reduction9834.terms
def image9835 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9835 : InImage map_35_201 image9835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9835 : Bundle := named_bundle% "RealMapCertificates/relations/basis9835.json"
theorem reductionProof9835 : EqualModuloRelations reduction9835.relations reduction9835.input reduction9835.output := by lin_cert using reduction9835.terms
theorem substitutionProof9835 : IsMapEvaluation generatorImages reduction9835.relations [8,8,8,8,327] reduction9835.output := by lin_cert using reduction9835.terms
def image9836 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9836 : InImage map_35_201 image9836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9836 : Bundle := named_bundle% "RealMapCertificates/relations/basis9836.json"
theorem reductionProof9836 : EqualModuloRelations reduction9836.relations reduction9836.input reduction9836.output := by lin_cert using reduction9836.terms
theorem substitutionProof9836 : IsMapEvaluation generatorImages reduction9836.relations [8,8,8,8,13,23,80] reduction9836.output := by lin_cert using reduction9836.terms
def map_35_202 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9968 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9968 : InImage map_35_202 image9968 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9968 : Bundle := named_bundle% "RealMapCertificates/relations/basis9968.json"
theorem reductionProof9968 : EqualModuloRelations reduction9968.relations reduction9968.input reduction9968.output := by lin_cert using reduction9968.terms
theorem substitutionProof9968 : IsMapEvaluation generatorImages reduction9968.relations [8,927] reduction9968.output := by lin_cert using reduction9968.terms
def map_35_203 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image10129 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10129 : InImage map_35_203 image10129 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10129 : Bundle := named_bundle% "RealMapCertificates/relations/basis10129.json"
theorem reductionProof10129 : EqualModuloRelations reduction10129.relations reduction10129.input reduction10129.output := by lin_cert using reduction10129.terms
theorem substitutionProof10129 : IsMapEvaluation generatorImages reduction10129.relations [8,8,42,260] reduction10129.output := by lin_cert using reduction10129.terms
def image10130 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10130 : InImage map_35_203 image10130 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10130 : Bundle := named_bundle% "RealMapCertificates/relations/basis10130.json"
theorem reductionProof10130 : EqualModuloRelations reduction10130.relations reduction10130.input reduction10130.output := by lin_cert using reduction10130.terms
theorem substitutionProof10130 : IsMapEvaluation generatorImages reduction10130.relations [8,8,9,13,13,167] reduction10130.output := by lin_cert using reduction10130.terms
def image10131 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10131 : InImage map_35_203 image10131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10131 : Bundle := named_bundle% "RealMapCertificates/relations/basis10131.json"
theorem reductionProof10131 : EqualModuloRelations reduction10131.relations reduction10131.input reduction10131.output := by lin_cert using reduction10131.terms
theorem substitutionProof10131 : IsMapEvaluation generatorImages reduction10131.relations [8,8,8,549] reduction10131.output := by lin_cert using reduction10131.terms
def image10132 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10132 : InImage map_35_203 image10132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10132 : Bundle := named_bundle% "RealMapCertificates/relations/basis10132.json"
theorem reductionProof10132 : EqualModuloRelations reduction10132.relations reduction10132.input reduction10132.output := by lin_cert using reduction10132.terms
theorem substitutionProof10132 : IsMapEvaluation generatorImages reduction10132.relations [5,64,64,64] reduction10132.output := by lin_cert using reduction10132.terms
def map_35_204 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image10332 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10332 : InImage map_35_204 image10332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10332 : Bundle := named_bundle% "RealMapCertificates/relations/basis10332.json"
theorem reductionProof10332 : EqualModuloRelations reduction10332.relations reduction10332.input reduction10332.output := by lin_cert using reduction10332.terms
theorem substitutionProof10332 : IsMapEvaluation generatorImages reduction10332.relations [8,13,13,13,13,13,13,32] reduction10332.output := by lin_cert using reduction10332.terms
def image10333 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10333 : InImage map_35_204 image10333 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10333 : Bundle := named_bundle% "RealMapCertificates/relations/basis10333.json"
theorem reductionProof10333 : EqualModuloRelations reduction10333.relations reduction10333.input reduction10333.output := by lin_cert using reduction10333.terms
theorem substitutionProof10333 : IsMapEvaluation generatorImages reduction10333.relations [8,8,8,9,13,23,80] reduction10333.output := by lin_cert using reduction10333.terms
def image10334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10334 : InImage map_35_204 image10334 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10334 : Bundle := named_bundle% "RealMapCertificates/relations/basis10334.json"
theorem reductionProof10334 : EqualModuloRelations reduction10334.relations reduction10334.input reduction10334.output := by lin_cert using reduction10334.terms
theorem substitutionProof10334 : IsMapEvaluation generatorImages reduction10334.relations [8,8,8,8,16,188] reduction10334.output := by lin_cert using reduction10334.terms
def map_35_205 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10497 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10497 : InImage map_35_205 image10497 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10497 : Bundle := named_bundle% "RealMapCertificates/relations/basis10497.json"
theorem reductionProof10497 : EqualModuloRelations reduction10497.relations reduction10497.input reduction10497.output := by lin_cert using reduction10497.terms
theorem substitutionProof10497 : IsMapEvaluation generatorImages reduction10497.relations [8,962] reduction10497.output := by lin_cert using reduction10497.terms
def map_35_206 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10658 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10658 : InImage map_35_206 image10658 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10658 : Bundle := named_bundle% "RealMapCertificates/relations/basis10658.json"
theorem reductionProof10658 : EqualModuloRelations reduction10658.relations reduction10658.input reduction10658.output := by lin_cert using reduction10658.terms
theorem substitutionProof10658 : IsMapEvaluation generatorImages reduction10658.relations [138,260] reduction10658.output := by lin_cert using reduction10658.terms
def image10659 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10659 : InImage map_35_206 image10659 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10659 : Bundle := named_bundle% "RealMapCertificates/relations/basis10659.json"
theorem reductionProof10659 : EqualModuloRelations reduction10659.relations reduction10659.input reduction10659.output := by lin_cert using reduction10659.terms
theorem substitutionProof10659 : IsMapEvaluation generatorImages reduction10659.relations [8,8,42,278] reduction10659.output := by lin_cert using reduction10659.terms
def image10660 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10660 : InImage map_35_206 image10660 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10660 : Bundle := named_bundle% "RealMapCertificates/relations/basis10660.json"
theorem reductionProof10660 : EqualModuloRelations reduction10660.relations reduction10660.input reduction10660.output := by lin_cert using reduction10660.terms
theorem substitutionProof10660 : IsMapEvaluation generatorImages reduction10660.relations [8,8,13,13,13,167] reduction10660.output := by lin_cert using reduction10660.terms
def image10661 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10661 : InImage map_35_206 image10661 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10661 : Bundle := named_bundle% "RealMapCertificates/relations/basis10661.json"
theorem reductionProof10661 : EqualModuloRelations reduction10661.relations reduction10661.input reduction10661.output := by lin_cert using reduction10661.terms
theorem substitutionProof10661 : IsMapEvaluation generatorImages reduction10661.relations [8,8,8,574] reduction10661.output := by lin_cert using reduction10661.terms
def map_35_207 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10886 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10886 : InImage map_35_207 image10886 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10886 : Bundle := named_bundle% "RealMapCertificates/relations/basis10886.json"
theorem reductionProof10886 : EqualModuloRelations reduction10886.relations reduction10886.input reduction10886.output := by lin_cert using reduction10886.terms
theorem substitutionProof10886 : IsMapEvaluation generatorImages reduction10886.relations [1316] reduction10886.output := by lin_cert using reduction10886.terms
def image10887 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10887 : InImage map_35_207 image10887 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10887 : Bundle := named_bundle% "RealMapCertificates/relations/basis10887.json"
theorem reductionProof10887 : EqualModuloRelations reduction10887.relations reduction10887.input reduction10887.output := by lin_cert using reduction10887.terms
theorem substitutionProof10887 : IsMapEvaluation generatorImages reduction10887.relations [1315] reduction10887.output := by lin_cert using reduction10887.terms
def image10888 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10888 : InImage map_35_207 image10888 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10888 : Bundle := named_bundle% "RealMapCertificates/relations/basis10888.json"
theorem reductionProof10888 : EqualModuloRelations reduction10888.relations reduction10888.input reduction10888.output := by lin_cert using reduction10888.terms
theorem substitutionProof10888 : IsMapEvaluation generatorImages reduction10888.relations [9,13,13,13,13,13,13,32] reduction10888.output := by lin_cert using reduction10888.terms
def image10889 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10889 : InImage map_35_207 image10889 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10889 : Bundle := named_bundle% "RealMapCertificates/relations/basis10889.json"
theorem reductionProof10889 : EqualModuloRelations reduction10889.relations reduction10889.input reduction10889.output := by lin_cert using reduction10889.terms
theorem substitutionProof10889 : IsMapEvaluation generatorImages reduction10889.relations [8,8,8,13,13,23,80] reduction10889.output := by lin_cert using reduction10889.terms
def image10890 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10890 : InImage map_35_207 image10890 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10890 : Bundle := named_bundle% "RealMapCertificates/relations/basis10890.json"
theorem reductionProof10890 : EqualModuloRelations reduction10890.relations reduction10890.input reduction10890.output := by lin_cert using reduction10890.terms
theorem substitutionProof10890 : IsMapEvaluation generatorImages reduction10890.relations [8,8,8,8,8,255] reduction10890.output := by lin_cert using reduction10890.terms
def map_35_208 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11018 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11018 : InImage map_35_208 image11018 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11018 : Bundle := named_bundle% "RealMapCertificates/relations/basis11018.json"
theorem reductionProof11018 : EqualModuloRelations reduction11018.relations reduction11018.input reduction11018.output := by lin_cert using reduction11018.terms
theorem substitutionProof11018 : IsMapEvaluation generatorImages reduction11018.relations [8,17,642] reduction11018.output := by lin_cert using reduction11018.terms
def map_35_209 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image11193 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11193 : InImage map_35_209 image11193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11193 : Bundle := named_bundle% "RealMapCertificates/relations/basis11193.json"
theorem reductionProof11193 : EqualModuloRelations reduction11193.relations reduction11193.input reduction11193.output := by lin_cert using reduction11193.terms
theorem substitutionProof11193 : IsMapEvaluation generatorImages reduction11193.relations [138,278] reduction11193.output := by lin_cert using reduction11193.terms
def image11194 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11194 : InImage map_35_209 image11194 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11194 : Bundle := named_bundle% "RealMapCertificates/relations/basis11194.json"
theorem reductionProof11194 : EqualModuloRelations reduction11194.relations reduction11194.input reduction11194.output := by lin_cert using reduction11194.terms
theorem substitutionProof11194 : IsMapEvaluation generatorImages reduction11194.relations [8,9,13,13,13,167] reduction11194.output := by lin_cert using reduction11194.terms
def image11195 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11195 : InImage map_35_209 image11195 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11195 : Bundle := named_bundle% "RealMapCertificates/relations/basis11195.json"
theorem reductionProof11195 : EqualModuloRelations reduction11195.relations reduction11195.input reduction11195.output := by lin_cert using reduction11195.terms
theorem substitutionProof11195 : IsMapEvaluation generatorImages reduction11195.relations [8,8,8,602] reduction11195.output := by lin_cert using reduction11195.terms
def image11196 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11196 : InImage map_35_209 image11196 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11196 : Bundle := named_bundle% "RealMapCertificates/relations/basis11196.json"
theorem reductionProof11196 : EqualModuloRelations reduction11196.relations reduction11196.input reduction11196.output := by lin_cert using reduction11196.terms
theorem substitutionProof11196 : IsMapEvaluation generatorImages reduction11196.relations [8,8,8,8,420] reduction11196.output := by lin_cert using reduction11196.terms
def map_35_210 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11395 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11395 : InImage map_35_210 image11395 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11395 : Bundle := named_bundle% "RealMapCertificates/relations/basis11395.json"
theorem reductionProof11395 : EqualModuloRelations reduction11395.relations reduction11395.input reduction11395.output := by lin_cert using reduction11395.terms
theorem substitutionProof11395 : IsMapEvaluation generatorImages reduction11395.relations [1364] reduction11395.output := by lin_cert using reduction11395.terms
def image11396 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11396 : InImage map_35_210 image11396 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11396 : Bundle := named_bundle% "RealMapCertificates/relations/basis11396.json"
theorem reductionProof11396 : EqualModuloRelations reduction11396.relations reduction11396.input reduction11396.output := by lin_cert using reduction11396.terms
theorem substitutionProof11396 : IsMapEvaluation generatorImages reduction11396.relations [13,13,13,13,13,13,13,32] reduction11396.output := by lin_cert using reduction11396.terms
def image11397 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11397 : InImage map_35_210 image11397 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11397 : Bundle := named_bundle% "RealMapCertificates/relations/basis11397.json"
theorem reductionProof11397 : EqualModuloRelations reduction11397.relations reduction11397.input reduction11397.output := by lin_cert using reduction11397.terms
theorem substitutionProof11397 : IsMapEvaluation generatorImages reduction11397.relations [8,8,9,13,13,23,80] reduction11397.output := by lin_cert using reduction11397.terms
def image11398 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11398 : InImage map_35_210 image11398 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11398 : Bundle := named_bundle% "RealMapCertificates/relations/basis11398.json"
theorem reductionProof11398 : EqualModuloRelations reduction11398.relations reduction11398.input reduction11398.output := by lin_cert using reduction11398.terms
theorem substitutionProof11398 : IsMapEvaluation generatorImages reduction11398.relations [8,8,8,8,8,8,188] reduction11398.output := by lin_cert using reduction11398.terms
def image11399 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11399 : InImage map_35_210 image11399 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11399 : Bundle := named_bundle% "RealMapCertificates/relations/basis11399.json"
theorem reductionProof11399 : EqualModuloRelations reduction11399.relations reduction11399.input reduction11399.output := by lin_cert using reduction11399.terms
theorem substitutionProof11399 : IsMapEvaluation generatorImages reduction11399.relations [0,0,0,1317] reduction11399.output := by lin_cert using reduction11399.terms
end RealMapCertificates
