import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 76 => []
  | 80 => []
  | 95 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 188 => []
  | 209 => []
  | 255 => []
  | 260 => []
  | 266 => []
  | 280 => []
  | 293 => []
  | 318 => []
  | 328 => []
  | 423 => []
  | 627 => []
  | 668 => []
  | 705 => []
  | 760 => []
  | 798 => []
  | 812 => []
  | 832 => []
  | 898 => []
  | 901 => []
  | 976 => []
  | 1062 => []
  | 1255 => []
  | 1290 => []
  | 1337 => []
  | 1366 => [[7,9,12,12,12]]
  | 1441 => []
  | 1473 => []
  | 1503 => []
  | 1539 => []
  | 1682 => []
  | 1720 => []
  | 1739 => []
  | 1773 => []
  | 1774 => []
  | 1775 => []
  | 1857 => []
  | 1892 => []
  | 1901 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1968 => []
  | 1992 => []
  | 1993 => []
  | 1994 => []
  | 2038 => []
  | 2039 => []
  | 2059 => []
  | 2060 => []
  | 2094 => []
  | 2095 => []
  | 2097 => []
  | 2121 => []
  | 2122 => []
  | 2123 => []
  | 2125 => []
  | 2164 => []
  | 2165 => []
  | 2197 => []
  | 2240 => []
  | 2241 => []
  | 2302 => []
  | 2334 => []
  | _ => []
