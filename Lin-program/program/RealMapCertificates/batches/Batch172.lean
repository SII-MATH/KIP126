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
  | 23 => [[7,7]]
  | 33 => []
  | 42 => [[5,5,7]]
  | 64 => []
  | 72 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 149 => [[4,9,12]]
  | 168 => []
  | 187 => []
  | 188 => []
  | 201 => []
  | 209 => []
  | 212 => []
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 279 => []
  | 292 => []
  | 318 => []
  | 346 => []
  | 380 => []
  | 382 => []
  | 455 => []
  | 492 => []
  | 573 => []
  | 599 => []
  | 642 => [[7,10,12,12]]
  | 653 => []
  | 688 => []
  | 726 => []
  | 784 => [[7,7,9,12,12]]
  | 820 => [[5,5,5,7,12,12]]
  | 897 => []
  | 940 => []
  | 963 => []
  | 974 => []
  | 1035 => []
  | 1220 => []
  | 1537 => [[5,5,8,12,12,12]]
  | 1592 => [[4,6,9,12,12,12]]
  | 1593 => [[5,5,9,12,12,12]]
  | 1639 => [[5,7,9,12,12,12]]
  | 1687 => [[4,5,5,7,12,12,12]]
  | 1753 => [[4,5,5,8,12,12,12]]
  | 1833 => [[4,5,5,9,12,12,12]]
  | 1855 => []
  | 1856 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1991 => []
  | 1992 => []
  | 1994 => []
  | _ => []
