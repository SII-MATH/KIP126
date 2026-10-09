import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 24 => []
  | 64 => []
  | 67 => []
  | 72 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 167 => [[7,9,12]]
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 209 => []
  | 260 => []
  | 278 => []
  | 292 => []
  | 293 => []
  | 350 => []
  | 383 => []
  | 384 => []
  | 420 => []
  | 423 => []
  | 518 => []
  | 537 => []
  | 558 => []
  | 573 => []
  | 586 => []
  | 598 => [[0,6,9,12,12]]
  | 601 => []
  | 624 => []
  | 625 => []
  | 627 => []
  | 638 => []
  | 642 => [[7,10,12,12]]
  | 645 => []
  | 655 => []
  | 715 => [[7,7,7,12,12]]
  | 779 => []
  | 813 => []
  | 821 => [[5,7,10,12,12]]
  | 832 => []
  | 864 => [[7,7,10,12,12]]
  | 874 => []
  | 897 => []
  | 920 => []
  | 940 => []
  | 957 => []
  | 963 => []
  | 974 => []
  | 1094 => []
  | 1145 => []
  | 1366 => [[7,9,12,12,12]]
  | 1383 => []
  | 1384 => []
  | 1401 => []
  | 1440 => []
  | 1441 => []
  | 1483 => []
  | 1537 => [[5,5,8,12,12,12]]
  | 1596 => []
  | 1606 => []
  | 1638 => [[5,6,9,12,12,12]]
  | 1813 => []
  | _ => []
