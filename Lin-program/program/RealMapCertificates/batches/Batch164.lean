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
  | 64 => []
  | 72 => []
  | 75 => []
  | 80 => []
  | 83 => []
  | 101 => []
  | 149 => [[4,9,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 212 => []
  | 220 => []
  | 250 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 254 => []
  | 260 => []
  | 261 => []
  | 278 => []
  | 279 => []
  | 303 => []
  | 318 => []
  | 324 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 382 => []
  | 517 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 645 => []
  | 655 => []
  | 667 => []
  | 690 => []
  | 704 => []
  | 715 => [[7,7,7,12,12]]
  | 716 => []
  | 738 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 797 => []
  | 812 => []
  | 854 => []
  | 898 => []
  | 963 => []
  | 1365 => [[6,9,12,12,12]]
  | 1382 => []
  | 1427 => [[5,10,12,12,12]]
  | 1439 => []
  | 1441 => []
  | 1482 => [[7,10,12,12,12]]
  | 1502 => []
  | 1553 => []
  | 1595 => []
  | 1719 => []
  | 1813 => []
  | 1857 => []
  | 1901 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1991 => []
  | 1992 => []
  | 1993 => []
  | 1994 => []
  | 2038 => []
  | 2058 => []
  | 2094 => []
  | 2095 => []
  | 2121 => []
  | 2123 => []
  | 2125 => []
  | 2163 => []
  | 2164 => []
  | _ => []
def map_36_227 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image14583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14583 : InImage map_36_227 image14583 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14583 : Bundle := named_bundle% "RealMapCertificates/relations/basis14583.json"
theorem reductionProof14583 : EqualModuloRelations reduction14583.relations reduction14583.input reduction14583.output := by lin_cert using reduction14583.terms
theorem substitutionProof14583 : IsMapEvaluation generatorImages reduction14583.relations [8,64,517] reduction14583.output := by lin_cert using reduction14583.terms
def image14584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14584 : InImage map_36_227 image14584 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14584 : Bundle := named_bundle% "RealMapCertificates/relations/basis14584.json"
theorem reductionProof14584 : EqualModuloRelations reduction14584.relations reduction14584.input reduction14584.output := by lin_cert using reduction14584.terms
theorem substitutionProof14584 : IsMapEvaluation generatorImages reduction14584.relations [8,8,13,23,346] reduction14584.output := by lin_cert using reduction14584.terms
def image14585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14585 : InImage map_36_227 image14585 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14585 : Bundle := named_bundle% "RealMapCertificates/relations/basis14585.json"
theorem reductionProof14585 : EqualModuloRelations reduction14585.relations reduction14585.input reduction14585.output := by lin_cert using reduction14585.terms
theorem substitutionProof14585 : IsMapEvaluation generatorImages reduction14585.relations [8,8,8,797] reduction14585.output := by lin_cert using reduction14585.terms
def image14586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14586 : InImage map_36_227 image14586 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14586 : Bundle := named_bundle% "RealMapCertificates/relations/basis14586.json"
theorem reductionProof14586 : EqualModuloRelations reduction14586.relations reduction14586.input reduction14586.output := by lin_cert using reduction14586.terms
theorem substitutionProof14586 : IsMapEvaluation generatorImages reduction14586.relations [8,8,8,8,8,8,261] reduction14586.output := by lin_cert using reduction14586.terms
def image14587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14587 : InImage map_36_227 image14587 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14587 : Bundle := named_bundle% "RealMapCertificates/relations/basis14587.json"
theorem reductionProof14587 : EqualModuloRelations reduction14587.relations reduction14587.input reduction14587.output := by lin_cert using reduction14587.terms
theorem substitutionProof14587 : IsMapEvaluation generatorImages reduction14587.relations [1,1,64,642] reduction14587.output := by lin_cert using reduction14587.terms
def image14588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14588 : InImage map_36_227 image14588 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14588 : Bundle := named_bundle% "RealMapCertificates/relations/basis14588.json"
theorem reductionProof14588 : EqualModuloRelations reduction14588.relations reduction14588.input reduction14588.output := by lin_cert using reduction14588.terms
theorem substitutionProof14588 : IsMapEvaluation generatorImages reduction14588.relations [0,0,0,0,0,0,64,627] reduction14588.output := by lin_cert using reduction14588.terms
def map_36_228 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14818 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14818 : InImage map_36_228 image14818 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14818 : Bundle := named_bundle% "RealMapCertificates/relations/basis14818.json"
theorem reductionProof14818 : EqualModuloRelations reduction14818.relations reduction14818.input reduction14818.output := by lin_cert using reduction14818.terms
theorem substitutionProof14818 : IsMapEvaluation generatorImages reduction14818.relations [9,13,13,13,13,23,101] reduction14818.output := by lin_cert using reduction14818.terms
def image14819 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14819 : InImage map_36_228 image14819 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14819 : Bundle := named_bundle% "RealMapCertificates/relations/basis14819.json"
theorem reductionProof14819 : EqualModuloRelations reduction14819.relations reduction14819.input reduction14819.output := by lin_cert using reduction14819.terms
theorem substitutionProof14819 : IsMapEvaluation generatorImages reduction14819.relations [8,1365] reduction14819.output := by lin_cert using reduction14819.terms
def image14820 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14820 : InImage map_36_228 image14820 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14820 : Bundle := named_bundle% "RealMapCertificates/relations/basis14820.json"
theorem reductionProof14820 : EqualModuloRelations reduction14820.relations reduction14820.input reduction14820.output := by lin_cert using reduction14820.terms
theorem substitutionProof14820 : IsMapEvaluation generatorImages reduction14820.relations [8,8,8,812] reduction14820.output := by lin_cert using reduction14820.terms
def image14821 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14821 : InImage map_36_228 image14821 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14821 : Bundle := named_bundle% "RealMapCertificates/relations/basis14821.json"
theorem reductionProof14821 : EqualModuloRelations reduction14821.relations reduction14821.input reduction14821.output := by lin_cert using reduction14821.terms
theorem substitutionProof14821 : IsMapEvaluation generatorImages reduction14821.relations [8,8,8,8,13,13,212] reduction14821.output := by lin_cert using reduction14821.terms
def image14822 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14822 : InImage map_36_228 image14822 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14822 : Bundle := named_bundle% "RealMapCertificates/relations/basis14822.json"
theorem reductionProof14822 : EqualModuloRelations reduction14822.relations reduction14822.input reduction14822.output := by lin_cert using reduction14822.terms
theorem substitutionProof14822 : IsMapEvaluation generatorImages reduction14822.relations [0,0,0,0,0,64,645] reduction14822.output := by lin_cert using reduction14822.terms
def image14823 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14823 : InImage map_36_228 image14823 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14823 : Bundle := named_bundle% "RealMapCertificates/relations/basis14823.json"
theorem reductionProof14823 : EqualModuloRelations reduction14823.relations reduction14823.input reduction14823.output := by lin_cert using reduction14823.terms
theorem substitutionProof14823 : IsMapEvaluation generatorImages reduction14823.relations [0,0,0,0,0,0,0,188,260] reduction14823.output := by lin_cert using reduction14823.terms
def map_36_229 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14993 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14993 : InImage map_36_229 image14993 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14993 : Bundle := named_bundle% "RealMapCertificates/relations/basis14993.json"
theorem reductionProof14993 : EqualModuloRelations reduction14993.relations reduction14993.input reduction14993.output := by lin_cert using reduction14993.terms
theorem substitutionProof14993 : IsMapEvaluation generatorImages reduction14993.relations [9,13,13,642] reduction14993.output := by lin_cert using reduction14993.terms
def image14994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14994 : InImage map_36_229 image14994 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14994 : Bundle := named_bundle% "RealMapCertificates/relations/basis14994.json"
theorem reductionProof14994 : EqualModuloRelations reduction14994.relations reduction14994.input reduction14994.output := by lin_cert using reduction14994.terms
theorem substitutionProof14994 : IsMapEvaluation generatorImages reduction14994.relations [8,1382] reduction14994.output := by lin_cert using reduction14994.terms
def map_36_230 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15180 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15180 : InImage map_36_230 image15180 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15180 : Bundle := named_bundle% "RealMapCertificates/relations/basis15180.json"
theorem reductionProof15180 : EqualModuloRelations reduction15180.relations reduction15180.input reduction15180.output := by lin_cert using reduction15180.terms
theorem substitutionProof15180 : IsMapEvaluation generatorImages reduction15180.relations [13,13,13,13,13,220] reduction15180.output := by lin_cert using reduction15180.terms
def image15181 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15181 : InImage map_36_230 image15181 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15181 : Bundle := named_bundle% "RealMapCertificates/relations/basis15181.json"
theorem reductionProof15181 : EqualModuloRelations reduction15181.relations reduction15181.input reduction15181.output := by lin_cert using reduction15181.terms
theorem substitutionProof15181 : IsMapEvaluation generatorImages reduction15181.relations [8,9,13,23,346] reduction15181.output := by lin_cert using reduction15181.terms
def image15182 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15182 : InImage map_36_230 image15182 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15182 : Bundle := named_bundle% "RealMapCertificates/relations/basis15182.json"
theorem reductionProof15182 : EqualModuloRelations reduction15182.relations reduction15182.input reduction15182.output := by lin_cert using reduction15182.terms
theorem substitutionProof15182 : IsMapEvaluation generatorImages reduction15182.relations [8,8,64,347] reduction15182.output := by lin_cert using reduction15182.terms
def image15183 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15183 : InImage map_36_230 image15183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15183 : Bundle := named_bundle% "RealMapCertificates/relations/basis15183.json"
theorem reductionProof15183 : EqualModuloRelations reduction15183.relations reduction15183.input reduction15183.output := by lin_cert using reduction15183.terms
theorem substitutionProof15183 : IsMapEvaluation generatorImages reduction15183.relations [8,8,8,8,627] reduction15183.output := by lin_cert using reduction15183.terms
def image15184 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15184 : InImage map_36_230 image15184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15184 : Bundle := named_bundle% "RealMapCertificates/relations/basis15184.json"
theorem reductionProof15184 : EqualModuloRelations reduction15184.relations reduction15184.input reduction15184.output := by lin_cert using reduction15184.terms
theorem substitutionProof15184 : IsMapEvaluation generatorImages reduction15184.relations [8,8,8,8,8,9,261] reduction15184.output := by lin_cert using reduction15184.terms
def map_36_231 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image15443 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15443 : InImage map_36_231 image15443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15443 : Bundle := named_bundle% "RealMapCertificates/relations/basis15443.json"
theorem reductionProof15443 : EqualModuloRelations reduction15443.relations reduction15443.input reduction15443.output := by lin_cert using reduction15443.terms
theorem substitutionProof15443 : IsMapEvaluation generatorImages reduction15443.relations [13,13,13,13,13,23,101] reduction15443.output := by lin_cert using reduction15443.terms
def image15444 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15444 : InImage map_36_231 image15444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15444 : Bundle := named_bundle% "RealMapCertificates/relations/basis15444.json"
theorem reductionProof15444 : EqualModuloRelations reduction15444.relations reduction15444.input reduction15444.output := by lin_cert using reduction15444.terms
theorem substitutionProof15444 : IsMapEvaluation generatorImages reduction15444.relations [8,1427] reduction15444.output := by lin_cert using reduction15444.terms
def image15445 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15445 : InImage map_36_231 image15445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15445 : Bundle := named_bundle% "RealMapCertificates/relations/basis15445.json"
theorem reductionProof15445 : EqualModuloRelations reduction15445.relations reduction15445.input reduction15445.output := by lin_cert using reduction15445.terms
theorem substitutionProof15445 : IsMapEvaluation generatorImages reduction15445.relations [8,8,8,854] reduction15445.output := by lin_cert using reduction15445.terms
def image15446 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15446 : InImage map_36_231 image15446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15446 : Bundle := named_bundle% "RealMapCertificates/relations/basis15446.json"
theorem reductionProof15446 : EqualModuloRelations reduction15446.relations reduction15446.input reduction15446.output := by lin_cert using reduction15446.terms
theorem substitutionProof15446 : IsMapEvaluation generatorImages reduction15446.relations [8,8,8,9,13,13,212] reduction15446.output := by lin_cert using reduction15446.terms
def image15447 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15447 : InImage map_36_231 image15447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15447 : Bundle := named_bundle% "RealMapCertificates/relations/basis15447.json"
theorem reductionProof15447 : EqualModuloRelations reduction15447.relations reduction15447.input reduction15447.output := by lin_cert using reduction15447.terms
theorem substitutionProof15447 : IsMapEvaluation generatorImages reduction15447.relations [1,64,715] reduction15447.output := by lin_cert using reduction15447.terms
def map_36_232 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15620 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15620 : InImage map_36_232 image15620 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15620 : Bundle := named_bundle% "RealMapCertificates/relations/basis15620.json"
theorem reductionProof15620 : EqualModuloRelations reduction15620.relations reduction15620.input reduction15620.output := by lin_cert using reduction15620.terms
theorem substitutionProof15620 : IsMapEvaluation generatorImages reduction15620.relations [64,753] reduction15620.output := by lin_cert using reduction15620.terms
def image15621 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15621 : InImage map_36_232 image15621 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15621 : Bundle := named_bundle% "RealMapCertificates/relations/basis15621.json"
theorem reductionProof15621 : EqualModuloRelations reduction15621.relations reduction15621.input reduction15621.output := by lin_cert using reduction15621.terms
theorem substitutionProof15621 : IsMapEvaluation generatorImages reduction15621.relations [13,13,13,642] reduction15621.output := by lin_cert using reduction15621.terms
def image15622 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15622 : InImage map_36_232 image15622 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15622 : Bundle := named_bundle% "RealMapCertificates/relations/basis15622.json"
theorem reductionProof15622 : EqualModuloRelations reduction15622.relations reduction15622.input reduction15622.output := by lin_cert using reduction15622.terms
theorem substitutionProof15622 : IsMapEvaluation generatorImages reduction15622.relations [8,1439] reduction15622.output := by lin_cert using reduction15622.terms
def map_36_233 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image15838 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15838 : InImage map_36_233 image15838 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15838 : Bundle := named_bundle% "RealMapCertificates/relations/basis15838.json"
theorem reductionProof15838 : EqualModuloRelations reduction15838.relations reduction15838.input reduction15838.output := by lin_cert using reduction15838.terms
theorem substitutionProof15838 : IsMapEvaluation generatorImages reduction15838.relations [8,13,13,23,346] reduction15838.output := by lin_cert using reduction15838.terms
def image15839 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15839 : InImage map_36_233 image15839 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15839 : Bundle := named_bundle% "RealMapCertificates/relations/basis15839.json"
theorem reductionProof15839 : EqualModuloRelations reduction15839.relations reduction15839.input reduction15839.output := by lin_cert using reduction15839.terms
theorem substitutionProof15839 : IsMapEvaluation generatorImages reduction15839.relations [8,8,64,382] reduction15839.output := by lin_cert using reduction15839.terms
def image15840 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15840 : InImage map_36_233 image15840 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15840 : Bundle := named_bundle% "RealMapCertificates/relations/basis15840.json"
theorem reductionProof15840 : EqualModuloRelations reduction15840.relations reduction15840.input reduction15840.output := by lin_cert using reduction15840.terms
theorem substitutionProof15840 : IsMapEvaluation generatorImages reduction15840.relations [8,8,8,8,655] reduction15840.output := by lin_cert using reduction15840.terms
def image15841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15841 : InImage map_36_233 image15841 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15841 : Bundle := named_bundle% "RealMapCertificates/relations/basis15841.json"
theorem reductionProof15841 : EqualModuloRelations reduction15841.relations reduction15841.input reduction15841.output := by lin_cert using reduction15841.terms
theorem substitutionProof15841 : IsMapEvaluation generatorImages reduction15841.relations [8,8,8,8,8,13,261] reduction15841.output := by lin_cert using reduction15841.terms
def map_36_234 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16093 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16093 : InImage map_36_234 image16093 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16093 : Bundle := named_bundle% "RealMapCertificates/relations/basis16093.json"
theorem reductionProof16093 : EqualModuloRelations reduction16093.relations reduction16093.input reduction16093.output := by lin_cert using reduction16093.terms
theorem substitutionProof16093 : IsMapEvaluation generatorImages reduction16093.relations [8,1482] reduction16093.output := by lin_cert using reduction16093.terms
def image16094 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16094 : InImage map_36_234 image16094 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16094 : Bundle := named_bundle% "RealMapCertificates/relations/basis16094.json"
theorem reductionProof16094 : EqualModuloRelations reduction16094.relations reduction16094.input reduction16094.output := by lin_cert using reduction16094.terms
theorem substitutionProof16094 : IsMapEvaluation generatorImages reduction16094.relations [8,8,8,13,13,13,212] reduction16094.output := by lin_cert using reduction16094.terms
def image16095 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16095 : InImage map_36_234 image16095 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16095 : Bundle := named_bundle% "RealMapCertificates/relations/basis16095.json"
theorem reductionProof16095 : EqualModuloRelations reduction16095.relations reduction16095.input reduction16095.output := by lin_cert using reduction16095.terms
theorem substitutionProof16095 : IsMapEvaluation generatorImages reduction16095.relations [8,8,8,8,667] reduction16095.output := by lin_cert using reduction16095.terms
def map_36_235 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image16286 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16286 : InImage map_36_235 image16286 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16286 : Bundle := named_bundle% "RealMapCertificates/relations/basis16286.json"
theorem reductionProof16286 : EqualModuloRelations reduction16286.relations reduction16286.input reduction16286.output := by lin_cert using reduction16286.terms
theorem substitutionProof16286 : IsMapEvaluation generatorImages reduction16286.relations [64,784] reduction16286.output := by lin_cert using reduction16286.terms
def image16287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16287 : InImage map_36_235 image16287 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16287 : Bundle := named_bundle% "RealMapCertificates/relations/basis16287.json"
theorem reductionProof16287 : EqualModuloRelations reduction16287.relations reduction16287.input reduction16287.output := by lin_cert using reduction16287.terms
theorem substitutionProof16287 : IsMapEvaluation generatorImages reduction16287.relations [8,1502] reduction16287.output := by lin_cert using reduction16287.terms
def image16288 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16288 : InImage map_36_235 image16288 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16288 : Bundle := named_bundle% "RealMapCertificates/relations/basis16288.json"
theorem reductionProof16288 : EqualModuloRelations reduction16288.relations reduction16288.input reduction16288.output := by lin_cert using reduction16288.terms
theorem substitutionProof16288 : IsMapEvaluation generatorImages reduction16288.relations [1,1813] reduction16288.output := by lin_cert using reduction16288.terms
def map_36_236 : Matrix 1 5 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16509 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16509 : InImage map_36_236 image16509 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16509 : Bundle := named_bundle% "RealMapCertificates/relations/basis16509.json"
theorem reductionProof16509 : EqualModuloRelations reduction16509.relations reduction16509.input reduction16509.output := by lin_cert using reduction16509.terms
theorem substitutionProof16509 : IsMapEvaluation generatorImages reduction16509.relations [9,13,13,23,346] reduction16509.output := by lin_cert using reduction16509.terms
def image16510 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16510 : InImage map_36_236 image16510 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16510 : Bundle := named_bundle% "RealMapCertificates/relations/basis16510.json"
theorem reductionProof16510 : EqualModuloRelations reduction16510.relations reduction16510.input reduction16510.output := by lin_cert using reduction16510.terms
theorem substitutionProof16510 : IsMapEvaluation generatorImages reduction16510.relations [8,8,16,64,209] reduction16510.output := by lin_cert using reduction16510.terms
def image16511 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16511 : InImage map_36_236 image16511 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16511 : Bundle := named_bundle% "RealMapCertificates/relations/basis16511.json"
theorem reductionProof16511 : EqualModuloRelations reduction16511.relations reduction16511.input reduction16511.output := by lin_cert using reduction16511.terms
theorem substitutionProof16511 : IsMapEvaluation generatorImages reduction16511.relations [8,8,8,8,690] reduction16511.output := by lin_cert using reduction16511.terms
def image16512 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16512 : InImage map_36_236 image16512 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16512 : Bundle := named_bundle% "RealMapCertificates/relations/basis16512.json"
theorem reductionProof16512 : EqualModuloRelations reduction16512.relations reduction16512.input reduction16512.output := by lin_cert using reduction16512.terms
theorem substitutionProof16512 : IsMapEvaluation generatorImages reduction16512.relations [8,8,8,8,9,13,261] reduction16512.output := by lin_cert using reduction16512.terms
def image16513 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16513 : InImage map_36_236 image16513 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16513 : Bundle := named_bundle% "RealMapCertificates/relations/basis16513.json"
theorem reductionProof16513 : EqualModuloRelations reduction16513.relations reduction16513.input reduction16513.output := by lin_cert using reduction16513.terms
theorem substitutionProof16513 : IsMapEvaluation generatorImages reduction16513.relations [0,1857] reduction16513.output := by lin_cert using reduction16513.terms
def map_36_237 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16772 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16772 : InImage map_36_237 image16772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16772 : Bundle := named_bundle% "RealMapCertificates/relations/basis16772.json"
theorem reductionProof16772 : EqualModuloRelations reduction16772.relations reduction16772.input reduction16772.output := by lin_cert using reduction16772.terms
theorem substitutionProof16772 : IsMapEvaluation generatorImages reduction16772.relations [9,1482] reduction16772.output := by lin_cert using reduction16772.terms
def image16773 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16773 : InImage map_36_237 image16773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16773 : Bundle := named_bundle% "RealMapCertificates/relations/basis16773.json"
theorem reductionProof16773 : EqualModuloRelations reduction16773.relations reduction16773.input reduction16773.output := by lin_cert using reduction16773.terms
theorem substitutionProof16773 : IsMapEvaluation generatorImages reduction16773.relations [8,8,9,13,13,13,212] reduction16773.output := by lin_cert using reduction16773.terms
def image16774 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16774 : InImage map_36_237 image16774 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16774 : Bundle := named_bundle% "RealMapCertificates/relations/basis16774.json"
theorem reductionProof16774 : EqualModuloRelations reduction16774.relations reduction16774.input reduction16774.output := by lin_cert using reduction16774.terms
theorem substitutionProof16774 : IsMapEvaluation generatorImages reduction16774.relations [8,8,8,8,704] reduction16774.output := by lin_cert using reduction16774.terms
def image16775 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16775 : InImage map_36_237 image16775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16775 : Bundle := named_bundle% "RealMapCertificates/relations/basis16775.json"
theorem reductionProof16775 : EqualModuloRelations reduction16775.relations reduction16775.input reduction16775.output := by lin_cert using reduction16775.terms
theorem substitutionProof16775 : IsMapEvaluation generatorImages reduction16775.relations [1,5,64,627] reduction16775.output := by lin_cert using reduction16775.terms
def map_36_238 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16952 : InImage map_36_238 image16952 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16952 : Bundle := named_bundle% "RealMapCertificates/relations/basis16952.json"
theorem reductionProof16952 : EqualModuloRelations reduction16952.relations reduction16952.input reduction16952.output := by lin_cert using reduction16952.terms
theorem substitutionProof16952 : IsMapEvaluation generatorImages reduction16952.relations [260,260] reduction16952.output := by lin_cert using reduction16952.terms
def image16953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16953 : InImage map_36_238 image16953 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16953 : Bundle := named_bundle% "RealMapCertificates/relations/basis16953.json"
theorem reductionProof16953 : EqualModuloRelations reduction16953.relations reduction16953.input reduction16953.output := by lin_cert using reduction16953.terms
theorem substitutionProof16953 : IsMapEvaluation generatorImages reduction16953.relations [13,13,13,716] reduction16953.output := by lin_cert using reduction16953.terms
def image16954 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16954 : InImage map_36_238 image16954 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16954 : Bundle := named_bundle% "RealMapCertificates/relations/basis16954.json"
theorem reductionProof16954 : EqualModuloRelations reduction16954.relations reduction16954.input reduction16954.output := by lin_cert using reduction16954.terms
theorem substitutionProof16954 : IsMapEvaluation generatorImages reduction16954.relations [13,13,13,13,13,13,13,83] reduction16954.output := by lin_cert using reduction16954.terms
def image16955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16955 : InImage map_36_238 image16955 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16955 : Bundle := named_bundle% "RealMapCertificates/relations/basis16955.json"
theorem reductionProof16955 : EqualModuloRelations reduction16955.relations reduction16955.input reduction16955.output := by lin_cert using reduction16955.terms
theorem substitutionProof16955 : IsMapEvaluation generatorImages reduction16955.relations [8,1553] reduction16955.output := by lin_cert using reduction16955.terms
def image16956 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16956 : InImage map_36_238 image16956 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16956 : Bundle := named_bundle% "RealMapCertificates/relations/basis16956.json"
theorem reductionProof16956 : EqualModuloRelations reduction16956.relations reduction16956.input reduction16956.output := by lin_cert using reduction16956.terms
theorem substitutionProof16956 : IsMapEvaluation generatorImages reduction16956.relations [8,149,318] reduction16956.output := by lin_cert using reduction16956.terms
def map_36_239 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17199 : InImage map_36_239 image17199 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17199 : Bundle := named_bundle% "RealMapCertificates/relations/basis17199.json"
theorem reductionProof17199 : EqualModuloRelations reduction17199.relations reduction17199.input reduction17199.output := by lin_cert using reduction17199.terms
theorem substitutionProof17199 : IsMapEvaluation generatorImages reduction17199.relations [13,13,13,23,346] reduction17199.output := by lin_cert using reduction17199.terms
def image17200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17200 : InImage map_36_239 image17200 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17200 : Bundle := named_bundle% "RealMapCertificates/relations/basis17200.json"
theorem reductionProof17200 : EqualModuloRelations reduction17200.relations reduction17200.input reduction17200.output := by lin_cert using reduction17200.terms
theorem substitutionProof17200 : IsMapEvaluation generatorImages reduction17200.relations [8,8,8,64,279] reduction17200.output := by lin_cert using reduction17200.terms
def image17201 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17201 : InImage map_36_239 image17201 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17201 : Bundle := named_bundle% "RealMapCertificates/relations/basis17201.json"
theorem reductionProof17201 : EqualModuloRelations reduction17201.relations reduction17201.input reduction17201.output := by lin_cert using reduction17201.terms
theorem substitutionProof17201 : IsMapEvaluation generatorImages reduction17201.relations [8,8,8,9,690] reduction17201.output := by lin_cert using reduction17201.terms
def image17202 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17202 : InImage map_36_239 image17202 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17202 : Bundle := named_bundle% "RealMapCertificates/relations/basis17202.json"
theorem reductionProof17202 : EqualModuloRelations reduction17202.relations reduction17202.input reduction17202.output := by lin_cert using reduction17202.terms
theorem substitutionProof17202 : IsMapEvaluation generatorImages reduction17202.relations [8,8,8,8,13,13,261] reduction17202.output := by lin_cert using reduction17202.terms
def image17203 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17203 : InImage map_36_239 image17203 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17203 : Bundle := named_bundle% "RealMapCertificates/relations/basis17203.json"
theorem reductionProof17203 : EqualModuloRelations reduction17203.relations reduction17203.input reduction17203.output := by lin_cert using reduction17203.terms
theorem substitutionProof17203 : IsMapEvaluation generatorImages reduction17203.relations [0,1926] reduction17203.output := by lin_cert using reduction17203.terms
def image17204 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17204 : InImage map_36_239 image17204 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17204 : Bundle := named_bundle% "RealMapCertificates/relations/basis17204.json"
theorem reductionProof17204 : EqualModuloRelations reduction17204.relations reduction17204.input reduction17204.output := by lin_cert using reduction17204.terms
theorem substitutionProof17204 : IsMapEvaluation generatorImages reduction17204.relations [0,0,1901] reduction17204.output := by lin_cert using reduction17204.terms
def map_36_240 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17467 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17467 : InImage map_36_240 image17467 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17467 : Bundle := named_bundle% "RealMapCertificates/relations/basis17467.json"
theorem reductionProof17467 : EqualModuloRelations reduction17467.relations reduction17467.input reduction17467.output := by lin_cert using reduction17467.terms
theorem substitutionProof17467 : IsMapEvaluation generatorImages reduction17467.relations [1991] reduction17467.output := by lin_cert using reduction17467.terms
def image17468 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17468 : InImage map_36_240 image17468 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17468 : Bundle := named_bundle% "RealMapCertificates/relations/basis17468.json"
theorem reductionProof17468 : EqualModuloRelations reduction17468.relations reduction17468.input reduction17468.output := by lin_cert using reduction17468.terms
theorem substitutionProof17468 : IsMapEvaluation generatorImages reduction17468.relations [13,1482] reduction17468.output := by lin_cert using reduction17468.terms
def image17469 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17469 : InImage map_36_240 image17469 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17469 : Bundle := named_bundle% "RealMapCertificates/relations/basis17469.json"
theorem reductionProof17469 : EqualModuloRelations reduction17469.relations reduction17469.input reduction17469.output := by lin_cert using reduction17469.terms
theorem substitutionProof17469 : IsMapEvaluation generatorImages reduction17469.relations [8,8,13,13,13,13,212] reduction17469.output := by lin_cert using reduction17469.terms
def image17470 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17470 : InImage map_36_240 image17470 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17470 : Bundle := named_bundle% "RealMapCertificates/relations/basis17470.json"
theorem reductionProof17470 : EqualModuloRelations reduction17470.relations reduction17470.input reduction17470.output := by lin_cert using reduction17470.terms
theorem substitutionProof17470 : IsMapEvaluation generatorImages reduction17470.relations [8,8,8,8,738] reduction17470.output := by lin_cert using reduction17470.terms
def image17471 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17471 : InImage map_36_240 image17471 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17471 : Bundle := named_bundle% "RealMapCertificates/relations/basis17471.json"
theorem reductionProof17471 : EqualModuloRelations reduction17471.relations reduction17471.input reduction17471.output := by lin_cert using reduction17471.terms
theorem substitutionProof17471 : IsMapEvaluation generatorImages reduction17471.relations [0,1967] reduction17471.output := by lin_cert using reduction17471.terms
def map_36_241 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image17715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17715 : InImage map_36_241 image17715 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17715 : Bundle := named_bundle% "RealMapCertificates/relations/basis17715.json"
theorem reductionProof17715 : EqualModuloRelations reduction17715.relations reduction17715.input reduction17715.output := by lin_cert using reduction17715.terms
theorem substitutionProof17715 : IsMapEvaluation generatorImages reduction17715.relations [260,278] reduction17715.output := by lin_cert using reduction17715.terms
def image17716 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17716 : InImage map_36_241 image17716 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17716 : Bundle := named_bundle% "RealMapCertificates/relations/basis17716.json"
theorem reductionProof17716 : EqualModuloRelations reduction17716.relations reduction17716.input reduction17716.output := by lin_cert using reduction17716.terms
theorem substitutionProof17716 : IsMapEvaluation generatorImages reduction17716.relations [8,149,348] reduction17716.output := by lin_cert using reduction17716.terms
def image17717 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17717 : InImage map_36_241 image17717 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17717 : Bundle := named_bundle% "RealMapCertificates/relations/basis17717.json"
theorem reductionProof17717 : EqualModuloRelations reduction17717.relations reduction17717.input reduction17717.output := by lin_cert using reduction17717.terms
theorem substitutionProof17717 : IsMapEvaluation generatorImages reduction17717.relations [8,23,963] reduction17717.output := by lin_cert using reduction17717.terms
def image17718 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17718 : InImage map_36_241 image17718 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17718 : Bundle := named_bundle% "RealMapCertificates/relations/basis17718.json"
theorem reductionProof17718 : EqualModuloRelations reduction17718.relations reduction17718.input reduction17718.output := by lin_cert using reduction17718.terms
theorem substitutionProof17718 : IsMapEvaluation generatorImages reduction17718.relations [1,1967] reduction17718.output := by lin_cert using reduction17718.terms
def image17719 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17719 : InImage map_36_241 image17719 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17719 : Bundle := named_bundle% "RealMapCertificates/relations/basis17719.json"
theorem reductionProof17719 : EqualModuloRelations reduction17719.relations reduction17719.input reduction17719.output := by lin_cert using reduction17719.terms
theorem substitutionProof17719 : IsMapEvaluation generatorImages reduction17719.relations [0,1992] reduction17719.output := by lin_cert using reduction17719.terms
def image17720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17720 : InImage map_36_241 image17720 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17720 : Bundle := named_bundle% "RealMapCertificates/relations/basis17720.json"
theorem reductionProof17720 : EqualModuloRelations reduction17720.relations reduction17720.input reduction17720.output := by lin_cert using reduction17720.terms
theorem substitutionProof17720 : IsMapEvaluation generatorImages reduction17720.relations [0,0,0,1927] reduction17720.output := by lin_cert using reduction17720.terms
def map_36_242 : Matrix 1 7 := fun i j => ([false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image17973 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17973 : InImage map_36_242 image17973 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17973 : Bundle := named_bundle% "RealMapCertificates/relations/basis17973.json"
theorem reductionProof17973 : EqualModuloRelations reduction17973.relations reduction17973.input reduction17973.output := by lin_cert using reduction17973.terms
theorem substitutionProof17973 : IsMapEvaluation generatorImages reduction17973.relations [2058] reduction17973.output := by lin_cert using reduction17973.terms
def image17974 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17974 : InImage map_36_242 image17974 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17974 : Bundle := named_bundle% "RealMapCertificates/relations/basis17974.json"
theorem reductionProof17974 : EqualModuloRelations reduction17974.relations reduction17974.input reduction17974.output := by lin_cert using reduction17974.terms
theorem substitutionProof17974 : IsMapEvaluation generatorImages reduction17974.relations [8,8,8,13,690] reduction17974.output := by lin_cert using reduction17974.terms
def image17975 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17975 : InImage map_36_242 image17975 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17975 : Bundle := named_bundle% "RealMapCertificates/relations/basis17975.json"
theorem reductionProof17975 : EqualModuloRelations reduction17975.relations reduction17975.input reduction17975.output := by lin_cert using reduction17975.terms
theorem substitutionProof17975 : IsMapEvaluation generatorImages reduction17975.relations [8,8,8,9,13,13,261] reduction17975.output := by lin_cert using reduction17975.terms
def image17976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17976 : InImage map_36_242 image17976 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17976 : Bundle := named_bundle% "RealMapCertificates/relations/basis17976.json"
theorem reductionProof17976 : EqualModuloRelations reduction17976.relations reduction17976.input reduction17976.output := by lin_cert using reduction17976.terms
theorem substitutionProof17976 : IsMapEvaluation generatorImages reduction17976.relations [8,8,8,8,64,209] reduction17976.output := by lin_cert using reduction17976.terms
def image17977 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17977 : InImage map_36_242 image17977 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17977 : Bundle := named_bundle% "RealMapCertificates/relations/basis17977.json"
theorem reductionProof17977 : EqualModuloRelations reduction17977.relations reduction17977.input reduction17977.output := by lin_cert using reduction17977.terms
theorem substitutionProof17977 : IsMapEvaluation generatorImages reduction17977.relations [0,2038] reduction17977.output := by lin_cert using reduction17977.terms
def image17978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17978 : InImage map_36_242 image17978 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17978 : Bundle := named_bundle% "RealMapCertificates/relations/basis17978.json"
theorem reductionProof17978 : EqualModuloRelations reduction17978.relations reduction17978.input reduction17978.output := by lin_cert using reduction17978.terms
theorem substitutionProof17978 : IsMapEvaluation generatorImages reduction17978.relations [0,0,1994] reduction17978.output := by lin_cert using reduction17978.terms
def image17979 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17979 : InImage map_36_242 image17979 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17979 : Bundle := named_bundle% "RealMapCertificates/relations/basis17979.json"
theorem reductionProof17979 : EqualModuloRelations reduction17979.relations reduction17979.input reduction17979.output := by lin_cert using reduction17979.terms
theorem substitutionProof17979 : IsMapEvaluation generatorImages reduction17979.relations [0,0,1993] reduction17979.output := by lin_cert using reduction17979.terms
def map_36_243 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image18258 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18258 : InImage map_36_243 image18258 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18258 : Bundle := named_bundle% "RealMapCertificates/relations/basis18258.json"
theorem reductionProof18258 : EqualModuloRelations reduction18258.relations reduction18258.input reduction18258.output := by lin_cert using reduction18258.terms
theorem substitutionProof18258 : IsMapEvaluation generatorImages reduction18258.relations [64,64,254] reduction18258.output := by lin_cert using reduction18258.terms
def image18259 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18259 : InImage map_36_243 image18259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18259 : Bundle := named_bundle% "RealMapCertificates/relations/basis18259.json"
theorem reductionProof18259 : EqualModuloRelations reduction18259.relations reduction18259.input reduction18259.output := by lin_cert using reduction18259.terms
theorem substitutionProof18259 : IsMapEvaluation generatorImages reduction18259.relations [8,9,13,13,13,13,212] reduction18259.output := by lin_cert using reduction18259.terms
def image18260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18260 : InImage map_36_243 image18260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18260 : Bundle := named_bundle% "RealMapCertificates/relations/basis18260.json"
theorem reductionProof18260 : EqualModuloRelations reduction18260.relations reduction18260.input reduction18260.output := by lin_cert using reduction18260.terms
theorem substitutionProof18260 : IsMapEvaluation generatorImages reduction18260.relations [8,8,8,8,80,188] reduction18260.output := by lin_cert using reduction18260.terms
def map_36_244 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image18457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18457 : InImage map_36_244 image18457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18457 : Bundle := named_bundle% "RealMapCertificates/relations/basis18457.json"
theorem reductionProof18457 : EqualModuloRelations reduction18457.relations reduction18457.input reduction18457.output := by lin_cert using reduction18457.terms
theorem substitutionProof18457 : IsMapEvaluation generatorImages reduction18457.relations [16,1441] reduction18457.output := by lin_cert using reduction18457.terms
def image18458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18458 : InImage map_36_244 image18458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18458 : Bundle := named_bundle% "RealMapCertificates/relations/basis18458.json"
theorem reductionProof18458 : EqualModuloRelations reduction18458.relations reduction18458.input reduction18458.output := by lin_cert using reduction18458.terms
theorem substitutionProof18458 : IsMapEvaluation generatorImages reduction18458.relations [9,23,963] reduction18458.output := by lin_cert using reduction18458.terms
def image18459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18459 : InImage map_36_244 image18459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18459 : Bundle := named_bundle% "RealMapCertificates/relations/basis18459.json"
theorem reductionProof18459 : EqualModuloRelations reduction18459.relations reduction18459.input reduction18459.output := by lin_cert using reduction18459.terms
theorem substitutionProof18459 : IsMapEvaluation generatorImages reduction18459.relations [9,13,13,13,13,13,23,75] reduction18459.output := by lin_cert using reduction18459.terms
def image18460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18460 : InImage map_36_244 image18460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18460 : Bundle := named_bundle% "RealMapCertificates/relations/basis18460.json"
theorem reductionProof18460 : EqualModuloRelations reduction18460.relations reduction18460.input reduction18460.output := by lin_cert using reduction18460.terms
theorem substitutionProof18460 : IsMapEvaluation generatorImages reduction18460.relations [8,8,149,250] reduction18460.output := by lin_cert using reduction18460.terms
def map_36_245 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image18716 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18716 : InImage map_36_245 image18716 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction18716 : Bundle := named_bundle% "RealMapCertificates/relations/basis18716.json"
theorem reductionProof18716 : EqualModuloRelations reduction18716.relations reduction18716.input reduction18716.output := by lin_cert using reduction18716.terms
theorem substitutionProof18716 : IsMapEvaluation generatorImages reduction18716.relations [2163] reduction18716.output := by lin_cert using reduction18716.terms
def image18717 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18717 : InImage map_36_245 image18717 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction18717 : Bundle := named_bundle% "RealMapCertificates/relations/basis18717.json"
theorem reductionProof18717 : EqualModuloRelations reduction18717.relations reduction18717.input reduction18717.output := by lin_cert using reduction18717.terms
theorem substitutionProof18717 : IsMapEvaluation generatorImages reduction18717.relations [253,324] reduction18717.output := by lin_cert using reduction18717.terms
def image18718 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18718 : InImage map_36_245 image18718 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction18718 : Bundle := named_bundle% "RealMapCertificates/relations/basis18718.json"
theorem reductionProof18718 : EqualModuloRelations reduction18718.relations reduction18718.input reduction18718.output := by lin_cert using reduction18718.terms
theorem substitutionProof18718 : IsMapEvaluation generatorImages reduction18718.relations [8,8,9,13,690] reduction18718.output := by lin_cert using reduction18718.terms
def image18719 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18719 : InImage map_36_245 image18719 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction18719 : Bundle := named_bundle% "RealMapCertificates/relations/basis18719.json"
theorem reductionProof18719 : EqualModuloRelations reduction18719.relations reduction18719.input reduction18719.output := by lin_cert using reduction18719.terms
theorem substitutionProof18719 : IsMapEvaluation generatorImages reduction18719.relations [8,8,8,13,13,13,261] reduction18719.output := by lin_cert using reduction18719.terms
def image18720 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18720 : InImage map_36_245 image18720 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction18720 : Bundle := named_bundle% "RealMapCertificates/relations/basis18720.json"
theorem reductionProof18720 : EqualModuloRelations reduction18720.relations reduction18720.input reduction18720.output := by lin_cert using reduction18720.terms
theorem substitutionProof18720 : IsMapEvaluation generatorImages reduction18720.relations [8,8,8,8,72,209] reduction18720.output := by lin_cert using reduction18720.terms
def image18721 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18721 : InImage map_36_245 image18721 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction18721 : Bundle := named_bundle% "RealMapCertificates/relations/basis18721.json"
theorem reductionProof18721 : EqualModuloRelations reduction18721.relations reduction18721.input reduction18721.output := by lin_cert using reduction18721.terms
theorem substitutionProof18721 : IsMapEvaluation generatorImages reduction18721.relations [0,17,1441] reduction18721.output := by lin_cert using reduction18721.terms
def image18722 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18722 : InImage map_36_245 image18722 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction18722 : Bundle := named_bundle% "RealMapCertificates/relations/basis18722.json"
theorem reductionProof18722 : EqualModuloRelations reduction18722.relations reduction18722.input reduction18722.output := by lin_cert using reduction18722.terms
theorem substitutionProof18722 : IsMapEvaluation generatorImages reduction18722.relations [0,0,2095] reduction18722.output := by lin_cert using reduction18722.terms
def image18723 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18723 : InImage map_36_245 image18723 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction18723 : Bundle := named_bundle% "RealMapCertificates/relations/basis18723.json"
theorem reductionProof18723 : EqualModuloRelations reduction18723.relations reduction18723.input reduction18723.output := by lin_cert using reduction18723.terms
theorem substitutionProof18723 : IsMapEvaluation generatorImages reduction18723.relations [0,0,2094] reduction18723.output := by lin_cert using reduction18723.terms
def map_36_246 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image19010 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19010 : InImage map_36_246 image19010 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19010 : Bundle := named_bundle% "RealMapCertificates/relations/basis19010.json"
theorem reductionProof19010 : EqualModuloRelations reduction19010.relations reduction19010.input reduction19010.output := by lin_cert using reduction19010.terms
theorem substitutionProof19010 : IsMapEvaluation generatorImages reduction19010.relations [13,1595] reduction19010.output := by lin_cert using reduction19010.terms
def image19011 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19011 : InImage map_36_246 image19011 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19011 : Bundle := named_bundle% "RealMapCertificates/relations/basis19011.json"
theorem reductionProof19011 : EqualModuloRelations reduction19011.relations reduction19011.input reduction19011.output := by lin_cert using reduction19011.terms
theorem substitutionProof19011 : IsMapEvaluation generatorImages reduction19011.relations [13,13,13,13,13,303] reduction19011.output := by lin_cert using reduction19011.terms
def image19012 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19012 : InImage map_36_246 image19012 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19012 : Bundle := named_bundle% "RealMapCertificates/relations/basis19012.json"
theorem reductionProof19012 : EqualModuloRelations reduction19012.relations reduction19012.input reduction19012.output := by lin_cert using reduction19012.terms
theorem substitutionProof19012 : IsMapEvaluation generatorImages reduction19012.relations [8,64,64,187] reduction19012.output := by lin_cert using reduction19012.terms
def image19013 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19013 : InImage map_36_246 image19013 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19013 : Bundle := named_bundle% "RealMapCertificates/relations/basis19013.json"
theorem reductionProof19013 : EqualModuloRelations reduction19013.relations reduction19013.input reduction19013.output := by lin_cert using reduction19013.terms
theorem substitutionProof19013 : IsMapEvaluation generatorImages reduction19013.relations [8,13,13,13,13,13,212] reduction19013.output := by lin_cert using reduction19013.terms
def image19014 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19014 : InImage map_36_246 image19014 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19014 : Bundle := named_bundle% "RealMapCertificates/relations/basis19014.json"
theorem reductionProof19014 : EqualModuloRelations reduction19014.relations reduction19014.input reduction19014.output := by lin_cert using reduction19014.terms
theorem substitutionProof19014 : IsMapEvaluation generatorImages reduction19014.relations [8,8,8,9,80,188] reduction19014.output := by lin_cert using reduction19014.terms
def image19015 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19015 : InImage map_36_246 image19015 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19015 : Bundle := named_bundle% "RealMapCertificates/relations/basis19015.json"
theorem reductionProof19015 : EqualModuloRelations reduction19015.relations reduction19015.input reduction19015.output := by lin_cert using reduction19015.terms
theorem substitutionProof19015 : IsMapEvaluation generatorImages reduction19015.relations [0,64,898] reduction19015.output := by lin_cert using reduction19015.terms
def image19016 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19016 : InImage map_36_246 image19016 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19016 : Bundle := named_bundle% "RealMapCertificates/relations/basis19016.json"
theorem reductionProof19016 : EqualModuloRelations reduction19016.relations reduction19016.input reduction19016.output := by lin_cert using reduction19016.terms
theorem substitutionProof19016 : IsMapEvaluation generatorImages reduction19016.relations [0,0,2123] reduction19016.output := by lin_cert using reduction19016.terms
def image19017 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19017 : InImage map_36_246 image19017 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19017 : Bundle := named_bundle% "RealMapCertificates/relations/basis19017.json"
theorem reductionProof19017 : EqualModuloRelations reduction19017.relations reduction19017.input reduction19017.output := by lin_cert using reduction19017.terms
theorem substitutionProof19017 : IsMapEvaluation generatorImages reduction19017.relations [0,0,2121] reduction19017.output := by lin_cert using reduction19017.terms
def map_36_247 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image19258 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19258 : InImage map_36_247 image19258 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19258 : Bundle := named_bundle% "RealMapCertificates/relations/basis19258.json"
theorem reductionProof19258 : EqualModuloRelations reduction19258.relations reduction19258.input reduction19258.output := by lin_cert using reduction19258.terms
theorem substitutionProof19258 : IsMapEvaluation generatorImages reduction19258.relations [13,23,963] reduction19258.output := by lin_cert using reduction19258.terms
def image19259 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19259 : InImage map_36_247 image19259 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19259 : Bundle := named_bundle% "RealMapCertificates/relations/basis19259.json"
theorem reductionProof19259 : EqualModuloRelations reduction19259.relations reduction19259.input reduction19259.output := by lin_cert using reduction19259.terms
theorem substitutionProof19259 : IsMapEvaluation generatorImages reduction19259.relations [13,13,13,13,13,13,23,75] reduction19259.output := by lin_cert using reduction19259.terms
def image19260 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19260 : InImage map_36_247 image19260 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19260 : Bundle := named_bundle% "RealMapCertificates/relations/basis19260.json"
theorem reductionProof19260 : EqualModuloRelations reduction19260.relations reduction19260.input reduction19260.output := by lin_cert using reduction19260.terms
theorem substitutionProof19260 : IsMapEvaluation generatorImages reduction19260.relations [8,1719] reduction19260.output := by lin_cert using reduction19260.terms
def image19261 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19261 : InImage map_36_247 image19261 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19261 : Bundle := named_bundle% "RealMapCertificates/relations/basis19261.json"
theorem reductionProof19261 : EqualModuloRelations reduction19261.relations reduction19261.input reduction19261.output := by lin_cert using reduction19261.terms
theorem substitutionProof19261 : IsMapEvaluation generatorImages reduction19261.relations [8,8,149,261] reduction19261.output := by lin_cert using reduction19261.terms
def image19262 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19262 : InImage map_36_247 image19262 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19262 : Bundle := named_bundle% "RealMapCertificates/relations/basis19262.json"
theorem reductionProof19262 : EqualModuloRelations reduction19262.relations reduction19262.input reduction19262.output := by lin_cert using reduction19262.terms
theorem substitutionProof19262 : IsMapEvaluation generatorImages reduction19262.relations [1,1,2095] reduction19262.output := by lin_cert using reduction19262.terms
def image19263 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19263 : InImage map_36_247 image19263 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19263 : Bundle := named_bundle% "RealMapCertificates/relations/basis19263.json"
theorem reductionProof19263 : EqualModuloRelations reduction19263.relations reduction19263.input reduction19263.output := by lin_cert using reduction19263.terms
theorem substitutionProof19263 : IsMapEvaluation generatorImages reduction19263.relations [0,0,2164] reduction19263.output := by lin_cert using reduction19263.terms
def image19264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19264 : InImage map_36_247 image19264 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19264 : Bundle := named_bundle% "RealMapCertificates/relations/basis19264.json"
theorem reductionProof19264 : EqualModuloRelations reduction19264.relations reduction19264.input reduction19264.output := by lin_cert using reduction19264.terms
theorem substitutionProof19264 : IsMapEvaluation generatorImages reduction19264.relations [0,0,0,2125] reduction19264.output := by lin_cert using reduction19264.terms
end RealMapCertificates