def map_38_224 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13996 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13996 : InImage map_38_224 image13996 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13996 : Bundle := named_bundle% "RealMapCertificates/relations/basis13996.json"
theorem reductionProof13996 : EqualModuloRelations reduction13996.relations reduction13996.input reduction13996.output := by lin_cert using reduction13996.terms
theorem substitutionProof13996 : IsMapEvaluation generatorImages reduction13996.relations [8,8,13,13,13,248] reduction13996.output := by lin_cert using reduction13996.terms
def image13997 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13997 : InImage map_38_224 image13997 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13997 : Bundle := named_bundle% "RealMapCertificates/relations/basis13997.json"
theorem reductionProof13997 : EqualModuloRelations reduction13997.relations reduction13997.input reduction13997.output := by lin_cert using reduction13997.terms
theorem substitutionProof13997 : IsMapEvaluation generatorImages reduction13997.relations [8,8,8,8,9,346] reduction13997.output := by lin_cert using reduction13997.terms
def image13998 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13998 : InImage map_38_224 image13998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13998 : Bundle := named_bundle% "RealMapCertificates/relations/basis13998.json"
theorem reductionProof13998 : EqualModuloRelations reduction13998.relations reduction13998.input reduction13998.output := by lin_cert using reduction13998.terms
theorem substitutionProof13998 : IsMapEvaluation generatorImages reduction13998.relations [8,8,8,8,8,382] reduction13998.output := by lin_cert using reduction13998.terms
def image13999 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13999 : InImage map_38_224 image13999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13999 : Bundle := named_bundle% "RealMapCertificates/relations/basis13999.json"
theorem reductionProof13999 : EqualModuloRelations reduction13999.relations reduction13999.input reduction13999.output := by lin_cert using reduction13999.terms
theorem substitutionProof13999 : IsMapEvaluation generatorImages reduction13999.relations [0,0,1592] reduction13999.output := by lin_cert using reduction13999.terms
def map_38_225 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14236 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14236 : InImage map_38_225 image14236 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14236 : Bundle := named_bundle% "RealMapCertificates/relations/basis14236.json"
theorem reductionProof14236 : EqualModuloRelations reduction14236.relations reduction14236.input reduction14236.output := by lin_cert using reduction14236.terms
theorem substitutionProof14236 : IsMapEvaluation generatorImages reduction14236.relations [9,13,13,13,13,13,13,13,23] reduction14236.output := by lin_cert using reduction14236.terms
def image14237 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14237 : InImage map_38_225 image14237 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14237 : Bundle := named_bundle% "RealMapCertificates/relations/basis14237.json"
theorem reductionProof14237 : EqualModuloRelations reduction14237.relations reduction14237.input reduction14237.output := by lin_cert using reduction14237.terms
theorem substitutionProof14237 : IsMapEvaluation generatorImages reduction14237.relations [8,8,64,64,64] reduction14237.output := by lin_cert using reduction14237.terms
def image14238 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14238 : InImage map_38_225 image14238 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14238 : Bundle := named_bundle% "RealMapCertificates/relations/basis14238.json"
theorem reductionProof14238 : EqualModuloRelations reduction14238.relations reduction14238.input reduction14238.output := by lin_cert using reduction14238.terms
theorem substitutionProof14238 : IsMapEvaluation generatorImages reduction14238.relations [8,8,8,13,13,13,13,101] reduction14238.output := by lin_cert using reduction14238.terms
def image14239 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14239 : InImage map_38_225 image14239 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14239 : Bundle := named_bundle% "RealMapCertificates/relations/basis14239.json"
theorem reductionProof14239 : EqualModuloRelations reduction14239.relations reduction14239.input reduction14239.output := by lin_cert using reduction14239.terms
theorem substitutionProof14239 : IsMapEvaluation generatorImages reduction14239.relations [8,8,8,8,8,20,188] reduction14239.output := by lin_cert using reduction14239.terms
def map_38_226 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14385 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14385 : InImage map_38_226 image14385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14385 : Bundle := named_bundle% "RealMapCertificates/relations/basis14385.json"
theorem reductionProof14385 : EqualModuloRelations reduction14385.relations reduction14385.input reduction14385.output := by lin_cert using reduction14385.terms
theorem substitutionProof14385 : IsMapEvaluation generatorImages reduction14385.relations [149,380] reduction14385.output := by lin_cert using reduction14385.terms
def image14386 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14386 : InImage map_38_226 image14386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14386 : Bundle := named_bundle% "RealMapCertificates/relations/basis14386.json"
theorem reductionProof14386 : EqualModuloRelations reduction14386.relations reduction14386.input reduction14386.output := by lin_cert using reduction14386.terms
theorem substitutionProof14386 : IsMapEvaluation generatorImages reduction14386.relations [8,8,8,784] reduction14386.output := by lin_cert using reduction14386.terms
def image14387 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14387 : InImage map_38_226 image14387 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14387 : Bundle := named_bundle% "RealMapCertificates/relations/basis14387.json"
theorem reductionProof14387 : EqualModuloRelations reduction14387.relations reduction14387.input reduction14387.output := by lin_cert using reduction14387.terms
theorem substitutionProof14387 : IsMapEvaluation generatorImages reduction14387.relations [1,64,653] reduction14387.output := by lin_cert using reduction14387.terms
def map_38_227 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image14571 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14571 : InImage map_38_227 image14571 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14571 : Bundle := named_bundle% "RealMapCertificates/relations/basis14571.json"
theorem reductionProof14571 : EqualModuloRelations reduction14571.relations reduction14571.input reduction14571.output := by lin_cert using reduction14571.terms
theorem substitutionProof14571 : IsMapEvaluation generatorImages reduction14571.relations [64,688] reduction14571.output := by lin_cert using reduction14571.terms
def image14572 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14572 : InImage map_38_227 image14572 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14572 : Bundle := named_bundle% "RealMapCertificates/relations/basis14572.json"
theorem reductionProof14572 : EqualModuloRelations reduction14572.relations reduction14572.input reduction14572.output := by lin_cert using reduction14572.terms
theorem substitutionProof14572 : IsMapEvaluation generatorImages reduction14572.relations [17,113,260] reduction14572.output := by lin_cert using reduction14572.terms
def image14573 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14573 : InImage map_38_227 image14573 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14573 : Bundle := named_bundle% "RealMapCertificates/relations/basis14573.json"
theorem reductionProof14573 : EqualModuloRelations reduction14573.relations reduction14573.input reduction14573.output := by lin_cert using reduction14573.terms
theorem substitutionProof14573 : IsMapEvaluation generatorImages reduction14573.relations [8,9,13,13,13,248] reduction14573.output := by lin_cert using reduction14573.terms
def image14574 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14574 : InImage map_38_227 image14574 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14574 : Bundle := named_bundle% "RealMapCertificates/relations/basis14574.json"
theorem reductionProof14574 : EqualModuloRelations reduction14574.relations reduction14574.input reduction14574.output := by lin_cert using reduction14574.terms
theorem substitutionProof14574 : IsMapEvaluation generatorImages reduction14574.relations [8,8,8,8,13,346] reduction14574.output := by lin_cert using reduction14574.terms
def image14575 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14575 : InImage map_38_227 image14575 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14575 : Bundle := named_bundle% "RealMapCertificates/relations/basis14575.json"
theorem reductionProof14575 : EqualModuloRelations reduction14575.relations reduction14575.input reduction14575.output := by lin_cert using reduction14575.terms
theorem substitutionProof14575 : IsMapEvaluation generatorImages reduction14575.relations [8,8,8,8,8,16,209] reduction14575.output := by lin_cert using reduction14575.terms
def image14576 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14576 : InImage map_38_227 image14576 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14576 : Bundle := named_bundle% "RealMapCertificates/relations/basis14576.json"
theorem reductionProof14576 : EqualModuloRelations reduction14576.relations reduction14576.input reduction14576.output := by lin_cert using reduction14576.terms
theorem substitutionProof14576 : IsMapEvaluation generatorImages reduction14576.relations [0,0,0,0,64,642] reduction14576.output := by lin_cert using reduction14576.terms
def map_38_228 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14808 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14808 : InImage map_38_228 image14808 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14808 : Bundle := named_bundle% "RealMapCertificates/relations/basis14808.json"
theorem reductionProof14808 : EqualModuloRelations reduction14808.relations reduction14808.input reduction14808.output := by lin_cert using reduction14808.terms
theorem substitutionProof14808 : IsMapEvaluation generatorImages reduction14808.relations [13,13,13,13,13,13,13,13,23] reduction14808.output := by lin_cert using reduction14808.terms
def image14809 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14809 : InImage map_38_228 image14809 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14809 : Bundle := named_bundle% "RealMapCertificates/relations/basis14809.json"
theorem reductionProof14809 : EqualModuloRelations reduction14809.relations reduction14809.input reduction14809.output := by lin_cert using reduction14809.terms
theorem substitutionProof14809 : IsMapEvaluation generatorImages reduction14809.relations [8,8,64,64,72] reduction14809.output := by lin_cert using reduction14809.terms
def image14810 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14810 : InImage map_38_228 image14810 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14810 : Bundle := named_bundle% "RealMapCertificates/relations/basis14810.json"
theorem reductionProof14810 : EqualModuloRelations reduction14810.relations reduction14810.input reduction14810.output := by lin_cert using reduction14810.terms
theorem substitutionProof14810 : IsMapEvaluation generatorImages reduction14810.relations [8,8,9,13,13,13,13,101] reduction14810.output := by lin_cert using reduction14810.terms
def image14811 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14811 : InImage map_38_228 image14811 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14811 : Bundle := named_bundle% "RealMapCertificates/relations/basis14811.json"
theorem reductionProof14811 : EqualModuloRelations reduction14811.relations reduction14811.input reduction14811.output := by lin_cert using reduction14811.terms
theorem substitutionProof14811 : IsMapEvaluation generatorImages reduction14811.relations [8,8,8,8,8,8,267] reduction14811.output := by lin_cert using reduction14811.terms
def map_38_229 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image14988 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14988 : InImage map_38_229 image14988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14988 : Bundle := named_bundle% "RealMapCertificates/relations/basis14988.json"
theorem reductionProof14988 : EqualModuloRelations reduction14988.relations reduction14988.input reduction14988.output := by lin_cert using reduction14988.terms
theorem substitutionProof14988 : IsMapEvaluation generatorImages reduction14988.relations [8,149,260] reduction14988.output := by lin_cert using reduction14988.terms
def image14989 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14989 : InImage map_38_229 image14989 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14989 : Bundle := named_bundle% "RealMapCertificates/relations/basis14989.json"
theorem reductionProof14989 : EqualModuloRelations reduction14989.relations reduction14989.input reduction14989.output := by lin_cert using reduction14989.terms
theorem substitutionProof14989 : IsMapEvaluation generatorImages reduction14989.relations [8,8,9,784] reduction14989.output := by lin_cert using reduction14989.terms
def map_38_230 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image15169 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15169 : InImage map_38_230 image15169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15169 : Bundle := named_bundle% "RealMapCertificates/relations/basis15169.json"
theorem reductionProof15169 : EqualModuloRelations reduction15169.relations reduction15169.input reduction15169.output := by lin_cert using reduction15169.terms
theorem substitutionProof15169 : IsMapEvaluation generatorImages reduction15169.relations [64,726] reduction15169.output := by lin_cert using reduction15169.terms
def image15170 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15170 : InImage map_38_230 image15170 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15170 : Bundle := named_bundle% "RealMapCertificates/relations/basis15170.json"
theorem reductionProof15170 : EqualModuloRelations reduction15170.relations reduction15170.input reduction15170.output := by lin_cert using reduction15170.terms
theorem substitutionProof15170 : IsMapEvaluation generatorImages reduction15170.relations [8,17,897] reduction15170.output := by lin_cert using reduction15170.terms
def image15171 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15171 : InImage map_38_230 image15171 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15171 : Bundle := named_bundle% "RealMapCertificates/relations/basis15171.json"
theorem reductionProof15171 : EqualModuloRelations reduction15171.relations reduction15171.input reduction15171.output := by lin_cert using reduction15171.terms
theorem substitutionProof15171 : IsMapEvaluation generatorImages reduction15171.relations [8,13,13,13,13,248] reduction15171.output := by lin_cert using reduction15171.terms
def image15172 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15172 : InImage map_38_230 image15172 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15172 : Bundle := named_bundle% "RealMapCertificates/relations/basis15172.json"
theorem reductionProof15172 : EqualModuloRelations reduction15172.relations reduction15172.input reduction15172.output := by lin_cert using reduction15172.terms
theorem substitutionProof15172 : IsMapEvaluation generatorImages reduction15172.relations [8,8,8,9,13,346] reduction15172.output := by lin_cert using reduction15172.terms
def image15173 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15173 : InImage map_38_230 image15173 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15173 : Bundle := named_bundle% "RealMapCertificates/relations/basis15173.json"
theorem reductionProof15173 : EqualModuloRelations reduction15173.relations reduction15173.input reduction15173.output := by lin_cert using reduction15173.terms
theorem substitutionProof15173 : IsMapEvaluation generatorImages reduction15173.relations [8,8,8,8,8,8,279] reduction15173.output := by lin_cert using reduction15173.terms
def image15174 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15174 : InImage map_38_230 image15174 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15174 : Bundle := named_bundle% "RealMapCertificates/relations/basis15174.json"
theorem reductionProof15174 : EqualModuloRelations reduction15174.relations reduction15174.input reduction15174.output := by lin_cert using reduction15174.terms
theorem substitutionProof15174 : IsMapEvaluation generatorImages reduction15174.relations [1,1687] reduction15174.output := by lin_cert using reduction15174.terms
def map_38_231 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image15435 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15435 : InImage map_38_231 image15435 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15435 : Bundle := named_bundle% "RealMapCertificates/relations/basis15435.json"
theorem reductionProof15435 : EqualModuloRelations reduction15435.relations reduction15435.input reduction15435.output := by lin_cert using reduction15435.terms
theorem substitutionProof15435 : IsMapEvaluation generatorImages reduction15435.relations [1753] reduction15435.output := by lin_cert using reduction15435.terms
def image15436 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15436 : InImage map_38_231 image15436 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15436 : Bundle := named_bundle% "RealMapCertificates/relations/basis15436.json"
theorem reductionProof15436 : EqualModuloRelations reduction15436.relations reduction15436.input reduction15436.output := by lin_cert using reduction15436.terms
theorem substitutionProof15436 : IsMapEvaluation generatorImages reduction15436.relations [8,8,16,64,187] reduction15436.output := by lin_cert using reduction15436.terms
def image15437 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15437 : InImage map_38_231 image15437 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15437 : Bundle := named_bundle% "RealMapCertificates/relations/basis15437.json"
theorem reductionProof15437 : EqualModuloRelations reduction15437.relations reduction15437.input reduction15437.output := by lin_cert using reduction15437.terms
theorem substitutionProof15437 : IsMapEvaluation generatorImages reduction15437.relations [8,8,13,13,13,13,13,101] reduction15437.output := by lin_cert using reduction15437.terms
def image15438 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15438 : InImage map_38_231 image15438 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15438 : Bundle := named_bundle% "RealMapCertificates/relations/basis15438.json"
theorem reductionProof15438 : EqualModuloRelations reduction15438.relations reduction15438.input reduction15438.output := by lin_cert using reduction15438.terms
theorem substitutionProof15438 : IsMapEvaluation generatorImages reduction15438.relations [8,8,8,8,8,9,267] reduction15438.output := by lin_cert using reduction15438.terms
def map_38_232 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15615 : InImage map_38_232 image15615 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15615 : Bundle := named_bundle% "RealMapCertificates/relations/basis15615.json"
theorem reductionProof15615 : EqualModuloRelations reduction15615.relations reduction15615.input reduction15615.output := by lin_cert using reduction15615.terms
theorem substitutionProof15615 : IsMapEvaluation generatorImages reduction15615.relations [8,149,278] reduction15615.output := by lin_cert using reduction15615.terms
def image15616 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15616 : InImage map_38_232 image15616 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15616 : Bundle := named_bundle% "RealMapCertificates/relations/basis15616.json"
theorem reductionProof15616 : EqualModuloRelations reduction15616.relations reduction15616.input reduction15616.output := by lin_cert using reduction15616.terms
theorem substitutionProof15616 : IsMapEvaluation generatorImages reduction15616.relations [8,8,13,784] reduction15616.output := by lin_cert using reduction15616.terms
def image15617 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15617 : InImage map_38_232 image15617 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15617 : Bundle := named_bundle% "RealMapCertificates/relations/basis15617.json"
theorem reductionProof15617 : EqualModuloRelations reduction15617.relations reduction15617.input reduction15617.output := by lin_cert using reduction15617.terms
theorem substitutionProof15617 : IsMapEvaluation generatorImages reduction15617.relations [1,42,64,260] reduction15617.output := by lin_cert using reduction15617.terms
def map_38_233 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15828 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15828 : InImage map_38_233 image15828 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15828 : Bundle := named_bundle% "RealMapCertificates/relations/basis15828.json"
theorem reductionProof15828 : EqualModuloRelations reduction15828.relations reduction15828.input reduction15828.output := by lin_cert using reduction15828.terms
theorem substitutionProof15828 : IsMapEvaluation generatorImages reduction15828.relations [9,13,13,13,13,248] reduction15828.output := by lin_cert using reduction15828.terms
def image15829 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15829 : InImage map_38_233 image15829 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15829 : Bundle := named_bundle% "RealMapCertificates/relations/basis15829.json"
theorem reductionProof15829 : EqualModuloRelations reduction15829.relations reduction15829.input reduction15829.output := by lin_cert using reduction15829.terms
theorem substitutionProof15829 : IsMapEvaluation generatorImages reduction15829.relations [8,64,573] reduction15829.output := by lin_cert using reduction15829.terms
def image15830 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15830 : InImage map_38_233 image15830 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15830 : Bundle := named_bundle% "RealMapCertificates/relations/basis15830.json"
theorem reductionProof15830 : EqualModuloRelations reduction15830.relations reduction15830.input reduction15830.output := by lin_cert using reduction15830.terms
theorem substitutionProof15830 : IsMapEvaluation generatorImages reduction15830.relations [8,17,940] reduction15830.output := by lin_cert using reduction15830.terms
def image15831 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15831 : InImage map_38_233 image15831 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15831 : Bundle := named_bundle% "RealMapCertificates/relations/basis15831.json"
theorem reductionProof15831 : EqualModuloRelations reduction15831.relations reduction15831.input reduction15831.output := by lin_cert using reduction15831.terms
theorem substitutionProof15831 : IsMapEvaluation generatorImages reduction15831.relations [8,8,8,13,13,346] reduction15831.output := by lin_cert using reduction15831.terms
def image15832 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15832 : InImage map_38_233 image15832 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15832 : Bundle := named_bundle% "RealMapCertificates/relations/basis15832.json"
theorem reductionProof15832 : EqualModuloRelations reduction15832.relations reduction15832.input reduction15832.output := by lin_cert using reduction15832.terms
theorem substitutionProof15832 : IsMapEvaluation generatorImages reduction15832.relations [8,8,8,8,8,8,8,209] reduction15832.output := by lin_cert using reduction15832.terms
def map_38_234 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16084 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16084 : InImage map_38_234 image16084 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16084 : Bundle := named_bundle% "RealMapCertificates/relations/basis16084.json"
theorem reductionProof16084 : EqualModuloRelations reduction16084.relations reduction16084.input reduction16084.output := by lin_cert using reduction16084.terms
theorem substitutionProof16084 : IsMapEvaluation generatorImages reduction16084.relations [1833] reduction16084.output := by lin_cert using reduction16084.terms
def image16085 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16085 : InImage map_38_234 image16085 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16085 : Bundle := named_bundle% "RealMapCertificates/relations/basis16085.json"
theorem reductionProof16085 : EqualModuloRelations reduction16085.relations reduction16085.input reduction16085.output := by lin_cert using reduction16085.terms
theorem substitutionProof16085 : IsMapEvaluation generatorImages reduction16085.relations [13,13,13,13,13,13,13,13,33] reduction16085.output := by lin_cert using reduction16085.terms
def image16086 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16086 : InImage map_38_234 image16086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16086 : Bundle := named_bundle% "RealMapCertificates/relations/basis16086.json"
theorem reductionProof16086 : EqualModuloRelations reduction16086.relations reduction16086.input reduction16086.output := by lin_cert using reduction16086.terms
theorem substitutionProof16086 : IsMapEvaluation generatorImages reduction16086.relations [8,9,13,13,13,13,13,101] reduction16086.output := by lin_cert using reduction16086.terms
def image16087 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16087 : InImage map_38_234 image16087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16087 : Bundle := named_bundle% "RealMapCertificates/relations/basis16087.json"
theorem reductionProof16087 : EqualModuloRelations reduction16087.relations reduction16087.input reduction16087.output := by lin_cert using reduction16087.terms
theorem substitutionProof16087 : IsMapEvaluation generatorImages reduction16087.relations [8,8,8,64,254] reduction16087.output := by lin_cert using reduction16087.terms
def image16088 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16088 : InImage map_38_234 image16088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16088 : Bundle := named_bundle% "RealMapCertificates/relations/basis16088.json"
theorem reductionProof16088 : EqualModuloRelations reduction16088.relations reduction16088.input reduction16088.output := by lin_cert using reduction16088.terms
theorem substitutionProof16088 : IsMapEvaluation generatorImages reduction16088.relations [8,8,8,8,8,13,267] reduction16088.output := by lin_cert using reduction16088.terms
def map_38_235 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image16280 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16280 : InImage map_38_235 image16280 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16280 : Bundle := named_bundle% "RealMapCertificates/relations/basis16280.json"
theorem reductionProof16280 : EqualModuloRelations reduction16280.relations reduction16280.input reduction16280.output := by lin_cert using reduction16280.terms
theorem substitutionProof16280 : IsMapEvaluation generatorImages reduction16280.relations [1855] reduction16280.output := by lin_cert using reduction16280.terms
def image16281 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16281 : InImage map_38_235 image16281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16281 : Bundle := named_bundle% "RealMapCertificates/relations/basis16281.json"
theorem reductionProof16281 : EqualModuloRelations reduction16281.relations reduction16281.input reduction16281.output := by lin_cert using reduction16281.terms
theorem substitutionProof16281 : IsMapEvaluation generatorImages reduction16281.relations [8,16,963] reduction16281.output := by lin_cert using reduction16281.terms
def image16282 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16282 : InImage map_38_235 image16282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16282 : Bundle := named_bundle% "RealMapCertificates/relations/basis16282.json"
theorem reductionProof16282 : EqualModuloRelations reduction16282.relations reduction16282.input reduction16282.output := by lin_cert using reduction16282.terms
theorem substitutionProof16282 : IsMapEvaluation generatorImages reduction16282.relations [8,9,13,784] reduction16282.output := by lin_cert using reduction16282.terms
def map_38_236 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16498 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16498 : InImage map_38_236 image16498 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16498 : Bundle := named_bundle% "RealMapCertificates/relations/basis16498.json"
theorem reductionProof16498 : EqualModuloRelations reduction16498.relations reduction16498.input reduction16498.output := by lin_cert using reduction16498.terms
theorem substitutionProof16498 : IsMapEvaluation generatorImages reduction16498.relations [13,13,13,13,13,248] reduction16498.output := by lin_cert using reduction16498.terms
def image16499 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16499 : InImage map_38_236 image16499 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16499 : Bundle := named_bundle% "RealMapCertificates/relations/basis16499.json"
theorem reductionProof16499 : EqualModuloRelations reduction16499.relations reduction16499.input reduction16499.output := by lin_cert using reduction16499.terms
theorem substitutionProof16499 : IsMapEvaluation generatorImages reduction16499.relations [8,64,599] reduction16499.output := by lin_cert using reduction16499.terms
def image16500 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16500 : InImage map_38_236 image16500 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16500 : Bundle := named_bundle% "RealMapCertificates/relations/basis16500.json"
theorem reductionProof16500 : EqualModuloRelations reduction16500.relations reduction16500.input reduction16500.output := by lin_cert using reduction16500.terms
theorem substitutionProof16500 : IsMapEvaluation generatorImages reduction16500.relations [8,16,974] reduction16500.output := by lin_cert using reduction16500.terms
def image16501 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16501 : InImage map_38_236 image16501 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16501 : Bundle := named_bundle% "RealMapCertificates/relations/basis16501.json"
theorem reductionProof16501 : EqualModuloRelations reduction16501.relations reduction16501.input reduction16501.output := by lin_cert using reduction16501.terms
theorem substitutionProof16501 : IsMapEvaluation generatorImages reduction16501.relations [8,8,9,13,13,346] reduction16501.output := by lin_cert using reduction16501.terms
def image16502 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16502 : InImage map_38_236 image16502 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16502 : Bundle := named_bundle% "RealMapCertificates/relations/basis16502.json"
theorem reductionProof16502 : EqualModuloRelations reduction16502.relations reduction16502.input reduction16502.output := by lin_cert using reduction16502.terms
theorem substitutionProof16502 : IsMapEvaluation generatorImages reduction16502.relations [8,8,8,8,8,8,9,209] reduction16502.output := by lin_cert using reduction16502.terms
def image16503 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16503 : InImage map_38_236 image16503 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16503 : Bundle := named_bundle% "RealMapCertificates/relations/basis16503.json"
theorem reductionProof16503 : EqualModuloRelations reduction16503.relations reduction16503.input reduction16503.output := by lin_cert using reduction16503.terms
theorem substitutionProof16503 : IsMapEvaluation generatorImages reduction16503.relations [0,1856] reduction16503.output := by lin_cert using reduction16503.terms
def map_38_237 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image16763 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16763 : InImage map_38_237 image16763 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16763 : Bundle := named_bundle% "RealMapCertificates/relations/basis16763.json"
theorem reductionProof16763 : EqualModuloRelations reduction16763.relations reduction16763.input reduction16763.output := by lin_cert using reduction16763.terms
theorem substitutionProof16763 : IsMapEvaluation generatorImages reduction16763.relations [8,1537] reduction16763.output := by lin_cert using reduction16763.terms
def image16764 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16764 : InImage map_38_237 image16764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16764 : Bundle := named_bundle% "RealMapCertificates/relations/basis16764.json"
theorem reductionProof16764 : EqualModuloRelations reduction16764.relations reduction16764.input reduction16764.output := by lin_cert using reduction16764.terms
theorem substitutionProof16764 : IsMapEvaluation generatorImages reduction16764.relations [8,13,13,13,13,13,13,101] reduction16764.output := by lin_cert using reduction16764.terms
def image16765 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16765 : InImage map_38_237 image16765 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16765 : Bundle := named_bundle% "RealMapCertificates/relations/basis16765.json"
theorem reductionProof16765 : EqualModuloRelations reduction16765.relations reduction16765.input reduction16765.output := by lin_cert using reduction16765.terms
theorem substitutionProof16765 : IsMapEvaluation generatorImages reduction16765.relations [8,8,8,8,64,187] reduction16765.output := by lin_cert using reduction16765.terms
def image16766 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16766 : InImage map_38_237 image16766 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16766 : Bundle := named_bundle% "RealMapCertificates/relations/basis16766.json"
theorem reductionProof16766 : EqualModuloRelations reduction16766.relations reduction16766.input reduction16766.output := by lin_cert using reduction16766.terms
theorem substitutionProof16766 : IsMapEvaluation generatorImages reduction16766.relations [8,8,8,8,9,13,267] reduction16766.output := by lin_cert using reduction16766.terms
def map_38_238 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16946 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16946 : InImage map_38_238 image16946 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16946 : Bundle := named_bundle% "RealMapCertificates/relations/basis16946.json"
theorem reductionProof16946 : EqualModuloRelations reduction16946.relations reduction16946.input reduction16946.output := by lin_cert using reduction16946.terms
theorem substitutionProof16946 : IsMapEvaluation generatorImages reduction16946.relations [64,820] reduction16946.output := by lin_cert using reduction16946.terms
def image16947 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16947 : InImage map_38_238 image16947 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16947 : Bundle := named_bundle% "RealMapCertificates/relations/basis16947.json"
theorem reductionProof16947 : EqualModuloRelations reduction16947.relations reduction16947.input reduction16947.output := by lin_cert using reduction16947.terms
theorem substitutionProof16947 : IsMapEvaluation generatorImages reduction16947.relations [8,13,13,784] reduction16947.output := by lin_cert using reduction16947.terms
def image16948 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16948 : InImage map_38_238 image16948 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16948 : Bundle := named_bundle% "RealMapCertificates/relations/basis16948.json"
theorem reductionProof16948 : EqualModuloRelations reduction16948.relations reduction16948.input reduction16948.output := by lin_cert using reduction16948.terms
theorem substitutionProof16948 : IsMapEvaluation generatorImages reduction16948.relations [8,8,1220] reduction16948.output := by lin_cert using reduction16948.terms
def map_38_239 : Matrix 0 4 := fun i j => ([] : List Bool)[i.val*4+j.val]!
def image17190 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17190 : InImage map_38_239 image17190 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17190 : Bundle := named_bundle% "RealMapCertificates/relations/basis17190.json"
theorem reductionProof17190 : EqualModuloRelations reduction17190.relations reduction17190.input reduction17190.output := by lin_cert using reduction17190.terms
theorem substitutionProof17190 : IsMapEvaluation generatorImages reduction17190.relations [8,8,113,292] reduction17190.output := by lin_cert using reduction17190.terms
def image17191 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17191 : InImage map_38_239 image17191 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17191 : Bundle := named_bundle% "RealMapCertificates/relations/basis17191.json"
theorem reductionProof17191 : EqualModuloRelations reduction17191.relations reduction17191.input reduction17191.output := by lin_cert using reduction17191.terms
theorem substitutionProof17191 : IsMapEvaluation generatorImages reduction17191.relations [8,8,64,455] reduction17191.output := by lin_cert using reduction17191.terms
def image17192 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17192 : InImage map_38_239 image17192 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17192 : Bundle := named_bundle% "RealMapCertificates/relations/basis17192.json"
theorem reductionProof17192 : EqualModuloRelations reduction17192.relations reduction17192.input reduction17192.output := by lin_cert using reduction17192.terms
theorem substitutionProof17192 : IsMapEvaluation generatorImages reduction17192.relations [8,8,13,13,13,346] reduction17192.output := by lin_cert using reduction17192.terms
def image17193 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation17193 : InImage map_38_239 image17193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17193 : Bundle := named_bundle% "RealMapCertificates/relations/basis17193.json"
theorem reductionProof17193 : EqualModuloRelations reduction17193.relations reduction17193.input reduction17193.output := by lin_cert using reduction17193.terms
theorem substitutionProof17193 : IsMapEvaluation generatorImages reduction17193.relations [8,8,8,8,8,8,13,209] reduction17193.output := by lin_cert using reduction17193.terms
def map_38_240 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17456 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17456 : InImage map_38_240 image17456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17456 : Bundle := named_bundle% "RealMapCertificates/relations/basis17456.json"
theorem reductionProof17456 : EqualModuloRelations reduction17456.relations reduction17456.input reduction17456.output := by lin_cert using reduction17456.terms
theorem substitutionProof17456 : IsMapEvaluation generatorImages reduction17456.relations [9,13,13,13,13,13,13,101] reduction17456.output := by lin_cert using reduction17456.terms
def image17457 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17457 : InImage map_38_240 image17457 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17457 : Bundle := named_bundle% "RealMapCertificates/relations/basis17457.json"
theorem reductionProof17457 : EqualModuloRelations reduction17457.relations reduction17457.input reduction17457.output := by lin_cert using reduction17457.terms
theorem substitutionProof17457 : IsMapEvaluation generatorImages reduction17457.relations [8,1593] reduction17457.output := by lin_cert using reduction17457.terms
def image17458 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17458 : InImage map_38_240 image17458 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17458 : Bundle := named_bundle% "RealMapCertificates/relations/basis17458.json"
theorem reductionProof17458 : EqualModuloRelations reduction17458.relations reduction17458.input reduction17458.output := by lin_cert using reduction17458.terms
theorem substitutionProof17458 : IsMapEvaluation generatorImages reduction17458.relations [8,8,8,8,64,201] reduction17458.output := by lin_cert using reduction17458.terms
def image17459 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17459 : InImage map_38_240 image17459 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17459 : Bundle := named_bundle% "RealMapCertificates/relations/basis17459.json"
theorem reductionProof17459 : EqualModuloRelations reduction17459.relations reduction17459.input reduction17459.output := by lin_cert using reduction17459.terms
theorem substitutionProof17459 : IsMapEvaluation generatorImages reduction17459.relations [8,8,8,8,13,13,267] reduction17459.output := by lin_cert using reduction17459.terms
def image17460 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17460 : InImage map_38_240 image17460 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17460 : Bundle := named_bundle% "RealMapCertificates/relations/basis17460.json"
theorem reductionProof17460 : EqualModuloRelations reduction17460.relations reduction17460.input reduction17460.output := by lin_cert using reduction17460.terms
theorem substitutionProof17460 : IsMapEvaluation generatorImages reduction17460.relations [0,0,260,260] reduction17460.output := by lin_cert using reduction17460.terms
def map_38_241 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17706 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17706 : InImage map_38_241 image17706 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17706 : Bundle := named_bundle% "RealMapCertificates/relations/basis17706.json"
theorem reductionProof17706 : EqualModuloRelations reduction17706.relations reduction17706.input reduction17706.output := by lin_cert using reduction17706.terms
theorem substitutionProof17706 : IsMapEvaluation generatorImages reduction17706.relations [9,13,13,784] reduction17706.output := by lin_cert using reduction17706.terms
def image17707 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17707 : InImage map_38_241 image17707 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17707 : Bundle := named_bundle% "RealMapCertificates/relations/basis17707.json"
theorem reductionProof17707 : EqualModuloRelations reduction17707.relations reduction17707.input reduction17707.output := by lin_cert using reduction17707.terms
theorem substitutionProof17707 : IsMapEvaluation generatorImages reduction17707.relations [8,64,642] reduction17707.output := by lin_cert using reduction17707.terms
def image17708 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17708 : InImage map_38_241 image17708 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17708 : Bundle := named_bundle% "RealMapCertificates/relations/basis17708.json"
theorem reductionProof17708 : EqualModuloRelations reduction17708.relations reduction17708.input reduction17708.output := by lin_cert using reduction17708.terms
theorem substitutionProof17708 : IsMapEvaluation generatorImages reduction17708.relations [8,8,8,963] reduction17708.output := by lin_cert using reduction17708.terms
def image17709 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17709 : InImage map_38_241 image17709 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17709 : Bundle := named_bundle% "RealMapCertificates/relations/basis17709.json"
theorem reductionProof17709 : EqualModuloRelations reduction17709.relations reduction17709.input reduction17709.output := by lin_cert using reduction17709.terms
theorem substitutionProof17709 : IsMapEvaluation generatorImages reduction17709.relations [0,260,274] reduction17709.output := by lin_cert using reduction17709.terms
def image17710 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17710 : InImage map_38_241 image17710 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17710 : Bundle := named_bundle% "RealMapCertificates/relations/basis17710.json"
theorem reductionProof17710 : EqualModuloRelations reduction17710.relations reduction17710.input reduction17710.output := by lin_cert using reduction17710.terms
theorem substitutionProof17710 : IsMapEvaluation generatorImages reduction17710.relations [0,0,0,1926] reduction17710.output := by lin_cert using reduction17710.terms
def map_38_242 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image17957 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17957 : InImage map_38_242 image17957 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction17957 : Bundle := named_bundle% "RealMapCertificates/relations/basis17957.json"
theorem reductionProof17957 : EqualModuloRelations reduction17957.relations reduction17957.input reduction17957.output := by lin_cert using reduction17957.terms
theorem substitutionProof17957 : IsMapEvaluation generatorImages reduction17957.relations [13,13,13,13,13,13,168] reduction17957.output := by lin_cert using reduction17957.terms
def image17958 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17958 : InImage map_38_242 image17958 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction17958 : Bundle := named_bundle% "RealMapCertificates/relations/basis17958.json"
theorem reductionProof17958 : EqualModuloRelations reduction17958.relations reduction17958.input reduction17958.output := by lin_cert using reduction17958.terms
theorem substitutionProof17958 : IsMapEvaluation generatorImages reduction17958.relations [8,9,13,13,13,346] reduction17958.output := by lin_cert using reduction17958.terms
def image17959 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17959 : InImage map_38_242 image17959 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction17959 : Bundle := named_bundle% "RealMapCertificates/relations/basis17959.json"
theorem reductionProof17959 : EqualModuloRelations reduction17959.relations reduction17959.input reduction17959.output := by lin_cert using reduction17959.terms
theorem substitutionProof17959 : IsMapEvaluation generatorImages reduction17959.relations [8,8,64,492] reduction17959.output := by lin_cert using reduction17959.terms
def image17960 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17960 : InImage map_38_242 image17960 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction17960 : Bundle := named_bundle% "RealMapCertificates/relations/basis17960.json"
theorem reductionProof17960 : EqualModuloRelations reduction17960.relations reduction17960.input reduction17960.output := by lin_cert using reduction17960.terms
theorem substitutionProof17960 : IsMapEvaluation generatorImages reduction17960.relations [8,8,8,974] reduction17960.output := by lin_cert using reduction17960.terms
def image17961 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17961 : InImage map_38_242 image17961 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction17961 : Bundle := named_bundle% "RealMapCertificates/relations/basis17961.json"
theorem reductionProof17961 : EqualModuloRelations reduction17961.relations reduction17961.input reduction17961.output := by lin_cert using reduction17961.terms
theorem substitutionProof17961 : IsMapEvaluation generatorImages reduction17961.relations [8,8,8,8,8,9,13,209] reduction17961.output := by lin_cert using reduction17961.terms
def image17962 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17962 : InImage map_38_242 image17962 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction17962 : Bundle := named_bundle% "RealMapCertificates/relations/basis17962.json"
theorem reductionProof17962 : EqualModuloRelations reduction17962.relations reduction17962.input reduction17962.output := by lin_cert using reduction17962.terms
theorem substitutionProof17962 : IsMapEvaluation generatorImages reduction17962.relations [1,1,260,260] reduction17962.output := by lin_cert using reduction17962.terms
def image17963 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17963 : InImage map_38_242 image17963 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction17963 : Bundle := named_bundle% "RealMapCertificates/relations/basis17963.json"
theorem reductionProof17963 : EqualModuloRelations reduction17963.relations reduction17963.input reduction17963.output := by lin_cert using reduction17963.terms
theorem substitutionProof17963 : IsMapEvaluation generatorImages reduction17963.relations [0,0,1991] reduction17963.output := by lin_cert using reduction17963.terms
def image17964 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17964 : InImage map_38_242 image17964 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction17964 : Bundle := named_bundle% "RealMapCertificates/relations/basis17964.json"
theorem reductionProof17964 : EqualModuloRelations reduction17964.relations reduction17964.input reduction17964.output := by lin_cert using reduction17964.terms
theorem substitutionProof17964 : IsMapEvaluation generatorImages reduction17964.relations [0,0,0,1967] reduction17964.output := by lin_cert using reduction17964.terms
def map_38_243 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18246 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18246 : InImage map_38_243 image18246 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18246 : Bundle := named_bundle% "RealMapCertificates/relations/basis18246.json"
theorem reductionProof18246 : EqualModuloRelations reduction18246.relations reduction18246.input reduction18246.output := by lin_cert using reduction18246.terms
theorem substitutionProof18246 : IsMapEvaluation generatorImages reduction18246.relations [13,13,13,13,13,13,13,101] reduction18246.output := by lin_cert using reduction18246.terms
def image18247 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18247 : InImage map_38_243 image18247 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18247 : Bundle := named_bundle% "RealMapCertificates/relations/basis18247.json"
theorem reductionProof18247 : EqualModuloRelations reduction18247.relations reduction18247.input reduction18247.output := by lin_cert using reduction18247.terms
theorem substitutionProof18247 : IsMapEvaluation generatorImages reduction18247.relations [8,1639] reduction18247.output := by lin_cert using reduction18247.terms
def image18248 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18248 : InImage map_38_243 image18248 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18248 : Bundle := named_bundle% "RealMapCertificates/relations/basis18248.json"
theorem reductionProof18248 : EqualModuloRelations reduction18248.relations reduction18248.input reduction18248.output := by lin_cert using reduction18248.terms
theorem substitutionProof18248 : IsMapEvaluation generatorImages reduction18248.relations [8,8,8,9,13,13,267] reduction18248.output := by lin_cert using reduction18248.terms
def image18249 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18249 : InImage map_38_243 image18249 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18249 : Bundle := named_bundle% "RealMapCertificates/relations/basis18249.json"
theorem reductionProof18249 : EqualModuloRelations reduction18249.relations reduction18249.input reduction18249.output := by lin_cert using reduction18249.terms
theorem substitutionProof18249 : IsMapEvaluation generatorImages reduction18249.relations [8,8,8,8,64,212] reduction18249.output := by lin_cert using reduction18249.terms
def image18250 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18250 : InImage map_38_243 image18250 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18250 : Bundle := named_bundle% "RealMapCertificates/relations/basis18250.json"
theorem reductionProof18250 : EqualModuloRelations reduction18250.relations reduction18250.input reduction18250.output := by lin_cert using reduction18250.terms
theorem substitutionProof18250 : IsMapEvaluation generatorImages reduction18250.relations [0,0,0,1992] reduction18250.output := by lin_cert using reduction18250.terms
def image18251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18251 : InImage map_38_243 image18251 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18251 : Bundle := named_bundle% "RealMapCertificates/relations/basis18251.json"
theorem reductionProof18251 : EqualModuloRelations reduction18251.relations reduction18251.input reduction18251.output := by lin_cert using reduction18251.terms
theorem substitutionProof18251 : IsMapEvaluation generatorImages reduction18251.relations [0,0,0,0,0,1927] reduction18251.output := by lin_cert using reduction18251.terms
def map_38_244 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image18448 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18448 : InImage map_38_244 image18448 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18448 : Bundle := named_bundle% "RealMapCertificates/relations/basis18448.json"
theorem reductionProof18448 : EqualModuloRelations reduction18448.relations reduction18448.input reduction18448.output := by lin_cert using reduction18448.terms
theorem substitutionProof18448 : IsMapEvaluation generatorImages reduction18448.relations [13,13,13,784] reduction18448.output := by lin_cert using reduction18448.terms
def image18449 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18449 : InImage map_38_244 image18449 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18449 : Bundle := named_bundle% "RealMapCertificates/relations/basis18449.json"
theorem reductionProof18449 : EqualModuloRelations reduction18449.relations reduction18449.input reduction18449.output := by lin_cert using reduction18449.terms
theorem substitutionProof18449 : IsMapEvaluation generatorImages reduction18449.relations [8,72,642] reduction18449.output := by lin_cert using reduction18449.terms
def image18450 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18450 : InImage map_38_244 image18450 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18450 : Bundle := named_bundle% "RealMapCertificates/relations/basis18450.json"
theorem reductionProof18450 : EqualModuloRelations reduction18450.relations reduction18450.input reduction18450.output := by lin_cert using reduction18450.terms
theorem substitutionProof18450 : IsMapEvaluation generatorImages reduction18450.relations [8,8,9,963] reduction18450.output := by lin_cert using reduction18450.terms
def image18451 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18451 : InImage map_38_244 image18451 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18451 : Bundle := named_bundle% "RealMapCertificates/relations/basis18451.json"
theorem reductionProof18451 : EqualModuloRelations reduction18451.relations reduction18451.input reduction18451.output := by lin_cert using reduction18451.terms
theorem substitutionProof18451 : IsMapEvaluation generatorImages reduction18451.relations [1,1,1991] reduction18451.output := by lin_cert using reduction18451.terms
def image18452 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18452 : InImage map_38_244 image18452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18452 : Bundle := named_bundle% "RealMapCertificates/relations/basis18452.json"
theorem reductionProof18452 : EqualModuloRelations reduction18452.relations reduction18452.input reduction18452.output := by lin_cert using reduction18452.terms
theorem substitutionProof18452 : IsMapEvaluation generatorImages reduction18452.relations [0,0,0,0,1994] reduction18452.output := by lin_cert using reduction18452.terms
def map_38_245 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image18705 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18705 : InImage map_38_245 image18705 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18705 : Bundle := named_bundle% "RealMapCertificates/relations/basis18705.json"
theorem reductionProof18705 : EqualModuloRelations reduction18705.relations reduction18705.input reduction18705.output := by lin_cert using reduction18705.terms
theorem substitutionProof18705 : IsMapEvaluation generatorImages reduction18705.relations [64,64,260] reduction18705.output := by lin_cert using reduction18705.terms
def image18706 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18706 : InImage map_38_245 image18706 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18706 : Bundle := named_bundle% "RealMapCertificates/relations/basis18706.json"
theorem reductionProof18706 : EqualModuloRelations reduction18706.relations reduction18706.input reduction18706.output := by lin_cert using reduction18706.terms
theorem substitutionProof18706 : IsMapEvaluation generatorImages reduction18706.relations [8,13,13,13,13,346] reduction18706.output := by lin_cert using reduction18706.terms
def image18707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18707 : InImage map_38_245 image18707 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18707 : Bundle := named_bundle% "RealMapCertificates/relations/basis18707.json"
theorem reductionProof18707 : EqualModuloRelations reduction18707.relations reduction18707.input reduction18707.output := by lin_cert using reduction18707.terms
theorem substitutionProof18707 : IsMapEvaluation generatorImages reduction18707.relations [8,8,8,1035] reduction18707.output := by lin_cert using reduction18707.terms
def image18708 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18708 : InImage map_38_245 image18708 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18708 : Bundle := named_bundle% "RealMapCertificates/relations/basis18708.json"
theorem reductionProof18708 : EqualModuloRelations reduction18708.relations reduction18708.input reduction18708.output := by lin_cert using reduction18708.terms
theorem substitutionProof18708 : IsMapEvaluation generatorImages reduction18708.relations [8,8,8,64,318] reduction18708.output := by lin_cert using reduction18708.terms
def image18709 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18709 : InImage map_38_245 image18709 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18709 : Bundle := named_bundle% "RealMapCertificates/relations/basis18709.json"
theorem reductionProof18709 : EqualModuloRelations reduction18709.relations reduction18709.input reduction18709.output := by lin_cert using reduction18709.terms
theorem substitutionProof18709 : IsMapEvaluation generatorImages reduction18709.relations [8,8,8,8,8,13,13,209] reduction18709.output := by lin_cert using reduction18709.terms
end RealMapCertificates
