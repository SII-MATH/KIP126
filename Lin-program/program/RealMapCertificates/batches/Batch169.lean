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
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 64 => []
  | 72 => []
  | 76 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 133 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 167 => [[7,9,12]]
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 260 => []
  | 278 => []
  | 280 => []
  | 292 => []
  | 293 => []
  | 294 => []
  | 301 => []
  | 318 => []
  | 349 => []
  | 357 => []
  | 383 => []
  | 420 => []
  | 472 => []
  | 627 => []
  | 638 => []
  | 655 => []
  | 692 => []
  | 779 => []
  | 813 => []
  | 834 => []
  | 878 => []
  | 897 => []
  | 898 => []
  | 919 => []
  | 920 => []
  | 940 => []
  | 957 => []
  | 963 => []
  | 975 => []
  | 976 => []
  | 1063 => []
  | 1079 => []
  | 1169 => []
  | 1221 => []
  | 1255 => []
  | 1441 => []
  | 1504 => []
  | 1539 => []
  | 1554 => []
  | 1594 => [[7,7,7,12,12,12]]
  | 1720 => []
  | 1774 => []
  | 1858 => []
  | 2095 => []
  | 2097 => []
  | 2121 => []
  | 2125 => []
  | 2164 => []
  | 2165 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2333 => [[1,9,12,12,12,12]]
  | 2334 => []
  | 2337 => []
  | 2340 => []
  | 2342 => []
  | 2379 => []
  | 2381 => []
  | 2404 => []
  | 2405 => []
  | 2489 => []
  | 2542 => []
  | 2544 => []
  | 2546 => []
  | 2582 => []
  | 2629 => []
  | 2677 => []
  | 2678 => []
  | 2743 => []
  | 2794 => []
  | _ => []
