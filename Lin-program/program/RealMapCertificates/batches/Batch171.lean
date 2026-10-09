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
  | 79 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 188 => []
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 233 => [[5,7,9,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 248 => [[7,7,9,12]]
  | 255 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 278 => []
  | 291 => []
  | 316 => []
  | 343 => [[4,4,4,6,8,12]]
  | 346 => []
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 471 => []
  | 491 => []
  | 499 => []
  | 509 => []
  | 516 => []
  | 517 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 558 => []
  | 598 => [[0,6,9,12,12]]
  | 601 => []
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 753 => [[5,7,9,12,12]]
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 928 => [[4,7,7,9,12,12]]
  | 963 => []
  | 974 => []
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1102 => [[4,4,7,7,9,12,12]]
  | 1218 => []
  | 1287 => [[4,4,4,5,7,9,12,12]]
  | 1315 => []
  | 1401 => []
  | 1515 => [[0,0,4,5,8,12,12,12]]
  | 1536 => [[4,6,8,12,12,12]]
  | _ => []
def map_38_194 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image8725 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8725 : InImage map_38_194 image8725 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8725 : Bundle := named_bundle% "RealMapCertificates/relations/basis8725.json"
theorem reductionProof8725 : EqualModuloRelations reduction8725.relations reduction8725.input reduction8725.output := by lin_cert using reduction8725.terms
theorem substitutionProof8725 : IsMapEvaluation generatorImages reduction8725.relations [64,343] reduction8725.output := by lin_cert using reduction8725.terms
def image8726 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8726 : InImage map_38_194 image8726 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8726 : Bundle := named_bundle% "RealMapCertificates/relations/basis8726.json"
theorem reductionProof8726 : EqualModuloRelations reduction8726.relations reduction8726.input reduction8726.output := by lin_cert using reduction8726.terms
theorem substitutionProof8726 : IsMapEvaluation generatorImages reduction8726.relations [8,8,623] reduction8726.output := by lin_cert using reduction8726.terms
def image8727 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8727 : InImage map_38_194 image8727 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8727 : Bundle := named_bundle% "RealMapCertificates/relations/basis8727.json"
theorem reductionProof8727 : EqualModuloRelations reduction8727.relations reduction8727.input reduction8727.output := by lin_cert using reduction8727.terms
theorem substitutionProof8727 : IsMapEvaluation generatorImages reduction8727.relations [8,8,8,8,277] reduction8727.output := by lin_cert using reduction8727.terms
def image8728 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8728 : InImage map_38_194 image8728 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8728 : Bundle := named_bundle% "RealMapCertificates/relations/basis8728.json"
theorem reductionProof8728 : EqualModuloRelations reduction8728.relations reduction8728.input reduction8728.output := by lin_cert using reduction8728.terms
theorem substitutionProof8728 : IsMapEvaluation generatorImages reduction8728.relations [0,0,0,0,0,0,0,0,0,0,0,919] reduction8728.output := by lin_cert using reduction8728.terms
def map_38_195 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image8896 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8896 : InImage map_38_195 image8896 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8896 : Bundle := named_bundle% "RealMapCertificates/relations/basis8896.json"
theorem reductionProof8896 : EqualModuloRelations reduction8896.relations reduction8896.input reduction8896.output := by lin_cert using reduction8896.terms
theorem substitutionProof8896 : IsMapEvaluation generatorImages reduction8896.relations [8,8,637] reduction8896.output := by lin_cert using reduction8896.terms
def image8897 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8897 : InImage map_38_195 image8897 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8897 : Bundle := named_bundle% "RealMapCertificates/relations/basis8897.json"
theorem reductionProof8897 : EqualModuloRelations reduction8897.relations reduction8897.input reduction8897.output := by lin_cert using reduction8897.terms
theorem substitutionProof8897 : IsMapEvaluation generatorImages reduction8897.relations [8,8,8,8,8,9,13,13,23] reduction8897.output := by lin_cert using reduction8897.terms
def image8898 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8898 : InImage map_38_195 image8898 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8898 : Bundle := named_bundle% "RealMapCertificates/relations/basis8898.json"
theorem reductionProof8898 : EqualModuloRelations reduction8898.relations reduction8898.input reduction8898.output := by lin_cert using reduction8898.terms
theorem substitutionProof8898 : IsMapEvaluation generatorImages reduction8898.relations [8,8,8,8,8,8,8,79] reduction8898.output := by lin_cert using reduction8898.terms
def image8899 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8899 : InImage map_38_195 image8899 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8899 : Bundle := named_bundle% "RealMapCertificates/relations/basis8899.json"
theorem reductionProof8899 : EqualModuloRelations reduction8899.relations reduction8899.input reduction8899.output := by lin_cert using reduction8899.terms
theorem substitutionProof8899 : IsMapEvaluation generatorImages reduction8899.relations [0,8,17,516] reduction8899.output := by lin_cert using reduction8899.terms
def image8900 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8900 : InImage map_38_195 image8900 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8900 : Bundle := named_bundle% "RealMapCertificates/relations/basis8900.json"
theorem reductionProof8900 : EqualModuloRelations reduction8900.relations reduction8900.input reduction8900.output := by lin_cert using reduction8900.terms
theorem substitutionProof8900 : IsMapEvaluation generatorImages reduction8900.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,898] reduction8900.output := by lin_cert using reduction8900.terms
def map_38_197 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9155 : InImage map_38_197 image9155 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9155 : Bundle := named_bundle% "RealMapCertificates/relations/basis9155.json"
theorem reductionProof9155 : EqualModuloRelations reduction9155.relations reduction9155.input reduction9155.output := by lin_cert using reduction9155.terms
theorem substitutionProof9155 : IsMapEvaluation generatorImages reduction9155.relations [8,64,244] reduction9155.output := by lin_cert using reduction9155.terms
def image9156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9156 : InImage map_38_197 image9156 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9156 : Bundle := named_bundle% "RealMapCertificates/relations/basis9156.json"
theorem reductionProof9156 : EqualModuloRelations reduction9156.relations reduction9156.input reduction9156.output := by lin_cert using reduction9156.terms
theorem substitutionProof9156 : IsMapEvaluation generatorImages reduction9156.relations [8,8,8,491] reduction9156.output := by lin_cert using reduction9156.terms
def image9157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9157 : InImage map_38_197 image9157 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9157 : Bundle := named_bundle% "RealMapCertificates/relations/basis9157.json"
theorem reductionProof9157 : EqualModuloRelations reduction9157.relations reduction9157.input reduction9157.output := by lin_cert using reduction9157.terms
theorem substitutionProof9157 : IsMapEvaluation generatorImages reduction9157.relations [8,8,8,8,8,207] reduction9157.output := by lin_cert using reduction9157.terms
def map_38_198 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9335 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9335 : InImage map_38_198 image9335 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9335 : Bundle := named_bundle% "RealMapCertificates/relations/basis9335.json"
theorem reductionProof9335 : EqualModuloRelations reduction9335.relations reduction9335.input reduction9335.output := by lin_cert using reduction9335.terms
theorem substitutionProof9335 : IsMapEvaluation generatorImages reduction9335.relations [8,8,664] reduction9335.output := by lin_cert using reduction9335.terms
def image9336 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9336 : InImage map_38_198 image9336 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9336 : Bundle := named_bundle% "RealMapCertificates/relations/basis9336.json"
theorem reductionProof9336 : EqualModuloRelations reduction9336.relations reduction9336.input reduction9336.output := by lin_cert using reduction9336.terms
theorem substitutionProof9336 : IsMapEvaluation generatorImages reduction9336.relations [8,8,8,8,8,13,13,13,23] reduction9336.output := by lin_cert using reduction9336.terms
def image9337 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9337 : InImage map_38_198 image9337 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9337 : Bundle := named_bundle% "RealMapCertificates/relations/basis9337.json"
theorem reductionProof9337 : EqualModuloRelations reduction9337.relations reduction9337.input reduction9337.output := by lin_cert using reduction9337.terms
theorem substitutionProof9337 : IsMapEvaluation generatorImages reduction9337.relations [8,8,8,8,8,8,8,89] reduction9337.output := by lin_cert using reduction9337.terms
def image9338 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9338 : InImage map_38_198 image9338 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9338 : Bundle := named_bundle% "RealMapCertificates/relations/basis9338.json"
theorem reductionProof9338 : EqualModuloRelations reduction9338.relations reduction9338.input reduction9338.output := by lin_cert using reduction9338.terms
theorem substitutionProof9338 : IsMapEvaluation generatorImages reduction9338.relations [0,8,16,17,260] reduction9338.output := by lin_cert using reduction9338.terms
def map_38_200 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9621 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9621 : InImage map_38_200 image9621 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9621 : Bundle := named_bundle% "RealMapCertificates/relations/basis9621.json"
theorem reductionProof9621 : EqualModuloRelations reduction9621.relations reduction9621.input reduction9621.output := by lin_cert using reduction9621.terms
theorem substitutionProof9621 : IsMapEvaluation generatorImages reduction9621.relations [8,64,257] reduction9621.output := by lin_cert using reduction9621.terms
def image9622 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9622 : InImage map_38_200 image9622 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9622 : Bundle := named_bundle% "RealMapCertificates/relations/basis9622.json"
theorem reductionProof9622 : EqualModuloRelations reduction9622.relations reduction9622.input reduction9622.output := by lin_cert using reduction9622.terms
theorem substitutionProof9622 : IsMapEvaluation generatorImages reduction9622.relations [8,8,8,516] reduction9622.output := by lin_cert using reduction9622.terms
def image9623 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9623 : InImage map_38_200 image9623 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9623 : Bundle := named_bundle% "RealMapCertificates/relations/basis9623.json"
theorem reductionProof9623 : EqualModuloRelations reduction9623.relations reduction9623.input reduction9623.output := by lin_cert using reduction9623.terms
theorem substitutionProof9623 : IsMapEvaluation generatorImages reduction9623.relations [8,8,8,8,8,218] reduction9623.output := by lin_cert using reduction9623.terms
def image9624 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9624 : InImage map_38_200 image9624 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9624 : Bundle := named_bundle% "RealMapCertificates/relations/basis9624.json"
theorem reductionProof9624 : EqualModuloRelations reduction9624.relations reduction9624.input reduction9624.output := by lin_cert using reduction9624.terms
theorem substitutionProof9624 : IsMapEvaluation generatorImages reduction9624.relations [1,5,149,149] reduction9624.output := by lin_cert using reduction9624.terms
def map_38_201 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image9825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9825 : InImage map_38_201 image9825 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9825 : Bundle := named_bundle% "RealMapCertificates/relations/basis9825.json"
theorem reductionProof9825 : EqualModuloRelations reduction9825.relations reduction9825.input reduction9825.output := by lin_cert using reduction9825.terms
theorem substitutionProof9825 : IsMapEvaluation generatorImages reduction9825.relations [8,8,8,529] reduction9825.output := by lin_cert using reduction9825.terms
def image9826 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9826 : InImage map_38_201 image9826 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9826 : Bundle := named_bundle% "RealMapCertificates/relations/basis9826.json"
theorem reductionProof9826 : EqualModuloRelations reduction9826.relations reduction9826.input reduction9826.output := by lin_cert using reduction9826.terms
theorem substitutionProof9826 : IsMapEvaluation generatorImages reduction9826.relations [8,8,8,8,9,13,13,13,23] reduction9826.output := by lin_cert using reduction9826.terms
def image9827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9827 : InImage map_38_201 image9827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9827 : Bundle := named_bundle% "RealMapCertificates/relations/basis9827.json"
theorem reductionProof9827 : EqualModuloRelations reduction9827.relations reduction9827.input reduction9827.output := by lin_cert using reduction9827.terms
theorem substitutionProof9827 : IsMapEvaluation generatorImages reduction9827.relations [8,8,8,8,8,8,8,101] reduction9827.output := by lin_cert using reduction9827.terms
def map_38_203 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10119 : InImage map_38_203 image10119 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10119 : Bundle := named_bundle% "RealMapCertificates/relations/basis10119.json"
theorem reductionProof10119 : EqualModuloRelations reduction10119.relations reduction10119.input reduction10119.output := by lin_cert using reduction10119.terms
theorem substitutionProof10119 : IsMapEvaluation generatorImages reduction10119.relations [8,16,64,149] reduction10119.output := by lin_cert using reduction10119.terms
def image10120 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10120 : InImage map_38_203 image10120 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10120 : Bundle := named_bundle% "RealMapCertificates/relations/basis10120.json"
theorem reductionProof10120 : EqualModuloRelations reduction10120.relations reduction10120.input reduction10120.output := by lin_cert using reduction10120.terms
theorem substitutionProof10120 : IsMapEvaluation generatorImages reduction10120.relations [8,8,8,16,260] reduction10120.output := by lin_cert using reduction10120.terms
def image10121 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10121 : InImage map_38_203 image10121 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10121 : Bundle := named_bundle% "RealMapCertificates/relations/basis10121.json"
theorem reductionProof10121 : EqualModuloRelations reduction10121.relations reduction10121.input reduction10121.output := by lin_cert using reduction10121.terms
theorem substitutionProof10121 : IsMapEvaluation generatorImages reduction10121.relations [8,8,8,8,8,233] reduction10121.output := by lin_cert using reduction10121.terms
def image10122 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10122 : InImage map_38_203 image10122 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10122 : Bundle := named_bundle% "RealMapCertificates/relations/basis10122.json"
theorem reductionProof10122 : EqualModuloRelations reduction10122.relations reduction10122.input reduction10122.output := by lin_cert using reduction10122.terms
theorem substitutionProof10122 : IsMapEvaluation generatorImages reduction10122.relations [0,1218] reduction10122.output := by lin_cert using reduction10122.terms
def map_38_204 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image10322 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10322 : InImage map_38_204 image10322 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10322 : Bundle := named_bundle% "RealMapCertificates/relations/basis10322.json"
theorem reductionProof10322 : EqualModuloRelations reduction10322.relations reduction10322.input reduction10322.output := by lin_cert using reduction10322.terms
theorem substitutionProof10322 : IsMapEvaluation generatorImages reduction10322.relations [8,8,8,557] reduction10322.output := by lin_cert using reduction10322.terms
def image10323 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10323 : InImage map_38_204 image10323 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10323 : Bundle := named_bundle% "RealMapCertificates/relations/basis10323.json"
theorem reductionProof10323 : EqualModuloRelations reduction10323.relations reduction10323.input reduction10323.output := by lin_cert using reduction10323.terms
theorem substitutionProof10323 : IsMapEvaluation generatorImages reduction10323.relations [8,8,8,8,13,13,13,13,23] reduction10323.output := by lin_cert using reduction10323.terms
def image10324 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10324 : InImage map_38_204 image10324 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10324 : Bundle := named_bundle% "RealMapCertificates/relations/basis10324.json"
theorem reductionProof10324 : EqualModuloRelations reduction10324.relations reduction10324.input reduction10324.output := by lin_cert using reduction10324.terms
theorem substitutionProof10324 : IsMapEvaluation generatorImages reduction10324.relations [8,8,8,8,8,8,9,101] reduction10324.output := by lin_cert using reduction10324.terms
def image10325 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10325 : InImage map_38_204 image10325 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10325 : Bundle := named_bundle% "RealMapCertificates/relations/basis10325.json"
theorem reductionProof10325 : EqualModuloRelations reduction10325.relations reduction10325.input reduction10325.output := by lin_cert using reduction10325.terms
theorem substitutionProof10325 : IsMapEvaluation generatorImages reduction10325.relations [1,1218] reduction10325.output := by lin_cert using reduction10325.terms
def map_38_205 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10493 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10493 : InImage map_38_205 image10493 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10493 : Bundle := named_bundle% "RealMapCertificates/relations/basis10493.json"
theorem reductionProof10493 : EqualModuloRelations reduction10493.relations reduction10493.input reduction10493.output := by lin_cert using reduction10493.terms
theorem substitutionProof10493 : IsMapEvaluation generatorImages reduction10493.relations [1287] reduction10493.output := by lin_cert using reduction10493.terms
def map_38_206 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10648 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10648 : InImage map_38_206 image10648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10648 : Bundle := named_bundle% "RealMapCertificates/relations/basis10648.json"
theorem reductionProof10648 : EqualModuloRelations reduction10648.relations reduction10648.input reduction10648.output := by lin_cert using reduction10648.terms
theorem substitutionProof10648 : IsMapEvaluation generatorImages reduction10648.relations [8,8,64,206] reduction10648.output := by lin_cert using reduction10648.terms
def image10649 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10649 : InImage map_38_206 image10649 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10649 : Bundle := named_bundle% "RealMapCertificates/relations/basis10649.json"
theorem reductionProof10649 : EqualModuloRelations reduction10649.relations reduction10649.input reduction10649.output := by lin_cert using reduction10649.terms
theorem substitutionProof10649 : IsMapEvaluation generatorImages reduction10649.relations [8,8,8,8,380] reduction10649.output := by lin_cert using reduction10649.terms
def image10650 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10650 : InImage map_38_206 image10650 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10650 : Bundle := named_bundle% "RealMapCertificates/relations/basis10650.json"
theorem reductionProof10650 : EqualModuloRelations reduction10650.relations reduction10650.input reduction10650.output := by lin_cert using reduction10650.terms
theorem substitutionProof10650 : IsMapEvaluation generatorImages reduction10650.relations [8,8,8,8,8,248] reduction10650.output := by lin_cert using reduction10650.terms
def map_38_207 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image10875 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10875 : InImage map_38_207 image10875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10875 : Bundle := named_bundle% "RealMapCertificates/relations/basis10875.json"
theorem reductionProof10875 : EqualModuloRelations reduction10875.relations reduction10875.input reduction10875.output := by lin_cert using reduction10875.terms
theorem substitutionProof10875 : IsMapEvaluation generatorImages reduction10875.relations [8,8,8,9,13,13,13,13,23] reduction10875.output := by lin_cert using reduction10875.terms
def image10876 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10876 : InImage map_38_207 image10876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10876 : Bundle := named_bundle% "RealMapCertificates/relations/basis10876.json"
theorem reductionProof10876 : EqualModuloRelations reduction10876.relations reduction10876.input reduction10876.output := by lin_cert using reduction10876.terms
theorem substitutionProof10876 : IsMapEvaluation generatorImages reduction10876.relations [8,8,8,8,404] reduction10876.output := by lin_cert using reduction10876.terms
def image10877 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10877 : InImage map_38_207 image10877 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10877 : Bundle := named_bundle% "RealMapCertificates/relations/basis10877.json"
theorem reductionProof10877 : EqualModuloRelations reduction10877.relations reduction10877.input reduction10877.output := by lin_cert using reduction10877.terms
theorem substitutionProof10877 : IsMapEvaluation generatorImages reduction10877.relations [8,8,8,8,8,8,13,101] reduction10877.output := by lin_cert using reduction10877.terms
def map_38_208 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image11010 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11010 : InImage map_38_208 image11010 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11010 : Bundle := named_bundle% "RealMapCertificates/relations/basis11010.json"
theorem reductionProof11010 : EqualModuloRelations reduction11010.relations reduction11010.input reduction11010.output := by lin_cert using reduction11010.terms
theorem substitutionProof11010 : IsMapEvaluation generatorImages reduction11010.relations [149,245] reduction11010.output := by lin_cert using reduction11010.terms
def image11011 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11011 : InImage map_38_208 image11011 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11011 : Bundle := named_bundle% "RealMapCertificates/relations/basis11011.json"
theorem reductionProof11011 : EqualModuloRelations reduction11011.relations reduction11011.input reduction11011.output := by lin_cert using reduction11011.terms
theorem substitutionProof11011 : IsMapEvaluation generatorImages reduction11011.relations [0,0,64,491] reduction11011.output := by lin_cert using reduction11011.terms
def map_38_209 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11179 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11179 : InImage map_38_209 image11179 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11179 : Bundle := named_bundle% "RealMapCertificates/relations/basis11179.json"
theorem reductionProof11179 : EqualModuloRelations reduction11179.relations reduction11179.input reduction11179.output := by lin_cert using reduction11179.terms
theorem substitutionProof11179 : IsMapEvaluation generatorImages reduction11179.relations [8,8,8,64,149] reduction11179.output := by lin_cert using reduction11179.terms
def image11180 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11180 : InImage map_38_209 image11180 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11180 : Bundle := named_bundle% "RealMapCertificates/relations/basis11180.json"
theorem reductionProof11180 : EqualModuloRelations reduction11180.relations reduction11180.input reduction11180.output := by lin_cert using reduction11180.terms
theorem substitutionProof11180 : IsMapEvaluation generatorImages reduction11180.relations [8,8,8,8,9,248] reduction11180.output := by lin_cert using reduction11180.terms
def image11181 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11181 : InImage map_38_209 image11181 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11181 : Bundle := named_bundle% "RealMapCertificates/relations/basis11181.json"
theorem reductionProof11181 : EqualModuloRelations reduction11181.relations reduction11181.input reduction11181.output := by lin_cert using reduction11181.terms
theorem substitutionProof11181 : IsMapEvaluation generatorImages reduction11181.relations [8,8,8,8,8,260] reduction11181.output := by lin_cert using reduction11181.terms
def image11182 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11182 : InImage map_38_209 image11182 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11182 : Bundle := named_bundle% "RealMapCertificates/relations/basis11182.json"
theorem reductionProof11182 : EqualModuloRelations reduction11182.relations reduction11182.input reduction11182.output := by lin_cert using reduction11182.terms
theorem substitutionProof11182 : IsMapEvaluation generatorImages reduction11182.relations [0,64,509] reduction11182.output := by lin_cert using reduction11182.terms
def image11183 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11183 : InImage map_38_209 image11183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11183 : Bundle := named_bundle% "RealMapCertificates/relations/basis11183.json"
theorem reductionProof11183 : EqualModuloRelations reduction11183.relations reduction11183.input reduction11183.output := by lin_cert using reduction11183.terms
theorem substitutionProof11183 : IsMapEvaluation generatorImages reduction11183.relations [0,0,0,138,260] reduction11183.output := by lin_cert using reduction11183.terms
def map_38_210 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11381 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11381 : InImage map_38_210 image11381 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11381 : Bundle := named_bundle% "RealMapCertificates/relations/basis11381.json"
theorem reductionProof11381 : EqualModuloRelations reduction11381.relations reduction11381.input reduction11381.output := by lin_cert using reduction11381.terms
theorem substitutionProof11381 : IsMapEvaluation generatorImages reduction11381.relations [8,8,8,13,13,13,13,13,23] reduction11381.output := by lin_cert using reduction11381.terms
def image11382 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11382 : InImage map_38_210 image11382 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11382 : Bundle := named_bundle% "RealMapCertificates/relations/basis11382.json"
theorem reductionProof11382 : EqualModuloRelations reduction11382.relations reduction11382.input reduction11382.output := by lin_cert using reduction11382.terms
theorem substitutionProof11382 : IsMapEvaluation generatorImages reduction11382.relations [8,8,8,8,434] reduction11382.output := by lin_cert using reduction11382.terms
def image11383 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11383 : InImage map_38_210 image11383 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11383 : Bundle := named_bundle% "RealMapCertificates/relations/basis11383.json"
theorem reductionProof11383 : EqualModuloRelations reduction11383.relations reduction11383.input reduction11383.output := by lin_cert using reduction11383.terms
theorem substitutionProof11383 : IsMapEvaluation generatorImages reduction11383.relations [8,8,8,8,8,9,13,101] reduction11383.output := by lin_cert using reduction11383.terms
def image11384 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11384 : InImage map_38_210 image11384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11384 : Bundle := named_bundle% "RealMapCertificates/relations/basis11384.json"
theorem reductionProof11384 : EqualModuloRelations reduction11384.relations reduction11384.input reduction11384.output := by lin_cert using reduction11384.terms
theorem substitutionProof11384 : IsMapEvaluation generatorImages reduction11384.relations [1,1,64,491] reduction11384.output := by lin_cert using reduction11384.terms
def image11385 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11385 : InImage map_38_210 image11385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11385 : Bundle := named_bundle% "RealMapCertificates/relations/basis11385.json"
theorem reductionProof11385 : EqualModuloRelations reduction11385.relations reduction11385.input reduction11385.output := by lin_cert using reduction11385.terms
theorem substitutionProof11385 : IsMapEvaluation generatorImages reduction11385.relations [0,0,0,1315] reduction11385.output := by lin_cert using reduction11385.terms
def map_38_211 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11558 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11558 : InImage map_38_211 image11558 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11558 : Bundle := named_bundle% "RealMapCertificates/relations/basis11558.json"
theorem reductionProof11558 : EqualModuloRelations reduction11558.relations reduction11558.input reduction11558.output := by lin_cert using reduction11558.terms
theorem substitutionProof11558 : IsMapEvaluation generatorImages reduction11558.relations [8,1060] reduction11558.output := by lin_cert using reduction11558.terms
def image11559 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11559 : InImage map_38_211 image11559 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11559 : Bundle := named_bundle% "RealMapCertificates/relations/basis11559.json"
theorem reductionProof11559 : EqualModuloRelations reduction11559.relations reduction11559.input reduction11559.output := by lin_cert using reduction11559.terms
theorem substitutionProof11559 : IsMapEvaluation generatorImages reduction11559.relations [0,0,64,516] reduction11559.output := by lin_cert using reduction11559.terms
def map_38_212 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11715 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11715 : InImage map_38_212 image11715 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11715 : Bundle := named_bundle% "RealMapCertificates/relations/basis11715.json"
theorem reductionProof11715 : EqualModuloRelations reduction11715.relations reduction11715.input reduction11715.output := by lin_cert using reduction11715.terms
theorem substitutionProof11715 : IsMapEvaluation generatorImages reduction11715.relations [8,8,8,64,160] reduction11715.output := by lin_cert using reduction11715.terms
def image11716 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11716 : InImage map_38_212 image11716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11716 : Bundle := named_bundle% "RealMapCertificates/relations/basis11716.json"
theorem reductionProof11716 : EqualModuloRelations reduction11716.relations reduction11716.input reduction11716.output := by lin_cert using reduction11716.terms
theorem substitutionProof11716 : IsMapEvaluation generatorImages reduction11716.relations [8,8,8,8,13,248] reduction11716.output := by lin_cert using reduction11716.terms
def image11717 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11717 : InImage map_38_212 image11717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11717 : Bundle := named_bundle% "RealMapCertificates/relations/basis11717.json"
theorem reductionProof11717 : EqualModuloRelations reduction11717.relations reduction11717.input reduction11717.output := by lin_cert using reduction11717.terms
theorem substitutionProof11717 : IsMapEvaluation generatorImages reduction11717.relations [8,8,8,8,8,278] reduction11717.output := by lin_cert using reduction11717.terms
def map_38_213 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image11961 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11961 : InImage map_38_213 image11961 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11961 : Bundle := named_bundle% "RealMapCertificates/relations/basis11961.json"
theorem reductionProof11961 : EqualModuloRelations reduction11961.relations reduction11961.input reduction11961.output := by lin_cert using reduction11961.terms
theorem substitutionProof11961 : IsMapEvaluation generatorImages reduction11961.relations [64,64,137] reduction11961.output := by lin_cert using reduction11961.terms
def image11962 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11962 : InImage map_38_213 image11962 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11962 : Bundle := named_bundle% "RealMapCertificates/relations/basis11962.json"
theorem reductionProof11962 : EqualModuloRelations reduction11962.relations reduction11962.input reduction11962.output := by lin_cert using reduction11962.terms
theorem substitutionProof11962 : IsMapEvaluation generatorImages reduction11962.relations [8,8,9,13,13,13,13,13,23] reduction11962.output := by lin_cert using reduction11962.terms
def image11963 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11963 : InImage map_38_213 image11963 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11963 : Bundle := named_bundle% "RealMapCertificates/relations/basis11963.json"
theorem reductionProof11963 : EqualModuloRelations reduction11963.relations reduction11963.input reduction11963.output := by lin_cert using reduction11963.terms
theorem substitutionProof11963 : IsMapEvaluation generatorImages reduction11963.relations [8,8,8,8,471] reduction11963.output := by lin_cert using reduction11963.terms
def image11964 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11964 : InImage map_38_213 image11964 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11964 : Bundle := named_bundle% "RealMapCertificates/relations/basis11964.json"
theorem reductionProof11964 : EqualModuloRelations reduction11964.relations reduction11964.input reduction11964.output := by lin_cert using reduction11964.terms
theorem substitutionProof11964 : IsMapEvaluation generatorImages reduction11964.relations [8,8,8,8,8,13,13,101] reduction11964.output := by lin_cert using reduction11964.terms
def map_38_214 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12136 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12136 : InImage map_38_214 image12136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12136 : Bundle := named_bundle% "RealMapCertificates/relations/basis12136.json"
theorem reductionProof12136 : EqualModuloRelations reduction12136.relations reduction12136.input reduction12136.output := by lin_cert using reduction12136.terms
theorem substitutionProof12136 : IsMapEvaluation generatorImages reduction12136.relations [8,1102] reduction12136.output := by lin_cert using reduction12136.terms
def image12137 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12137 : InImage map_38_214 image12137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12137 : Bundle := named_bundle% "RealMapCertificates/relations/basis12137.json"
theorem reductionProof12137 : EqualModuloRelations reduction12137.relations reduction12137.input reduction12137.output := by lin_cert using reduction12137.terms
theorem substitutionProof12137 : IsMapEvaluation generatorImages reduction12137.relations [0,64,64,138] reduction12137.output := by lin_cert using reduction12137.terms
def image12138 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12138 : InImage map_38_214 image12138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12138 : Bundle := named_bundle% "RealMapCertificates/relations/basis12138.json"
theorem reductionProof12138 : EqualModuloRelations reduction12138.relations reduction12138.input reduction12138.output := by lin_cert using reduction12138.terms
theorem substitutionProof12138 : IsMapEvaluation generatorImages reduction12138.relations [0,0,16,64,260] reduction12138.output := by lin_cert using reduction12138.terms
def map_38_215 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image12315 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12315 : InImage map_38_215 image12315 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12315 : Bundle := named_bundle% "RealMapCertificates/relations/basis12315.json"
theorem reductionProof12315 : EqualModuloRelations reduction12315.relations reduction12315.input reduction12315.output := by lin_cert using reduction12315.terms
theorem substitutionProof12315 : IsMapEvaluation generatorImages reduction12315.relations [8,8,8,16,347] reduction12315.output := by lin_cert using reduction12315.terms
def image12316 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12316 : InImage map_38_215 image12316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12316 : Bundle := named_bundle% "RealMapCertificates/relations/basis12316.json"
theorem reductionProof12316 : EqualModuloRelations reduction12316.relations reduction12316.input reduction12316.output := by lin_cert using reduction12316.terms
theorem substitutionProof12316 : IsMapEvaluation generatorImages reduction12316.relations [8,8,8,9,13,248] reduction12316.output := by lin_cert using reduction12316.terms
def image12317 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12317 : InImage map_38_215 image12317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12317 : Bundle := named_bundle% "RealMapCertificates/relations/basis12317.json"
theorem reductionProof12317 : EqualModuloRelations reduction12317.relations reduction12317.input reduction12317.output := by lin_cert using reduction12317.terms
theorem substitutionProof12317 : IsMapEvaluation generatorImages reduction12317.relations [8,8,8,8,8,291] reduction12317.output := by lin_cert using reduction12317.terms
def image12318 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12318 : InImage map_38_215 image12318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12318 : Bundle := named_bundle% "RealMapCertificates/relations/basis12318.json"
theorem reductionProof12318 : EqualModuloRelations reduction12318.relations reduction12318.input reduction12318.output := by lin_cert using reduction12318.terms
theorem substitutionProof12318 : IsMapEvaluation generatorImages reduction12318.relations [0,0,0,0,149,260] reduction12318.output := by lin_cert using reduction12318.terms
def map_38_216 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image12525 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12525 : InImage map_38_216 image12525 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction12525 : Bundle := named_bundle% "RealMapCertificates/relations/basis12525.json"
theorem reductionProof12525 : EqualModuloRelations reduction12525.relations reduction12525.input reduction12525.output := by lin_cert using reduction12525.terms
theorem substitutionProof12525 : IsMapEvaluation generatorImages reduction12525.relations [64,64,146] reduction12525.output := by lin_cert using reduction12525.terms
def image12526 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12526 : InImage map_38_216 image12526 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction12526 : Bundle := named_bundle% "RealMapCertificates/relations/basis12526.json"
theorem reductionProof12526 : EqualModuloRelations reduction12526.relations reduction12526.input reduction12526.output := by lin_cert using reduction12526.terms
theorem substitutionProof12526 : IsMapEvaluation generatorImages reduction12526.relations [8,8,13,13,13,13,13,13,23] reduction12526.output := by lin_cert using reduction12526.terms
def image12527 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12527 : InImage map_38_216 image12527 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction12527 : Bundle := named_bundle% "RealMapCertificates/relations/basis12527.json"
theorem reductionProof12527 : EqualModuloRelations reduction12527.relations reduction12527.input reduction12527.output := by lin_cert using reduction12527.terms
theorem substitutionProof12527 : IsMapEvaluation generatorImages reduction12527.relations [8,8,8,8,499] reduction12527.output := by lin_cert using reduction12527.terms
def image12528 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12528 : InImage map_38_216 image12528 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction12528 : Bundle := named_bundle% "RealMapCertificates/relations/basis12528.json"
theorem reductionProof12528 : EqualModuloRelations reduction12528.relations reduction12528.input reduction12528.output := by lin_cert using reduction12528.terms
theorem substitutionProof12528 : IsMapEvaluation generatorImages reduction12528.relations [8,8,8,8,9,13,13,101] reduction12528.output := by lin_cert using reduction12528.terms
def image12529 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12529 : InImage map_38_216 image12529 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction12529 : Bundle := named_bundle% "RealMapCertificates/relations/basis12529.json"
theorem reductionProof12529 : EqualModuloRelations reduction12529.relations reduction12529.input reduction12529.output := by lin_cert using reduction12529.terms
theorem substitutionProof12529 : IsMapEvaluation generatorImages reduction12529.relations [0,0,0,64,558] reduction12529.output := by lin_cert using reduction12529.terms
def image12530 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12530 : InImage map_38_216 image12530 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction12530 : Bundle := named_bundle% "RealMapCertificates/relations/basis12530.json"
theorem reductionProof12530 : EqualModuloRelations reduction12530.relations reduction12530.input reduction12530.output := by lin_cert using reduction12530.terms
theorem substitutionProof12530 : IsMapEvaluation generatorImages reduction12530.relations [0,0,0,0,17,897] reduction12530.output := by lin_cert using reduction12530.terms
def map_38_217 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image12709 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12709 : InImage map_38_217 image12709 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12709 : Bundle := named_bundle% "RealMapCertificates/relations/basis12709.json"
theorem reductionProof12709 : EqualModuloRelations reduction12709.relations reduction12709.input reduction12709.output := by lin_cert using reduction12709.terms
theorem substitutionProof12709 : IsMapEvaluation generatorImages reduction12709.relations [8,8,889] reduction12709.output := by lin_cert using reduction12709.terms
def image12710 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12710 : InImage map_38_217 image12710 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12710 : Bundle := named_bundle% "RealMapCertificates/relations/basis12710.json"
theorem reductionProof12710 : EqualModuloRelations reduction12710.relations reduction12710.input reduction12710.output := by lin_cert using reduction12710.terms
theorem substitutionProof12710 : IsMapEvaluation generatorImages reduction12710.relations [0,0,8,64,380] reduction12710.output := by lin_cert using reduction12710.terms
def image12711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12711 : InImage map_38_217 image12711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12711 : Bundle := named_bundle% "RealMapCertificates/relations/basis12711.json"
theorem reductionProof12711 : EqualModuloRelations reduction12711.relations reduction12711.input reduction12711.output := by lin_cert using reduction12711.terms
theorem substitutionProof12711 : IsMapEvaluation generatorImages reduction12711.relations [0,0,0,0,0,1401] reduction12711.output := by lin_cert using reduction12711.terms
def map_38_218 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12869 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12869 : InImage map_38_218 image12869 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12869 : Bundle := named_bundle% "RealMapCertificates/relations/basis12869.json"
theorem reductionProof12869 : EqualModuloRelations reduction12869.relations reduction12869.input reduction12869.output := by lin_cert using reduction12869.terms
theorem substitutionProof12869 : IsMapEvaluation generatorImages reduction12869.relations [8,8,8,13,13,248] reduction12869.output := by lin_cert using reduction12869.terms
def image12870 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12870 : InImage map_38_218 image12870 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12870 : Bundle := named_bundle% "RealMapCertificates/relations/basis12870.json"
theorem reductionProof12870 : EqualModuloRelations reduction12870.relations reduction12870.input reduction12870.output := by lin_cert using reduction12870.terms
theorem substitutionProof12870 : IsMapEvaluation generatorImages reduction12870.relations [8,8,8,8,517] reduction12870.output := by lin_cert using reduction12870.terms
def image12871 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12871 : InImage map_38_218 image12871 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12871 : Bundle := named_bundle% "RealMapCertificates/relations/basis12871.json"
theorem reductionProof12871 : EqualModuloRelations reduction12871.relations reduction12871.input reduction12871.output := by lin_cert using reduction12871.terms
theorem substitutionProof12871 : IsMapEvaluation generatorImages reduction12871.relations [8,8,8,8,8,316] reduction12871.output := by lin_cert using reduction12871.terms
def map_38_219 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image13113 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13113 : InImage map_38_219 image13113 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13113 : Bundle := named_bundle% "RealMapCertificates/relations/basis13113.json"
theorem reductionProof13113 : EqualModuloRelations reduction13113.relations reduction13113.input reduction13113.output := by lin_cert using reduction13113.terms
theorem substitutionProof13113 : IsMapEvaluation generatorImages reduction13113.relations [16,64,64,64] reduction13113.output := by lin_cert using reduction13113.terms
def image13114 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13114 : InImage map_38_219 image13114 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13114 : Bundle := named_bundle% "RealMapCertificates/relations/basis13114.json"
theorem reductionProof13114 : EqualModuloRelations reduction13114.relations reduction13114.input reduction13114.output := by lin_cert using reduction13114.terms
theorem substitutionProof13114 : IsMapEvaluation generatorImages reduction13114.relations [8,9,13,13,13,13,13,13,23] reduction13114.output := by lin_cert using reduction13114.terms
def image13115 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13115 : InImage map_38_219 image13115 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13115 : Bundle := named_bundle% "RealMapCertificates/relations/basis13115.json"
theorem reductionProof13115 : EqualModuloRelations reduction13115.relations reduction13115.input reduction13115.output := by lin_cert using reduction13115.terms
theorem substitutionProof13115 : IsMapEvaluation generatorImages reduction13115.relations [8,8,8,8,17,255] reduction13115.output := by lin_cert using reduction13115.terms
def image13116 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13116 : InImage map_38_219 image13116 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13116 : Bundle := named_bundle% "RealMapCertificates/relations/basis13116.json"
theorem reductionProof13116 : EqualModuloRelations reduction13116.relations reduction13116.input reduction13116.output := by lin_cert using reduction13116.terms
theorem substitutionProof13116 : IsMapEvaluation generatorImages reduction13116.relations [8,8,8,8,13,13,13,101] reduction13116.output := by lin_cert using reduction13116.terms
def map_38_220 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image13257 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13257 : InImage map_38_220 image13257 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13257 : Bundle := named_bundle% "RealMapCertificates/relations/basis13257.json"
theorem reductionProof13257 : EqualModuloRelations reduction13257.relations reduction13257.input reduction13257.output := by lin_cert using reduction13257.terms
theorem substitutionProof13257 : IsMapEvaluation generatorImages reduction13257.relations [8,8,928] reduction13257.output := by lin_cert using reduction13257.terms
def image13258 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13258 : InImage map_38_220 image13258 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13258 : Bundle := named_bundle% "RealMapCertificates/relations/basis13258.json"
theorem reductionProof13258 : EqualModuloRelations reduction13258.relations reduction13258.input reduction13258.output := by lin_cert using reduction13258.terms
theorem substitutionProof13258 : IsMapEvaluation generatorImages reduction13258.relations [1,1515] reduction13258.output := by lin_cert using reduction13258.terms
def image13259 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13259 : InImage map_38_220 image13259 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13259 : Bundle := named_bundle% "RealMapCertificates/relations/basis13259.json"
theorem reductionProof13259 : EqualModuloRelations reduction13259.relations reduction13259.input reduction13259.output := by lin_cert using reduction13259.terms
theorem substitutionProof13259 : IsMapEvaluation generatorImages reduction13259.relations [0,0,64,64,149] reduction13259.output := by lin_cert using reduction13259.terms
def image13260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13260 : InImage map_38_220 image13260 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13260 : Bundle := named_bundle% "RealMapCertificates/relations/basis13260.json"
theorem reductionProof13260 : EqualModuloRelations reduction13260.relations reduction13260.input reduction13260.output := by lin_cert using reduction13260.terms
theorem substitutionProof13260 : IsMapEvaluation generatorImages reduction13260.relations [0,0,8,8,64,260] reduction13260.output := by lin_cert using reduction13260.terms
def map_38_221 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image13441 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13441 : InImage map_38_221 image13441 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13441 : Bundle := named_bundle% "RealMapCertificates/relations/basis13441.json"
theorem reductionProof13441 : EqualModuloRelations reduction13441.relations reduction13441.input reduction13441.output := by lin_cert using reduction13441.terms
theorem substitutionProof13441 : IsMapEvaluation generatorImages reduction13441.relations [8,8,9,13,13,248] reduction13441.output := by lin_cert using reduction13441.terms
def image13442 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13442 : InImage map_38_221 image13442 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13442 : Bundle := named_bundle% "RealMapCertificates/relations/basis13442.json"
theorem reductionProof13442 : EqualModuloRelations reduction13442.relations reduction13442.input reduction13442.output := by lin_cert using reduction13442.terms
theorem substitutionProof13442 : IsMapEvaluation generatorImages reduction13442.relations [8,8,8,8,8,347] reduction13442.output := by lin_cert using reduction13442.terms
def image13443 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13443 : InImage map_38_221 image13443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13443 : Bundle := named_bundle% "RealMapCertificates/relations/basis13443.json"
theorem reductionProof13443 : EqualModuloRelations reduction13443.relations reduction13443.input reduction13443.output := by lin_cert using reduction13443.terms
theorem substitutionProof13443 : IsMapEvaluation generatorImages reduction13443.relations [8,8,8,8,8,346] reduction13443.output := by lin_cert using reduction13443.terms
def image13444 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13444 : InImage map_38_221 image13444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13444 : Bundle := named_bundle% "RealMapCertificates/relations/basis13444.json"
theorem reductionProof13444 : EqualModuloRelations reduction13444.relations reduction13444.input reduction13444.output := by lin_cert using reduction13444.terms
theorem substitutionProof13444 : IsMapEvaluation generatorImages reduction13444.relations [0,0,1536] reduction13444.output := by lin_cert using reduction13444.terms
def image13445 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13445 : InImage map_38_221 image13445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13445 : Bundle := named_bundle% "RealMapCertificates/relations/basis13445.json"
theorem reductionProof13445 : EqualModuloRelations reduction13445.relations reduction13445.input reduction13445.output := by lin_cert using reduction13445.terms
theorem substitutionProof13445 : IsMapEvaluation generatorImages reduction13445.relations [0,0,0,64,598] reduction13445.output := by lin_cert using reduction13445.terms
def map_38_222 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13669 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13669 : InImage map_38_222 image13669 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13669 : Bundle := named_bundle% "RealMapCertificates/relations/basis13669.json"
theorem reductionProof13669 : EqualModuloRelations reduction13669.relations reduction13669.input reduction13669.output := by lin_cert using reduction13669.terms
theorem substitutionProof13669 : IsMapEvaluation generatorImages reduction13669.relations [8,64,64,112] reduction13669.output := by lin_cert using reduction13669.terms
def image13670 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13670 : InImage map_38_222 image13670 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13670 : Bundle := named_bundle% "RealMapCertificates/relations/basis13670.json"
theorem reductionProof13670 : EqualModuloRelations reduction13670.relations reduction13670.input reduction13670.output := by lin_cert using reduction13670.terms
theorem substitutionProof13670 : IsMapEvaluation generatorImages reduction13670.relations [8,13,13,13,13,13,13,13,23] reduction13670.output := by lin_cert using reduction13670.terms
def image13671 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13671 : InImage map_38_222 image13671 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13671 : Bundle := named_bundle% "RealMapCertificates/relations/basis13671.json"
theorem reductionProof13671 : EqualModuloRelations reduction13671.relations reduction13671.input reduction13671.output := by lin_cert using reduction13671.terms
theorem substitutionProof13671 : IsMapEvaluation generatorImages reduction13671.relations [8,8,8,9,13,13,13,101] reduction13671.output := by lin_cert using reduction13671.terms
def image13672 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13672 : InImage map_38_222 image13672 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13672 : Bundle := named_bundle% "RealMapCertificates/relations/basis13672.json"
theorem reductionProof13672 : EqualModuloRelations reduction13672.relations reduction13672.input reduction13672.output := by lin_cert using reduction13672.terms
theorem substitutionProof13672 : IsMapEvaluation generatorImages reduction13672.relations [8,8,8,8,8,17,188] reduction13672.output := by lin_cert using reduction13672.terms
def image13673 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13673 : InImage map_38_222 image13673 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13673 : Bundle := named_bundle% "RealMapCertificates/relations/basis13673.json"
theorem reductionProof13673 : EqualModuloRelations reduction13673.relations reduction13673.input reduction13673.output := by lin_cert using reduction13673.terms
theorem substitutionProof13673 : IsMapEvaluation generatorImages reduction13673.relations [1,1,64,64,149] reduction13673.output := by lin_cert using reduction13673.terms
def image13674 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13674 : InImage map_38_222 image13674 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13674 : Bundle := named_bundle% "RealMapCertificates/relations/basis13674.json"
theorem reductionProof13674 : EqualModuloRelations reduction13674.relations reduction13674.input reduction13674.output := by lin_cert using reduction13674.terms
theorem substitutionProof13674 : IsMapEvaluation generatorImages reduction13674.relations [0,0,0,0,0,17,963] reduction13674.output := by lin_cert using reduction13674.terms
def map_38_223 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13835 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13835 : InImage map_38_223 image13835 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13835 : Bundle := named_bundle% "RealMapCertificates/relations/basis13835.json"
theorem reductionProof13835 : EqualModuloRelations reduction13835.relations reduction13835.input reduction13835.output := by lin_cert using reduction13835.terms
theorem substitutionProof13835 : IsMapEvaluation generatorImages reduction13835.relations [8,8,8,753] reduction13835.output := by lin_cert using reduction13835.terms
def image13836 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13836 : InImage map_38_223 image13836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13836 : Bundle := named_bundle% "RealMapCertificates/relations/basis13836.json"
theorem reductionProof13836 : EqualModuloRelations reduction13836.relations reduction13836.input reduction13836.output := by lin_cert using reduction13836.terms
theorem substitutionProof13836 : IsMapEvaluation generatorImages reduction13836.relations [0,0,0,0,0,64,601] reduction13836.output := by lin_cert using reduction13836.terms
def image13837 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13837 : InImage map_38_223 image13837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13837 : Bundle := named_bundle% "RealMapCertificates/relations/basis13837.json"
theorem reductionProof13837 : EqualModuloRelations reduction13837.relations reduction13837.input reduction13837.output := by lin_cert using reduction13837.terms
theorem substitutionProof13837 : IsMapEvaluation generatorImages reduction13837.relations [0,0,0,0,0,17,974] reduction13837.output := by lin_cert using reduction13837.terms
end RealMapCertificates
