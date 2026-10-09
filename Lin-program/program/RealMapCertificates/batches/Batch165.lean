import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 2 => [[2]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 134 => []
  | 187 => []
  | 188 => []
  | 189 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 217 => [[1,4,4,4,4,4,4,4,4,4]]
  | 227 => [[2,4,4,4,4,4,4,4,4,4]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 250 => []
  | 260 => []
  | 261 => []
  | 286 => []
  | 293 => []
  | 318 => []
  | 348 => []
  | 349 => []
  | 380 => []
  | 473 => []
  | 610 => []
  | 690 => []
  | 876 => []
  | 900 => []
  | 963 => []
  | 976 => []
  | 1051 => []
  | 1063 => []
  | 1104 => []
  | 1170 => []
  | 1441 => []
  | 1484 => []
  | 1504 => []
  | 1517 => []
  | 1539 => []
  | 1554 => []
  | 1569 => []
  | 1622 => []
  | 1720 => []
  | 1738 => []
  | 1773 => []
  | 1774 => []
  | 1775 => []
  | 1814 => []
  | 1858 => []
  | 1930 => []
  | 1996 => []
  | 2094 => []
  | 2096 => []
  | 2097 => []
  | 2164 => []
  | 2165 => []
  | 2197 => []
  | 2302 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2334 => []
  | 2337 => []
  | 2338 => []
  | 2340 => []
  | 2342 => []
  | 2379 => []
  | 2381 => []
  | 2405 => []
  | 2489 => []
  | 2490 => []
  | 2543 => []
  | 2544 => []
  | 2546 => []
  | 2582 => []
  | 2629 => []
  | 2795 => []
  | 2865 => []
  | _ => []
def map_36_248 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image19522 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19522 : InImage map_36_248 image19522 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19522 : Bundle := named_bundle% "RealMapCertificates/relations/basis19522.json"
theorem reductionProof19522 : EqualModuloRelations reduction19522.relations reduction19522.input reduction19522.output := by lin_cert using reduction19522.terms
theorem substitutionProof19522 : IsMapEvaluation generatorImages reduction19522.relations [8,1738] reduction19522.output := by lin_cert using reduction19522.terms
def image19523 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19523 : InImage map_36_248 image19523 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19523 : Bundle := named_bundle% "RealMapCertificates/relations/basis19523.json"
theorem reductionProof19523 : EqualModuloRelations reduction19523.relations reduction19523.input reduction19523.output := by lin_cert using reduction19523.terms
theorem substitutionProof19523 : IsMapEvaluation generatorImages reduction19523.relations [8,8,13,13,690] reduction19523.output := by lin_cert using reduction19523.terms
def image19524 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19524 : InImage map_36_248 image19524 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19524 : Bundle := named_bundle% "RealMapCertificates/relations/basis19524.json"
theorem reductionProof19524 : EqualModuloRelations reduction19524.relations reduction19524.input reduction19524.output := by lin_cert using reduction19524.terms
theorem substitutionProof19524 : IsMapEvaluation generatorImages reduction19524.relations [8,8,9,13,13,13,261] reduction19524.output := by lin_cert using reduction19524.terms
def image19525 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19525 : InImage map_36_248 image19525 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19525 : Bundle := named_bundle% "RealMapCertificates/relations/basis19525.json"
theorem reductionProof19525 : EqualModuloRelations reduction19525.relations reduction19525.input reduction19525.output := by lin_cert using reduction19525.terms
theorem substitutionProof19525 : IsMapEvaluation generatorImages reduction19525.relations [8,8,8,8,79,209] reduction19525.output := by lin_cert using reduction19525.terms
def image19526 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19526 : InImage map_36_248 image19526 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19526 : Bundle := named_bundle% "RealMapCertificates/relations/basis19526.json"
theorem reductionProof19526 : EqualModuloRelations reduction19526.relations reduction19526.input reduction19526.output := by lin_cert using reduction19526.terms
theorem substitutionProof19526 : IsMapEvaluation generatorImages reduction19526.relations [0,8,1720] reduction19526.output := by lin_cert using reduction19526.terms
def image19527 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19527 : InImage map_36_248 image19527 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19527 : Bundle := named_bundle% "RealMapCertificates/relations/basis19527.json"
theorem reductionProof19527 : EqualModuloRelations reduction19527.relations reduction19527.input reduction19527.output := by lin_cert using reduction19527.terms
theorem substitutionProof19527 : IsMapEvaluation generatorImages reduction19527.relations [0,2,2094] reduction19527.output := by lin_cert using reduction19527.terms
def image19528 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19528 : InImage map_36_248 image19528 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19528 : Bundle := named_bundle% "RealMapCertificates/relations/basis19528.json"
theorem reductionProof19528 : EqualModuloRelations reduction19528.relations reduction19528.input reduction19528.output := by lin_cert using reduction19528.terms
theorem substitutionProof19528 : IsMapEvaluation generatorImages reduction19528.relations [0,0,0,2165] reduction19528.output := by lin_cert using reduction19528.terms
def image19529 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19529 : InImage map_36_248 image19529 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19529 : Bundle := named_bundle% "RealMapCertificates/relations/basis19529.json"
theorem reductionProof19529 : EqualModuloRelations reduction19529.relations reduction19529.input reduction19529.output := by lin_cert using reduction19529.terms
theorem substitutionProof19529 : IsMapEvaluation generatorImages reduction19529.relations [0,0,0,0,0,2097] reduction19529.output := by lin_cert using reduction19529.terms
def map_36_249 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image19827 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19827 : InImage map_36_249 image19827 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19827 : Bundle := named_bundle% "RealMapCertificates/relations/basis19827.json"
theorem reductionProof19827 : EqualModuloRelations reduction19827.relations reduction19827.input reduction19827.output := by lin_cert using reduction19827.terms
theorem substitutionProof19827 : IsMapEvaluation generatorImages reduction19827.relations [9,13,13,13,13,13,212] reduction19827.output := by lin_cert using reduction19827.terms
def image19828 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19828 : InImage map_36_249 image19828 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19828 : Bundle := named_bundle% "RealMapCertificates/relations/basis19828.json"
theorem reductionProof19828 : EqualModuloRelations reduction19828.relations reduction19828.input reduction19828.output := by lin_cert using reduction19828.terms
theorem substitutionProof19828 : IsMapEvaluation generatorImages reduction19828.relations [8,64,64,201] reduction19828.output := by lin_cert using reduction19828.terms
def image19829 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19829 : InImage map_36_249 image19829 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19829 : Bundle := named_bundle% "RealMapCertificates/relations/basis19829.json"
theorem reductionProof19829 : EqualModuloRelations reduction19829.relations reduction19829.input reduction19829.output := by lin_cert using reduction19829.terms
theorem substitutionProof19829 : IsMapEvaluation generatorImages reduction19829.relations [8,8,8,13,80,188] reduction19829.output := by lin_cert using reduction19829.terms
def image19830 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19830 : InImage map_36_249 image19830 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19830 : Bundle := named_bundle% "RealMapCertificates/relations/basis19830.json"
theorem reductionProof19830 : EqualModuloRelations reduction19830.relations reduction19830.input reduction19830.output := by lin_cert using reduction19830.terms
theorem substitutionProof19830 : IsMapEvaluation generatorImages reduction19830.relations [1,1,2164] reduction19830.output := by lin_cert using reduction19830.terms
def map_36_250 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image20041 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20041 : InImage map_36_250 image20041 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20041 : Bundle := named_bundle% "RealMapCertificates/relations/basis20041.json"
theorem reductionProof20041 : EqualModuloRelations reduction20041.relations reduction20041.input reduction20041.output := by lin_cert using reduction20041.terms
theorem substitutionProof20041 : IsMapEvaluation generatorImages reduction20041.relations [64,963] reduction20041.output := by lin_cert using reduction20041.terms
def image20042 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20042 : InImage map_36_250 image20042 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20042 : Bundle := named_bundle% "RealMapCertificates/relations/basis20042.json"
theorem reductionProof20042 : EqualModuloRelations reduction20042.relations reduction20042.input reduction20042.output := by lin_cert using reduction20042.terms
theorem substitutionProof20042 : IsMapEvaluation generatorImages reduction20042.relations [8,8,1441] reduction20042.output := by lin_cert using reduction20042.terms
def image20043 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20043 : InImage map_36_250 image20043 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20043 : Bundle := named_bundle% "RealMapCertificates/relations/basis20043.json"
theorem reductionProof20043 : EqualModuloRelations reduction20043.relations reduction20043.input reduction20043.output := by lin_cert using reduction20043.terms
theorem substitutionProof20043 : IsMapEvaluation generatorImages reduction20043.relations [8,8,8,1104] reduction20043.output := by lin_cert using reduction20043.terms
def image20044 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20044 : InImage map_36_250 image20044 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20044 : Bundle := named_bundle% "RealMapCertificates/relations/basis20044.json"
theorem reductionProof20044 : EqualModuloRelations reduction20044.relations reduction20044.input reduction20044.output := by lin_cert using reduction20044.terms
theorem substitutionProof20044 : IsMapEvaluation generatorImages reduction20044.relations [2,2197] reduction20044.output := by lin_cert using reduction20044.terms
def map_36_251 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image20329 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20329 : InImage map_36_251 image20329 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction20329 : Bundle := named_bundle% "RealMapCertificates/relations/basis20329.json"
theorem reductionProof20329 : EqualModuloRelations reduction20329.relations reduction20329.input reduction20329.output := by lin_cert using reduction20329.terms
theorem substitutionProof20329 : IsMapEvaluation generatorImages reduction20329.relations [2379] reduction20329.output := by lin_cert using reduction20329.terms
def image20330 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20330 : InImage map_36_251 image20330 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction20330 : Bundle := named_bundle% "RealMapCertificates/relations/basis20330.json"
theorem reductionProof20330 : EqualModuloRelations reduction20330.relations reduction20330.input reduction20330.output := by lin_cert using reduction20330.terms
theorem substitutionProof20330 : IsMapEvaluation generatorImages reduction20330.relations [8,1814] reduction20330.output := by lin_cert using reduction20330.terms
def image20331 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20331 : InImage map_36_251 image20331 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction20331 : Bundle := named_bundle% "RealMapCertificates/relations/basis20331.json"
theorem reductionProof20331 : EqualModuloRelations reduction20331.relations reduction20331.input reduction20331.output := by lin_cert using reduction20331.terms
theorem substitutionProof20331 : IsMapEvaluation generatorImages reduction20331.relations [8,9,13,13,690] reduction20331.output := by lin_cert using reduction20331.terms
def image20332 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20332 : InImage map_36_251 image20332 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction20332 : Bundle := named_bundle% "RealMapCertificates/relations/basis20332.json"
theorem reductionProof20332 : EqualModuloRelations reduction20332.relations reduction20332.input reduction20332.output := by lin_cert using reduction20332.terms
theorem substitutionProof20332 : IsMapEvaluation generatorImages reduction20332.relations [8,8,13,13,13,13,261] reduction20332.output := by lin_cert using reduction20332.terms
def image20333 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20333 : InImage map_36_251 image20333 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction20333 : Bundle := named_bundle% "RealMapCertificates/relations/basis20333.json"
theorem reductionProof20333 : EqualModuloRelations reduction20333.relations reduction20333.input reduction20333.output := by lin_cert using reduction20333.terms
theorem substitutionProof20333 : IsMapEvaluation generatorImages reduction20333.relations [8,8,8,8,89,209] reduction20333.output := by lin_cert using reduction20333.terms
def image20334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20334 : InImage map_36_251 image20334 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction20334 : Bundle := named_bundle% "RealMapCertificates/relations/basis20334.json"
theorem reductionProof20334 : EqualModuloRelations reduction20334.relations reduction20334.input reduction20334.output := by lin_cert using reduction20334.terms
theorem substitutionProof20334 : IsMapEvaluation generatorImages reduction20334.relations [1,2302] reduction20334.output := by lin_cert using reduction20334.terms
def image20335 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20335 : InImage map_36_251 image20335 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction20335 : Bundle := named_bundle% "RealMapCertificates/relations/basis20335.json"
theorem reductionProof20335 : EqualModuloRelations reduction20335.relations reduction20335.input reduction20335.output := by lin_cert using reduction20335.terms
theorem substitutionProof20335 : IsMapEvaluation generatorImages reduction20335.relations [0,2334] reduction20335.output := by lin_cert using reduction20335.terms
def image20336 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20336 : InImage map_36_251 image20336 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction20336 : Bundle := named_bundle% "RealMapCertificates/relations/basis20336.json"
theorem reductionProof20336 : EqualModuloRelations reduction20336.relations reduction20336.input reduction20336.output := by lin_cert using reduction20336.terms
theorem substitutionProof20336 : IsMapEvaluation generatorImages reduction20336.relations [0,8,1774] reduction20336.output := by lin_cert using reduction20336.terms
def image20337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20337 : InImage map_36_251 image20337 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction20337 : Bundle := named_bundle% "RealMapCertificates/relations/basis20337.json"
theorem reductionProof20337 : EqualModuloRelations reduction20337.relations reduction20337.input reduction20337.output := by lin_cert using reduction20337.terms
theorem substitutionProof20337 : IsMapEvaluation generatorImages reduction20337.relations [0,8,1773] reduction20337.output := by lin_cert using reduction20337.terms
def map_36_252 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image20632 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20632 : InImage map_36_252 image20632 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction20632 : Bundle := named_bundle% "RealMapCertificates/relations/basis20632.json"
theorem reductionProof20632 : EqualModuloRelations reduction20632.relations reduction20632.input reduction20632.output := by lin_cert using reduction20632.terms
theorem substitutionProof20632 : IsMapEvaluation generatorImages reduction20632.relations [2405] reduction20632.output := by lin_cert using reduction20632.terms
def image20633 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20633 : InImage map_36_252 image20633 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction20633 : Bundle := named_bundle% "RealMapCertificates/relations/basis20633.json"
theorem reductionProof20633 : EqualModuloRelations reduction20633.relations reduction20633.input reduction20633.output := by lin_cert using reduction20633.terms
theorem substitutionProof20633 : IsMapEvaluation generatorImages reduction20633.relations [13,13,13,13,13,13,212] reduction20633.output := by lin_cert using reduction20633.terms
def image20634 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20634 : InImage map_36_252 image20634 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction20634 : Bundle := named_bundle% "RealMapCertificates/relations/basis20634.json"
theorem reductionProof20634 : EqualModuloRelations reduction20634.relations reduction20634.input reduction20634.output := by lin_cert using reduction20634.terms
theorem substitutionProof20634 : IsMapEvaluation generatorImages reduction20634.relations [9,13,13,13,23,286] reduction20634.output := by lin_cert using reduction20634.terms
def image20635 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20635 : InImage map_36_252 image20635 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction20635 : Bundle := named_bundle% "RealMapCertificates/relations/basis20635.json"
theorem reductionProof20635 : EqualModuloRelations reduction20635.relations reduction20635.input reduction20635.output := by lin_cert using reduction20635.terms
theorem substitutionProof20635 : IsMapEvaluation generatorImages reduction20635.relations [8,8,1484] reduction20635.output := by lin_cert using reduction20635.terms
def image20636 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20636 : InImage map_36_252 image20636 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction20636 : Bundle := named_bundle% "RealMapCertificates/relations/basis20636.json"
theorem reductionProof20636 : EqualModuloRelations reduction20636.relations reduction20636.input reduction20636.output := by lin_cert using reduction20636.terms
theorem substitutionProof20636 : IsMapEvaluation generatorImages reduction20636.relations [8,8,9,13,80,188] reduction20636.output := by lin_cert using reduction20636.terms
def image20637 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20637 : InImage map_36_252 image20637 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction20637 : Bundle := named_bundle% "RealMapCertificates/relations/basis20637.json"
theorem reductionProof20637 : EqualModuloRelations reduction20637.relations reduction20637.input reduction20637.output := by lin_cert using reduction20637.terms
theorem substitutionProof20637 : IsMapEvaluation generatorImages reduction20637.relations [0,64,976] reduction20637.output := by lin_cert using reduction20637.terms
def image20638 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20638 : InImage map_36_252 image20638 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction20638 : Bundle := named_bundle% "RealMapCertificates/relations/basis20638.json"
theorem reductionProof20638 : EqualModuloRelations reduction20638.relations reduction20638.input reduction20638.output := by lin_cert using reduction20638.terms
theorem substitutionProof20638 : IsMapEvaluation generatorImages reduction20638.relations [0,0,8,1775] reduction20638.output := by lin_cert using reduction20638.terms
def image20639 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20639 : InImage map_36_252 image20639 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction20639 : Bundle := named_bundle% "RealMapCertificates/relations/basis20639.json"
theorem reductionProof20639 : EqualModuloRelations reduction20639.relations reduction20639.input reduction20639.output := by lin_cert using reduction20639.terms
theorem substitutionProof20639 : IsMapEvaluation generatorImages reduction20639.relations [0,0,0,17,1539] reduction20639.output := by lin_cert using reduction20639.terms
def map_36_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20870 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20870 : InImage map_36_253 image20870 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20870 : Bundle := named_bundle% "RealMapCertificates/relations/basis20870.json"
theorem reductionProof20870 : EqualModuloRelations reduction20870.relations reduction20870.input reduction20870.output := by lin_cert using reduction20870.terms
theorem substitutionProof20870 : IsMapEvaluation generatorImages reduction20870.relations [72,963] reduction20870.output := by lin_cert using reduction20870.terms
def image20871 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20871 : InImage map_36_253 image20871 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20871 : Bundle := named_bundle% "RealMapCertificates/relations/basis20871.json"
theorem reductionProof20871 : EqualModuloRelations reduction20871.relations reduction20871.input reduction20871.output := by lin_cert using reduction20871.terms
theorem substitutionProof20871 : IsMapEvaluation generatorImages reduction20871.relations [13,13,13,13,13,13,13,134] reduction20871.output := by lin_cert using reduction20871.terms
def image20872 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20872 : InImage map_36_253 image20872 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20872 : Bundle := named_bundle% "RealMapCertificates/relations/basis20872.json"
theorem reductionProof20872 : EqualModuloRelations reduction20872.relations reduction20872.input reduction20872.output := by lin_cert using reduction20872.terms
theorem substitutionProof20872 : IsMapEvaluation generatorImages reduction20872.relations [8,8,1504] reduction20872.output := by lin_cert using reduction20872.terms
def image20873 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20873 : InImage map_36_253 image20873 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20873 : Bundle := named_bundle% "RealMapCertificates/relations/basis20873.json"
theorem reductionProof20873 : EqualModuloRelations reduction20873.relations reduction20873.input reduction20873.output := by lin_cert using reduction20873.terms
theorem substitutionProof20873 : IsMapEvaluation generatorImages reduction20873.relations [8,8,8,1170] reduction20873.output := by lin_cert using reduction20873.terms
def image20874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20874 : InImage map_36_253 image20874 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20874 : Bundle := named_bundle% "RealMapCertificates/relations/basis20874.json"
theorem reductionProof20874 : EqualModuloRelations reduction20874.relations reduction20874.input reduction20874.output := by lin_cert using reduction20874.terms
theorem substitutionProof20874 : IsMapEvaluation generatorImages reduction20874.relations [1,64,64,293] reduction20874.output := by lin_cert using reduction20874.terms
def image20875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20875 : InImage map_36_253 image20875 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20875 : Bundle := named_bundle% "RealMapCertificates/relations/basis20875.json"
theorem reductionProof20875 : EqualModuloRelations reduction20875.relations reduction20875.input reduction20875.output := by lin_cert using reduction20875.terms
theorem substitutionProof20875 : IsMapEvaluation generatorImages reduction20875.relations [0,0,0,260,349] reduction20875.output := by lin_cert using reduction20875.terms
def image20876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20876 : InImage map_36_253 image20876 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20876 : Bundle := named_bundle% "RealMapCertificates/relations/basis20876.json"
theorem reductionProof20876 : EqualModuloRelations reduction20876.relations reduction20876.input reduction20876.output := by lin_cert using reduction20876.terms
theorem substitutionProof20876 : IsMapEvaluation generatorImages reduction20876.relations [0,0,0,0,2304] reduction20876.output := by lin_cert using reduction20876.terms
def map_36_254 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image21161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21161 : InImage map_36_254 image21161 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction21161 : Bundle := named_bundle% "RealMapCertificates/relations/basis21161.json"
theorem reductionProof21161 : EqualModuloRelations reduction21161.relations reduction21161.input reduction21161.output := by lin_cert using reduction21161.terms
theorem substitutionProof21161 : IsMapEvaluation generatorImages reduction21161.relations [64,64,318] reduction21161.output := by lin_cert using reduction21161.terms
def image21162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21162 : InImage map_36_254 image21162 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction21162 : Bundle := named_bundle% "RealMapCertificates/relations/basis21162.json"
theorem reductionProof21162 : EqualModuloRelations reduction21162.relations reduction21162.input reduction21162.output := by lin_cert using reduction21162.terms
theorem substitutionProof21162 : IsMapEvaluation generatorImages reduction21162.relations [13,13,13,900] reduction21162.output := by lin_cert using reduction21162.terms
def image21163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21163 : InImage map_36_254 image21163 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction21163 : Bundle := named_bundle% "RealMapCertificates/relations/basis21163.json"
theorem reductionProof21163 : EqualModuloRelations reduction21163.relations reduction21163.input reduction21163.output := by lin_cert using reduction21163.terms
theorem substitutionProof21163 : IsMapEvaluation generatorImages reduction21163.relations [8,13,13,13,690] reduction21163.output := by lin_cert using reduction21163.terms
def image21164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21164 : InImage map_36_254 image21164 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction21164 : Bundle := named_bundle% "RealMapCertificates/relations/basis21164.json"
theorem reductionProof21164 : EqualModuloRelations reduction21164.relations reduction21164.input reduction21164.output := by lin_cert using reduction21164.terms
theorem substitutionProof21164 : IsMapEvaluation generatorImages reduction21164.relations [8,9,13,13,13,13,261] reduction21164.output := by lin_cert using reduction21164.terms
def image21165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21165 : InImage map_36_254 image21165 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction21165 : Bundle := named_bundle% "RealMapCertificates/relations/basis21165.json"
theorem reductionProof21165 : EqualModuloRelations reduction21165.relations reduction21165.input reduction21165.output := by lin_cert using reduction21165.terms
theorem substitutionProof21165 : IsMapEvaluation generatorImages reduction21165.relations [8,8,1517] reduction21165.output := by lin_cert using reduction21165.terms
def image21166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21166 : InImage map_36_254 image21166 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction21166 : Bundle := named_bundle% "RealMapCertificates/relations/basis21166.json"
theorem reductionProof21166 : EqualModuloRelations reduction21166.relations reduction21166.input reduction21166.output := by lin_cert using reduction21166.terms
theorem substitutionProof21166 : IsMapEvaluation generatorImages reduction21166.relations [8,8,8,8,101,209] reduction21166.output := by lin_cert using reduction21166.terms
def image21167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21167 : InImage map_36_254 image21167 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction21167 : Bundle := named_bundle% "RealMapCertificates/relations/basis21167.json"
theorem reductionProof21167 : EqualModuloRelations reduction21167.relations reduction21167.input reduction21167.output := by lin_cert using reduction21167.terms
theorem substitutionProof21167 : IsMapEvaluation generatorImages reduction21167.relations [0,8,1858] reduction21167.output := by lin_cert using reduction21167.terms
def image21168 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21168 : InImage map_36_254 image21168 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction21168 : Bundle := named_bundle% "RealMapCertificates/relations/basis21168.json"
theorem reductionProof21168 : EqualModuloRelations reduction21168.relations reduction21168.input reduction21168.output := by lin_cert using reduction21168.terms
theorem substitutionProof21168 : IsMapEvaluation generatorImages reduction21168.relations [0,0,0,0,2338] reduction21168.output := by lin_cert using reduction21168.terms
def image21169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21169 : InImage map_36_254 image21169 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction21169 : Bundle := named_bundle% "RealMapCertificates/relations/basis21169.json"
theorem reductionProof21169 : EqualModuloRelations reduction21169.relations reduction21169.input reduction21169.output := by lin_cert using reduction21169.terms
theorem substitutionProof21169 : IsMapEvaluation generatorImages reduction21169.relations [0,0,0,0,2337] reduction21169.output := by lin_cert using reduction21169.terms
def image21170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21170 : InImage map_36_254 image21170 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction21170 : Bundle := named_bundle% "RealMapCertificates/relations/basis21170.json"
theorem reductionProof21170 : EqualModuloRelations reduction21170.relations reduction21170.input reduction21170.output := by lin_cert using reduction21170.terms
theorem substitutionProof21170 : IsMapEvaluation generatorImages reduction21170.relations [0,0,0,0,0,2307] reduction21170.output := by lin_cert using reduction21170.terms
def map_36_255 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image21506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21506 : InImage map_36_255 image21506 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21506 : Bundle := named_bundle% "RealMapCertificates/relations/basis21506.json"
theorem reductionProof21506 : EqualModuloRelations reduction21506.relations reduction21506.input reduction21506.output := by lin_cert using reduction21506.terms
theorem substitutionProof21506 : IsMapEvaluation generatorImages reduction21506.relations [2543] reduction21506.output := by lin_cert using reduction21506.terms
def image21507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21507 : InImage map_36_255 image21507 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21507 : Bundle := named_bundle% "RealMapCertificates/relations/basis21507.json"
theorem reductionProof21507 : EqualModuloRelations reduction21507.relations reduction21507.input reduction21507.output := by lin_cert using reduction21507.terms
theorem substitutionProof21507 : IsMapEvaluation generatorImages reduction21507.relations [13,13,13,13,23,286] reduction21507.output := by lin_cert using reduction21507.terms
def image21508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21508 : InImage map_36_255 image21508 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21508 : Bundle := named_bundle% "RealMapCertificates/relations/basis21508.json"
theorem reductionProof21508 : EqualModuloRelations reduction21508.relations reduction21508.input reduction21508.output := by lin_cert using reduction21508.terms
theorem substitutionProof21508 : IsMapEvaluation generatorImages reduction21508.relations [8,8,64,610] reduction21508.output := by lin_cert using reduction21508.terms
def image21509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21509 : InImage map_36_255 image21509 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21509 : Bundle := named_bundle% "RealMapCertificates/relations/basis21509.json"
theorem reductionProof21509 : EqualModuloRelations reduction21509.relations reduction21509.input reduction21509.output := by lin_cert using reduction21509.terms
theorem substitutionProof21509 : IsMapEvaluation generatorImages reduction21509.relations [8,8,13,13,80,188] reduction21509.output := by lin_cert using reduction21509.terms
def image21510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21510 : InImage map_36_255 image21510 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21510 : Bundle := named_bundle% "RealMapCertificates/relations/basis21510.json"
theorem reductionProof21510 : EqualModuloRelations reduction21510.relations reduction21510.input reduction21510.output := by lin_cert using reduction21510.terms
theorem substitutionProof21510 : IsMapEvaluation generatorImages reduction21510.relations [0,0,0,0,0,2340] reduction21510.output := by lin_cert using reduction21510.terms
def map_36_256 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image21764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21764 : InImage map_36_256 image21764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21764 : Bundle := named_bundle% "RealMapCertificates/relations/basis21764.json"
theorem reductionProof21764 : EqualModuloRelations reduction21764.relations reduction21764.input reduction21764.output := by lin_cert using reduction21764.terms
theorem substitutionProof21764 : IsMapEvaluation generatorImages reduction21764.relations [16,209,260] reduction21764.output := by lin_cert using reduction21764.terms
def image21765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21765 : InImage map_36_256 image21765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21765 : Bundle := named_bundle% "RealMapCertificates/relations/basis21765.json"
theorem reductionProof21765 : EqualModuloRelations reduction21765.relations reduction21765.input reduction21765.output := by lin_cert using reduction21765.terms
theorem substitutionProof21765 : IsMapEvaluation generatorImages reduction21765.relations [8,8,1554] reduction21765.output := by lin_cert using reduction21765.terms
def image21766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21766 : InImage map_36_256 image21766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21766 : Bundle := named_bundle% "RealMapCertificates/relations/basis21766.json"
theorem reductionProof21766 : EqualModuloRelations reduction21766.relations reduction21766.input reduction21766.output := by lin_cert using reduction21766.terms
theorem substitutionProof21766 : IsMapEvaluation generatorImages reduction21766.relations [8,8,9,1170] reduction21766.output := by lin_cert using reduction21766.terms
def image21767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21767 : InImage map_36_256 image21767 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21767 : Bundle := named_bundle% "RealMapCertificates/relations/basis21767.json"
theorem reductionProof21767 : EqualModuloRelations reduction21767.relations reduction21767.input reduction21767.output := by lin_cert using reduction21767.terms
theorem substitutionProof21767 : IsMapEvaluation generatorImages reduction21767.relations [0,0,0,0,0,0,2342] reduction21767.output := by lin_cert using reduction21767.terms
def map_36_257 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22108 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22108 : InImage map_36_257 image22108 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22108 : Bundle := named_bundle% "RealMapCertificates/relations/basis22108.json"
theorem reductionProof22108 : EqualModuloRelations reduction22108.relations reduction22108.input reduction22108.output := by lin_cert using reduction22108.terms
theorem substitutionProof22108 : IsMapEvaluation generatorImages reduction22108.relations [2629] reduction22108.output := by lin_cert using reduction22108.terms
def image22109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22109 : InImage map_36_257 image22109 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22109 : Bundle := named_bundle% "RealMapCertificates/relations/basis22109.json"
theorem reductionProof22109 : EqualModuloRelations reduction22109.relations reduction22109.input reduction22109.output := by lin_cert using reduction22109.terms
theorem substitutionProof22109 : IsMapEvaluation generatorImages reduction22109.relations [64,64,348] reduction22109.output := by lin_cert using reduction22109.terms
def image22110 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22110 : InImage map_36_257 image22110 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22110 : Bundle := named_bundle% "RealMapCertificates/relations/basis22110.json"
theorem reductionProof22110 : EqualModuloRelations reduction22110.relations reduction22110.input reduction22110.output := by lin_cert using reduction22110.terms
theorem substitutionProof22110 : IsMapEvaluation generatorImages reduction22110.relations [9,13,13,13,690] reduction22110.output := by lin_cert using reduction22110.terms
def image22111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22111 : InImage map_36_257 image22111 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22111 : Bundle := named_bundle% "RealMapCertificates/relations/basis22111.json"
theorem reductionProof22111 : EqualModuloRelations reduction22111.relations reduction22111.input reduction22111.output := by lin_cert using reduction22111.terms
theorem substitutionProof22111 : IsMapEvaluation generatorImages reduction22111.relations [8,13,13,13,13,13,261] reduction22111.output := by lin_cert using reduction22111.terms
def image22112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22112 : InImage map_36_257 image22112 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22112 : Bundle := named_bundle% "RealMapCertificates/relations/basis22112.json"
theorem reductionProof22112 : EqualModuloRelations reduction22112.relations reduction22112.input reduction22112.output := by lin_cert using reduction22112.terms
theorem substitutionProof22112 : IsMapEvaluation generatorImages reduction22112.relations [8,8,1569] reduction22112.output := by lin_cert using reduction22112.terms
def image22113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22113 : InImage map_36_257 image22113 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22113 : Bundle := named_bundle% "RealMapCertificates/relations/basis22113.json"
theorem reductionProof22113 : EqualModuloRelations reduction22113.relations reduction22113.input reduction22113.output := by lin_cert using reduction22113.terms
theorem substitutionProof22113 : IsMapEvaluation generatorImages reduction22113.relations [8,8,8,9,101,209] reduction22113.output := by lin_cert using reduction22113.terms
def image22114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22114 : InImage map_36_257 image22114 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22114 : Bundle := named_bundle% "RealMapCertificates/relations/basis22114.json"
theorem reductionProof22114 : EqualModuloRelations reduction22114.relations reduction22114.input reduction22114.output := by lin_cert using reduction22114.terms
theorem substitutionProof22114 : IsMapEvaluation generatorImages reduction22114.relations [0,8,1930] reduction22114.output := by lin_cert using reduction22114.terms
def image22115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22115 : InImage map_36_257 image22115 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22115 : Bundle := named_bundle% "RealMapCertificates/relations/basis22115.json"
theorem reductionProof22115 : EqualModuloRelations reduction22115.relations reduction22115.input reduction22115.output := by lin_cert using reduction22115.terms
theorem substitutionProof22115 : IsMapEvaluation generatorImages reduction22115.relations [0,0,2544] reduction22115.output := by lin_cert using reduction22115.terms
def image22116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22116 : InImage map_36_257 image22116 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22116 : Bundle := named_bundle% "RealMapCertificates/relations/basis22116.json"
theorem reductionProof22116 : EqualModuloRelations reduction22116.relations reduction22116.input reduction22116.output := by lin_cert using reduction22116.terms
theorem substitutionProof22116 : IsMapEvaluation generatorImages reduction22116.relations [0,0,0,0,0,0,2381] reduction22116.output := by lin_cert using reduction22116.terms
def image22117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22117 : InImage map_36_257 image22117 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22117 : Bundle := named_bundle% "RealMapCertificates/relations/basis22117.json"
theorem reductionProof22117 : EqualModuloRelations reduction22117.relations reduction22117.input reduction22117.output := by lin_cert using reduction22117.terms
theorem substitutionProof22117 : IsMapEvaluation generatorImages reduction22117.relations [0,0,0,0,0,0,0,0,2309] reduction22117.output := by lin_cert using reduction22117.terms
def map_36_258 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22469 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22469 : InImage map_36_258 image22469 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22469 : Bundle := named_bundle% "RealMapCertificates/relations/basis22469.json"
theorem reductionProof22469 : EqualModuloRelations reduction22469.relations reduction22469.input reduction22469.output := by lin_cert using reduction22469.terms
theorem substitutionProof22469 : IsMapEvaluation generatorImages reduction22469.relations [13,13,13,13,13,23,189] reduction22469.output := by lin_cert using reduction22469.terms
def image22470 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22470 : InImage map_36_258 image22470 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22470 : Bundle := named_bundle% "RealMapCertificates/relations/basis22470.json"
theorem reductionProof22470 : EqualModuloRelations reduction22470.relations reduction22470.input reduction22470.output := by lin_cert using reduction22470.terms
theorem substitutionProof22470 : IsMapEvaluation generatorImages reduction22470.relations [8,1996] reduction22470.output := by lin_cert using reduction22470.terms
def image22471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22471 : InImage map_36_258 image22471 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22471 : Bundle := named_bundle% "RealMapCertificates/relations/basis22471.json"
theorem reductionProof22471 : EqualModuloRelations reduction22471.relations reduction22471.input reduction22471.output := by lin_cert using reduction22471.terms
theorem substitutionProof22471 : IsMapEvaluation generatorImages reduction22471.relations [8,9,13,13,80,188] reduction22471.output := by lin_cert using reduction22471.terms
def image22472 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22472 : InImage map_36_258 image22472 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22472 : Bundle := named_bundle% "RealMapCertificates/relations/basis22472.json"
theorem reductionProof22472 : EqualModuloRelations reduction22472.relations reduction22472.input reduction22472.output := by lin_cert using reduction22472.terms
theorem substitutionProof22472 : IsMapEvaluation generatorImages reduction22472.relations [8,8,8,187,187] reduction22472.output := by lin_cert using reduction22472.terms
def image22473 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22473 : InImage map_36_258 image22473 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22473 : Bundle := named_bundle% "RealMapCertificates/relations/basis22473.json"
theorem reductionProof22473 : EqualModuloRelations reduction22473.relations reduction22473.input reduction22473.output := by lin_cert using reduction22473.terms
theorem substitutionProof22473 : IsMapEvaluation generatorImages reduction22473.relations [0,64,64,349] reduction22473.output := by lin_cert using reduction22473.terms
def image22474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22474 : InImage map_36_258 image22474 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22474 : Bundle := named_bundle% "RealMapCertificates/relations/basis22474.json"
theorem reductionProof22474 : EqualModuloRelations reduction22474.relations reduction22474.input reduction22474.output := by lin_cert using reduction22474.terms
theorem substitutionProof22474 : IsMapEvaluation generatorImages reduction22474.relations [0,0,2582] reduction22474.output := by lin_cert using reduction22474.terms
def image22475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22475 : InImage map_36_258 image22475 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22475 : Bundle := named_bundle% "RealMapCertificates/relations/basis22475.json"
theorem reductionProof22475 : EqualModuloRelations reduction22475.relations reduction22475.input reduction22475.output := by lin_cert using reduction22475.terms
theorem substitutionProof22475 : IsMapEvaluation generatorImages reduction22475.relations [0,0,0,2546] reduction22475.output := by lin_cert using reduction22475.terms
def map_36_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22778 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22778 : InImage map_36_259 image22778 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22778 : Bundle := named_bundle% "RealMapCertificates/relations/basis22778.json"
theorem reductionProof22778 : EqualModuloRelations reduction22778.relations reduction22778.input reduction22778.output := by lin_cert using reduction22778.terms
theorem substitutionProof22778 : IsMapEvaluation generatorImages reduction22778.relations [8,209,380] reduction22778.output := by lin_cert using reduction22778.terms
def image22779 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22779 : InImage map_36_259 image22779 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22779 : Bundle := named_bundle% "RealMapCertificates/relations/basis22779.json"
theorem reductionProof22779 : EqualModuloRelations reduction22779.relations reduction22779.input reduction22779.output := by lin_cert using reduction22779.terms
theorem substitutionProof22779 : IsMapEvaluation generatorImages reduction22779.relations [8,9,1554] reduction22779.output := by lin_cert using reduction22779.terms
def image22780 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22780 : InImage map_36_259 image22780 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22780 : Bundle := named_bundle% "RealMapCertificates/relations/basis22780.json"
theorem reductionProof22780 : EqualModuloRelations reduction22780.relations reduction22780.input reduction22780.output := by lin_cert using reduction22780.terms
theorem substitutionProof22780 : IsMapEvaluation generatorImages reduction22780.relations [8,8,13,1170] reduction22780.output := by lin_cert using reduction22780.terms
def image22781 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22781 : InImage map_36_259 image22781 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22781 : Bundle := named_bundle% "RealMapCertificates/relations/basis22781.json"
theorem reductionProof22781 : EqualModuloRelations reduction22781.relations reduction22781.input reduction22781.output := by lin_cert using reduction22781.terms
theorem substitutionProof22781 : IsMapEvaluation generatorImages reduction22781.relations [1,1,2544] reduction22781.output := by lin_cert using reduction22781.terms
def image22782 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22782 : InImage map_36_259 image22782 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22782 : Bundle := named_bundle% "RealMapCertificates/relations/basis22782.json"
theorem reductionProof22782 : EqualModuloRelations reduction22782.relations reduction22782.input reduction22782.output := by lin_cert using reduction22782.terms
theorem substitutionProof22782 : IsMapEvaluation generatorImages reduction22782.relations [0,0,0,64,1063] reduction22782.output := by lin_cert using reduction22782.terms
def image22783 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22783 : InImage map_36_259 image22783 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22783 : Bundle := named_bundle% "RealMapCertificates/relations/basis22783.json"
theorem reductionProof22783 : EqualModuloRelations reduction22783.relations reduction22783.input reduction22783.output := by lin_cert using reduction22783.terms
theorem substitutionProof22783 : IsMapEvaluation generatorImages reduction22783.relations [0,0,0,0,0,2489] reduction22783.output := by lin_cert using reduction22783.terms
def map_36_260 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23154 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23154 : InImage map_36_260 image23154 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23154 : Bundle := named_bundle% "RealMapCertificates/relations/basis23154.json"
theorem reductionProof23154 : EqualModuloRelations reduction23154.relations reduction23154.input reduction23154.output := by lin_cert using reduction23154.terms
theorem substitutionProof23154 : IsMapEvaluation generatorImages reduction23154.relations [2795] reduction23154.output := by lin_cert using reduction23154.terms
def image23155 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23155 : InImage map_36_260 image23155 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23155 : Bundle := named_bundle% "RealMapCertificates/relations/basis23155.json"
theorem reductionProof23155 : EqualModuloRelations reduction23155.relations reduction23155.input reduction23155.output := by lin_cert using reduction23155.terms
theorem substitutionProof23155 : IsMapEvaluation generatorImages reduction23155.relations [13,13,13,13,690] reduction23155.output := by lin_cert using reduction23155.terms
def image23156 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23156 : InImage map_36_260 image23156 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23156 : Bundle := named_bundle% "RealMapCertificates/relations/basis23156.json"
theorem reductionProof23156 : EqualModuloRelations reduction23156.relations reduction23156.input reduction23156.output := by lin_cert using reduction23156.terms
theorem substitutionProof23156 : IsMapEvaluation generatorImages reduction23156.relations [9,13,23,876] reduction23156.output := by lin_cert using reduction23156.terms
def image23157 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23157 : InImage map_36_260 image23157 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23157 : Bundle := named_bundle% "RealMapCertificates/relations/basis23157.json"
theorem reductionProof23157 : EqualModuloRelations reduction23157.relations reduction23157.input reduction23157.output := by lin_cert using reduction23157.terms
theorem substitutionProof23157 : IsMapEvaluation generatorImages reduction23157.relations [9,13,13,13,13,13,261] reduction23157.output := by lin_cert using reduction23157.terms
def image23158 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23158 : InImage map_36_260 image23158 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23158 : Bundle := named_bundle% "RealMapCertificates/relations/basis23158.json"
theorem reductionProof23158 : EqualModuloRelations reduction23158.relations reduction23158.input reduction23158.output := by lin_cert using reduction23158.terms
theorem substitutionProof23158 : IsMapEvaluation generatorImages reduction23158.relations [8,64,64,250] reduction23158.output := by lin_cert using reduction23158.terms
def image23159 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23159 : InImage map_36_260 image23159 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23159 : Bundle := named_bundle% "RealMapCertificates/relations/basis23159.json"
theorem reductionProof23159 : EqualModuloRelations reduction23159.relations reduction23159.input reduction23159.output := by lin_cert using reduction23159.terms
theorem substitutionProof23159 : IsMapEvaluation generatorImages reduction23159.relations [8,8,1622] reduction23159.output := by lin_cert using reduction23159.terms
def image23160 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23160 : InImage map_36_260 image23160 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23160 : Bundle := named_bundle% "RealMapCertificates/relations/basis23160.json"
theorem reductionProof23160 : EqualModuloRelations reduction23160.relations reduction23160.input reduction23160.output := by lin_cert using reduction23160.terms
theorem substitutionProof23160 : IsMapEvaluation generatorImages reduction23160.relations [8,8,8,13,101,209] reduction23160.output := by lin_cert using reduction23160.terms
def image23161 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23161 : InImage map_36_260 image23161 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23161 : Bundle := named_bundle% "RealMapCertificates/relations/basis23161.json"
theorem reductionProof23161 : EqualModuloRelations reduction23161.relations reduction23161.input reduction23161.output := by lin_cert using reduction23161.terms
theorem substitutionProof23161 : IsMapEvaluation generatorImages reduction23161.relations [0,0,0,0,0,64,1051] reduction23161.output := by lin_cert using reduction23161.terms
def image23162 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23162 : InImage map_36_260 image23162 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23162 : Bundle := named_bundle% "RealMapCertificates/relations/basis23162.json"
theorem reductionProof23162 : EqualModuloRelations reduction23162.relations reduction23162.input reduction23162.output := by lin_cert using reduction23162.terms
theorem substitutionProof23162 : IsMapEvaluation generatorImages reduction23162.relations [0,0,0,0,0,0,2490] reduction23162.output := by lin_cert using reduction23162.terms
def map_36_261 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image23591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23591 : InImage map_36_261 image23591 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23591 : Bundle := named_bundle% "RealMapCertificates/relations/basis23591.json"
theorem reductionProof23591 : EqualModuloRelations reduction23591.relations reduction23591.input reduction23591.output := by lin_cert using reduction23591.terms
theorem substitutionProof23591 : IsMapEvaluation generatorImages reduction23591.relations [2865] reduction23591.output := by lin_cert using reduction23591.terms
def image23592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23592 : InImage map_36_261 image23592 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23592 : Bundle := named_bundle% "RealMapCertificates/relations/basis23592.json"
theorem reductionProof23592 : EqualModuloRelations reduction23592.relations reduction23592.input reduction23592.output := by lin_cert using reduction23592.terms
theorem substitutionProof23592 : IsMapEvaluation generatorImages reduction23592.relations [13,13,13,13,13,473] reduction23592.output := by lin_cert using reduction23592.terms
def image23593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23593 : InImage map_36_261 image23593 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23593 : Bundle := named_bundle% "RealMapCertificates/relations/basis23593.json"
theorem reductionProof23593 : EqualModuloRelations reduction23593.relations reduction23593.input reduction23593.output := by lin_cert using reduction23593.terms
theorem substitutionProof23593 : IsMapEvaluation generatorImages reduction23593.relations [8,2096] reduction23593.output := by lin_cert using reduction23593.terms
def image23594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23594 : InImage map_36_261 image23594 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23594 : Bundle := named_bundle% "RealMapCertificates/relations/basis23594.json"
theorem reductionProof23594 : EqualModuloRelations reduction23594.relations reduction23594.input reduction23594.output := by lin_cert using reduction23594.terms
theorem substitutionProof23594 : IsMapEvaluation generatorImages reduction23594.relations [8,13,13,13,80,188] reduction23594.output := by lin_cert using reduction23594.terms
def image23595 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23595 : InImage map_36_261 image23595 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23595 : Bundle := named_bundle% "RealMapCertificates/relations/basis23595.json"
theorem reductionProof23595 : EqualModuloRelations reduction23595.relations reduction23595.input reduction23595.output := by lin_cert using reduction23595.terms
theorem substitutionProof23595 : IsMapEvaluation generatorImages reduction23595.relations [8,8,8,187,201] reduction23595.output := by lin_cert using reduction23595.terms
def map_37_37 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image138 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation138 : InImage map_37_37 image138 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction138 : Bundle := named_bundle% "RealMapCertificates/relations/basis138.json"
theorem reductionProof138 : EqualModuloRelations reduction138.relations reduction138.input reduction138.output := by lin_cert using reduction138.terms
theorem substitutionProof138 : IsMapEvaluation generatorImages reduction138.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction138.output := by lin_cert using reduction138.terms
def map_37_110 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1552 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1552 : InImage map_37_110 image1552 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1552 : Bundle := named_bundle% "RealMapCertificates/relations/basis1552.json"
theorem reductionProof1552 : EqualModuloRelations reduction1552.relations reduction1552.input reduction1552.output := by lin_cert using reduction1552.terms
theorem substitutionProof1552 : IsMapEvaluation generatorImages reduction1552.relations [217] reduction1552.output := by lin_cert using reduction1552.terms
def map_37_112 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1632 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1632 : InImage map_37_112 image1632 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1632 : Bundle := named_bundle% "RealMapCertificates/relations/basis1632.json"
theorem reductionProof1632 : EqualModuloRelations reduction1632.relations reduction1632.input reduction1632.output := by lin_cert using reduction1632.terms
theorem substitutionProof1632 : IsMapEvaluation generatorImages reduction1632.relations [227] reduction1632.output := by lin_cert using reduction1632.terms
def map_37_115 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1741 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1741 : InImage map_37_115 image1741 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1741 : Bundle := named_bundle% "RealMapCertificates/relations/basis1741.json"
theorem reductionProof1741 : EqualModuloRelations reduction1741.relations reduction1741.input reduction1741.output := by lin_cert using reduction1741.terms
theorem substitutionProof1741 : IsMapEvaluation generatorImages reduction1741.relations [0,236] reduction1741.output := by lin_cert using reduction1741.terms
end RealMapCertificates
