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
  | 19 => [[4,8]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 39 => [[4,4,8]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 64 => []
  | 72 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 278 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 380 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 500 => []
  | 516 => []
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 623 => []
  | 688 => []
  | 725 => []
  | 752 => []
  | 759 => []
  | 795 => []
  | 807 => []
  | 809 => []
  | 830 => []
  | 898 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 971 => []
  | 1034 => []
  | _ => []
def map_36_152 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image4150 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4150 : InImage map_36_152 image4150 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4150 : Bundle := named_bundle% "RealMapCertificates/relations/basis4150.json"
theorem reductionProof4150 : EqualModuloRelations reduction4150.relations reduction4150.input reduction4150.output := by lin_cert using reduction4150.terms
theorem substitutionProof4150 : IsMapEvaluation generatorImages reduction4150.relations [0,0,0,0,0,17,17,138] reduction4150.output := by lin_cert using reduction4150.terms
def map_36_153 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4246 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4246 : InImage map_36_153 image4246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4246 : Bundle := named_bundle% "RealMapCertificates/relations/basis4246.json"
theorem reductionProof4246 : EqualModuloRelations reduction4246.relations reduction4246.input reduction4246.output := by lin_cert using reduction4246.terms
theorem substitutionProof4246 : IsMapEvaluation generatorImages reduction4246.relations [8,8,8,8,8,8,39] reduction4246.output := by lin_cert using reduction4246.terms
def map_36_155 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4403 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4403 : InImage map_36_155 image4403 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4403 : Bundle := named_bundle% "RealMapCertificates/relations/basis4403.json"
theorem reductionProof4403 : EqualModuloRelations reduction4403.relations reduction4403.input reduction4403.output := by lin_cert using reduction4403.terms
theorem substitutionProof4403 : IsMapEvaluation generatorImages reduction4403.relations [595] reduction4403.output := by lin_cert using reduction4403.terms
def map_36_156 : Matrix 4 2 := fun i j => ([false,true,true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4489 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation4489 : InImage map_36_156 image4489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4489 : Bundle := named_bundle% "RealMapCertificates/relations/basis4489.json"
theorem reductionProof4489 : EqualModuloRelations reduction4489.relations reduction4489.input reduction4489.output := by lin_cert using reduction4489.terms
theorem substitutionProof4489 : IsMapEvaluation generatorImages reduction4489.relations [17,298] reduction4489.output := by lin_cert using reduction4489.terms
def image4490 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4490 : InImage map_36_156 image4490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4490 : Bundle := named_bundle% "RealMapCertificates/relations/basis4490.json"
theorem reductionProof4490 : EqualModuloRelations reduction4490.relations reduction4490.input reduction4490.output := by lin_cert using reduction4490.terms
theorem substitutionProof4490 : IsMapEvaluation generatorImages reduction4490.relations [8,8,8,8,8,8,8,16] reduction4490.output := by lin_cert using reduction4490.terms
def map_36_158 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4668 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4668 : InImage map_36_158 image4668 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4668 : Bundle := named_bundle% "RealMapCertificates/relations/basis4668.json"
theorem reductionProof4668 : EqualModuloRelations reduction4668.relations reduction4668.input reduction4668.output := by lin_cert using reduction4668.terms
theorem substitutionProof4668 : IsMapEvaluation generatorImages reduction4668.relations [8,452] reduction4668.output := by lin_cert using reduction4668.terms
def map_36_159 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4759 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4759 : InImage map_36_159 image4759 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4759 : Bundle := named_bundle% "RealMapCertificates/relations/basis4759.json"
theorem reductionProof4759 : EqualModuloRelations reduction4759.relations reduction4759.input reduction4759.output := by lin_cert using reduction4759.terms
theorem substitutionProof4759 : IsMapEvaluation generatorImages reduction4759.relations [8,17,225] reduction4759.output := by lin_cert using reduction4759.terms
def image4760 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4760 : InImage map_36_159 image4760 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4760 : Bundle := named_bundle% "RealMapCertificates/relations/basis4760.json"
theorem reductionProof4760 : EqualModuloRelations reduction4760.relations reduction4760.input reduction4760.output := by lin_cert using reduction4760.terms
theorem substitutionProof4760 : IsMapEvaluation generatorImages reduction4760.relations [8,8,8,8,8,8,8,19] reduction4760.output := by lin_cert using reduction4760.terms
def map_36_161 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4929 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4929 : InImage map_36_161 image4929 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4929 : Bundle := named_bundle% "RealMapCertificates/relations/basis4929.json"
theorem reductionProof4929 : EqualModuloRelations reduction4929.relations reduction4929.input reduction4929.output := by lin_cert using reduction4929.terms
theorem substitutionProof4929 : IsMapEvaluation generatorImages reduction4929.relations [8,488] reduction4929.output := by lin_cert using reduction4929.terms
def image4930 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4930 : InImage map_36_161 image4930 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4930 : Bundle := named_bundle% "RealMapCertificates/relations/basis4930.json"
theorem reductionProof4930 : EqualModuloRelations reduction4930.relations reduction4930.input reduction4930.output := by lin_cert using reduction4930.terms
theorem substitutionProof4930 : IsMapEvaluation generatorImages reduction4930.relations [1,42,224] reduction4930.output := by lin_cert using reduction4930.terms
def map_36_162 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5029 : InImage map_36_162 image5029 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5029 : Bundle := named_bundle% "RealMapCertificates/relations/basis5029.json"
theorem reductionProof5029 : EqualModuloRelations reduction5029.relations reduction5029.input reduction5029.output := by lin_cert using reduction5029.terms
theorem substitutionProof5029 : IsMapEvaluation generatorImages reduction5029.relations [8,17,238] reduction5029.output := by lin_cert using reduction5029.terms
def image5030 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5030 : InImage map_36_162 image5030 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5030 : Bundle := named_bundle% "RealMapCertificates/relations/basis5030.json"
theorem reductionProof5030 : EqualModuloRelations reduction5030.relations reduction5030.input reduction5030.output := by lin_cert using reduction5030.terms
theorem substitutionProof5030 : IsMapEvaluation generatorImages reduction5030.relations [8,8,8,8,8,8,8,8,8] reduction5030.output := by lin_cert using reduction5030.terms
def image5031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5031 : InImage map_36_162 image5031 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5031 : Bundle := named_bundle% "RealMapCertificates/relations/basis5031.json"
theorem reductionProof5031 : EqualModuloRelations reduction5031.relations reduction5031.input reduction5031.output := by lin_cert using reduction5031.terms
theorem substitutionProof5031 : IsMapEvaluation generatorImages reduction5031.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction5031.output := by lin_cert using reduction5031.terms
def map_36_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5146 : InImage map_36_163 image5146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5146 : Bundle := named_bundle% "RealMapCertificates/relations/basis5146.json"
theorem reductionProof5146 : EqualModuloRelations reduction5146.relations reduction5146.input reduction5146.output := by lin_cert using reduction5146.terms
theorem substitutionProof5146 : IsMapEvaluation generatorImages reduction5146.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5146.output := by lin_cert using reduction5146.terms
def map_36_164 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image5221 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5221 : InImage map_36_164 image5221 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5221 : Bundle := named_bundle% "RealMapCertificates/relations/basis5221.json"
theorem reductionProof5221 : EqualModuloRelations reduction5221.relations reduction5221.input reduction5221.output := by lin_cert using reduction5221.terms
theorem substitutionProof5221 : IsMapEvaluation generatorImages reduction5221.relations [8,16,244] reduction5221.output := by lin_cert using reduction5221.terms
def map_36_165 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5335 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5335 : InImage map_36_165 image5335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5335 : Bundle := named_bundle% "RealMapCertificates/relations/basis5335.json"
theorem reductionProof5335 : EqualModuloRelations reduction5335.relations reduction5335.input reduction5335.output := by lin_cert using reduction5335.terms
theorem substitutionProof5335 : IsMapEvaluation generatorImages reduction5335.relations [8,16,17,138] reduction5335.output := by lin_cert using reduction5335.terms
def image5336 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5336 : InImage map_36_165 image5336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5336 : Bundle := named_bundle% "RealMapCertificates/relations/basis5336.json"
theorem reductionProof5336 : EqualModuloRelations reduction5336.relations reduction5336.input reduction5336.output := by lin_cert using reduction5336.terms
theorem substitutionProof5336 : IsMapEvaluation generatorImages reduction5336.relations [8,8,8,8,8,8,8,8,9] reduction5336.output := by lin_cert using reduction5336.terms
def map_36_167 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5547 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5547 : InImage map_36_167 image5547 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5547 : Bundle := named_bundle% "RealMapCertificates/relations/basis5547.json"
theorem reductionProof5547 : EqualModuloRelations reduction5547.relations reduction5547.input reduction5547.output := by lin_cert using reduction5547.terms
theorem substitutionProof5547 : IsMapEvaluation generatorImages reduction5547.relations [8,8,343] reduction5547.output := by lin_cert using reduction5547.terms
def map_36_168 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5653 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5653 : InImage map_36_168 image5653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5653 : Bundle := named_bundle% "RealMapCertificates/relations/basis5653.json"
theorem reductionProof5653 : EqualModuloRelations reduction5653.relations reduction5653.input reduction5653.output := by lin_cert using reduction5653.terms
theorem substitutionProof5653 : IsMapEvaluation generatorImages reduction5653.relations [8,8,17,185] reduction5653.output := by lin_cert using reduction5653.terms
def image5654 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5654 : InImage map_36_168 image5654 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5654 : Bundle := named_bundle% "RealMapCertificates/relations/basis5654.json"
theorem reductionProof5654 : EqualModuloRelations reduction5654.relations reduction5654.input reduction5654.output := by lin_cert using reduction5654.terms
theorem substitutionProof5654 : IsMapEvaluation generatorImages reduction5654.relations [8,8,8,8,8,8,8,8,13] reduction5654.output := by lin_cert using reduction5654.terms
def map_36_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5779 : InImage map_36_169 image5779 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5779 : Bundle := named_bundle% "RealMapCertificates/relations/basis5779.json"
theorem reductionProof5779 : EqualModuloRelations reduction5779.relations reduction5779.input reduction5779.output := by lin_cert using reduction5779.terms
theorem substitutionProof5779 : IsMapEvaluation generatorImages reduction5779.relations [0,0,725] reduction5779.output := by lin_cert using reduction5779.terms
def map_36_170 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5873 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5873 : InImage map_36_170 image5873 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5873 : Bundle := named_bundle% "RealMapCertificates/relations/basis5873.json"
theorem reductionProof5873 : EqualModuloRelations reduction5873.relations reduction5873.input reduction5873.output := by lin_cert using reduction5873.terms
theorem substitutionProof5873 : IsMapEvaluation generatorImages reduction5873.relations [8,8,8,244] reduction5873.output := by lin_cert using reduction5873.terms
def image5874 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5874 : InImage map_36_170 image5874 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5874 : Bundle := named_bundle% "RealMapCertificates/relations/basis5874.json"
theorem reductionProof5874 : EqualModuloRelations reduction5874.relations reduction5874.input reduction5874.output := by lin_cert using reduction5874.terms
theorem substitutionProof5874 : IsMapEvaluation generatorImages reduction5874.relations [0,752] reduction5874.output := by lin_cert using reduction5874.terms
def map_36_171 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6000 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6000 : InImage map_36_171 image6000 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6000 : Bundle := named_bundle% "RealMapCertificates/relations/basis6000.json"
theorem reductionProof6000 : EqualModuloRelations reduction6000.relations reduction6000.input reduction6000.output := by lin_cert using reduction6000.terms
theorem substitutionProof6000 : IsMapEvaluation generatorImages reduction6000.relations [8,8,8,17,138] reduction6000.output := by lin_cert using reduction6000.terms
def image6001 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6001 : InImage map_36_171 image6001 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6001 : Bundle := named_bundle% "RealMapCertificates/relations/basis6001.json"
theorem reductionProof6001 : EqualModuloRelations reduction6001.relations reduction6001.input reduction6001.output := by lin_cert using reduction6001.terms
theorem substitutionProof6001 : IsMapEvaluation generatorImages reduction6001.relations [8,8,8,8,8,8,8,9,13] reduction6001.output := by lin_cert using reduction6001.terms
def image6002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6002 : InImage map_36_171 image6002 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6002 : Bundle := named_bundle% "RealMapCertificates/relations/basis6002.json"
theorem reductionProof6002 : EqualModuloRelations reduction6002.relations reduction6002.input reduction6002.output := by lin_cert using reduction6002.terms
theorem substitutionProof6002 : IsMapEvaluation generatorImages reduction6002.relations [1,1,725] reduction6002.output := by lin_cert using reduction6002.terms
def map_36_172 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image6120 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6120 : InImage map_36_172 image6120 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6120 : Bundle := named_bundle% "RealMapCertificates/relations/basis6120.json"
theorem reductionProof6120 : EqualModuloRelations reduction6120.relations reduction6120.input reduction6120.output := by lin_cert using reduction6120.terms
theorem substitutionProof6120 : IsMapEvaluation generatorImages reduction6120.relations [0,0,759] reduction6120.output := by lin_cert using reduction6120.terms
def map_36_173 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6213 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6213 : InImage map_36_173 image6213 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6213 : Bundle := named_bundle% "RealMapCertificates/relations/basis6213.json"
theorem reductionProof6213 : EqualModuloRelations reduction6213.relations reduction6213.input reduction6213.output := by lin_cert using reduction6213.terms
theorem substitutionProof6213 : IsMapEvaluation generatorImages reduction6213.relations [8,8,8,257] reduction6213.output := by lin_cert using reduction6213.terms
def map_36_174 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image6323 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6323 : InImage map_36_174 image6323 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6323 : Bundle := named_bundle% "RealMapCertificates/relations/basis6323.json"
theorem reductionProof6323 : EqualModuloRelations reduction6323.relations reduction6323.input reduction6323.output := by lin_cert using reduction6323.terms
theorem substitutionProof6323 : IsMapEvaluation generatorImages reduction6323.relations [64,224] reduction6323.output := by lin_cert using reduction6323.terms
def image6324 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6324 : InImage map_36_174 image6324 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6324 : Bundle := named_bundle% "RealMapCertificates/relations/basis6324.json"
theorem reductionProof6324 : EqualModuloRelations reduction6324.relations reduction6324.input reduction6324.output := by lin_cert using reduction6324.terms
theorem substitutionProof6324 : IsMapEvaluation generatorImages reduction6324.relations [8,8,8,17,147] reduction6324.output := by lin_cert using reduction6324.terms
def image6325 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6325 : InImage map_36_174 image6325 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6325 : Bundle := named_bundle% "RealMapCertificates/relations/basis6325.json"
theorem reductionProof6325 : EqualModuloRelations reduction6325.relations reduction6325.input reduction6325.output := by lin_cert using reduction6325.terms
theorem substitutionProof6325 : IsMapEvaluation generatorImages reduction6325.relations [8,8,8,8,8,8,8,13,13] reduction6325.output := by lin_cert using reduction6325.terms
def map_36_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6458 : InImage map_36_175 image6458 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6458 : Bundle := named_bundle% "RealMapCertificates/relations/basis6458.json"
theorem reductionProof6458 : EqualModuloRelations reduction6458.relations reduction6458.input reduction6458.output := by lin_cert using reduction6458.terms
theorem substitutionProof6458 : IsMapEvaluation generatorImages reduction6458.relations [0,64,225] reduction6458.output := by lin_cert using reduction6458.terms
def image6459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6459 : InImage map_36_175 image6459 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6459 : Bundle := named_bundle% "RealMapCertificates/relations/basis6459.json"
theorem reductionProof6459 : EqualModuloRelations reduction6459.relations reduction6459.input reduction6459.output := by lin_cert using reduction6459.terms
theorem substitutionProof6459 : IsMapEvaluation generatorImages reduction6459.relations [0,0,16,491] reduction6459.output := by lin_cert using reduction6459.terms
def map_36_176 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6548 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6548 : InImage map_36_176 image6548 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6548 : Bundle := named_bundle% "RealMapCertificates/relations/basis6548.json"
theorem reductionProof6548 : EqualModuloRelations reduction6548.relations reduction6548.input reduction6548.output := by lin_cert using reduction6548.terms
theorem substitutionProof6548 : IsMapEvaluation generatorImages reduction6548.relations [8,8,8,16,149] reduction6548.output := by lin_cert using reduction6548.terms
def image6549 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6549 : InImage map_36_176 image6549 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6549 : Bundle := named_bundle% "RealMapCertificates/relations/basis6549.json"
theorem reductionProof6549 : EqualModuloRelations reduction6549.relations reduction6549.input reduction6549.output := by lin_cert using reduction6549.terms
theorem substitutionProof6549 : IsMapEvaluation generatorImages reduction6549.relations [0,0,0,17,491] reduction6549.output := by lin_cert using reduction6549.terms
def map_36_177 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image6681 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6681 : InImage map_36_177 image6681 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction6681 : Bundle := named_bundle% "RealMapCertificates/relations/basis6681.json"
theorem reductionProof6681 : EqualModuloRelations reduction6681.relations reduction6681.input reduction6681.output := by lin_cert using reduction6681.terms
theorem substitutionProof6681 : IsMapEvaluation generatorImages reduction6681.relations [64,237] reduction6681.output := by lin_cert using reduction6681.terms
def image6682 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6682 : InImage map_36_177 image6682 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction6682 : Bundle := named_bundle% "RealMapCertificates/relations/basis6682.json"
theorem reductionProof6682 : EqualModuloRelations reduction6682.relations reduction6682.input reduction6682.output := by lin_cert using reduction6682.terms
theorem substitutionProof6682 : IsMapEvaluation generatorImages reduction6682.relations [8,8,8,16,154] reduction6682.output := by lin_cert using reduction6682.terms
def image6683 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6683 : InImage map_36_177 image6683 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction6683 : Bundle := named_bundle% "RealMapCertificates/relations/basis6683.json"
theorem reductionProof6683 : EqualModuloRelations reduction6683.relations reduction6683.input reduction6683.output := by lin_cert using reduction6683.terms
theorem substitutionProof6683 : IsMapEvaluation generatorImages reduction6683.relations [8,8,8,8,8,8,9,13,13] reduction6683.output := by lin_cert using reduction6683.terms
def image6684 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6684 : InImage map_36_177 image6684 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction6684 : Bundle := named_bundle% "RealMapCertificates/relations/basis6684.json"
theorem reductionProof6684 : EqualModuloRelations reduction6684.relations reduction6684.input reduction6684.output := by lin_cert using reduction6684.terms
theorem substitutionProof6684 : IsMapEvaluation generatorImages reduction6684.relations [0,0,0,809] reduction6684.output := by lin_cert using reduction6684.terms
def image6685 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6685 : InImage map_36_177 image6685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction6685 : Bundle := named_bundle% "RealMapCertificates/relations/basis6685.json"
theorem reductionProof6685 : EqualModuloRelations reduction6685.relations reduction6685.input reduction6685.output := by lin_cert using reduction6685.terms
theorem substitutionProof6685 : IsMapEvaluation generatorImages reduction6685.relations [0,0,0,807] reduction6685.output := by lin_cert using reduction6685.terms
def map_36_178 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image6802 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6802 : InImage map_36_178 image6802 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6802 : Bundle := named_bundle% "RealMapCertificates/relations/basis6802.json"
theorem reductionProof6802 : EqualModuloRelations reduction6802.relations reduction6802.input reduction6802.output := by lin_cert using reduction6802.terms
theorem substitutionProof6802 : IsMapEvaluation generatorImages reduction6802.relations [0,64,238] reduction6802.output := by lin_cert using reduction6802.terms
def image6803 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6803 : InImage map_36_178 image6803 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6803 : Bundle := named_bundle% "RealMapCertificates/relations/basis6803.json"
theorem reductionProof6803 : EqualModuloRelations reduction6803.relations reduction6803.input reduction6803.output := by lin_cert using reduction6803.terms
theorem substitutionProof6803 : IsMapEvaluation generatorImages reduction6803.relations [0,0,8,623] reduction6803.output := by lin_cert using reduction6803.terms
def image6804 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6804 : InImage map_36_178 image6804 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6804 : Bundle := named_bundle% "RealMapCertificates/relations/basis6804.json"
theorem reductionProof6804 : EqualModuloRelations reduction6804.relations reduction6804.input reduction6804.output := by lin_cert using reduction6804.terms
theorem substitutionProof6804 : IsMapEvaluation generatorImages reduction6804.relations [0,0,0,0,0,795] reduction6804.output := by lin_cert using reduction6804.terms
def map_36_179 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6911 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6911 : InImage map_36_179 image6911 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6911 : Bundle := named_bundle% "RealMapCertificates/relations/basis6911.json"
theorem reductionProof6911 : EqualModuloRelations reduction6911.relations reduction6911.input reduction6911.output := by lin_cert using reduction6911.terms
theorem substitutionProof6911 : IsMapEvaluation generatorImages reduction6911.relations [8,8,8,8,206] reduction6911.output := by lin_cert using reduction6911.terms
def map_36_180 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7044 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7044 : InImage map_36_180 image7044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7044 : Bundle := named_bundle% "RealMapCertificates/relations/basis7044.json"
theorem reductionProof7044 : EqualModuloRelations reduction7044.relations reduction7044.input reduction7044.output := by lin_cert using reduction7044.terms
theorem substitutionProof7044 : IsMapEvaluation generatorImages reduction7044.relations [16,64,137] reduction7044.output := by lin_cert using reduction7044.terms
def image7045 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7045 : InImage map_36_180 image7045 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7045 : Bundle := named_bundle% "RealMapCertificates/relations/basis7045.json"
theorem reductionProof7045 : EqualModuloRelations reduction7045.relations reduction7045.input reduction7045.output := by lin_cert using reduction7045.terms
theorem substitutionProof7045 : IsMapEvaluation generatorImages reduction7045.relations [8,8,8,8,17,113] reduction7045.output := by lin_cert using reduction7045.terms
def image7046 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7046 : InImage map_36_180 image7046 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7046 : Bundle := named_bundle% "RealMapCertificates/relations/basis7046.json"
theorem reductionProof7046 : EqualModuloRelations reduction7046.relations reduction7046.input reduction7046.output := by lin_cert using reduction7046.terms
theorem substitutionProof7046 : IsMapEvaluation generatorImages reduction7046.relations [8,8,8,8,8,8,13,13,13] reduction7046.output := by lin_cert using reduction7046.terms
def map_36_181 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image7175 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7175 : InImage map_36_181 image7175 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7175 : Bundle := named_bundle% "RealMapCertificates/relations/basis7175.json"
theorem reductionProof7175 : EqualModuloRelations reduction7175.relations reduction7175.input reduction7175.output := by lin_cert using reduction7175.terms
theorem substitutionProof7175 : IsMapEvaluation generatorImages reduction7175.relations [0,16,64,138] reduction7175.output := by lin_cert using reduction7175.terms
def image7176 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7176 : InImage map_36_181 image7176 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7176 : Bundle := named_bundle% "RealMapCertificates/relations/basis7176.json"
theorem reductionProof7176 : EqualModuloRelations reduction7176.relations reduction7176.input reduction7176.output := by lin_cert using reduction7176.terms
theorem substitutionProof7176 : IsMapEvaluation generatorImages reduction7176.relations [0,0,64,244] reduction7176.output := by lin_cert using reduction7176.terms
def image7177 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7177 : InImage map_36_181 image7177 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7177 : Bundle := named_bundle% "RealMapCertificates/relations/basis7177.json"
theorem reductionProof7177 : EqualModuloRelations reduction7177.relations reduction7177.input reduction7177.output := by lin_cert using reduction7177.terms
theorem substitutionProof7177 : IsMapEvaluation generatorImages reduction7177.relations [0,0,8,8,491] reduction7177.output := by lin_cert using reduction7177.terms
def map_36_182 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7267 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7267 : InImage map_36_182 image7267 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7267 : Bundle := named_bundle% "RealMapCertificates/relations/basis7267.json"
theorem reductionProof7267 : EqualModuloRelations reduction7267.relations reduction7267.input reduction7267.output := by lin_cert using reduction7267.terms
theorem substitutionProof7267 : IsMapEvaluation generatorImages reduction7267.relations [8,8,8,8,8,149] reduction7267.output := by lin_cert using reduction7267.terms
def image7268 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7268 : InImage map_36_182 image7268 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7268 : Bundle := named_bundle% "RealMapCertificates/relations/basis7268.json"
theorem reductionProof7268 : EqualModuloRelations reduction7268.relations reduction7268.input reduction7268.output := by lin_cert using reduction7268.terms
theorem substitutionProof7268 : IsMapEvaluation generatorImages reduction7268.relations [0,0,0,138,149] reduction7268.output := by lin_cert using reduction7268.terms
def map_36_183 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image7411 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7411 : InImage map_36_183 image7411 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction7411 : Bundle := named_bundle% "RealMapCertificates/relations/basis7411.json"
theorem reductionProof7411 : EqualModuloRelations reduction7411.relations reduction7411.input reduction7411.output := by lin_cert using reduction7411.terms
theorem substitutionProof7411 : IsMapEvaluation generatorImages reduction7411.relations [8,64,184] reduction7411.output := by lin_cert using reduction7411.terms
def image7412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7412 : InImage map_36_183 image7412 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction7412 : Bundle := named_bundle% "RealMapCertificates/relations/basis7412.json"
theorem reductionProof7412 : EqualModuloRelations reduction7412.relations reduction7412.input reduction7412.output := by lin_cert using reduction7412.terms
theorem substitutionProof7412 : IsMapEvaluation generatorImages reduction7412.relations [8,8,8,8,8,154] reduction7412.output := by lin_cert using reduction7412.terms
def image7413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7413 : InImage map_36_183 image7413 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction7413 : Bundle := named_bundle% "RealMapCertificates/relations/basis7413.json"
theorem reductionProof7413 : EqualModuloRelations reduction7413.relations reduction7413.input reduction7413.output := by lin_cert using reduction7413.terms
theorem substitutionProof7413 : IsMapEvaluation generatorImages reduction7413.relations [8,8,8,8,8,9,13,13,13] reduction7413.output := by lin_cert using reduction7413.terms
def image7414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7414 : InImage map_36_183 image7414 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction7414 : Bundle := named_bundle% "RealMapCertificates/relations/basis7414.json"
theorem reductionProof7414 : EqualModuloRelations reduction7414.relations reduction7414.input reduction7414.output := by lin_cert using reduction7414.terms
theorem substitutionProof7414 : IsMapEvaluation generatorImages reduction7414.relations [1,1,64,244] reduction7414.output := by lin_cert using reduction7414.terms
def image7415 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7415 : InImage map_36_183 image7415 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction7415 : Bundle := named_bundle% "RealMapCertificates/relations/basis7415.json"
theorem reductionProof7415 : EqualModuloRelations reduction7415.relations reduction7415.input reduction7415.output := by lin_cert using reduction7415.terms
theorem substitutionProof7415 : IsMapEvaluation generatorImages reduction7415.relations [0,0,0,0,17,17,260] reduction7415.output := by lin_cert using reduction7415.terms
def map_36_184 : Matrix 2 3 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7530 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7530 : InImage map_36_184 image7530 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7530 : Bundle := named_bundle% "RealMapCertificates/relations/basis7530.json"
theorem reductionProof7530 : EqualModuloRelations reduction7530.relations reduction7530.input reduction7530.output := by lin_cert using reduction7530.terms
theorem substitutionProof7530 : IsMapEvaluation generatorImages reduction7530.relations [0,0,8,8,516] reduction7530.output := by lin_cert using reduction7530.terms
def image7531 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7531 : InImage map_36_184 image7531 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7531 : Bundle := named_bundle% "RealMapCertificates/relations/basis7531.json"
theorem reductionProof7531 : EqualModuloRelations reduction7531.relations reduction7531.input reduction7531.output := by lin_cert using reduction7531.terms
theorem substitutionProof7531 : IsMapEvaluation generatorImages reduction7531.relations [0,0,0,0,0,64,246] reduction7531.output := by lin_cert using reduction7531.terms
def image7532 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7532 : InImage map_36_184 image7532 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7532 : Bundle := named_bundle% "RealMapCertificates/relations/basis7532.json"
theorem reductionProof7532 : EqualModuloRelations reduction7532.relations reduction7532.input reduction7532.output := by lin_cert using reduction7532.terms
theorem substitutionProof7532 : IsMapEvaluation generatorImages reduction7532.relations [0,0,0,0,0,59,260] reduction7532.output := by lin_cert using reduction7532.terms
def map_36_185 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7634 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7634 : InImage map_36_185 image7634 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7634 : Bundle := named_bundle% "RealMapCertificates/relations/basis7634.json"
theorem reductionProof7634 : EqualModuloRelations reduction7634.relations reduction7634.input reduction7634.output := by lin_cert using reduction7634.terms
theorem substitutionProof7634 : IsMapEvaluation generatorImages reduction7634.relations [8,8,8,8,8,160] reduction7634.output := by lin_cert using reduction7634.terms
def map_36_186 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image7769 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7769 : InImage map_36_186 image7769 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7769 : Bundle := named_bundle% "RealMapCertificates/relations/basis7769.json"
theorem reductionProof7769 : EqualModuloRelations reduction7769.relations reduction7769.input reduction7769.output := by lin_cert using reduction7769.terms
theorem substitutionProof7769 : IsMapEvaluation generatorImages reduction7769.relations [8,8,64,137] reduction7769.output := by lin_cert using reduction7769.terms
def image7770 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7770 : InImage map_36_186 image7770 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7770 : Bundle := named_bundle% "RealMapCertificates/relations/basis7770.json"
theorem reductionProof7770 : EqualModuloRelations reduction7770.relations reduction7770.input reduction7770.output := by lin_cert using reduction7770.terms
theorem substitutionProof7770 : IsMapEvaluation generatorImages reduction7770.relations [8,8,8,8,8,162] reduction7770.output := by lin_cert using reduction7770.terms
def image7771 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7771 : InImage map_36_186 image7771 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7771 : Bundle := named_bundle% "RealMapCertificates/relations/basis7771.json"
theorem reductionProof7771 : EqualModuloRelations reduction7771.relations reduction7771.input reduction7771.output := by lin_cert using reduction7771.terms
theorem substitutionProof7771 : IsMapEvaluation generatorImages reduction7771.relations [8,8,8,8,8,13,13,13,13] reduction7771.output := by lin_cert using reduction7771.terms
def map_36_187 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7887 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7887 : InImage map_36_187 image7887 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7887 : Bundle := named_bundle% "RealMapCertificates/relations/basis7887.json"
theorem reductionProof7887 : EqualModuloRelations reduction7887.relations reduction7887.input reduction7887.output := by lin_cert using reduction7887.terms
theorem substitutionProof7887 : IsMapEvaluation generatorImages reduction7887.relations [1,939] reduction7887.output := by lin_cert using reduction7887.terms
def image7888 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7888 : InImage map_36_187 image7888 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7888 : Bundle := named_bundle% "RealMapCertificates/relations/basis7888.json"
theorem reductionProof7888 : EqualModuloRelations reduction7888.relations reduction7888.input reduction7888.output := by lin_cert using reduction7888.terms
theorem substitutionProof7888 : IsMapEvaluation generatorImages reduction7888.relations [0,0,8,8,16,260] reduction7888.output := by lin_cert using reduction7888.terms
def map_36_188 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7971 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7971 : InImage map_36_188 image7971 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7971 : Bundle := named_bundle% "RealMapCertificates/relations/basis7971.json"
theorem reductionProof7971 : EqualModuloRelations reduction7971.relations reduction7971.input reduction7971.output := by lin_cert using reduction7971.terms
theorem substitutionProof7971 : IsMapEvaluation generatorImages reduction7971.relations [971] reduction7971.output := by lin_cert using reduction7971.terms
def image7972 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7972 : InImage map_36_188 image7972 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7972 : Bundle := named_bundle% "RealMapCertificates/relations/basis7972.json"
theorem reductionProof7972 : EqualModuloRelations reduction7972.relations reduction7972.input reduction7972.output := by lin_cert using reduction7972.terms
theorem substitutionProof7972 : IsMapEvaluation generatorImages reduction7972.relations [8,8,8,8,8,166] reduction7972.output := by lin_cert using reduction7972.terms
def image7973 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7973 : InImage map_36_188 image7973 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7973 : Bundle := named_bundle% "RealMapCertificates/relations/basis7973.json"
theorem reductionProof7973 : EqualModuloRelations reduction7973.relations reduction7973.input reduction7973.output := by lin_cert using reduction7973.terms
theorem substitutionProof7973 : IsMapEvaluation generatorImages reduction7973.relations [0,0,0,0,149,149] reduction7973.output := by lin_cert using reduction7973.terms
def map_36_189 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8125 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8125 : InImage map_36_189 image8125 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8125 : Bundle := named_bundle% "RealMapCertificates/relations/basis8125.json"
theorem reductionProof8125 : EqualModuloRelations reduction8125.relations reduction8125.input reduction8125.output := by lin_cert using reduction8125.terms
theorem substitutionProof8125 : IsMapEvaluation generatorImages reduction8125.relations [8,8,64,146] reduction8125.output := by lin_cert using reduction8125.terms
def image8126 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8126 : InImage map_36_189 image8126 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8126 : Bundle := named_bundle% "RealMapCertificates/relations/basis8126.json"
theorem reductionProof8126 : EqualModuloRelations reduction8126.relations reduction8126.input reduction8126.output := by lin_cert using reduction8126.terms
theorem substitutionProof8126 : IsMapEvaluation generatorImages reduction8126.relations [8,8,8,8,9,13,13,13,13] reduction8126.output := by lin_cert using reduction8126.terms
def image8127 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8127 : InImage map_36_189 image8127 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8127 : Bundle := named_bundle% "RealMapCertificates/relations/basis8127.json"
theorem reductionProof8127 : EqualModuloRelations reduction8127.relations reduction8127.input reduction8127.output := by lin_cert using reduction8127.terms
theorem substitutionProof8127 : IsMapEvaluation generatorImages reduction8127.relations [8,8,8,8,8,17,80] reduction8127.output := by lin_cert using reduction8127.terms
def image8128 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8128 : InImage map_36_189 image8128 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8128 : Bundle := named_bundle% "RealMapCertificates/relations/basis8128.json"
theorem reductionProof8128 : EqualModuloRelations reduction8128.relations reduction8128.input reduction8128.output := by lin_cert using reduction8128.terms
theorem substitutionProof8128 : IsMapEvaluation generatorImages reduction8128.relations [0,0,0,0,0,927] reduction8128.output := by lin_cert using reduction8128.terms
def map_36_190 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image8241 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8241 : InImage map_36_190 image8241 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8241 : Bundle := named_bundle% "RealMapCertificates/relations/basis8241.json"
theorem reductionProof8241 : EqualModuloRelations reduction8241.relations reduction8241.input reduction8241.output := by lin_cert using reduction8241.terms
theorem substitutionProof8241 : IsMapEvaluation generatorImages reduction8241.relations [0,0,0,0,0,0,0,0,64,260] reduction8241.output := by lin_cert using reduction8241.terms
def map_36_191 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8354 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8354 : InImage map_36_191 image8354 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8354 : Bundle := named_bundle% "RealMapCertificates/relations/basis8354.json"
theorem reductionProof8354 : EqualModuloRelations reduction8354.relations reduction8354.input reduction8354.output := by lin_cert using reduction8354.terms
theorem substitutionProof8354 : IsMapEvaluation generatorImages reduction8354.relations [1034] reduction8354.output := by lin_cert using reduction8354.terms
def image8355 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8355 : InImage map_36_191 image8355 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8355 : Bundle := named_bundle% "RealMapCertificates/relations/basis8355.json"
theorem reductionProof8355 : EqualModuloRelations reduction8355.relations reduction8355.input reduction8355.output := by lin_cert using reduction8355.terms
theorem substitutionProof8355 : IsMapEvaluation generatorImages reduction8355.relations [8,8,8,8,8,180] reduction8355.output := by lin_cert using reduction8355.terms
def map_36_192 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8496 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8496 : InImage map_36_192 image8496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8496 : Bundle := named_bundle% "RealMapCertificates/relations/basis8496.json"
theorem reductionProof8496 : EqualModuloRelations reduction8496.relations reduction8496.input reduction8496.output := by lin_cert using reduction8496.terms
theorem substitutionProof8496 : IsMapEvaluation generatorImages reduction8496.relations [8,8,16,64,64] reduction8496.output := by lin_cert using reduction8496.terms
def image8497 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8497 : InImage map_36_192 image8497 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8497 : Bundle := named_bundle% "RealMapCertificates/relations/basis8497.json"
theorem reductionProof8497 : EqualModuloRelations reduction8497.relations reduction8497.input reduction8497.output := by lin_cert using reduction8497.terms
theorem substitutionProof8497 : IsMapEvaluation generatorImages reduction8497.relations [8,8,8,8,13,13,13,13,13] reduction8497.output := by lin_cert using reduction8497.terms
def image8498 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8498 : InImage map_36_192 image8498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8498 : Bundle := named_bundle% "RealMapCertificates/relations/basis8498.json"
theorem reductionProof8498 : EqualModuloRelations reduction8498.relations reduction8498.input reduction8498.output := by lin_cert using reduction8498.terms
theorem substitutionProof8498 : IsMapEvaluation generatorImages reduction8498.relations [8,8,8,8,8,20,80] reduction8498.output := by lin_cert using reduction8498.terms
def image8499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8499 : InImage map_36_192 image8499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8499 : Bundle := named_bundle% "RealMapCertificates/relations/basis8499.json"
theorem reductionProof8499 : EqualModuloRelations reduction8499.relations reduction8499.input reduction8499.output := by lin_cert using reduction8499.terms
theorem substitutionProof8499 : IsMapEvaluation generatorImages reduction8499.relations [0,0,0,0,0,0,0,0,0,919] reduction8499.output := by lin_cert using reduction8499.terms
def map_36_193 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8621 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8621 : InImage map_36_193 image8621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8621 : Bundle := named_bundle% "RealMapCertificates/relations/basis8621.json"
theorem reductionProof8621 : EqualModuloRelations reduction8621.relations reduction8621.input reduction8621.output := by lin_cert using reduction8621.terms
theorem substitutionProof8621 : IsMapEvaluation generatorImages reduction8621.relations [1,42,491] reduction8621.output := by lin_cert using reduction8621.terms
def image8622 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8622 : InImage map_36_193 image8622 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8622 : Bundle := named_bundle% "RealMapCertificates/relations/basis8622.json"
theorem reductionProof8622 : EqualModuloRelations reduction8622.relations reduction8622.input reduction8622.output := by lin_cert using reduction8622.terms
theorem substitutionProof8622 : IsMapEvaluation generatorImages reduction8622.relations [0,0,0,0,0,0,0,0,0,0,0,898] reduction8622.output := by lin_cert using reduction8622.terms
def map_36_194 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image8733 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8733 : InImage map_36_194 image8733 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8733 : Bundle := named_bundle% "RealMapCertificates/relations/basis8733.json"
theorem reductionProof8733 : EqualModuloRelations reduction8733.relations reduction8733.input reduction8733.output := by lin_cert using reduction8733.terms
theorem substitutionProof8733 : IsMapEvaluation generatorImages reduction8733.relations [17,17,380] reduction8733.output := by lin_cert using reduction8733.terms
def image8734 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8734 : InImage map_36_194 image8734 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8734 : Bundle := named_bundle% "RealMapCertificates/relations/basis8734.json"
theorem reductionProof8734 : EqualModuloRelations reduction8734.relations reduction8734.input reduction8734.output := by lin_cert using reduction8734.terms
theorem substitutionProof8734 : IsMapEvaluation generatorImages reduction8734.relations [8,830] reduction8734.output := by lin_cert using reduction8734.terms
def image8735 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8735 : InImage map_36_194 image8735 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8735 : Bundle := named_bundle% "RealMapCertificates/relations/basis8735.json"
theorem reductionProof8735 : EqualModuloRelations reduction8735.relations reduction8735.input reduction8735.output := by lin_cert using reduction8735.terms
theorem substitutionProof8735 : IsMapEvaluation generatorImages reduction8735.relations [8,8,8,8,8,194] reduction8735.output := by lin_cert using reduction8735.terms
def map_36_195 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8905 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8905 : InImage map_36_195 image8905 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8905 : Bundle := named_bundle% "RealMapCertificates/relations/basis8905.json"
theorem reductionProof8905 : EqualModuloRelations reduction8905.relations reduction8905.input reduction8905.output := by lin_cert using reduction8905.terms
theorem substitutionProof8905 : IsMapEvaluation generatorImages reduction8905.relations [8,8,8,64,112] reduction8905.output := by lin_cert using reduction8905.terms
def image8906 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8906 : InImage map_36_195 image8906 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8906 : Bundle := named_bundle% "RealMapCertificates/relations/basis8906.json"
theorem reductionProof8906 : EqualModuloRelations reduction8906.relations reduction8906.input reduction8906.output := by lin_cert using reduction8906.terms
theorem substitutionProof8906 : IsMapEvaluation generatorImages reduction8906.relations [8,8,8,9,13,13,13,13,13] reduction8906.output := by lin_cert using reduction8906.terms
def image8907 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8907 : InImage map_36_195 image8907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8907 : Bundle := named_bundle% "RealMapCertificates/relations/basis8907.json"
theorem reductionProof8907 : EqualModuloRelations reduction8907.relations reduction8907.input reduction8907.output := by lin_cert using reduction8907.terms
theorem substitutionProof8907 : IsMapEvaluation generatorImages reduction8907.relations [8,8,8,8,8,22,80] reduction8907.output := by lin_cert using reduction8907.terms
def image8908 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8908 : InImage map_36_195 image8908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8908 : Bundle := named_bundle% "RealMapCertificates/relations/basis8908.json"
theorem reductionProof8908 : EqualModuloRelations reduction8908.relations reduction8908.input reduction8908.output := by lin_cert using reduction8908.terms
theorem substitutionProof8908 : IsMapEvaluation generatorImages reduction8908.relations [0,0,0,0,0,0,64,64,64] reduction8908.output := by lin_cert using reduction8908.terms
def map_36_197 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9161 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9161 : InImage map_36_197 image9161 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9161 : Bundle := named_bundle% "RealMapCertificates/relations/basis9161.json"
theorem reductionProof9161 : EqualModuloRelations reduction9161.relations reduction9161.input reduction9161.output := by lin_cert using reduction9161.terms
theorem substitutionProof9161 : IsMapEvaluation generatorImages reduction9161.relations [8,64,245] reduction9161.output := by lin_cert using reduction9161.terms
def image9162 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9162 : InImage map_36_197 image9162 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9162 : Bundle := named_bundle% "RealMapCertificates/relations/basis9162.json"
theorem reductionProof9162 : EqualModuloRelations reduction9162.relations reduction9162.input reduction9162.output := by lin_cert using reduction9162.terms
theorem substitutionProof9162 : IsMapEvaluation generatorImages reduction9162.relations [8,17,17,260] reduction9162.output := by lin_cert using reduction9162.terms
def image9163 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9163 : InImage map_36_197 image9163 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9163 : Bundle := named_bundle% "RealMapCertificates/relations/basis9163.json"
theorem reductionProof9163 : EqualModuloRelations reduction9163.relations reduction9163.input reduction9163.output := by lin_cert using reduction9163.terms
theorem substitutionProof9163 : IsMapEvaluation generatorImages reduction9163.relations [8,8,8,8,9,194] reduction9163.output := by lin_cert using reduction9163.terms
def map_36_198 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image9343 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9343 : InImage map_36_198 image9343 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9343 : Bundle := named_bundle% "RealMapCertificates/relations/basis9343.json"
theorem reductionProof9343 : EqualModuloRelations reduction9343.relations reduction9343.input reduction9343.output := by lin_cert using reduction9343.terms
theorem substitutionProof9343 : IsMapEvaluation generatorImages reduction9343.relations [8,8,8,13,13,13,13,13,13] reduction9343.output := by lin_cert using reduction9343.terms
def image9344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9344 : InImage map_36_198 image9344 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9344 : Bundle := named_bundle% "RealMapCertificates/relations/basis9344.json"
theorem reductionProof9344 : EqualModuloRelations reduction9344.relations reduction9344.input reduction9344.output := by lin_cert using reduction9344.terms
theorem substitutionProof9344 : IsMapEvaluation generatorImages reduction9344.relations [8,8,8,8,64,64] reduction9344.output := by lin_cert using reduction9344.terms
def image9345 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9345 : InImage map_36_198 image9345 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9345 : Bundle := named_bundle% "RealMapCertificates/relations/basis9345.json"
theorem reductionProof9345 : EqualModuloRelations reduction9345.relations reduction9345.input reduction9345.output := by lin_cert using reduction9345.terms
theorem substitutionProof9345 : IsMapEvaluation generatorImages reduction9345.relations [8,8,8,8,8,23,89] reduction9345.output := by lin_cert using reduction9345.terms
def map_36_199 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9492 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9492 : InImage map_36_199 image9492 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9492 : Bundle := named_bundle% "RealMapCertificates/relations/basis9492.json"
theorem reductionProof9492 : EqualModuloRelations reduction9492.relations reduction9492.input reduction9492.output := by lin_cert using reduction9492.terms
theorem substitutionProof9492 : IsMapEvaluation generatorImages reduction9492.relations [149,206] reduction9492.output := by lin_cert using reduction9492.terms
def map_36_200 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image9628 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9628 : InImage map_36_200 image9628 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9628 : Bundle := named_bundle% "RealMapCertificates/relations/basis9628.json"
theorem reductionProof9628 : EqualModuloRelations reduction9628.relations reduction9628.input reduction9628.output := by lin_cert using reduction9628.terms
theorem substitutionProof9628 : IsMapEvaluation generatorImages reduction9628.relations [8,17,17,278] reduction9628.output := by lin_cert using reduction9628.terms
def image9629 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9629 : InImage map_36_200 image9629 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9629 : Bundle := named_bundle% "RealMapCertificates/relations/basis9629.json"
theorem reductionProof9629 : EqualModuloRelations reduction9629.relations reduction9629.input reduction9629.output := by lin_cert using reduction9629.terms
theorem substitutionProof9629 : IsMapEvaluation generatorImages reduction9629.relations [8,8,688] reduction9629.output := by lin_cert using reduction9629.terms
def image9630 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9630 : InImage map_36_200 image9630 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9630 : Bundle := named_bundle% "RealMapCertificates/relations/basis9630.json"
theorem reductionProof9630 : EqualModuloRelations reduction9630.relations reduction9630.input reduction9630.output := by lin_cert using reduction9630.terms
theorem substitutionProof9630 : IsMapEvaluation generatorImages reduction9630.relations [8,8,8,8,13,194] reduction9630.output := by lin_cert using reduction9630.terms
def map_36_201 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image9831 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9831 : InImage map_36_201 image9831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9831 : Bundle := named_bundle% "RealMapCertificates/relations/basis9831.json"
theorem reductionProof9831 : EqualModuloRelations reduction9831.relations reduction9831.input reduction9831.output := by lin_cert using reduction9831.terms
theorem substitutionProof9831 : IsMapEvaluation generatorImages reduction9831.relations [8,8,9,13,13,13,13,13,13] reduction9831.output := by lin_cert using reduction9831.terms
def image9832 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9832 : InImage map_36_201 image9832 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9832 : Bundle := named_bundle% "RealMapCertificates/relations/basis9832.json"
theorem reductionProof9832 : EqualModuloRelations reduction9832.relations reduction9832.input reduction9832.output := by lin_cert using reduction9832.terms
theorem substitutionProof9832 : IsMapEvaluation generatorImages reduction9832.relations [8,8,8,8,64,72] reduction9832.output := by lin_cert using reduction9832.terms
def image9833 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9833 : InImage map_36_201 image9833 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9833 : Bundle := named_bundle% "RealMapCertificates/relations/basis9833.json"
theorem reductionProof9833 : EqualModuloRelations reduction9833.relations reduction9833.input reduction9833.output := by lin_cert using reduction9833.terms
theorem substitutionProof9833 : IsMapEvaluation generatorImages reduction9833.relations [8,8,8,8,8,23,101] reduction9833.output := by lin_cert using reduction9833.terms
end RealMapCertificates