def map_35_211 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11564 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11564 : InImage map_35_211 image11564 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11564 : Bundle := named_bundle% "RealMapCertificates/relations/basis11564.json"
theorem reductionProof11564 : EqualModuloRelations reduction11564.relations reduction11564.input reduction11564.output := by lin_cert using reduction11564.terms
theorem substitutionProof11564 : IsMapEvaluation generatorImages reduction11564.relations [8,8,821] reduction11564.output := by lin_cert using reduction11564.terms
def map_35_212 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image11725 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11725 : InImage map_35_212 image11725 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11725 : Bundle := named_bundle% "RealMapCertificates/relations/basis11725.json"
theorem reductionProof11725 : EqualModuloRelations reduction11725.relations reduction11725.input reduction11725.output := by lin_cert using reduction11725.terms
theorem substitutionProof11725 : IsMapEvaluation generatorImages reduction11725.relations [16,897] reduction11725.output := by lin_cert using reduction11725.terms
def image11726 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11726 : InImage map_35_212 image11726 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11726 : Bundle := named_bundle% "RealMapCertificates/relations/basis11726.json"
theorem reductionProof11726 : EqualModuloRelations reduction11726.relations reduction11726.input reduction11726.output := by lin_cert using reduction11726.terms
theorem substitutionProof11726 : IsMapEvaluation generatorImages reduction11726.relations [8,13,13,13,13,167] reduction11726.output := by lin_cert using reduction11726.terms
def image11727 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11727 : InImage map_35_212 image11727 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11727 : Bundle := named_bundle% "RealMapCertificates/relations/basis11727.json"
theorem reductionProof11727 : EqualModuloRelations reduction11727.relations reduction11727.input reduction11727.output := by lin_cert using reduction11727.terms
theorem substitutionProof11727 : IsMapEvaluation generatorImages reduction11727.relations [8,8,8,625] reduction11727.output := by lin_cert using reduction11727.terms
def image11728 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11728 : InImage map_35_212 image11728 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11728 : Bundle := named_bundle% "RealMapCertificates/relations/basis11728.json"
theorem reductionProof11728 : EqualModuloRelations reduction11728.relations reduction11728.input reduction11728.output := by lin_cert using reduction11728.terms
theorem substitutionProof11728 : IsMapEvaluation generatorImages reduction11728.relations [8,8,8,9,420] reduction11728.output := by lin_cert using reduction11728.terms
def image11729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11729 : InImage map_35_212 image11729 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11729 : Bundle := named_bundle% "RealMapCertificates/relations/basis11729.json"
theorem reductionProof11729 : EqualModuloRelations reduction11729.relations reduction11729.input reduction11729.output := by lin_cert using reduction11729.terms
theorem substitutionProof11729 : IsMapEvaluation generatorImages reduction11729.relations [0,149,260] reduction11729.output := by lin_cert using reduction11729.terms
def map_35_213 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image11976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11976 : InImage map_35_213 image11976 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11976 : Bundle := named_bundle% "RealMapCertificates/relations/basis11976.json"
theorem reductionProof11976 : EqualModuloRelations reduction11976.relations reduction11976.input reduction11976.output := by lin_cert using reduction11976.terms
theorem substitutionProof11976 : IsMapEvaluation generatorImages reduction11976.relations [64,558] reduction11976.output := by lin_cert using reduction11976.terms
def image11977 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11977 : InImage map_35_213 image11977 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11977 : Bundle := named_bundle% "RealMapCertificates/relations/basis11977.json"
theorem reductionProof11977 : EqualModuloRelations reduction11977.relations reduction11977.input reduction11977.output := by lin_cert using reduction11977.terms
theorem substitutionProof11977 : IsMapEvaluation generatorImages reduction11977.relations [8,1094] reduction11977.output := by lin_cert using reduction11977.terms
def image11978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11978 : InImage map_35_213 image11978 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11978 : Bundle := named_bundle% "RealMapCertificates/relations/basis11978.json"
theorem reductionProof11978 : EqualModuloRelations reduction11978.relations reduction11978.input reduction11978.output := by lin_cert using reduction11978.terms
theorem substitutionProof11978 : IsMapEvaluation generatorImages reduction11978.relations [8,8,13,13,13,23,80] reduction11978.output := by lin_cert using reduction11978.terms
def image11979 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11979 : InImage map_35_213 image11979 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11979 : Bundle := named_bundle% "RealMapCertificates/relations/basis11979.json"
theorem reductionProof11979 : EqualModuloRelations reduction11979.relations reduction11979.input reduction11979.output := by lin_cert using reduction11979.terms
theorem substitutionProof11979 : IsMapEvaluation generatorImages reduction11979.relations [8,8,8,8,8,9,188] reduction11979.output := by lin_cert using reduction11979.terms
def image11980 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11980 : InImage map_35_213 image11980 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11980 : Bundle := named_bundle% "RealMapCertificates/relations/basis11980.json"
theorem reductionProof11980 : EqualModuloRelations reduction11980.relations reduction11980.input reduction11980.output := by lin_cert using reduction11980.terms
theorem substitutionProof11980 : IsMapEvaluation generatorImages reduction11980.relations [1,149,260] reduction11980.output := by lin_cert using reduction11980.terms
def image11981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11981 : InImage map_35_213 image11981 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11981 : Bundle := named_bundle% "RealMapCertificates/relations/basis11981.json"
theorem reductionProof11981 : EqualModuloRelations reduction11981.relations reduction11981.input reduction11981.output := by lin_cert using reduction11981.terms
theorem substitutionProof11981 : IsMapEvaluation generatorImages reduction11981.relations [0,17,897] reduction11981.output := by lin_cert using reduction11981.terms
def map_35_214 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12145 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12145 : InImage map_35_214 image12145 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12145 : Bundle := named_bundle% "RealMapCertificates/relations/basis12145.json"
theorem reductionProof12145 : EqualModuloRelations reduction12145.relations reduction12145.input reduction12145.output := by lin_cert using reduction12145.terms
theorem substitutionProof12145 : IsMapEvaluation generatorImages reduction12145.relations [8,8,864] reduction12145.output := by lin_cert using reduction12145.terms
def image12146 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12146 : InImage map_35_214 image12146 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12146 : Bundle := named_bundle% "RealMapCertificates/relations/basis12146.json"
theorem reductionProof12146 : EqualModuloRelations reduction12146.relations reduction12146.input reduction12146.output := by lin_cert using reduction12146.terms
theorem substitutionProof12146 : IsMapEvaluation generatorImages reduction12146.relations [0,0,1401] reduction12146.output := by lin_cert using reduction12146.terms
def image12147 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12147 : InImage map_35_214 image12147 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12147 : Bundle := named_bundle% "RealMapCertificates/relations/basis12147.json"
theorem reductionProof12147 : EqualModuloRelations reduction12147.relations reduction12147.input reduction12147.output := by lin_cert using reduction12147.terms
theorem substitutionProof12147 : IsMapEvaluation generatorImages reduction12147.relations [0,0,0,0,1366] reduction12147.output := by lin_cert using reduction12147.terms
def map_35_215 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12331 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12331 : InImage map_35_215 image12331 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12331 : Bundle := named_bundle% "RealMapCertificates/relations/basis12331.json"
theorem reductionProof12331 : EqualModuloRelations reduction12331.relations reduction12331.input reduction12331.output := by lin_cert using reduction12331.terms
theorem substitutionProof12331 : IsMapEvaluation generatorImages reduction12331.relations [9,13,13,13,13,167] reduction12331.output := by lin_cert using reduction12331.terms
def image12332 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12332 : InImage map_35_215 image12332 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12332 : Bundle := named_bundle% "RealMapCertificates/relations/basis12332.json"
theorem reductionProof12332 : EqualModuloRelations reduction12332.relations reduction12332.input reduction12332.output := by lin_cert using reduction12332.terms
theorem substitutionProof12332 : IsMapEvaluation generatorImages reduction12332.relations [8,113,260] reduction12332.output := by lin_cert using reduction12332.terms
def image12333 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12333 : InImage map_35_215 image12333 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12333 : Bundle := named_bundle% "RealMapCertificates/relations/basis12333.json"
theorem reductionProof12333 : EqualModuloRelations reduction12333.relations reduction12333.input reduction12333.output := by lin_cert using reduction12333.terms
theorem substitutionProof12333 : IsMapEvaluation generatorImages reduction12333.relations [8,8,8,23,292] reduction12333.output := by lin_cert using reduction12333.terms
def image12334 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12334 : InImage map_35_215 image12334 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12334 : Bundle := named_bundle% "RealMapCertificates/relations/basis12334.json"
theorem reductionProof12334 : EqualModuloRelations reduction12334.relations reduction12334.input reduction12334.output := by lin_cert using reduction12334.terms
theorem substitutionProof12334 : IsMapEvaluation generatorImages reduction12334.relations [8,8,8,8,8,293] reduction12334.output := by lin_cert using reduction12334.terms
def image12335 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12335 : InImage map_35_215 image12335 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12335 : Bundle := named_bundle% "RealMapCertificates/relations/basis12335.json"
theorem reductionProof12335 : EqualModuloRelations reduction12335.relations reduction12335.input reduction12335.output := by lin_cert using reduction12335.terms
theorem substitutionProof12335 : IsMapEvaluation generatorImages reduction12335.relations [0,149,278] reduction12335.output := by lin_cert using reduction12335.terms
def image12336 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12336 : InImage map_35_215 image12336 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12336 : Bundle := named_bundle% "RealMapCertificates/relations/basis12336.json"
theorem reductionProof12336 : EqualModuloRelations reduction12336.relations reduction12336.input reduction12336.output := by lin_cert using reduction12336.terms
theorem substitutionProof12336 : IsMapEvaluation generatorImages reduction12336.relations [0,0,0,0,1383] reduction12336.output := by lin_cert using reduction12336.terms
def map_35_216 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12543 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12543 : InImage map_35_216 image12543 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12543 : Bundle := named_bundle% "RealMapCertificates/relations/basis12543.json"
theorem reductionProof12543 : EqualModuloRelations reduction12543.relations reduction12543.input reduction12543.output := by lin_cert using reduction12543.terms
theorem substitutionProof12543 : IsMapEvaluation generatorImages reduction12543.relations [13,13,13,13,13,13,23,24] reduction12543.output := by lin_cert using reduction12543.terms
def image12544 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12544 : InImage map_35_216 image12544 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12544 : Bundle := named_bundle% "RealMapCertificates/relations/basis12544.json"
theorem reductionProof12544 : EqualModuloRelations reduction12544.relations reduction12544.input reduction12544.output := by lin_cert using reduction12544.terms
theorem substitutionProof12544 : IsMapEvaluation generatorImages reduction12544.relations [8,1145] reduction12544.output := by lin_cert using reduction12544.terms
def image12545 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12545 : InImage map_35_216 image12545 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12545 : Bundle := named_bundle% "RealMapCertificates/relations/basis12545.json"
theorem reductionProof12545 : EqualModuloRelations reduction12545.relations reduction12545.input reduction12545.output := by lin_cert using reduction12545.terms
theorem substitutionProof12545 : IsMapEvaluation generatorImages reduction12545.relations [8,9,13,13,13,23,80] reduction12545.output := by lin_cert using reduction12545.terms
def image12546 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12546 : InImage map_35_216 image12546 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12546 : Bundle := named_bundle% "RealMapCertificates/relations/basis12546.json"
theorem reductionProof12546 : EqualModuloRelations reduction12546.relations reduction12546.input reduction12546.output := by lin_cert using reduction12546.terms
theorem substitutionProof12546 : IsMapEvaluation generatorImages reduction12546.relations [8,8,8,8,8,13,188] reduction12546.output := by lin_cert using reduction12546.terms
def image12547 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12547 : InImage map_35_216 image12547 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12547 : Bundle := named_bundle% "RealMapCertificates/relations/basis12547.json"
theorem reductionProof12547 : EqualModuloRelations reduction12547.relations reduction12547.input reduction12547.output := by lin_cert using reduction12547.terms
theorem substitutionProof12547 : IsMapEvaluation generatorImages reduction12547.relations [0,64,573] reduction12547.output := by lin_cert using reduction12547.terms
def image12548 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12548 : InImage map_35_216 image12548 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12548 : Bundle := named_bundle% "RealMapCertificates/relations/basis12548.json"
theorem reductionProof12548 : EqualModuloRelations reduction12548.relations reduction12548.input reduction12548.output := by lin_cert using reduction12548.terms
theorem substitutionProof12548 : IsMapEvaluation generatorImages reduction12548.relations [0,17,940] reduction12548.output := by lin_cert using reduction12548.terms
def map_35_217 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12716 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12716 : InImage map_35_217 image12716 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12716 : Bundle := named_bundle% "RealMapCertificates/relations/basis12716.json"
theorem reductionProof12716 : EqualModuloRelations reduction12716.relations reduction12716.input reduction12716.output := by lin_cert using reduction12716.terms
theorem substitutionProof12716 : IsMapEvaluation generatorImages reduction12716.relations [8,9,864] reduction12716.output := by lin_cert using reduction12716.terms
def map_35_218 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12881 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12881 : InImage map_35_218 image12881 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12881 : Bundle := named_bundle% "RealMapCertificates/relations/basis12881.json"
theorem reductionProof12881 : EqualModuloRelations reduction12881.relations reduction12881.input reduction12881.output := by lin_cert using reduction12881.terms
theorem substitutionProof12881 : IsMapEvaluation generatorImages reduction12881.relations [64,598] reduction12881.output := by lin_cert using reduction12881.terms
def image12882 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12882 : InImage map_35_218 image12882 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12882 : Bundle := named_bundle% "RealMapCertificates/relations/basis12882.json"
theorem reductionProof12882 : EqualModuloRelations reduction12882.relations reduction12882.input reduction12882.output := by lin_cert using reduction12882.terms
theorem substitutionProof12882 : IsMapEvaluation generatorImages reduction12882.relations [13,13,13,13,13,167] reduction12882.output := by lin_cert using reduction12882.terms
def image12883 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12883 : InImage map_35_218 image12883 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12883 : Bundle := named_bundle% "RealMapCertificates/relations/basis12883.json"
theorem reductionProof12883 : EqualModuloRelations reduction12883.relations reduction12883.input reduction12883.output := by lin_cert using reduction12883.terms
theorem substitutionProof12883 : IsMapEvaluation generatorImages reduction12883.relations [8,8,897] reduction12883.output := by lin_cert using reduction12883.terms
def image12884 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12884 : InImage map_35_218 image12884 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12884 : Bundle := named_bundle% "RealMapCertificates/relations/basis12884.json"
theorem reductionProof12884 : EqualModuloRelations reduction12884.relations reduction12884.input reduction12884.output := by lin_cert using reduction12884.terms
theorem substitutionProof12884 : IsMapEvaluation generatorImages reduction12884.relations [8,8,9,23,292] reduction12884.output := by lin_cert using reduction12884.terms
def image12885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12885 : InImage map_35_218 image12885 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12885 : Bundle := named_bundle% "RealMapCertificates/relations/basis12885.json"
theorem reductionProof12885 : EqualModuloRelations reduction12885.relations reduction12885.input reduction12885.output := by lin_cert using reduction12885.terms
theorem substitutionProof12885 : IsMapEvaluation generatorImages reduction12885.relations [8,8,8,8,9,293] reduction12885.output := by lin_cert using reduction12885.terms
def image12886 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12886 : InImage map_35_218 image12886 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12886 : Bundle := named_bundle% "RealMapCertificates/relations/basis12886.json"
theorem reductionProof12886 : EqualModuloRelations reduction12886.relations reduction12886.input reduction12886.output := by lin_cert using reduction12886.terms
theorem substitutionProof12886 : IsMapEvaluation generatorImages reduction12886.relations [0,16,963] reduction12886.output := by lin_cert using reduction12886.terms
def map_35_219 : Matrix 2 5 := fun i j => ([false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13129 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13129 : InImage map_35_219 image13129 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13129 : Bundle := named_bundle% "RealMapCertificates/relations/basis13129.json"
theorem reductionProof13129 : EqualModuloRelations reduction13129.relations reduction13129.input reduction13129.output := by lin_cert using reduction13129.terms
theorem substitutionProof13129 : IsMapEvaluation generatorImages reduction13129.relations [8,13,13,13,13,23,80] reduction13129.output := by lin_cert using reduction13129.terms
def image13130 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13130 : InImage map_35_219 image13130 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13130 : Bundle := named_bundle% "RealMapCertificates/relations/basis13130.json"
theorem reductionProof13130 : EqualModuloRelations reduction13130.relations reduction13130.input reduction13130.output := by lin_cert using reduction13130.terms
theorem substitutionProof13130 : IsMapEvaluation generatorImages reduction13130.relations [8,8,920] reduction13130.output := by lin_cert using reduction13130.terms
def image13131 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13131 : InImage map_35_219 image13131 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13131 : Bundle := named_bundle% "RealMapCertificates/relations/basis13131.json"
theorem reductionProof13131 : EqualModuloRelations reduction13131.relations reduction13131.input reduction13131.output := by lin_cert using reduction13131.terms
theorem substitutionProof13131 : IsMapEvaluation generatorImages reduction13131.relations [8,8,8,8,9,13,188] reduction13131.output := by lin_cert using reduction13131.terms
def image13132 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13132 : InImage map_35_219 image13132 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13132 : Bundle := named_bundle% "RealMapCertificates/relations/basis13132.json"
theorem reductionProof13132 : EqualModuloRelations reduction13132.relations reduction13132.input reduction13132.output := by lin_cert using reduction13132.terms
theorem substitutionProof13132 : IsMapEvaluation generatorImages reduction13132.relations [0,16,974] reduction13132.output := by lin_cert using reduction13132.terms
def image13133 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13133 : InImage map_35_219 image13133 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13133 : Bundle := named_bundle% "RealMapCertificates/relations/basis13133.json"
theorem reductionProof13133 : EqualModuloRelations reduction13133.relations reduction13133.input reduction13133.output := by lin_cert using reduction13133.terms
theorem substitutionProof13133 : IsMapEvaluation generatorImages reduction13133.relations [0,0,17,963] reduction13133.output := by lin_cert using reduction13133.terms
def map_35_220 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image13269 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13269 : InImage map_35_220 image13269 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13269 : Bundle := named_bundle% "RealMapCertificates/relations/basis13269.json"
theorem reductionProof13269 : EqualModuloRelations reduction13269.relations reduction13269.input reduction13269.output := by lin_cert using reduction13269.terms
theorem substitutionProof13269 : IsMapEvaluation generatorImages reduction13269.relations [8,13,864] reduction13269.output := by lin_cert using reduction13269.terms
def image13270 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13270 : InImage map_35_220 image13270 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13270 : Bundle := named_bundle% "RealMapCertificates/relations/basis13270.json"
theorem reductionProof13270 : EqualModuloRelations reduction13270.relations reduction13270.input reduction13270.output := by lin_cert using reduction13270.terms
theorem substitutionProof13270 : IsMapEvaluation generatorImages reduction13270.relations [0,1537] reduction13270.output := by lin_cert using reduction13270.terms
def image13271 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13271 : InImage map_35_220 image13271 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13271 : Bundle := named_bundle% "RealMapCertificates/relations/basis13271.json"
theorem reductionProof13271 : EqualModuloRelations reduction13271.relations reduction13271.input reduction13271.output := by lin_cert using reduction13271.terms
theorem substitutionProof13271 : IsMapEvaluation generatorImages reduction13271.relations [0,0,64,601] reduction13271.output := by lin_cert using reduction13271.terms
def image13272 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13272 : InImage map_35_220 image13272 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13272 : Bundle := named_bundle% "RealMapCertificates/relations/basis13272.json"
theorem reductionProof13272 : EqualModuloRelations reduction13272.relations reduction13272.input reduction13272.output := by lin_cert using reduction13272.terms
theorem substitutionProof13272 : IsMapEvaluation generatorImages reduction13272.relations [0,0,17,974] reduction13272.output := by lin_cert using reduction13272.terms
def map_35_221 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image13458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13458 : InImage map_35_221 image13458 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13458 : Bundle := named_bundle% "RealMapCertificates/relations/basis13458.json"
theorem reductionProof13458 : EqualModuloRelations reduction13458.relations reduction13458.input reduction13458.output := by lin_cert using reduction13458.terms
theorem substitutionProof13458 : IsMapEvaluation generatorImages reduction13458.relations [64,624] reduction13458.output := by lin_cert using reduction13458.terms
def image13459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13459 : InImage map_35_221 image13459 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13459 : Bundle := named_bundle% "RealMapCertificates/relations/basis13459.json"
theorem reductionProof13459 : EqualModuloRelations reduction13459.relations reduction13459.input reduction13459.output := by lin_cert using reduction13459.terms
theorem substitutionProof13459 : IsMapEvaluation generatorImages reduction13459.relations [8,8,940] reduction13459.output := by lin_cert using reduction13459.terms
def image13460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13460 : InImage map_35_221 image13460 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13460 : Bundle := named_bundle% "RealMapCertificates/relations/basis13460.json"
theorem reductionProof13460 : EqualModuloRelations reduction13460.relations reduction13460.input reduction13460.output := by lin_cert using reduction13460.terms
theorem substitutionProof13460 : IsMapEvaluation generatorImages reduction13460.relations [8,8,13,23,292] reduction13460.output := by lin_cert using reduction13460.terms
def image13461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13461 : InImage map_35_221 image13461 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13461 : Bundle := named_bundle% "RealMapCertificates/relations/basis13461.json"
theorem reductionProof13461 : EqualModuloRelations reduction13461.relations reduction13461.input reduction13461.output := by lin_cert using reduction13461.terms
theorem substitutionProof13461 : IsMapEvaluation generatorImages reduction13461.relations [8,8,8,8,8,350] reduction13461.output := by lin_cert using reduction13461.terms
def image13462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13462 : InImage map_35_221 image13462 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13462 : Bundle := named_bundle% "RealMapCertificates/relations/basis13462.json"
theorem reductionProof13462 : EqualModuloRelations reduction13462.relations reduction13462.input reduction13462.output := by lin_cert using reduction13462.terms
theorem substitutionProof13462 : IsMapEvaluation generatorImages reduction13462.relations [0,0,0,0,64,586] reduction13462.output := by lin_cert using reduction13462.terms
def image13463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13463 : InImage map_35_221 image13463 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13463 : Bundle := named_bundle% "RealMapCertificates/relations/basis13463.json"
theorem reductionProof13463 : EqualModuloRelations reduction13463.relations reduction13463.input reduction13463.output := by lin_cert using reduction13463.terms
theorem substitutionProof13463 : IsMapEvaluation generatorImages reduction13463.relations [0,0,0,0,0,0,0,1441] reduction13463.output := by lin_cert using reduction13463.terms
def map_35_222 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13689 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13689 : InImage map_35_222 image13689 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13689 : Bundle := named_bundle% "RealMapCertificates/relations/basis13689.json"
theorem reductionProof13689 : EqualModuloRelations reduction13689.relations reduction13689.input reduction13689.output := by lin_cert using reduction13689.terms
theorem substitutionProof13689 : IsMapEvaluation generatorImages reduction13689.relations [9,13,13,13,13,23,80] reduction13689.output := by lin_cert using reduction13689.terms
def image13690 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13690 : InImage map_35_222 image13690 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13690 : Bundle := named_bundle% "RealMapCertificates/relations/basis13690.json"
theorem reductionProof13690 : EqualModuloRelations reduction13690.relations reduction13690.input reduction13690.output := by lin_cert using reduction13690.terms
theorem substitutionProof13690 : IsMapEvaluation generatorImages reduction13690.relations [8,8,957] reduction13690.output := by lin_cert using reduction13690.terms
def image13691 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13691 : InImage map_35_222 image13691 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13691 : Bundle := named_bundle% "RealMapCertificates/relations/basis13691.json"
theorem reductionProof13691 : EqualModuloRelations reduction13691.relations reduction13691.input reduction13691.output := by lin_cert using reduction13691.terms
theorem substitutionProof13691 : IsMapEvaluation generatorImages reduction13691.relations [8,8,8,8,13,13,188] reduction13691.output := by lin_cert using reduction13691.terms
def image13692 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13692 : InImage map_35_222 image13692 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13692 : Bundle := named_bundle% "RealMapCertificates/relations/basis13692.json"
theorem reductionProof13692 : EqualModuloRelations reduction13692.relations reduction13692.input reduction13692.output := by lin_cert using reduction13692.terms
theorem substitutionProof13692 : IsMapEvaluation generatorImages reduction13692.relations [0,8,113,292] reduction13692.output := by lin_cert using reduction13692.terms
def image13693 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13693 : InImage map_35_222 image13693 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13693 : Bundle := named_bundle% "RealMapCertificates/relations/basis13693.json"
theorem reductionProof13693 : EqualModuloRelations reduction13693.relations reduction13693.input reduction13693.output := by lin_cert using reduction13693.terms
theorem substitutionProof13693 : IsMapEvaluation generatorImages reduction13693.relations [0,0,0,0,0,0,1483] reduction13693.output := by lin_cert using reduction13693.terms
def map_35_223 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13844 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13844 : InImage map_35_223 image13844 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13844 : Bundle := named_bundle% "RealMapCertificates/relations/basis13844.json"
theorem reductionProof13844 : EqualModuloRelations reduction13844.relations reduction13844.input reduction13844.output := by lin_cert using reduction13844.terms
theorem substitutionProof13844 : IsMapEvaluation generatorImages reduction13844.relations [193,260] reduction13844.output := by lin_cert using reduction13844.terms
def image13845 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13845 : InImage map_35_223 image13845 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13845 : Bundle := named_bundle% "RealMapCertificates/relations/basis13845.json"
theorem reductionProof13845 : EqualModuloRelations reduction13845.relations reduction13845.input reduction13845.output := by lin_cert using reduction13845.terms
theorem substitutionProof13845 : IsMapEvaluation generatorImages reduction13845.relations [9,13,864] reduction13845.output := by lin_cert using reduction13845.terms
def map_35_224 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14010 : InImage map_35_224 image14010 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14010 : Bundle := named_bundle% "RealMapCertificates/relations/basis14010.json"
theorem reductionProof14010 : EqualModuloRelations reduction14010.relations reduction14010.input reduction14010.output := by lin_cert using reduction14010.terms
theorem substitutionProof14010 : IsMapEvaluation generatorImages reduction14010.relations [16,138,209] reduction14010.output := by lin_cert using reduction14010.terms
def image14011 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14011 : InImage map_35_224 image14011 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14011 : Bundle := named_bundle% "RealMapCertificates/relations/basis14011.json"
theorem reductionProof14011 : EqualModuloRelations reduction14011.relations reduction14011.input reduction14011.output := by lin_cert using reduction14011.terms
theorem substitutionProof14011 : IsMapEvaluation generatorImages reduction14011.relations [13,13,13,13,23,150] reduction14011.output := by lin_cert using reduction14011.terms
def image14012 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14012 : InImage map_35_224 image14012 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14012 : Bundle := named_bundle% "RealMapCertificates/relations/basis14012.json"
theorem reductionProof14012 : EqualModuloRelations reduction14012.relations reduction14012.input reduction14012.output := by lin_cert using reduction14012.terms
theorem substitutionProof14012 : IsMapEvaluation generatorImages reduction14012.relations [8,9,13,23,292] reduction14012.output := by lin_cert using reduction14012.terms
def image14013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14013 : InImage map_35_224 image14013 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14013 : Bundle := named_bundle% "RealMapCertificates/relations/basis14013.json"
theorem reductionProof14013 : EqualModuloRelations reduction14013.relations reduction14013.input reduction14013.output := by lin_cert using reduction14013.terms
theorem substitutionProof14013 : IsMapEvaluation generatorImages reduction14013.relations [8,8,17,627] reduction14013.output := by lin_cert using reduction14013.terms
def image14014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14014 : InImage map_35_224 image14014 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14014 : Bundle := named_bundle% "RealMapCertificates/relations/basis14014.json"
theorem reductionProof14014 : EqualModuloRelations reduction14014.relations reduction14014.input reduction14014.output := by lin_cert using reduction14014.terms
theorem substitutionProof14014 : IsMapEvaluation generatorImages reduction14014.relations [8,8,8,8,8,384] reduction14014.output := by lin_cert using reduction14014.terms
def image14015 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14015 : InImage map_35_224 image14015 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14015 : Bundle := named_bundle% "RealMapCertificates/relations/basis14015.json"
theorem reductionProof14015 : EqualModuloRelations reduction14015.relations reduction14015.input reduction14015.output := by lin_cert using reduction14015.terms
theorem substitutionProof14015 : IsMapEvaluation generatorImages reduction14015.relations [0,64,642] reduction14015.output := by lin_cert using reduction14015.terms
def map_35_225 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14251 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14251 : InImage map_35_225 image14251 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14251 : Bundle := named_bundle% "RealMapCertificates/relations/basis14251.json"
theorem reductionProof14251 : EqualModuloRelations reduction14251.relations reduction14251.input reduction14251.output := by lin_cert using reduction14251.terms
theorem substitutionProof14251 : IsMapEvaluation generatorImages reduction14251.relations [1638] reduction14251.output := by lin_cert using reduction14251.terms
def image14252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14252 : InImage map_35_225 image14252 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14252 : Bundle := named_bundle% "RealMapCertificates/relations/basis14252.json"
theorem reductionProof14252 : EqualModuloRelations reduction14252.relations reduction14252.input reduction14252.output := by lin_cert using reduction14252.terms
theorem substitutionProof14252 : IsMapEvaluation generatorImages reduction14252.relations [13,13,13,13,13,23,80] reduction14252.output := by lin_cert using reduction14252.terms
def image14253 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14253 : InImage map_35_225 image14253 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14253 : Bundle := named_bundle% "RealMapCertificates/relations/basis14253.json"
theorem reductionProof14253 : EqualModuloRelations reduction14253.relations reduction14253.input reduction14253.output := by lin_cert using reduction14253.terms
theorem substitutionProof14253 : IsMapEvaluation generatorImages reduction14253.relations [8,8,8,779] reduction14253.output := by lin_cert using reduction14253.terms
def image14254 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14254 : InImage map_35_225 image14254 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14254 : Bundle := named_bundle% "RealMapCertificates/relations/basis14254.json"
theorem reductionProof14254 : EqualModuloRelations reduction14254.relations reduction14254.input reduction14254.output := by lin_cert using reduction14254.terms
theorem substitutionProof14254 : IsMapEvaluation generatorImages reduction14254.relations [8,8,8,9,13,13,188] reduction14254.output := by lin_cert using reduction14254.terms
def image14255 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14255 : InImage map_35_225 image14255 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14255 : Bundle := named_bundle% "RealMapCertificates/relations/basis14255.json"
theorem reductionProof14255 : EqualModuloRelations reduction14255.relations reduction14255.input reduction14255.output := by lin_cert using reduction14255.terms
theorem substitutionProof14255 : IsMapEvaluation generatorImages reduction14255.relations [1,64,642] reduction14255.output := by lin_cert using reduction14255.terms
def image14256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14256 : InImage map_35_225 image14256 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14256 : Bundle := named_bundle% "RealMapCertificates/relations/basis14256.json"
theorem reductionProof14256 : EqualModuloRelations reduction14256.relations reduction14256.input reduction14256.output := by lin_cert using reduction14256.terms
theorem substitutionProof14256 : IsMapEvaluation generatorImages reduction14256.relations [0,0,1606] reduction14256.output := by lin_cert using reduction14256.terms
def map_35_226 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14394 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14394 : InImage map_35_226 image14394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14394 : Bundle := named_bundle% "RealMapCertificates/relations/basis14394.json"
theorem reductionProof14394 : EqualModuloRelations reduction14394.relations reduction14394.input reduction14394.output := by lin_cert using reduction14394.terms
theorem substitutionProof14394 : IsMapEvaluation generatorImages reduction14394.relations [193,278] reduction14394.output := by lin_cert using reduction14394.terms
def image14395 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14395 : InImage map_35_226 image14395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14395 : Bundle := named_bundle% "RealMapCertificates/relations/basis14395.json"
theorem reductionProof14395 : EqualModuloRelations reduction14395.relations reduction14395.input reduction14395.output := by lin_cert using reduction14395.terms
theorem substitutionProof14395 : IsMapEvaluation generatorImages reduction14395.relations [13,13,864] reduction14395.output := by lin_cert using reduction14395.terms
def image14396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14396 : InImage map_35_226 image14396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14396 : Bundle := named_bundle% "RealMapCertificates/relations/basis14396.json"
theorem reductionProof14396 : EqualModuloRelations reduction14396.relations reduction14396.input reduction14396.output := by lin_cert using reduction14396.terms
theorem substitutionProof14396 : IsMapEvaluation generatorImages reduction14396.relations [0,0,0,0,0,64,627] reduction14396.output := by lin_cert using reduction14396.terms
def map_35_227 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14589 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14589 : InImage map_35_227 image14589 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14589 : Bundle := named_bundle% "RealMapCertificates/relations/basis14589.json"
theorem reductionProof14589 : EqualModuloRelations reduction14589.relations reduction14589.input reduction14589.output := by lin_cert using reduction14589.terms
theorem substitutionProof14589 : IsMapEvaluation generatorImages reduction14589.relations [8,64,518] reduction14589.output := by lin_cert using reduction14589.terms
def image14590 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14590 : InImage map_35_227 image14590 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14590 : Bundle := named_bundle% "RealMapCertificates/relations/basis14590.json"
theorem reductionProof14590 : EqualModuloRelations reduction14590.relations reduction14590.input reduction14590.output := by lin_cert using reduction14590.terms
theorem substitutionProof14590 : IsMapEvaluation generatorImages reduction14590.relations [8,13,13,23,292] reduction14590.output := by lin_cert using reduction14590.terms
def image14591 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14591 : InImage map_35_227 image14591 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14591 : Bundle := named_bundle% "RealMapCertificates/relations/basis14591.json"
theorem reductionProof14591 : EqualModuloRelations reduction14591.relations reduction14591.input reduction14591.output := by lin_cert using reduction14591.terms
theorem substitutionProof14591 : IsMapEvaluation generatorImages reduction14591.relations [8,8,17,655] reduction14591.output := by lin_cert using reduction14591.terms
def image14592 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14592 : InImage map_35_227 image14592 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14592 : Bundle := named_bundle% "RealMapCertificates/relations/basis14592.json"
theorem reductionProof14592 : EqualModuloRelations reduction14592.relations reduction14592.input reduction14592.output := by lin_cert using reduction14592.terms
theorem substitutionProof14592 : IsMapEvaluation generatorImages reduction14592.relations [8,8,8,8,8,423] reduction14592.output := by lin_cert using reduction14592.terms
def image14593 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14593 : InImage map_35_227 image14593 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14593 : Bundle := named_bundle% "RealMapCertificates/relations/basis14593.json"
theorem reductionProof14593 : EqualModuloRelations reduction14593.relations reduction14593.input reduction14593.output := by lin_cert using reduction14593.terms
theorem substitutionProof14593 : IsMapEvaluation generatorImages reduction14593.relations [0,0,0,0,64,645] reduction14593.output := by lin_cert using reduction14593.terms
def image14594 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14594 : InImage map_35_227 image14594 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14594 : Bundle := named_bundle% "RealMapCertificates/relations/basis14594.json"
theorem reductionProof14594 : EqualModuloRelations reduction14594.relations reduction14594.input reduction14594.output := by lin_cert using reduction14594.terms
theorem substitutionProof14594 : IsMapEvaluation generatorImages reduction14594.relations [0,0,0,0,0,0,188,260] reduction14594.output := by lin_cert using reduction14594.terms
def map_35_228 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image14824 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14824 : InImage map_35_228 image14824 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14824 : Bundle := named_bundle% "RealMapCertificates/relations/basis14824.json"
theorem reductionProof14824 : EqualModuloRelations reduction14824.relations reduction14824.input reduction14824.output := by lin_cert using reduction14824.terms
theorem substitutionProof14824 : IsMapEvaluation generatorImages reduction14824.relations [8,1366] reduction14824.output := by lin_cert using reduction14824.terms
def image14825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14825 : InImage map_35_228 image14825 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14825 : Bundle := named_bundle% "RealMapCertificates/relations/basis14825.json"
theorem reductionProof14825 : EqualModuloRelations reduction14825.relations reduction14825.input reduction14825.output := by lin_cert using reduction14825.terms
theorem substitutionProof14825 : IsMapEvaluation generatorImages reduction14825.relations [8,8,8,813] reduction14825.output := by lin_cert using reduction14825.terms
def image14826 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14826 : InImage map_35_228 image14826 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14826 : Bundle := named_bundle% "RealMapCertificates/relations/basis14826.json"
theorem reductionProof14826 : EqualModuloRelations reduction14826.relations reduction14826.input reduction14826.output := by lin_cert using reduction14826.terms
theorem substitutionProof14826 : IsMapEvaluation generatorImages reduction14826.relations [8,8,8,13,13,13,188] reduction14826.output := by lin_cert using reduction14826.terms
def image14827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14827 : InImage map_35_228 image14827 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14827 : Bundle := named_bundle% "RealMapCertificates/relations/basis14827.json"
theorem reductionProof14827 : EqualModuloRelations reduction14827.relations reduction14827.input reduction14827.output := by lin_cert using reduction14827.terms
theorem substitutionProof14827 : IsMapEvaluation generatorImages reduction14827.relations [0,0,0,0,0,0,1596] reduction14827.output := by lin_cert using reduction14827.terms
def map_35_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14995 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14995 : InImage map_35_229 image14995 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14995 : Bundle := named_bundle% "RealMapCertificates/relations/basis14995.json"
theorem reductionProof14995 : EqualModuloRelations reduction14995.relations reduction14995.input reduction14995.output := by lin_cert using reduction14995.terms
theorem substitutionProof14995 : IsMapEvaluation generatorImages reduction14995.relations [64,715] reduction14995.output := by lin_cert using reduction14995.terms
def image14996 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14996 : InImage map_35_229 image14996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14996 : Bundle := named_bundle% "RealMapCertificates/relations/basis14996.json"
theorem reductionProof14996 : EqualModuloRelations reduction14996.relations reduction14996.input reduction14996.output := by lin_cert using reduction14996.terms
theorem substitutionProof14996 : IsMapEvaluation generatorImages reduction14996.relations [8,1384] reduction14996.output := by lin_cert using reduction14996.terms
def map_35_230 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image15185 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15185 : InImage map_35_230 image15185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15185 : Bundle := named_bundle% "RealMapCertificates/relations/basis15185.json"
theorem reductionProof15185 : EqualModuloRelations reduction15185.relations reduction15185.input reduction15185.output := by lin_cert using reduction15185.terms
theorem substitutionProof15185 : IsMapEvaluation generatorImages reduction15185.relations [9,13,13,23,292] reduction15185.output := by lin_cert using reduction15185.terms
def image15186 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15186 : InImage map_35_230 image15186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15186 : Bundle := named_bundle% "RealMapCertificates/relations/basis15186.json"
theorem reductionProof15186 : EqualModuloRelations reduction15186.relations reduction15186.input reduction15186.output := by lin_cert using reduction15186.terms
theorem substitutionProof15186 : IsMapEvaluation generatorImages reduction15186.relations [8,8,138,209] reduction15186.output := by lin_cert using reduction15186.terms
def image15187 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15187 : InImage map_35_230 image15187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15187 : Bundle := named_bundle% "RealMapCertificates/relations/basis15187.json"
theorem reductionProof15187 : EqualModuloRelations reduction15187.relations reduction15187.input reduction15187.output := by lin_cert using reduction15187.terms
theorem substitutionProof15187 : IsMapEvaluation generatorImages reduction15187.relations [8,8,8,832] reduction15187.output := by lin_cert using reduction15187.terms
def image15188 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15188 : InImage map_35_230 image15188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15188 : Bundle := named_bundle% "RealMapCertificates/relations/basis15188.json"
theorem reductionProof15188 : EqualModuloRelations reduction15188.relations reduction15188.input reduction15188.output := by lin_cert using reduction15188.terms
theorem substitutionProof15188 : IsMapEvaluation generatorImages reduction15188.relations [8,8,8,8,9,423] reduction15188.output := by lin_cert using reduction15188.terms
def map_35_231 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image15448 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15448 : InImage map_35_231 image15448 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15448 : Bundle := named_bundle% "RealMapCertificates/relations/basis15448.json"
theorem reductionProof15448 : EqualModuloRelations reduction15448.relations reduction15448.input reduction15448.output := by lin_cert using reduction15448.terms
theorem substitutionProof15448 : IsMapEvaluation generatorImages reduction15448.relations [9,1366] reduction15448.output := by lin_cert using reduction15448.terms
def image15449 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15449 : InImage map_35_231 image15449 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15449 : Bundle := named_bundle% "RealMapCertificates/relations/basis15449.json"
theorem reductionProof15449 : EqualModuloRelations reduction15449.relations reduction15449.input reduction15449.output := by lin_cert using reduction15449.terms
theorem substitutionProof15449 : IsMapEvaluation generatorImages reduction15449.relations [8,8,9,13,13,13,188] reduction15449.output := by lin_cert using reduction15449.terms
def image15450 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15450 : InImage map_35_231 image15450 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15450 : Bundle := named_bundle% "RealMapCertificates/relations/basis15450.json"
theorem reductionProof15450 : EqualModuloRelations reduction15450.relations reduction15450.input reduction15450.output := by lin_cert using reduction15450.terms
theorem substitutionProof15450 : IsMapEvaluation generatorImages reduction15450.relations [8,8,8,8,638] reduction15450.output := by lin_cert using reduction15450.terms
def map_35_232 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15623 : InImage map_35_232 image15623 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15623 : Bundle := named_bundle% "RealMapCertificates/relations/basis15623.json"
theorem reductionProof15623 : EqualModuloRelations reduction15623.relations reduction15623.input reduction15623.output := by lin_cert using reduction15623.terms
theorem substitutionProof15623 : IsMapEvaluation generatorImages reduction15623.relations [72,715] reduction15623.output := by lin_cert using reduction15623.terms
def image15624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15624 : InImage map_35_232 image15624 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15624 : Bundle := named_bundle% "RealMapCertificates/relations/basis15624.json"
theorem reductionProof15624 : EqualModuloRelations reduction15624.relations reduction15624.input reduction15624.output := by lin_cert using reduction15624.terms
theorem substitutionProof15624 : IsMapEvaluation generatorImages reduction15624.relations [13,13,23,537] reduction15624.output := by lin_cert using reduction15624.terms
def image15625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15625 : InImage map_35_232 image15625 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15625 : Bundle := named_bundle% "RealMapCertificates/relations/basis15625.json"
theorem reductionProof15625 : EqualModuloRelations reduction15625.relations reduction15625.input reduction15625.output := by lin_cert using reduction15625.terms
theorem substitutionProof15625 : IsMapEvaluation generatorImages reduction15625.relations [13,13,13,13,13,13,13,67] reduction15625.output := by lin_cert using reduction15625.terms
def image15626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15626 : InImage map_35_232 image15626 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15626 : Bundle := named_bundle% "RealMapCertificates/relations/basis15626.json"
theorem reductionProof15626 : EqualModuloRelations reduction15626.relations reduction15626.input reduction15626.output := by lin_cert using reduction15626.terms
theorem substitutionProof15626 : IsMapEvaluation generatorImages reduction15626.relations [8,1440] reduction15626.output := by lin_cert using reduction15626.terms
def image15627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15627 : InImage map_35_232 image15627 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15627 : Bundle := named_bundle% "RealMapCertificates/relations/basis15627.json"
theorem reductionProof15627 : EqualModuloRelations reduction15627.relations reduction15627.input reduction15627.output := by lin_cert using reduction15627.terms
theorem substitutionProof15627 : IsMapEvaluation generatorImages reduction15627.relations [0,0,0,0,64,64,188] reduction15627.output := by lin_cert using reduction15627.terms
def map_35_233 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15842 : InImage map_35_233 image15842 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15842 : Bundle := named_bundle% "RealMapCertificates/relations/basis15842.json"
theorem reductionProof15842 : EqualModuloRelations reduction15842.relations reduction15842.input reduction15842.output := by lin_cert using reduction15842.terms
theorem substitutionProof15842 : IsMapEvaluation generatorImages reduction15842.relations [1813] reduction15842.output := by lin_cert using reduction15842.terms
def image15843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15843 : InImage map_35_233 image15843 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15843 : Bundle := named_bundle% "RealMapCertificates/relations/basis15843.json"
theorem reductionProof15843 : EqualModuloRelations reduction15843.relations reduction15843.input reduction15843.output := by lin_cert using reduction15843.terms
theorem substitutionProof15843 : IsMapEvaluation generatorImages reduction15843.relations [13,13,13,23,292] reduction15843.output := by lin_cert using reduction15843.terms
def image15844 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15844 : InImage map_35_233 image15844 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15844 : Bundle := named_bundle% "RealMapCertificates/relations/basis15844.json"
theorem reductionProof15844 : EqualModuloRelations reduction15844.relations reduction15844.input reduction15844.output := by lin_cert using reduction15844.terms
theorem substitutionProof15844 : IsMapEvaluation generatorImages reduction15844.relations [8,8,64,383] reduction15844.output := by lin_cert using reduction15844.terms
def image15845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15845 : InImage map_35_233 image15845 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15845 : Bundle := named_bundle% "RealMapCertificates/relations/basis15845.json"
theorem reductionProof15845 : EqualModuloRelations reduction15845.relations reduction15845.input reduction15845.output := by lin_cert using reduction15845.terms
theorem substitutionProof15845 : IsMapEvaluation generatorImages reduction15845.relations [8,8,8,874] reduction15845.output := by lin_cert using reduction15845.terms
def image15846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15846 : InImage map_35_233 image15846 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15846 : Bundle := named_bundle% "RealMapCertificates/relations/basis15846.json"
theorem reductionProof15846 : EqualModuloRelations reduction15846.relations reduction15846.input reduction15846.output := by lin_cert using reduction15846.terms
theorem substitutionProof15846 : IsMapEvaluation generatorImages reduction15846.relations [8,8,8,8,13,423] reduction15846.output := by lin_cert using reduction15846.terms
end RealMapCertificates
