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
  | 51 => [[7,7,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 260 => []
  | 267 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 435 => [[1,9,12,12]]
  | 454 => []
  | 491 => []
  | 509 => []
  | 516 => []
  | 518 => []
  | 529 => [[0,0,4,8,12,12]]
  | 530 => []
  | 550 => []
  | 558 => []
  | 559 => [[0,0,5,8,12,12]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 601 => []
  | 624 => []
  | 665 => [[0,0,4,5,8,12,12]]
  | 715 => [[7,7,7,12,12]]
  | 863 => [[4,7,7,7,12,12]]
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 963 => []
  | 974 => []
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1061 => [[4,5,5,5,9,12,12]]
  | 1218 => []
  | 1219 => [[4,4,4,7,7,7,12,12]]
  | 1288 => [[4,4,5,5,5,9,12,12]]
  | 1315 => []
  | 1383 => []
  | 1401 => []
  | 1515 => [[0,0,4,5,8,12,12,12]]
  | 1536 => [[4,6,8,12,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | _ => []
def map_37_195 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8901 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8901 : InImage map_37_195 image8901 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8901 : Bundle := named_bundle% "RealMapCertificates/relations/basis8901.json"
theorem reductionProof8901 : EqualModuloRelations reduction8901.relations reduction8901.input reduction8901.output := by lin_cert using reduction8901.terms
theorem substitutionProof8901 : IsMapEvaluation generatorImages reduction8901.relations [8,17,529] reduction8901.output := by lin_cert using reduction8901.terms
def image8902 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8902 : InImage map_37_195 image8902 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8902 : Bundle := named_bundle% "RealMapCertificates/relations/basis8902.json"
theorem reductionProof8902 : EqualModuloRelations reduction8902.relations reduction8902.input reduction8902.output := by lin_cert using reduction8902.terms
theorem substitutionProof8902 : IsMapEvaluation generatorImages reduction8902.relations [8,8,8,8,9,13,13,51] reduction8902.output := by lin_cert using reduction8902.terms
def image8903 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8903 : InImage map_37_195 image8903 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8903 : Bundle := named_bundle% "RealMapCertificates/relations/basis8903.json"
theorem reductionProof8903 : EqualModuloRelations reduction8903.relations reduction8903.input reduction8903.output := by lin_cert using reduction8903.terms
theorem substitutionProof8903 : IsMapEvaluation generatorImages reduction8903.relations [8,8,8,8,8,8,8,80] reduction8903.output := by lin_cert using reduction8903.terms
def image8904 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8904 : InImage map_37_195 image8904 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8904 : Bundle := named_bundle% "RealMapCertificates/relations/basis8904.json"
theorem reductionProof8904 : EqualModuloRelations reduction8904.relations reduction8904.input reduction8904.output := by lin_cert using reduction8904.terms
theorem substitutionProof8904 : IsMapEvaluation generatorImages reduction8904.relations [0,17,17,380] reduction8904.output := by lin_cert using reduction8904.terms
def map_37_197 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image9158 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9158 : InImage map_37_197 image9158 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9158 : Bundle := named_bundle% "RealMapCertificates/relations/basis9158.json"
theorem reductionProof9158 : EqualModuloRelations reduction9158.relations reduction9158.input reduction9158.output := by lin_cert using reduction9158.terms
theorem substitutionProof9158 : IsMapEvaluation generatorImages reduction9158.relations [8,138,149] reduction9158.output := by lin_cert using reduction9158.terms
def image9159 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9159 : InImage map_37_197 image9159 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9159 : Bundle := named_bundle% "RealMapCertificates/relations/basis9159.json"
theorem reductionProof9159 : EqualModuloRelations reduction9159.relations reduction9159.input reduction9159.output := by lin_cert using reduction9159.terms
theorem substitutionProof9159 : IsMapEvaluation generatorImages reduction9159.relations [8,16,17,260] reduction9159.output := by lin_cert using reduction9159.terms
def image9160 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9160 : InImage map_37_197 image9160 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9160 : Bundle := named_bundle% "RealMapCertificates/relations/basis9160.json"
theorem reductionProof9160 : EqualModuloRelations reduction9160.relations reduction9160.input reduction9160.output := by lin_cert using reduction9160.terms
theorem substitutionProof9160 : IsMapEvaluation generatorImages reduction9160.relations [8,8,8,8,8,208] reduction9160.output := by lin_cert using reduction9160.terms
def map_37_198 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image9339 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9339 : InImage map_37_198 image9339 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9339 : Bundle := named_bundle% "RealMapCertificates/relations/basis9339.json"
theorem reductionProof9339 : EqualModuloRelations reduction9339.relations reduction9339.input reduction9339.output := by lin_cert using reduction9339.terms
theorem substitutionProof9339 : IsMapEvaluation generatorImages reduction9339.relations [8,8,665] reduction9339.output := by lin_cert using reduction9339.terms
def image9340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9340 : InImage map_37_198 image9340 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9340 : Bundle := named_bundle% "RealMapCertificates/relations/basis9340.json"
theorem reductionProof9340 : EqualModuloRelations reduction9340.relations reduction9340.input reduction9340.output := by lin_cert using reduction9340.terms
theorem substitutionProof9340 : IsMapEvaluation generatorImages reduction9340.relations [8,8,8,8,13,13,13,51] reduction9340.output := by lin_cert using reduction9340.terms
def image9341 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9341 : InImage map_37_198 image9341 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9341 : Bundle := named_bundle% "RealMapCertificates/relations/basis9341.json"
theorem reductionProof9341 : EqualModuloRelations reduction9341.relations reduction9341.input reduction9341.output := by lin_cert using reduction9341.terms
theorem substitutionProof9341 : IsMapEvaluation generatorImages reduction9341.relations [8,8,8,8,8,8,9,80] reduction9341.output := by lin_cert using reduction9341.terms
def image9342 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9342 : InImage map_37_198 image9342 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9342 : Bundle := named_bundle% "RealMapCertificates/relations/basis9342.json"
theorem reductionProof9342 : EqualModuloRelations reduction9342.relations reduction9342.input reduction9342.output := by lin_cert using reduction9342.terms
theorem substitutionProof9342 : IsMapEvaluation generatorImages reduction9342.relations [5,149,149] reduction9342.output := by lin_cert using reduction9342.terms
def map_37_200 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9625 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9625 : InImage map_37_200 image9625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9625 : Bundle := named_bundle% "RealMapCertificates/relations/basis9625.json"
theorem reductionProof9625 : EqualModuloRelations reduction9625.relations reduction9625.input reduction9625.output := by lin_cert using reduction9625.terms
theorem substitutionProof9625 : IsMapEvaluation generatorImages reduction9625.relations [8,138,160] reduction9625.output := by lin_cert using reduction9625.terms
def image9626 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9626 : InImage map_37_200 image9626 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9626 : Bundle := named_bundle% "RealMapCertificates/relations/basis9626.json"
theorem reductionProof9626 : EqualModuloRelations reduction9626.relations reduction9626.input reduction9626.output := by lin_cert using reduction9626.terms
theorem substitutionProof9626 : IsMapEvaluation generatorImages reduction9626.relations [8,8,17,380] reduction9626.output := by lin_cert using reduction9626.terms
def image9627 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9627 : InImage map_37_200 image9627 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9627 : Bundle := named_bundle% "RealMapCertificates/relations/basis9627.json"
theorem reductionProof9627 : EqualModuloRelations reduction9627.relations reduction9627.input reduction9627.output := by lin_cert using reduction9627.terms
theorem substitutionProof9627 : IsMapEvaluation generatorImages reduction9627.relations [8,8,8,8,8,219] reduction9627.output := by lin_cert using reduction9627.terms
def map_37_201 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9828 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9828 : InImage map_37_201 image9828 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9828 : Bundle := named_bundle% "RealMapCertificates/relations/basis9828.json"
theorem reductionProof9828 : EqualModuloRelations reduction9828.relations reduction9828.input reduction9828.output := by lin_cert using reduction9828.terms
theorem substitutionProof9828 : IsMapEvaluation generatorImages reduction9828.relations [8,8,17,404] reduction9828.output := by lin_cert using reduction9828.terms
def image9829 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9829 : InImage map_37_201 image9829 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9829 : Bundle := named_bundle% "RealMapCertificates/relations/basis9829.json"
theorem reductionProof9829 : EqualModuloRelations reduction9829.relations reduction9829.input reduction9829.output := by lin_cert using reduction9829.terms
theorem substitutionProof9829 : IsMapEvaluation generatorImages reduction9829.relations [8,8,8,9,13,13,13,51] reduction9829.output := by lin_cert using reduction9829.terms
def image9830 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9830 : InImage map_37_201 image9830 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9830 : Bundle := named_bundle% "RealMapCertificates/relations/basis9830.json"
theorem reductionProof9830 : EqualModuloRelations reduction9830.relations reduction9830.input reduction9830.output := by lin_cert using reduction9830.terms
theorem substitutionProof9830 : IsMapEvaluation generatorImages reduction9830.relations [8,8,8,8,8,8,13,80] reduction9830.output := by lin_cert using reduction9830.terms
def map_37_202 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image9965 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9965 : InImage map_37_202 image9965 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9965 : Bundle := named_bundle% "RealMapCertificates/relations/basis9965.json"
theorem reductionProof9965 : EqualModuloRelations reduction9965.relations reduction9965.input reduction9965.output := by lin_cert using reduction9965.terms
theorem substitutionProof9965 : IsMapEvaluation generatorImages reduction9965.relations [1219] reduction9965.output := by lin_cert using reduction9965.terms
def image9966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9966 : InImage map_37_202 image9966 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9966 : Bundle := named_bundle% "RealMapCertificates/relations/basis9966.json"
theorem reductionProof9966 : EqualModuloRelations reduction9966.relations reduction9966.input reduction9966.output := by lin_cert using reduction9966.terms
theorem substitutionProof9966 : IsMapEvaluation generatorImages reduction9966.relations [1218] reduction9966.output := by lin_cert using reduction9966.terms
def map_37_203 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image10123 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10123 : InImage map_37_203 image10123 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10123 : Bundle := named_bundle% "RealMapCertificates/relations/basis10123.json"
theorem reductionProof10123 : EqualModuloRelations reduction10123.relations reduction10123.input reduction10123.output := by lin_cert using reduction10123.terms
theorem substitutionProof10123 : IsMapEvaluation generatorImages reduction10123.relations [8,16,598] reduction10123.output := by lin_cert using reduction10123.terms
def image10124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10124 : InImage map_37_203 image10124 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10124 : Bundle := named_bundle% "RealMapCertificates/relations/basis10124.json"
theorem reductionProof10124 : EqualModuloRelations reduction10124.relations reduction10124.input reduction10124.output := by lin_cert using reduction10124.terms
theorem substitutionProof10124 : IsMapEvaluation generatorImages reduction10124.relations [8,8,8,17,260] reduction10124.output := by lin_cert using reduction10124.terms
def image10125 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10125 : InImage map_37_203 image10125 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10125 : Bundle := named_bundle% "RealMapCertificates/relations/basis10125.json"
theorem reductionProof10125 : EqualModuloRelations reduction10125.relations reduction10125.input reduction10125.output := by lin_cert using reduction10125.terms
theorem substitutionProof10125 : IsMapEvaluation generatorImages reduction10125.relations [8,8,8,8,9,219] reduction10125.output := by lin_cert using reduction10125.terms
def map_37_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10326 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10326 : InImage map_37_204 image10326 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10326 : Bundle := named_bundle% "RealMapCertificates/relations/basis10326.json"
theorem reductionProof10326 : EqualModuloRelations reduction10326.relations reduction10326.input reduction10326.output := by lin_cert using reduction10326.terms
theorem substitutionProof10326 : IsMapEvaluation generatorImages reduction10326.relations [8,8,8,559] reduction10326.output := by lin_cert using reduction10326.terms
def image10327 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10327 : InImage map_37_204 image10327 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10327 : Bundle := named_bundle% "RealMapCertificates/relations/basis10327.json"
theorem reductionProof10327 : EqualModuloRelations reduction10327.relations reduction10327.input reduction10327.output := by lin_cert using reduction10327.terms
theorem substitutionProof10327 : IsMapEvaluation generatorImages reduction10327.relations [8,8,8,13,13,13,13,51] reduction10327.output := by lin_cert using reduction10327.terms
def image10328 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10328 : InImage map_37_204 image10328 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10328 : Bundle := named_bundle% "RealMapCertificates/relations/basis10328.json"
theorem reductionProof10328 : EqualModuloRelations reduction10328.relations reduction10328.input reduction10328.output := by lin_cert using reduction10328.terms
theorem substitutionProof10328 : IsMapEvaluation generatorImages reduction10328.relations [8,8,8,8,8,9,13,80] reduction10328.output := by lin_cert using reduction10328.terms
def map_37_205 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image10494 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10494 : InImage map_37_205 image10494 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10494 : Bundle := named_bundle% "RealMapCertificates/relations/basis10494.json"
theorem reductionProof10494 : EqualModuloRelations reduction10494.relations reduction10494.input reduction10494.output := by lin_cert using reduction10494.terms
theorem substitutionProof10494 : IsMapEvaluation generatorImages reduction10494.relations [1288] reduction10494.output := by lin_cert using reduction10494.terms
def map_37_206 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image10651 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10651 : InImage map_37_206 image10651 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10651 : Bundle := named_bundle% "RealMapCertificates/relations/basis10651.json"
theorem reductionProof10651 : EqualModuloRelations reduction10651.relations reduction10651.input reduction10651.output := by lin_cert using reduction10651.terms
theorem substitutionProof10651 : IsMapEvaluation generatorImages reduction10651.relations [8,8,113,149] reduction10651.output := by lin_cert using reduction10651.terms
def image10652 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10652 : InImage map_37_206 image10652 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10652 : Bundle := named_bundle% "RealMapCertificates/relations/basis10652.json"
theorem reductionProof10652 : EqualModuloRelations reduction10652.relations reduction10652.input reduction10652.output := by lin_cert using reduction10652.terms
theorem substitutionProof10652 : IsMapEvaluation generatorImages reduction10652.relations [8,8,8,17,278] reduction10652.output := by lin_cert using reduction10652.terms
def image10653 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10653 : InImage map_37_206 image10653 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10653 : Bundle := named_bundle% "RealMapCertificates/relations/basis10653.json"
theorem reductionProof10653 : EqualModuloRelations reduction10653.relations reduction10653.input reduction10653.output := by lin_cert using reduction10653.terms
theorem substitutionProof10653 : IsMapEvaluation generatorImages reduction10653.relations [8,8,8,8,13,219] reduction10653.output := by lin_cert using reduction10653.terms
def map_37_207 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image10878 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10878 : InImage map_37_207 image10878 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10878 : Bundle := named_bundle% "RealMapCertificates/relations/basis10878.json"
theorem reductionProof10878 : EqualModuloRelations reduction10878.relations reduction10878.input reduction10878.output := by lin_cert using reduction10878.terms
theorem substitutionProof10878 : IsMapEvaluation generatorImages reduction10878.relations [8,8,9,13,13,13,13,51] reduction10878.output := by lin_cert using reduction10878.terms
def image10879 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10879 : InImage map_37_207 image10879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10879 : Bundle := named_bundle% "RealMapCertificates/relations/basis10879.json"
theorem reductionProof10879 : EqualModuloRelations reduction10879.relations reduction10879.input reduction10879.output := by lin_cert using reduction10879.terms
theorem substitutionProof10879 : IsMapEvaluation generatorImages reduction10879.relations [8,8,8,580] reduction10879.output := by lin_cert using reduction10879.terms
def image10880 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10880 : InImage map_37_207 image10880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10880 : Bundle := named_bundle% "RealMapCertificates/relations/basis10880.json"
theorem reductionProof10880 : EqualModuloRelations reduction10880.relations reduction10880.input reduction10880.output := by lin_cert using reduction10880.terms
theorem substitutionProof10880 : IsMapEvaluation generatorImages reduction10880.relations [8,8,8,8,8,13,13,80] reduction10880.output := by lin_cert using reduction10880.terms
def image10881 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10881 : InImage map_37_207 image10881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10881 : Bundle := named_bundle% "RealMapCertificates/relations/basis10881.json"
theorem reductionProof10881 : EqualModuloRelations reduction10881.relations reduction10881.input reduction10881.output := by lin_cert using reduction10881.terms
theorem substitutionProof10881 : IsMapEvaluation generatorImages reduction10881.relations [0,64,491] reduction10881.output := by lin_cert using reduction10881.terms
def map_37_208 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11012 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11012 : InImage map_37_208 image11012 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11012 : Bundle := named_bundle% "RealMapCertificates/relations/basis11012.json"
theorem reductionProof11012 : EqualModuloRelations reduction11012.relations reduction11012.input reduction11012.output := by lin_cert using reduction11012.terms
theorem substitutionProof11012 : IsMapEvaluation generatorImages reduction11012.relations [64,509] reduction11012.output := by lin_cert using reduction11012.terms
def image11013 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11013 : InImage map_37_208 image11013 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11013 : Bundle := named_bundle% "RealMapCertificates/relations/basis11013.json"
theorem reductionProof11013 : EqualModuloRelations reduction11013.relations reduction11013.input reduction11013.output := by lin_cert using reduction11013.terms
theorem substitutionProof11013 : IsMapEvaluation generatorImages reduction11013.relations [8,1009] reduction11013.output := by lin_cert using reduction11013.terms
def image11014 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11014 : InImage map_37_208 image11014 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11014 : Bundle := named_bundle% "RealMapCertificates/relations/basis11014.json"
theorem reductionProof11014 : EqualModuloRelations reduction11014.relations reduction11014.input reduction11014.output := by lin_cert using reduction11014.terms
theorem substitutionProof11014 : IsMapEvaluation generatorImages reduction11014.relations [1,64,491] reduction11014.output := by lin_cert using reduction11014.terms
def image11015 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11015 : InImage map_37_208 image11015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11015 : Bundle := named_bundle% "RealMapCertificates/relations/basis11015.json"
theorem reductionProof11015 : EqualModuloRelations reduction11015.relations reduction11015.input reduction11015.output := by lin_cert using reduction11015.terms
theorem substitutionProof11015 : IsMapEvaluation generatorImages reduction11015.relations [0,0,138,260] reduction11015.output := by lin_cert using reduction11015.terms
def map_37_209 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11184 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11184 : InImage map_37_209 image11184 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11184 : Bundle := named_bundle% "RealMapCertificates/relations/basis11184.json"
theorem reductionProof11184 : EqualModuloRelations reduction11184.relations reduction11184.input reduction11184.output := by lin_cert using reduction11184.terms
theorem substitutionProof11184 : IsMapEvaluation generatorImages reduction11184.relations [8,8,8,598] reduction11184.output := by lin_cert using reduction11184.terms
def image11185 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11185 : InImage map_37_209 image11185 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11185 : Bundle := named_bundle% "RealMapCertificates/relations/basis11185.json"
theorem reductionProof11185 : EqualModuloRelations reduction11185.relations reduction11185.input reduction11185.output := by lin_cert using reduction11185.terms
theorem substitutionProof11185 : IsMapEvaluation generatorImages reduction11185.relations [8,8,8,16,292] reduction11185.output := by lin_cert using reduction11185.terms
def image11186 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11186 : InImage map_37_209 image11186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11186 : Bundle := named_bundle% "RealMapCertificates/relations/basis11186.json"
theorem reductionProof11186 : EqualModuloRelations reduction11186.relations reduction11186.input reduction11186.output := by lin_cert using reduction11186.terms
theorem substitutionProof11186 : IsMapEvaluation generatorImages reduction11186.relations [8,8,8,9,13,219] reduction11186.output := by lin_cert using reduction11186.terms
def image11187 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11187 : InImage map_37_209 image11187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11187 : Bundle := named_bundle% "RealMapCertificates/relations/basis11187.json"
theorem reductionProof11187 : EqualModuloRelations reduction11187.relations reduction11187.input reduction11187.output := by lin_cert using reduction11187.terms
theorem substitutionProof11187 : IsMapEvaluation generatorImages reduction11187.relations [0,0,1315] reduction11187.output := by lin_cert using reduction11187.terms
def map_37_210 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image11386 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11386 : InImage map_37_210 image11386 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11386 : Bundle := named_bundle% "RealMapCertificates/relations/basis11386.json"
theorem reductionProof11386 : EqualModuloRelations reduction11386.relations reduction11386.input reduction11386.output := by lin_cert using reduction11386.terms
theorem substitutionProof11386 : IsMapEvaluation generatorImages reduction11386.relations [8,8,13,13,13,13,13,51] reduction11386.output := by lin_cert using reduction11386.terms
def image11387 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11387 : InImage map_37_210 image11387 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11387 : Bundle := named_bundle% "RealMapCertificates/relations/basis11387.json"
theorem reductionProof11387 : EqualModuloRelations reduction11387.relations reduction11387.input reduction11387.output := by lin_cert using reduction11387.terms
theorem substitutionProof11387 : IsMapEvaluation generatorImages reduction11387.relations [8,8,8,8,435] reduction11387.output := by lin_cert using reduction11387.terms
def image11388 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11388 : InImage map_37_210 image11388 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11388 : Bundle := named_bundle% "RealMapCertificates/relations/basis11388.json"
theorem reductionProof11388 : EqualModuloRelations reduction11388.relations reduction11388.input reduction11388.output := by lin_cert using reduction11388.terms
theorem substitutionProof11388 : IsMapEvaluation generatorImages reduction11388.relations [8,8,8,8,9,13,13,80] reduction11388.output := by lin_cert using reduction11388.terms
def image11389 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11389 : InImage map_37_210 image11389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11389 : Bundle := named_bundle% "RealMapCertificates/relations/basis11389.json"
theorem reductionProof11389 : EqualModuloRelations reduction11389.relations reduction11389.input reduction11389.output := by lin_cert using reduction11389.terms
theorem substitutionProof11389 : IsMapEvaluation generatorImages reduction11389.relations [0,64,516] reduction11389.output := by lin_cert using reduction11389.terms
def map_37_211 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11560 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11560 : InImage map_37_211 image11560 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11560 : Bundle := named_bundle% "RealMapCertificates/relations/basis11560.json"
theorem reductionProof11560 : EqualModuloRelations reduction11560.relations reduction11560.input reduction11560.output := by lin_cert using reduction11560.terms
theorem substitutionProof11560 : IsMapEvaluation generatorImages reduction11560.relations [8,1061] reduction11560.output := by lin_cert using reduction11560.terms
def image11561 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11561 : InImage map_37_211 image11561 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11561 : Bundle := named_bundle% "RealMapCertificates/relations/basis11561.json"
theorem reductionProof11561 : EqualModuloRelations reduction11561.relations reduction11561.input reduction11561.output := by lin_cert using reduction11561.terms
theorem substitutionProof11561 : IsMapEvaluation generatorImages reduction11561.relations [0,64,529] reduction11561.output := by lin_cert using reduction11561.terms
def image11562 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11562 : InImage map_37_211 image11562 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11562 : Bundle := named_bundle% "RealMapCertificates/relations/basis11562.json"
theorem reductionProof11562 : EqualModuloRelations reduction11562.relations reduction11562.input reduction11562.output := by lin_cert using reduction11562.terms
theorem substitutionProof11562 : IsMapEvaluation generatorImages reduction11562.relations [0,0,138,278] reduction11562.output := by lin_cert using reduction11562.terms
def map_37_212 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11718 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11718 : InImage map_37_212 image11718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11718 : Bundle := named_bundle% "RealMapCertificates/relations/basis11718.json"
theorem reductionProof11718 : EqualModuloRelations reduction11718.relations reduction11718.input reduction11718.output := by lin_cert using reduction11718.terms
theorem substitutionProof11718 : IsMapEvaluation generatorImages reduction11718.relations [8,8,8,624] reduction11718.output := by lin_cert using reduction11718.terms
def image11719 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11719 : InImage map_37_212 image11719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11719 : Bundle := named_bundle% "RealMapCertificates/relations/basis11719.json"
theorem reductionProof11719 : EqualModuloRelations reduction11719.relations reduction11719.input reduction11719.output := by lin_cert using reduction11719.terms
theorem substitutionProof11719 : IsMapEvaluation generatorImages reduction11719.relations [8,8,8,13,13,219] reduction11719.output := by lin_cert using reduction11719.terms
def image11720 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11720 : InImage map_37_212 image11720 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11720 : Bundle := named_bundle% "RealMapCertificates/relations/basis11720.json"
theorem reductionProof11720 : EqualModuloRelations reduction11720.relations reduction11720.input reduction11720.output := by lin_cert using reduction11720.terms
theorem substitutionProof11720 : IsMapEvaluation generatorImages reduction11720.relations [8,8,8,8,454] reduction11720.output := by lin_cert using reduction11720.terms
def map_37_213 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11965 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11965 : InImage map_37_213 image11965 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11965 : Bundle := named_bundle% "RealMapCertificates/relations/basis11965.json"
theorem reductionProof11965 : EqualModuloRelations reduction11965.relations reduction11965.input reduction11965.output := by lin_cert using reduction11965.terms
theorem substitutionProof11965 : IsMapEvaluation generatorImages reduction11965.relations [64,64,138] reduction11965.output := by lin_cert using reduction11965.terms
def image11966 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11966 : InImage map_37_213 image11966 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11966 : Bundle := named_bundle% "RealMapCertificates/relations/basis11966.json"
theorem reductionProof11966 : EqualModuloRelations reduction11966.relations reduction11966.input reduction11966.output := by lin_cert using reduction11966.terms
theorem substitutionProof11966 : IsMapEvaluation generatorImages reduction11966.relations [8,9,13,13,13,13,13,51] reduction11966.output := by lin_cert using reduction11966.terms
def image11967 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11967 : InImage map_37_213 image11967 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11967 : Bundle := named_bundle% "RealMapCertificates/relations/basis11967.json"
theorem reductionProof11967 : EqualModuloRelations reduction11967.relations reduction11967.input reduction11967.output := by lin_cert using reduction11967.terms
theorem substitutionProof11967 : IsMapEvaluation generatorImages reduction11967.relations [8,8,8,9,435] reduction11967.output := by lin_cert using reduction11967.terms
def image11968 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11968 : InImage map_37_213 image11968 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11968 : Bundle := named_bundle% "RealMapCertificates/relations/basis11968.json"
theorem reductionProof11968 : EqualModuloRelations reduction11968.relations reduction11968.input reduction11968.output := by lin_cert using reduction11968.terms
theorem substitutionProof11968 : IsMapEvaluation generatorImages reduction11968.relations [8,8,8,8,13,13,13,80] reduction11968.output := by lin_cert using reduction11968.terms
def image11969 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11969 : InImage map_37_213 image11969 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11969 : Bundle := named_bundle% "RealMapCertificates/relations/basis11969.json"
theorem reductionProof11969 : EqualModuloRelations reduction11969.relations reduction11969.input reduction11969.output := by lin_cert using reduction11969.terms
theorem substitutionProof11969 : IsMapEvaluation generatorImages reduction11969.relations [0,16,64,260] reduction11969.output := by lin_cert using reduction11969.terms
def map_37_214 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12139 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12139 : InImage map_37_214 image12139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12139 : Bundle := named_bundle% "RealMapCertificates/relations/basis12139.json"
theorem reductionProof12139 : EqualModuloRelations reduction12139.relations reduction12139.input reduction12139.output := by lin_cert using reduction12139.terms
theorem substitutionProof12139 : IsMapEvaluation generatorImages reduction12139.relations [8,8,863] reduction12139.output := by lin_cert using reduction12139.terms
def image12140 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12140 : InImage map_37_214 image12140 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12140 : Bundle := named_bundle% "RealMapCertificates/relations/basis12140.json"
theorem reductionProof12140 : EqualModuloRelations reduction12140.relations reduction12140.input reduction12140.output := by lin_cert using reduction12140.terms
theorem substitutionProof12140 : IsMapEvaluation generatorImages reduction12140.relations [0,0,16,897] reduction12140.output := by lin_cert using reduction12140.terms
def image12141 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12141 : InImage map_37_214 image12141 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12141 : Bundle := named_bundle% "RealMapCertificates/relations/basis12141.json"
theorem reductionProof12141 : EqualModuloRelations reduction12141.relations reduction12141.input reduction12141.output := by lin_cert using reduction12141.terms
theorem substitutionProof12141 : IsMapEvaluation generatorImages reduction12141.relations [0,0,0,149,260] reduction12141.output := by lin_cert using reduction12141.terms
def map_37_215 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image12319 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12319 : InImage map_37_215 image12319 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12319 : Bundle := named_bundle% "RealMapCertificates/relations/basis12319.json"
theorem reductionProof12319 : EqualModuloRelations reduction12319.relations reduction12319.input reduction12319.output := by lin_cert using reduction12319.terms
theorem substitutionProof12319 : IsMapEvaluation generatorImages reduction12319.relations [8,8,9,13,13,219] reduction12319.output := by lin_cert using reduction12319.terms
def image12320 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12320 : InImage map_37_215 image12320 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12320 : Bundle := named_bundle% "RealMapCertificates/relations/basis12320.json"
theorem reductionProof12320 : EqualModuloRelations reduction12320.relations reduction12320.input reduction12320.output := by lin_cert using reduction12320.terms
theorem substitutionProof12320 : IsMapEvaluation generatorImages reduction12320.relations [8,8,8,17,347] reduction12320.output := by lin_cert using reduction12320.terms
def image12321 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12321 : InImage map_37_215 image12321 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12321 : Bundle := named_bundle% "RealMapCertificates/relations/basis12321.json"
theorem reductionProof12321 : EqualModuloRelations reduction12321.relations reduction12321.input reduction12321.output := by lin_cert using reduction12321.terms
theorem substitutionProof12321 : IsMapEvaluation generatorImages reduction12321.relations [8,8,8,8,8,292] reduction12321.output := by lin_cert using reduction12321.terms
def image12322 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12322 : InImage map_37_215 image12322 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12322 : Bundle := named_bundle% "RealMapCertificates/relations/basis12322.json"
theorem reductionProof12322 : EqualModuloRelations reduction12322.relations reduction12322.input reduction12322.output := by lin_cert using reduction12322.terms
theorem substitutionProof12322 : IsMapEvaluation generatorImages reduction12322.relations [0,0,64,558] reduction12322.output := by lin_cert using reduction12322.terms
def image12323 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12323 : InImage map_37_215 image12323 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12323 : Bundle := named_bundle% "RealMapCertificates/relations/basis12323.json"
theorem reductionProof12323 : EqualModuloRelations reduction12323.relations reduction12323.input reduction12323.output := by lin_cert using reduction12323.terms
theorem substitutionProof12323 : IsMapEvaluation generatorImages reduction12323.relations [0,0,0,17,897] reduction12323.output := by lin_cert using reduction12323.terms
def map_37_216 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12531 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12531 : InImage map_37_216 image12531 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12531 : Bundle := named_bundle% "RealMapCertificates/relations/basis12531.json"
theorem reductionProof12531 : EqualModuloRelations reduction12531.relations reduction12531.input reduction12531.output := by lin_cert using reduction12531.terms
theorem substitutionProof12531 : IsMapEvaluation generatorImages reduction12531.relations [64,64,147] reduction12531.output := by lin_cert using reduction12531.terms
def image12532 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12532 : InImage map_37_216 image12532 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12532 : Bundle := named_bundle% "RealMapCertificates/relations/basis12532.json"
theorem reductionProof12532 : EqualModuloRelations reduction12532.relations reduction12532.input reduction12532.output := by lin_cert using reduction12532.terms
theorem substitutionProof12532 : IsMapEvaluation generatorImages reduction12532.relations [8,13,13,13,13,13,13,51] reduction12532.output := by lin_cert using reduction12532.terms
def image12533 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12533 : InImage map_37_216 image12533 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12533 : Bundle := named_bundle% "RealMapCertificates/relations/basis12533.json"
theorem reductionProof12533 : EqualModuloRelations reduction12533.relations reduction12533.input reduction12533.output := by lin_cert using reduction12533.terms
theorem substitutionProof12533 : IsMapEvaluation generatorImages reduction12533.relations [8,8,8,13,435] reduction12533.output := by lin_cert using reduction12533.terms
def image12534 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12534 : InImage map_37_216 image12534 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12534 : Bundle := named_bundle% "RealMapCertificates/relations/basis12534.json"
theorem reductionProof12534 : EqualModuloRelations reduction12534.relations reduction12534.input reduction12534.output := by lin_cert using reduction12534.terms
theorem substitutionProof12534 : IsMapEvaluation generatorImages reduction12534.relations [8,8,8,9,13,13,13,80] reduction12534.output := by lin_cert using reduction12534.terms
def image12535 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12535 : InImage map_37_216 image12535 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12535 : Bundle := named_bundle% "RealMapCertificates/relations/basis12535.json"
theorem reductionProof12535 : EqualModuloRelations reduction12535.relations reduction12535.input reduction12535.output := by lin_cert using reduction12535.terms
theorem substitutionProof12535 : IsMapEvaluation generatorImages reduction12535.relations [0,8,64,380] reduction12535.output := by lin_cert using reduction12535.terms
def image12536 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12536 : InImage map_37_216 image12536 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12536 : Bundle := named_bundle% "RealMapCertificates/relations/basis12536.json"
theorem reductionProof12536 : EqualModuloRelations reduction12536.relations reduction12536.input reduction12536.output := by lin_cert using reduction12536.terms
theorem substitutionProof12536 : IsMapEvaluation generatorImages reduction12536.relations [0,0,0,0,1401] reduction12536.output := by lin_cert using reduction12536.terms
def map_37_217 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12712 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12712 : InImage map_37_217 image12712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12712 : Bundle := named_bundle% "RealMapCertificates/relations/basis12712.json"
theorem reductionProof12712 : EqualModuloRelations reduction12712.relations reduction12712.input reduction12712.output := by lin_cert using reduction12712.terms
theorem substitutionProof12712 : IsMapEvaluation generatorImages reduction12712.relations [8,8,890] reduction12712.output := by lin_cert using reduction12712.terms
def image12713 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12713 : InImage map_37_217 image12713 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12713 : Bundle := named_bundle% "RealMapCertificates/relations/basis12713.json"
theorem reductionProof12713 : EqualModuloRelations reduction12713.relations reduction12713.input reduction12713.output := by lin_cert using reduction12713.terms
theorem substitutionProof12713 : IsMapEvaluation generatorImages reduction12713.relations [0,0,8,113,260] reduction12713.output := by lin_cert using reduction12713.terms
def image12714 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12714 : InImage map_37_217 image12714 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12714 : Bundle := named_bundle% "RealMapCertificates/relations/basis12714.json"
theorem reductionProof12714 : EqualModuloRelations reduction12714.relations reduction12714.input reduction12714.output := by lin_cert using reduction12714.terms
theorem substitutionProof12714 : IsMapEvaluation generatorImages reduction12714.relations [0,0,0,0,0,0,1383] reduction12714.output := by lin_cert using reduction12714.terms
def map_37_218 : Matrix 2 4 := fun i j => ([false,true,false,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image12872 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation12872 : InImage map_37_218 image12872 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12872 : Bundle := named_bundle% "RealMapCertificates/relations/basis12872.json"
theorem reductionProof12872 : EqualModuloRelations reduction12872.relations reduction12872.input reduction12872.output := by lin_cert using reduction12872.terms
theorem substitutionProof12872 : IsMapEvaluation generatorImages reduction12872.relations [1515] reduction12872.output := by lin_cert using reduction12872.terms
def image12873 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12873 : InImage map_37_218 image12873 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12873 : Bundle := named_bundle% "RealMapCertificates/relations/basis12873.json"
theorem reductionProof12873 : EqualModuloRelations reduction12873.relations reduction12873.input reduction12873.output := by lin_cert using reduction12873.terms
theorem substitutionProof12873 : IsMapEvaluation generatorImages reduction12873.relations [8,8,13,13,13,219] reduction12873.output := by lin_cert using reduction12873.terms
def image12874 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12874 : InImage map_37_218 image12874 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12874 : Bundle := named_bundle% "RealMapCertificates/relations/basis12874.json"
theorem reductionProof12874 : EqualModuloRelations reduction12874.relations reduction12874.input reduction12874.output := by lin_cert using reduction12874.terms
theorem substitutionProof12874 : IsMapEvaluation generatorImages reduction12874.relations [8,8,8,8,518] reduction12874.output := by lin_cert using reduction12874.terms
def image12875 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12875 : InImage map_37_218 image12875 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12875 : Bundle := named_bundle% "RealMapCertificates/relations/basis12875.json"
theorem reductionProof12875 : EqualModuloRelations reduction12875.relations reduction12875.input reduction12875.output := by lin_cert using reduction12875.terms
theorem substitutionProof12875 : IsMapEvaluation generatorImages reduction12875.relations [8,8,8,8,9,292] reduction12875.output := by lin_cert using reduction12875.terms
def map_37_219 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13117 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13117 : InImage map_37_219 image13117 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13117 : Bundle := named_bundle% "RealMapCertificates/relations/basis13117.json"
theorem reductionProof13117 : EqualModuloRelations reduction13117.relations reduction13117.input reduction13117.output := by lin_cert using reduction13117.terms
theorem substitutionProof13117 : IsMapEvaluation generatorImages reduction13117.relations [16,64,299] reduction13117.output := by lin_cert using reduction13117.terms
def image13118 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13118 : InImage map_37_219 image13118 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13118 : Bundle := named_bundle% "RealMapCertificates/relations/basis13118.json"
theorem reductionProof13118 : EqualModuloRelations reduction13118.relations reduction13118.input reduction13118.output := by lin_cert using reduction13118.terms
theorem substitutionProof13118 : IsMapEvaluation generatorImages reduction13118.relations [9,13,13,13,13,13,13,51] reduction13118.output := by lin_cert using reduction13118.terms
def image13119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13119 : InImage map_37_219 image13119 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13119 : Bundle := named_bundle% "RealMapCertificates/relations/basis13119.json"
theorem reductionProof13119 : EqualModuloRelations reduction13119.relations reduction13119.input reduction13119.output := by lin_cert using reduction13119.terms
theorem substitutionProof13119 : IsMapEvaluation generatorImages reduction13119.relations [8,8,8,13,13,13,13,80] reduction13119.output := by lin_cert using reduction13119.terms
def image13120 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13120 : InImage map_37_219 image13120 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13120 : Bundle := named_bundle% "RealMapCertificates/relations/basis13120.json"
theorem reductionProof13120 : EqualModuloRelations reduction13120.relations reduction13120.input reduction13120.output := by lin_cert using reduction13120.terms
theorem substitutionProof13120 : IsMapEvaluation generatorImages reduction13120.relations [8,8,8,8,530] reduction13120.output := by lin_cert using reduction13120.terms
def image13121 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13121 : InImage map_37_219 image13121 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13121 : Bundle := named_bundle% "RealMapCertificates/relations/basis13121.json"
theorem reductionProof13121 : EqualModuloRelations reduction13121.relations reduction13121.input reduction13121.output := by lin_cert using reduction13121.terms
theorem substitutionProof13121 : IsMapEvaluation generatorImages reduction13121.relations [0,64,64,149] reduction13121.output := by lin_cert using reduction13121.terms
def image13122 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13122 : InImage map_37_219 image13122 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13122 : Bundle := named_bundle% "RealMapCertificates/relations/basis13122.json"
theorem reductionProof13122 : EqualModuloRelations reduction13122.relations reduction13122.input reduction13122.output := by lin_cert using reduction13122.terms
theorem substitutionProof13122 : IsMapEvaluation generatorImages reduction13122.relations [0,8,8,64,260] reduction13122.output := by lin_cert using reduction13122.terms
def map_37_220 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13261 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13261 : InImage map_37_220 image13261 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13261 : Bundle := named_bundle% "RealMapCertificates/relations/basis13261.json"
theorem reductionProof13261 : EqualModuloRelations reduction13261.relations reduction13261.input reduction13261.output := by lin_cert using reduction13261.terms
theorem substitutionProof13261 : IsMapEvaluation generatorImages reduction13261.relations [8,8,8,715] reduction13261.output := by lin_cert using reduction13261.terms
def image13262 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13262 : InImage map_37_220 image13262 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13262 : Bundle := named_bundle% "RealMapCertificates/relations/basis13262.json"
theorem reductionProof13262 : EqualModuloRelations reduction13262.relations reduction13262.input reduction13262.output := by lin_cert using reduction13262.terms
theorem substitutionProof13262 : IsMapEvaluation generatorImages reduction13262.relations [1,64,64,149] reduction13262.output := by lin_cert using reduction13262.terms
def image13263 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13263 : InImage map_37_220 image13263 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13263 : Bundle := named_bundle% "RealMapCertificates/relations/basis13263.json"
theorem reductionProof13263 : EqualModuloRelations reduction13263.relations reduction13263.input reduction13263.output := by lin_cert using reduction13263.terms
theorem substitutionProof13263 : IsMapEvaluation generatorImages reduction13263.relations [0,1536] reduction13263.output := by lin_cert using reduction13263.terms
def image13264 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13264 : InImage map_37_220 image13264 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13264 : Bundle := named_bundle% "RealMapCertificates/relations/basis13264.json"
theorem reductionProof13264 : EqualModuloRelations reduction13264.relations reduction13264.input reduction13264.output := by lin_cert using reduction13264.terms
theorem substitutionProof13264 : IsMapEvaluation generatorImages reduction13264.relations [0,0,64,598] reduction13264.output := by lin_cert using reduction13264.terms
def image13265 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13265 : InImage map_37_220 image13265 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13265 : Bundle := named_bundle% "RealMapCertificates/relations/basis13265.json"
theorem reductionProof13265 : EqualModuloRelations reduction13265.relations reduction13265.input reduction13265.output := by lin_cert using reduction13265.terms
theorem substitutionProof13265 : IsMapEvaluation generatorImages reduction13265.relations [0,0,8,8,897] reduction13265.output := by lin_cert using reduction13265.terms
def map_37_221 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image13446 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13446 : InImage map_37_221 image13446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13446 : Bundle := named_bundle% "RealMapCertificates/relations/basis13446.json"
theorem reductionProof13446 : EqualModuloRelations reduction13446.relations reduction13446.input reduction13446.output := by lin_cert using reduction13446.terms
theorem substitutionProof13446 : IsMapEvaluation generatorImages reduction13446.relations [8,9,13,13,13,219] reduction13446.output := by lin_cert using reduction13446.terms
def image13447 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13447 : InImage map_37_221 image13447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13447 : Bundle := named_bundle% "RealMapCertificates/relations/basis13447.json"
theorem reductionProof13447 : EqualModuloRelations reduction13447.relations reduction13447.input reduction13447.output := by lin_cert using reduction13447.terms
theorem substitutionProof13447 : IsMapEvaluation generatorImages reduction13447.relations [8,8,8,8,550] reduction13447.output := by lin_cert using reduction13447.terms
def image13448 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13448 : InImage map_37_221 image13448 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13448 : Bundle := named_bundle% "RealMapCertificates/relations/basis13448.json"
theorem reductionProof13448 : EqualModuloRelations reduction13448.relations reduction13448.input reduction13448.output := by lin_cert using reduction13448.terms
theorem substitutionProof13448 : IsMapEvaluation generatorImages reduction13448.relations [8,8,8,8,13,292] reduction13448.output := by lin_cert using reduction13448.terms
def image13449 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13449 : InImage map_37_221 image13449 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13449 : Bundle := named_bundle% "RealMapCertificates/relations/basis13449.json"
theorem reductionProof13449 : EqualModuloRelations reduction13449.relations reduction13449.input reduction13449.output := by lin_cert using reduction13449.terms
theorem substitutionProof13449 : IsMapEvaluation generatorImages reduction13449.relations [0,1552] reduction13449.output := by lin_cert using reduction13449.terms
def image13450 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13450 : InImage map_37_221 image13450 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13450 : Bundle := named_bundle% "RealMapCertificates/relations/basis13450.json"
theorem reductionProof13450 : EqualModuloRelations reduction13450.relations reduction13450.input reduction13450.output := by lin_cert using reduction13450.terms
theorem substitutionProof13450 : IsMapEvaluation generatorImages reduction13450.relations [0,0,0,0,17,963] reduction13450.output := by lin_cert using reduction13450.terms
def map_37_222 : Matrix 2 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image13675 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13675 : InImage map_37_222 image13675 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction13675 : Bundle := named_bundle% "RealMapCertificates/relations/basis13675.json"
theorem reductionProof13675 : EqualModuloRelations reduction13675.relations reduction13675.input reduction13675.output := by lin_cert using reduction13675.terms
theorem substitutionProof13675 : IsMapEvaluation generatorImages reduction13675.relations [13,13,13,13,13,13,13,51] reduction13675.output := by lin_cert using reduction13675.terms
def image13676 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13676 : InImage map_37_222 image13676 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction13676 : Bundle := named_bundle% "RealMapCertificates/relations/basis13676.json"
theorem reductionProof13676 : EqualModuloRelations reduction13676.relations reduction13676.input reduction13676.output := by lin_cert using reduction13676.terms
theorem substitutionProof13676 : IsMapEvaluation generatorImages reduction13676.relations [8,64,64,113] reduction13676.output := by lin_cert using reduction13676.terms
def image13677 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13677 : InImage map_37_222 image13677 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction13677 : Bundle := named_bundle% "RealMapCertificates/relations/basis13677.json"
theorem reductionProof13677 : EqualModuloRelations reduction13677.relations reduction13677.input reduction13677.output := by lin_cert using reduction13677.terms
theorem substitutionProof13677 : IsMapEvaluation generatorImages reduction13677.relations [8,8,9,13,13,13,13,80] reduction13677.output := by lin_cert using reduction13677.terms
def image13678 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13678 : InImage map_37_222 image13678 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction13678 : Bundle := named_bundle% "RealMapCertificates/relations/basis13678.json"
theorem reductionProof13678 : EqualModuloRelations reduction13678.relations reduction13678.input reduction13678.output := by lin_cert using reduction13678.terms
theorem substitutionProof13678 : IsMapEvaluation generatorImages reduction13678.relations [8,8,8,8,17,267] reduction13678.output := by lin_cert using reduction13678.terms
def image13679 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13679 : InImage map_37_222 image13679 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction13679 : Bundle := named_bundle% "RealMapCertificates/relations/basis13679.json"
theorem reductionProof13679 : EqualModuloRelations reduction13679.relations reduction13679.input reduction13679.output := by lin_cert using reduction13679.terms
theorem substitutionProof13679 : IsMapEvaluation generatorImages reduction13679.relations [0,8,8,64,278] reduction13679.output := by lin_cert using reduction13679.terms
def image13680 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13680 : InImage map_37_222 image13680 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction13680 : Bundle := named_bundle% "RealMapCertificates/relations/basis13680.json"
theorem reductionProof13680 : EqualModuloRelations reduction13680.relations reduction13680.input reduction13680.output := by lin_cert using reduction13680.terms
theorem substitutionProof13680 : IsMapEvaluation generatorImages reduction13680.relations [0,0,0,0,64,601] reduction13680.output := by lin_cert using reduction13680.terms
def image13681 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13681 : InImage map_37_222 image13681 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction13681 : Bundle := named_bundle% "RealMapCertificates/relations/basis13681.json"
theorem reductionProof13681 : EqualModuloRelations reduction13681.relations reduction13681.input reduction13681.output := by lin_cert using reduction13681.terms
theorem substitutionProof13681 : IsMapEvaluation generatorImages reduction13681.relations [0,0,0,0,17,974] reduction13681.output := by lin_cert using reduction13681.terms
end RealMapCertificates
