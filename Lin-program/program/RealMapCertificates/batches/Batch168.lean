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
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 24 => []
  | 29 => [[5,9]]
  | 42 => [[5,5,7]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 105 => []
  | 113 => [[0,8,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 188 => []
  | 209 => []
  | 219 => [[7,7,7,12]]
  | 255 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 280 => []
  | 292 => []
  | 293 => []
  | 294 => []
  | 299 => []
  | 327 => []
  | 383 => []
  | 420 => []
  | 537 => []
  | 549 => []
  | 574 => []
  | 586 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 645 => []
  | 653 => []
  | 689 => []
  | 715 => [[7,7,7,12,12]]
  | 753 => [[5,7,9,12,12]]
  | 821 => [[5,7,10,12,12]]
  | 940 => []
  | 963 => []
  | 974 => []
  | 1035 => []
  | 1220 => []
  | 1336 => [[0,5,9,12,12,12]]
  | 1481 => [[5,5,7,12,12,12]]
  | 1538 => [[5,7,7,12,12,12]]
  | 1592 => [[4,6,9,12,12,12]]
  | 1594 => [[7,7,7,12,12,12]]
  | 1605 => []
  | 1606 => []
  | 1687 => [[4,5,5,7,12,12,12]]
  | 1754 => [[4,5,7,7,12,12,12]]
  | 1856 => []
  | 1857 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1991 => []
  | 1992 => []
  | 1994 => []
  | 2038 => []
  | 2058 => []
  | _ => []
def map_37_223 : Matrix 2 4 := fun i j => ([true,false,false,false,false,true,false,false] : List Bool)[i.val*4+j.val]!
def image13838 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13838 : InImage map_37_223 image13838 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13838 : Bundle := named_bundle% "RealMapCertificates/relations/basis13838.json"
theorem reductionProof13838 : EqualModuloRelations reduction13838.relations reduction13838.input reduction13838.output := by lin_cert using reduction13838.terms
theorem substitutionProof13838 : IsMapEvaluation generatorImages reduction13838.relations [8,8,9,715] reduction13838.output := by lin_cert using reduction13838.terms
def image13839 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13839 : InImage map_37_223 image13839 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13839 : Bundle := named_bundle% "RealMapCertificates/relations/basis13839.json"
theorem reductionProof13839 : EqualModuloRelations reduction13839.relations reduction13839.input reduction13839.output := by lin_cert using reduction13839.terms
theorem substitutionProof13839 : IsMapEvaluation generatorImages reduction13839.relations [0,1592] reduction13839.output := by lin_cert using reduction13839.terms
def image13840 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13840 : InImage map_37_223 image13840 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13840 : Bundle := named_bundle% "RealMapCertificates/relations/basis13840.json"
theorem reductionProof13840 : EqualModuloRelations reduction13840.relations reduction13840.input reduction13840.output := by lin_cert using reduction13840.terms
theorem substitutionProof13840 : IsMapEvaluation generatorImages reduction13840.relations [0,0,8,8,940] reduction13840.output := by lin_cert using reduction13840.terms
def image13841 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13841 : InImage map_37_223 image13841 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13841 : Bundle := named_bundle% "RealMapCertificates/relations/basis13841.json"
theorem reductionProof13841 : EqualModuloRelations reduction13841.relations reduction13841.input reduction13841.output := by lin_cert using reduction13841.terms
theorem substitutionProof13841 : IsMapEvaluation generatorImages reduction13841.relations [0,0,0,0,0,0,64,586] reduction13841.output := by lin_cert using reduction13841.terms
def map_37_224 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image14000 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14000 : InImage map_37_224 image14000 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14000 : Bundle := named_bundle% "RealMapCertificates/relations/basis14000.json"
theorem reductionProof14000 : EqualModuloRelations reduction14000.relations reduction14000.input reduction14000.output := by lin_cert using reduction14000.terms
theorem substitutionProof14000 : IsMapEvaluation generatorImages reduction14000.relations [64,653] reduction14000.output := by lin_cert using reduction14000.terms
def image14001 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14001 : InImage map_37_224 image14001 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14001 : Bundle := named_bundle% "RealMapCertificates/relations/basis14001.json"
theorem reductionProof14001 : EqualModuloRelations reduction14001.relations reduction14001.input reduction14001.output := by lin_cert using reduction14001.terms
theorem substitutionProof14001 : IsMapEvaluation generatorImages reduction14001.relations [8,13,13,13,13,219] reduction14001.output := by lin_cert using reduction14001.terms
def image14002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14002 : InImage map_37_224 image14002 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14002 : Bundle := named_bundle% "RealMapCertificates/relations/basis14002.json"
theorem reductionProof14002 : EqualModuloRelations reduction14002.relations reduction14002.input reduction14002.output := by lin_cert using reduction14002.terms
theorem substitutionProof14002 : IsMapEvaluation generatorImages reduction14002.relations [8,8,8,9,13,292] reduction14002.output := by lin_cert using reduction14002.terms
def image14003 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14003 : InImage map_37_224 image14003 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14003 : Bundle := named_bundle% "RealMapCertificates/relations/basis14003.json"
theorem reductionProof14003 : EqualModuloRelations reduction14003.relations reduction14003.input reduction14003.output := by lin_cert using reduction14003.terms
theorem substitutionProof14003 : IsMapEvaluation generatorImages reduction14003.relations [8,8,8,8,8,383] reduction14003.output := by lin_cert using reduction14003.terms
def image14004 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14004 : InImage map_37_224 image14004 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14004 : Bundle := named_bundle% "RealMapCertificates/relations/basis14004.json"
theorem reductionProof14004 : EqualModuloRelations reduction14004.relations reduction14004.input reduction14004.output := by lin_cert using reduction14004.terms
theorem substitutionProof14004 : IsMapEvaluation generatorImages reduction14004.relations [0,1605] reduction14004.output := by lin_cert using reduction14004.terms
def map_37_225 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14240 : InImage map_37_225 image14240 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14240 : Bundle := named_bundle% "RealMapCertificates/relations/basis14240.json"
theorem reductionProof14240 : EqualModuloRelations reduction14240.relations reduction14240.input reduction14240.output := by lin_cert using reduction14240.terms
theorem substitutionProof14240 : IsMapEvaluation generatorImages reduction14240.relations [8,8,64,299] reduction14240.output := by lin_cert using reduction14240.terms
def image14241 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14241 : InImage map_37_225 image14241 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14241 : Bundle := named_bundle% "RealMapCertificates/relations/basis14241.json"
theorem reductionProof14241 : EqualModuloRelations reduction14241.relations reduction14241.input reduction14241.output := by lin_cert using reduction14241.terms
theorem substitutionProof14241 : IsMapEvaluation generatorImages reduction14241.relations [8,8,13,13,13,13,13,80] reduction14241.output := by lin_cert using reduction14241.terms
def image14242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14242 : InImage map_37_225 image14242 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14242 : Bundle := named_bundle% "RealMapCertificates/relations/basis14242.json"
theorem reductionProof14242 : EqualModuloRelations reduction14242.relations reduction14242.input reduction14242.output := by lin_cert using reduction14242.terms
theorem substitutionProof14242 : IsMapEvaluation generatorImages reduction14242.relations [8,8,8,8,20,267] reduction14242.output := by lin_cert using reduction14242.terms
def image14243 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14243 : InImage map_37_225 image14243 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14243 : Bundle := named_bundle% "RealMapCertificates/relations/basis14243.json"
theorem reductionProof14243 : EqualModuloRelations reduction14243.relations reduction14243.input reduction14243.output := by lin_cert using reduction14243.terms
theorem substitutionProof14243 : IsMapEvaluation generatorImages reduction14243.relations [0,8,8,16,627] reduction14243.output := by lin_cert using reduction14243.terms
def map_37_226 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image14388 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14388 : InImage map_37_226 image14388 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14388 : Bundle := named_bundle% "RealMapCertificates/relations/basis14388.json"
theorem reductionProof14388 : EqualModuloRelations reduction14388.relations reduction14388.input reduction14388.output := by lin_cert using reduction14388.terms
theorem substitutionProof14388 : IsMapEvaluation generatorImages reduction14388.relations [8,8,13,715] reduction14388.output := by lin_cert using reduction14388.terms
def image14389 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14389 : InImage map_37_226 image14389 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14389 : Bundle := named_bundle% "RealMapCertificates/relations/basis14389.json"
theorem reductionProof14389 : EqualModuloRelations reduction14389.relations reduction14389.input reduction14389.output := by lin_cert using reduction14389.terms
theorem substitutionProof14389 : IsMapEvaluation generatorImages reduction14389.relations [0,0,8,8,17,627] reduction14389.output := by lin_cert using reduction14389.terms
def image14390 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14390 : InImage map_37_226 image14390 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14390 : Bundle := named_bundle% "RealMapCertificates/relations/basis14390.json"
theorem reductionProof14390 : EqualModuloRelations reduction14390.relations reduction14390.input reduction14390.output := by lin_cert using reduction14390.terms
theorem substitutionProof14390 : IsMapEvaluation generatorImages reduction14390.relations [0,0,0,64,642] reduction14390.output := by lin_cert using reduction14390.terms
def map_37_227 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14577 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14577 : InImage map_37_227 image14577 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14577 : Bundle := named_bundle% "RealMapCertificates/relations/basis14577.json"
theorem reductionProof14577 : EqualModuloRelations reduction14577.relations reduction14577.input reduction14577.output := by lin_cert using reduction14577.terms
theorem substitutionProof14577 : IsMapEvaluation generatorImages reduction14577.relations [64,689] reduction14577.output := by lin_cert using reduction14577.terms
def image14578 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14578 : InImage map_37_227 image14578 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14578 : Bundle := named_bundle% "RealMapCertificates/relations/basis14578.json"
theorem reductionProof14578 : EqualModuloRelations reduction14578.relations reduction14578.input reduction14578.output := by lin_cert using reduction14578.terms
theorem substitutionProof14578 : IsMapEvaluation generatorImages reduction14578.relations [9,13,13,13,13,219] reduction14578.output := by lin_cert using reduction14578.terms
def image14579 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14579 : InImage map_37_227 image14579 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14579 : Bundle := named_bundle% "RealMapCertificates/relations/basis14579.json"
theorem reductionProof14579 : EqualModuloRelations reduction14579.relations reduction14579.input reduction14579.output := by lin_cert using reduction14579.terms
theorem substitutionProof14579 : IsMapEvaluation generatorImages reduction14579.relations [8,8,8,13,13,292] reduction14579.output := by lin_cert using reduction14579.terms
def image14580 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14580 : InImage map_37_227 image14580 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14580 : Bundle := named_bundle% "RealMapCertificates/relations/basis14580.json"
theorem reductionProof14580 : EqualModuloRelations reduction14580.relations reduction14580.input reduction14580.output := by lin_cert using reduction14580.terms
theorem substitutionProof14580 : IsMapEvaluation generatorImages reduction14580.relations [8,8,8,8,8,17,209] reduction14580.output := by lin_cert using reduction14580.terms
def image14581 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14581 : InImage map_37_227 image14581 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14581 : Bundle := named_bundle% "RealMapCertificates/relations/basis14581.json"
theorem reductionProof14581 : EqualModuloRelations reduction14581.relations reduction14581.input reduction14581.output := by lin_cert using reduction14581.terms
theorem substitutionProof14581 : IsMapEvaluation generatorImages reduction14581.relations [0,8,1336] reduction14581.output := by lin_cert using reduction14581.terms
def image14582 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14582 : InImage map_37_227 image14582 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14582 : Bundle := named_bundle% "RealMapCertificates/relations/basis14582.json"
theorem reductionProof14582 : EqualModuloRelations reduction14582.relations reduction14582.input reduction14582.output := by lin_cert using reduction14582.terms
theorem substitutionProof14582 : IsMapEvaluation generatorImages reduction14582.relations [0,0,0,0,1606] reduction14582.output := by lin_cert using reduction14582.terms
def map_37_228 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14812 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14812 : InImage map_37_228 image14812 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14812 : Bundle := named_bundle% "RealMapCertificates/relations/basis14812.json"
theorem reductionProof14812 : EqualModuloRelations reduction14812.relations reduction14812.input reduction14812.output := by lin_cert using reduction14812.terms
theorem substitutionProof14812 : IsMapEvaluation generatorImages reduction14812.relations [1687] reduction14812.output := by lin_cert using reduction14812.terms
def image14813 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14813 : InImage map_37_228 image14813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14813 : Bundle := named_bundle% "RealMapCertificates/relations/basis14813.json"
theorem reductionProof14813 : EqualModuloRelations reduction14813.relations reduction14813.input reduction14813.output := by lin_cert using reduction14813.terms
theorem substitutionProof14813 : IsMapEvaluation generatorImages reduction14813.relations [13,13,13,13,13,13,13,13,24] reduction14813.output := by lin_cert using reduction14813.terms
def image14814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14814 : InImage map_37_228 image14814 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14814 : Bundle := named_bundle% "RealMapCertificates/relations/basis14814.json"
theorem reductionProof14814 : EqualModuloRelations reduction14814.relations reduction14814.input reduction14814.output := by lin_cert using reduction14814.terms
theorem substitutionProof14814 : IsMapEvaluation generatorImages reduction14814.relations [8,9,13,13,13,13,13,80] reduction14814.output := by lin_cert using reduction14814.terms
def image14815 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14815 : InImage map_37_228 image14815 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14815 : Bundle := named_bundle% "RealMapCertificates/relations/basis14815.json"
theorem reductionProof14815 : EqualModuloRelations reduction14815.relations reduction14815.input reduction14815.output := by lin_cert using reduction14815.terms
theorem substitutionProof14815 : IsMapEvaluation generatorImages reduction14815.relations [8,8,64,327] reduction14815.output := by lin_cert using reduction14815.terms
def image14816 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14816 : InImage map_37_228 image14816 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14816 : Bundle := named_bundle% "RealMapCertificates/relations/basis14816.json"
theorem reductionProof14816 : EqualModuloRelations reduction14816.relations reduction14816.input reduction14816.output := by lin_cert using reduction14816.terms
theorem substitutionProof14816 : IsMapEvaluation generatorImages reduction14816.relations [8,8,8,8,8,23,188] reduction14816.output := by lin_cert using reduction14816.terms
def image14817 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14817 : InImage map_37_228 image14817 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14817 : Bundle := named_bundle% "RealMapCertificates/relations/basis14817.json"
theorem reductionProof14817 : EqualModuloRelations reduction14817.relations reduction14817.input reduction14817.output := by lin_cert using reduction14817.terms
theorem substitutionProof14817 : IsMapEvaluation generatorImages reduction14817.relations [0,0,0,0,0,0,0,64,627] reduction14817.output := by lin_cert using reduction14817.terms
def map_37_229 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14990 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14990 : InImage map_37_229 image14990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14990 : Bundle := named_bundle% "RealMapCertificates/relations/basis14990.json"
theorem reductionProof14990 : EqualModuloRelations reduction14990.relations reduction14990.input reduction14990.output := by lin_cert using reduction14990.terms
theorem substitutionProof14990 : IsMapEvaluation generatorImages reduction14990.relations [8,9,13,715] reduction14990.output := by lin_cert using reduction14990.terms
def image14991 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14991 : InImage map_37_229 image14991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14991 : Bundle := named_bundle% "RealMapCertificates/relations/basis14991.json"
theorem reductionProof14991 : EqualModuloRelations reduction14991.relations reduction14991.input reduction14991.output := by lin_cert using reduction14991.terms
theorem substitutionProof14991 : IsMapEvaluation generatorImages reduction14991.relations [0,0,0,0,0,0,64,645] reduction14991.output := by lin_cert using reduction14991.terms
def image14992 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14992 : InImage map_37_229 image14992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14992 : Bundle := named_bundle% "RealMapCertificates/relations/basis14992.json"
theorem reductionProof14992 : EqualModuloRelations reduction14992.relations reduction14992.input reduction14992.output := by lin_cert using reduction14992.terms
theorem substitutionProof14992 : IsMapEvaluation generatorImages reduction14992.relations [0,0,0,0,0,0,0,0,188,260] reduction14992.output := by lin_cert using reduction14992.terms
def map_37_230 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image15175 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15175 : InImage map_37_230 image15175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15175 : Bundle := named_bundle% "RealMapCertificates/relations/basis15175.json"
theorem reductionProof15175 : EqualModuloRelations reduction15175.relations reduction15175.input reduction15175.output := by lin_cert using reduction15175.terms
theorem substitutionProof15175 : IsMapEvaluation generatorImages reduction15175.relations [42,64,260] reduction15175.output := by lin_cert using reduction15175.terms
def image15176 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15176 : InImage map_37_230 image15176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15176 : Bundle := named_bundle% "RealMapCertificates/relations/basis15176.json"
theorem reductionProof15176 : EqualModuloRelations reduction15176.relations reduction15176.input reduction15176.output := by lin_cert using reduction15176.terms
theorem substitutionProof15176 : IsMapEvaluation generatorImages reduction15176.relations [13,13,13,13,13,219] reduction15176.output := by lin_cert using reduction15176.terms
def image15177 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15177 : InImage map_37_230 image15177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15177 : Bundle := named_bundle% "RealMapCertificates/relations/basis15177.json"
theorem reductionProof15177 : EqualModuloRelations reduction15177.relations reduction15177.input reduction15177.output := by lin_cert using reduction15177.terms
theorem substitutionProof15177 : IsMapEvaluation generatorImages reduction15177.relations [8,64,549] reduction15177.output := by lin_cert using reduction15177.terms
def image15178 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15178 : InImage map_37_230 image15178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15178 : Bundle := named_bundle% "RealMapCertificates/relations/basis15178.json"
theorem reductionProof15178 : EqualModuloRelations reduction15178.relations reduction15178.input reduction15178.output := by lin_cert using reduction15178.terms
theorem substitutionProof15178 : IsMapEvaluation generatorImages reduction15178.relations [8,8,9,13,13,292] reduction15178.output := by lin_cert using reduction15178.terms
def image15179 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15179 : InImage map_37_230 image15179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15179 : Bundle := named_bundle% "RealMapCertificates/relations/basis15179.json"
theorem reductionProof15179 : EqualModuloRelations reduction15179.relations reduction15179.input reduction15179.output := by lin_cert using reduction15179.terms
theorem substitutionProof15179 : IsMapEvaluation generatorImages reduction15179.relations [8,8,8,8,8,8,280] reduction15179.output := by lin_cert using reduction15179.terms
def map_37_231 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image15439 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15439 : InImage map_37_231 image15439 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15439 : Bundle := named_bundle% "RealMapCertificates/relations/basis15439.json"
theorem reductionProof15439 : EqualModuloRelations reduction15439.relations reduction15439.input reduction15439.output := by lin_cert using reduction15439.terms
theorem substitutionProof15439 : IsMapEvaluation generatorImages reduction15439.relations [1754] reduction15439.output := by lin_cert using reduction15439.terms
def image15440 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15440 : InImage map_37_231 image15440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15440 : Bundle := named_bundle% "RealMapCertificates/relations/basis15440.json"
theorem reductionProof15440 : EqualModuloRelations reduction15440.relations reduction15440.input reduction15440.output := by lin_cert using reduction15440.terms
theorem substitutionProof15440 : IsMapEvaluation generatorImages reduction15440.relations [8,13,13,13,13,13,13,80] reduction15440.output := by lin_cert using reduction15440.terms
def image15441 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15441 : InImage map_37_231 image15441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15441 : Bundle := named_bundle% "RealMapCertificates/relations/basis15441.json"
theorem reductionProof15441 : EqualModuloRelations reduction15441.relations reduction15441.input reduction15441.output := by lin_cert using reduction15441.terms
theorem substitutionProof15441 : IsMapEvaluation generatorImages reduction15441.relations [8,8,16,64,188] reduction15441.output := by lin_cert using reduction15441.terms
def image15442 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15442 : InImage map_37_231 image15442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15442 : Bundle := named_bundle% "RealMapCertificates/relations/basis15442.json"
theorem reductionProof15442 : EqualModuloRelations reduction15442.relations reduction15442.input reduction15442.output := by lin_cert using reduction15442.terms
theorem substitutionProof15442 : IsMapEvaluation generatorImages reduction15442.relations [8,8,8,8,9,23,188] reduction15442.output := by lin_cert using reduction15442.terms
def map_37_232 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15618 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15618 : InImage map_37_232 image15618 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15618 : Bundle := named_bundle% "RealMapCertificates/relations/basis15618.json"
theorem reductionProof15618 : EqualModuloRelations reduction15618.relations reduction15618.input reduction15618.output := by lin_cert using reduction15618.terms
theorem substitutionProof15618 : IsMapEvaluation generatorImages reduction15618.relations [17,1220] reduction15618.output := by lin_cert using reduction15618.terms
def image15619 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15619 : InImage map_37_232 image15619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15619 : Bundle := named_bundle% "RealMapCertificates/relations/basis15619.json"
theorem reductionProof15619 : EqualModuloRelations reduction15619.relations reduction15619.input reduction15619.output := by lin_cert using reduction15619.terms
theorem substitutionProof15619 : IsMapEvaluation generatorImages reduction15619.relations [8,13,13,715] reduction15619.output := by lin_cert using reduction15619.terms
def map_37_233 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image15833 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15833 : InImage map_37_233 image15833 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15833 : Bundle := named_bundle% "RealMapCertificates/relations/basis15833.json"
theorem reductionProof15833 : EqualModuloRelations reduction15833.relations reduction15833.input reduction15833.output := by lin_cert using reduction15833.terms
theorem substitutionProof15833 : IsMapEvaluation generatorImages reduction15833.relations [17,113,292] reduction15833.output := by lin_cert using reduction15833.terms
def image15834 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15834 : InImage map_37_233 image15834 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15834 : Bundle := named_bundle% "RealMapCertificates/relations/basis15834.json"
theorem reductionProof15834 : EqualModuloRelations reduction15834.relations reduction15834.input reduction15834.output := by lin_cert using reduction15834.terms
theorem substitutionProof15834 : IsMapEvaluation generatorImages reduction15834.relations [8,64,574] reduction15834.output := by lin_cert using reduction15834.terms
def image15835 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15835 : InImage map_37_233 image15835 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15835 : Bundle := named_bundle% "RealMapCertificates/relations/basis15835.json"
theorem reductionProof15835 : EqualModuloRelations reduction15835.relations reduction15835.input reduction15835.output := by lin_cert using reduction15835.terms
theorem substitutionProof15835 : IsMapEvaluation generatorImages reduction15835.relations [8,8,13,13,13,292] reduction15835.output := by lin_cert using reduction15835.terms
def image15836 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15836 : InImage map_37_233 image15836 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15836 : Bundle := named_bundle% "RealMapCertificates/relations/basis15836.json"
theorem reductionProof15836 : EqualModuloRelations reduction15836.relations reduction15836.input reduction15836.output := by lin_cert using reduction15836.terms
theorem substitutionProof15836 : IsMapEvaluation generatorImages reduction15836.relations [8,8,8,8,8,8,294] reduction15836.output := by lin_cert using reduction15836.terms
def image15837 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15837 : InImage map_37_233 image15837 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15837 : Bundle := named_bundle% "RealMapCertificates/relations/basis15837.json"
theorem reductionProof15837 : EqualModuloRelations reduction15837.relations reduction15837.input reduction15837.output := by lin_cert using reduction15837.terms
theorem substitutionProof15837 : IsMapEvaluation generatorImages reduction15837.relations [0,64,753] reduction15837.output := by lin_cert using reduction15837.terms
def map_37_234 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image16089 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16089 : InImage map_37_234 image16089 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16089 : Bundle := named_bundle% "RealMapCertificates/relations/basis16089.json"
theorem reductionProof16089 : EqualModuloRelations reduction16089.relations reduction16089.input reduction16089.output := by lin_cert using reduction16089.terms
theorem substitutionProof16089 : IsMapEvaluation generatorImages reduction16089.relations [9,13,13,13,13,13,13,80] reduction16089.output := by lin_cert using reduction16089.terms
def image16090 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16090 : InImage map_37_234 image16090 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16090 : Bundle := named_bundle% "RealMapCertificates/relations/basis16090.json"
theorem reductionProof16090 : EqualModuloRelations reduction16090.relations reduction16090.input reduction16090.output := by lin_cert using reduction16090.terms
theorem substitutionProof16090 : IsMapEvaluation generatorImages reduction16090.relations [8,1481] reduction16090.output := by lin_cert using reduction16090.terms
def image16091 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16091 : InImage map_37_234 image16091 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16091 : Bundle := named_bundle% "RealMapCertificates/relations/basis16091.json"
theorem reductionProof16091 : EqualModuloRelations reduction16091.relations reduction16091.input reduction16091.output := by lin_cert using reduction16091.terms
theorem substitutionProof16091 : IsMapEvaluation generatorImages reduction16091.relations [8,8,8,64,255] reduction16091.output := by lin_cert using reduction16091.terms
def image16092 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16092 : InImage map_37_234 image16092 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16092 : Bundle := named_bundle% "RealMapCertificates/relations/basis16092.json"
theorem reductionProof16092 : EqualModuloRelations reduction16092.relations reduction16092.input reduction16092.output := by lin_cert using reduction16092.terms
theorem substitutionProof16092 : IsMapEvaluation generatorImages reduction16092.relations [8,8,8,8,13,23,188] reduction16092.output := by lin_cert using reduction16092.terms
def map_37_235 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16283 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16283 : InImage map_37_235 image16283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16283 : Bundle := named_bundle% "RealMapCertificates/relations/basis16283.json"
theorem reductionProof16283 : EqualModuloRelations reduction16283.relations reduction16283.input reduction16283.output := by lin_cert using reduction16283.terms
theorem substitutionProof16283 : IsMapEvaluation generatorImages reduction16283.relations [1856] reduction16283.output := by lin_cert using reduction16283.terms
def image16284 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16284 : InImage map_37_235 image16284 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16284 : Bundle := named_bundle% "RealMapCertificates/relations/basis16284.json"
theorem reductionProof16284 : EqualModuloRelations reduction16284.relations reduction16284.input reduction16284.output := by lin_cert using reduction16284.terms
theorem substitutionProof16284 : IsMapEvaluation generatorImages reduction16284.relations [9,13,13,715] reduction16284.output := by lin_cert using reduction16284.terms
def image16285 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16285 : InImage map_37_235 image16285 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16285 : Bundle := named_bundle% "RealMapCertificates/relations/basis16285.json"
theorem reductionProof16285 : EqualModuloRelations reduction16285.relations reduction16285.input reduction16285.output := by lin_cert using reduction16285.terms
theorem substitutionProof16285 : IsMapEvaluation generatorImages reduction16285.relations [8,17,963] reduction16285.output := by lin_cert using reduction16285.terms
def map_37_236 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image16504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16504 : InImage map_37_236 image16504 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16504 : Bundle := named_bundle% "RealMapCertificates/relations/basis16504.json"
theorem reductionProof16504 : EqualModuloRelations reduction16504.relations reduction16504.input reduction16504.output := by lin_cert using reduction16504.terms
theorem substitutionProof16504 : IsMapEvaluation generatorImages reduction16504.relations [13,13,13,13,13,13,150] reduction16504.output := by lin_cert using reduction16504.terms
def image16505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16505 : InImage map_37_236 image16505 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16505 : Bundle := named_bundle% "RealMapCertificates/relations/basis16505.json"
theorem reductionProof16505 : EqualModuloRelations reduction16505.relations reduction16505.input reduction16505.output := by lin_cert using reduction16505.terms
theorem substitutionProof16505 : IsMapEvaluation generatorImages reduction16505.relations [8,17,974] reduction16505.output := by lin_cert using reduction16505.terms
def image16506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16506 : InImage map_37_236 image16506 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16506 : Bundle := named_bundle% "RealMapCertificates/relations/basis16506.json"
theorem reductionProof16506 : EqualModuloRelations reduction16506.relations reduction16506.input reduction16506.output := by lin_cert using reduction16506.terms
theorem substitutionProof16506 : IsMapEvaluation generatorImages reduction16506.relations [8,9,13,13,13,292] reduction16506.output := by lin_cert using reduction16506.terms
def image16507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16507 : InImage map_37_236 image16507 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16507 : Bundle := named_bundle% "RealMapCertificates/relations/basis16507.json"
theorem reductionProof16507 : EqualModuloRelations reduction16507.relations reduction16507.input reduction16507.output := by lin_cert using reduction16507.terms
theorem substitutionProof16507 : IsMapEvaluation generatorImages reduction16507.relations [8,8,64,420] reduction16507.output := by lin_cert using reduction16507.terms
def image16508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation16508 : InImage map_37_236 image16508 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16508 : Bundle := named_bundle% "RealMapCertificates/relations/basis16508.json"
theorem reductionProof16508 : EqualModuloRelations reduction16508.relations reduction16508.input reduction16508.output := by lin_cert using reduction16508.terms
theorem substitutionProof16508 : IsMapEvaluation generatorImages reduction16508.relations [8,8,8,8,8,9,294] reduction16508.output := by lin_cert using reduction16508.terms
def map_37_237 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16767 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16767 : InImage map_37_237 image16767 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16767 : Bundle := named_bundle% "RealMapCertificates/relations/basis16767.json"
theorem reductionProof16767 : EqualModuloRelations reduction16767.relations reduction16767.input reduction16767.output := by lin_cert using reduction16767.terms
theorem substitutionProof16767 : IsMapEvaluation generatorImages reduction16767.relations [13,13,13,13,13,13,13,80] reduction16767.output := by lin_cert using reduction16767.terms
def image16768 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16768 : InImage map_37_237 image16768 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16768 : Bundle := named_bundle% "RealMapCertificates/relations/basis16768.json"
theorem reductionProof16768 : EqualModuloRelations reduction16768.relations reduction16768.input reduction16768.output := by lin_cert using reduction16768.terms
theorem substitutionProof16768 : IsMapEvaluation generatorImages reduction16768.relations [8,1538] reduction16768.output := by lin_cert using reduction16768.terms
def image16769 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16769 : InImage map_37_237 image16769 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16769 : Bundle := named_bundle% "RealMapCertificates/relations/basis16769.json"
theorem reductionProof16769 : EqualModuloRelations reduction16769.relations reduction16769.input reduction16769.output := by lin_cert using reduction16769.terms
theorem substitutionProof16769 : IsMapEvaluation generatorImages reduction16769.relations [8,8,8,9,13,23,188] reduction16769.output := by lin_cert using reduction16769.terms
def image16770 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16770 : InImage map_37_237 image16770 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16770 : Bundle := named_bundle% "RealMapCertificates/relations/basis16770.json"
theorem reductionProof16770 : EqualModuloRelations reduction16770.relations reduction16770.input reduction16770.output := by lin_cert using reduction16770.terms
theorem substitutionProof16770 : IsMapEvaluation generatorImages reduction16770.relations [8,8,8,8,64,188] reduction16770.output := by lin_cert using reduction16770.terms
def image16771 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16771 : InImage map_37_237 image16771 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16771 : Bundle := named_bundle% "RealMapCertificates/relations/basis16771.json"
theorem reductionProof16771 : EqualModuloRelations reduction16771.relations reduction16771.input reduction16771.output := by lin_cert using reduction16771.terms
theorem substitutionProof16771 : IsMapEvaluation generatorImages reduction16771.relations [0,0,1857] reduction16771.output := by lin_cert using reduction16771.terms
def map_37_238 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16949 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16949 : InImage map_37_238 image16949 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16949 : Bundle := named_bundle% "RealMapCertificates/relations/basis16949.json"
theorem reductionProof16949 : EqualModuloRelations reduction16949.relations reduction16949.input reduction16949.output := by lin_cert using reduction16949.terms
theorem substitutionProof16949 : IsMapEvaluation generatorImages reduction16949.relations [64,821] reduction16949.output := by lin_cert using reduction16949.terms
def image16950 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16950 : InImage map_37_238 image16950 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16950 : Bundle := named_bundle% "RealMapCertificates/relations/basis16950.json"
theorem reductionProof16950 : EqualModuloRelations reduction16950.relations reduction16950.input reduction16950.output := by lin_cert using reduction16950.terms
theorem substitutionProof16950 : IsMapEvaluation generatorImages reduction16950.relations [13,13,13,715] reduction16950.output := by lin_cert using reduction16950.terms
def image16951 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16951 : InImage map_37_238 image16951 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16951 : Bundle := named_bundle% "RealMapCertificates/relations/basis16951.json"
theorem reductionProof16951 : EqualModuloRelations reduction16951.relations reduction16951.input reduction16951.output := by lin_cert using reduction16951.terms
theorem substitutionProof16951 : IsMapEvaluation generatorImages reduction16951.relations [8,20,963] reduction16951.output := by lin_cert using reduction16951.terms
def map_37_239 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image17194 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17194 : InImage map_37_239 image17194 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17194 : Bundle := named_bundle% "RealMapCertificates/relations/basis17194.json"
theorem reductionProof17194 : EqualModuloRelations reduction17194.relations reduction17194.input reduction17194.output := by lin_cert using reduction17194.terms
theorem substitutionProof17194 : IsMapEvaluation generatorImages reduction17194.relations [8,17,1035] reduction17194.output := by lin_cert using reduction17194.terms
def image17195 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17195 : InImage map_37_239 image17195 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17195 : Bundle := named_bundle% "RealMapCertificates/relations/basis17195.json"
theorem reductionProof17195 : EqualModuloRelations reduction17195.relations reduction17195.input reduction17195.output := by lin_cert using reduction17195.terms
theorem substitutionProof17195 : IsMapEvaluation generatorImages reduction17195.relations [8,13,13,13,13,292] reduction17195.output := by lin_cert using reduction17195.terms
def image17196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17196 : InImage map_37_239 image17196 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17196 : Bundle := named_bundle% "RealMapCertificates/relations/basis17196.json"
theorem reductionProof17196 : EqualModuloRelations reduction17196.relations reduction17196.input reduction17196.output := by lin_cert using reduction17196.terms
theorem substitutionProof17196 : IsMapEvaluation generatorImages reduction17196.relations [8,8,72,420] reduction17196.output := by lin_cert using reduction17196.terms
def image17197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17197 : InImage map_37_239 image17197 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17197 : Bundle := named_bundle% "RealMapCertificates/relations/basis17197.json"
theorem reductionProof17197 : EqualModuloRelations reduction17197.relations reduction17197.input reduction17197.output := by lin_cert using reduction17197.terms
theorem substitutionProof17197 : IsMapEvaluation generatorImages reduction17197.relations [8,8,8,8,8,13,294] reduction17197.output := by lin_cert using reduction17197.terms
def image17198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17198 : InImage map_37_239 image17198 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17198 : Bundle := named_bundle% "RealMapCertificates/relations/basis17198.json"
theorem reductionProof17198 : EqualModuloRelations reduction17198.relations reduction17198.input reduction17198.output := by lin_cert using reduction17198.terms
theorem substitutionProof17198 : IsMapEvaluation generatorImages reduction17198.relations [0,260,260] reduction17198.output := by lin_cert using reduction17198.terms
def map_37_240 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17461 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17461 : InImage map_37_240 image17461 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17461 : Bundle := named_bundle% "RealMapCertificates/relations/basis17461.json"
theorem reductionProof17461 : EqualModuloRelations reduction17461.relations reduction17461.input reduction17461.output := by lin_cert using reduction17461.terms
theorem substitutionProof17461 : IsMapEvaluation generatorImages reduction17461.relations [260,274] reduction17461.output := by lin_cert using reduction17461.terms
def image17462 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17462 : InImage map_37_240 image17462 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17462 : Bundle := named_bundle% "RealMapCertificates/relations/basis17462.json"
theorem reductionProof17462 : EqualModuloRelations reduction17462.relations reduction17462.input reduction17462.output := by lin_cert using reduction17462.terms
theorem substitutionProof17462 : IsMapEvaluation generatorImages reduction17462.relations [8,1594] reduction17462.output := by lin_cert using reduction17462.terms
def image17463 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17463 : InImage map_37_240 image17463 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17463 : Bundle := named_bundle% "RealMapCertificates/relations/basis17463.json"
theorem reductionProof17463 : EqualModuloRelations reduction17463.relations reduction17463.input reduction17463.output := by lin_cert using reduction17463.terms
theorem substitutionProof17463 : IsMapEvaluation generatorImages reduction17463.relations [8,8,8,13,13,23,188] reduction17463.output := by lin_cert using reduction17463.terms
def image17464 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17464 : InImage map_37_240 image17464 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17464 : Bundle := named_bundle% "RealMapCertificates/relations/basis17464.json"
theorem reductionProof17464 : EqualModuloRelations reduction17464.relations reduction17464.input reduction17464.output := by lin_cert using reduction17464.terms
theorem substitutionProof17464 : IsMapEvaluation generatorImages reduction17464.relations [8,8,8,8,72,188] reduction17464.output := by lin_cert using reduction17464.terms
def image17465 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17465 : InImage map_37_240 image17465 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17465 : Bundle := named_bundle% "RealMapCertificates/relations/basis17465.json"
theorem reductionProof17465 : EqualModuloRelations reduction17465.relations reduction17465.input reduction17465.output := by lin_cert using reduction17465.terms
theorem substitutionProof17465 : IsMapEvaluation generatorImages reduction17465.relations [1,260,260] reduction17465.output := by lin_cert using reduction17465.terms
def image17466 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17466 : InImage map_37_240 image17466 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17466 : Bundle := named_bundle% "RealMapCertificates/relations/basis17466.json"
theorem reductionProof17466 : EqualModuloRelations reduction17466.relations reduction17466.input reduction17466.output := by lin_cert using reduction17466.terms
theorem substitutionProof17466 : IsMapEvaluation generatorImages reduction17466.relations [0,0,1926] reduction17466.output := by lin_cert using reduction17466.terms
def map_37_241 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17711 : InImage map_37_241 image17711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17711 : Bundle := named_bundle% "RealMapCertificates/relations/basis17711.json"
theorem reductionProof17711 : EqualModuloRelations reduction17711.relations reduction17711.input reduction17711.output := by lin_cert using reduction17711.terms
theorem substitutionProof17711 : IsMapEvaluation generatorImages reduction17711.relations [8,1606] reduction17711.output := by lin_cert using reduction17711.terms
def image17712 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17712 : InImage map_37_241 image17712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17712 : Bundle := named_bundle% "RealMapCertificates/relations/basis17712.json"
theorem reductionProof17712 : EqualModuloRelations reduction17712.relations reduction17712.input reduction17712.output := by lin_cert using reduction17712.terms
theorem substitutionProof17712 : IsMapEvaluation generatorImages reduction17712.relations [8,22,963] reduction17712.output := by lin_cert using reduction17712.terms
def image17713 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17713 : InImage map_37_241 image17713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17713 : Bundle := named_bundle% "RealMapCertificates/relations/basis17713.json"
theorem reductionProof17713 : EqualModuloRelations reduction17713.relations reduction17713.input reduction17713.output := by lin_cert using reduction17713.terms
theorem substitutionProof17713 : IsMapEvaluation generatorImages reduction17713.relations [0,1991] reduction17713.output := by lin_cert using reduction17713.terms
def image17714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17714 : InImage map_37_241 image17714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17714 : Bundle := named_bundle% "RealMapCertificates/relations/basis17714.json"
theorem reductionProof17714 : EqualModuloRelations reduction17714.relations reduction17714.input reduction17714.output := by lin_cert using reduction17714.terms
theorem substitutionProof17714 : IsMapEvaluation generatorImages reduction17714.relations [0,0,1967] reduction17714.output := by lin_cert using reduction17714.terms
def map_37_242 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image17965 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17965 : InImage map_37_242 image17965 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17965 : Bundle := named_bundle% "RealMapCertificates/relations/basis17965.json"
theorem reductionProof17965 : EqualModuloRelations reduction17965.relations reduction17965.input reduction17965.output := by lin_cert using reduction17965.terms
theorem substitutionProof17965 : IsMapEvaluation generatorImages reduction17965.relations [9,13,13,13,13,292] reduction17965.output := by lin_cert using reduction17965.terms
def image17966 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17966 : InImage map_37_242 image17966 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17966 : Bundle := named_bundle% "RealMapCertificates/relations/basis17966.json"
theorem reductionProof17966 : EqualModuloRelations reduction17966.relations reduction17966.input reduction17966.output := by lin_cert using reduction17966.terms
theorem substitutionProof17966 : IsMapEvaluation generatorImages reduction17966.relations [8,8,42,627] reduction17966.output := by lin_cert using reduction17966.terms
def image17967 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17967 : InImage map_37_242 image17967 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17967 : Bundle := named_bundle% "RealMapCertificates/relations/basis17967.json"
theorem reductionProof17967 : EqualModuloRelations reduction17967.relations reduction17967.input reduction17967.output := by lin_cert using reduction17967.terms
theorem substitutionProof17967 : IsMapEvaluation generatorImages reduction17967.relations [8,8,8,64,293] reduction17967.output := by lin_cert using reduction17967.terms
def image17968 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17968 : InImage map_37_242 image17968 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17968 : Bundle := named_bundle% "RealMapCertificates/relations/basis17968.json"
theorem reductionProof17968 : EqualModuloRelations reduction17968.relations reduction17968.input reduction17968.output := by lin_cert using reduction17968.terms
theorem substitutionProof17968 : IsMapEvaluation generatorImages reduction17968.relations [8,8,8,8,9,13,294] reduction17968.output := by lin_cert using reduction17968.terms
def image17969 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17969 : InImage map_37_242 image17969 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17969 : Bundle := named_bundle% "RealMapCertificates/relations/basis17969.json"
theorem reductionProof17969 : EqualModuloRelations reduction17969.relations reduction17969.input reduction17969.output := by lin_cert using reduction17969.terms
theorem substitutionProof17969 : IsMapEvaluation generatorImages reduction17969.relations [1,1991] reduction17969.output := by lin_cert using reduction17969.terms
def image17970 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17970 : InImage map_37_242 image17970 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17970 : Bundle := named_bundle% "RealMapCertificates/relations/basis17970.json"
theorem reductionProof17970 : EqualModuloRelations reduction17970.relations reduction17970.input reduction17970.output := by lin_cert using reduction17970.terms
theorem substitutionProof17970 : IsMapEvaluation generatorImages reduction17970.relations [0,260,278] reduction17970.output := by lin_cert using reduction17970.terms
def image17971 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17971 : InImage map_37_242 image17971 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17971 : Bundle := named_bundle% "RealMapCertificates/relations/basis17971.json"
theorem reductionProof17971 : EqualModuloRelations reduction17971.relations reduction17971.input reduction17971.output := by lin_cert using reduction17971.terms
theorem substitutionProof17971 : IsMapEvaluation generatorImages reduction17971.relations [0,0,1992] reduction17971.output := by lin_cert using reduction17971.terms
def image17972 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17972 : InImage map_37_242 image17972 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17972 : Bundle := named_bundle% "RealMapCertificates/relations/basis17972.json"
theorem reductionProof17972 : EqualModuloRelations reduction17972.relations reduction17972.input reduction17972.output := by lin_cert using reduction17972.terms
theorem substitutionProof17972 : IsMapEvaluation generatorImages reduction17972.relations [0,0,0,0,1927] reduction17972.output := by lin_cert using reduction17972.terms
def map_37_243 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18252 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18252 : InImage map_37_243 image18252 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18252 : Bundle := named_bundle% "RealMapCertificates/relations/basis18252.json"
theorem reductionProof18252 : EqualModuloRelations reduction18252.relations reduction18252.input reduction18252.output := by lin_cert using reduction18252.terms
theorem substitutionProof18252 : IsMapEvaluation generatorImages reduction18252.relations [9,1594] reduction18252.output := by lin_cert using reduction18252.terms
def image18253 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18253 : InImage map_37_243 image18253 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18253 : Bundle := named_bundle% "RealMapCertificates/relations/basis18253.json"
theorem reductionProof18253 : EqualModuloRelations reduction18253.relations reduction18253.input reduction18253.output := by lin_cert using reduction18253.terms
theorem substitutionProof18253 : IsMapEvaluation generatorImages reduction18253.relations [8,8,9,13,13,23,188] reduction18253.output := by lin_cert using reduction18253.terms
def image18254 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18254 : InImage map_37_243 image18254 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18254 : Bundle := named_bundle% "RealMapCertificates/relations/basis18254.json"
theorem reductionProof18254 : EqualModuloRelations reduction18254.relations reduction18254.input reduction18254.output := by lin_cert using reduction18254.terms
theorem substitutionProof18254 : IsMapEvaluation generatorImages reduction18254.relations [8,8,8,8,79,188] reduction18254.output := by lin_cert using reduction18254.terms
def image18255 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18255 : InImage map_37_243 image18255 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18255 : Bundle := named_bundle% "RealMapCertificates/relations/basis18255.json"
theorem reductionProof18255 : EqualModuloRelations reduction18255.relations reduction18255.input reduction18255.output := by lin_cert using reduction18255.terms
theorem substitutionProof18255 : IsMapEvaluation generatorImages reduction18255.relations [0,2058] reduction18255.output := by lin_cert using reduction18255.terms
def image18256 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18256 : InImage map_37_243 image18256 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18256 : Bundle := named_bundle% "RealMapCertificates/relations/basis18256.json"
theorem reductionProof18256 : EqualModuloRelations reduction18256.relations reduction18256.input reduction18256.output := by lin_cert using reduction18256.terms
theorem substitutionProof18256 : IsMapEvaluation generatorImages reduction18256.relations [0,0,2038] reduction18256.output := by lin_cert using reduction18256.terms
def image18257 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18257 : InImage map_37_243 image18257 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18257 : Bundle := named_bundle% "RealMapCertificates/relations/basis18257.json"
theorem reductionProof18257 : EqualModuloRelations reduction18257.relations reduction18257.input reduction18257.output := by lin_cert using reduction18257.terms
theorem substitutionProof18257 : IsMapEvaluation generatorImages reduction18257.relations [0,0,0,1994] reduction18257.output := by lin_cert using reduction18257.terms
def map_37_244 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18453 : InImage map_37_244 image18453 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18453 : Bundle := named_bundle% "RealMapCertificates/relations/basis18453.json"
theorem reductionProof18453 : EqualModuloRelations reduction18453.relations reduction18453.input reduction18453.output := by lin_cert using reduction18453.terms
theorem substitutionProof18453 : IsMapEvaluation generatorImages reduction18453.relations [13,13,13,13,537] reduction18453.output := by lin_cert using reduction18453.terms
def image18454 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18454 : InImage map_37_244 image18454 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18454 : Bundle := named_bundle% "RealMapCertificates/relations/basis18454.json"
theorem reductionProof18454 : EqualModuloRelations reduction18454.relations reduction18454.input reduction18454.output := by lin_cert using reduction18454.terms
theorem substitutionProof18454 : IsMapEvaluation generatorImages reduction18454.relations [13,13,13,13,13,13,13,105] reduction18454.output := by lin_cert using reduction18454.terms
def image18455 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18455 : InImage map_37_244 image18455 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18455 : Bundle := named_bundle% "RealMapCertificates/relations/basis18455.json"
theorem reductionProof18455 : EqualModuloRelations reduction18455.relations reduction18455.input reduction18455.output := by lin_cert using reduction18455.terms
theorem substitutionProof18455 : IsMapEvaluation generatorImages reduction18455.relations [8,149,383] reduction18455.output := by lin_cert using reduction18455.terms
def image18456 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18456 : InImage map_37_244 image18456 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18456 : Bundle := named_bundle% "RealMapCertificates/relations/basis18456.json"
theorem reductionProof18456 : EqualModuloRelations reduction18456.relations reduction18456.input reduction18456.output := by lin_cert using reduction18456.terms
theorem substitutionProof18456 : IsMapEvaluation generatorImages reduction18456.relations [8,29,963] reduction18456.output := by lin_cert using reduction18456.terms
end RealMapCertificates
