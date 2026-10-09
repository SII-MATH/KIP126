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
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 127 => []
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 185 => [[0,4,4,8,12]]
  | 193 => [[5,5,7,12]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 210 => []
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 315 => [[4,4,5,5,7,12]]
  | 324 => []
  | 345 => [[4,4,5,7,7,12]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 500 => []
  | 516 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 795 => []
  | 807 => []
  | 808 => [[0,0,4,4,5,8,12,12]]
  | 809 => []
  | 898 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 971 => []
  | _ => []
def map_37_116 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image1770 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1770 : InImage map_37_116 image1770 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction1770 : Bundle := named_bundle% "RealMapCertificates/relations/basis1770.json"
theorem reductionProof1770 : EqualModuloRelations reduction1770.relations reduction1770.input reduction1770.output := by lin_cert using reduction1770.terms
theorem substitutionProof1770 : IsMapEvaluation generatorImages reduction1770.relations [1,236] reduction1770.output := by lin_cert using reduction1770.terms
def image1771 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation1771 : InImage map_37_116 image1771 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction1771 : Bundle := named_bundle% "RealMapCertificates/relations/basis1771.json"
theorem reductionProof1771 : EqualModuloRelations reduction1771.relations reduction1771.input reduction1771.output := by lin_cert using reduction1771.terms
theorem substitutionProof1771 : IsMapEvaluation generatorImages reduction1771.relations [0,0,0,0,0,0,0,0,210] reduction1771.output := by lin_cert using reduction1771.terms
def map_37_118 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1847 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1847 : InImage map_37_118 image1847 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1847 : Bundle := named_bundle% "RealMapCertificates/relations/basis1847.json"
theorem reductionProof1847 : EqualModuloRelations reduction1847.relations reduction1847.input reduction1847.output := by lin_cert using reduction1847.terms
theorem substitutionProof1847 : IsMapEvaluation generatorImages reduction1847.relations [0,252] reduction1847.output := by lin_cert using reduction1847.terms
def map_37_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1886 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1886 : InImage map_37_119 image1886 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1886 : Bundle := named_bundle% "RealMapCertificates/relations/basis1886.json"
theorem reductionProof1886 : EqualModuloRelations reduction1886.relations reduction1886.input reduction1886.output := by lin_cert using reduction1886.terms
theorem substitutionProof1886 : IsMapEvaluation generatorImages reduction1886.relations [0,0,253] reduction1886.output := by lin_cert using reduction1886.terms
def map_37_121 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image1972 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation1972 : InImage map_37_121 image1972 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1972 : Bundle := named_bundle% "RealMapCertificates/relations/basis1972.json"
theorem reductionProof1972 : EqualModuloRelations reduction1972.relations reduction1972.input reduction1972.output := by lin_cert using reduction1972.terms
theorem substitutionProof1972 : IsMapEvaluation generatorImages reduction1972.relations [0,8,182] reduction1972.output := by lin_cert using reduction1972.terms
def map_37_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2005 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2005 : InImage map_37_122 image2005 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2005 : Bundle := named_bundle% "RealMapCertificates/relations/basis2005.json"
theorem reductionProof2005 : EqualModuloRelations reduction2005.relations reduction2005.input reduction2005.output := by lin_cert using reduction2005.terms
theorem substitutionProof2005 : IsMapEvaluation generatorImages reduction2005.relations [0,0,8,183] reduction2005.output := by lin_cert using reduction2005.terms
def map_37_124 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2091 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2091 : InImage map_37_124 image2091 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2091 : Bundle := named_bundle% "RealMapCertificates/relations/basis2091.json"
theorem reductionProof2091 : EqualModuloRelations reduction2091.relations reduction2091.input reduction2091.output := by lin_cert using reduction2091.terms
theorem substitutionProof2091 : IsMapEvaluation generatorImages reduction2091.relations [0,8,199] reduction2091.output := by lin_cert using reduction2091.terms
def map_37_125 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2129 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2129 : InImage map_37_125 image2129 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2129 : Bundle := named_bundle% "RealMapCertificates/relations/basis2129.json"
theorem reductionProof2129 : EqualModuloRelations reduction2129.relations reduction2129.input reduction2129.output := by lin_cert using reduction2129.terms
theorem substitutionProof2129 : IsMapEvaluation generatorImages reduction2129.relations [0,0,8,200] reduction2129.output := by lin_cert using reduction2129.terms
def map_37_127 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2221 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2221 : InImage map_37_127 image2221 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2221 : Bundle := named_bundle% "RealMapCertificates/relations/basis2221.json"
theorem reductionProof2221 : EqualModuloRelations reduction2221.relations reduction2221.input reduction2221.output := by lin_cert using reduction2221.terms
theorem substitutionProof2221 : IsMapEvaluation generatorImages reduction2221.relations [0,8,8,145] reduction2221.output := by lin_cert using reduction2221.terms
def map_37_128 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2264 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2264 : InImage map_37_128 image2264 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2264 : Bundle := named_bundle% "RealMapCertificates/relations/basis2264.json"
theorem reductionProof2264 : EqualModuloRelations reduction2264.relations reduction2264.input reduction2264.output := by lin_cert using reduction2264.terms
theorem substitutionProof2264 : IsMapEvaluation generatorImages reduction2264.relations [0,0,8,16,111] reduction2264.output := by lin_cert using reduction2264.terms
def map_37_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2446 : InImage map_37_131 image2446 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2446 : Bundle := named_bundle% "RealMapCertificates/relations/basis2446.json"
theorem reductionProof2446 : EqualModuloRelations reduction2446.relations reduction2446.input reduction2446.output := by lin_cert using reduction2446.terms
theorem substitutionProof2446 : IsMapEvaluation generatorImages reduction2446.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,245] reduction2446.output := by lin_cert using reduction2446.terms
def map_37_132 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2501 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2501 : InImage map_37_132 image2501 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2501 : Bundle := named_bundle% "RealMapCertificates/relations/basis2501.json"
theorem reductionProof2501 : EqualModuloRelations reduction2501.relations reduction2501.input reduction2501.output := by lin_cert using reduction2501.terms
theorem substitutionProof2501 : IsMapEvaluation generatorImages reduction2501.relations [354] reduction2501.output := by lin_cert using reduction2501.terms
def image2502 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2502 : InImage map_37_132 image2502 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2502 : Bundle := named_bundle% "RealMapCertificates/relations/basis2502.json"
theorem reductionProof2502 : EqualModuloRelations reduction2502.relations reduction2502.input reduction2502.output := by lin_cert using reduction2502.terms
theorem substitutionProof2502 : IsMapEvaluation generatorImages reduction2502.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2502.output := by lin_cert using reduction2502.terms
def map_37_135 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2725 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2725 : InImage map_37_135 image2725 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2725 : Bundle := named_bundle% "RealMapCertificates/relations/basis2725.json"
theorem reductionProof2725 : EqualModuloRelations reduction2725.relations reduction2725.input reduction2725.output := by lin_cert using reduction2725.terms
theorem substitutionProof2725 : IsMapEvaluation generatorImages reduction2725.relations [401] reduction2725.output := by lin_cert using reduction2725.terms
def map_37_138 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2950 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2950 : InImage map_37_138 image2950 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2950 : Bundle := named_bundle% "RealMapCertificates/relations/basis2950.json"
theorem reductionProof2950 : EqualModuloRelations reduction2950.relations reduction2950.input reduction2950.output := by lin_cert using reduction2950.terms
theorem substitutionProof2950 : IsMapEvaluation generatorImages reduction2950.relations [8,265] reduction2950.output := by lin_cert using reduction2950.terms
def image2951 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2951 : InImage map_37_138 image2951 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2951 : Bundle := named_bundle% "RealMapCertificates/relations/basis2951.json"
theorem reductionProof2951 : EqualModuloRelations reduction2951.relations reduction2951.input reduction2951.output := by lin_cert using reduction2951.terms
theorem substitutionProof2951 : IsMapEvaluation generatorImages reduction2951.relations [0,0,0,402] reduction2951.output := by lin_cert using reduction2951.terms
def map_37_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3048 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3048 : InImage map_37_139 image3048 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3048 : Bundle := named_bundle% "RealMapCertificates/relations/basis3048.json"
theorem reductionProof3048 : EqualModuloRelations reduction3048.relations reduction3048.input reduction3048.output := by lin_cert using reduction3048.terms
theorem substitutionProof3048 : IsMapEvaluation generatorImages reduction3048.relations [0,0,0,0,403] reduction3048.output := by lin_cert using reduction3048.terms
def map_37_141 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3205 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3205 : InImage map_37_141 image3205 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3205 : Bundle := named_bundle% "RealMapCertificates/relations/basis3205.json"
theorem reductionProof3205 : EqualModuloRelations reduction3205.relations reduction3205.input reduction3205.output := by lin_cert using reduction3205.terms
theorem substitutionProof3205 : IsMapEvaluation generatorImages reduction3205.relations [8,283] reduction3205.output := by lin_cert using reduction3205.terms
def image3206 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation3206 : InImage map_37_141 image3206 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3206 : Bundle := named_bundle% "RealMapCertificates/relations/basis3206.json"
theorem reductionProof3206 : EqualModuloRelations reduction3206.relations reduction3206.input reduction3206.output := by lin_cert using reduction3206.terms
theorem substitutionProof3206 : IsMapEvaluation generatorImages reduction3206.relations [0,0,0,432] reduction3206.output := by lin_cert using reduction3206.terms
def map_37_144 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3446 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3446 : InImage map_37_144 image3446 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3446 : Bundle := named_bundle% "RealMapCertificates/relations/basis3446.json"
theorem reductionProof3446 : EqualModuloRelations reduction3446.relations reduction3446.input reduction3446.output := by lin_cert using reduction3446.terms
theorem substitutionProof3446 : IsMapEvaluation generatorImages reduction3446.relations [8,8,211] reduction3446.output := by lin_cert using reduction3446.terms
def map_37_145 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3540 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3540 : InImage map_37_145 image3540 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3540 : Bundle := named_bundle% "RealMapCertificates/relations/basis3540.json"
theorem reductionProof3540 : EqualModuloRelations reduction3540.relations reduction3540.input reduction3540.output := by lin_cert using reduction3540.terms
theorem substitutionProof3540 : IsMapEvaluation generatorImages reduction3540.relations [0,0,0,0,0,452] reduction3540.output := by lin_cert using reduction3540.terms
def map_37_146 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3607 : InImage map_37_146 image3607 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3607 : Bundle := named_bundle% "RealMapCertificates/relations/basis3607.json"
theorem reductionProof3607 : EqualModuloRelations reduction3607.relations reduction3607.input reduction3607.output := by lin_cert using reduction3607.terms
theorem substitutionProof3607 : IsMapEvaluation generatorImages reduction3607.relations [0,0,0,0,0,17,225] reduction3607.output := by lin_cert using reduction3607.terms
def map_37_147 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3706 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3706 : InImage map_37_147 image3706 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3706 : Bundle := named_bundle% "RealMapCertificates/relations/basis3706.json"
theorem reductionProof3706 : EqualModuloRelations reduction3706.relations reduction3706.input reduction3706.output := by lin_cert using reduction3706.terms
theorem substitutionProof3706 : IsMapEvaluation generatorImages reduction3706.relations [8,8,223] reduction3706.output := by lin_cert using reduction3706.terms
def map_37_150 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image3961 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation3961 : InImage map_37_150 image3961 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3961 : Bundle := named_bundle% "RealMapCertificates/relations/basis3961.json"
theorem reductionProof3961 : EqualModuloRelations reduction3961.relations reduction3961.input reduction3961.output := by lin_cert using reduction3961.terms
theorem substitutionProof3961 : IsMapEvaluation generatorImages reduction3961.relations [556] reduction3961.output := by lin_cert using reduction3961.terms
def image3962 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3962 : InImage map_37_150 image3962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3962 : Bundle := named_bundle% "RealMapCertificates/relations/basis3962.json"
theorem reductionProof3962 : EqualModuloRelations reduction3962.relations reduction3962.input reduction3962.output := by lin_cert using reduction3962.terms
theorem substitutionProof3962 : IsMapEvaluation generatorImages reduction3962.relations [8,8,8,161] reduction3962.output := by lin_cert using reduction3962.terms
def map_37_153 : Matrix 4 2 := fun i j => ([false,true,true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4244 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation4244 : InImage map_37_153 image4244 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4244 : Bundle := named_bundle% "RealMapCertificates/relations/basis4244.json"
theorem reductionProof4244 : EqualModuloRelations reduction4244.relations reduction4244.input reduction4244.output := by lin_cert using reduction4244.terms
theorem substitutionProof4244 : IsMapEvaluation generatorImages reduction4244.relations [8,403] reduction4244.output := by lin_cert using reduction4244.terms
def image4245 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4245 : InImage map_37_153 image4245 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4245 : Bundle := named_bundle% "RealMapCertificates/relations/basis4245.json"
theorem reductionProof4245 : EqualModuloRelations reduction4245.relations reduction4245.input reduction4245.output := by lin_cert using reduction4245.terms
theorem substitutionProof4245 : IsMapEvaluation generatorImages reduction4245.relations [8,8,8,171] reduction4245.output := by lin_cert using reduction4245.terms
def map_37_154 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4329 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4329 : InImage map_37_154 image4329 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4329 : Bundle := named_bundle% "RealMapCertificates/relations/basis4329.json"
theorem reductionProof4329 : EqualModuloRelations reduction4329.relations reduction4329.input reduction4329.output := by lin_cert using reduction4329.terms
theorem substitutionProof4329 : IsMapEvaluation generatorImages reduction4329.relations [5,452] reduction4329.output := by lin_cert using reduction4329.terms
def map_37_156 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4486 : InImage map_37_156 image4486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4486 : Bundle := named_bundle% "RealMapCertificates/relations/basis4486.json"
theorem reductionProof4486 : EqualModuloRelations reduction4486.relations reduction4486.input reduction4486.output := by lin_cert using reduction4486.terms
theorem substitutionProof4486 : IsMapEvaluation generatorImages reduction4486.relations [8,433] reduction4486.output := by lin_cert using reduction4486.terms
def image4487 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4487 : InImage map_37_156 image4487 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4487 : Bundle := named_bundle% "RealMapCertificates/relations/basis4487.json"
theorem reductionProof4487 : EqualModuloRelations reduction4487.relations reduction4487.input reduction4487.output := by lin_cert using reduction4487.terms
theorem substitutionProof4487 : IsMapEvaluation generatorImages reduction4487.relations [8,8,8,8,125] reduction4487.output := by lin_cert using reduction4487.terms
def image4488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4488 : InImage map_37_156 image4488 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4488 : Bundle := named_bundle% "RealMapCertificates/relations/basis4488.json"
theorem reductionProof4488 : EqualModuloRelations reduction4488.relations reduction4488.input reduction4488.output := by lin_cert using reduction4488.terms
theorem substitutionProof4488 : IsMapEvaluation generatorImages reduction4488.relations [0,595] reduction4488.output := by lin_cert using reduction4488.terms
def map_37_157 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image4595 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4595 : InImage map_37_157 image4595 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4595 : Bundle := named_bundle% "RealMapCertificates/relations/basis4595.json"
theorem reductionProof4595 : EqualModuloRelations reduction4595.relations reduction4595.input reduction4595.output := by lin_cert using reduction4595.terms
theorem substitutionProof4595 : IsMapEvaluation generatorImages reduction4595.relations [0,17,298] reduction4595.output := by lin_cert using reduction4595.terms
def map_37_159 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image4756 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation4756 : InImage map_37_159 image4756 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4756 : Bundle := named_bundle% "RealMapCertificates/relations/basis4756.json"
theorem reductionProof4756 : EqualModuloRelations reduction4756.relations reduction4756.input reduction4756.output := by lin_cert using reduction4756.terms
theorem substitutionProof4756 : IsMapEvaluation generatorImages reduction4756.relations [8,16,225] reduction4756.output := by lin_cert using reduction4756.terms
def image4757 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4757 : InImage map_37_159 image4757 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4757 : Bundle := named_bundle% "RealMapCertificates/relations/basis4757.json"
theorem reductionProof4757 : EqualModuloRelations reduction4757.relations reduction4757.input reduction4757.output := by lin_cert using reduction4757.terms
theorem substitutionProof4757 : IsMapEvaluation generatorImages reduction4757.relations [8,8,8,8,136] reduction4757.output := by lin_cert using reduction4757.terms
def image4758 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation4758 : InImage map_37_159 image4758 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4758 : Bundle := named_bundle% "RealMapCertificates/relations/basis4758.json"
theorem reductionProof4758 : EqualModuloRelations reduction4758.relations reduction4758.input reduction4758.output := by lin_cert using reduction4758.terms
theorem substitutionProof4758 : IsMapEvaluation generatorImages reduction4758.relations [0,8,452] reduction4758.output := by lin_cert using reduction4758.terms
def map_37_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4851 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4851 : InImage map_37_160 image4851 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4851 : Bundle := named_bundle% "RealMapCertificates/relations/basis4851.json"
theorem reductionProof4851 : EqualModuloRelations reduction4851.relations reduction4851.input reduction4851.output := by lin_cert using reduction4851.terms
theorem substitutionProof4851 : IsMapEvaluation generatorImages reduction4851.relations [0,8,17,225] reduction4851.output := by lin_cert using reduction4851.terms
def map_37_162 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5027 : InImage map_37_162 image5027 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5027 : Bundle := named_bundle% "RealMapCertificates/relations/basis5027.json"
theorem reductionProof5027 : EqualModuloRelations reduction5027.relations reduction5027.input reduction5027.output := by lin_cert using reduction5027.terms
theorem substitutionProof5027 : IsMapEvaluation generatorImages reduction5027.relations [8,8,298] reduction5027.output := by lin_cert using reduction5027.terms
def image5028 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5028 : InImage map_37_162 image5028 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5028 : Bundle := named_bundle% "RealMapCertificates/relations/basis5028.json"
theorem reductionProof5028 : EqualModuloRelations reduction5028.relations reduction5028.input reduction5028.output := by lin_cert using reduction5028.terms
theorem substitutionProof5028 : IsMapEvaluation generatorImages reduction5028.relations [8,8,8,8,8,88] reduction5028.output := by lin_cert using reduction5028.terms
def map_37_163 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5144 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5144 : InImage map_37_163 image5144 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5144 : Bundle := named_bundle% "RealMapCertificates/relations/basis5144.json"
theorem reductionProof5144 : EqualModuloRelations reduction5144.relations reduction5144.input reduction5144.output := by lin_cert using reduction5144.terms
theorem substitutionProof5144 : IsMapEvaluation generatorImages reduction5144.relations [0,8,17,238] reduction5144.output := by lin_cert using reduction5144.terms
def image5145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5145 : InImage map_37_163 image5145 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5145 : Bundle := named_bundle% "RealMapCertificates/relations/basis5145.json"
theorem reductionProof5145 : EqualModuloRelations reduction5145.relations reduction5145.input reduction5145.output := by lin_cert using reduction5145.terms
theorem substitutionProof5145 : IsMapEvaluation generatorImages reduction5145.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,500] reduction5145.output := by lin_cert using reduction5145.terms
def map_37_164 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5219 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5219 : InImage map_37_164 image5219 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5219 : Bundle := named_bundle% "RealMapCertificates/relations/basis5219.json"
theorem reductionProof5219 : EqualModuloRelations reduction5219.relations reduction5219.input reduction5219.output := by lin_cert using reduction5219.terms
theorem substitutionProof5219 : IsMapEvaluation generatorImages reduction5219.relations [687] reduction5219.output := by lin_cert using reduction5219.terms
def image5220 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5220 : InImage map_37_164 image5220 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5220 : Bundle := named_bundle% "RealMapCertificates/relations/basis5220.json"
theorem reductionProof5220 : EqualModuloRelations reduction5220.relations reduction5220.input reduction5220.output := by lin_cert using reduction5220.terms
theorem substitutionProof5220 : IsMapEvaluation generatorImages reduction5220.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5220.output := by lin_cert using reduction5220.terms
def map_37_165 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5333 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5333 : InImage map_37_165 image5333 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5333 : Bundle := named_bundle% "RealMapCertificates/relations/basis5333.json"
theorem reductionProof5333 : EqualModuloRelations reduction5333.relations reduction5333.input reduction5333.output := by lin_cert using reduction5333.terms
theorem substitutionProof5333 : IsMapEvaluation generatorImages reduction5333.relations [8,8,8,225] reduction5333.output := by lin_cert using reduction5333.terms
def image5334 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5334 : InImage map_37_165 image5334 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5334 : Bundle := named_bundle% "RealMapCertificates/relations/basis5334.json"
theorem reductionProof5334 : EqualModuloRelations reduction5334.relations reduction5334.input reduction5334.output := by lin_cert using reduction5334.terms
theorem substitutionProof5334 : IsMapEvaluation generatorImages reduction5334.relations [8,8,8,8,8,100] reduction5334.output := by lin_cert using reduction5334.terms
def map_37_167 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5546 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5546 : InImage map_37_167 image5546 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5546 : Bundle := named_bundle% "RealMapCertificates/relations/basis5546.json"
theorem reductionProof5546 : EqualModuloRelations reduction5546.relations reduction5546.input reduction5546.output := by lin_cert using reduction5546.terms
theorem substitutionProof5546 : IsMapEvaluation generatorImages reduction5546.relations [724] reduction5546.output := by lin_cert using reduction5546.terms
def map_37_168 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5651 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5651 : InImage map_37_168 image5651 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5651 : Bundle := named_bundle% "RealMapCertificates/relations/basis5651.json"
theorem reductionProof5651 : EqualModuloRelations reduction5651.relations reduction5651.input reduction5651.output := by lin_cert using reduction5651.terms
theorem substitutionProof5651 : IsMapEvaluation generatorImages reduction5651.relations [8,8,8,238] reduction5651.output := by lin_cert using reduction5651.terms
def image5652 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5652 : InImage map_37_168 image5652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5652 : Bundle := named_bundle% "RealMapCertificates/relations/basis5652.json"
theorem reductionProof5652 : EqualModuloRelations reduction5652.relations reduction5652.input reduction5652.output := by lin_cert using reduction5652.terms
theorem substitutionProof5652 : IsMapEvaluation generatorImages reduction5652.relations [8,8,8,8,8,8,60] reduction5652.output := by lin_cert using reduction5652.terms
def map_37_170 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5871 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5871 : InImage map_37_170 image5871 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5871 : Bundle := named_bundle% "RealMapCertificates/relations/basis5871.json"
theorem reductionProof5871 : EqualModuloRelations reduction5871.relations reduction5871.input reduction5871.output := by lin_cert using reduction5871.terms
theorem substitutionProof5871 : IsMapEvaluation generatorImages reduction5871.relations [8,572] reduction5871.output := by lin_cert using reduction5871.terms
def image5872 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5872 : InImage map_37_170 image5872 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5872 : Bundle := named_bundle% "RealMapCertificates/relations/basis5872.json"
theorem reductionProof5872 : EqualModuloRelations reduction5872.relations reduction5872.input reduction5872.output := by lin_cert using reduction5872.terms
theorem substitutionProof5872 : IsMapEvaluation generatorImages reduction5872.relations [0,0,0,725] reduction5872.output := by lin_cert using reduction5872.terms
def map_37_171 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5997 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5997 : InImage map_37_171 image5997 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5997 : Bundle := named_bundle% "RealMapCertificates/relations/basis5997.json"
theorem reductionProof5997 : EqualModuloRelations reduction5997.relations reduction5997.input reduction5997.output := by lin_cert using reduction5997.terms
theorem substitutionProof5997 : IsMapEvaluation generatorImages reduction5997.relations [8,8,8,16,138] reduction5997.output := by lin_cert using reduction5997.terms
def image5998 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5998 : InImage map_37_171 image5998 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5998 : Bundle := named_bundle% "RealMapCertificates/relations/basis5998.json"
theorem reductionProof5998 : EqualModuloRelations reduction5998.relations reduction5998.input reduction5998.output := by lin_cert using reduction5998.terms
theorem substitutionProof5998 : IsMapEvaluation generatorImages reduction5998.relations [8,8,8,8,8,8,63] reduction5998.output := by lin_cert using reduction5998.terms
def image5999 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5999 : InImage map_37_171 image5999 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5999 : Bundle := named_bundle% "RealMapCertificates/relations/basis5999.json"
theorem reductionProof5999 : EqualModuloRelations reduction5999.relations reduction5999.input reduction5999.output := by lin_cert using reduction5999.terms
theorem substitutionProof5999 : IsMapEvaluation generatorImages reduction5999.relations [0,0,752] reduction5999.output := by lin_cert using reduction5999.terms
def map_37_173 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6211 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6211 : InImage map_37_173 image6211 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6211 : Bundle := named_bundle% "RealMapCertificates/relations/basis6211.json"
theorem reductionProof6211 : EqualModuloRelations reduction6211.relations reduction6211.input reduction6211.output := by lin_cert using reduction6211.terms
theorem substitutionProof6211 : IsMapEvaluation generatorImages reduction6211.relations [8,597] reduction6211.output := by lin_cert using reduction6211.terms
def image6212 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6212 : InImage map_37_173 image6212 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6212 : Bundle := named_bundle% "RealMapCertificates/relations/basis6212.json"
theorem reductionProof6212 : EqualModuloRelations reduction6212.relations reduction6212.input reduction6212.output := by lin_cert using reduction6212.terms
theorem substitutionProof6212 : IsMapEvaluation generatorImages reduction6212.relations [0,0,0,759] reduction6212.output := by lin_cert using reduction6212.terms
def map_37_174 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image6321 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6321 : InImage map_37_174 image6321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6321 : Bundle := named_bundle% "RealMapCertificates/relations/basis6321.json"
theorem reductionProof6321 : EqualModuloRelations reduction6321.relations reduction6321.input reduction6321.output := by lin_cert using reduction6321.terms
theorem substitutionProof6321 : IsMapEvaluation generatorImages reduction6321.relations [8,8,8,8,185] reduction6321.output := by lin_cert using reduction6321.terms
def image6322 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6322 : InImage map_37_174 image6322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6322 : Bundle := named_bundle% "RealMapCertificates/relations/basis6322.json"
theorem reductionProof6322 : EqualModuloRelations reduction6322.relations reduction6322.input reduction6322.output := by lin_cert using reduction6322.terms
theorem substitutionProof6322 : IsMapEvaluation generatorImages reduction6322.relations [8,8,8,8,8,8,8,42] reduction6322.output := by lin_cert using reduction6322.terms
def map_37_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6457 : InImage map_37_175 image6457 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6457 : Bundle := named_bundle% "RealMapCertificates/relations/basis6457.json"
theorem reductionProof6457 : EqualModuloRelations reduction6457.relations reduction6457.input reduction6457.output := by lin_cert using reduction6457.terms
theorem substitutionProof6457 : IsMapEvaluation generatorImages reduction6457.relations [0,64,224] reduction6457.output := by lin_cert using reduction6457.terms
def map_37_176 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6545 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6545 : InImage map_37_176 image6545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6545 : Bundle := named_bundle% "RealMapCertificates/relations/basis6545.json"
theorem reductionProof6545 : EqualModuloRelations reduction6545.relations reduction6545.input reduction6545.output := by lin_cert using reduction6545.terms
theorem substitutionProof6545 : IsMapEvaluation generatorImages reduction6545.relations [8,8,453] reduction6545.output := by lin_cert using reduction6545.terms
def image6546 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6546 : InImage map_37_176 image6546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6546 : Bundle := named_bundle% "RealMapCertificates/relations/basis6546.json"
theorem reductionProof6546 : EqualModuloRelations reduction6546.relations reduction6546.input reduction6546.output := by lin_cert using reduction6546.terms
theorem substitutionProof6546 : IsMapEvaluation generatorImages reduction6546.relations [1,64,224] reduction6546.output := by lin_cert using reduction6546.terms
def image6547 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6547 : InImage map_37_176 image6547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6547 : Bundle := named_bundle% "RealMapCertificates/relations/basis6547.json"
theorem reductionProof6547 : EqualModuloRelations reduction6547.relations reduction6547.input reduction6547.output := by lin_cert using reduction6547.terms
theorem substitutionProof6547 : IsMapEvaluation generatorImages reduction6547.relations [0,0,64,225] reduction6547.output := by lin_cert using reduction6547.terms
def map_37_177 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6678 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6678 : InImage map_37_177 image6678 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6678 : Bundle := named_bundle% "RealMapCertificates/relations/basis6678.json"
theorem reductionProof6678 : EqualModuloRelations reduction6678.relations reduction6678.input reduction6678.output := by lin_cert using reduction6678.terms
theorem substitutionProof6678 : IsMapEvaluation generatorImages reduction6678.relations [8,8,8,8,8,138] reduction6678.output := by lin_cert using reduction6678.terms
def image6679 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6679 : InImage map_37_177 image6679 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6679 : Bundle := named_bundle% "RealMapCertificates/relations/basis6679.json"
theorem reductionProof6679 : EqualModuloRelations reduction6679.relations reduction6679.input reduction6679.output := by lin_cert using reduction6679.terms
theorem substitutionProof6679 : IsMapEvaluation generatorImages reduction6679.relations [8,8,8,8,8,8,8,46] reduction6679.output := by lin_cert using reduction6679.terms
def image6680 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6680 : InImage map_37_177 image6680 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6680 : Bundle := named_bundle% "RealMapCertificates/relations/basis6680.json"
theorem reductionProof6680 : EqualModuloRelations reduction6680.relations reduction6680.input reduction6680.output := by lin_cert using reduction6680.terms
theorem substitutionProof6680 : IsMapEvaluation generatorImages reduction6680.relations [0,0,0,0,17,491] reduction6680.output := by lin_cert using reduction6680.terms
def map_37_178 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image6799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6799 : InImage map_37_178 image6799 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6799 : Bundle := named_bundle% "RealMapCertificates/relations/basis6799.json"
theorem reductionProof6799 : EqualModuloRelations reduction6799.relations reduction6799.input reduction6799.output := by lin_cert using reduction6799.terms
theorem substitutionProof6799 : IsMapEvaluation generatorImages reduction6799.relations [0,64,237] reduction6799.output := by lin_cert using reduction6799.terms
def image6800 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6800 : InImage map_37_178 image6800 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6800 : Bundle := named_bundle% "RealMapCertificates/relations/basis6800.json"
theorem reductionProof6800 : EqualModuloRelations reduction6800.relations reduction6800.input reduction6800.output := by lin_cert using reduction6800.terms
theorem substitutionProof6800 : IsMapEvaluation generatorImages reduction6800.relations [0,0,0,0,809] reduction6800.output := by lin_cert using reduction6800.terms
def image6801 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6801 : InImage map_37_178 image6801 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6801 : Bundle := named_bundle% "RealMapCertificates/relations/basis6801.json"
theorem reductionProof6801 : EqualModuloRelations reduction6801.relations reduction6801.input reduction6801.output := by lin_cert using reduction6801.terms
theorem substitutionProof6801 : IsMapEvaluation generatorImages reduction6801.relations [0,0,0,0,807] reduction6801.output := by lin_cert using reduction6801.terms
def map_37_179 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6908 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6908 : InImage map_37_179 image6908 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6908 : Bundle := named_bundle% "RealMapCertificates/relations/basis6908.json"
theorem reductionProof6908 : EqualModuloRelations reduction6908.relations reduction6908.input reduction6908.output := by lin_cert using reduction6908.terms
theorem substitutionProof6908 : IsMapEvaluation generatorImages reduction6908.relations [8,8,490] reduction6908.output := by lin_cert using reduction6908.terms
def image6909 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6909 : InImage map_37_179 image6909 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6909 : Bundle := named_bundle% "RealMapCertificates/relations/basis6909.json"
theorem reductionProof6909 : EqualModuloRelations reduction6909.relations reduction6909.input reduction6909.output := by lin_cert using reduction6909.terms
theorem substitutionProof6909 : IsMapEvaluation generatorImages reduction6909.relations [0,0,64,238] reduction6909.output := by lin_cert using reduction6909.terms
def image6910 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6910 : InImage map_37_179 image6910 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6910 : Bundle := named_bundle% "RealMapCertificates/relations/basis6910.json"
theorem reductionProof6910 : EqualModuloRelations reduction6910.relations reduction6910.input reduction6910.output := by lin_cert using reduction6910.terms
theorem substitutionProof6910 : IsMapEvaluation generatorImages reduction6910.relations [0,0,0,0,0,0,795] reduction6910.output := by lin_cert using reduction6910.terms
def map_37_180 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image7042 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7042 : InImage map_37_180 image7042 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7042 : Bundle := named_bundle% "RealMapCertificates/relations/basis7042.json"
theorem reductionProof7042 : EqualModuloRelations reduction7042.relations reduction7042.input reduction7042.output := by lin_cert using reduction7042.terms
theorem substitutionProof7042 : IsMapEvaluation generatorImages reduction7042.relations [8,8,8,8,8,147] reduction7042.output := by lin_cert using reduction7042.terms
def image7043 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7043 : InImage map_37_180 image7043 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7043 : Bundle := named_bundle% "RealMapCertificates/relations/basis7043.json"
theorem reductionProof7043 : EqualModuloRelations reduction7043.relations reduction7043.input reduction7043.output := by lin_cert using reduction7043.terms
theorem substitutionProof7043 : IsMapEvaluation generatorImages reduction7043.relations [8,8,8,8,8,8,8,51] reduction7043.output := by lin_cert using reduction7043.terms
def map_37_181 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image7174 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7174 : InImage map_37_181 image7174 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7174 : Bundle := named_bundle% "RealMapCertificates/relations/basis7174.json"
theorem reductionProof7174 : EqualModuloRelations reduction7174.relations reduction7174.input reduction7174.output := by lin_cert using reduction7174.terms
theorem substitutionProof7174 : IsMapEvaluation generatorImages reduction7174.relations [0,16,64,137] reduction7174.output := by lin_cert using reduction7174.terms
def map_37_182 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7264 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7264 : InImage map_37_182 image7264 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7264 : Bundle := named_bundle% "RealMapCertificates/relations/basis7264.json"
theorem reductionProof7264 : EqualModuloRelations reduction7264.relations reduction7264.input reduction7264.output := by lin_cert using reduction7264.terms
theorem substitutionProof7264 : IsMapEvaluation generatorImages reduction7264.relations [8,8,8,315] reduction7264.output := by lin_cert using reduction7264.terms
def image7265 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7265 : InImage map_37_182 image7265 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7265 : Bundle := named_bundle% "RealMapCertificates/relations/basis7265.json"
theorem reductionProof7265 : EqualModuloRelations reduction7265.relations reduction7265.input reduction7265.output := by lin_cert using reduction7265.terms
theorem substitutionProof7265 : IsMapEvaluation generatorImages reduction7265.relations [0,0,16,64,138] reduction7265.output := by lin_cert using reduction7265.terms
def image7266 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7266 : InImage map_37_182 image7266 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7266 : Bundle := named_bundle% "RealMapCertificates/relations/basis7266.json"
theorem reductionProof7266 : EqualModuloRelations reduction7266.relations reduction7266.input reduction7266.output := by lin_cert using reduction7266.terms
theorem substitutionProof7266 : IsMapEvaluation generatorImages reduction7266.relations [0,0,0,64,244] reduction7266.output := by lin_cert using reduction7266.terms
def map_37_183 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7408 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7408 : InImage map_37_183 image7408 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7408 : Bundle := named_bundle% "RealMapCertificates/relations/basis7408.json"
theorem reductionProof7408 : EqualModuloRelations reduction7408.relations reduction7408.input reduction7408.output := by lin_cert using reduction7408.terms
theorem substitutionProof7408 : IsMapEvaluation generatorImages reduction7408.relations [8,8,8,8,8,17,64] reduction7408.output := by lin_cert using reduction7408.terms
def image7409 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7409 : InImage map_37_183 image7409 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7409 : Bundle := named_bundle% "RealMapCertificates/relations/basis7409.json"
theorem reductionProof7409 : EqualModuloRelations reduction7409.relations reduction7409.input reduction7409.output := by lin_cert using reduction7409.terms
theorem substitutionProof7409 : IsMapEvaluation generatorImages reduction7409.relations [8,8,8,8,8,8,9,51] reduction7409.output := by lin_cert using reduction7409.terms
def image7410 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7410 : InImage map_37_183 image7410 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7410 : Bundle := named_bundle% "RealMapCertificates/relations/basis7410.json"
theorem reductionProof7410 : EqualModuloRelations reduction7410.relations reduction7410.input reduction7410.output := by lin_cert using reduction7410.terms
theorem substitutionProof7410 : IsMapEvaluation generatorImages reduction7410.relations [0,0,0,0,138,149] reduction7410.output := by lin_cert using reduction7410.terms
def map_37_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7529 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7529 : InImage map_37_184 image7529 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7529 : Bundle := named_bundle% "RealMapCertificates/relations/basis7529.json"
theorem reductionProof7529 : EqualModuloRelations reduction7529.relations reduction7529.input reduction7529.output := by lin_cert using reduction7529.terms
theorem substitutionProof7529 : IsMapEvaluation generatorImages reduction7529.relations [0,0,0,0,0,17,17,260] reduction7529.output := by lin_cert using reduction7529.terms
def map_37_185 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7631 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7631 : InImage map_37_185 image7631 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7631 : Bundle := named_bundle% "RealMapCertificates/relations/basis7631.json"
theorem reductionProof7631 : EqualModuloRelations reduction7631.relations reduction7631.input reduction7631.output := by lin_cert using reduction7631.terms
theorem substitutionProof7631 : IsMapEvaluation generatorImages reduction7631.relations [8,8,8,345] reduction7631.output := by lin_cert using reduction7631.terms
def image7632 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7632 : InImage map_37_185 image7632 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7632 : Bundle := named_bundle% "RealMapCertificates/relations/basis7632.json"
theorem reductionProof7632 : EqualModuloRelations reduction7632.relations reduction7632.input reduction7632.output := by lin_cert using reduction7632.terms
theorem substitutionProof7632 : IsMapEvaluation generatorImages reduction7632.relations [0,0,0,0,0,0,64,246] reduction7632.output := by lin_cert using reduction7632.terms
def image7633 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7633 : InImage map_37_185 image7633 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7633 : Bundle := named_bundle% "RealMapCertificates/relations/basis7633.json"
theorem reductionProof7633 : EqualModuloRelations reduction7633.relations reduction7633.input reduction7633.output := by lin_cert using reduction7633.terms
theorem substitutionProof7633 : IsMapEvaluation generatorImages reduction7633.relations [0,0,0,0,0,0,59,260] reduction7633.output := by lin_cert using reduction7633.terms
def map_37_186 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image7766 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7766 : InImage map_37_186 image7766 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7766 : Bundle := named_bundle% "RealMapCertificates/relations/basis7766.json"
theorem reductionProof7766 : EqualModuloRelations reduction7766.relations reduction7766.input reduction7766.output := by lin_cert using reduction7766.terms
theorem substitutionProof7766 : IsMapEvaluation generatorImages reduction7766.relations [955] reduction7766.output := by lin_cert using reduction7766.terms
def image7767 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7767 : InImage map_37_186 image7767 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7767 : Bundle := named_bundle% "RealMapCertificates/relations/basis7767.json"
theorem reductionProof7767 : EqualModuloRelations reduction7767.relations reduction7767.input reduction7767.output := by lin_cert using reduction7767.terms
theorem substitutionProof7767 : IsMapEvaluation generatorImages reduction7767.relations [8,8,8,8,8,8,113] reduction7767.output := by lin_cert using reduction7767.terms
def image7768 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7768 : InImage map_37_186 image7768 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7768 : Bundle := named_bundle% "RealMapCertificates/relations/basis7768.json"
theorem reductionProof7768 : EqualModuloRelations reduction7768.relations reduction7768.input reduction7768.output := by lin_cert using reduction7768.terms
theorem substitutionProof7768 : IsMapEvaluation generatorImages reduction7768.relations [8,8,8,8,8,8,13,51] reduction7768.output := by lin_cert using reduction7768.terms
def map_37_188 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7969 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7969 : InImage map_37_188 image7969 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7969 : Bundle := named_bundle% "RealMapCertificates/relations/basis7969.json"
theorem reductionProof7969 : EqualModuloRelations reduction7969.relations reduction7969.input reduction7969.output := by lin_cert using reduction7969.terms
theorem substitutionProof7969 : IsMapEvaluation generatorImages reduction7969.relations [17,623] reduction7969.output := by lin_cert using reduction7969.terms
def image7970 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7970 : InImage map_37_188 image7970 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7970 : Bundle := named_bundle% "RealMapCertificates/relations/basis7970.json"
theorem reductionProof7970 : EqualModuloRelations reduction7970.relations reduction7970.input reduction7970.output := by lin_cert using reduction7970.terms
theorem substitutionProof7970 : IsMapEvaluation generatorImages reduction7970.relations [8,8,8,8,247] reduction7970.output := by lin_cert using reduction7970.terms
def map_37_189 : Matrix 3 5 := fun i j => ([false,true,false,false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8120 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation8120 : InImage map_37_189 image8120 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8120 : Bundle := named_bundle% "RealMapCertificates/relations/basis8120.json"
theorem reductionProof8120 : EqualModuloRelations reduction8120.relations reduction8120.input reduction8120.output := by lin_cert using reduction8120.terms
theorem substitutionProof8120 : IsMapEvaluation generatorImages reduction8120.relations [17,637] reduction8120.output := by lin_cert using reduction8120.terms
def image8121 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8121 : InImage map_37_189 image8121 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8121 : Bundle := named_bundle% "RealMapCertificates/relations/basis8121.json"
theorem reductionProof8121 : EqualModuloRelations reduction8121.relations reduction8121.input reduction8121.output := by lin_cert using reduction8121.terms
theorem substitutionProof8121 : IsMapEvaluation generatorImages reduction8121.relations [8,8,8,8,8,9,13,51] reduction8121.output := by lin_cert using reduction8121.terms
def image8122 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8122 : InImage map_37_189 image8122 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8122 : Bundle := named_bundle% "RealMapCertificates/relations/basis8122.json"
theorem reductionProof8122 : EqualModuloRelations reduction8122.relations reduction8122.input reduction8122.output := by lin_cert using reduction8122.terms
theorem substitutionProof8122 : IsMapEvaluation generatorImages reduction8122.relations [8,8,8,8,8,8,118] reduction8122.output := by lin_cert using reduction8122.terms
def image8123 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8123 : InImage map_37_189 image8123 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8123 : Bundle := named_bundle% "RealMapCertificates/relations/basis8123.json"
theorem reductionProof8123 : EqualModuloRelations reduction8123.relations reduction8123.input reduction8123.output := by lin_cert using reduction8123.terms
theorem substitutionProof8123 : IsMapEvaluation generatorImages reduction8123.relations [0,971] reduction8123.output := by lin_cert using reduction8123.terms
def image8124 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8124 : InImage map_37_189 image8124 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8124 : Bundle := named_bundle% "RealMapCertificates/relations/basis8124.json"
theorem reductionProof8124 : EqualModuloRelations reduction8124.relations reduction8124.input reduction8124.output := by lin_cert using reduction8124.terms
theorem substitutionProof8124 : IsMapEvaluation generatorImages reduction8124.relations [0,0,0,0,0,149,149] reduction8124.output := by lin_cert using reduction8124.terms
def map_37_190 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image8240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8240 : InImage map_37_190 image8240 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8240 : Bundle := named_bundle% "RealMapCertificates/relations/basis8240.json"
theorem reductionProof8240 : EqualModuloRelations reduction8240.relations reduction8240.input reduction8240.output := by lin_cert using reduction8240.terms
theorem substitutionProof8240 : IsMapEvaluation generatorImages reduction8240.relations [0,0,0,0,0,0,927] reduction8240.output := by lin_cert using reduction8240.terms
def map_37_191 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image8352 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8352 : InImage map_37_191 image8352 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8352 : Bundle := named_bundle% "RealMapCertificates/relations/basis8352.json"
theorem reductionProof8352 : EqualModuloRelations reduction8352.relations reduction8352.input reduction8352.output := by lin_cert using reduction8352.terms
theorem substitutionProof8352 : IsMapEvaluation generatorImages reduction8352.relations [8,17,491] reduction8352.output := by lin_cert using reduction8352.terms
def image8353 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8353 : InImage map_37_191 image8353 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8353 : Bundle := named_bundle% "RealMapCertificates/relations/basis8353.json"
theorem reductionProof8353 : EqualModuloRelations reduction8353.relations reduction8353.input reduction8353.output := by lin_cert using reduction8353.terms
theorem substitutionProof8353 : IsMapEvaluation generatorImages reduction8353.relations [8,8,8,8,259] reduction8353.output := by lin_cert using reduction8353.terms
def map_37_192 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8493 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8493 : InImage map_37_192 image8493 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8493 : Bundle := named_bundle% "RealMapCertificates/relations/basis8493.json"
theorem reductionProof8493 : EqualModuloRelations reduction8493.relations reduction8493.input reduction8493.output := by lin_cert using reduction8493.terms
theorem substitutionProof8493 : IsMapEvaluation generatorImages reduction8493.relations [8,808] reduction8493.output := by lin_cert using reduction8493.terms
def image8494 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8494 : InImage map_37_192 image8494 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8494 : Bundle := named_bundle% "RealMapCertificates/relations/basis8494.json"
theorem reductionProof8494 : EqualModuloRelations reduction8494.relations reduction8494.input reduction8494.output := by lin_cert using reduction8494.terms
theorem substitutionProof8494 : IsMapEvaluation generatorImages reduction8494.relations [8,8,8,8,8,13,13,51] reduction8494.output := by lin_cert using reduction8494.terms
def image8495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8495 : InImage map_37_192 image8495 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8495 : Bundle := named_bundle% "RealMapCertificates/relations/basis8495.json"
theorem reductionProof8495 : EqualModuloRelations reduction8495.relations reduction8495.input reduction8495.output := by lin_cert using reduction8495.terms
theorem substitutionProof8495 : IsMapEvaluation generatorImages reduction8495.relations [8,8,8,8,8,8,127] reduction8495.output := by lin_cert using reduction8495.terms
def map_37_193 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image8620 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8620 : InImage map_37_193 image8620 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8620 : Bundle := named_bundle% "RealMapCertificates/relations/basis8620.json"
theorem reductionProof8620 : EqualModuloRelations reduction8620.relations reduction8620.input reduction8620.output := by lin_cert using reduction8620.terms
theorem substitutionProof8620 : IsMapEvaluation generatorImages reduction8620.relations [0,0,0,0,0,0,0,0,0,0,919] reduction8620.output := by lin_cert using reduction8620.terms
def map_37_194 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image8729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8729 : InImage map_37_194 image8729 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8729 : Bundle := named_bundle% "RealMapCertificates/relations/basis8729.json"
theorem reductionProof8729 : EqualModuloRelations reduction8729.relations reduction8729.input reduction8729.output := by lin_cert using reduction8729.terms
theorem substitutionProof8729 : IsMapEvaluation generatorImages reduction8729.relations [113,244] reduction8729.output := by lin_cert using reduction8729.terms
def image8730 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8730 : InImage map_37_194 image8730 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8730 : Bundle := named_bundle% "RealMapCertificates/relations/basis8730.json"
theorem reductionProof8730 : EqualModuloRelations reduction8730.relations reduction8730.input reduction8730.output := by lin_cert using reduction8730.terms
theorem substitutionProof8730 : IsMapEvaluation generatorImages reduction8730.relations [8,17,516] reduction8730.output := by lin_cert using reduction8730.terms
def image8731 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8731 : InImage map_37_194 image8731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8731 : Bundle := named_bundle% "RealMapCertificates/relations/basis8731.json"
theorem reductionProof8731 : EqualModuloRelations reduction8731.relations reduction8731.input reduction8731.output := by lin_cert using reduction8731.terms
theorem substitutionProof8731 : IsMapEvaluation generatorImages reduction8731.relations [8,8,8,8,8,193] reduction8731.output := by lin_cert using reduction8731.terms
def image8732 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8732 : InImage map_37_194 image8732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8732 : Bundle := named_bundle% "RealMapCertificates/relations/basis8732.json"
theorem reductionProof8732 : EqualModuloRelations reduction8732.relations reduction8732.input reduction8732.output := by lin_cert using reduction8732.terms
theorem substitutionProof8732 : IsMapEvaluation generatorImages reduction8732.relations [0,0,0,0,0,0,0,0,0,0,0,0,898] reduction8732.output := by lin_cert using reduction8732.terms
end RealMapCertificates
