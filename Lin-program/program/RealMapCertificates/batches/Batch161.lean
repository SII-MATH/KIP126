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
  | 31 => [[4,4,6]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 72 => []
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 116 => [[4,4,4,4,4,8]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 187 => []
  | 188 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 201 => []
  | 205 => [[3,4,4,4,4,4,4,4,4]]
  | 209 => []
  | 210 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 255 => []
  | 260 => []
  | 280 => []
  | 287 => []
  | 293 => []
  | 297 => []
  | 349 => []
  | 360 => []
  | 383 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 423 => []
  | 432 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 705 => []
  | 834 => []
  | 878 => []
  | 901 => []
  | 941 => []
  | 979 => []
  | 1051 => []
  | 1062 => []
  | 1063 => []
  | 1104 => []
  | 1518 => []
  | 1570 => []
  | 1652 => []
  | 1773 => []
  | 1775 => []
  | 1858 => []
  | 1861 => []
  | 1902 => []
  | 1930 => []
  | 2098 => []
  | 2279 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2337 => []
  | 2338 => []
  | 2340 => []
  | 2342 => []
  | 2381 => []
  | 2406 => []
  | 2489 => []
  | 2490 => []
  | 2492 => []
  | 2544 => []
  | 2546 => []
  | 2582 => []
  | 2583 => []
  | 2679 => []
  | 2796 => []
  | 2866 => []
  | _ => []
def map_35_252 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20640 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20640 : InImage map_35_252 image20640 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20640 : Bundle := named_bundle% "RealMapCertificates/relations/basis20640.json"
theorem reductionProof20640 : EqualModuloRelations reduction20640.relations reduction20640.input reduction20640.output := by lin_cert using reduction20640.terms
theorem substitutionProof20640 : IsMapEvaluation generatorImages reduction20640.relations [13,13,13,13,13,360] reduction20640.output := by lin_cert using reduction20640.terms
def image20641 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20641 : InImage map_35_252 image20641 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20641 : Bundle := named_bundle% "RealMapCertificates/relations/basis20641.json"
theorem reductionProof20641 : EqualModuloRelations reduction20641.relations reduction20641.input reduction20641.output := by lin_cert using reduction20641.terms
theorem substitutionProof20641 : IsMapEvaluation generatorImages reduction20641.relations [8,16,187,188] reduction20641.output := by lin_cert using reduction20641.terms
def image20642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20642 : InImage map_35_252 image20642 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20642 : Bundle := named_bundle% "RealMapCertificates/relations/basis20642.json"
theorem reductionProof20642 : EqualModuloRelations reduction20642.relations reduction20642.input reduction20642.output := by lin_cert using reduction20642.terms
theorem substitutionProof20642 : IsMapEvaluation generatorImages reduction20642.relations [8,9,13,13,705] reduction20642.output := by lin_cert using reduction20642.terms
def image20643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20643 : InImage map_35_252 image20643 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20643 : Bundle := named_bundle% "RealMapCertificates/relations/basis20643.json"
theorem reductionProof20643 : EqualModuloRelations reduction20643.relations reduction20643.input reduction20643.output := by lin_cert using reduction20643.terms
theorem substitutionProof20643 : IsMapEvaluation generatorImages reduction20643.relations [0,0,260,349] reduction20643.output := by lin_cert using reduction20643.terms
def image20644 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20644 : InImage map_35_252 image20644 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20644 : Bundle := named_bundle% "RealMapCertificates/relations/basis20644.json"
theorem reductionProof20644 : EqualModuloRelations reduction20644.relations reduction20644.input reduction20644.output := by lin_cert using reduction20644.terms
theorem substitutionProof20644 : IsMapEvaluation generatorImages reduction20644.relations [0,0,0,2304] reduction20644.output := by lin_cert using reduction20644.terms
def map_35_253 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20877 : InImage map_35_253 image20877 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20877 : Bundle := named_bundle% "RealMapCertificates/relations/basis20877.json"
theorem reductionProof20877 : EqualModuloRelations reduction20877.relations reduction20877.input reduction20877.output := by lin_cert using reduction20877.terms
theorem substitutionProof20877 : IsMapEvaluation generatorImages reduction20877.relations [260,383] reduction20877.output := by lin_cert using reduction20877.terms
def image20878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20878 : InImage map_35_253 image20878 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20878 : Bundle := named_bundle% "RealMapCertificates/relations/basis20878.json"
theorem reductionProof20878 : EqualModuloRelations reduction20878.relations reduction20878.input reduction20878.output := by lin_cert using reduction20878.terms
theorem substitutionProof20878 : IsMapEvaluation generatorImages reduction20878.relations [8,1858] reduction20878.output := by lin_cert using reduction20878.terms
def image20879 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20879 : InImage map_35_253 image20879 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20879 : Bundle := named_bundle% "RealMapCertificates/relations/basis20879.json"
theorem reductionProof20879 : EqualModuloRelations reduction20879.relations reduction20879.input reduction20879.output := by lin_cert using reduction20879.terms
theorem substitutionProof20879 : IsMapEvaluation generatorImages reduction20879.relations [8,8,13,1062] reduction20879.output := by lin_cert using reduction20879.terms
def image20880 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20880 : InImage map_35_253 image20880 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20880 : Bundle := named_bundle% "RealMapCertificates/relations/basis20880.json"
theorem reductionProof20880 : EqualModuloRelations reduction20880.relations reduction20880.input reduction20880.output := by lin_cert using reduction20880.terms
theorem substitutionProof20880 : IsMapEvaluation generatorImages reduction20880.relations [0,0,0,2338] reduction20880.output := by lin_cert using reduction20880.terms
def image20881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20881 : InImage map_35_253 image20881 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20881 : Bundle := named_bundle% "RealMapCertificates/relations/basis20881.json"
theorem reductionProof20881 : EqualModuloRelations reduction20881.relations reduction20881.input reduction20881.output := by lin_cert using reduction20881.terms
theorem substitutionProof20881 : IsMapEvaluation generatorImages reduction20881.relations [0,0,0,2337] reduction20881.output := by lin_cert using reduction20881.terms
def image20882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20882 : InImage map_35_253 image20882 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20882 : Bundle := named_bundle% "RealMapCertificates/relations/basis20882.json"
theorem reductionProof20882 : EqualModuloRelations reduction20882.relations reduction20882.input reduction20882.output := by lin_cert using reduction20882.terms
theorem substitutionProof20882 : IsMapEvaluation generatorImages reduction20882.relations [0,0,0,0,2307] reduction20882.output := by lin_cert using reduction20882.terms
def map_35_254 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image21171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21171 : InImage map_35_254 image21171 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction21171 : Bundle := named_bundle% "RealMapCertificates/relations/basis21171.json"
theorem reductionProof21171 : EqualModuloRelations reduction21171.relations reduction21171.input reduction21171.output := by lin_cert using reduction21171.terms
theorem substitutionProof21171 : IsMapEvaluation generatorImages reduction21171.relations [64,72,293] reduction21171.output := by lin_cert using reduction21171.terms
def image21172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21172 : InImage map_35_254 image21172 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction21172 : Bundle := named_bundle% "RealMapCertificates/relations/basis21172.json"
theorem reductionProof21172 : EqualModuloRelations reduction21172.relations reduction21172.input reduction21172.output := by lin_cert using reduction21172.terms
theorem substitutionProof21172 : IsMapEvaluation generatorImages reduction21172.relations [13,13,13,901] reduction21172.output := by lin_cert using reduction21172.terms
def image21173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21173 : InImage map_35_254 image21173 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction21173 : Bundle := named_bundle% "RealMapCertificates/relations/basis21173.json"
theorem reductionProof21173 : EqualModuloRelations reduction21173.relations reduction21173.input reduction21173.output := by lin_cert using reduction21173.terms
theorem substitutionProof21173 : IsMapEvaluation generatorImages reduction21173.relations [9,13,13,941] reduction21173.output := by lin_cert using reduction21173.terms
def image21174 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21174 : InImage map_35_254 image21174 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction21174 : Bundle := named_bundle% "RealMapCertificates/relations/basis21174.json"
theorem reductionProof21174 : EqualModuloRelations reduction21174.relations reduction21174.input reduction21174.output := by lin_cert using reduction21174.terms
theorem substitutionProof21174 : IsMapEvaluation generatorImages reduction21174.relations [9,13,13,13,13,423] reduction21174.output := by lin_cert using reduction21174.terms
def image21175 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21175 : InImage map_35_254 image21175 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction21175 : Bundle := named_bundle% "RealMapCertificates/relations/basis21175.json"
theorem reductionProof21175 : EqualModuloRelations reduction21175.relations reduction21175.input reduction21175.output := by lin_cert using reduction21175.terms
theorem substitutionProof21175 : IsMapEvaluation generatorImages reduction21175.relations [8,8,1518] reduction21175.output := by lin_cert using reduction21175.terms
def image21176 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21176 : InImage map_35_254 image21176 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction21176 : Bundle := named_bundle% "RealMapCertificates/relations/basis21176.json"
theorem reductionProof21176 : EqualModuloRelations reduction21176.relations reduction21176.input reduction21176.output := by lin_cert using reduction21176.terms
theorem substitutionProof21176 : IsMapEvaluation generatorImages reduction21176.relations [8,8,8,13,80,209] reduction21176.output := by lin_cert using reduction21176.terms
def image21177 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21177 : InImage map_35_254 image21177 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction21177 : Bundle := named_bundle% "RealMapCertificates/relations/basis21177.json"
theorem reductionProof21177 : EqualModuloRelations reduction21177.relations reduction21177.input reduction21177.output := by lin_cert using reduction21177.terms
theorem substitutionProof21177 : IsMapEvaluation generatorImages reduction21177.relations [0,9,1775] reduction21177.output := by lin_cert using reduction21177.terms
def image21178 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21178 : InImage map_35_254 image21178 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction21178 : Bundle := named_bundle% "RealMapCertificates/relations/basis21178.json"
theorem reductionProof21178 : EqualModuloRelations reduction21178.relations reduction21178.input reduction21178.output := by lin_cert using reduction21178.terms
theorem substitutionProof21178 : IsMapEvaluation generatorImages reduction21178.relations [0,0,2406] reduction21178.output := by lin_cert using reduction21178.terms
def image21179 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21179 : InImage map_35_254 image21179 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction21179 : Bundle := named_bundle% "RealMapCertificates/relations/basis21179.json"
theorem reductionProof21179 : EqualModuloRelations reduction21179.relations reduction21179.input reduction21179.output := by lin_cert using reduction21179.terms
theorem substitutionProof21179 : IsMapEvaluation generatorImages reduction21179.relations [0,0,0,0,2340] reduction21179.output := by lin_cert using reduction21179.terms
def image21180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21180 : InImage map_35_254 image21180 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction21180 : Bundle := named_bundle% "RealMapCertificates/relations/basis21180.json"
theorem reductionProof21180 : EqualModuloRelations reduction21180.relations reduction21180.input reduction21180.output := by lin_cert using reduction21180.terms
theorem substitutionProof21180 : IsMapEvaluation generatorImages reduction21180.relations [0,0,0,0,0,0,2279] reduction21180.output := by lin_cert using reduction21180.terms
def map_35_255 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21511 : InImage map_35_255 image21511 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21511 : Bundle := named_bundle% "RealMapCertificates/relations/basis21511.json"
theorem reductionProof21511 : EqualModuloRelations reduction21511.relations reduction21511.input reduction21511.output := by lin_cert using reduction21511.terms
theorem substitutionProof21511 : IsMapEvaluation generatorImages reduction21511.relations [13,13,13,13,23,287] reduction21511.output := by lin_cert using reduction21511.terms
def image21512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21512 : InImage map_35_255 image21512 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21512 : Bundle := named_bundle% "RealMapCertificates/relations/basis21512.json"
theorem reductionProof21512 : EqualModuloRelations reduction21512.relations reduction21512.input reduction21512.output := by lin_cert using reduction21512.terms
theorem substitutionProof21512 : IsMapEvaluation generatorImages reduction21512.relations [8,1902] reduction21512.output := by lin_cert using reduction21512.terms
def image21513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21513 : InImage map_35_255 image21513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21513 : Bundle := named_bundle% "RealMapCertificates/relations/basis21513.json"
theorem reductionProof21513 : EqualModuloRelations reduction21513.relations reduction21513.input reduction21513.output := by lin_cert using reduction21513.terms
theorem substitutionProof21513 : IsMapEvaluation generatorImages reduction21513.relations [8,13,13,13,705] reduction21513.output := by lin_cert using reduction21513.terms
def image21514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21514 : InImage map_35_255 image21514 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21514 : Bundle := named_bundle% "RealMapCertificates/relations/basis21514.json"
theorem reductionProof21514 : EqualModuloRelations reduction21514.relations reduction21514.input reduction21514.output := by lin_cert using reduction21514.terms
theorem substitutionProof21514 : IsMapEvaluation generatorImages reduction21514.relations [8,8,187,255] reduction21514.output := by lin_cert using reduction21514.terms
def image21515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21515 : InImage map_35_255 image21515 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21515 : Bundle := named_bundle% "RealMapCertificates/relations/basis21515.json"
theorem reductionProof21515 : EqualModuloRelations reduction21515.relations reduction21515.input reduction21515.output := by lin_cert using reduction21515.terms
theorem substitutionProof21515 : IsMapEvaluation generatorImages reduction21515.relations [0,0,0,0,0,2342] reduction21515.output := by lin_cert using reduction21515.terms
def map_35_256 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21768 : InImage map_35_256 image21768 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21768 : Bundle := named_bundle% "RealMapCertificates/relations/basis21768.json"
theorem reductionProof21768 : EqualModuloRelations reduction21768.relations reduction21768.input reduction21768.output := by lin_cert using reduction21768.terms
theorem substitutionProof21768 : IsMapEvaluation generatorImages reduction21768.relations [16,1652] reduction21768.output := by lin_cert using reduction21768.terms
def image21769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21769 : InImage map_35_256 image21769 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21769 : Bundle := named_bundle% "RealMapCertificates/relations/basis21769.json"
theorem reductionProof21769 : EqualModuloRelations reduction21769.relations reduction21769.input reduction21769.output := by lin_cert using reduction21769.terms
theorem substitutionProof21769 : IsMapEvaluation generatorImages reduction21769.relations [13,1773] reduction21769.output := by lin_cert using reduction21769.terms
def image21770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21770 : InImage map_35_256 image21770 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21770 : Bundle := named_bundle% "RealMapCertificates/relations/basis21770.json"
theorem reductionProof21770 : EqualModuloRelations reduction21770.relations reduction21770.input reduction21770.output := by lin_cert using reduction21770.terms
theorem substitutionProof21770 : IsMapEvaluation generatorImages reduction21770.relations [8,1930] reduction21770.output := by lin_cert using reduction21770.terms
def image21771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21771 : InImage map_35_256 image21771 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21771 : Bundle := named_bundle% "RealMapCertificates/relations/basis21771.json"
theorem reductionProof21771 : EqualModuloRelations reduction21771.relations reduction21771.input reduction21771.output := by lin_cert using reduction21771.terms
theorem substitutionProof21771 : IsMapEvaluation generatorImages reduction21771.relations [8,9,13,1062] reduction21771.output := by lin_cert using reduction21771.terms
def image21772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21772 : InImage map_35_256 image21772 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21772 : Bundle := named_bundle% "RealMapCertificates/relations/basis21772.json"
theorem reductionProof21772 : EqualModuloRelations reduction21772.relations reduction21772.input reduction21772.output := by lin_cert using reduction21772.terms
theorem substitutionProof21772 : IsMapEvaluation generatorImages reduction21772.relations [0,2544] reduction21772.output := by lin_cert using reduction21772.terms
def image21773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21773 : InImage map_35_256 image21773 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21773 : Bundle := named_bundle% "RealMapCertificates/relations/basis21773.json"
theorem reductionProof21773 : EqualModuloRelations reduction21773.relations reduction21773.input reduction21773.output := by lin_cert using reduction21773.terms
theorem substitutionProof21773 : IsMapEvaluation generatorImages reduction21773.relations [0,0,0,0,0,2381] reduction21773.output := by lin_cert using reduction21773.terms
def image21774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21774 : InImage map_35_256 image21774 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21774 : Bundle := named_bundle% "RealMapCertificates/relations/basis21774.json"
theorem reductionProof21774 : EqualModuloRelations reduction21774.relations reduction21774.input reduction21774.output := by lin_cert using reduction21774.terms
theorem substitutionProof21774 : IsMapEvaluation generatorImages reduction21774.relations [0,0,0,0,0,0,0,2309] reduction21774.output := by lin_cert using reduction21774.terms
def map_35_257 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22118 : InImage map_35_257 image22118 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22118 : Bundle := named_bundle% "RealMapCertificates/relations/basis22118.json"
theorem reductionProof22118 : EqualModuloRelations reduction22118.relations reduction22118.input reduction22118.output := by lin_cert using reduction22118.terms
theorem substitutionProof22118 : IsMapEvaluation generatorImages reduction22118.relations [64,64,349] reduction22118.output := by lin_cert using reduction22118.terms
def image22119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22119 : InImage map_35_257 image22119 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22119 : Bundle := named_bundle% "RealMapCertificates/relations/basis22119.json"
theorem reductionProof22119 : EqualModuloRelations reduction22119.relations reduction22119.input reduction22119.output := by lin_cert using reduction22119.terms
theorem substitutionProof22119 : IsMapEvaluation generatorImages reduction22119.relations [13,13,13,941] reduction22119.output := by lin_cert using reduction22119.terms
def image22120 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22120 : InImage map_35_257 image22120 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22120 : Bundle := named_bundle% "RealMapCertificates/relations/basis22120.json"
theorem reductionProof22120 : EqualModuloRelations reduction22120.relations reduction22120.input reduction22120.output := by lin_cert using reduction22120.terms
theorem substitutionProof22120 : IsMapEvaluation generatorImages reduction22120.relations [13,13,13,13,13,423] reduction22120.output := by lin_cert using reduction22120.terms
def image22121 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22121 : InImage map_35_257 image22121 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22121 : Bundle := named_bundle% "RealMapCertificates/relations/basis22121.json"
theorem reductionProof22121 : EqualModuloRelations reduction22121.relations reduction22121.input reduction22121.output := by lin_cert using reduction22121.terms
theorem substitutionProof22121 : IsMapEvaluation generatorImages reduction22121.relations [8,64,834] reduction22121.output := by lin_cert using reduction22121.terms
def image22122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22122 : InImage map_35_257 image22122 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22122 : Bundle := named_bundle% "RealMapCertificates/relations/basis22122.json"
theorem reductionProof22122 : EqualModuloRelations reduction22122.relations reduction22122.input reduction22122.output := by lin_cert using reduction22122.terms
theorem substitutionProof22122 : IsMapEvaluation generatorImages reduction22122.relations [8,8,1570] reduction22122.output := by lin_cert using reduction22122.terms
def image22123 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22123 : InImage map_35_257 image22123 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22123 : Bundle := named_bundle% "RealMapCertificates/relations/basis22123.json"
theorem reductionProof22123 : EqualModuloRelations reduction22123.relations reduction22123.input reduction22123.output := by lin_cert using reduction22123.terms
theorem substitutionProof22123 : IsMapEvaluation generatorImages reduction22123.relations [8,8,9,13,80,209] reduction22123.output := by lin_cert using reduction22123.terms
def image22124 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22124 : InImage map_35_257 image22124 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22124 : Bundle := named_bundle% "RealMapCertificates/relations/basis22124.json"
theorem reductionProof22124 : EqualModuloRelations reduction22124.relations reduction22124.input reduction22124.output := by lin_cert using reduction22124.terms
theorem substitutionProof22124 : IsMapEvaluation generatorImages reduction22124.relations [1,2544] reduction22124.output := by lin_cert using reduction22124.terms
def image22125 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22125 : InImage map_35_257 image22125 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22125 : Bundle := named_bundle% "RealMapCertificates/relations/basis22125.json"
theorem reductionProof22125 : EqualModuloRelations reduction22125.relations reduction22125.input reduction22125.output := by lin_cert using reduction22125.terms
theorem substitutionProof22125 : IsMapEvaluation generatorImages reduction22125.relations [0,2582] reduction22125.output := by lin_cert using reduction22125.terms
def image22126 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22126 : InImage map_35_257 image22126 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22126 : Bundle := named_bundle% "RealMapCertificates/relations/basis22126.json"
theorem reductionProof22126 : EqualModuloRelations reduction22126.relations reduction22126.input reduction22126.output := by lin_cert using reduction22126.terms
theorem substitutionProof22126 : IsMapEvaluation generatorImages reduction22126.relations [0,0,2546] reduction22126.output := by lin_cert using reduction22126.terms
def map_35_258 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22476 : InImage map_35_258 image22476 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22476 : Bundle := named_bundle% "RealMapCertificates/relations/basis22476.json"
theorem reductionProof22476 : EqualModuloRelations reduction22476.relations reduction22476.input reduction22476.output := by lin_cert using reduction22476.terms
theorem substitutionProof22476 : IsMapEvaluation generatorImages reduction22476.relations [9,1902] reduction22476.output := by lin_cert using reduction22476.terms
def image22477 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22477 : InImage map_35_258 image22477 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22477 : Bundle := named_bundle% "RealMapCertificates/relations/basis22477.json"
theorem reductionProof22477 : EqualModuloRelations reduction22477.relations reduction22477.input reduction22477.output := by lin_cert using reduction22477.terms
theorem substitutionProof22477 : IsMapEvaluation generatorImages reduction22477.relations [9,13,13,13,705] reduction22477.output := by lin_cert using reduction22477.terms
def image22478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22478 : InImage map_35_258 image22478 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22478 : Bundle := named_bundle% "RealMapCertificates/relations/basis22478.json"
theorem reductionProof22478 : EqualModuloRelations reduction22478.relations reduction22478.input reduction22478.output := by lin_cert using reduction22478.terms
theorem substitutionProof22478 : IsMapEvaluation generatorImages reduction22478.relations [8,8,8,187,188] reduction22478.output := by lin_cert using reduction22478.terms
def image22479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22479 : InImage map_35_258 image22479 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22479 : Bundle := named_bundle% "RealMapCertificates/relations/basis22479.json"
theorem reductionProof22479 : EqualModuloRelations reduction22479.relations reduction22479.input reduction22479.output := by lin_cert using reduction22479.terms
theorem substitutionProof22479 : IsMapEvaluation generatorImages reduction22479.relations [1,2583] reduction22479.output := by lin_cert using reduction22479.terms
def image22480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22480 : InImage map_35_258 image22480 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22480 : Bundle := named_bundle% "RealMapCertificates/relations/basis22480.json"
theorem reductionProof22480 : EqualModuloRelations reduction22480.relations reduction22480.input reduction22480.output := by lin_cert using reduction22480.terms
theorem substitutionProof22480 : IsMapEvaluation generatorImages reduction22480.relations [1,2582] reduction22480.output := by lin_cert using reduction22480.terms
def image22481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22481 : InImage map_35_258 image22481 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22481 : Bundle := named_bundle% "RealMapCertificates/relations/basis22481.json"
theorem reductionProof22481 : EqualModuloRelations reduction22481.relations reduction22481.input reduction22481.output := by lin_cert using reduction22481.terms
theorem substitutionProof22481 : IsMapEvaluation generatorImages reduction22481.relations [0,0,64,1063] reduction22481.output := by lin_cert using reduction22481.terms
def image22482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22482 : InImage map_35_258 image22482 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22482 : Bundle := named_bundle% "RealMapCertificates/relations/basis22482.json"
theorem reductionProof22482 : EqualModuloRelations reduction22482.relations reduction22482.input reduction22482.output := by lin_cert using reduction22482.terms
theorem substitutionProof22482 : IsMapEvaluation generatorImages reduction22482.relations [0,0,0,0,2489] reduction22482.output := by lin_cert using reduction22482.terms
def map_35_259 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image22784 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22784 : InImage map_35_259 image22784 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22784 : Bundle := named_bundle% "RealMapCertificates/relations/basis22784.json"
theorem reductionProof22784 : EqualModuloRelations reduction22784.relations reduction22784.input reduction22784.output := by lin_cert using reduction22784.terms
theorem substitutionProof22784 : IsMapEvaluation generatorImages reduction22784.relations [9,1930] reduction22784.output := by lin_cert using reduction22784.terms
def image22785 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22785 : InImage map_35_259 image22785 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22785 : Bundle := named_bundle% "RealMapCertificates/relations/basis22785.json"
theorem reductionProof22785 : EqualModuloRelations reduction22785.relations reduction22785.input reduction22785.output := by lin_cert using reduction22785.terms
theorem substitutionProof22785 : IsMapEvaluation generatorImages reduction22785.relations [8,260,280] reduction22785.output := by lin_cert using reduction22785.terms
def image22786 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22786 : InImage map_35_259 image22786 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22786 : Bundle := named_bundle% "RealMapCertificates/relations/basis22786.json"
theorem reductionProof22786 : EqualModuloRelations reduction22786.relations reduction22786.input reduction22786.output := by lin_cert using reduction22786.terms
theorem substitutionProof22786 : IsMapEvaluation generatorImages reduction22786.relations [8,13,13,1062] reduction22786.output := by lin_cert using reduction22786.terms
def image22787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22787 : InImage map_35_259 image22787 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22787 : Bundle := named_bundle% "RealMapCertificates/relations/basis22787.json"
theorem reductionProof22787 : EqualModuloRelations reduction22787.relations reduction22787.input reduction22787.output := by lin_cert using reduction22787.terms
theorem substitutionProof22787 : IsMapEvaluation generatorImages reduction22787.relations [0,0,0,0,64,1051] reduction22787.output := by lin_cert using reduction22787.terms
def image22788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22788 : InImage map_35_259 image22788 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22788 : Bundle := named_bundle% "RealMapCertificates/relations/basis22788.json"
theorem reductionProof22788 : EqualModuloRelations reduction22788.relations reduction22788.input reduction22788.output := by lin_cert using reduction22788.terms
theorem substitutionProof22788 : IsMapEvaluation generatorImages reduction22788.relations [0,0,0,0,0,2490] reduction22788.output := by lin_cert using reduction22788.terms
def map_35_260 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23163 : InImage map_35_260 image23163 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23163 : Bundle := named_bundle% "RealMapCertificates/relations/basis23163.json"
theorem reductionProof23163 : EqualModuloRelations reduction23163.relations reduction23163.input reduction23163.output := by lin_cert using reduction23163.terms
theorem substitutionProof23163 : IsMapEvaluation generatorImages reduction23163.relations [13,13,13,979] reduction23163.output := by lin_cert using reduction23163.terms
def image23164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23164 : InImage map_35_260 image23164 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23164 : Bundle := named_bundle% "RealMapCertificates/relations/basis23164.json"
theorem reductionProof23164 : EqualModuloRelations reduction23164.relations reduction23164.input reduction23164.output := by lin_cert using reduction23164.terms
theorem substitutionProof23164 : IsMapEvaluation generatorImages reduction23164.relations [8,64,878] reduction23164.output := by lin_cert using reduction23164.terms
def image23165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23165 : InImage map_35_260 image23165 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23165 : Bundle := named_bundle% "RealMapCertificates/relations/basis23165.json"
theorem reductionProof23165 : EqualModuloRelations reduction23165.relations reduction23165.input reduction23165.output := by lin_cert using reduction23165.terms
theorem substitutionProof23165 : IsMapEvaluation generatorImages reduction23165.relations [8,9,1570] reduction23165.output := by lin_cert using reduction23165.terms
def image23166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23166 : InImage map_35_260 image23166 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23166 : Bundle := named_bundle% "RealMapCertificates/relations/basis23166.json"
theorem reductionProof23166 : EqualModuloRelations reduction23166.relations reduction23166.input reduction23166.output := by lin_cert using reduction23166.terms
theorem substitutionProof23166 : IsMapEvaluation generatorImages reduction23166.relations [8,8,13,13,80,209] reduction23166.output := by lin_cert using reduction23166.terms
def image23167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23167 : InImage map_35_260 image23167 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23167 : Bundle := named_bundle% "RealMapCertificates/relations/basis23167.json"
theorem reductionProof23167 : EqualModuloRelations reduction23167.relations reduction23167.input reduction23167.output := by lin_cert using reduction23167.terms
theorem substitutionProof23167 : IsMapEvaluation generatorImages reduction23167.relations [1,2679] reduction23167.output := by lin_cert using reduction23167.terms
def image23168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23168 : InImage map_35_260 image23168 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23168 : Bundle := named_bundle% "RealMapCertificates/relations/basis23168.json"
theorem reductionProof23168 : EqualModuloRelations reduction23168.relations reduction23168.input reduction23168.output := by lin_cert using reduction23168.terms
theorem substitutionProof23168 : IsMapEvaluation generatorImages reduction23168.relations [0,64,1104] reduction23168.output := by lin_cert using reduction23168.terms
def image23169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23169 : InImage map_35_260 image23169 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23169 : Bundle := named_bundle% "RealMapCertificates/relations/basis23169.json"
theorem reductionProof23169 : EqualModuloRelations reduction23169.relations reduction23169.input reduction23169.output := by lin_cert using reduction23169.terms
theorem substitutionProof23169 : IsMapEvaluation generatorImages reduction23169.relations [0,13,1861] reduction23169.output := by lin_cert using reduction23169.terms
def image23170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23170 : InImage map_35_260 image23170 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23170 : Bundle := named_bundle% "RealMapCertificates/relations/basis23170.json"
theorem reductionProof23170 : EqualModuloRelations reduction23170.relations reduction23170.input reduction23170.output := by lin_cert using reduction23170.terms
theorem substitutionProof23170 : IsMapEvaluation generatorImages reduction23170.relations [0,0,0,0,0,0,2492] reduction23170.output := by lin_cert using reduction23170.terms
def map_35_261 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23596 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23596 : InImage map_35_261 image23596 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23596 : Bundle := named_bundle% "RealMapCertificates/relations/basis23596.json"
theorem reductionProof23596 : EqualModuloRelations reduction23596.relations reduction23596.input reduction23596.output := by lin_cert using reduction23596.terms
theorem substitutionProof23596 : IsMapEvaluation generatorImages reduction23596.relations [2866] reduction23596.output := by lin_cert using reduction23596.terms
def image23597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23597 : InImage map_35_261 image23597 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23597 : Bundle := named_bundle% "RealMapCertificates/relations/basis23597.json"
theorem reductionProof23597 : EqualModuloRelations reduction23597.relations reduction23597.input reduction23597.output := by lin_cert using reduction23597.terms
theorem substitutionProof23597 : IsMapEvaluation generatorImages reduction23597.relations [13,13,13,13,705] reduction23597.output := by lin_cert using reduction23597.terms
def image23598 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23598 : InImage map_35_261 image23598 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23598 : Bundle := named_bundle% "RealMapCertificates/relations/basis23598.json"
theorem reductionProof23598 : EqualModuloRelations reduction23598.relations reduction23598.input reduction23598.output := by lin_cert using reduction23598.terms
theorem substitutionProof23598 : IsMapEvaluation generatorImages reduction23598.relations [8,2098] reduction23598.output := by lin_cert using reduction23598.terms
def image23599 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23599 : InImage map_35_261 image23599 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23599 : Bundle := named_bundle% "RealMapCertificates/relations/basis23599.json"
theorem reductionProof23599 : EqualModuloRelations reduction23599.relations reduction23599.input reduction23599.output := by lin_cert using reduction23599.terms
theorem substitutionProof23599 : IsMapEvaluation generatorImages reduction23599.relations [8,8,8,188,201] reduction23599.output := by lin_cert using reduction23599.terms
def image23600 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23600 : InImage map_35_261 image23600 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23600 : Bundle := named_bundle% "RealMapCertificates/relations/basis23600.json"
theorem reductionProof23600 : EqualModuloRelations reduction23600.relations reduction23600.input reduction23600.output := by lin_cert using reduction23600.terms
theorem substitutionProof23600 : IsMapEvaluation generatorImages reduction23600.relations [0,2796] reduction23600.output := by lin_cert using reduction23600.terms
def map_36_36 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image128 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation128 : InImage map_36_36 image128 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction128 : Bundle := named_bundle% "RealMapCertificates/relations/basis128.json"
theorem reductionProof128 : EqualModuloRelations reduction128.relations reduction128.input reduction128.output := by lin_cert using reduction128.terms
theorem substitutionProof128 : IsMapEvaluation generatorImages reduction128.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction128.output := by lin_cert using reduction128.terms
def map_36_107 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1447 : InImage map_36_107 image1447 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1447 : Bundle := named_bundle% "RealMapCertificates/relations/basis1447.json"
theorem reductionProof1447 : EqualModuloRelations reduction1447.relations reduction1447.input reduction1447.output := by lin_cert using reduction1447.terms
theorem substitutionProof1447 : IsMapEvaluation generatorImages reduction1447.relations [0,0,0,0,0,183] reduction1447.output := by lin_cert using reduction1447.terms
def map_36_109 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1521 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1521 : InImage map_36_109 image1521 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1521 : Bundle := named_bundle% "RealMapCertificates/relations/basis1521.json"
theorem reductionProof1521 : EqualModuloRelations reduction1521.relations reduction1521.input reduction1521.output := by lin_cert using reduction1521.terms
theorem substitutionProof1521 : IsMapEvaluation generatorImages reduction1521.relations [1,205] reduction1521.output := by lin_cert using reduction1521.terms
def map_36_114 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1700 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1700 : InImage map_36_114 image1700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1700 : Bundle := named_bundle% "RealMapCertificates/relations/basis1700.json"
theorem reductionProof1700 : EqualModuloRelations reduction1700.relations reduction1700.input reduction1700.output := by lin_cert using reduction1700.terms
theorem substitutionProof1700 : IsMapEvaluation generatorImages reduction1700.relations [236] reduction1700.output := by lin_cert using reduction1700.terms
def map_36_115 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image1742 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1742 : InImage map_36_115 image1742 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1742 : Bundle := named_bundle% "RealMapCertificates/relations/basis1742.json"
theorem reductionProof1742 : EqualModuloRelations reduction1742.relations reduction1742.input reduction1742.output := by lin_cert using reduction1742.terms
theorem substitutionProof1742 : IsMapEvaluation generatorImages reduction1742.relations [0,0,0,0,0,0,0,210] reduction1742.output := by lin_cert using reduction1742.terms
def map_36_117 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1805 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1805 : InImage map_36_117 image1805 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1805 : Bundle := named_bundle% "RealMapCertificates/relations/basis1805.json"
theorem reductionProof1805 : EqualModuloRelations reduction1805.relations reduction1805.input reduction1805.output := by lin_cert using reduction1805.terms
theorem substitutionProof1805 : IsMapEvaluation generatorImages reduction1805.relations [252] reduction1805.output := by lin_cert using reduction1805.terms
def map_36_118 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1848 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1848 : InImage map_36_118 image1848 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1848 : Bundle := named_bundle% "RealMapCertificates/relations/basis1848.json"
theorem reductionProof1848 : EqualModuloRelations reduction1848.relations reduction1848.input reduction1848.output := by lin_cert using reduction1848.terms
theorem substitutionProof1848 : IsMapEvaluation generatorImages reduction1848.relations [0,253] reduction1848.output := by lin_cert using reduction1848.terms
def map_36_120 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image1917 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation1917 : InImage map_36_120 image1917 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1917 : Bundle := named_bundle% "RealMapCertificates/relations/basis1917.json"
theorem reductionProof1917 : EqualModuloRelations reduction1917.relations reduction1917.input reduction1917.output := by lin_cert using reduction1917.terms
theorem substitutionProof1917 : IsMapEvaluation generatorImages reduction1917.relations [8,182] reduction1917.output := by lin_cert using reduction1917.terms
def map_36_121 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1973 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1973 : InImage map_36_121 image1973 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1973 : Bundle := named_bundle% "RealMapCertificates/relations/basis1973.json"
theorem reductionProof1973 : EqualModuloRelations reduction1973.relations reduction1973.input reduction1973.output := by lin_cert using reduction1973.terms
theorem substitutionProof1973 : IsMapEvaluation generatorImages reduction1973.relations [0,8,183] reduction1973.output := by lin_cert using reduction1973.terms
def map_36_123 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2037 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2037 : InImage map_36_123 image2037 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2037 : Bundle := named_bundle% "RealMapCertificates/relations/basis2037.json"
theorem reductionProof2037 : EqualModuloRelations reduction2037.relations reduction2037.input reduction2037.output := by lin_cert using reduction2037.terms
theorem substitutionProof2037 : IsMapEvaluation generatorImages reduction2037.relations [8,199] reduction2037.output := by lin_cert using reduction2037.terms
def map_36_124 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2092 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2092 : InImage map_36_124 image2092 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2092 : Bundle := named_bundle% "RealMapCertificates/relations/basis2092.json"
theorem reductionProof2092 : EqualModuloRelations reduction2092.relations reduction2092.input reduction2092.output := by lin_cert using reduction2092.terms
theorem substitutionProof2092 : IsMapEvaluation generatorImages reduction2092.relations [0,8,200] reduction2092.output := by lin_cert using reduction2092.terms
def map_36_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2164 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2164 : InImage map_36_126 image2164 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2164 : Bundle := named_bundle% "RealMapCertificates/relations/basis2164.json"
theorem reductionProof2164 : EqualModuloRelations reduction2164.relations reduction2164.input reduction2164.output := by lin_cert using reduction2164.terms
theorem substitutionProof2164 : IsMapEvaluation generatorImages reduction2164.relations [8,8,145] reduction2164.output := by lin_cert using reduction2164.terms
def map_36_127 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2222 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2222 : InImage map_36_127 image2222 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2222 : Bundle := named_bundle% "RealMapCertificates/relations/basis2222.json"
theorem reductionProof2222 : EqualModuloRelations reduction2222.relations reduction2222.input reduction2222.output := by lin_cert using reduction2222.terms
theorem substitutionProof2222 : IsMapEvaluation generatorImages reduction2222.relations [0,8,16,111] reduction2222.output := by lin_cert using reduction2222.terms
def map_36_129 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2320 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2320 : InImage map_36_129 image2320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2320 : Bundle := named_bundle% "RealMapCertificates/relations/basis2320.json"
theorem reductionProof2320 : EqualModuloRelations reduction2320.relations reduction2320.input reduction2320.output := by lin_cert using reduction2320.terms
theorem substitutionProof2320 : IsMapEvaluation generatorImages reduction2320.relations [8,8,152] reduction2320.output := by lin_cert using reduction2320.terms
def map_36_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2387 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2387 : InImage map_36_130 image2387 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2387 : Bundle := named_bundle% "RealMapCertificates/relations/basis2387.json"
theorem reductionProof2387 : EqualModuloRelations reduction2387.relations reduction2387.input reduction2387.output := by lin_cert using reduction2387.terms
theorem substitutionProof2387 : IsMapEvaluation generatorImages reduction2387.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,245] reduction2387.output := by lin_cert using reduction2387.terms
def map_36_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2447 : InImage map_36_131 image2447 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2447 : Bundle := named_bundle% "RealMapCertificates/relations/basis2447.json"
theorem reductionProof2447 : EqualModuloRelations reduction2447.relations reduction2447.input reduction2447.output := by lin_cert using reduction2447.terms
theorem substitutionProof2447 : IsMapEvaluation generatorImages reduction2447.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2447.output := by lin_cert using reduction2447.terms
def map_36_132 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2503 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2503 : InImage map_36_132 image2503 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2503 : Bundle := named_bundle% "RealMapCertificates/relations/basis2503.json"
theorem reductionProof2503 : EqualModuloRelations reduction2503.relations reduction2503.input reduction2503.output := by lin_cert using reduction2503.terms
theorem substitutionProof2503 : IsMapEvaluation generatorImages reduction2503.relations [8,8,8,110] reduction2503.output := by lin_cert using reduction2503.terms
def map_36_135 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2726 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2726 : InImage map_36_135 image2726 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2726 : Bundle := named_bundle% "RealMapCertificates/relations/basis2726.json"
theorem reductionProof2726 : EqualModuloRelations reduction2726.relations reduction2726.input reduction2726.output := by lin_cert using reduction2726.terms
theorem substitutionProof2726 : IsMapEvaluation generatorImages reduction2726.relations [8,8,8,116] reduction2726.output := by lin_cert using reduction2726.terms
def map_36_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2878 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2878 : InImage map_36_137 image2878 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2878 : Bundle := named_bundle% "RealMapCertificates/relations/basis2878.json"
theorem reductionProof2878 : EqualModuloRelations reduction2878.relations reduction2878.input reduction2878.output := by lin_cert using reduction2878.terms
theorem substitutionProof2878 : IsMapEvaluation generatorImages reduction2878.relations [0,0,402] reduction2878.output := by lin_cert using reduction2878.terms
def map_36_138 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2952 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2952 : InImage map_36_138 image2952 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2952 : Bundle := named_bundle% "RealMapCertificates/relations/basis2952.json"
theorem reductionProof2952 : EqualModuloRelations reduction2952.relations reduction2952.input reduction2952.output := by lin_cert using reduction2952.terms
theorem substitutionProof2952 : IsMapEvaluation generatorImages reduction2952.relations [8,8,8,8,71] reduction2952.output := by lin_cert using reduction2952.terms
def image2953 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2953 : InImage map_36_138 image2953 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2953 : Bundle := named_bundle% "RealMapCertificates/relations/basis2953.json"
theorem reductionProof2953 : EqualModuloRelations reduction2953.relations reduction2953.input reduction2953.output := by lin_cert using reduction2953.terms
theorem substitutionProof2953 : IsMapEvaluation generatorImages reduction2953.relations [0,0,0,403] reduction2953.output := by lin_cert using reduction2953.terms
def map_36_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3049 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3049 : InImage map_36_139 image3049 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3049 : Bundle := named_bundle% "RealMapCertificates/relations/basis3049.json"
theorem reductionProof3049 : EqualModuloRelations reduction3049.relations reduction3049.input reduction3049.output := by lin_cert using reduction3049.terms
theorem substitutionProof3049 : IsMapEvaluation generatorImages reduction3049.relations [1,1,402] reduction3049.output := by lin_cert using reduction3049.terms
def map_36_140 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3116 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3116 : InImage map_36_140 image3116 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3116 : Bundle := named_bundle% "RealMapCertificates/relations/basis3116.json"
theorem reductionProof3116 : EqualModuloRelations reduction3116.relations reduction3116.input reduction3116.output := by lin_cert using reduction3116.terms
theorem substitutionProof3116 : IsMapEvaluation generatorImages reduction3116.relations [0,0,432] reduction3116.output := by lin_cert using reduction3116.terms
def map_36_141 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3207 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3207 : InImage map_36_141 image3207 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3207 : Bundle := named_bundle% "RealMapCertificates/relations/basis3207.json"
theorem reductionProof3207 : EqualModuloRelations reduction3207.relations reduction3207.input reduction3207.output := by lin_cert using reduction3207.terms
theorem substitutionProof3207 : IsMapEvaluation generatorImages reduction3207.relations [8,8,8,8,77] reduction3207.output := by lin_cert using reduction3207.terms
def map_36_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3368 : InImage map_36_143 image3368 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3368 : Bundle := named_bundle% "RealMapCertificates/relations/basis3368.json"
theorem reductionProof3368 : EqualModuloRelations reduction3368.relations reduction3368.input reduction3368.output := by lin_cert using reduction3368.terms
theorem substitutionProof3368 : IsMapEvaluation generatorImages reduction3368.relations [0,0,16,224] reduction3368.output := by lin_cert using reduction3368.terms
def map_36_144 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3447 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3447 : InImage map_36_144 image3447 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3447 : Bundle := named_bundle% "RealMapCertificates/relations/basis3447.json"
theorem reductionProof3447 : EqualModuloRelations reduction3447.relations reduction3447.input reduction3447.output := by lin_cert using reduction3447.terms
theorem substitutionProof3447 : IsMapEvaluation generatorImages reduction3447.relations [8,8,8,8,8,49] reduction3447.output := by lin_cert using reduction3447.terms
def image3448 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation3448 : InImage map_36_144 image3448 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3448 : Bundle := named_bundle% "RealMapCertificates/relations/basis3448.json"
theorem reductionProof3448 : EqualModuloRelations reduction3448.relations reduction3448.input reduction3448.output := by lin_cert using reduction3448.terms
theorem substitutionProof3448 : IsMapEvaluation generatorImages reduction3448.relations [0,0,0,0,452] reduction3448.output := by lin_cert using reduction3448.terms
def map_36_145 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3541 : InImage map_36_145 image3541 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3541 : Bundle := named_bundle% "RealMapCertificates/relations/basis3541.json"
theorem reductionProof3541 : EqualModuloRelations reduction3541.relations reduction3541.input reduction3541.output := by lin_cert using reduction3541.terms
theorem substitutionProof3541 : IsMapEvaluation generatorImages reduction3541.relations [0,0,0,0,17,225] reduction3541.output := by lin_cert using reduction3541.terms
def map_36_146 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3608 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3608 : InImage map_36_146 image3608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3608 : Bundle := named_bundle% "RealMapCertificates/relations/basis3608.json"
theorem reductionProof3608 : EqualModuloRelations reduction3608.relations reduction3608.input reduction3608.output := by lin_cert using reduction3608.terms
theorem substitutionProof3608 : IsMapEvaluation generatorImages reduction3608.relations [0,0,8,297] reduction3608.output := by lin_cert using reduction3608.terms
def map_36_147 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3707 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3707 : InImage map_36_147 image3707 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3707 : Bundle := named_bundle% "RealMapCertificates/relations/basis3707.json"
theorem reductionProof3707 : EqualModuloRelations reduction3707.relations reduction3707.input reduction3707.output := by lin_cert using reduction3707.terms
theorem substitutionProof3707 : IsMapEvaluation generatorImages reduction3707.relations [8,8,8,8,8,55] reduction3707.output := by lin_cert using reduction3707.terms
def map_36_149 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3877 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3877 : InImage map_36_149 image3877 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3877 : Bundle := named_bundle% "RealMapCertificates/relations/basis3877.json"
theorem reductionProof3877 : EqualModuloRelations reduction3877.relations reduction3877.input reduction3877.output := by lin_cert using reduction3877.terms
theorem substitutionProof3877 : IsMapEvaluation generatorImages reduction3877.relations [0,0,8,8,224] reduction3877.output := by lin_cert using reduction3877.terms
def map_36_150 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3963 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3963 : InImage map_36_150 image3963 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3963 : Bundle := named_bundle% "RealMapCertificates/relations/basis3963.json"
theorem reductionProof3963 : EqualModuloRelations reduction3963.relations reduction3963.input reduction3963.output := by lin_cert using reduction3963.terms
theorem substitutionProof3963 : IsMapEvaluation generatorImages reduction3963.relations [8,8,8,8,8,8,31] reduction3963.output := by lin_cert using reduction3963.terms
def map_36_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4080 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4080 : InImage map_36_151 image4080 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4080 : Bundle := named_bundle% "RealMapCertificates/relations/basis4080.json"
theorem reductionProof4080 : EqualModuloRelations reduction4080.relations reduction4080.input reduction4080.output := by lin_cert using reduction4080.terms
theorem substitutionProof4080 : IsMapEvaluation generatorImages reduction4080.relations [0,0,0,0,0,17,244] reduction4080.output := by lin_cert using reduction4080.terms
end RealMapCertificates