def map_35_234 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16096 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16096 : InImage map_35_234 image16096 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16096 : Bundle := named_bundle% "RealMapCertificates/relations/basis16096.json"
theorem reductionProof16096 : EqualModuloRelations reduction16096.relations reduction16096.input reduction16096.output := by lin_cert using reduction16096.terms
theorem substitutionProof16096 : IsMapEvaluation generatorImages reduction16096.relations [13,1366] reduction16096.output := by lin_cert using reduction16096.terms
def image16097 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16097 : InImage map_35_234 image16097 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16097 : Bundle := named_bundle% "RealMapCertificates/relations/basis16097.json"
theorem reductionProof16097 : EqualModuloRelations reduction16097.relations reduction16097.input reduction16097.output := by lin_cert using reduction16097.terms
theorem substitutionProof16097 : IsMapEvaluation generatorImages reduction16097.relations [8,8,13,13,13,13,188] reduction16097.output := by lin_cert using reduction16097.terms
def image16098 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16098 : InImage map_35_234 image16098 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16098 : Bundle := named_bundle% "RealMapCertificates/relations/basis16098.json"
theorem reductionProof16098 : EqualModuloRelations reduction16098.relations reduction16098.input reduction16098.output := by lin_cert using reduction16098.terms
theorem substitutionProof16098 : IsMapEvaluation generatorImages reduction16098.relations [8,8,8,8,668] reduction16098.output := by lin_cert using reduction16098.terms
def map_35_235 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16289 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16289 : InImage map_35_235 image16289 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16289 : Bundle := named_bundle% "RealMapCertificates/relations/basis16289.json"
theorem reductionProof16289 : EqualModuloRelations reduction16289.relations reduction16289.input reduction16289.output := by lin_cert using reduction16289.terms
theorem substitutionProof16289 : IsMapEvaluation generatorImages reduction16289.relations [1857] reduction16289.output := by lin_cert using reduction16289.terms
def image16290 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16290 : InImage map_35_235 image16290 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16290 : Bundle := named_bundle% "RealMapCertificates/relations/basis16290.json"
theorem reductionProof16290 : EqualModuloRelations reduction16290.relations reduction16290.input reduction16290.output := by lin_cert using reduction16290.terms
theorem substitutionProof16290 : IsMapEvaluation generatorImages reduction16290.relations [8,1503] reduction16290.output := by lin_cert using reduction16290.terms
def image16291 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16291 : InImage map_35_235 image16291 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16291 : Bundle := named_bundle% "RealMapCertificates/relations/basis16291.json"
theorem reductionProof16291 : EqualModuloRelations reduction16291.relations reduction16291.input reduction16291.output := by lin_cert using reduction16291.terms
theorem substitutionProof16291 : IsMapEvaluation generatorImages reduction16291.relations [8,149,293] reduction16291.output := by lin_cert using reduction16291.terms
def image16292 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16292 : InImage map_35_235 image16292 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16292 : Bundle := named_bundle% "RealMapCertificates/relations/basis16292.json"
theorem reductionProof16292 : EqualModuloRelations reduction16292.relations reduction16292.input reduction16292.output := by lin_cert using reduction16292.terms
theorem substitutionProof16292 : IsMapEvaluation generatorImages reduction16292.relations [5,64,627] reduction16292.output := by lin_cert using reduction16292.terms
def map_35_236 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image16514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16514 : InImage map_35_236 image16514 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16514 : Bundle := named_bundle% "RealMapCertificates/relations/basis16514.json"
theorem reductionProof16514 : EqualModuloRelations reduction16514.relations reduction16514.input reduction16514.output := by lin_cert using reduction16514.terms
theorem substitutionProof16514 : IsMapEvaluation generatorImages reduction16514.relations [1892] reduction16514.output := by lin_cert using reduction16514.terms
def image16515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16515 : InImage map_35_236 image16515 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16515 : Bundle := named_bundle% "RealMapCertificates/relations/basis16515.json"
theorem reductionProof16515 : EqualModuloRelations reduction16515.relations reduction16515.input reduction16515.output := by lin_cert using reduction16515.terms
theorem substitutionProof16515 : IsMapEvaluation generatorImages reduction16515.relations [8,8,16,760] reduction16515.output := by lin_cert using reduction16515.terms
def image16516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16516 : InImage map_35_236 image16516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16516 : Bundle := named_bundle% "RealMapCertificates/relations/basis16516.json"
theorem reductionProof16516 : EqualModuloRelations reduction16516.relations reduction16516.input reduction16516.output := by lin_cert using reduction16516.terms
theorem substitutionProof16516 : IsMapEvaluation generatorImages reduction16516.relations [8,8,8,901] reduction16516.output := by lin_cert using reduction16516.terms
def image16517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16517 : InImage map_35_236 image16517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16517 : Bundle := named_bundle% "RealMapCertificates/relations/basis16517.json"
theorem reductionProof16517 : EqualModuloRelations reduction16517.relations reduction16517.input reduction16517.output := by lin_cert using reduction16517.terms
theorem substitutionProof16517 : IsMapEvaluation generatorImages reduction16517.relations [8,8,8,9,13,423] reduction16517.output := by lin_cert using reduction16517.terms
def map_35_237 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image16776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16776 : InImage map_35_237 image16776 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16776 : Bundle := named_bundle% "RealMapCertificates/relations/basis16776.json"
theorem reductionProof16776 : EqualModuloRelations reduction16776.relations reduction16776.input reduction16776.output := by lin_cert using reduction16776.terms
theorem substitutionProof16776 : IsMapEvaluation generatorImages reduction16776.relations [8,9,13,13,13,13,188] reduction16776.output := by lin_cert using reduction16776.terms
def image16777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16777 : InImage map_35_237 image16777 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16777 : Bundle := named_bundle% "RealMapCertificates/relations/basis16777.json"
theorem reductionProof16777 : EqualModuloRelations reduction16777.relations reduction16777.input reduction16777.output := by lin_cert using reduction16777.terms
theorem substitutionProof16777 : IsMapEvaluation generatorImages reduction16777.relations [8,8,8,8,705] reduction16777.output := by lin_cert using reduction16777.terms
def map_35_238 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image16957 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16957 : InImage map_35_238 image16957 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16957 : Bundle := named_bundle% "RealMapCertificates/relations/basis16957.json"
theorem reductionProof16957 : EqualModuloRelations reduction16957.relations reduction16957.input reduction16957.output := by lin_cert using reduction16957.terms
theorem substitutionProof16957 : IsMapEvaluation generatorImages reduction16957.relations [1926] reduction16957.output := by lin_cert using reduction16957.terms
def image16958 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16958 : InImage map_35_238 image16958 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16958 : Bundle := named_bundle% "RealMapCertificates/relations/basis16958.json"
theorem reductionProof16958 : EqualModuloRelations reduction16958.relations reduction16958.input reduction16958.output := by lin_cert using reduction16958.terms
theorem substitutionProof16958 : IsMapEvaluation generatorImages reduction16958.relations [9,1503] reduction16958.output := by lin_cert using reduction16958.terms
def image16959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16959 : InImage map_35_238 image16959 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16959 : Bundle := named_bundle% "RealMapCertificates/relations/basis16959.json"
theorem reductionProof16959 : EqualModuloRelations reduction16959.relations reduction16959.input reduction16959.output := by lin_cert using reduction16959.terms
theorem substitutionProof16959 : IsMapEvaluation generatorImages reduction16959.relations [9,13,13,13,13,13,13,95] reduction16959.output := by lin_cert using reduction16959.terms
def image16960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16960 : InImage map_35_238 image16960 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16960 : Bundle := named_bundle% "RealMapCertificates/relations/basis16960.json"
theorem reductionProof16960 : EqualModuloRelations reduction16960.relations reduction16960.input reduction16960.output := by lin_cert using reduction16960.terms
theorem substitutionProof16960 : IsMapEvaluation generatorImages reduction16960.relations [8,160,293] reduction16960.output := by lin_cert using reduction16960.terms
def image16961 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16961 : InImage map_35_238 image16961 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16961 : Bundle := named_bundle% "RealMapCertificates/relations/basis16961.json"
theorem reductionProof16961 : EqualModuloRelations reduction16961.relations reduction16961.input reduction16961.output := by lin_cert using reduction16961.terms
theorem substitutionProof16961 : IsMapEvaluation generatorImages reduction16961.relations [0,1901] reduction16961.output := by lin_cert using reduction16961.terms
def image16962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16962 : InImage map_35_238 image16962 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16962 : Bundle := named_bundle% "RealMapCertificates/relations/basis16962.json"
theorem reductionProof16962 : EqualModuloRelations reduction16962.relations reduction16962.input reduction16962.output := by lin_cert using reduction16962.terms
theorem substitutionProof16962 : IsMapEvaluation generatorImages reduction16962.relations [0,64,812] reduction16962.output := by lin_cert using reduction16962.terms
def map_35_239 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17205 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17205 : InImage map_35_239 image17205 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17205 : Bundle := named_bundle% "RealMapCertificates/relations/basis17205.json"
theorem reductionProof17205 : EqualModuloRelations reduction17205.relations reduction17205.input reduction17205.output := by lin_cert using reduction17205.terms
theorem substitutionProof17205 : IsMapEvaluation generatorImages reduction17205.relations [1968] reduction17205.output := by lin_cert using reduction17205.terms
def image17206 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17206 : InImage map_35_239 image17206 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17206 : Bundle := named_bundle% "RealMapCertificates/relations/basis17206.json"
theorem reductionProof17206 : EqualModuloRelations reduction17206.relations reduction17206.input reduction17206.output := by lin_cert using reduction17206.terms
theorem substitutionProof17206 : IsMapEvaluation generatorImages reduction17206.relations [1967] reduction17206.output := by lin_cert using reduction17206.terms
def image17207 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17207 : InImage map_35_239 image17207 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17207 : Bundle := named_bundle% "RealMapCertificates/relations/basis17207.json"
theorem reductionProof17207 : EqualModuloRelations reduction17207.relations reduction17207.input reduction17207.output := by lin_cert using reduction17207.terms
theorem substitutionProof17207 : IsMapEvaluation generatorImages reduction17207.relations [8,8,9,901] reduction17207.output := by lin_cert using reduction17207.terms
def image17208 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17208 : InImage map_35_239 image17208 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17208 : Bundle := named_bundle% "RealMapCertificates/relations/basis17208.json"
theorem reductionProof17208 : EqualModuloRelations reduction17208.relations reduction17208.input reduction17208.output := by lin_cert using reduction17208.terms
theorem substitutionProof17208 : IsMapEvaluation generatorImages reduction17208.relations [8,8,8,64,280] reduction17208.output := by lin_cert using reduction17208.terms
def image17209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17209 : InImage map_35_239 image17209 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17209 : Bundle := named_bundle% "RealMapCertificates/relations/basis17209.json"
theorem reductionProof17209 : EqualModuloRelations reduction17209.relations reduction17209.input reduction17209.output := by lin_cert using reduction17209.terms
theorem substitutionProof17209 : IsMapEvaluation generatorImages reduction17209.relations [8,8,8,13,13,423] reduction17209.output := by lin_cert using reduction17209.terms
def image17210 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17210 : InImage map_35_239 image17210 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17210 : Bundle := named_bundle% "RealMapCertificates/relations/basis17210.json"
theorem reductionProof17210 : EqualModuloRelations reduction17210.relations reduction17210.input reduction17210.output := by lin_cert using reduction17210.terms
theorem substitutionProof17210 : IsMapEvaluation generatorImages reduction17210.relations [1,1901] reduction17210.output := by lin_cert using reduction17210.terms
def map_35_240 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17472 : InImage map_35_240 image17472 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17472 : Bundle := named_bundle% "RealMapCertificates/relations/basis17472.json"
theorem reductionProof17472 : EqualModuloRelations reduction17472.relations reduction17472.input reduction17472.output := by lin_cert using reduction17472.terms
theorem substitutionProof17472 : IsMapEvaluation generatorImages reduction17472.relations [1992] reduction17472.output := by lin_cert using reduction17472.terms
def image17473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17473 : InImage map_35_240 image17473 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17473 : Bundle := named_bundle% "RealMapCertificates/relations/basis17473.json"
theorem reductionProof17473 : EqualModuloRelations reduction17473.relations reduction17473.input reduction17473.output := by lin_cert using reduction17473.terms
theorem substitutionProof17473 : IsMapEvaluation generatorImages reduction17473.relations [23,1255] reduction17473.output := by lin_cert using reduction17473.terms
def image17474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17474 : InImage map_35_240 image17474 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17474 : Bundle := named_bundle% "RealMapCertificates/relations/basis17474.json"
theorem reductionProof17474 : EqualModuloRelations reduction17474.relations reduction17474.input reduction17474.output := by lin_cert using reduction17474.terms
theorem substitutionProof17474 : IsMapEvaluation generatorImages reduction17474.relations [13,13,13,13,13,266] reduction17474.output := by lin_cert using reduction17474.terms
def image17475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17475 : InImage map_35_240 image17475 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17475 : Bundle := named_bundle% "RealMapCertificates/relations/basis17475.json"
theorem reductionProof17475 : EqualModuloRelations reduction17475.relations reduction17475.input reduction17475.output := by lin_cert using reduction17475.terms
theorem substitutionProof17475 : IsMapEvaluation generatorImages reduction17475.relations [8,13,13,13,13,13,188] reduction17475.output := by lin_cert using reduction17475.terms
def image17476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17476 : InImage map_35_240 image17476 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17476 : Bundle := named_bundle% "RealMapCertificates/relations/basis17476.json"
theorem reductionProof17476 : EqualModuloRelations reduction17476.relations reduction17476.input reduction17476.output := by lin_cert using reduction17476.terms
theorem substitutionProof17476 : IsMapEvaluation generatorImages reduction17476.relations [8,8,8,9,705] reduction17476.output := by lin_cert using reduction17476.terms
def image17477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17477 : InImage map_35_240 image17477 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17477 : Bundle := named_bundle% "RealMapCertificates/relations/basis17477.json"
theorem reductionProof17477 : EqualModuloRelations reduction17477.relations reduction17477.input reduction17477.output := by lin_cert using reduction17477.terms
theorem substitutionProof17477 : IsMapEvaluation generatorImages reduction17477.relations [0,0,1927] reduction17477.output := by lin_cert using reduction17477.terms
def map_35_241 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17721 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17721 : InImage map_35_241 image17721 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17721 : Bundle := named_bundle% "RealMapCertificates/relations/basis17721.json"
theorem reductionProof17721 : EqualModuloRelations reduction17721.relations reduction17721.input reduction17721.output := by lin_cert using reduction17721.terms
theorem substitutionProof17721 : IsMapEvaluation generatorImages reduction17721.relations [2038] reduction17721.output := by lin_cert using reduction17721.terms
def image17722 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17722 : InImage map_35_241 image17722 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17722 : Bundle := named_bundle% "RealMapCertificates/relations/basis17722.json"
theorem reductionProof17722 : EqualModuloRelations reduction17722.relations reduction17722.input reduction17722.output := by lin_cert using reduction17722.terms
theorem substitutionProof17722 : IsMapEvaluation generatorImages reduction17722.relations [13,1503] reduction17722.output := by lin_cert using reduction17722.terms
def image17723 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17723 : InImage map_35_241 image17723 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17723 : Bundle := named_bundle% "RealMapCertificates/relations/basis17723.json"
theorem reductionProof17723 : EqualModuloRelations reduction17723.relations reduction17723.input reduction17723.output := by lin_cert using reduction17723.terms
theorem substitutionProof17723 : IsMapEvaluation generatorImages reduction17723.relations [13,13,13,13,13,13,13,95] reduction17723.output := by lin_cert using reduction17723.terms
def image17724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17724 : InImage map_35_241 image17724 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17724 : Bundle := named_bundle% "RealMapCertificates/relations/basis17724.json"
theorem reductionProof17724 : EqualModuloRelations reduction17724.relations reduction17724.input reduction17724.output := by lin_cert using reduction17724.terms
theorem substitutionProof17724 : IsMapEvaluation generatorImages reduction17724.relations [8,8,1290] reduction17724.output := by lin_cert using reduction17724.terms
def image17725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17725 : InImage map_35_241 image17725 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17725 : Bundle := named_bundle% "RealMapCertificates/relations/basis17725.json"
theorem reductionProof17725 : EqualModuloRelations reduction17725.relations reduction17725.input reduction17725.output := by lin_cert using reduction17725.terms
theorem substitutionProof17725 : IsMapEvaluation generatorImages reduction17725.relations [0,1994] reduction17725.output := by lin_cert using reduction17725.terms
def image17726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17726 : InImage map_35_241 image17726 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17726 : Bundle := named_bundle% "RealMapCertificates/relations/basis17726.json"
theorem reductionProof17726 : EqualModuloRelations reduction17726.relations reduction17726.input reduction17726.output := by lin_cert using reduction17726.terms
theorem substitutionProof17726 : IsMapEvaluation generatorImages reduction17726.relations [0,1993] reduction17726.output := by lin_cert using reduction17726.terms
def map_35_242 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17980 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17980 : InImage map_35_242 image17980 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17980 : Bundle := named_bundle% "RealMapCertificates/relations/basis17980.json"
theorem reductionProof17980 : EqualModuloRelations reduction17980.relations reduction17980.input reduction17980.output := by lin_cert using reduction17980.terms
theorem substitutionProof17980 : IsMapEvaluation generatorImages reduction17980.relations [2059] reduction17980.output := by lin_cert using reduction17980.terms
def image17981 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17981 : InImage map_35_242 image17981 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17981 : Bundle := named_bundle% "RealMapCertificates/relations/basis17981.json"
theorem reductionProof17981 : EqualModuloRelations reduction17981.relations reduction17981.input reduction17981.output := by lin_cert using reduction17981.terms
theorem substitutionProof17981 : IsMapEvaluation generatorImages reduction17981.relations [8,8,13,901] reduction17981.output := by lin_cert using reduction17981.terms
def image17982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17982 : InImage map_35_242 image17982 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17982 : Bundle := named_bundle% "RealMapCertificates/relations/basis17982.json"
theorem reductionProof17982 : EqualModuloRelations reduction17982.relations reduction17982.input reduction17982.output := by lin_cert using reduction17982.terms
theorem substitutionProof17982 : IsMapEvaluation generatorImages reduction17982.relations [8,8,9,13,13,423] reduction17982.output := by lin_cert using reduction17982.terms
def image17983 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17983 : InImage map_35_242 image17983 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17983 : Bundle := named_bundle% "RealMapCertificates/relations/basis17983.json"
theorem reductionProof17983 : EqualModuloRelations reduction17983.relations reduction17983.input reduction17983.output := by lin_cert using reduction17983.terms
theorem substitutionProof17983 : IsMapEvaluation generatorImages reduction17983.relations [8,8,8,8,760] reduction17983.output := by lin_cert using reduction17983.terms
def image17984 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17984 : InImage map_35_242 image17984 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17984 : Bundle := named_bundle% "RealMapCertificates/relations/basis17984.json"
theorem reductionProof17984 : EqualModuloRelations reduction17984.relations reduction17984.input reduction17984.output := by lin_cert using reduction17984.terms
theorem substitutionProof17984 : IsMapEvaluation generatorImages reduction17984.relations [1,1994] reduction17984.output := by lin_cert using reduction17984.terms
def image17985 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17985 : InImage map_35_242 image17985 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17985 : Bundle := named_bundle% "RealMapCertificates/relations/basis17985.json"
theorem reductionProof17985 : EqualModuloRelations reduction17985.relations reduction17985.input reduction17985.output := by lin_cert using reduction17985.terms
theorem substitutionProof17985 : IsMapEvaluation generatorImages reduction17985.relations [0,2039] reduction17985.output := by lin_cert using reduction17985.terms
def map_35_243 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image18261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18261 : InImage map_35_243 image18261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18261 : Bundle := named_bundle% "RealMapCertificates/relations/basis18261.json"
theorem reductionProof18261 : EqualModuloRelations reduction18261.relations reduction18261.input reduction18261.output := by lin_cert using reduction18261.terms
theorem substitutionProof18261 : IsMapEvaluation generatorImages reduction18261.relations [64,64,255] reduction18261.output := by lin_cert using reduction18261.terms
def image18262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18262 : InImage map_35_243 image18262 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18262 : Bundle := named_bundle% "RealMapCertificates/relations/basis18262.json"
theorem reductionProof18262 : EqualModuloRelations reduction18262.relations reduction18262.input reduction18262.output := by lin_cert using reduction18262.terms
theorem substitutionProof18262 : IsMapEvaluation generatorImages reduction18262.relations [9,13,13,13,13,13,188] reduction18262.output := by lin_cert using reduction18262.terms
def image18263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18263 : InImage map_35_243 image18263 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18263 : Bundle := named_bundle% "RealMapCertificates/relations/basis18263.json"
theorem reductionProof18263 : EqualModuloRelations reduction18263.relations reduction18263.input reduction18263.output := by lin_cert using reduction18263.terms
theorem substitutionProof18263 : IsMapEvaluation generatorImages reduction18263.relations [8,8,8,13,705] reduction18263.output := by lin_cert using reduction18263.terms
def map_35_244 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18461 : InImage map_35_244 image18461 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18461 : Bundle := named_bundle% "RealMapCertificates/relations/basis18461.json"
theorem reductionProof18461 : EqualModuloRelations reduction18461.relations reduction18461.input reduction18461.output := by lin_cert using reduction18461.terms
theorem substitutionProof18461 : IsMapEvaluation generatorImages reduction18461.relations [17,1441] reduction18461.output := by lin_cert using reduction18461.terms
def image18462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18462 : InImage map_35_244 image18462 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18462 : Bundle := named_bundle% "RealMapCertificates/relations/basis18462.json"
theorem reductionProof18462 : EqualModuloRelations reduction18462.relations reduction18462.input reduction18462.output := by lin_cert using reduction18462.terms
theorem substitutionProof18462 : IsMapEvaluation generatorImages reduction18462.relations [8,8,1337] reduction18462.output := by lin_cert using reduction18462.terms
def image18463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18463 : InImage map_35_244 image18463 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18463 : Bundle := named_bundle% "RealMapCertificates/relations/basis18463.json"
theorem reductionProof18463 : EqualModuloRelations reduction18463.relations reduction18463.input reduction18463.output := by lin_cert using reduction18463.terms
theorem substitutionProof18463 : IsMapEvaluation generatorImages reduction18463.relations [1,2060] reduction18463.output := by lin_cert using reduction18463.terms
def image18464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18464 : InImage map_35_244 image18464 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18464 : Bundle := named_bundle% "RealMapCertificates/relations/basis18464.json"
theorem reductionProof18464 : EqualModuloRelations reduction18464.relations reduction18464.input reduction18464.output := by lin_cert using reduction18464.terms
theorem substitutionProof18464 : IsMapEvaluation generatorImages reduction18464.relations [0,2095] reduction18464.output := by lin_cert using reduction18464.terms
def image18465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18465 : InImage map_35_244 image18465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18465 : Bundle := named_bundle% "RealMapCertificates/relations/basis18465.json"
theorem reductionProof18465 : EqualModuloRelations reduction18465.relations reduction18465.input reduction18465.output := by lin_cert using reduction18465.terms
theorem substitutionProof18465 : IsMapEvaluation generatorImages reduction18465.relations [0,2094] reduction18465.output := by lin_cert using reduction18465.terms
def map_35_245 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image18724 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18724 : InImage map_35_245 image18724 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction18724 : Bundle := named_bundle% "RealMapCertificates/relations/basis18724.json"
theorem reductionProof18724 : EqualModuloRelations reduction18724.relations reduction18724.input reduction18724.output := by lin_cert using reduction18724.terms
theorem substitutionProof18724 : IsMapEvaluation generatorImages reduction18724.relations [64,898] reduction18724.output := by lin_cert using reduction18724.terms
def image18725 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18725 : InImage map_35_245 image18725 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction18725 : Bundle := named_bundle% "RealMapCertificates/relations/basis18725.json"
theorem reductionProof18725 : EqualModuloRelations reduction18725.relations reduction18725.input reduction18725.output := by lin_cert using reduction18725.terms
theorem substitutionProof18725 : IsMapEvaluation generatorImages reduction18725.relations [8,1682] reduction18725.output := by lin_cert using reduction18725.terms
def image18726 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18726 : InImage map_35_245 image18726 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction18726 : Bundle := named_bundle% "RealMapCertificates/relations/basis18726.json"
theorem reductionProof18726 : EqualModuloRelations reduction18726.relations reduction18726.input reduction18726.output := by lin_cert using reduction18726.terms
theorem substitutionProof18726 : IsMapEvaluation generatorImages reduction18726.relations [8,9,13,901] reduction18726.output := by lin_cert using reduction18726.terms
def image18727 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18727 : InImage map_35_245 image18727 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction18727 : Bundle := named_bundle% "RealMapCertificates/relations/basis18727.json"
theorem reductionProof18727 : EqualModuloRelations reduction18727.relations reduction18727.input reduction18727.output := by lin_cert using reduction18727.terms
theorem substitutionProof18727 : IsMapEvaluation generatorImages reduction18727.relations [8,8,13,13,13,423] reduction18727.output := by lin_cert using reduction18727.terms
def image18728 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18728 : InImage map_35_245 image18728 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction18728 : Bundle := named_bundle% "RealMapCertificates/relations/basis18728.json"
theorem reductionProof18728 : EqualModuloRelations reduction18728.relations reduction18728.input reduction18728.output := by lin_cert using reduction18728.terms
theorem substitutionProof18728 : IsMapEvaluation generatorImages reduction18728.relations [8,8,8,8,798] reduction18728.output := by lin_cert using reduction18728.terms
def image18729 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18729 : InImage map_35_245 image18729 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction18729 : Bundle := named_bundle% "RealMapCertificates/relations/basis18729.json"
theorem reductionProof18729 : EqualModuloRelations reduction18729.relations reduction18729.input reduction18729.output := by lin_cert using reduction18729.terms
theorem substitutionProof18729 : IsMapEvaluation generatorImages reduction18729.relations [1,2095] reduction18729.output := by lin_cert using reduction18729.terms
def image18730 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18730 : InImage map_35_245 image18730 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction18730 : Bundle := named_bundle% "RealMapCertificates/relations/basis18730.json"
theorem reductionProof18730 : EqualModuloRelations reduction18730.relations reduction18730.input reduction18730.output := by lin_cert using reduction18730.terms
theorem substitutionProof18730 : IsMapEvaluation generatorImages reduction18730.relations [0,2123] reduction18730.output := by lin_cert using reduction18730.terms
def image18731 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18731 : InImage map_35_245 image18731 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction18731 : Bundle := named_bundle% "RealMapCertificates/relations/basis18731.json"
theorem reductionProof18731 : EqualModuloRelations reduction18731.relations reduction18731.input reduction18731.output := by lin_cert using reduction18731.terms
theorem substitutionProof18731 : IsMapEvaluation generatorImages reduction18731.relations [0,2122] reduction18731.output := by lin_cert using reduction18731.terms
def image18732 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18732 : InImage map_35_245 image18732 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction18732 : Bundle := named_bundle% "RealMapCertificates/relations/basis18732.json"
theorem reductionProof18732 : EqualModuloRelations reduction18732.relations reduction18732.input reduction18732.output := by lin_cert using reduction18732.terms
theorem substitutionProof18732 : IsMapEvaluation generatorImages reduction18732.relations [0,2121] reduction18732.output := by lin_cert using reduction18732.terms
def map_35_246 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19018 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19018 : InImage map_35_246 image19018 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19018 : Bundle := named_bundle% "RealMapCertificates/relations/basis19018.json"
theorem reductionProof19018 : EqualModuloRelations reduction19018.relations reduction19018.input reduction19018.output := by lin_cert using reduction19018.terms
theorem substitutionProof19018 : IsMapEvaluation generatorImages reduction19018.relations [2197] reduction19018.output := by lin_cert using reduction19018.terms
def image19019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19019 : InImage map_35_246 image19019 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19019 : Bundle := named_bundle% "RealMapCertificates/relations/basis19019.json"
theorem reductionProof19019 : EqualModuloRelations reduction19019.relations reduction19019.input reduction19019.output := by lin_cert using reduction19019.terms
theorem substitutionProof19019 : IsMapEvaluation generatorImages reduction19019.relations [13,13,13,13,13,13,188] reduction19019.output := by lin_cert using reduction19019.terms
def image19020 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19020 : InImage map_35_246 image19020 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19020 : Bundle := named_bundle% "RealMapCertificates/relations/basis19020.json"
theorem reductionProof19020 : EqualModuloRelations reduction19020.relations reduction19020.input reduction19020.output := by lin_cert using reduction19020.terms
theorem substitutionProof19020 : IsMapEvaluation generatorImages reduction19020.relations [9,13,13,13,13,328] reduction19020.output := by lin_cert using reduction19020.terms
def image19021 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19021 : InImage map_35_246 image19021 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19021 : Bundle := named_bundle% "RealMapCertificates/relations/basis19021.json"
theorem reductionProof19021 : EqualModuloRelations reduction19021.relations reduction19021.input reduction19021.output := by lin_cert using reduction19021.terms
theorem substitutionProof19021 : IsMapEvaluation generatorImages reduction19021.relations [8,64,64,188] reduction19021.output := by lin_cert using reduction19021.terms
def image19022 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19022 : InImage map_35_246 image19022 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19022 : Bundle := named_bundle% "RealMapCertificates/relations/basis19022.json"
theorem reductionProof19022 : EqualModuloRelations reduction19022.relations reduction19022.input reduction19022.output := by lin_cert using reduction19022.terms
theorem substitutionProof19022 : IsMapEvaluation generatorImages reduction19022.relations [8,8,9,13,705] reduction19022.output := by lin_cert using reduction19022.terms
def image19023 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19023 : InImage map_35_246 image19023 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19023 : Bundle := named_bundle% "RealMapCertificates/relations/basis19023.json"
theorem reductionProof19023 : EqualModuloRelations reduction19023.relations reduction19023.input reduction19023.output := by lin_cert using reduction19023.terms
theorem substitutionProof19023 : IsMapEvaluation generatorImages reduction19023.relations [0,2164] reduction19023.output := by lin_cert using reduction19023.terms
def image19024 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19024 : InImage map_35_246 image19024 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19024 : Bundle := named_bundle% "RealMapCertificates/relations/basis19024.json"
theorem reductionProof19024 : EqualModuloRelations reduction19024.relations reduction19024.input reduction19024.output := by lin_cert using reduction19024.terms
theorem substitutionProof19024 : IsMapEvaluation generatorImages reduction19024.relations [0,0,2125] reduction19024.output := by lin_cert using reduction19024.terms
def map_35_247 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19265 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19265 : InImage map_35_247 image19265 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19265 : Bundle := named_bundle% "RealMapCertificates/relations/basis19265.json"
theorem reductionProof19265 : EqualModuloRelations reduction19265.relations reduction19265.input reduction19265.output := by lin_cert using reduction19265.terms
theorem substitutionProof19265 : IsMapEvaluation generatorImages reduction19265.relations [13,13,13,13,13,13,23,76] reduction19265.output := by lin_cert using reduction19265.terms
def image19266 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19266 : InImage map_35_247 image19266 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19266 : Bundle := named_bundle% "RealMapCertificates/relations/basis19266.json"
theorem reductionProof19266 : EqualModuloRelations reduction19266.relations reduction19266.input reduction19266.output := by lin_cert using reduction19266.terms
theorem substitutionProof19266 : IsMapEvaluation generatorImages reduction19266.relations [8,1720] reduction19266.output := by lin_cert using reduction19266.terms
def image19267 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19267 : InImage map_35_247 image19267 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19267 : Bundle := named_bundle% "RealMapCertificates/relations/basis19267.json"
theorem reductionProof19267 : EqualModuloRelations reduction19267.relations reduction19267.input reduction19267.output := by lin_cert using reduction19267.terms
theorem substitutionProof19267 : IsMapEvaluation generatorImages reduction19267.relations [8,8,8,1062] reduction19267.output := by lin_cert using reduction19267.terms
def image19268 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19268 : InImage map_35_247 image19268 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19268 : Bundle := named_bundle% "RealMapCertificates/relations/basis19268.json"
theorem reductionProof19268 : EqualModuloRelations reduction19268.relations reduction19268.input reduction19268.output := by lin_cert using reduction19268.terms
theorem substitutionProof19268 : IsMapEvaluation generatorImages reduction19268.relations [2,2094] reduction19268.output := by lin_cert using reduction19268.terms
def image19269 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19269 : InImage map_35_247 image19269 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19269 : Bundle := named_bundle% "RealMapCertificates/relations/basis19269.json"
theorem reductionProof19269 : EqualModuloRelations reduction19269.relations reduction19269.input reduction19269.output := by lin_cert using reduction19269.terms
theorem substitutionProof19269 : IsMapEvaluation generatorImages reduction19269.relations [1,2164] reduction19269.output := by lin_cert using reduction19269.terms
def image19270 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19270 : InImage map_35_247 image19270 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19270 : Bundle := named_bundle% "RealMapCertificates/relations/basis19270.json"
theorem reductionProof19270 : EqualModuloRelations reduction19270.relations reduction19270.input reduction19270.output := by lin_cert using reduction19270.terms
theorem substitutionProof19270 : IsMapEvaluation generatorImages reduction19270.relations [0,0,2165] reduction19270.output := by lin_cert using reduction19270.terms
def image19271 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19271 : InImage map_35_247 image19271 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19271 : Bundle := named_bundle% "RealMapCertificates/relations/basis19271.json"
theorem reductionProof19271 : EqualModuloRelations reduction19271.relations reduction19271.input reduction19271.output := by lin_cert using reduction19271.terms
theorem substitutionProof19271 : IsMapEvaluation generatorImages reduction19271.relations [0,0,0,0,2097] reduction19271.output := by lin_cert using reduction19271.terms
def map_35_248 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image19530 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19530 : InImage map_35_248 image19530 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction19530 : Bundle := named_bundle% "RealMapCertificates/relations/basis19530.json"
theorem reductionProof19530 : EqualModuloRelations reduction19530.relations reduction19530.input reduction19530.output := by lin_cert using reduction19530.terms
theorem substitutionProof19530 : IsMapEvaluation generatorImages reduction19530.relations [13,13,13,832] reduction19530.output := by lin_cert using reduction19530.terms
def image19531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19531 : InImage map_35_248 image19531 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction19531 : Bundle := named_bundle% "RealMapCertificates/relations/basis19531.json"
theorem reductionProof19531 : EqualModuloRelations reduction19531.relations reduction19531.input reduction19531.output := by lin_cert using reduction19531.terms
theorem substitutionProof19531 : IsMapEvaluation generatorImages reduction19531.relations [8,1739] reduction19531.output := by lin_cert using reduction19531.terms
def image19532 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19532 : InImage map_35_248 image19532 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction19532 : Bundle := named_bundle% "RealMapCertificates/relations/basis19532.json"
theorem reductionProof19532 : EqualModuloRelations reduction19532.relations reduction19532.input reduction19532.output := by lin_cert using reduction19532.terms
theorem substitutionProof19532 : IsMapEvaluation generatorImages reduction19532.relations [8,13,13,901] reduction19532.output := by lin_cert using reduction19532.terms
def image19533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19533 : InImage map_35_248 image19533 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction19533 : Bundle := named_bundle% "RealMapCertificates/relations/basis19533.json"
theorem reductionProof19533 : EqualModuloRelations reduction19533.relations reduction19533.input reduction19533.output := by lin_cert using reduction19533.terms
theorem substitutionProof19533 : IsMapEvaluation generatorImages reduction19533.relations [8,9,13,13,13,423] reduction19533.output := by lin_cert using reduction19533.terms
def image19534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19534 : InImage map_35_248 image19534 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction19534 : Bundle := named_bundle% "RealMapCertificates/relations/basis19534.json"
theorem reductionProof19534 : EqualModuloRelations reduction19534.relations reduction19534.input reduction19534.output := by lin_cert using reduction19534.terms
theorem substitutionProof19534 : IsMapEvaluation generatorImages reduction19534.relations [8,8,8,8,80,209] reduction19534.output := by lin_cert using reduction19534.terms
def image19535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19535 : InImage map_35_248 image19535 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction19535 : Bundle := named_bundle% "RealMapCertificates/relations/basis19535.json"
theorem reductionProof19535 : EqualModuloRelations reduction19535.relations reduction19535.input reduction19535.output := by lin_cert using reduction19535.terms
theorem substitutionProof19535 : IsMapEvaluation generatorImages reduction19535.relations [2,2121] reduction19535.output := by lin_cert using reduction19535.terms
def image19536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19536 : InImage map_35_248 image19536 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction19536 : Bundle := named_bundle% "RealMapCertificates/relations/basis19536.json"
theorem reductionProof19536 : EqualModuloRelations reduction19536.relations reduction19536.input reduction19536.output := by lin_cert using reduction19536.terms
theorem substitutionProof19536 : IsMapEvaluation generatorImages reduction19536.relations [0,2241] reduction19536.output := by lin_cert using reduction19536.terms
def image19537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19537 : InImage map_35_248 image19537 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction19537 : Bundle := named_bundle% "RealMapCertificates/relations/basis19537.json"
theorem reductionProof19537 : EqualModuloRelations reduction19537.relations reduction19537.input reduction19537.output := by lin_cert using reduction19537.terms
theorem substitutionProof19537 : IsMapEvaluation generatorImages reduction19537.relations [0,2240] reduction19537.output := by lin_cert using reduction19537.terms
def image19538 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19538 : InImage map_35_248 image19538 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction19538 : Bundle := named_bundle% "RealMapCertificates/relations/basis19538.json"
theorem reductionProof19538 : EqualModuloRelations reduction19538.relations reduction19538.input reduction19538.output := by lin_cert using reduction19538.terms
theorem substitutionProof19538 : IsMapEvaluation generatorImages reduction19538.relations [0,260,318] reduction19538.output := by lin_cert using reduction19538.terms
def map_35_249 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19831 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19831 : InImage map_35_249 image19831 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19831 : Bundle := named_bundle% "RealMapCertificates/relations/basis19831.json"
theorem reductionProof19831 : EqualModuloRelations reduction19831.relations reduction19831.input reduction19831.output := by lin_cert using reduction19831.terms
theorem substitutionProof19831 : IsMapEvaluation generatorImages reduction19831.relations [2302] reduction19831.output := by lin_cert using reduction19831.terms
def image19832 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19832 : InImage map_35_249 image19832 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19832 : Bundle := named_bundle% "RealMapCertificates/relations/basis19832.json"
theorem reductionProof19832 : EqualModuloRelations reduction19832.relations reduction19832.input reduction19832.output := by lin_cert using reduction19832.terms
theorem substitutionProof19832 : IsMapEvaluation generatorImages reduction19832.relations [13,13,13,13,13,328] reduction19832.output := by lin_cert using reduction19832.terms
def image19833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19833 : InImage map_35_249 image19833 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19833 : Bundle := named_bundle% "RealMapCertificates/relations/basis19833.json"
theorem reductionProof19833 : EqualModuloRelations reduction19833.relations reduction19833.input reduction19833.output := by lin_cert using reduction19833.terms
theorem substitutionProof19833 : IsMapEvaluation generatorImages reduction19833.relations [8,64,72,188] reduction19833.output := by lin_cert using reduction19833.terms
def image19834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19834 : InImage map_35_249 image19834 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19834 : Bundle := named_bundle% "RealMapCertificates/relations/basis19834.json"
theorem reductionProof19834 : EqualModuloRelations reduction19834.relations reduction19834.input reduction19834.output := by lin_cert using reduction19834.terms
theorem substitutionProof19834 : IsMapEvaluation generatorImages reduction19834.relations [8,8,13,13,705] reduction19834.output := by lin_cert using reduction19834.terms
def map_35_250 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20045 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20045 : InImage map_35_250 image20045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20045 : Bundle := named_bundle% "RealMapCertificates/relations/basis20045.json"
theorem reductionProof20045 : EqualModuloRelations reduction20045.relations reduction20045.input reduction20045.output := by lin_cert using reduction20045.terms
theorem substitutionProof20045 : IsMapEvaluation generatorImages reduction20045.relations [2334] reduction20045.output := by lin_cert using reduction20045.terms
def image20046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20046 : InImage map_35_250 image20046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20046 : Bundle := named_bundle% "RealMapCertificates/relations/basis20046.json"
theorem reductionProof20046 : EqualModuloRelations reduction20046.relations reduction20046.input reduction20046.output := by lin_cert using reduction20046.terms
theorem substitutionProof20046 : IsMapEvaluation generatorImages reduction20046.relations [8,1774] reduction20046.output := by lin_cert using reduction20046.terms
def image20047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20047 : InImage map_35_250 image20047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20047 : Bundle := named_bundle% "RealMapCertificates/relations/basis20047.json"
theorem reductionProof20047 : EqualModuloRelations reduction20047.relations reduction20047.input reduction20047.output := by lin_cert using reduction20047.terms
theorem substitutionProof20047 : IsMapEvaluation generatorImages reduction20047.relations [8,1773] reduction20047.output := by lin_cert using reduction20047.terms
def image20048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20048 : InImage map_35_250 image20048 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20048 : Bundle := named_bundle% "RealMapCertificates/relations/basis20048.json"
theorem reductionProof20048 : EqualModuloRelations reduction20048.relations reduction20048.input reduction20048.output := by lin_cert using reduction20048.terms
theorem substitutionProof20048 : IsMapEvaluation generatorImages reduction20048.relations [8,8,9,1062] reduction20048.output := by lin_cert using reduction20048.terms
def image20049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20049 : InImage map_35_250 image20049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20049 : Bundle := named_bundle% "RealMapCertificates/relations/basis20049.json"
theorem reductionProof20049 : EqualModuloRelations reduction20049.relations reduction20049.input reduction20049.output := by lin_cert using reduction20049.terms
theorem substitutionProof20049 : IsMapEvaluation generatorImages reduction20049.relations [0,16,1539] reduction20049.output := by lin_cert using reduction20049.terms
def map_35_251 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20338 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20338 : InImage map_35_251 image20338 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20338 : Bundle := named_bundle% "RealMapCertificates/relations/basis20338.json"
theorem reductionProof20338 : EqualModuloRelations reduction20338.relations reduction20338.input reduction20338.output := by lin_cert using reduction20338.terms
theorem substitutionProof20338 : IsMapEvaluation generatorImages reduction20338.relations [64,976] reduction20338.output := by lin_cert using reduction20338.terms
def image20339 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20339 : InImage map_35_251 image20339 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20339 : Bundle := named_bundle% "RealMapCertificates/relations/basis20339.json"
theorem reductionProof20339 : EqualModuloRelations reduction20339.relations reduction20339.input reduction20339.output := by lin_cert using reduction20339.terms
theorem substitutionProof20339 : IsMapEvaluation generatorImages reduction20339.relations [64,64,293] reduction20339.output := by lin_cert using reduction20339.terms
def image20340 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20340 : InImage map_35_251 image20340 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20340 : Bundle := named_bundle% "RealMapCertificates/relations/basis20340.json"
theorem reductionProof20340 : EqualModuloRelations reduction20340.relations reduction20340.input reduction20340.output := by lin_cert using reduction20340.terms
theorem substitutionProof20340 : IsMapEvaluation generatorImages reduction20340.relations [9,13,13,901] reduction20340.output := by lin_cert using reduction20340.terms
def image20341 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20341 : InImage map_35_251 image20341 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20341 : Bundle := named_bundle% "RealMapCertificates/relations/basis20341.json"
theorem reductionProof20341 : EqualModuloRelations reduction20341.relations reduction20341.input reduction20341.output := by lin_cert using reduction20341.terms
theorem substitutionProof20341 : IsMapEvaluation generatorImages reduction20341.relations [8,13,13,13,13,423] reduction20341.output := by lin_cert using reduction20341.terms
def image20342 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20342 : InImage map_35_251 image20342 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20342 : Bundle := named_bundle% "RealMapCertificates/relations/basis20342.json"
theorem reductionProof20342 : EqualModuloRelations reduction20342.relations reduction20342.input reduction20342.output := by lin_cert using reduction20342.terms
theorem substitutionProof20342 : IsMapEvaluation generatorImages reduction20342.relations [8,8,1473] reduction20342.output := by lin_cert using reduction20342.terms
def image20343 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20343 : InImage map_35_251 image20343 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20343 : Bundle := named_bundle% "RealMapCertificates/relations/basis20343.json"
theorem reductionProof20343 : EqualModuloRelations reduction20343.relations reduction20343.input reduction20343.output := by lin_cert using reduction20343.terms
theorem substitutionProof20343 : IsMapEvaluation generatorImages reduction20343.relations [8,8,8,9,80,209] reduction20343.output := by lin_cert using reduction20343.terms
def image20344 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20344 : InImage map_35_251 image20344 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20344 : Bundle := named_bundle% "RealMapCertificates/relations/basis20344.json"
theorem reductionProof20344 : EqualModuloRelations reduction20344.relations reduction20344.input reduction20344.output := by lin_cert using reduction20344.terms
theorem substitutionProof20344 : IsMapEvaluation generatorImages reduction20344.relations [0,23,1441] reduction20344.output := by lin_cert using reduction20344.terms
def image20345 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20345 : InImage map_35_251 image20345 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20345 : Bundle := named_bundle% "RealMapCertificates/relations/basis20345.json"
theorem reductionProof20345 : EqualModuloRelations reduction20345.relations reduction20345.input reduction20345.output := by lin_cert using reduction20345.terms
theorem substitutionProof20345 : IsMapEvaluation generatorImages reduction20345.relations [0,8,1775] reduction20345.output := by lin_cert using reduction20345.terms
def image20346 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20346 : InImage map_35_251 image20346 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20346 : Bundle := named_bundle% "RealMapCertificates/relations/basis20346.json"
theorem reductionProof20346 : EqualModuloRelations reduction20346.relations reduction20346.input reduction20346.output := by lin_cert using reduction20346.terms
theorem substitutionProof20346 : IsMapEvaluation generatorImages reduction20346.relations [0,0,17,1539] reduction20346.output := by lin_cert using reduction20346.terms
end RealMapCertificates