def map_37_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18710 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18710 : InImage map_37_245 image18710 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18710 : Bundle := named_bundle% "RealMapCertificates/relations/basis18710.json"
theorem reductionProof18710 : EqualModuloRelations reduction18710.relations reduction18710.input reduction18710.output := by lin_cert using reduction18710.terms
theorem substitutionProof18710 : IsMapEvaluation generatorImages reduction18710.relations [64,897] reduction18710.output := by lin_cert using reduction18710.terms
def image18711 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18711 : InImage map_37_245 image18711 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18711 : Bundle := named_bundle% "RealMapCertificates/relations/basis18711.json"
theorem reductionProof18711 : EqualModuloRelations reduction18711.relations reduction18711.input reduction18711.output := by lin_cert using reduction18711.terms
theorem substitutionProof18711 : IsMapEvaluation generatorImages reduction18711.relations [13,13,13,13,13,292] reduction18711.output := by lin_cert using reduction18711.terms
def image18712 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18712 : InImage map_37_245 image18712 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18712 : Bundle := named_bundle% "RealMapCertificates/relations/basis18712.json"
theorem reductionProof18712 : EqualModuloRelations reduction18712.relations reduction18712.input reduction18712.output := by lin_cert using reduction18712.terms
theorem substitutionProof18712 : IsMapEvaluation generatorImages reduction18712.relations [8,8,42,655] reduction18712.output := by lin_cert using reduction18712.terms
def image18713 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18713 : InImage map_37_245 image18713 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18713 : Bundle := named_bundle% "RealMapCertificates/relations/basis18713.json"
theorem reductionProof18713 : EqualModuloRelations reduction18713.relations reduction18713.input reduction18713.output := by lin_cert using reduction18713.terms
theorem substitutionProof18713 : IsMapEvaluation generatorImages reduction18713.relations [8,8,8,72,293] reduction18713.output := by lin_cert using reduction18713.terms
def image18714 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18714 : InImage map_37_245 image18714 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18714 : Bundle := named_bundle% "RealMapCertificates/relations/basis18714.json"
theorem reductionProof18714 : EqualModuloRelations reduction18714.relations reduction18714.input reduction18714.output := by lin_cert using reduction18714.terms
theorem substitutionProof18714 : IsMapEvaluation generatorImages reduction18714.relations [8,8,8,8,13,13,294] reduction18714.output := by lin_cert using reduction18714.terms
def image18715 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18715 : InImage map_37_245 image18715 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18715 : Bundle := named_bundle% "RealMapCertificates/relations/basis18715.json"
theorem reductionProof18715 : EqualModuloRelations reduction18715.relations reduction18715.input reduction18715.output := by lin_cert using reduction18715.terms
theorem substitutionProof18715 : IsMapEvaluation generatorImages reduction18715.relations [0,16,1441] reduction18715.output := by lin_cert using reduction18715.terms
def map_37_246 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19003 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19003 : InImage map_37_246 image19003 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19003 : Bundle := named_bundle% "RealMapCertificates/relations/basis19003.json"
theorem reductionProof19003 : EqualModuloRelations reduction19003.relations reduction19003.input reduction19003.output := by lin_cert using reduction19003.terms
theorem substitutionProof19003 : IsMapEvaluation generatorImages reduction19003.relations [64,920] reduction19003.output := by lin_cert using reduction19003.terms
def image19004 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19004 : InImage map_37_246 image19004 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19004 : Bundle := named_bundle% "RealMapCertificates/relations/basis19004.json"
theorem reductionProof19004 : EqualModuloRelations reduction19004.relations reduction19004.input reduction19004.output := by lin_cert using reduction19004.terms
theorem substitutionProof19004 : IsMapEvaluation generatorImages reduction19004.relations [64,919] reduction19004.output := by lin_cert using reduction19004.terms
def image19005 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19005 : InImage map_37_246 image19005 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19005 : Bundle := named_bundle% "RealMapCertificates/relations/basis19005.json"
theorem reductionProof19005 : EqualModuloRelations reduction19005.relations reduction19005.input reduction19005.output := by lin_cert using reduction19005.terms
theorem substitutionProof19005 : IsMapEvaluation generatorImages reduction19005.relations [13,1594] reduction19005.output := by lin_cert using reduction19005.terms
def image19006 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19006 : InImage map_37_246 image19006 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19006 : Bundle := named_bundle% "RealMapCertificates/relations/basis19006.json"
theorem reductionProof19006 : EqualModuloRelations reduction19006.relations reduction19006.input reduction19006.output := by lin_cert using reduction19006.terms
theorem substitutionProof19006 : IsMapEvaluation generatorImages reduction19006.relations [8,8,13,13,13,23,188] reduction19006.output := by lin_cert using reduction19006.terms
def image19007 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19007 : InImage map_37_246 image19007 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19007 : Bundle := named_bundle% "RealMapCertificates/relations/basis19007.json"
theorem reductionProof19007 : EqualModuloRelations reduction19007.relations reduction19007.input reduction19007.output := by lin_cert using reduction19007.terms
theorem substitutionProof19007 : IsMapEvaluation generatorImages reduction19007.relations [8,8,8,8,80,201] reduction19007.output := by lin_cert using reduction19007.terms
def image19008 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19008 : InImage map_37_246 image19008 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19008 : Bundle := named_bundle% "RealMapCertificates/relations/basis19008.json"
theorem reductionProof19008 : EqualModuloRelations reduction19008.relations reduction19008.input reduction19008.output := by lin_cert using reduction19008.terms
theorem substitutionProof19008 : IsMapEvaluation generatorImages reduction19008.relations [0,0,17,1441] reduction19008.output := by lin_cert using reduction19008.terms
def image19009 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19009 : InImage map_37_246 image19009 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19009 : Bundle := named_bundle% "RealMapCertificates/relations/basis19009.json"
theorem reductionProof19009 : EqualModuloRelations reduction19009.relations reduction19009.input reduction19009.output := by lin_cert using reduction19009.terms
theorem substitutionProof19009 : IsMapEvaluation generatorImages reduction19009.relations [0,0,0,2095] reduction19009.output := by lin_cert using reduction19009.terms
def map_37_247 : Matrix 1 4 := fun i j => ([false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19254 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19254 : InImage map_37_247 image19254 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19254 : Bundle := named_bundle% "RealMapCertificates/relations/basis19254.json"
theorem reductionProof19254 : EqualModuloRelations reduction19254.relations reduction19254.input reduction19254.output := by lin_cert using reduction19254.terms
theorem substitutionProof19254 : IsMapEvaluation generatorImages reduction19254.relations [8,32,963] reduction19254.output := by lin_cert using reduction19254.terms
def image19255 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19255 : InImage map_37_247 image19255 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19255 : Bundle := named_bundle% "RealMapCertificates/relations/basis19255.json"
theorem reductionProof19255 : EqualModuloRelations reduction19255.relations reduction19255.input reduction19255.output := by lin_cert using reduction19255.terms
theorem substitutionProof19255 : IsMapEvaluation generatorImages reduction19255.relations [8,16,1169] reduction19255.output := by lin_cert using reduction19255.terms
def image19256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19256 : InImage map_37_247 image19256 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19256 : Bundle := named_bundle% "RealMapCertificates/relations/basis19256.json"
theorem reductionProof19256 : EqualModuloRelations reduction19256.relations reduction19256.input reduction19256.output := by lin_cert using reduction19256.terms
theorem substitutionProof19256 : IsMapEvaluation generatorImages reduction19256.relations [0,0,64,898] reduction19256.output := by lin_cert using reduction19256.terms
def image19257 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19257 : InImage map_37_247 image19257 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19257 : Bundle := named_bundle% "RealMapCertificates/relations/basis19257.json"
theorem reductionProof19257 : EqualModuloRelations reduction19257.relations reduction19257.input reduction19257.output := by lin_cert using reduction19257.terms
theorem substitutionProof19257 : IsMapEvaluation generatorImages reduction19257.relations [0,0,0,2121] reduction19257.output := by lin_cert using reduction19257.terms
def map_37_248 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image19516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19516 : InImage map_37_248 image19516 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19516 : Bundle := named_bundle% "RealMapCertificates/relations/basis19516.json"
theorem reductionProof19516 : EqualModuloRelations reduction19516.relations reduction19516.input reduction19516.output := by lin_cert using reduction19516.terms
theorem substitutionProof19516 : IsMapEvaluation generatorImages reduction19516.relations [64,940] reduction19516.output := by lin_cert using reduction19516.terms
def image19517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19517 : InImage map_37_248 image19517 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19517 : Bundle := named_bundle% "RealMapCertificates/relations/basis19517.json"
theorem reductionProof19517 : EqualModuloRelations reduction19517.relations reduction19517.input reduction19517.output := by lin_cert using reduction19517.terms
theorem substitutionProof19517 : IsMapEvaluation generatorImages reduction19517.relations [8,8,8,1079] reduction19517.output := by lin_cert using reduction19517.terms
def image19518 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19518 : InImage map_37_248 image19518 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19518 : Bundle := named_bundle% "RealMapCertificates/relations/basis19518.json"
theorem reductionProof19518 : EqualModuloRelations reduction19518.relations reduction19518.input reduction19518.output := by lin_cert using reduction19518.terms
theorem substitutionProof19518 : IsMapEvaluation generatorImages reduction19518.relations [8,8,8,9,13,13,294] reduction19518.output := by lin_cert using reduction19518.terms
def image19519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19519 : InImage map_37_248 image19519 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19519 : Bundle := named_bundle% "RealMapCertificates/relations/basis19519.json"
theorem reductionProof19519 : EqualModuloRelations reduction19519.relations reduction19519.input reduction19519.output := by lin_cert using reduction19519.terms
theorem substitutionProof19519 : IsMapEvaluation generatorImages reduction19519.relations [8,8,8,8,834] reduction19519.output := by lin_cert using reduction19519.terms
def image19520 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19520 : InImage map_37_248 image19520 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19520 : Bundle := named_bundle% "RealMapCertificates/relations/basis19520.json"
theorem reductionProof19520 : EqualModuloRelations reduction19520.relations reduction19520.input reduction19520.output := by lin_cert using reduction19520.terms
theorem substitutionProof19520 : IsMapEvaluation generatorImages reduction19520.relations [0,0,0,2164] reduction19520.output := by lin_cert using reduction19520.terms
def image19521 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19521 : InImage map_37_248 image19521 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19521 : Bundle := named_bundle% "RealMapCertificates/relations/basis19521.json"
theorem reductionProof19521 : EqualModuloRelations reduction19521.relations reduction19521.input reduction19521.output := by lin_cert using reduction19521.terms
theorem substitutionProof19521 : IsMapEvaluation generatorImages reduction19521.relations [0,0,0,0,2125] reduction19521.output := by lin_cert using reduction19521.terms
def map_37_249 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19821 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19821 : InImage map_37_249 image19821 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19821 : Bundle := named_bundle% "RealMapCertificates/relations/basis19821.json"
theorem reductionProof19821 : EqualModuloRelations reduction19821.relations reduction19821.input reduction19821.output := by lin_cert using reduction19821.terms
theorem substitutionProof19821 : IsMapEvaluation generatorImages reduction19821.relations [64,957] reduction19821.output := by lin_cert using reduction19821.terms
def image19822 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19822 : InImage map_37_249 image19822 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19822 : Bundle := named_bundle% "RealMapCertificates/relations/basis19822.json"
theorem reductionProof19822 : EqualModuloRelations reduction19822.relations reduction19822.input reduction19822.output := by lin_cert using reduction19822.terms
theorem substitutionProof19822 : IsMapEvaluation generatorImages reduction19822.relations [8,9,13,13,13,23,188] reduction19822.output := by lin_cert using reduction19822.terms
def image19823 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19823 : InImage map_37_249 image19823 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19823 : Bundle := named_bundle% "RealMapCertificates/relations/basis19823.json"
theorem reductionProof19823 : EqualModuloRelations reduction19823.relations reduction19823.input reduction19823.output := by lin_cert using reduction19823.terms
theorem substitutionProof19823 : IsMapEvaluation generatorImages reduction19823.relations [8,8,8,8,80,212] reduction19823.output := by lin_cert using reduction19823.terms
def image19824 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19824 : InImage map_37_249 image19824 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19824 : Bundle := named_bundle% "RealMapCertificates/relations/basis19824.json"
theorem reductionProof19824 : EqualModuloRelations reduction19824.relations reduction19824.input reduction19824.output := by lin_cert using reduction19824.terms
theorem substitutionProof19824 : IsMapEvaluation generatorImages reduction19824.relations [0,0,8,1720] reduction19824.output := by lin_cert using reduction19824.terms
def image19825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19825 : InImage map_37_249 image19825 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19825 : Bundle := named_bundle% "RealMapCertificates/relations/basis19825.json"
theorem reductionProof19825 : EqualModuloRelations reduction19825.relations reduction19825.input reduction19825.output := by lin_cert using reduction19825.terms
theorem substitutionProof19825 : IsMapEvaluation generatorImages reduction19825.relations [0,0,0,0,2165] reduction19825.output := by lin_cert using reduction19825.terms
def image19826 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19826 : InImage map_37_249 image19826 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19826 : Bundle := named_bundle% "RealMapCertificates/relations/basis19826.json"
theorem reductionProof19826 : EqualModuloRelations reduction19826.relations reduction19826.input reduction19826.output := by lin_cert using reduction19826.terms
theorem substitutionProof19826 : IsMapEvaluation generatorImages reduction19826.relations [0,0,0,0,0,0,2097] reduction19826.output := by lin_cert using reduction19826.terms
def map_37_250 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image20037 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20037 : InImage map_37_250 image20037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20037 : Bundle := named_bundle% "RealMapCertificates/relations/basis20037.json"
theorem reductionProof20037 : EqualModuloRelations reduction20037.relations reduction20037.input reduction20037.output := by lin_cert using reduction20037.terms
theorem substitutionProof20037 : IsMapEvaluation generatorImages reduction20037.relations [2333] reduction20037.output := by lin_cert using reduction20037.terms
def image20038 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20038 : InImage map_37_250 image20038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20038 : Bundle := named_bundle% "RealMapCertificates/relations/basis20038.json"
theorem reductionProof20038 : EqualModuloRelations reduction20038.relations reduction20038.input reduction20038.output := by lin_cert using reduction20038.terms
theorem substitutionProof20038 : IsMapEvaluation generatorImages reduction20038.relations [9,32,963] reduction20038.output := by lin_cert using reduction20038.terms
def image20039 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20039 : InImage map_37_250 image20039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20039 : Bundle := named_bundle% "RealMapCertificates/relations/basis20039.json"
theorem reductionProof20039 : EqualModuloRelations reduction20039.relations reduction20039.input reduction20039.output := by lin_cert using reduction20039.terms
theorem substitutionProof20039 : IsMapEvaluation generatorImages reduction20039.relations [9,13,13,13,13,13,13,133] reduction20039.output := by lin_cert using reduction20039.terms
def image20040 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20040 : InImage map_37_250 image20040 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20040 : Bundle := named_bundle% "RealMapCertificates/relations/basis20040.json"
theorem reductionProof20040 : EqualModuloRelations reduction20040.relations reduction20040.input reduction20040.output := by lin_cert using reduction20040.terms
theorem substitutionProof20040 : IsMapEvaluation generatorImages reduction20040.relations [8,8,149,280] reduction20040.output := by lin_cert using reduction20040.terms
def map_37_251 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20323 : InImage map_37_251 image20323 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20323 : Bundle := named_bundle% "RealMapCertificates/relations/basis20323.json"
theorem reductionProof20323 : EqualModuloRelations reduction20323.relations reduction20323.input reduction20323.output := by lin_cert using reduction20323.terms
theorem substitutionProof20323 : IsMapEvaluation generatorImages reduction20323.relations [16,188,260] reduction20323.output := by lin_cert using reduction20323.terms
def image20324 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20324 : InImage map_37_251 image20324 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20324 : Bundle := named_bundle% "RealMapCertificates/relations/basis20324.json"
theorem reductionProof20324 : EqualModuloRelations reduction20324.relations reduction20324.input reduction20324.output := by lin_cert using reduction20324.terms
theorem substitutionProof20324 : IsMapEvaluation generatorImages reduction20324.relations [8,8,9,1079] reduction20324.output := by lin_cert using reduction20324.terms
def image20325 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20325 : InImage map_37_251 image20325 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20325 : Bundle := named_bundle% "RealMapCertificates/relations/basis20325.json"
theorem reductionProof20325 : EqualModuloRelations reduction20325.relations reduction20325.input reduction20325.output := by lin_cert using reduction20325.terms
theorem substitutionProof20325 : IsMapEvaluation generatorImages reduction20325.relations [8,8,8,13,13,13,294] reduction20325.output := by lin_cert using reduction20325.terms
def image20326 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20326 : InImage map_37_251 image20326 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20326 : Bundle := named_bundle% "RealMapCertificates/relations/basis20326.json"
theorem reductionProof20326 : EqualModuloRelations reduction20326.relations reduction20326.input reduction20326.output := by lin_cert using reduction20326.terms
theorem substitutionProof20326 : IsMapEvaluation generatorImages reduction20326.relations [8,8,8,8,878] reduction20326.output := by lin_cert using reduction20326.terms
def image20327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20327 : InImage map_37_251 image20327 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20327 : Bundle := named_bundle% "RealMapCertificates/relations/basis20327.json"
theorem reductionProof20327 : EqualModuloRelations reduction20327.relations reduction20327.input reduction20327.output := by lin_cert using reduction20327.terms
theorem substitutionProof20327 : IsMapEvaluation generatorImages reduction20327.relations [0,64,963] reduction20327.output := by lin_cert using reduction20327.terms
def image20328 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20328 : InImage map_37_251 image20328 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20328 : Bundle := named_bundle% "RealMapCertificates/relations/basis20328.json"
theorem reductionProof20328 : EqualModuloRelations reduction20328.relations reduction20328.input reduction20328.output := by lin_cert using reduction20328.terms
theorem substitutionProof20328 : IsMapEvaluation generatorImages reduction20328.relations [0,8,8,1441] reduction20328.output := by lin_cert using reduction20328.terms
def map_37_252 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image20622 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20622 : InImage map_37_252 image20622 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction20622 : Bundle := named_bundle% "RealMapCertificates/relations/basis20622.json"
theorem reductionProof20622 : EqualModuloRelations reduction20622.relations reduction20622.input reduction20622.output := by lin_cert using reduction20622.terms
theorem substitutionProof20622 : IsMapEvaluation generatorImages reduction20622.relations [2404] reduction20622.output := by lin_cert using reduction20622.terms
def image20623 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20623 : InImage map_37_252 image20623 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction20623 : Bundle := named_bundle% "RealMapCertificates/relations/basis20623.json"
theorem reductionProof20623 : EqualModuloRelations reduction20623.relations reduction20623.input reduction20623.output := by lin_cert using reduction20623.terms
theorem substitutionProof20623 : IsMapEvaluation generatorImages reduction20623.relations [64,64,301] reduction20623.output := by lin_cert using reduction20623.terms
def image20624 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20624 : InImage map_37_252 image20624 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction20624 : Bundle := named_bundle% "RealMapCertificates/relations/basis20624.json"
theorem reductionProof20624 : EqualModuloRelations reduction20624.relations reduction20624.input reduction20624.output := by lin_cert using reduction20624.terms
theorem substitutionProof20624 : IsMapEvaluation generatorImages reduction20624.relations [13,13,1255] reduction20624.output := by lin_cert using reduction20624.terms
def image20625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20625 : InImage map_37_252 image20625 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction20625 : Bundle := named_bundle% "RealMapCertificates/relations/basis20625.json"
theorem reductionProof20625 : EqualModuloRelations reduction20625.relations reduction20625.input reduction20625.output := by lin_cert using reduction20625.terms
theorem substitutionProof20625 : IsMapEvaluation generatorImages reduction20625.relations [13,13,13,13,13,357] reduction20625.output := by lin_cert using reduction20625.terms
def image20626 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20626 : InImage map_37_252 image20626 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction20626 : Bundle := named_bundle% "RealMapCertificates/relations/basis20626.json"
theorem reductionProof20626 : EqualModuloRelations reduction20626.relations reduction20626.input reduction20626.output := by lin_cert using reduction20626.terms
theorem substitutionProof20626 : IsMapEvaluation generatorImages reduction20626.relations [8,64,779] reduction20626.output := by lin_cert using reduction20626.terms
def image20627 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20627 : InImage map_37_252 image20627 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction20627 : Bundle := named_bundle% "RealMapCertificates/relations/basis20627.json"
theorem reductionProof20627 : EqualModuloRelations reduction20627.relations reduction20627.input reduction20627.output := by lin_cert using reduction20627.terms
theorem substitutionProof20627 : IsMapEvaluation generatorImages reduction20627.relations [8,13,13,13,13,23,188] reduction20627.output := by lin_cert using reduction20627.terms
def image20628 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20628 : InImage map_37_252 image20628 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction20628 : Bundle := named_bundle% "RealMapCertificates/relations/basis20628.json"
theorem reductionProof20628 : EqualModuloRelations reduction20628.relations reduction20628.input reduction20628.output := by lin_cert using reduction20628.terms
theorem substitutionProof20628 : IsMapEvaluation generatorImages reduction20628.relations [8,8,8,9,80,212] reduction20628.output := by lin_cert using reduction20628.terms
def image20629 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20629 : InImage map_37_252 image20629 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction20629 : Bundle := named_bundle% "RealMapCertificates/relations/basis20629.json"
theorem reductionProof20629 : EqualModuloRelations reduction20629.relations reduction20629.input reduction20629.output := by lin_cert using reduction20629.terms
theorem substitutionProof20629 : IsMapEvaluation generatorImages reduction20629.relations [1,64,963] reduction20629.output := by lin_cert using reduction20629.terms
def image20630 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20630 : InImage map_37_252 image20630 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction20630 : Bundle := named_bundle% "RealMapCertificates/relations/basis20630.json"
theorem reductionProof20630 : EqualModuloRelations reduction20630.relations reduction20630.input reduction20630.output := by lin_cert using reduction20630.terms
theorem substitutionProof20630 : IsMapEvaluation generatorImages reduction20630.relations [0,0,2334] reduction20630.output := by lin_cert using reduction20630.terms
def image20631 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20631 : InImage map_37_252 image20631 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction20631 : Bundle := named_bundle% "RealMapCertificates/relations/basis20631.json"
theorem reductionProof20631 : EqualModuloRelations reduction20631.relations reduction20631.input reduction20631.output := by lin_cert using reduction20631.terms
theorem substitutionProof20631 : IsMapEvaluation generatorImages reduction20631.relations [0,0,8,1774] reduction20631.output := by lin_cert using reduction20631.terms
def map_37_253 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image20863 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20863 : InImage map_37_253 image20863 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20863 : Bundle := named_bundle% "RealMapCertificates/relations/basis20863.json"
theorem reductionProof20863 : EqualModuloRelations reduction20863.relations reduction20863.input reduction20863.output := by lin_cert using reduction20863.terms
theorem substitutionProof20863 : IsMapEvaluation generatorImages reduction20863.relations [13,32,963] reduction20863.output := by lin_cert using reduction20863.terms
def image20864 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20864 : InImage map_37_253 image20864 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20864 : Bundle := named_bundle% "RealMapCertificates/relations/basis20864.json"
theorem reductionProof20864 : EqualModuloRelations reduction20864.relations reduction20864.input reduction20864.output := by lin_cert using reduction20864.terms
theorem substitutionProof20864 : IsMapEvaluation generatorImages reduction20864.relations [13,13,13,13,13,13,13,133] reduction20864.output := by lin_cert using reduction20864.terms
def image20865 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20865 : InImage map_37_253 image20865 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20865 : Bundle := named_bundle% "RealMapCertificates/relations/basis20865.json"
theorem reductionProof20865 : EqualModuloRelations reduction20865.relations reduction20865.input reduction20865.output := by lin_cert using reduction20865.terms
theorem substitutionProof20865 : IsMapEvaluation generatorImages reduction20865.relations [8,8,8,1169] reduction20865.output := by lin_cert using reduction20865.terms
def image20866 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20866 : InImage map_37_253 image20866 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20866 : Bundle := named_bundle% "RealMapCertificates/relations/basis20866.json"
theorem reductionProof20866 : EqualModuloRelations reduction20866.relations reduction20866.input reduction20866.output := by lin_cert using reduction20866.terms
theorem substitutionProof20866 : IsMapEvaluation generatorImages reduction20866.relations [1,2379] reduction20866.output := by lin_cert using reduction20866.terms
def image20867 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20867 : InImage map_37_253 image20867 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20867 : Bundle := named_bundle% "RealMapCertificates/relations/basis20867.json"
theorem reductionProof20867 : EqualModuloRelations reduction20867.relations reduction20867.input reduction20867.output := by lin_cert using reduction20867.terms
theorem substitutionProof20867 : IsMapEvaluation generatorImages reduction20867.relations [0,2405] reduction20867.output := by lin_cert using reduction20867.terms
def image20868 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20868 : InImage map_37_253 image20868 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20868 : Bundle := named_bundle% "RealMapCertificates/relations/basis20868.json"
theorem reductionProof20868 : EqualModuloRelations reduction20868.relations reduction20868.input reduction20868.output := by lin_cert using reduction20868.terms
theorem substitutionProof20868 : IsMapEvaluation generatorImages reduction20868.relations [0,0,64,976] reduction20868.output := by lin_cert using reduction20868.terms
def image20869 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20869 : InImage map_37_253 image20869 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20869 : Bundle := named_bundle% "RealMapCertificates/relations/basis20869.json"
theorem reductionProof20869 : EqualModuloRelations reduction20869.relations reduction20869.input reduction20869.output := by lin_cert using reduction20869.terms
theorem substitutionProof20869 : IsMapEvaluation generatorImages reduction20869.relations [0,0,0,0,17,1539] reduction20869.output := by lin_cert using reduction20869.terms
def map_37_254 : Matrix 1 7 := fun i j => ([false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image21154 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21154 : InImage map_37_254 image21154 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21154 : Bundle := named_bundle% "RealMapCertificates/relations/basis21154.json"
theorem reductionProof21154 : EqualModuloRelations reduction21154.relations reduction21154.input reduction21154.output := by lin_cert using reduction21154.terms
theorem substitutionProof21154 : IsMapEvaluation generatorImages reduction21154.relations [8,113,627] reduction21154.output := by lin_cert using reduction21154.terms
def image21155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21155 : InImage map_37_254 image21155 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21155 : Bundle := named_bundle% "RealMapCertificates/relations/basis21155.json"
theorem reductionProof21155 : EqualModuloRelations reduction21155.relations reduction21155.input reduction21155.output := by lin_cert using reduction21155.terms
theorem substitutionProof21155 : IsMapEvaluation generatorImages reduction21155.relations [8,8,13,1079] reduction21155.output := by lin_cert using reduction21155.terms
def image21156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21156 : InImage map_37_254 image21156 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21156 : Bundle := named_bundle% "RealMapCertificates/relations/basis21156.json"
theorem reductionProof21156 : EqualModuloRelations reduction21156.relations reduction21156.input reduction21156.output := by lin_cert using reduction21156.terms
theorem substitutionProof21156 : IsMapEvaluation generatorImages reduction21156.relations [8,8,9,13,13,13,294] reduction21156.output := by lin_cert using reduction21156.terms
def image21157 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21157 : InImage map_37_254 image21157 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21157 : Bundle := named_bundle% "RealMapCertificates/relations/basis21157.json"
theorem reductionProof21157 : EqualModuloRelations reduction21157.relations reduction21157.input reduction21157.output := by lin_cert using reduction21157.terms
theorem substitutionProof21157 : IsMapEvaluation generatorImages reduction21157.relations [8,8,8,8,8,692] reduction21157.output := by lin_cert using reduction21157.terms
def image21158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21158 : InImage map_37_254 image21158 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21158 : Bundle := named_bundle% "RealMapCertificates/relations/basis21158.json"
theorem reductionProof21158 : EqualModuloRelations reduction21158.relations reduction21158.input reduction21158.output := by lin_cert using reduction21158.terms
theorem substitutionProof21158 : IsMapEvaluation generatorImages reduction21158.relations [0,8,8,1504] reduction21158.output := by lin_cert using reduction21158.terms
def image21159 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21159 : InImage map_37_254 image21159 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21159 : Bundle := named_bundle% "RealMapCertificates/relations/basis21159.json"
theorem reductionProof21159 : EqualModuloRelations reduction21159.relations reduction21159.input reduction21159.output := by lin_cert using reduction21159.terms
theorem substitutionProof21159 : IsMapEvaluation generatorImages reduction21159.relations [0,0,0,0,260,349] reduction21159.output := by lin_cert using reduction21159.terms
def image21160 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21160 : InImage map_37_254 image21160 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21160 : Bundle := named_bundle% "RealMapCertificates/relations/basis21160.json"
theorem reductionProof21160 : EqualModuloRelations reduction21160.relations reduction21160.input reduction21160.output := by lin_cert using reduction21160.terms
theorem substitutionProof21160 : IsMapEvaluation generatorImages reduction21160.relations [0,0,0,0,0,2304] reduction21160.output := by lin_cert using reduction21160.terms
def map_37_255 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image21498 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21498 : InImage map_37_255 image21498 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21498 : Bundle := named_bundle% "RealMapCertificates/relations/basis21498.json"
theorem reductionProof21498 : EqualModuloRelations reduction21498.relations reduction21498.input reduction21498.output := by lin_cert using reduction21498.terms
theorem substitutionProof21498 : IsMapEvaluation generatorImages reduction21498.relations [2542] reduction21498.output := by lin_cert using reduction21498.terms
def image21499 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21499 : InImage map_37_255 image21499 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21499 : Bundle := named_bundle% "RealMapCertificates/relations/basis21499.json"
theorem reductionProof21499 : EqualModuloRelations reduction21499.relations reduction21499.input reduction21499.output := by lin_cert using reduction21499.terms
theorem substitutionProof21499 : IsMapEvaluation generatorImages reduction21499.relations [9,13,13,13,13,23,188] reduction21499.output := by lin_cert using reduction21499.terms
def image21500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21500 : InImage map_37_255 image21500 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21500 : Bundle := named_bundle% "RealMapCertificates/relations/basis21500.json"
theorem reductionProof21500 : EqualModuloRelations reduction21500.relations reduction21500.input reduction21500.output := by lin_cert using reduction21500.terms
theorem substitutionProof21500 : IsMapEvaluation generatorImages reduction21500.relations [8,64,813] reduction21500.output := by lin_cert using reduction21500.terms
def image21501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21501 : InImage map_37_255 image21501 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21501 : Bundle := named_bundle% "RealMapCertificates/relations/basis21501.json"
theorem reductionProof21501 : EqualModuloRelations reduction21501.relations reduction21501.input reduction21501.output := by lin_cert using reduction21501.terms
theorem substitutionProof21501 : IsMapEvaluation generatorImages reduction21501.relations [8,8,8,13,80,212] reduction21501.output := by lin_cert using reduction21501.terms
def image21502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21502 : InImage map_37_255 image21502 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21502 : Bundle := named_bundle% "RealMapCertificates/relations/basis21502.json"
theorem reductionProof21502 : EqualModuloRelations reduction21502.relations reduction21502.input reduction21502.output := by lin_cert using reduction21502.terms
theorem substitutionProof21502 : IsMapEvaluation generatorImages reduction21502.relations [0,64,64,318] reduction21502.output := by lin_cert using reduction21502.terms
def image21503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21503 : InImage map_37_255 image21503 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21503 : Bundle := named_bundle% "RealMapCertificates/relations/basis21503.json"
theorem reductionProof21503 : EqualModuloRelations reduction21503.relations reduction21503.input reduction21503.output := by lin_cert using reduction21503.terms
theorem substitutionProof21503 : IsMapEvaluation generatorImages reduction21503.relations [0,0,8,1858] reduction21503.output := by lin_cert using reduction21503.terms
def image21504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21504 : InImage map_37_255 image21504 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21504 : Bundle := named_bundle% "RealMapCertificates/relations/basis21504.json"
theorem reductionProof21504 : EqualModuloRelations reduction21504.relations reduction21504.input reduction21504.output := by lin_cert using reduction21504.terms
theorem substitutionProof21504 : IsMapEvaluation generatorImages reduction21504.relations [0,0,0,0,0,2337] reduction21504.output := by lin_cert using reduction21504.terms
def image21505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21505 : InImage map_37_255 image21505 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21505 : Bundle := named_bundle% "RealMapCertificates/relations/basis21505.json"
theorem reductionProof21505 : EqualModuloRelations reduction21505.relations reduction21505.input reduction21505.output := by lin_cert using reduction21505.terms
theorem substitutionProof21505 : IsMapEvaluation generatorImages reduction21505.relations [0,0,0,0,0,0,2307] reduction21505.output := by lin_cert using reduction21505.terms
def map_37_256 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image21761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21761 : InImage map_37_256 image21761 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21761 : Bundle := named_bundle% "RealMapCertificates/relations/basis21761.json"
theorem reductionProof21761 : EqualModuloRelations reduction21761.relations reduction21761.input reduction21761.output := by lin_cert using reduction21761.terms
theorem substitutionProof21761 : IsMapEvaluation generatorImages reduction21761.relations [260,420] reduction21761.output := by lin_cert using reduction21761.terms
def image21762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21762 : InImage map_37_256 image21762 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21762 : Bundle := named_bundle% "RealMapCertificates/relations/basis21762.json"
theorem reductionProof21762 : EqualModuloRelations reduction21762.relations reduction21762.input reduction21762.output := by lin_cert using reduction21762.terms
theorem substitutionProof21762 : IsMapEvaluation generatorImages reduction21762.relations [8,8,8,1221] reduction21762.output := by lin_cert using reduction21762.terms
def image21763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21763 : InImage map_37_256 image21763 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21763 : Bundle := named_bundle% "RealMapCertificates/relations/basis21763.json"
theorem reductionProof21763 : EqualModuloRelations reduction21763.relations reduction21763.input reduction21763.output := by lin_cert using reduction21763.terms
theorem substitutionProof21763 : IsMapEvaluation generatorImages reduction21763.relations [0,0,0,0,0,0,2340] reduction21763.output := by lin_cert using reduction21763.terms
def map_37_257 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22101 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22101 : InImage map_37_257 image22101 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22101 : Bundle := named_bundle% "RealMapCertificates/relations/basis22101.json"
theorem reductionProof22101 : EqualModuloRelations reduction22101.relations reduction22101.input reduction22101.output := by lin_cert using reduction22101.terms
theorem substitutionProof22101 : IsMapEvaluation generatorImages reduction22101.relations [64,138,209] reduction22101.output := by lin_cert using reduction22101.terms
def image22102 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22102 : InImage map_37_257 image22102 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22102 : Bundle := named_bundle% "RealMapCertificates/relations/basis22102.json"
theorem reductionProof22102 : EqualModuloRelations reduction22102.relations reduction22102.input reduction22102.output := by lin_cert using reduction22102.terms
theorem substitutionProof22102 : IsMapEvaluation generatorImages reduction22102.relations [8,9,13,1079] reduction22102.output := by lin_cert using reduction22102.terms
def image22103 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22103 : InImage map_37_257 image22103 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22103 : Bundle := named_bundle% "RealMapCertificates/relations/basis22103.json"
theorem reductionProof22103 : EqualModuloRelations reduction22103.relations reduction22103.input reduction22103.output := by lin_cert using reduction22103.terms
theorem substitutionProof22103 : IsMapEvaluation generatorImages reduction22103.relations [8,8,188,260] reduction22103.output := by lin_cert using reduction22103.terms
def image22104 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22104 : InImage map_37_257 image22104 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22104 : Bundle := named_bundle% "RealMapCertificates/relations/basis22104.json"
theorem reductionProof22104 : EqualModuloRelations reduction22104.relations reduction22104.input reduction22104.output := by lin_cert using reduction22104.terms
theorem substitutionProof22104 : IsMapEvaluation generatorImages reduction22104.relations [8,8,13,13,13,13,294] reduction22104.output := by lin_cert using reduction22104.terms
def image22105 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22105 : InImage map_37_257 image22105 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22105 : Bundle := named_bundle% "RealMapCertificates/relations/basis22105.json"
theorem reductionProof22105 : EqualModuloRelations reduction22105.relations reduction22105.input reduction22105.output := by lin_cert using reduction22105.terms
theorem substitutionProof22105 : IsMapEvaluation generatorImages reduction22105.relations [8,8,8,8,9,692] reduction22105.output := by lin_cert using reduction22105.terms
def image22106 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22106 : InImage map_37_257 image22106 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22106 : Bundle := named_bundle% "RealMapCertificates/relations/basis22106.json"
theorem reductionProof22106 : EqualModuloRelations reduction22106.relations reduction22106.input reduction22106.output := by lin_cert using reduction22106.terms
theorem substitutionProof22106 : IsMapEvaluation generatorImages reduction22106.relations [0,8,8,1554] reduction22106.output := by lin_cert using reduction22106.terms
def image22107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22107 : InImage map_37_257 image22107 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22107 : Bundle := named_bundle% "RealMapCertificates/relations/basis22107.json"
theorem reductionProof22107 : EqualModuloRelations reduction22107.relations reduction22107.input reduction22107.output := by lin_cert using reduction22107.terms
theorem substitutionProof22107 : IsMapEvaluation generatorImages reduction22107.relations [0,0,0,0,0,0,0,2342] reduction22107.output := by lin_cert using reduction22107.terms
def map_37_258 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22460 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22460 : InImage map_37_258 image22460 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22460 : Bundle := named_bundle% "RealMapCertificates/relations/basis22460.json"
theorem reductionProof22460 : EqualModuloRelations reduction22460.relations reduction22460.input reduction22460.output := by lin_cert using reduction22460.terms
theorem substitutionProof22460 : IsMapEvaluation generatorImages reduction22460.relations [2678] reduction22460.output := by lin_cert using reduction22460.terms
def image22461 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22461 : InImage map_37_258 image22461 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22461 : Bundle := named_bundle% "RealMapCertificates/relations/basis22461.json"
theorem reductionProof22461 : EqualModuloRelations reduction22461.relations reduction22461.input reduction22461.output := by lin_cert using reduction22461.terms
theorem substitutionProof22461 : IsMapEvaluation generatorImages reduction22461.relations [2677] reduction22461.output := by lin_cert using reduction22461.terms
def image22462 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22462 : InImage map_37_258 image22462 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22462 : Bundle := named_bundle% "RealMapCertificates/relations/basis22462.json"
theorem reductionProof22462 : EqualModuloRelations reduction22462.relations reduction22462.input reduction22462.output := by lin_cert using reduction22462.terms
theorem substitutionProof22462 : IsMapEvaluation generatorImages reduction22462.relations [13,13,13,13,13,23,188] reduction22462.output := by lin_cert using reduction22462.terms
def image22463 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22463 : InImage map_37_258 image22463 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22463 : Bundle := named_bundle% "RealMapCertificates/relations/basis22463.json"
theorem reductionProof22463 : EqualModuloRelations reduction22463.relations reduction22463.input reduction22463.output := by lin_cert using reduction22463.terms
theorem substitutionProof22463 : IsMapEvaluation generatorImages reduction22463.relations [9,13,13,13,13,472] reduction22463.output := by lin_cert using reduction22463.terms
def image22464 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22464 : InImage map_37_258 image22464 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22464 : Bundle := named_bundle% "RealMapCertificates/relations/basis22464.json"
theorem reductionProof22464 : EqualModuloRelations reduction22464.relations reduction22464.input reduction22464.output := by lin_cert using reduction22464.terms
theorem substitutionProof22464 : IsMapEvaluation generatorImages reduction22464.relations [8,8,64,638] reduction22464.output := by lin_cert using reduction22464.terms
def image22465 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22465 : InImage map_37_258 image22465 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22465 : Bundle := named_bundle% "RealMapCertificates/relations/basis22465.json"
theorem reductionProof22465 : EqualModuloRelations reduction22465.relations reduction22465.input reduction22465.output := by lin_cert using reduction22465.terms
theorem substitutionProof22465 : IsMapEvaluation generatorImages reduction22465.relations [8,8,9,13,80,212] reduction22465.output := by lin_cert using reduction22465.terms
def image22466 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22466 : InImage map_37_258 image22466 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22466 : Bundle := named_bundle% "RealMapCertificates/relations/basis22466.json"
theorem reductionProof22466 : EqualModuloRelations reduction22466.relations reduction22466.input reduction22466.output := by lin_cert using reduction22466.terms
theorem substitutionProof22466 : IsMapEvaluation generatorImages reduction22466.relations [0,0,0,2544] reduction22466.output := by lin_cert using reduction22466.terms
def image22467 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22467 : InImage map_37_258 image22467 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22467 : Bundle := named_bundle% "RealMapCertificates/relations/basis22467.json"
theorem reductionProof22467 : EqualModuloRelations reduction22467.relations reduction22467.input reduction22467.output := by lin_cert using reduction22467.terms
theorem substitutionProof22467 : IsMapEvaluation generatorImages reduction22467.relations [0,0,0,0,0,0,0,2381] reduction22467.output := by lin_cert using reduction22467.terms
def image22468 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22468 : InImage map_37_258 image22468 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22468 : Bundle := named_bundle% "RealMapCertificates/relations/basis22468.json"
theorem reductionProof22468 : EqualModuloRelations reduction22468.relations reduction22468.input reduction22468.output := by lin_cert using reduction22468.terms
theorem substitutionProof22468 : IsMapEvaluation generatorImages reduction22468.relations [0,0,0,0,0,0,0,0,0,2309] reduction22468.output := by lin_cert using reduction22468.terms
def map_37_259 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image22770 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22770 : InImage map_37_259 image22770 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22770 : Bundle := named_bundle% "RealMapCertificates/relations/basis22770.json"
theorem reductionProof22770 : EqualModuloRelations reduction22770.relations reduction22770.input reduction22770.output := by lin_cert using reduction22770.terms
theorem substitutionProof22770 : IsMapEvaluation generatorImages reduction22770.relations [2743] reduction22770.output := by lin_cert using reduction22770.terms
def image22771 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22771 : InImage map_37_259 image22771 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22771 : Bundle := named_bundle% "RealMapCertificates/relations/basis22771.json"
theorem reductionProof22771 : EqualModuloRelations reduction22771.relations reduction22771.input reduction22771.output := by lin_cert using reduction22771.terms
theorem substitutionProof22771 : IsMapEvaluation generatorImages reduction22771.relations [278,420] reduction22771.output := by lin_cert using reduction22771.terms
def image22772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22772 : InImage map_37_259 image22772 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22772 : Bundle := named_bundle% "RealMapCertificates/relations/basis22772.json"
theorem reductionProof22772 : EqualModuloRelations reduction22772.relations reduction22772.input reduction22772.output := by lin_cert using reduction22772.terms
theorem substitutionProof22772 : IsMapEvaluation generatorImages reduction22772.relations [13,13,13,13,13,13,13,13,76] reduction22772.output := by lin_cert using reduction22772.terms
def image22773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22773 : InImage map_37_259 image22773 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22773 : Bundle := named_bundle% "RealMapCertificates/relations/basis22773.json"
theorem reductionProof22773 : EqualModuloRelations reduction22773.relations reduction22773.input reduction22773.output := by lin_cert using reduction22773.terms
theorem substitutionProof22773 : IsMapEvaluation generatorImages reduction22773.relations [8,8,8,167,209] reduction22773.output := by lin_cert using reduction22773.terms
def image22774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22774 : InImage map_37_259 image22774 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22774 : Bundle := named_bundle% "RealMapCertificates/relations/basis22774.json"
theorem reductionProof22774 : EqualModuloRelations reduction22774.relations reduction22774.input reduction22774.output := by lin_cert using reduction22774.terms
theorem substitutionProof22774 : IsMapEvaluation generatorImages reduction22774.relations [1,2629] reduction22774.output := by lin_cert using reduction22774.terms
def image22775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22775 : InImage map_37_259 image22775 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22775 : Bundle := named_bundle% "RealMapCertificates/relations/basis22775.json"
theorem reductionProof22775 : EqualModuloRelations reduction22775.relations reduction22775.input reduction22775.output := by lin_cert using reduction22775.terms
theorem substitutionProof22775 : IsMapEvaluation generatorImages reduction22775.relations [0,0,64,64,349] reduction22775.output := by lin_cert using reduction22775.terms
def image22776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22776 : InImage map_37_259 image22776 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22776 : Bundle := named_bundle% "RealMapCertificates/relations/basis22776.json"
theorem reductionProof22776 : EqualModuloRelations reduction22776.relations reduction22776.input reduction22776.output := by lin_cert using reduction22776.terms
theorem substitutionProof22776 : IsMapEvaluation generatorImages reduction22776.relations [0,0,0,2582] reduction22776.output := by lin_cert using reduction22776.terms
def image22777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22777 : InImage map_37_259 image22777 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22777 : Bundle := named_bundle% "RealMapCertificates/relations/basis22777.json"
theorem reductionProof22777 : EqualModuloRelations reduction22777.relations reduction22777.input reduction22777.output := by lin_cert using reduction22777.terms
theorem substitutionProof22777 : IsMapEvaluation generatorImages reduction22777.relations [0,0,0,0,2546] reduction22777.output := by lin_cert using reduction22777.terms
def map_37_260 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image23145 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23145 : InImage map_37_260 image23145 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23145 : Bundle := named_bundle% "RealMapCertificates/relations/basis23145.json"
theorem reductionProof23145 : EqualModuloRelations reduction23145.relations reduction23145.input reduction23145.output := by lin_cert using reduction23145.terms
theorem substitutionProof23145 : IsMapEvaluation generatorImages reduction23145.relations [2794] reduction23145.output := by lin_cert using reduction23145.terms
def image23146 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23146 : InImage map_37_260 image23146 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23146 : Bundle := named_bundle% "RealMapCertificates/relations/basis23146.json"
theorem reductionProof23146 : EqualModuloRelations reduction23146.relations reduction23146.input reduction23146.output := by lin_cert using reduction23146.terms
theorem substitutionProof23146 : IsMapEvaluation generatorImages reduction23146.relations [64,64,383] reduction23146.output := by lin_cert using reduction23146.terms
def image23147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23147 : InImage map_37_260 image23147 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23147 : Bundle := named_bundle% "RealMapCertificates/relations/basis23147.json"
theorem reductionProof23147 : EqualModuloRelations reduction23147.relations reduction23147.input reduction23147.output := by lin_cert using reduction23147.terms
theorem substitutionProof23147 : IsMapEvaluation generatorImages reduction23147.relations [13,13,13,975] reduction23147.output := by lin_cert using reduction23147.terms
def image23148 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23148 : InImage map_37_260 image23148 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23148 : Bundle := named_bundle% "RealMapCertificates/relations/basis23148.json"
theorem reductionProof23148 : EqualModuloRelations reduction23148.relations reduction23148.input reduction23148.output := by lin_cert using reduction23148.terms
theorem substitutionProof23148 : IsMapEvaluation generatorImages reduction23148.relations [8,13,13,1079] reduction23148.output := by lin_cert using reduction23148.terms
def image23149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23149 : InImage map_37_260 image23149 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23149 : Bundle := named_bundle% "RealMapCertificates/relations/basis23149.json"
theorem reductionProof23149 : EqualModuloRelations reduction23149.relations reduction23149.input reduction23149.output := by lin_cert using reduction23149.terms
theorem substitutionProof23149 : IsMapEvaluation generatorImages reduction23149.relations [8,9,13,13,13,13,294] reduction23149.output := by lin_cert using reduction23149.terms
def image23150 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23150 : InImage map_37_260 image23150 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23150 : Bundle := named_bundle% "RealMapCertificates/relations/basis23150.json"
theorem reductionProof23150 : EqualModuloRelations reduction23150.relations reduction23150.input reduction23150.output := by lin_cert using reduction23150.terms
theorem substitutionProof23150 : IsMapEvaluation generatorImages reduction23150.relations [8,8,188,278] reduction23150.output := by lin_cert using reduction23150.terms
def image23151 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23151 : InImage map_37_260 image23151 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23151 : Bundle := named_bundle% "RealMapCertificates/relations/basis23151.json"
theorem reductionProof23151 : EqualModuloRelations reduction23151.relations reduction23151.input reduction23151.output := by lin_cert using reduction23151.terms
theorem substitutionProof23151 : IsMapEvaluation generatorImages reduction23151.relations [8,8,8,8,13,692] reduction23151.output := by lin_cert using reduction23151.terms
def image23152 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23152 : InImage map_37_260 image23152 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23152 : Bundle := named_bundle% "RealMapCertificates/relations/basis23152.json"
theorem reductionProof23152 : EqualModuloRelations reduction23152.relations reduction23152.input reduction23152.output := by lin_cert using reduction23152.terms
theorem substitutionProof23152 : IsMapEvaluation generatorImages reduction23152.relations [0,0,0,0,64,1063] reduction23152.output := by lin_cert using reduction23152.terms
def image23153 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23153 : InImage map_37_260 image23153 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23153 : Bundle := named_bundle% "RealMapCertificates/relations/basis23153.json"
theorem reductionProof23153 : EqualModuloRelations reduction23153.relations reduction23153.input reduction23153.output := by lin_cert using reduction23153.terms
theorem substitutionProof23153 : IsMapEvaluation generatorImages reduction23153.relations [0,0,0,0,0,0,2489] reduction23153.output := by lin_cert using reduction23153.terms
end RealMapCertificates
