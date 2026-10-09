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
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 52 => []
  | 64 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 187 => []
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 194 => [[7,10,12]]
  | 201 => []
  | 212 => []
  | 250 => []
  | 254 => []
  | 260 => []
  | 278 => []
  | 292 => []
  | 316 => []
  | 318 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 454 => []
  | 455 => []
  | 491 => []
  | 492 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 558 => []
  | 573 => []
  | 586 => []
  | 598 => [[0,6,9,12,12]]
  | 599 => []
  | 601 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 726 => []
  | 820 => [[5,5,5,7,12,12]]
  | 897 => []
  | 940 => []
  | 956 => []
  | 963 => []
  | 974 => []
  | 1315 => []
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1366 => [[7,9,12,12,12]]
  | 1383 => []
  | 1401 => []
  | 1536 => [[4,6,8,12,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | 1592 => [[4,6,9,12,12,12]]
  | 1605 => []
  | 1606 => []
  | _ => []
def map_36_202 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9967 : InImage map_36_202 image9967 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9967 : Bundle := named_bundle% "RealMapCertificates/relations/basis9967.json"
theorem reductionProof9967 : EqualModuloRelations reduction9967.relations reduction9967.input reduction9967.output := by lin_cert using reduction9967.terms
theorem substitutionProof9967 : IsMapEvaluation generatorImages reduction9967.relations [8,149,149] reduction9967.output := by lin_cert using reduction9967.terms
def map_36_203 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image10126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10126 : InImage map_36_203 image10126 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10126 : Bundle := named_bundle% "RealMapCertificates/relations/basis10126.json"
theorem reductionProof10126 : EqualModuloRelations reduction10126.relations reduction10126.input reduction10126.output := by lin_cert using reduction10126.terms
theorem substitutionProof10126 : IsMapEvaluation generatorImages reduction10126.relations [8,16,17,292] reduction10126.output := by lin_cert using reduction10126.terms
def image10127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10127 : InImage map_36_203 image10127 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10127 : Bundle := named_bundle% "RealMapCertificates/relations/basis10127.json"
theorem reductionProof10127 : EqualModuloRelations reduction10127.relations reduction10127.input reduction10127.output := by lin_cert using reduction10127.terms
theorem substitutionProof10127 : IsMapEvaluation generatorImages reduction10127.relations [8,8,726] reduction10127.output := by lin_cert using reduction10127.terms
def image10128 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10128 : InImage map_36_203 image10128 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10128 : Bundle := named_bundle% "RealMapCertificates/relations/basis10128.json"
theorem reductionProof10128 : EqualModuloRelations reduction10128.relations reduction10128.input reduction10128.output := by lin_cert using reduction10128.terms
theorem substitutionProof10128 : IsMapEvaluation generatorImages reduction10128.relations [8,8,8,9,13,194] reduction10128.output := by lin_cert using reduction10128.terms
def map_36_204 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10329 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10329 : InImage map_36_204 image10329 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10329 : Bundle := named_bundle% "RealMapCertificates/relations/basis10329.json"
theorem reductionProof10329 : EqualModuloRelations reduction10329.relations reduction10329.input reduction10329.output := by lin_cert using reduction10329.terms
theorem substitutionProof10329 : IsMapEvaluation generatorImages reduction10329.relations [8,8,13,13,13,13,13,13,13] reduction10329.output := by lin_cert using reduction10329.terms
def image10330 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10330 : InImage map_36_204 image10330 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10330 : Bundle := named_bundle% "RealMapCertificates/relations/basis10330.json"
theorem reductionProof10330 : EqualModuloRelations reduction10330.relations reduction10330.input reduction10330.output := by lin_cert using reduction10330.terms
theorem substitutionProof10330 : IsMapEvaluation generatorImages reduction10330.relations [8,8,8,8,16,187] reduction10330.output := by lin_cert using reduction10330.terms
def image10331 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10331 : InImage map_36_204 image10331 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10331 : Bundle := named_bundle% "RealMapCertificates/relations/basis10331.json"
theorem reductionProof10331 : EqualModuloRelations reduction10331.relations reduction10331.input reduction10331.output := by lin_cert using reduction10331.terms
theorem substitutionProof10331 : IsMapEvaluation generatorImages reduction10331.relations [8,8,8,8,9,23,101] reduction10331.output := by lin_cert using reduction10331.terms
def map_36_205 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image10495 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10495 : InImage map_36_205 image10495 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10495 : Bundle := named_bundle% "RealMapCertificates/relations/basis10495.json"
theorem reductionProof10495 : EqualModuloRelations reduction10495.relations reduction10495.input reduction10495.output := by lin_cert using reduction10495.terms
theorem substitutionProof10495 : IsMapEvaluation generatorImages reduction10495.relations [8,149,160] reduction10495.output := by lin_cert using reduction10495.terms
def image10496 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10496 : InImage map_36_205 image10496 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10496 : Bundle := named_bundle% "RealMapCertificates/relations/basis10496.json"
theorem reductionProof10496 : EqualModuloRelations reduction10496.relations reduction10496.input reduction10496.output := by lin_cert using reduction10496.terms
theorem substitutionProof10496 : IsMapEvaluation generatorImages reduction10496.relations [1,5,64,64,64] reduction10496.output := by lin_cert using reduction10496.terms
def map_36_206 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image10654 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10654 : InImage map_36_206 image10654 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10654 : Bundle := named_bundle% "RealMapCertificates/relations/basis10654.json"
theorem reductionProof10654 : EqualModuloRelations reduction10654.relations reduction10654.input reduction10654.output := by lin_cert using reduction10654.terms
theorem substitutionProof10654 : IsMapEvaluation generatorImages reduction10654.relations [64,491] reduction10654.output := by lin_cert using reduction10654.terms
def image10655 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10655 : InImage map_36_206 image10655 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10655 : Bundle := named_bundle% "RealMapCertificates/relations/basis10655.json"
theorem reductionProof10655 : EqualModuloRelations reduction10655.relations reduction10655.input reduction10655.output := by lin_cert using reduction10655.terms
theorem substitutionProof10655 : IsMapEvaluation generatorImages reduction10655.relations [8,8,17,454] reduction10655.output := by lin_cert using reduction10655.terms
def image10656 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10656 : InImage map_36_206 image10656 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10656 : Bundle := named_bundle% "RealMapCertificates/relations/basis10656.json"
theorem reductionProof10656 : EqualModuloRelations reduction10656.relations reduction10656.input reduction10656.output := by lin_cert using reduction10656.terms
theorem substitutionProof10656 : IsMapEvaluation generatorImages reduction10656.relations [8,8,8,573] reduction10656.output := by lin_cert using reduction10656.terms
def image10657 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10657 : InImage map_36_206 image10657 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10657 : Bundle := named_bundle% "RealMapCertificates/relations/basis10657.json"
theorem reductionProof10657 : EqualModuloRelations reduction10657.relations reduction10657.input reduction10657.output := by lin_cert using reduction10657.terms
theorem substitutionProof10657 : IsMapEvaluation generatorImages reduction10657.relations [8,8,8,13,13,194] reduction10657.output := by lin_cert using reduction10657.terms
def map_36_207 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image10882 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10882 : InImage map_36_207 image10882 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10882 : Bundle := named_bundle% "RealMapCertificates/relations/basis10882.json"
theorem reductionProof10882 : EqualModuloRelations reduction10882.relations reduction10882.input reduction10882.output := by lin_cert using reduction10882.terms
theorem substitutionProof10882 : IsMapEvaluation generatorImages reduction10882.relations [8,9,13,13,13,13,13,13,13] reduction10882.output := by lin_cert using reduction10882.terms
def image10883 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10883 : InImage map_36_207 image10883 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10883 : Bundle := named_bundle% "RealMapCertificates/relations/basis10883.json"
theorem reductionProof10883 : EqualModuloRelations reduction10883.relations reduction10883.input reduction10883.output := by lin_cert using reduction10883.terms
theorem substitutionProof10883 : IsMapEvaluation generatorImages reduction10883.relations [8,8,8,8,13,23,101] reduction10883.output := by lin_cert using reduction10883.terms
def image10884 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10884 : InImage map_36_207 image10884 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10884 : Bundle := named_bundle% "RealMapCertificates/relations/basis10884.json"
theorem reductionProof10884 : EqualModuloRelations reduction10884.relations reduction10884.input reduction10884.output := by lin_cert using reduction10884.terms
theorem substitutionProof10884 : IsMapEvaluation generatorImages reduction10884.relations [8,8,8,8,8,254] reduction10884.output := by lin_cert using reduction10884.terms
def image10885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10885 : InImage map_36_207 image10885 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10885 : Bundle := named_bundle% "RealMapCertificates/relations/basis10885.json"
theorem reductionProof10885 : EqualModuloRelations reduction10885.relations reduction10885.input reduction10885.output := by lin_cert using reduction10885.terms
theorem substitutionProof10885 : IsMapEvaluation generatorImages reduction10885.relations [0,138,260] reduction10885.output := by lin_cert using reduction10885.terms
def map_36_208 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image11016 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11016 : InImage map_36_208 image11016 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11016 : Bundle := named_bundle% "RealMapCertificates/relations/basis11016.json"
theorem reductionProof11016 : EqualModuloRelations reduction11016.relations reduction11016.input reduction11016.output := by lin_cert using reduction11016.terms
theorem substitutionProof11016 : IsMapEvaluation generatorImages reduction11016.relations [8,16,642] reduction11016.output := by lin_cert using reduction11016.terms
def image11017 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11017 : InImage map_36_208 image11017 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11017 : Bundle := named_bundle% "RealMapCertificates/relations/basis11017.json"
theorem reductionProof11017 : EqualModuloRelations reduction11017.relations reduction11017.input reduction11017.output := by lin_cert using reduction11017.terms
theorem substitutionProof11017 : IsMapEvaluation generatorImages reduction11017.relations [0,1315] reduction11017.output := by lin_cert using reduction11017.terms
def map_36_209 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image11188 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11188 : InImage map_36_209 image11188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11188 : Bundle := named_bundle% "RealMapCertificates/relations/basis11188.json"
theorem reductionProof11188 : EqualModuloRelations reduction11188.relations reduction11188.input reduction11188.output := by lin_cert using reduction11188.terms
theorem substitutionProof11188 : IsMapEvaluation generatorImages reduction11188.relations [64,516] reduction11188.output := by lin_cert using reduction11188.terms
def image11189 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11189 : InImage map_36_209 image11189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11189 : Bundle := named_bundle% "RealMapCertificates/relations/basis11189.json"
theorem reductionProof11189 : EqualModuloRelations reduction11189.relations reduction11189.input reduction11189.output := by lin_cert using reduction11189.terms
theorem substitutionProof11189 : IsMapEvaluation generatorImages reduction11189.relations [8,8,9,13,13,194] reduction11189.output := by lin_cert using reduction11189.terms
def image11190 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11190 : InImage map_36_209 image11190 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11190 : Bundle := named_bundle% "RealMapCertificates/relations/basis11190.json"
theorem reductionProof11190 : EqualModuloRelations reduction11190.relations reduction11190.input reduction11190.output := by lin_cert using reduction11190.terms
theorem substitutionProof11190 : IsMapEvaluation generatorImages reduction11190.relations [8,8,8,599] reduction11190.output := by lin_cert using reduction11190.terms
def image11191 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11191 : InImage map_36_209 image11191 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11191 : Bundle := named_bundle% "RealMapCertificates/relations/basis11191.json"
theorem reductionProof11191 : EqualModuloRelations reduction11191.relations reduction11191.input reduction11191.output := by lin_cert using reduction11191.terms
theorem substitutionProof11191 : IsMapEvaluation generatorImages reduction11191.relations [8,8,8,17,292] reduction11191.output := by lin_cert using reduction11191.terms
def image11192 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11192 : InImage map_36_209 image11192 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11192 : Bundle := named_bundle% "RealMapCertificates/relations/basis11192.json"
theorem reductionProof11192 : EqualModuloRelations reduction11192.relations reduction11192.input reduction11192.output := by lin_cert using reduction11192.terms
theorem substitutionProof11192 : IsMapEvaluation generatorImages reduction11192.relations [1,1315] reduction11192.output := by lin_cert using reduction11192.terms
def map_36_210 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11390 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11390 : InImage map_36_210 image11390 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11390 : Bundle := named_bundle% "RealMapCertificates/relations/basis11390.json"
theorem reductionProof11390 : EqualModuloRelations reduction11390.relations reduction11390.input reduction11390.output := by lin_cert using reduction11390.terms
theorem substitutionProof11390 : IsMapEvaluation generatorImages reduction11390.relations [64,529] reduction11390.output := by lin_cert using reduction11390.terms
def image11391 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11391 : InImage map_36_210 image11391 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11391 : Bundle := named_bundle% "RealMapCertificates/relations/basis11391.json"
theorem reductionProof11391 : EqualModuloRelations reduction11391.relations reduction11391.input reduction11391.output := by lin_cert using reduction11391.terms
theorem substitutionProof11391 : IsMapEvaluation generatorImages reduction11391.relations [8,13,13,13,13,13,13,13,13] reduction11391.output := by lin_cert using reduction11391.terms
def image11392 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11392 : InImage map_36_210 image11392 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11392 : Bundle := named_bundle% "RealMapCertificates/relations/basis11392.json"
theorem reductionProof11392 : EqualModuloRelations reduction11392.relations reduction11392.input reduction11392.output := by lin_cert using reduction11392.terms
theorem substitutionProof11392 : IsMapEvaluation generatorImages reduction11392.relations [8,8,8,9,13,23,101] reduction11392.output := by lin_cert using reduction11392.terms
def image11393 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11393 : InImage map_36_210 image11393 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11393 : Bundle := named_bundle% "RealMapCertificates/relations/basis11393.json"
theorem reductionProof11393 : EqualModuloRelations reduction11393.relations reduction11393.input reduction11393.output := by lin_cert using reduction11393.terms
theorem substitutionProof11393 : IsMapEvaluation generatorImages reduction11393.relations [8,8,8,8,8,8,187] reduction11393.output := by lin_cert using reduction11393.terms
def image11394 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11394 : InImage map_36_210 image11394 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11394 : Bundle := named_bundle% "RealMapCertificates/relations/basis11394.json"
theorem reductionProof11394 : EqualModuloRelations reduction11394.relations reduction11394.input reduction11394.output := by lin_cert using reduction11394.terms
theorem substitutionProof11394 : IsMapEvaluation generatorImages reduction11394.relations [0,138,278] reduction11394.output := by lin_cert using reduction11394.terms
def map_36_211 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11563 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11563 : InImage map_36_211 image11563 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11563 : Bundle := named_bundle% "RealMapCertificates/relations/basis11563.json"
theorem reductionProof11563 : EqualModuloRelations reduction11563.relations reduction11563.input reduction11563.output := by lin_cert using reduction11563.terms
theorem substitutionProof11563 : IsMapEvaluation generatorImages reduction11563.relations [8,8,820] reduction11563.output := by lin_cert using reduction11563.terms
def map_36_212 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11721 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11721 : InImage map_36_212 image11721 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11721 : Bundle := named_bundle% "RealMapCertificates/relations/basis11721.json"
theorem reductionProof11721 : EqualModuloRelations reduction11721.relations reduction11721.input reduction11721.output := by lin_cert using reduction11721.terms
theorem substitutionProof11721 : IsMapEvaluation generatorImages reduction11721.relations [16,64,260] reduction11721.output := by lin_cert using reduction11721.terms
def image11722 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11722 : InImage map_36_212 image11722 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11722 : Bundle := named_bundle% "RealMapCertificates/relations/basis11722.json"
theorem reductionProof11722 : EqualModuloRelations reduction11722.relations reduction11722.input reduction11722.output := by lin_cert using reduction11722.terms
theorem substitutionProof11722 : IsMapEvaluation generatorImages reduction11722.relations [8,8,13,13,13,194] reduction11722.output := by lin_cert using reduction11722.terms
def image11723 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11723 : InImage map_36_212 image11723 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11723 : Bundle := named_bundle% "RealMapCertificates/relations/basis11723.json"
theorem reductionProof11723 : EqualModuloRelations reduction11723.relations reduction11723.input reduction11723.output := by lin_cert using reduction11723.terms
theorem substitutionProof11723 : IsMapEvaluation generatorImages reduction11723.relations [8,8,8,20,292] reduction11723.output := by lin_cert using reduction11723.terms
def image11724 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11724 : InImage map_36_212 image11724 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11724 : Bundle := named_bundle% "RealMapCertificates/relations/basis11724.json"
theorem reductionProof11724 : EqualModuloRelations reduction11724.relations reduction11724.input reduction11724.output := by lin_cert using reduction11724.terms
theorem substitutionProof11724 : IsMapEvaluation generatorImages reduction11724.relations [8,8,8,8,455] reduction11724.output := by lin_cert using reduction11724.terms
def map_36_213 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image11970 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11970 : InImage map_36_213 image11970 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction11970 : Bundle := named_bundle% "RealMapCertificates/relations/basis11970.json"
theorem reductionProof11970 : EqualModuloRelations reduction11970.relations reduction11970.input reduction11970.output := by lin_cert using reduction11970.terms
theorem substitutionProof11970 : IsMapEvaluation generatorImages reduction11970.relations [64,557] reduction11970.output := by lin_cert using reduction11970.terms
def image11971 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11971 : InImage map_36_213 image11971 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction11971 : Bundle := named_bundle% "RealMapCertificates/relations/basis11971.json"
theorem reductionProof11971 : EqualModuloRelations reduction11971.relations reduction11971.input reduction11971.output := by lin_cert using reduction11971.terms
theorem substitutionProof11971 : IsMapEvaluation generatorImages reduction11971.relations [9,13,13,13,13,13,13,13,13] reduction11971.output := by lin_cert using reduction11971.terms
def image11972 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11972 : InImage map_36_213 image11972 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction11972 : Bundle := named_bundle% "RealMapCertificates/relations/basis11972.json"
theorem reductionProof11972 : EqualModuloRelations reduction11972.relations reduction11972.input reduction11972.output := by lin_cert using reduction11972.terms
theorem substitutionProof11972 : IsMapEvaluation generatorImages reduction11972.relations [8,8,8,13,13,23,101] reduction11972.output := by lin_cert using reduction11972.terms
def image11973 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11973 : InImage map_36_213 image11973 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction11973 : Bundle := named_bundle% "RealMapCertificates/relations/basis11973.json"
theorem reductionProof11973 : EqualModuloRelations reduction11973.relations reduction11973.input reduction11973.output := by lin_cert using reduction11973.terms
theorem substitutionProof11973 : IsMapEvaluation generatorImages reduction11973.relations [8,8,8,8,8,8,201] reduction11973.output := by lin_cert using reduction11973.terms
def image11974 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11974 : InImage map_36_213 image11974 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction11974 : Bundle := named_bundle% "RealMapCertificates/relations/basis11974.json"
theorem reductionProof11974 : EqualModuloRelations reduction11974.relations reduction11974.input reduction11974.output := by lin_cert using reduction11974.terms
theorem substitutionProof11974 : IsMapEvaluation generatorImages reduction11974.relations [0,16,897] reduction11974.output := by lin_cert using reduction11974.terms
def image11975 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11975 : InImage map_36_213 image11975 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction11975 : Bundle := named_bundle% "RealMapCertificates/relations/basis11975.json"
theorem reductionProof11975 : EqualModuloRelations reduction11975.relations reduction11975.input reduction11975.output := by lin_cert using reduction11975.terms
theorem substitutionProof11975 : IsMapEvaluation generatorImages reduction11975.relations [0,0,149,260] reduction11975.output := by lin_cert using reduction11975.terms
def map_36_214 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12142 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12142 : InImage map_36_214 image12142 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12142 : Bundle := named_bundle% "RealMapCertificates/relations/basis12142.json"
theorem reductionProof12142 : EqualModuloRelations reduction12142.relations reduction12142.input reduction12142.output := by lin_cert using reduction12142.terms
theorem substitutionProof12142 : IsMapEvaluation generatorImages reduction12142.relations [8,8,8,642] reduction12142.output := by lin_cert using reduction12142.terms
def image12143 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12143 : InImage map_36_214 image12143 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12143 : Bundle := named_bundle% "RealMapCertificates/relations/basis12143.json"
theorem reductionProof12143 : EqualModuloRelations reduction12143.relations reduction12143.input reduction12143.output := by lin_cert using reduction12143.terms
theorem substitutionProof12143 : IsMapEvaluation generatorImages reduction12143.relations [0,64,558] reduction12143.output := by lin_cert using reduction12143.terms
def image12144 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12144 : InImage map_36_214 image12144 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12144 : Bundle := named_bundle% "RealMapCertificates/relations/basis12144.json"
theorem reductionProof12144 : EqualModuloRelations reduction12144.relations reduction12144.input reduction12144.output := by lin_cert using reduction12144.terms
theorem substitutionProof12144 : IsMapEvaluation generatorImages reduction12144.relations [0,0,17,897] reduction12144.output := by lin_cert using reduction12144.terms
def map_36_215 : Matrix 1 7 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image12324 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12324 : InImage map_36_215 image12324 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction12324 : Bundle := named_bundle% "RealMapCertificates/relations/basis12324.json"
theorem reductionProof12324 : EqualModuloRelations reduction12324.relations reduction12324.input reduction12324.output := by lin_cert using reduction12324.terms
theorem substitutionProof12324 : IsMapEvaluation generatorImages reduction12324.relations [8,64,380] reduction12324.output := by lin_cert using reduction12324.terms
def image12325 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12325 : InImage map_36_215 image12325 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction12325 : Bundle := named_bundle% "RealMapCertificates/relations/basis12325.json"
theorem reductionProof12325 : EqualModuloRelations reduction12325.relations reduction12325.input reduction12325.output := by lin_cert using reduction12325.terms
theorem substitutionProof12325 : IsMapEvaluation generatorImages reduction12325.relations [8,9,13,13,13,194] reduction12325.output := by lin_cert using reduction12325.terms
def image12326 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12326 : InImage map_36_215 image12326 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction12326 : Bundle := named_bundle% "RealMapCertificates/relations/basis12326.json"
theorem reductionProof12326 : EqualModuloRelations reduction12326.relations reduction12326.input reduction12326.output := by lin_cert using reduction12326.terms
theorem substitutionProof12326 : IsMapEvaluation generatorImages reduction12326.relations [8,8,8,22,292] reduction12326.output := by lin_cert using reduction12326.terms
def image12327 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12327 : InImage map_36_215 image12327 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction12327 : Bundle := named_bundle% "RealMapCertificates/relations/basis12327.json"
theorem reductionProof12327 : EqualModuloRelations reduction12327.relations reduction12327.input reduction12327.output := by lin_cert using reduction12327.terms
theorem substitutionProof12327 : IsMapEvaluation generatorImages reduction12327.relations [8,8,8,8,492] reduction12327.output := by lin_cert using reduction12327.terms
def image12328 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12328 : InImage map_36_215 image12328 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction12328 : Bundle := named_bundle% "RealMapCertificates/relations/basis12328.json"
theorem reductionProof12328 : EqualModuloRelations reduction12328.relations reduction12328.input reduction12328.output := by lin_cert using reduction12328.terms
theorem substitutionProof12328 : IsMapEvaluation generatorImages reduction12328.relations [1,1,149,260] reduction12328.output := by lin_cert using reduction12328.terms
def image12329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12329 : InImage map_36_215 image12329 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction12329 : Bundle := named_bundle% "RealMapCertificates/relations/basis12329.json"
theorem reductionProof12329 : EqualModuloRelations reduction12329.relations reduction12329.input reduction12329.output := by lin_cert using reduction12329.terms
theorem substitutionProof12329 : IsMapEvaluation generatorImages reduction12329.relations [0,0,0,1401] reduction12329.output := by lin_cert using reduction12329.terms
def image12330 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12330 : InImage map_36_215 image12330 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction12330 : Bundle := named_bundle% "RealMapCertificates/relations/basis12330.json"
theorem reductionProof12330 : EqualModuloRelations reduction12330.relations reduction12330.input reduction12330.output := by lin_cert using reduction12330.terms
theorem substitutionProof12330 : IsMapEvaluation generatorImages reduction12330.relations [0,0,0,0,0,1366] reduction12330.output := by lin_cert using reduction12330.terms
def map_36_216 : Matrix 3 6 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12537 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12537 : InImage map_36_216 image12537 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12537 : Bundle := named_bundle% "RealMapCertificates/relations/basis12537.json"
theorem reductionProof12537 : EqualModuloRelations reduction12537.relations reduction12537.input reduction12537.output := by lin_cert using reduction12537.terms
theorem substitutionProof12537 : IsMapEvaluation generatorImages reduction12537.relations [13,13,13,13,13,13,13,13,13] reduction12537.output := by lin_cert using reduction12537.terms
def image12538 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12538 : InImage map_36_216 image12538 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12538 : Bundle := named_bundle% "RealMapCertificates/relations/basis12538.json"
theorem reductionProof12538 : EqualModuloRelations reduction12538.relations reduction12538.input reduction12538.output := by lin_cert using reduction12538.terms
theorem substitutionProof12538 : IsMapEvaluation generatorImages reduction12538.relations [8,64,404] reduction12538.output := by lin_cert using reduction12538.terms
def image12539 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12539 : InImage map_36_216 image12539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12539 : Bundle := named_bundle% "RealMapCertificates/relations/basis12539.json"
theorem reductionProof12539 : EqualModuloRelations reduction12539.relations reduction12539.input reduction12539.output := by lin_cert using reduction12539.terms
theorem substitutionProof12539 : IsMapEvaluation generatorImages reduction12539.relations [8,8,9,13,13,23,101] reduction12539.output := by lin_cert using reduction12539.terms
def image12540 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12540 : InImage map_36_216 image12540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12540 : Bundle := named_bundle% "RealMapCertificates/relations/basis12540.json"
theorem reductionProof12540 : EqualModuloRelations reduction12540.relations reduction12540.input reduction12540.output := by lin_cert using reduction12540.terms
theorem substitutionProof12540 : IsMapEvaluation generatorImages reduction12540.relations [8,8,8,8,8,8,212] reduction12540.output := by lin_cert using reduction12540.terms
def image12541 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12541 : InImage map_36_216 image12541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12541 : Bundle := named_bundle% "RealMapCertificates/relations/basis12541.json"
theorem reductionProof12541 : EqualModuloRelations reduction12541.relations reduction12541.input reduction12541.output := by lin_cert using reduction12541.terms
theorem substitutionProof12541 : IsMapEvaluation generatorImages reduction12541.relations [0,8,113,260] reduction12541.output := by lin_cert using reduction12541.terms
def image12542 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12542 : InImage map_36_216 image12542 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12542 : Bundle := named_bundle% "RealMapCertificates/relations/basis12542.json"
theorem reductionProof12542 : EqualModuloRelations reduction12542.relations reduction12542.input reduction12542.output := by lin_cert using reduction12542.terms
theorem substitutionProof12542 : IsMapEvaluation generatorImages reduction12542.relations [0,0,0,0,0,1383] reduction12542.output := by lin_cert using reduction12542.terms
def map_36_217 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12715 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12715 : InImage map_36_217 image12715 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12715 : Bundle := named_bundle% "RealMapCertificates/relations/basis12715.json"
theorem reductionProof12715 : EqualModuloRelations reduction12715.relations reduction12715.input reduction12715.output := by lin_cert using reduction12715.terms
theorem substitutionProof12715 : IsMapEvaluation generatorImages reduction12715.relations [8,8,9,642] reduction12715.output := by lin_cert using reduction12715.terms
def map_36_218 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image12876 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12876 : InImage map_36_218 image12876 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12876 : Bundle := named_bundle% "RealMapCertificates/relations/basis12876.json"
theorem reductionProof12876 : EqualModuloRelations reduction12876.relations reduction12876.input reduction12876.output := by lin_cert using reduction12876.terms
theorem substitutionProof12876 : IsMapEvaluation generatorImages reduction12876.relations [64,64,149] reduction12876.output := by lin_cert using reduction12876.terms
def image12877 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12877 : InImage map_36_218 image12877 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12877 : Bundle := named_bundle% "RealMapCertificates/relations/basis12877.json"
theorem reductionProof12877 : EqualModuloRelations reduction12877.relations reduction12877.input reduction12877.output := by lin_cert using reduction12877.terms
theorem substitutionProof12877 : IsMapEvaluation generatorImages reduction12877.relations [8,13,13,13,13,194] reduction12877.output := by lin_cert using reduction12877.terms
def image12878 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12878 : InImage map_36_218 image12878 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12878 : Bundle := named_bundle% "RealMapCertificates/relations/basis12878.json"
theorem reductionProof12878 : EqualModuloRelations reduction12878.relations reduction12878.input reduction12878.output := by lin_cert using reduction12878.terms
theorem substitutionProof12878 : IsMapEvaluation generatorImages reduction12878.relations [8,8,64,260] reduction12878.output := by lin_cert using reduction12878.terms
def image12879 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12879 : InImage map_36_218 image12879 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12879 : Bundle := named_bundle% "RealMapCertificates/relations/basis12879.json"
theorem reductionProof12879 : EqualModuloRelations reduction12879.relations reduction12879.input reduction12879.output := by lin_cert using reduction12879.terms
theorem substitutionProof12879 : IsMapEvaluation generatorImages reduction12879.relations [8,8,8,23,316] reduction12879.output := by lin_cert using reduction12879.terms
def image12880 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12880 : InImage map_36_218 image12880 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12880 : Bundle := named_bundle% "RealMapCertificates/relations/basis12880.json"
theorem reductionProof12880 : EqualModuloRelations reduction12880.relations reduction12880.input reduction12880.output := by lin_cert using reduction12880.terms
theorem substitutionProof12880 : IsMapEvaluation generatorImages reduction12880.relations [8,8,8,8,8,318] reduction12880.output := by lin_cert using reduction12880.terms
def map_36_219 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13123 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13123 : InImage map_36_219 image13123 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13123 : Bundle := named_bundle% "RealMapCertificates/relations/basis13123.json"
theorem reductionProof13123 : EqualModuloRelations reduction13123.relations reduction13123.input reduction13123.output := by lin_cert using reduction13123.terms
theorem substitutionProof13123 : IsMapEvaluation generatorImages reduction13123.relations [1536] reduction13123.output := by lin_cert using reduction13123.terms
def image13124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13124 : InImage map_36_219 image13124 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13124 : Bundle := named_bundle% "RealMapCertificates/relations/basis13124.json"
theorem reductionProof13124 : EqualModuloRelations reduction13124.relations reduction13124.input reduction13124.output := by lin_cert using reduction13124.terms
theorem substitutionProof13124 : IsMapEvaluation generatorImages reduction13124.relations [8,64,434] reduction13124.output := by lin_cert using reduction13124.terms
def image13125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13125 : InImage map_36_219 image13125 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13125 : Bundle := named_bundle% "RealMapCertificates/relations/basis13125.json"
theorem reductionProof13125 : EqualModuloRelations reduction13125.relations reduction13125.input reduction13125.output := by lin_cert using reduction13125.terms
theorem substitutionProof13125 : IsMapEvaluation generatorImages reduction13125.relations [8,8,13,13,13,23,101] reduction13125.output := by lin_cert using reduction13125.terms
def image13126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13126 : InImage map_36_219 image13126 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13126 : Bundle := named_bundle% "RealMapCertificates/relations/basis13126.json"
theorem reductionProof13126 : EqualModuloRelations reduction13126.relations reduction13126.input reduction13126.output := by lin_cert using reduction13126.terms
theorem substitutionProof13126 : IsMapEvaluation generatorImages reduction13126.relations [8,8,8,8,8,9,212] reduction13126.output := by lin_cert using reduction13126.terms
def image13127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13127 : InImage map_36_219 image13127 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13127 : Bundle := named_bundle% "RealMapCertificates/relations/basis13127.json"
theorem reductionProof13127 : EqualModuloRelations reduction13127.relations reduction13127.input reduction13127.output := by lin_cert using reduction13127.terms
theorem substitutionProof13127 : IsMapEvaluation generatorImages reduction13127.relations [0,64,598] reduction13127.output := by lin_cert using reduction13127.terms
def image13128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13128 : InImage map_36_219 image13128 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13128 : Bundle := named_bundle% "RealMapCertificates/relations/basis13128.json"
theorem reductionProof13128 : EqualModuloRelations reduction13128.relations reduction13128.input reduction13128.output := by lin_cert using reduction13128.terms
theorem substitutionProof13128 : IsMapEvaluation generatorImages reduction13128.relations [0,8,8,897] reduction13128.output := by lin_cert using reduction13128.terms
def map_36_220 : Matrix 2 3 := fun i j => ([false,true,false,true,false,false] : List Bool)[i.val*3+j.val]!
def image13266 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13266 : InImage map_36_220 image13266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13266 : Bundle := named_bundle% "RealMapCertificates/relations/basis13266.json"
theorem reductionProof13266 : EqualModuloRelations reduction13266.relations reduction13266.input reduction13266.output := by lin_cert using reduction13266.terms
theorem substitutionProof13266 : IsMapEvaluation generatorImages reduction13266.relations [1552] reduction13266.output := by lin_cert using reduction13266.terms
def image13267 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13267 : InImage map_36_220 image13267 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13267 : Bundle := named_bundle% "RealMapCertificates/relations/basis13267.json"
theorem reductionProof13267 : EqualModuloRelations reduction13267.relations reduction13267.input reduction13267.output := by lin_cert using reduction13267.terms
theorem substitutionProof13267 : IsMapEvaluation generatorImages reduction13267.relations [8,8,13,642] reduction13267.output := by lin_cert using reduction13267.terms
def image13268 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13268 : InImage map_36_220 image13268 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13268 : Bundle := named_bundle% "RealMapCertificates/relations/basis13268.json"
theorem reductionProof13268 : EqualModuloRelations reduction13268.relations reduction13268.input reduction13268.output := by lin_cert using reduction13268.terms
theorem substitutionProof13268 : IsMapEvaluation generatorImages reduction13268.relations [0,0,0,17,963] reduction13268.output := by lin_cert using reduction13268.terms
def map_36_221 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image13451 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13451 : InImage map_36_221 image13451 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13451 : Bundle := named_bundle% "RealMapCertificates/relations/basis13451.json"
theorem reductionProof13451 : EqualModuloRelations reduction13451.relations reduction13451.input reduction13451.output := by lin_cert using reduction13451.terms
theorem substitutionProof13451 : IsMapEvaluation generatorImages reduction13451.relations [64,64,160] reduction13451.output := by lin_cert using reduction13451.terms
def image13452 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13452 : InImage map_36_221 image13452 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13452 : Bundle := named_bundle% "RealMapCertificates/relations/basis13452.json"
theorem reductionProof13452 : EqualModuloRelations reduction13452.relations reduction13452.input reduction13452.output := by lin_cert using reduction13452.terms
theorem substitutionProof13452 : IsMapEvaluation generatorImages reduction13452.relations [9,13,13,13,13,194] reduction13452.output := by lin_cert using reduction13452.terms
def image13453 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13453 : InImage map_36_221 image13453 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13453 : Bundle := named_bundle% "RealMapCertificates/relations/basis13453.json"
theorem reductionProof13453 : EqualModuloRelations reduction13453.relations reduction13453.input reduction13453.output := by lin_cert using reduction13453.terms
theorem substitutionProof13453 : IsMapEvaluation generatorImages reduction13453.relations [8,8,64,278] reduction13453.output := by lin_cert using reduction13453.terms
def image13454 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13454 : InImage map_36_221 image13454 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13454 : Bundle := named_bundle% "RealMapCertificates/relations/basis13454.json"
theorem reductionProof13454 : EqualModuloRelations reduction13454.relations reduction13454.input reduction13454.output := by lin_cert using reduction13454.terms
theorem substitutionProof13454 : IsMapEvaluation generatorImages reduction13454.relations [8,8,8,23,346] reduction13454.output := by lin_cert using reduction13454.terms
def image13455 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13455 : InImage map_36_221 image13455 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13455 : Bundle := named_bundle% "RealMapCertificates/relations/basis13455.json"
theorem reductionProof13455 : EqualModuloRelations reduction13455.relations reduction13455.input reduction13455.output := by lin_cert using reduction13455.terms
theorem substitutionProof13455 : IsMapEvaluation generatorImages reduction13455.relations [8,8,8,8,8,348] reduction13455.output := by lin_cert using reduction13455.terms
def image13456 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13456 : InImage map_36_221 image13456 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13456 : Bundle := named_bundle% "RealMapCertificates/relations/basis13456.json"
theorem reductionProof13456 : EqualModuloRelations reduction13456.relations reduction13456.input reduction13456.output := by lin_cert using reduction13456.terms
theorem substitutionProof13456 : IsMapEvaluation generatorImages reduction13456.relations [0,0,0,64,601] reduction13456.output := by lin_cert using reduction13456.terms
def image13457 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13457 : InImage map_36_221 image13457 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13457 : Bundle := named_bundle% "RealMapCertificates/relations/basis13457.json"
theorem reductionProof13457 : EqualModuloRelations reduction13457.relations reduction13457.input reduction13457.output := by lin_cert using reduction13457.terms
theorem substitutionProof13457 : IsMapEvaluation generatorImages reduction13457.relations [0,0,0,17,974] reduction13457.output := by lin_cert using reduction13457.terms
def map_36_222 : Matrix 1 7 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image13682 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13682 : InImage map_36_222 image13682 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13682 : Bundle := named_bundle% "RealMapCertificates/relations/basis13682.json"
theorem reductionProof13682 : EqualModuloRelations reduction13682.relations reduction13682.input reduction13682.output := by lin_cert using reduction13682.terms
theorem substitutionProof13682 : IsMapEvaluation generatorImages reduction13682.relations [1592] reduction13682.output := by lin_cert using reduction13682.terms
def image13683 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13683 : InImage map_36_222 image13683 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13683 : Bundle := named_bundle% "RealMapCertificates/relations/basis13683.json"
theorem reductionProof13683 : EqualModuloRelations reduction13683.relations reduction13683.input reduction13683.output := by lin_cert using reduction13683.terms
theorem substitutionProof13683 : IsMapEvaluation generatorImages reduction13683.relations [13,13,13,13,13,13,13,52] reduction13683.output := by lin_cert using reduction13683.terms
def image13684 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13684 : InImage map_36_222 image13684 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13684 : Bundle := named_bundle% "RealMapCertificates/relations/basis13684.json"
theorem reductionProof13684 : EqualModuloRelations reduction13684.relations reduction13684.input reduction13684.output := by lin_cert using reduction13684.terms
theorem substitutionProof13684 : IsMapEvaluation generatorImages reduction13684.relations [8,9,13,13,13,23,101] reduction13684.output := by lin_cert using reduction13684.terms
def image13685 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13685 : InImage map_36_222 image13685 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13685 : Bundle := named_bundle% "RealMapCertificates/relations/basis13685.json"
theorem reductionProof13685 : EqualModuloRelations reduction13685.relations reduction13685.input reduction13685.output := by lin_cert using reduction13685.terms
theorem substitutionProof13685 : IsMapEvaluation generatorImages reduction13685.relations [8,8,956] reduction13685.output := by lin_cert using reduction13685.terms
def image13686 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13686 : InImage map_36_222 image13686 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13686 : Bundle := named_bundle% "RealMapCertificates/relations/basis13686.json"
theorem reductionProof13686 : EqualModuloRelations reduction13686.relations reduction13686.input reduction13686.output := by lin_cert using reduction13686.terms
theorem substitutionProof13686 : IsMapEvaluation generatorImages reduction13686.relations [8,8,8,8,8,13,212] reduction13686.output := by lin_cert using reduction13686.terms
def image13687 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13687 : InImage map_36_222 image13687 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13687 : Bundle := named_bundle% "RealMapCertificates/relations/basis13687.json"
theorem reductionProof13687 : EqualModuloRelations reduction13687.relations reduction13687.input reduction13687.output := by lin_cert using reduction13687.terms
theorem substitutionProof13687 : IsMapEvaluation generatorImages reduction13687.relations [0,8,8,940] reduction13687.output := by lin_cert using reduction13687.terms
def image13688 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13688 : InImage map_36_222 image13688 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13688 : Bundle := named_bundle% "RealMapCertificates/relations/basis13688.json"
theorem reductionProof13688 : EqualModuloRelations reduction13688.relations reduction13688.input reduction13688.output := by lin_cert using reduction13688.terms
theorem substitutionProof13688 : IsMapEvaluation generatorImages reduction13688.relations [0,0,0,0,0,64,586] reduction13688.output := by lin_cert using reduction13688.terms
def map_36_223 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13842 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13842 : InImage map_36_223 image13842 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13842 : Bundle := named_bundle% "RealMapCertificates/relations/basis13842.json"
theorem reductionProof13842 : EqualModuloRelations reduction13842.relations reduction13842.input reduction13842.output := by lin_cert using reduction13842.terms
theorem substitutionProof13842 : IsMapEvaluation generatorImages reduction13842.relations [1605] reduction13842.output := by lin_cert using reduction13842.terms
def image13843 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13843 : InImage map_36_223 image13843 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13843 : Bundle := named_bundle% "RealMapCertificates/relations/basis13843.json"
theorem reductionProof13843 : EqualModuloRelations reduction13843.relations reduction13843.input reduction13843.output := by lin_cert using reduction13843.terms
theorem substitutionProof13843 : IsMapEvaluation generatorImages reduction13843.relations [8,9,13,642] reduction13843.output := by lin_cert using reduction13843.terms
def map_36_224 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image14005 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14005 : InImage map_36_224 image14005 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14005 : Bundle := named_bundle% "RealMapCertificates/relations/basis14005.json"
theorem reductionProof14005 : EqualModuloRelations reduction14005.relations reduction14005.input reduction14005.output := by lin_cert using reduction14005.terms
theorem substitutionProof14005 : IsMapEvaluation generatorImages reduction14005.relations [16,64,347] reduction14005.output := by lin_cert using reduction14005.terms
def image14006 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14006 : InImage map_36_224 image14006 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14006 : Bundle := named_bundle% "RealMapCertificates/relations/basis14006.json"
theorem reductionProof14006 : EqualModuloRelations reduction14006.relations reduction14006.input reduction14006.output := by lin_cert using reduction14006.terms
theorem substitutionProof14006 : IsMapEvaluation generatorImages reduction14006.relations [13,13,13,13,13,194] reduction14006.output := by lin_cert using reduction14006.terms
def image14007 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14007 : InImage map_36_224 image14007 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14007 : Bundle := named_bundle% "RealMapCertificates/relations/basis14007.json"
theorem reductionProof14007 : EqualModuloRelations reduction14007.relations reduction14007.input reduction14007.output := by lin_cert using reduction14007.terms
theorem substitutionProof14007 : IsMapEvaluation generatorImages reduction14007.relations [8,8,16,627] reduction14007.output := by lin_cert using reduction14007.terms
def image14008 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14008 : InImage map_36_224 image14008 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14008 : Bundle := named_bundle% "RealMapCertificates/relations/basis14008.json"
theorem reductionProof14008 : EqualModuloRelations reduction14008.relations reduction14008.input reduction14008.output := by lin_cert using reduction14008.terms
theorem substitutionProof14008 : IsMapEvaluation generatorImages reduction14008.relations [8,8,9,23,346] reduction14008.output := by lin_cert using reduction14008.terms
def image14009 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14009 : InImage map_36_224 image14009 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14009 : Bundle := named_bundle% "RealMapCertificates/relations/basis14009.json"
theorem reductionProof14009 : EqualModuloRelations reduction14009.relations reduction14009.input reduction14009.output := by lin_cert using reduction14009.terms
theorem substitutionProof14009 : IsMapEvaluation generatorImages reduction14009.relations [8,8,8,8,8,8,250] reduction14009.output := by lin_cert using reduction14009.terms
def map_36_225 : Matrix 1 7 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image14244 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14244 : InImage map_36_225 image14244 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction14244 : Bundle := named_bundle% "RealMapCertificates/relations/basis14244.json"
theorem reductionProof14244 : EqualModuloRelations reduction14244.relations reduction14244.input reduction14244.output := by lin_cert using reduction14244.terms
theorem substitutionProof14244 : IsMapEvaluation generatorImages reduction14244.relations [8,1317] reduction14244.output := by lin_cert using reduction14244.terms
def image14245 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14245 : InImage map_36_225 image14245 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction14245 : Bundle := named_bundle% "RealMapCertificates/relations/basis14245.json"
theorem reductionProof14245 : EqualModuloRelations reduction14245.relations reduction14245.input reduction14245.output := by lin_cert using reduction14245.terms
theorem substitutionProof14245 : IsMapEvaluation generatorImages reduction14245.relations [8,13,13,13,13,23,101] reduction14245.output := by lin_cert using reduction14245.terms
def image14246 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14246 : InImage map_36_225 image14246 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction14246 : Bundle := named_bundle% "RealMapCertificates/relations/basis14246.json"
theorem reductionProof14246 : EqualModuloRelations reduction14246.relations reduction14246.input reduction14246.output := by lin_cert using reduction14246.terms
theorem substitutionProof14246 : IsMapEvaluation generatorImages reduction14246.relations [8,8,138,188] reduction14246.output := by lin_cert using reduction14246.terms
def image14247 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14247 : InImage map_36_225 image14247 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction14247 : Bundle := named_bundle% "RealMapCertificates/relations/basis14247.json"
theorem reductionProof14247 : EqualModuloRelations reduction14247.relations reduction14247.input reduction14247.output := by lin_cert using reduction14247.terms
theorem substitutionProof14247 : IsMapEvaluation generatorImages reduction14247.relations [8,8,8,8,9,13,212] reduction14247.output := by lin_cert using reduction14247.terms
def image14248 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14248 : InImage map_36_225 image14248 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction14248 : Bundle := named_bundle% "RealMapCertificates/relations/basis14248.json"
theorem reductionProof14248 : EqualModuloRelations reduction14248.relations reduction14248.input reduction14248.output := by lin_cert using reduction14248.terms
theorem substitutionProof14248 : IsMapEvaluation generatorImages reduction14248.relations [1,193,260] reduction14248.output := by lin_cert using reduction14248.terms
def image14249 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14249 : InImage map_36_225 image14249 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction14249 : Bundle := named_bundle% "RealMapCertificates/relations/basis14249.json"
theorem reductionProof14249 : EqualModuloRelations reduction14249.relations reduction14249.input reduction14249.output := by lin_cert using reduction14249.terms
theorem substitutionProof14249 : IsMapEvaluation generatorImages reduction14249.relations [0,8,8,17,627] reduction14249.output := by lin_cert using reduction14249.terms
def image14250 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14250 : InImage map_36_225 image14250 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction14250 : Bundle := named_bundle% "RealMapCertificates/relations/basis14250.json"
theorem reductionProof14250 : EqualModuloRelations reduction14250.relations reduction14250.input reduction14250.output := by lin_cert using reduction14250.terms
theorem substitutionProof14250 : IsMapEvaluation generatorImages reduction14250.relations [0,0,64,642] reduction14250.output := by lin_cert using reduction14250.terms
def map_36_226 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14391 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14391 : InImage map_36_226 image14391 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14391 : Bundle := named_bundle% "RealMapCertificates/relations/basis14391.json"
theorem reductionProof14391 : EqualModuloRelations reduction14391.relations reduction14391.input reduction14391.output := by lin_cert using reduction14391.terms
theorem substitutionProof14391 : IsMapEvaluation generatorImages reduction14391.relations [8,1336] reduction14391.output := by lin_cert using reduction14391.terms
def image14392 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14392 : InImage map_36_226 image14392 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14392 : Bundle := named_bundle% "RealMapCertificates/relations/basis14392.json"
theorem reductionProof14392 : EqualModuloRelations reduction14392.relations reduction14392.input reduction14392.output := by lin_cert using reduction14392.terms
theorem substitutionProof14392 : IsMapEvaluation generatorImages reduction14392.relations [8,13,13,642] reduction14392.output := by lin_cert using reduction14392.terms
def image14393 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14393 : InImage map_36_226 image14393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14393 : Bundle := named_bundle% "RealMapCertificates/relations/basis14393.json"
theorem reductionProof14393 : EqualModuloRelations reduction14393.relations reduction14393.input reduction14393.output := by lin_cert using reduction14393.terms
theorem substitutionProof14393 : IsMapEvaluation generatorImages reduction14393.relations [0,0,0,1606] reduction14393.output := by lin_cert using reduction14393.terms
end RealMapCertificates
