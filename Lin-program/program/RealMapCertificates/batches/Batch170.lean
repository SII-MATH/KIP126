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
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 72 => []
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 210 => []
  | 212 => []
  | 217 => [[1,4,4,4,4,4,4,4,4,4]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 227 => [[2,4,4,4,4,4,4,4,4,4]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 258 => [[4,5,5,8,12]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 344 => [[4,4,5,5,8,12]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 472 => []
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 623 => []
  | 668 => []
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 807 => []
  | 809 => []
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 1051 => []
  | 2863 => []
  | 2864 => []
  | _ => []
def map_37_261 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23585 : InImage map_37_261 image23585 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23585 : Bundle := named_bundle% "RealMapCertificates/relations/basis23585.json"
theorem reductionProof23585 : EqualModuloRelations reduction23585.relations reduction23585.input reduction23585.output := by lin_cert using reduction23585.terms
theorem substitutionProof23585 : IsMapEvaluation generatorImages reduction23585.relations [2864] reduction23585.output := by lin_cert using reduction23585.terms
def image23586 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23586 : InImage map_37_261 image23586 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23586 : Bundle := named_bundle% "RealMapCertificates/relations/basis23586.json"
theorem reductionProof23586 : EqualModuloRelations reduction23586.relations reduction23586.input reduction23586.output := by lin_cert using reduction23586.terms
theorem substitutionProof23586 : IsMapEvaluation generatorImages reduction23586.relations [2863] reduction23586.output := by lin_cert using reduction23586.terms
def image23587 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23587 : InImage map_37_261 image23587 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23587 : Bundle := named_bundle% "RealMapCertificates/relations/basis23587.json"
theorem reductionProof23587 : EqualModuloRelations reduction23587.relations reduction23587.input reduction23587.output := by lin_cert using reduction23587.terms
theorem substitutionProof23587 : IsMapEvaluation generatorImages reduction23587.relations [13,13,13,13,13,472] reduction23587.output := by lin_cert using reduction23587.terms
def image23588 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23588 : InImage map_37_261 image23588 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23588 : Bundle := named_bundle% "RealMapCertificates/relations/basis23588.json"
theorem reductionProof23588 : EqualModuloRelations reduction23588.relations reduction23588.input reduction23588.output := by lin_cert using reduction23588.terms
theorem substitutionProof23588 : IsMapEvaluation generatorImages reduction23588.relations [8,8,64,668] reduction23588.output := by lin_cert using reduction23588.terms
def image23589 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23589 : InImage map_37_261 image23589 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23589 : Bundle := named_bundle% "RealMapCertificates/relations/basis23589.json"
theorem reductionProof23589 : EqualModuloRelations reduction23589.relations reduction23589.input reduction23589.output := by lin_cert using reduction23589.terms
theorem substitutionProof23589 : IsMapEvaluation generatorImages reduction23589.relations [8,8,13,13,80,212] reduction23589.output := by lin_cert using reduction23589.terms
def image23590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23590 : InImage map_37_261 image23590 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23590 : Bundle := named_bundle% "RealMapCertificates/relations/basis23590.json"
theorem reductionProof23590 : EqualModuloRelations reduction23590.relations reduction23590.input reduction23590.output := by lin_cert using reduction23590.terms
theorem substitutionProof23590 : IsMapEvaluation generatorImages reduction23590.relations [0,0,0,0,0,0,64,1051] reduction23590.output := by lin_cert using reduction23590.terms
def map_38_38 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image146 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation146 : InImage map_38_38 image146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction146 : Bundle := named_bundle% "RealMapCertificates/relations/basis146.json"
theorem reductionProof146 : EqualModuloRelations reduction146.relations reduction146.input reduction146.output := by lin_cert using reduction146.terms
theorem substitutionProof146 : IsMapEvaluation generatorImages reduction146.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction146.output := by lin_cert using reduction146.terms
def map_38_112 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1631 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1631 : InImage map_38_112 image1631 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1631 : Bundle := named_bundle% "RealMapCertificates/relations/basis1631.json"
theorem reductionProof1631 : EqualModuloRelations reduction1631.relations reduction1631.input reduction1631.output := by lin_cert using reduction1631.terms
theorem substitutionProof1631 : IsMapEvaluation generatorImages reduction1631.relations [1,217] reduction1631.output := by lin_cert using reduction1631.terms
def map_38_113 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1668 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1668 : InImage map_38_113 image1668 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1668 : Bundle := named_bundle% "RealMapCertificates/relations/basis1668.json"
theorem reductionProof1668 : EqualModuloRelations reduction1668.relations reduction1668.input reduction1668.output := by lin_cert using reduction1668.terms
theorem substitutionProof1668 : IsMapEvaluation generatorImages reduction1668.relations [0,227] reduction1668.output := by lin_cert using reduction1668.terms
def map_38_116 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1769 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1769 : InImage map_38_116 image1769 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1769 : Bundle := named_bundle% "RealMapCertificates/relations/basis1769.json"
theorem reductionProof1769 : EqualModuloRelations reduction1769.relations reduction1769.input reduction1769.output := by lin_cert using reduction1769.terms
theorem substitutionProof1769 : IsMapEvaluation generatorImages reduction1769.relations [0,0,236] reduction1769.output := by lin_cert using reduction1769.terms
def map_38_117 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1804 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1804 : InImage map_38_117 image1804 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1804 : Bundle := named_bundle% "RealMapCertificates/relations/basis1804.json"
theorem reductionProof1804 : EqualModuloRelations reduction1804.relations reduction1804.input reduction1804.output := by lin_cert using reduction1804.terms
theorem substitutionProof1804 : IsMapEvaluation generatorImages reduction1804.relations [0,0,0,0,0,0,0,0,0,210] reduction1804.output := by lin_cert using reduction1804.terms
def map_38_118 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image1846 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation1846 : InImage map_38_118 image1846 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1846 : Bundle := named_bundle% "RealMapCertificates/relations/basis1846.json"
theorem reductionProof1846 : EqualModuloRelations reduction1846.relations reduction1846.input reduction1846.output := by lin_cert using reduction1846.terms
theorem substitutionProof1846 : IsMapEvaluation generatorImages reduction1846.relations [1,1,236] reduction1846.output := by lin_cert using reduction1846.terms
def map_38_119 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1885 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1885 : InImage map_38_119 image1885 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1885 : Bundle := named_bundle% "RealMapCertificates/relations/basis1885.json"
theorem reductionProof1885 : EqualModuloRelations reduction1885.relations reduction1885.input reduction1885.output := by lin_cert using reduction1885.terms
theorem substitutionProof1885 : IsMapEvaluation generatorImages reduction1885.relations [0,0,252] reduction1885.output := by lin_cert using reduction1885.terms
def map_38_122 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2004 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2004 : InImage map_38_122 image2004 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2004 : Bundle := named_bundle% "RealMapCertificates/relations/basis2004.json"
theorem reductionProof2004 : EqualModuloRelations reduction2004.relations reduction2004.input reduction2004.output := by lin_cert using reduction2004.terms
theorem substitutionProof2004 : IsMapEvaluation generatorImages reduction2004.relations [0,0,8,182] reduction2004.output := by lin_cert using reduction2004.terms
def map_38_125 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2128 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2128 : InImage map_38_125 image2128 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2128 : Bundle := named_bundle% "RealMapCertificates/relations/basis2128.json"
theorem reductionProof2128 : EqualModuloRelations reduction2128.relations reduction2128.input reduction2128.output := by lin_cert using reduction2128.terms
theorem substitutionProof2128 : IsMapEvaluation generatorImages reduction2128.relations [0,0,8,199] reduction2128.output := by lin_cert using reduction2128.terms
def map_38_128 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2263 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2263 : InImage map_38_128 image2263 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2263 : Bundle := named_bundle% "RealMapCertificates/relations/basis2263.json"
theorem reductionProof2263 : EqualModuloRelations reduction2263.relations reduction2263.input reduction2263.output := by lin_cert using reduction2263.terms
theorem substitutionProof2263 : IsMapEvaluation generatorImages reduction2263.relations [0,0,8,8,145] reduction2263.output := by lin_cert using reduction2263.terms
def map_38_132 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2500 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2500 : InImage map_38_132 image2500 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2500 : Bundle := named_bundle% "RealMapCertificates/relations/basis2500.json"
theorem reductionProof2500 : EqualModuloRelations reduction2500.relations reduction2500.input reduction2500.output := by lin_cert using reduction2500.terms
theorem substitutionProof2500 : IsMapEvaluation generatorImages reduction2500.relations [17,183] reduction2500.output := by lin_cert using reduction2500.terms
def map_38_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2585 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2585 : InImage map_38_133 image2585 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2585 : Bundle := named_bundle% "RealMapCertificates/relations/basis2585.json"
theorem reductionProof2585 : EqualModuloRelations reduction2585.relations reduction2585.input reduction2585.output := by lin_cert using reduction2585.terms
theorem substitutionProof2585 : IsMapEvaluation generatorImages reduction2585.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2585.output := by lin_cert using reduction2585.terms
def map_38_134 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image2644 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2644 : InImage map_38_134 image2644 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2644 : Bundle := named_bundle% "RealMapCertificates/relations/basis2644.json"
theorem reductionProof2644 : EqualModuloRelations reduction2644.relations reduction2644.input reduction2644.output := by lin_cert using reduction2644.terms
theorem substitutionProof2644 : IsMapEvaluation generatorImages reduction2644.relations [1,354] reduction2644.output := by lin_cert using reduction2644.terms
def map_38_135 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2724 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2724 : InImage map_38_135 image2724 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2724 : Bundle := named_bundle% "RealMapCertificates/relations/basis2724.json"
theorem reductionProof2724 : EqualModuloRelations reduction2724.relations reduction2724.input reduction2724.output := by lin_cert using reduction2724.terms
theorem substitutionProof2724 : IsMapEvaluation generatorImages reduction2724.relations [17,200] reduction2724.output := by lin_cert using reduction2724.terms
def map_38_138 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image2949 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation2949 : InImage map_38_138 image2949 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2949 : Bundle := named_bundle% "RealMapCertificates/relations/basis2949.json"
theorem reductionProof2949 : EqualModuloRelations reduction2949.relations reduction2949.input reduction2949.output := by lin_cert using reduction2949.terms
theorem substitutionProof2949 : IsMapEvaluation generatorImages reduction2949.relations [16,17,111] reduction2949.output := by lin_cert using reduction2949.terms
def map_38_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3047 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3047 : InImage map_38_139 image3047 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3047 : Bundle := named_bundle% "RealMapCertificates/relations/basis3047.json"
theorem reductionProof3047 : EqualModuloRelations reduction3047.relations reduction3047.input reduction3047.output := by lin_cert using reduction3047.terms
theorem substitutionProof3047 : IsMapEvaluation generatorImages reduction3047.relations [0,0,0,0,402] reduction3047.output := by lin_cert using reduction3047.terms
def map_38_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3115 : InImage map_38_140 image3115 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3115 : Bundle := named_bundle% "RealMapCertificates/relations/basis3115.json"
theorem reductionProof3115 : EqualModuloRelations reduction3115.relations reduction3115.input reduction3115.output := by lin_cert using reduction3115.terms
theorem substitutionProof3115 : IsMapEvaluation generatorImages reduction3115.relations [0,0,0,0,0,403] reduction3115.output := by lin_cert using reduction3115.terms
def map_38_141 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3204 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3204 : InImage map_38_141 image3204 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3204 : Bundle := named_bundle% "RealMapCertificates/relations/basis3204.json"
theorem reductionProof3204 : EqualModuloRelations reduction3204.relations reduction3204.input reduction3204.output := by lin_cert using reduction3204.terms
theorem substitutionProof3204 : IsMapEvaluation generatorImages reduction3204.relations [8,17,153] reduction3204.output := by lin_cert using reduction3204.terms
def map_38_144 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image3445 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation3445 : InImage map_38_144 image3445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3445 : Bundle := named_bundle% "RealMapCertificates/relations/basis3445.json"
theorem reductionProof3445 : EqualModuloRelations reduction3445.relations reduction3445.input reduction3445.output := by lin_cert using reduction3445.terms
theorem substitutionProof3445 : IsMapEvaluation generatorImages reduction3445.relations [8,8,17,111] reduction3445.output := by lin_cert using reduction3445.terms
def map_38_146 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3606 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3606 : InImage map_38_146 image3606 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3606 : Bundle := named_bundle% "RealMapCertificates/relations/basis3606.json"
theorem reductionProof3606 : EqualModuloRelations reduction3606.relations reduction3606.input reduction3606.output := by lin_cert using reduction3606.terms
theorem substitutionProof3606 : IsMapEvaluation generatorImages reduction3606.relations [0,0,0,0,0,0,452] reduction3606.output := by lin_cert using reduction3606.terms
def map_38_147 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3705 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3705 : InImage map_38_147 image3705 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3705 : Bundle := named_bundle% "RealMapCertificates/relations/basis3705.json"
theorem reductionProof3705 : EqualModuloRelations reduction3705.relations reduction3705.input reduction3705.output := by lin_cert using reduction3705.terms
theorem substitutionProof3705 : IsMapEvaluation generatorImages reduction3705.relations [8,8,17,117] reduction3705.output := by lin_cert using reduction3705.terms
def map_38_150 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image3959 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3959 : InImage map_38_150 image3959 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3959 : Bundle := named_bundle% "RealMapCertificates/relations/basis3959.json"
theorem reductionProof3959 : EqualModuloRelations reduction3959.relations reduction3959.input reduction3959.output := by lin_cert using reduction3959.terms
theorem substitutionProof3959 : IsMapEvaluation generatorImages reduction3959.relations [555] reduction3959.output := by lin_cert using reduction3959.terms
def image3960 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation3960 : InImage map_38_150 image3960 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3960 : Bundle := named_bundle% "RealMapCertificates/relations/basis3960.json"
theorem reductionProof3960 : EqualModuloRelations reduction3960.relations reduction3960.input reduction3960.output := by lin_cert using reduction3960.terms
theorem substitutionProof3960 : IsMapEvaluation generatorImages reduction3960.relations [8,8,16,17,50] reduction3960.output := by lin_cert using reduction3960.terms
def map_38_151 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4079 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4079 : InImage map_38_151 image4079 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4079 : Bundle := named_bundle% "RealMapCertificates/relations/basis4079.json"
theorem reductionProof4079 : EqualModuloRelations reduction4079.relations reduction4079.input reduction4079.output := by lin_cert using reduction4079.terms
theorem substitutionProof4079 : IsMapEvaluation generatorImages reduction4079.relations [0,556] reduction4079.output := by lin_cert using reduction4079.terms
def map_38_153 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4242 : InImage map_38_153 image4242 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4242 : Bundle := named_bundle% "RealMapCertificates/relations/basis4242.json"
theorem reductionProof4242 : EqualModuloRelations reduction4242.relations reduction4242.input reduction4242.output := by lin_cert using reduction4242.terms
theorem substitutionProof4242 : IsMapEvaluation generatorImages reduction4242.relations [8,402] reduction4242.output := by lin_cert using reduction4242.terms
def image4243 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4243 : InImage map_38_153 image4243 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4243 : Bundle := named_bundle% "RealMapCertificates/relations/basis4243.json"
theorem reductionProof4243 : EqualModuloRelations reduction4243.relations reduction4243.input reduction4243.output := by lin_cert using reduction4243.terms
theorem substitutionProof4243 : IsMapEvaluation generatorImages reduction4243.relations [8,8,8,17,78] reduction4243.output := by lin_cert using reduction4243.terms
def map_38_154 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image4328 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation4328 : InImage map_38_154 image4328 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4328 : Bundle := named_bundle% "RealMapCertificates/relations/basis4328.json"
theorem reductionProof4328 : EqualModuloRelations reduction4328.relations reduction4328.input reduction4328.output := by lin_cert using reduction4328.terms
theorem substitutionProof4328 : IsMapEvaluation generatorImages reduction4328.relations [0,8,403] reduction4328.output := by lin_cert using reduction4328.terms
def map_38_156 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image4483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4483 : InImage map_38_156 image4483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction4483 : Bundle := named_bundle% "RealMapCertificates/relations/basis4483.json"
theorem reductionProof4483 : EqualModuloRelations reduction4483.relations reduction4483.input reduction4483.output := by lin_cert using reduction4483.terms
theorem substitutionProof4483 : IsMapEvaluation generatorImages reduction4483.relations [8,432] reduction4483.output := by lin_cert using reduction4483.terms
def image4484 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4484 : InImage map_38_156 image4484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction4484 : Bundle := named_bundle% "RealMapCertificates/relations/basis4484.json"
theorem reductionProof4484 : EqualModuloRelations reduction4484.relations reduction4484.input reduction4484.output := by lin_cert using reduction4484.terms
theorem substitutionProof4484 : IsMapEvaluation generatorImages reduction4484.relations [8,8,8,8,17,50] reduction4484.output := by lin_cert using reduction4484.terms
def image4485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4485 : InImage map_38_156 image4485 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction4485 : Bundle := named_bundle% "RealMapCertificates/relations/basis4485.json"
theorem reductionProof4485 : EqualModuloRelations reduction4485.relations reduction4485.input reduction4485.output := by lin_cert using reduction4485.terms
theorem substitutionProof4485 : IsMapEvaluation generatorImages reduction4485.relations [1,5,452] reduction4485.output := by lin_cert using reduction4485.terms
def map_38_157 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4593 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4593 : InImage map_38_157 image4593 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4593 : Bundle := named_bundle% "RealMapCertificates/relations/basis4593.json"
theorem reductionProof4593 : EqualModuloRelations reduction4593.relations reduction4593.input reduction4593.output := by lin_cert using reduction4593.terms
theorem substitutionProof4593 : IsMapEvaluation generatorImages reduction4593.relations [0,8,433] reduction4593.output := by lin_cert using reduction4593.terms
def image4594 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4594 : InImage map_38_157 image4594 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4594 : Bundle := named_bundle% "RealMapCertificates/relations/basis4594.json"
theorem reductionProof4594 : EqualModuloRelations reduction4594.relations reduction4594.input reduction4594.output := by lin_cert using reduction4594.terms
theorem substitutionProof4594 : IsMapEvaluation generatorImages reduction4594.relations [0,0,595] reduction4594.output := by lin_cert using reduction4594.terms
def map_38_159 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4754 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4754 : InImage map_38_159 image4754 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4754 : Bundle := named_bundle% "RealMapCertificates/relations/basis4754.json"
theorem reductionProof4754 : EqualModuloRelations reduction4754.relations reduction4754.input reduction4754.output := by lin_cert using reduction4754.terms
theorem substitutionProof4754 : IsMapEvaluation generatorImages reduction4754.relations [8,16,224] reduction4754.output := by lin_cert using reduction4754.terms
def image4755 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4755 : InImage map_38_159 image4755 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4755 : Bundle := named_bundle% "RealMapCertificates/relations/basis4755.json"
theorem reductionProof4755 : EqualModuloRelations reduction4755.relations reduction4755.input reduction4755.output := by lin_cert using reduction4755.terms
theorem substitutionProof4755 : IsMapEvaluation generatorImages reduction4755.relations [8,8,8,8,17,56] reduction4755.output := by lin_cert using reduction4755.terms
def map_38_160 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4849 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4849 : InImage map_38_160 image4849 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4849 : Bundle := named_bundle% "RealMapCertificates/relations/basis4849.json"
theorem reductionProof4849 : EqualModuloRelations reduction4849.relations reduction4849.input reduction4849.output := by lin_cert using reduction4849.terms
theorem substitutionProof4849 : IsMapEvaluation generatorImages reduction4849.relations [0,8,16,225] reduction4849.output := by lin_cert using reduction4849.terms
def image4850 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4850 : InImage map_38_160 image4850 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4850 : Bundle := named_bundle% "RealMapCertificates/relations/basis4850.json"
theorem reductionProof4850 : EqualModuloRelations reduction4850.relations reduction4850.input reduction4850.output := by lin_cert using reduction4850.terms
theorem substitutionProof4850 : IsMapEvaluation generatorImages reduction4850.relations [0,0,8,452] reduction4850.output := by lin_cert using reduction4850.terms
def map_38_162 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5025 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5025 : InImage map_38_162 image5025 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5025 : Bundle := named_bundle% "RealMapCertificates/relations/basis5025.json"
theorem reductionProof5025 : EqualModuloRelations reduction5025.relations reduction5025.input reduction5025.output := by lin_cert using reduction5025.terms
theorem substitutionProof5025 : IsMapEvaluation generatorImages reduction5025.relations [8,8,297] reduction5025.output := by lin_cert using reduction5025.terms
def image5026 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5026 : InImage map_38_162 image5026 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5026 : Bundle := named_bundle% "RealMapCertificates/relations/basis5026.json"
theorem reductionProof5026 : EqualModuloRelations reduction5026.relations reduction5026.input reduction5026.output := by lin_cert using reduction5026.terms
theorem substitutionProof5026 : IsMapEvaluation generatorImages reduction5026.relations [8,8,8,8,16,17,17] reduction5026.output := by lin_cert using reduction5026.terms
def map_38_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5143 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5143 : InImage map_38_163 image5143 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5143 : Bundle := named_bundle% "RealMapCertificates/relations/basis5143.json"
theorem reductionProof5143 : EqualModuloRelations reduction5143.relations reduction5143.input reduction5143.output := by lin_cert using reduction5143.terms
theorem substitutionProof5143 : IsMapEvaluation generatorImages reduction5143.relations [0,8,8,298] reduction5143.output := by lin_cert using reduction5143.terms
def map_38_164 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5218 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5218 : InImage map_38_164 image5218 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5218 : Bundle := named_bundle% "RealMapCertificates/relations/basis5218.json"
theorem reductionProof5218 : EqualModuloRelations reduction5218.relations reduction5218.input reduction5218.output := by lin_cert using reduction5218.terms
theorem substitutionProof5218 : IsMapEvaluation generatorImages reduction5218.relations [686] reduction5218.output := by lin_cert using reduction5218.terms
def map_38_165 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5330 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5330 : InImage map_38_165 image5330 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5330 : Bundle := named_bundle% "RealMapCertificates/relations/basis5330.json"
theorem reductionProof5330 : EqualModuloRelations reduction5330.relations reduction5330.input reduction5330.output := by lin_cert using reduction5330.terms
theorem substitutionProof5330 : IsMapEvaluation generatorImages reduction5330.relations [8,8,8,224] reduction5330.output := by lin_cert using reduction5330.terms
def image5331 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5331 : InImage map_38_165 image5331 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5331 : Bundle := named_bundle% "RealMapCertificates/relations/basis5331.json"
theorem reductionProof5331 : EqualModuloRelations reduction5331.relations reduction5331.input reduction5331.output := by lin_cert using reduction5331.terms
theorem substitutionProof5331 : IsMapEvaluation generatorImages reduction5331.relations [8,8,8,8,8,17,40] reduction5331.output := by lin_cert using reduction5331.terms
def image5332 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5332 : InImage map_38_165 image5332 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5332 : Bundle := named_bundle% "RealMapCertificates/relations/basis5332.json"
theorem reductionProof5332 : EqualModuloRelations reduction5332.relations reduction5332.input reduction5332.output := by lin_cert using reduction5332.terms
theorem substitutionProof5332 : IsMapEvaluation generatorImages reduction5332.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5332.output := by lin_cert using reduction5332.terms
def map_38_166 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5446 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5446 : InImage map_38_166 image5446 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5446 : Bundle := named_bundle% "RealMapCertificates/relations/basis5446.json"
theorem reductionProof5446 : EqualModuloRelations reduction5446.relations reduction5446.input reduction5446.output := by lin_cert using reduction5446.terms
theorem substitutionProof5446 : IsMapEvaluation generatorImages reduction5446.relations [1,687] reduction5446.output := by lin_cert using reduction5446.terms
def image5447 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5447 : InImage map_38_166 image5447 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5447 : Bundle := named_bundle% "RealMapCertificates/relations/basis5447.json"
theorem reductionProof5447 : EqualModuloRelations reduction5447.relations reduction5447.input reduction5447.output := by lin_cert using reduction5447.terms
theorem substitutionProof5447 : IsMapEvaluation generatorImages reduction5447.relations [0,8,8,8,225] reduction5447.output := by lin_cert using reduction5447.terms
def map_38_167 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5545 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5545 : InImage map_38_167 image5545 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5545 : Bundle := named_bundle% "RealMapCertificates/relations/basis5545.json"
theorem reductionProof5545 : EqualModuloRelations reduction5545.relations reduction5545.input reduction5545.output := by lin_cert using reduction5545.terms
theorem substitutionProof5545 : IsMapEvaluation generatorImages reduction5545.relations [723] reduction5545.output := by lin_cert using reduction5545.terms
def map_38_168 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5649 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5649 : InImage map_38_168 image5649 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5649 : Bundle := named_bundle% "RealMapCertificates/relations/basis5649.json"
theorem reductionProof5649 : EqualModuloRelations reduction5649.relations reduction5649.input reduction5649.output := by lin_cert using reduction5649.terms
theorem substitutionProof5649 : IsMapEvaluation generatorImages reduction5649.relations [8,8,8,237] reduction5649.output := by lin_cert using reduction5649.terms
def image5650 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5650 : InImage map_38_168 image5650 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5650 : Bundle := named_bundle% "RealMapCertificates/relations/basis5650.json"
theorem reductionProof5650 : EqualModuloRelations reduction5650.relations reduction5650.input reduction5650.output := by lin_cert using reduction5650.terms
theorem substitutionProof5650 : IsMapEvaluation generatorImages reduction5650.relations [8,8,8,8,8,8,17,17] reduction5650.output := by lin_cert using reduction5650.terms
def map_38_170 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image5870 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5870 : InImage map_38_170 image5870 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5870 : Bundle := named_bundle% "RealMapCertificates/relations/basis5870.json"
theorem reductionProof5870 : EqualModuloRelations reduction5870.relations reduction5870.input reduction5870.output := by lin_cert using reduction5870.terms
theorem substitutionProof5870 : IsMapEvaluation generatorImages reduction5870.relations [49,245] reduction5870.output := by lin_cert using reduction5870.terms
def map_38_171 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5994 : InImage map_38_171 image5994 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5994 : Bundle := named_bundle% "RealMapCertificates/relations/basis5994.json"
theorem reductionProof5994 : EqualModuloRelations reduction5994.relations reduction5994.input reduction5994.output := by lin_cert using reduction5994.terms
theorem substitutionProof5994 : IsMapEvaluation generatorImages reduction5994.relations [8,8,8,16,137] reduction5994.output := by lin_cert using reduction5994.terms
def image5995 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5995 : InImage map_38_171 image5995 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5995 : Bundle := named_bundle% "RealMapCertificates/relations/basis5995.json"
theorem reductionProof5995 : EqualModuloRelations reduction5995.relations reduction5995.input reduction5995.output := by lin_cert using reduction5995.terms
theorem substitutionProof5995 : IsMapEvaluation generatorImages reduction5995.relations [8,8,8,8,8,8,17,20] reduction5995.output := by lin_cert using reduction5995.terms
def image5996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5996 : InImage map_38_171 image5996 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5996 : Bundle := named_bundle% "RealMapCertificates/relations/basis5996.json"
theorem reductionProof5996 : EqualModuloRelations reduction5996.relations reduction5996.input reduction5996.output := by lin_cert using reduction5996.terms
theorem substitutionProof5996 : IsMapEvaluation generatorImages reduction5996.relations [0,0,0,0,725] reduction5996.output := by lin_cert using reduction5996.terms
def map_38_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6119 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6119 : InImage map_38_172 image6119 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6119 : Bundle := named_bundle% "RealMapCertificates/relations/basis6119.json"
theorem reductionProof6119 : EqualModuloRelations reduction6119.relations reduction6119.input reduction6119.output := by lin_cert using reduction6119.terms
theorem substitutionProof6119 : IsMapEvaluation generatorImages reduction6119.relations [0,0,0,752] reduction6119.output := by lin_cert using reduction6119.terms
def map_38_173 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6210 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6210 : InImage map_38_173 image6210 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6210 : Bundle := named_bundle% "RealMapCertificates/relations/basis6210.json"
theorem reductionProof6210 : EqualModuloRelations reduction6210.relations reduction6210.input reduction6210.output := by lin_cert using reduction6210.terms
theorem substitutionProof6210 : IsMapEvaluation generatorImages reduction6210.relations [8,596] reduction6210.output := by lin_cert using reduction6210.terms
def map_38_174 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6319 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6319 : InImage map_38_174 image6319 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6319 : Bundle := named_bundle% "RealMapCertificates/relations/basis6319.json"
theorem reductionProof6319 : EqualModuloRelations reduction6319.relations reduction6319.input reduction6319.output := by lin_cert using reduction6319.terms
theorem substitutionProof6319 : IsMapEvaluation generatorImages reduction6319.relations [8,8,8,8,184] reduction6319.output := by lin_cert using reduction6319.terms
def image6320 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6320 : InImage map_38_174 image6320 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6320 : Bundle := named_bundle% "RealMapCertificates/relations/basis6320.json"
theorem reductionProof6320 : EqualModuloRelations reduction6320.relations reduction6320.input reduction6320.output := by lin_cert using reduction6320.terms
theorem substitutionProof6320 : IsMapEvaluation generatorImages reduction6320.relations [8,8,8,8,8,8,16,23] reduction6320.output := by lin_cert using reduction6320.terms
def map_38_176 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image6543 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6543 : InImage map_38_176 image6543 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6543 : Bundle := named_bundle% "RealMapCertificates/relations/basis6543.json"
theorem reductionProof6543 : EqualModuloRelations reduction6543.relations reduction6543.input reduction6543.output := by lin_cert using reduction6543.terms
theorem substitutionProof6543 : IsMapEvaluation generatorImages reduction6543.relations [8,31,245] reduction6543.output := by lin_cert using reduction6543.terms
def image6544 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6544 : InImage map_38_176 image6544 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6544 : Bundle := named_bundle% "RealMapCertificates/relations/basis6544.json"
theorem reductionProof6544 : EqualModuloRelations reduction6544.relations reduction6544.input reduction6544.output := by lin_cert using reduction6544.terms
theorem substitutionProof6544 : IsMapEvaluation generatorImages reduction6544.relations [0,0,64,224] reduction6544.output := by lin_cert using reduction6544.terms
def map_38_177 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6675 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6675 : InImage map_38_177 image6675 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6675 : Bundle := named_bundle% "RealMapCertificates/relations/basis6675.json"
theorem reductionProof6675 : EqualModuloRelations reduction6675.relations reduction6675.input reduction6675.output := by lin_cert using reduction6675.terms
theorem substitutionProof6675 : IsMapEvaluation generatorImages reduction6675.relations [8,8,8,8,8,137] reduction6675.output := by lin_cert using reduction6675.terms
def image6676 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6676 : InImage map_38_177 image6676 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6676 : Bundle := named_bundle% "RealMapCertificates/relations/basis6676.json"
theorem reductionProof6676 : EqualModuloRelations reduction6676.relations reduction6676.input reduction6676.output := by lin_cert using reduction6676.terms
theorem substitutionProof6676 : IsMapEvaluation generatorImages reduction6676.relations [8,8,8,8,8,8,8,45] reduction6676.output := by lin_cert using reduction6676.terms
def image6677 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6677 : InImage map_38_177 image6677 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6677 : Bundle := named_bundle% "RealMapCertificates/relations/basis6677.json"
theorem reductionProof6677 : EqualModuloRelations reduction6677.relations reduction6677.input reduction6677.output := by lin_cert using reduction6677.terms
theorem substitutionProof6677 : IsMapEvaluation generatorImages reduction6677.relations [0,0,0,64,225] reduction6677.output := by lin_cert using reduction6677.terms
def map_38_178 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6797 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6797 : InImage map_38_178 image6797 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6797 : Bundle := named_bundle% "RealMapCertificates/relations/basis6797.json"
theorem reductionProof6797 : EqualModuloRelations reduction6797.relations reduction6797.input reduction6797.output := by lin_cert using reduction6797.terms
theorem substitutionProof6797 : IsMapEvaluation generatorImages reduction6797.relations [1,1,64,224] reduction6797.output := by lin_cert using reduction6797.terms
def image6798 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6798 : InImage map_38_178 image6798 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6798 : Bundle := named_bundle% "RealMapCertificates/relations/basis6798.json"
theorem reductionProof6798 : EqualModuloRelations reduction6798.relations reduction6798.input reduction6798.output := by lin_cert using reduction6798.terms
theorem substitutionProof6798 : IsMapEvaluation generatorImages reduction6798.relations [0,0,0,0,0,17,491] reduction6798.output := by lin_cert using reduction6798.terms
def map_38_179 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6905 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6905 : InImage map_38_179 image6905 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6905 : Bundle := named_bundle% "RealMapCertificates/relations/basis6905.json"
theorem reductionProof6905 : EqualModuloRelations reduction6905.relations reduction6905.input reduction6905.output := by lin_cert using reduction6905.terms
theorem substitutionProof6905 : IsMapEvaluation generatorImages reduction6905.relations [8,8,489] reduction6905.output := by lin_cert using reduction6905.terms
def image6906 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6906 : InImage map_38_179 image6906 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6906 : Bundle := named_bundle% "RealMapCertificates/relations/basis6906.json"
theorem reductionProof6906 : EqualModuloRelations reduction6906.relations reduction6906.input reduction6906.output := by lin_cert using reduction6906.terms
theorem substitutionProof6906 : IsMapEvaluation generatorImages reduction6906.relations [0,0,0,0,0,809] reduction6906.output := by lin_cert using reduction6906.terms
def image6907 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6907 : InImage map_38_179 image6907 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6907 : Bundle := named_bundle% "RealMapCertificates/relations/basis6907.json"
theorem reductionProof6907 : EqualModuloRelations reduction6907.relations reduction6907.input reduction6907.output := by lin_cert using reduction6907.terms
theorem substitutionProof6907 : IsMapEvaluation generatorImages reduction6907.relations [0,0,0,0,0,807] reduction6907.output := by lin_cert using reduction6907.terms
def map_38_180 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7039 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7039 : InImage map_38_180 image7039 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7039 : Bundle := named_bundle% "RealMapCertificates/relations/basis7039.json"
theorem reductionProof7039 : EqualModuloRelations reduction7039.relations reduction7039.input reduction7039.output := by lin_cert using reduction7039.terms
theorem substitutionProof7039 : IsMapEvaluation generatorImages reduction7039.relations [8,8,8,8,8,146] reduction7039.output := by lin_cert using reduction7039.terms
def image7040 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7040 : InImage map_38_180 image7040 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7040 : Bundle := named_bundle% "RealMapCertificates/relations/basis7040.json"
theorem reductionProof7040 : EqualModuloRelations reduction7040.relations reduction7040.input reduction7040.output := by lin_cert using reduction7040.terms
theorem substitutionProof7040 : IsMapEvaluation generatorImages reduction7040.relations [8,8,8,8,8,8,8,8,23] reduction7040.output := by lin_cert using reduction7040.terms
def image7041 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7041 : InImage map_38_180 image7041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7041 : Bundle := named_bundle% "RealMapCertificates/relations/basis7041.json"
theorem reductionProof7041 : EqualModuloRelations reduction7041.relations reduction7041.input reduction7041.output := by lin_cert using reduction7041.terms
theorem substitutionProof7041 : IsMapEvaluation generatorImages reduction7041.relations [0,0,0,0,0,0,0,795] reduction7041.output := by lin_cert using reduction7041.terms
def map_38_182 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7262 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7262 : InImage map_38_182 image7262 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7262 : Bundle := named_bundle% "RealMapCertificates/relations/basis7262.json"
theorem reductionProof7262 : EqualModuloRelations reduction7262.relations reduction7262.input reduction7262.output := by lin_cert using reduction7262.terms
theorem substitutionProof7262 : IsMapEvaluation generatorImages reduction7262.relations [896] reduction7262.output := by lin_cert using reduction7262.terms
def image7263 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7263 : InImage map_38_182 image7263 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7263 : Bundle := named_bundle% "RealMapCertificates/relations/basis7263.json"
theorem reductionProof7263 : EqualModuloRelations reduction7263.relations reduction7263.input reduction7263.output := by lin_cert using reduction7263.terms
theorem substitutionProof7263 : IsMapEvaluation generatorImages reduction7263.relations [8,8,16,245] reduction7263.output := by lin_cert using reduction7263.terms
def map_38_183 : Matrix 2 4 := fun i j => ([false,false,true,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image7404 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7404 : InImage map_38_183 image7404 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7404 : Bundle := named_bundle% "RealMapCertificates/relations/basis7404.json"
theorem reductionProof7404 : EqualModuloRelations reduction7404.relations reduction7404.input reduction7404.output := by lin_cert using reduction7404.terms
theorem substitutionProof7404 : IsMapEvaluation generatorImages reduction7404.relations [918] reduction7404.output := by lin_cert using reduction7404.terms
def image7405 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7405 : InImage map_38_183 image7405 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7405 : Bundle := named_bundle% "RealMapCertificates/relations/basis7405.json"
theorem reductionProof7405 : EqualModuloRelations reduction7405.relations reduction7405.input reduction7405.output := by lin_cert using reduction7405.terms
theorem substitutionProof7405 : IsMapEvaluation generatorImages reduction7405.relations [8,8,8,8,8,16,64] reduction7405.output := by lin_cert using reduction7405.terms
def image7406 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7406 : InImage map_38_183 image7406 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7406 : Bundle := named_bundle% "RealMapCertificates/relations/basis7406.json"
theorem reductionProof7406 : EqualModuloRelations reduction7406.relations reduction7406.input reduction7406.output := by lin_cert using reduction7406.terms
theorem substitutionProof7406 : IsMapEvaluation generatorImages reduction7406.relations [8,8,8,8,8,8,8,9,23] reduction7406.output := by lin_cert using reduction7406.terms
def image7407 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7407 : InImage map_38_183 image7407 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7407 : Bundle := named_bundle% "RealMapCertificates/relations/basis7407.json"
theorem reductionProof7407 : EqualModuloRelations reduction7407.relations reduction7407.input reduction7407.output := by lin_cert using reduction7407.terms
theorem substitutionProof7407 : IsMapEvaluation generatorImages reduction7407.relations [0,0,0,0,64,244] reduction7407.output := by lin_cert using reduction7407.terms
def map_38_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7528 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7528 : InImage map_38_184 image7528 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7528 : Bundle := named_bundle% "RealMapCertificates/relations/basis7528.json"
theorem reductionProof7528 : EqualModuloRelations reduction7528.relations reduction7528.input reduction7528.output := by lin_cert using reduction7528.terms
theorem substitutionProof7528 : IsMapEvaluation generatorImages reduction7528.relations [0,0,0,0,0,138,149] reduction7528.output := by lin_cert using reduction7528.terms
def map_38_185 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7629 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7629 : InImage map_38_185 image7629 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7629 : Bundle := named_bundle% "RealMapCertificates/relations/basis7629.json"
theorem reductionProof7629 : EqualModuloRelations reduction7629.relations reduction7629.input reduction7629.output := by lin_cert using reduction7629.terms
theorem substitutionProof7629 : IsMapEvaluation generatorImages reduction7629.relations [8,725] reduction7629.output := by lin_cert using reduction7629.terms
def image7630 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7630 : InImage map_38_185 image7630 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7630 : Bundle := named_bundle% "RealMapCertificates/relations/basis7630.json"
theorem reductionProof7630 : EqualModuloRelations reduction7630.relations reduction7630.input reduction7630.output := by lin_cert using reduction7630.terms
theorem substitutionProof7630 : IsMapEvaluation generatorImages reduction7630.relations [8,8,8,344] reduction7630.output := by lin_cert using reduction7630.terms
def map_38_186 : Matrix 3 3 := fun i j => ([false,false,true,true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7763 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation7763 : InImage map_38_186 image7763 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7763 : Bundle := named_bundle% "RealMapCertificates/relations/basis7763.json"
theorem reductionProof7763 : EqualModuloRelations reduction7763.relations reduction7763.input reduction7763.output := by lin_cert using reduction7763.terms
theorem substitutionProof7763 : IsMapEvaluation generatorImages reduction7763.relations [954] reduction7763.output := by lin_cert using reduction7763.terms
def image7764 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7764 : InImage map_38_186 image7764 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7764 : Bundle := named_bundle% "RealMapCertificates/relations/basis7764.json"
theorem reductionProof7764 : EqualModuloRelations reduction7764.relations reduction7764.input reduction7764.output := by lin_cert using reduction7764.terms
theorem substitutionProof7764 : IsMapEvaluation generatorImages reduction7764.relations [8,8,8,8,8,8,112] reduction7764.output := by lin_cert using reduction7764.terms
def image7765 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7765 : InImage map_38_186 image7765 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7765 : Bundle := named_bundle% "RealMapCertificates/relations/basis7765.json"
theorem reductionProof7765 : EqualModuloRelations reduction7765.relations reduction7765.input reduction7765.output := by lin_cert using reduction7765.terms
theorem substitutionProof7765 : IsMapEvaluation generatorImages reduction7765.relations [8,8,8,8,8,8,8,13,23] reduction7765.output := by lin_cert using reduction7765.terms
def map_38_188 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7966 : InImage map_38_188 image7966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7966 : Bundle := named_bundle% "RealMapCertificates/relations/basis7966.json"
theorem reductionProof7966 : EqualModuloRelations reduction7966.relations reduction7966.input reduction7966.output := by lin_cert using reduction7966.terms
theorem substitutionProof7966 : IsMapEvaluation generatorImages reduction7966.relations [8,759] reduction7966.output := by lin_cert using reduction7966.terms
def image7967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7967 : InImage map_38_188 image7967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7967 : Bundle := named_bundle% "RealMapCertificates/relations/basis7967.json"
theorem reductionProof7967 : EqualModuloRelations reduction7967.relations reduction7967.input reduction7967.output := by lin_cert using reduction7967.terms
theorem substitutionProof7967 : IsMapEvaluation generatorImages reduction7967.relations [8,8,8,8,245] reduction7967.output := by lin_cert using reduction7967.terms
def image7968 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7968 : InImage map_38_188 image7968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7968 : Bundle := named_bundle% "RealMapCertificates/relations/basis7968.json"
theorem reductionProof7968 : EqualModuloRelations reduction7968.relations reduction7968.input reduction7968.output := by lin_cert using reduction7968.terms
theorem substitutionProof7968 : IsMapEvaluation generatorImages reduction7968.relations [1,955] reduction7968.output := by lin_cert using reduction7968.terms
def map_38_189 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image8116 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8116 : InImage map_38_189 image8116 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8116 : Bundle := named_bundle% "RealMapCertificates/relations/basis8116.json"
theorem reductionProof8116 : EqualModuloRelations reduction8116.relations reduction8116.input reduction8116.output := by lin_cert using reduction8116.terms
theorem substitutionProof8116 : IsMapEvaluation generatorImages reduction8116.relations [8,778] reduction8116.output := by lin_cert using reduction8116.terms
def image8117 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8117 : InImage map_38_189 image8117 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8117 : Bundle := named_bundle% "RealMapCertificates/relations/basis8117.json"
theorem reductionProof8117 : EqualModuloRelations reduction8117.relations reduction8117.input reduction8117.output := by lin_cert using reduction8117.terms
theorem substitutionProof8117 : IsMapEvaluation generatorImages reduction8117.relations [8,8,8,8,8,8,9,13,23] reduction8117.output := by lin_cert using reduction8117.terms
def image8118 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8118 : InImage map_38_189 image8118 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8118 : Bundle := named_bundle% "RealMapCertificates/relations/basis8118.json"
theorem reductionProof8118 : EqualModuloRelations reduction8118.relations reduction8118.input reduction8118.output := by lin_cert using reduction8118.terms
theorem substitutionProof8118 : IsMapEvaluation generatorImages reduction8118.relations [8,8,8,8,8,8,8,64] reduction8118.output := by lin_cert using reduction8118.terms
def image8119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8119 : InImage map_38_189 image8119 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8119 : Bundle := named_bundle% "RealMapCertificates/relations/basis8119.json"
theorem reductionProof8119 : EqualModuloRelations reduction8119.relations reduction8119.input reduction8119.output := by lin_cert using reduction8119.terms
theorem substitutionProof8119 : IsMapEvaluation generatorImages reduction8119.relations [0,17,623] reduction8119.output := by lin_cert using reduction8119.terms
def map_38_190 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image8239 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8239 : InImage map_38_190 image8239 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8239 : Bundle := named_bundle% "RealMapCertificates/relations/basis8239.json"
theorem reductionProof8239 : EqualModuloRelations reduction8239.relations reduction8239.input reduction8239.output := by lin_cert using reduction8239.terms
theorem substitutionProof8239 : IsMapEvaluation generatorImages reduction8239.relations [0,0,0,0,0,0,149,149] reduction8239.output := by lin_cert using reduction8239.terms
def map_38_191 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8350 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8350 : InImage map_38_191 image8350 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8350 : Bundle := named_bundle% "RealMapCertificates/relations/basis8350.json"
theorem reductionProof8350 : EqualModuloRelations reduction8350.relations reduction8350.input reduction8350.output := by lin_cert using reduction8350.terms
theorem substitutionProof8350 : IsMapEvaluation generatorImages reduction8350.relations [8,16,491] reduction8350.output := by lin_cert using reduction8350.terms
def image8351 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8351 : InImage map_38_191 image8351 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8351 : Bundle := named_bundle% "RealMapCertificates/relations/basis8351.json"
theorem reductionProof8351 : EqualModuloRelations reduction8351.relations reduction8351.input reduction8351.output := by lin_cert using reduction8351.terms
theorem substitutionProof8351 : IsMapEvaluation generatorImages reduction8351.relations [8,8,8,8,258] reduction8351.output := by lin_cert using reduction8351.terms
def map_38_192 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8489 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8489 : InImage map_38_192 image8489 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8489 : Bundle := named_bundle% "RealMapCertificates/relations/basis8489.json"
theorem reductionProof8489 : EqualModuloRelations reduction8489.relations reduction8489.input reduction8489.output := by lin_cert using reduction8489.terms
theorem substitutionProof8489 : IsMapEvaluation generatorImages reduction8489.relations [8,138,138] reduction8489.output := by lin_cert using reduction8489.terms
def image8490 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8490 : InImage map_38_192 image8490 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8490 : Bundle := named_bundle% "RealMapCertificates/relations/basis8490.json"
theorem reductionProof8490 : EqualModuloRelations reduction8490.relations reduction8490.input reduction8490.output := by lin_cert using reduction8490.terms
theorem substitutionProof8490 : IsMapEvaluation generatorImages reduction8490.relations [8,8,8,8,8,8,13,13,23] reduction8490.output := by lin_cert using reduction8490.terms
def image8491 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8491 : InImage map_38_192 image8491 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8491 : Bundle := named_bundle% "RealMapCertificates/relations/basis8491.json"
theorem reductionProof8491 : EqualModuloRelations reduction8491.relations reduction8491.input reduction8491.output := by lin_cert using reduction8491.terms
theorem substitutionProof8491 : IsMapEvaluation generatorImages reduction8491.relations [8,8,8,8,8,8,8,72] reduction8491.output := by lin_cert using reduction8491.terms
def image8492 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8492 : InImage map_38_192 image8492 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8492 : Bundle := named_bundle% "RealMapCertificates/relations/basis8492.json"
theorem reductionProof8492 : EqualModuloRelations reduction8492.relations reduction8492.input reduction8492.output := by lin_cert using reduction8492.terms
theorem substitutionProof8492 : IsMapEvaluation generatorImages reduction8492.relations [0,8,17,491] reduction8492.output := by lin_cert using reduction8492.terms
end RealMapCertificates
