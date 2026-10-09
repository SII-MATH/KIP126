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
  | 64 => []
  | 75 => []
  | 83 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 166 => [[6,9,12]]
  | 188 => []
  | 209 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 267 => []
  | 278 => []
  | 279 => []
  | 301 => []
  | 303 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 349 => []
  | 382 => []
  | 420 => []
  | 491 => []
  | 585 => []
  | 610 => []
  | 627 => []
  | 640 => []
  | 655 => []
  | 690 => []
  | 729 => []
  | 761 => []
  | 797 => []
  | 812 => []
  | 854 => []
  | 897 => []
  | 898 => []
  | 919 => []
  | 956 => []
  | 963 => []
  | 976 => []
  | 1367 => []
  | 1385 => []
  | 1539 => []
  | 1688 => [[7,7,9,12,12,12]]
  | 1720 => []
  | 1901 => []
  | 1993 => []
  | 2095 => []
  | 2121 => []
  | 2125 => []
  | 2196 => []
  | 2239 => [[0,0,8,12,12,12,12]]
  | 2301 => []
  | 2304 => []
  | 2307 => []
  | 2309 => []
  | 2332 => [[0,0,9,12,12,12,12]]
  | 2333 => [[1,9,12,12,12,12]]
  | 2334 => []
  | 2340 => []
  | 2342 => []
  | 2381 => []
  | 2403 => []
  | 2404 => []
  | 2438 => []
  | 2542 => []
  | 2544 => []
  | 2546 => []
  | 2581 => []
  | 2582 => []
  | 2676 => []
  | 2677 => []
  | 2743 => []
  | _ => []
def map_38_246 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image18998 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18998 : InImage map_38_246 image18998 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18998 : Bundle := named_bundle% "RealMapCertificates/relations/basis18998.json"
theorem reductionProof18998 : EqualModuloRelations reduction18998.relations reduction18998.input reduction18998.output := by lin_cert using reduction18998.terms
theorem substitutionProof18998 : IsMapEvaluation generatorImages reduction18998.relations [2196] reduction18998.output := by lin_cert using reduction18998.terms
def image18999 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18999 : InImage map_38_246 image18999 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18999 : Bundle := named_bundle% "RealMapCertificates/relations/basis18999.json"
theorem reductionProof18999 : EqualModuloRelations reduction18999.relations reduction18999.input reduction18999.output := by lin_cert using reduction18999.terms
theorem substitutionProof18999 : IsMapEvaluation generatorImages reduction18999.relations [8,1688] reduction18999.output := by lin_cert using reduction18999.terms
def image19000 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19000 : InImage map_38_246 image19000 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19000 : Bundle := named_bundle% "RealMapCertificates/relations/basis19000.json"
theorem reductionProof19000 : EqualModuloRelations reduction19000.relations reduction19000.input reduction19000.output := by lin_cert using reduction19000.terms
theorem substitutionProof19000 : IsMapEvaluation generatorImages reduction19000.relations [8,8,8,13,13,13,267] reduction19000.output := by lin_cert using reduction19000.terms
def image19001 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19001 : InImage map_38_246 image19001 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19001 : Bundle := named_bundle% "RealMapCertificates/relations/basis19001.json"
theorem reductionProof19001 : EqualModuloRelations reduction19001.relations reduction19001.input reduction19001.output := by lin_cert using reduction19001.terms
theorem substitutionProof19001 : IsMapEvaluation generatorImages reduction19001.relations [8,8,8,8,8,610] reduction19001.output := by lin_cert using reduction19001.terms
def image19002 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19002 : InImage map_38_246 image19002 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19002 : Bundle := named_bundle% "RealMapCertificates/relations/basis19002.json"
theorem reductionProof19002 : EqualModuloRelations reduction19002.relations reduction19002.input reduction19002.output := by lin_cert using reduction19002.terms
theorem substitutionProof19002 : IsMapEvaluation generatorImages reduction19002.relations [0,64,897] reduction19002.output := by lin_cert using reduction19002.terms
def map_38_247 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image19249 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19249 : InImage map_38_247 image19249 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19249 : Bundle := named_bundle% "RealMapCertificates/relations/basis19249.json"
theorem reductionProof19249 : EqualModuloRelations reduction19249.relations reduction19249.input reduction19249.output := by lin_cert using reduction19249.terms
theorem substitutionProof19249 : IsMapEvaluation generatorImages reduction19249.relations [2239] reduction19249.output := by lin_cert using reduction19249.terms
def image19250 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19250 : InImage map_38_247 image19250 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19250 : Bundle := named_bundle% "RealMapCertificates/relations/basis19250.json"
theorem reductionProof19250 : EqualModuloRelations reduction19250.relations reduction19250.input reduction19250.output := by lin_cert using reduction19250.terms
theorem substitutionProof19250 : IsMapEvaluation generatorImages reduction19250.relations [8,8,1385] reduction19250.output := by lin_cert using reduction19250.terms
def image19251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19251 : InImage map_38_247 image19251 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19251 : Bundle := named_bundle% "RealMapCertificates/relations/basis19251.json"
theorem reductionProof19251 : EqualModuloRelations reduction19251.relations reduction19251.input reduction19251.output := by lin_cert using reduction19251.terms
theorem substitutionProof19251 : IsMapEvaluation generatorImages reduction19251.relations [8,8,13,963] reduction19251.output := by lin_cert using reduction19251.terms
def image19252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19252 : InImage map_38_247 image19252 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19252 : Bundle := named_bundle% "RealMapCertificates/relations/basis19252.json"
theorem reductionProof19252 : EqualModuloRelations reduction19252.relations reduction19252.input reduction19252.output := by lin_cert using reduction19252.terms
theorem substitutionProof19252 : IsMapEvaluation generatorImages reduction19252.relations [0,64,919] reduction19252.output := by lin_cert using reduction19252.terms
def image19253 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19253 : InImage map_38_247 image19253 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19253 : Bundle := named_bundle% "RealMapCertificates/relations/basis19253.json"
theorem reductionProof19253 : EqualModuloRelations reduction19253.relations reduction19253.input reduction19253.output := by lin_cert using reduction19253.terms
theorem substitutionProof19253 : IsMapEvaluation generatorImages reduction19253.relations [0,0,0,0,2095] reduction19253.output := by lin_cert using reduction19253.terms
def map_38_248 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19508 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19508 : InImage map_38_248 image19508 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19508 : Bundle := named_bundle% "RealMapCertificates/relations/basis19508.json"
theorem reductionProof19508 : EqualModuloRelations reduction19508.relations reduction19508.input reduction19508.output := by lin_cert using reduction19508.terms
theorem substitutionProof19508 : IsMapEvaluation generatorImages reduction19508.relations [64,64,278] reduction19508.output := by lin_cert using reduction19508.terms
def image19509 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19509 : InImage map_38_248 image19509 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19509 : Bundle := named_bundle% "RealMapCertificates/relations/basis19509.json"
theorem reductionProof19509 : EqualModuloRelations reduction19509.relations reduction19509.input reduction19509.output := by lin_cert using reduction19509.terms
theorem substitutionProof19509 : IsMapEvaluation generatorImages reduction19509.relations [9,13,13,13,13,346] reduction19509.output := by lin_cert using reduction19509.terms
def image19510 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19510 : InImage map_38_248 image19510 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19510 : Bundle := named_bundle% "RealMapCertificates/relations/basis19510.json"
theorem reductionProof19510 : EqualModuloRelations reduction19510.relations reduction19510.input reduction19510.output := by lin_cert using reduction19510.terms
theorem substitutionProof19510 : IsMapEvaluation generatorImages reduction19510.relations [8,8,8,64,348] reduction19510.output := by lin_cert using reduction19510.terms
def image19511 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19511 : InImage map_38_248 image19511 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19511 : Bundle := named_bundle% "RealMapCertificates/relations/basis19511.json"
theorem reductionProof19511 : EqualModuloRelations reduction19511.relations reduction19511.input reduction19511.output := by lin_cert using reduction19511.terms
theorem substitutionProof19511 : IsMapEvaluation generatorImages reduction19511.relations [8,8,8,23,627] reduction19511.output := by lin_cert using reduction19511.terms
def image19512 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19512 : InImage map_38_248 image19512 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19512 : Bundle := named_bundle% "RealMapCertificates/relations/basis19512.json"
theorem reductionProof19512 : EqualModuloRelations reduction19512.relations reduction19512.input reduction19512.output := by lin_cert using reduction19512.terms
theorem substitutionProof19512 : IsMapEvaluation generatorImages reduction19512.relations [8,8,8,8,9,13,13,209] reduction19512.output := by lin_cert using reduction19512.terms
def image19513 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19513 : InImage map_38_248 image19513 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19513 : Bundle := named_bundle% "RealMapCertificates/relations/basis19513.json"
theorem reductionProof19513 : EqualModuloRelations reduction19513.relations reduction19513.input reduction19513.output := by lin_cert using reduction19513.terms
theorem substitutionProof19513 : IsMapEvaluation generatorImages reduction19513.relations [1,64,919] reduction19513.output := by lin_cert using reduction19513.terms
def image19514 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19514 : InImage map_38_248 image19514 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19514 : Bundle := named_bundle% "RealMapCertificates/relations/basis19514.json"
theorem reductionProof19514 : EqualModuloRelations reduction19514.relations reduction19514.input reduction19514.output := by lin_cert using reduction19514.terms
theorem substitutionProof19514 : IsMapEvaluation generatorImages reduction19514.relations [0,0,0,64,898] reduction19514.output := by lin_cert using reduction19514.terms
def image19515 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19515 : InImage map_38_248 image19515 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19515 : Bundle := named_bundle% "RealMapCertificates/relations/basis19515.json"
theorem reductionProof19515 : EqualModuloRelations reduction19515.relations reduction19515.input reduction19515.output := by lin_cert using reduction19515.terms
theorem substitutionProof19515 : IsMapEvaluation generatorImages reduction19515.relations [0,0,0,0,2121] reduction19515.output := by lin_cert using reduction19515.terms
def map_38_249 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image19815 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19815 : InImage map_38_249 image19815 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19815 : Bundle := named_bundle% "RealMapCertificates/relations/basis19815.json"
theorem reductionProof19815 : EqualModuloRelations reduction19815.relations reduction19815.input reduction19815.output := by lin_cert using reduction19815.terms
theorem substitutionProof19815 : IsMapEvaluation generatorImages reduction19815.relations [2301] reduction19815.output := by lin_cert using reduction19815.terms
def image19816 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19816 : InImage map_38_249 image19816 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19816 : Bundle := named_bundle% "RealMapCertificates/relations/basis19816.json"
theorem reductionProof19816 : EqualModuloRelations reduction19816.relations reduction19816.input reduction19816.output := by lin_cert using reduction19816.terms
theorem substitutionProof19816 : IsMapEvaluation generatorImages reduction19816.relations [64,956] reduction19816.output := by lin_cert using reduction19816.terms
def image19817 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19817 : InImage map_38_249 image19817 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19817 : Bundle := named_bundle% "RealMapCertificates/relations/basis19817.json"
theorem reductionProof19817 : EqualModuloRelations reduction19817.relations reduction19817.input reduction19817.output := by lin_cert using reduction19817.terms
theorem substitutionProof19817 : IsMapEvaluation generatorImages reduction19817.relations [9,1688] reduction19817.output := by lin_cert using reduction19817.terms
def image19818 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19818 : InImage map_38_249 image19818 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19818 : Bundle := named_bundle% "RealMapCertificates/relations/basis19818.json"
theorem reductionProof19818 : EqualModuloRelations reduction19818.relations reduction19818.input reduction19818.output := by lin_cert using reduction19818.terms
theorem substitutionProof19818 : IsMapEvaluation generatorImages reduction19818.relations [8,8,9,13,13,13,267] reduction19818.output := by lin_cert using reduction19818.terms
def image19819 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19819 : InImage map_38_249 image19819 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19819 : Bundle := named_bundle% "RealMapCertificates/relations/basis19819.json"
theorem reductionProof19819 : EqualModuloRelations reduction19819.relations reduction19819.input reduction19819.output := by lin_cert using reduction19819.terms
theorem substitutionProof19819 : IsMapEvaluation generatorImages reduction19819.relations [8,8,8,8,8,640] reduction19819.output := by lin_cert using reduction19819.terms
def image19820 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19820 : InImage map_38_249 image19820 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19820 : Bundle := named_bundle% "RealMapCertificates/relations/basis19820.json"
theorem reductionProof19820 : EqualModuloRelations reduction19820.relations reduction19820.input reduction19820.output := by lin_cert using reduction19820.terms
theorem substitutionProof19820 : IsMapEvaluation generatorImages reduction19820.relations [0,0,0,0,0,2125] reduction19820.output := by lin_cert using reduction19820.terms
def map_38_250 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20032 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20032 : InImage map_38_250 image20032 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20032 : Bundle := named_bundle% "RealMapCertificates/relations/basis20032.json"
theorem reductionProof20032 : EqualModuloRelations reduction20032.relations reduction20032.input reduction20032.output := by lin_cert using reduction20032.terms
theorem substitutionProof20032 : IsMapEvaluation generatorImages reduction20032.relations [2332] reduction20032.output := by lin_cert using reduction20032.terms
def image20033 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20033 : InImage map_38_250 image20033 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20033 : Bundle := named_bundle% "RealMapCertificates/relations/basis20033.json"
theorem reductionProof20033 : EqualModuloRelations reduction20033.relations reduction20033.input reduction20033.output := by lin_cert using reduction20033.terms
theorem substitutionProof20033 : IsMapEvaluation generatorImages reduction20033.relations [13,13,13,13,585] reduction20033.output := by lin_cert using reduction20033.terms
def image20034 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20034 : InImage map_38_250 image20034 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20034 : Bundle := named_bundle% "RealMapCertificates/relations/basis20034.json"
theorem reductionProof20034 : EqualModuloRelations reduction20034.relations reduction20034.input reduction20034.output := by lin_cert using reduction20034.terms
theorem substitutionProof20034 : IsMapEvaluation generatorImages reduction20034.relations [13,13,13,13,13,13,23,83] reduction20034.output := by lin_cert using reduction20034.terms
def image20035 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20035 : InImage map_38_250 image20035 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20035 : Bundle := named_bundle% "RealMapCertificates/relations/basis20035.json"
theorem reductionProof20035 : EqualModuloRelations reduction20035.relations reduction20035.input reduction20035.output := by lin_cert using reduction20035.terms
theorem substitutionProof20035 : IsMapEvaluation generatorImages reduction20035.relations [8,9,13,963] reduction20035.output := by lin_cert using reduction20035.terms
def image20036 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20036 : InImage map_38_250 image20036 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20036 : Bundle := named_bundle% "RealMapCertificates/relations/basis20036.json"
theorem reductionProof20036 : EqualModuloRelations reduction20036.relations reduction20036.input reduction20036.output := by lin_cert using reduction20036.terms
theorem substitutionProof20036 : IsMapEvaluation generatorImages reduction20036.relations [8,8,149,279] reduction20036.output := by lin_cert using reduction20036.terms
def map_38_251 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20318 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20318 : InImage map_38_251 image20318 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20318 : Bundle := named_bundle% "RealMapCertificates/relations/basis20318.json"
theorem reductionProof20318 : EqualModuloRelations reduction20318.relations reduction20318.input reduction20318.output := by lin_cert using reduction20318.terms
theorem substitutionProof20318 : IsMapEvaluation generatorImages reduction20318.relations [16,64,627] reduction20318.output := by lin_cert using reduction20318.terms
def image20319 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20319 : InImage map_38_251 image20319 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20319 : Bundle := named_bundle% "RealMapCertificates/relations/basis20319.json"
theorem reductionProof20319 : EqualModuloRelations reduction20319.relations reduction20319.input reduction20319.output := by lin_cert using reduction20319.terms
theorem substitutionProof20319 : IsMapEvaluation generatorImages reduction20319.relations [13,13,13,13,13,346] reduction20319.output := by lin_cert using reduction20319.terms
def image20320 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20320 : InImage map_38_251 image20320 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20320 : Bundle := named_bundle% "RealMapCertificates/relations/basis20320.json"
theorem reductionProof20320 : EqualModuloRelations reduction20320.relations reduction20320.input reduction20320.output := by lin_cert using reduction20320.terms
theorem substitutionProof20320 : IsMapEvaluation generatorImages reduction20320.relations [8,8,8,23,655] reduction20320.output := by lin_cert using reduction20320.terms
def image20321 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20321 : InImage map_38_251 image20321 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20321 : Bundle := named_bundle% "RealMapCertificates/relations/basis20321.json"
theorem reductionProof20321 : EqualModuloRelations reduction20321.relations reduction20321.input reduction20321.output := by lin_cert using reduction20321.terms
theorem substitutionProof20321 : IsMapEvaluation generatorImages reduction20321.relations [8,8,8,8,64,250] reduction20321.output := by lin_cert using reduction20321.terms
def image20322 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20322 : InImage map_38_251 image20322 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20322 : Bundle := named_bundle% "RealMapCertificates/relations/basis20322.json"
theorem reductionProof20322 : EqualModuloRelations reduction20322.relations reduction20322.input reduction20322.output := by lin_cert using reduction20322.terms
theorem substitutionProof20322 : IsMapEvaluation generatorImages reduction20322.relations [8,8,8,8,13,13,13,209] reduction20322.output := by lin_cert using reduction20322.terms
def map_38_252 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20615 : InImage map_38_252 image20615 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20615 : Bundle := named_bundle% "RealMapCertificates/relations/basis20615.json"
theorem reductionProof20615 : EqualModuloRelations reduction20615.relations reduction20615.input reduction20615.output := by lin_cert using reduction20615.terms
theorem substitutionProof20615 : IsMapEvaluation generatorImages reduction20615.relations [2403] reduction20615.output := by lin_cert using reduction20615.terms
def image20616 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20616 : InImage map_38_252 image20616 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20616 : Bundle := named_bundle% "RealMapCertificates/relations/basis20616.json"
theorem reductionProof20616 : EqualModuloRelations reduction20616.relations reduction20616.input reduction20616.output := by lin_cert using reduction20616.terms
theorem substitutionProof20616 : IsMapEvaluation generatorImages reduction20616.relations [64,138,188] reduction20616.output := by lin_cert using reduction20616.terms
def image20617 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20617 : InImage map_38_252 image20617 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20617 : Bundle := named_bundle% "RealMapCertificates/relations/basis20617.json"
theorem reductionProof20617 : EqualModuloRelations reduction20617.relations reduction20617.input reduction20617.output := by lin_cert using reduction20617.terms
theorem substitutionProof20617 : IsMapEvaluation generatorImages reduction20617.relations [13,1688] reduction20617.output := by lin_cert using reduction20617.terms
def image20618 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20618 : InImage map_38_252 image20618 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20618 : Bundle := named_bundle% "RealMapCertificates/relations/basis20618.json"
theorem reductionProof20618 : EqualModuloRelations reduction20618.relations reduction20618.input reduction20618.output := by lin_cert using reduction20618.terms
theorem substitutionProof20618 : IsMapEvaluation generatorImages reduction20618.relations [8,8,13,13,13,13,267] reduction20618.output := by lin_cert using reduction20618.terms
def image20619 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20619 : InImage map_38_252 image20619 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20619 : Bundle := named_bundle% "RealMapCertificates/relations/basis20619.json"
theorem reductionProof20619 : EqualModuloRelations reduction20619.relations reduction20619.input reduction20619.output := by lin_cert using reduction20619.terms
theorem substitutionProof20619 : IsMapEvaluation generatorImages reduction20619.relations [8,8,8,8,9,640] reduction20619.output := by lin_cert using reduction20619.terms
def image20620 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20620 : InImage map_38_252 image20620 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20620 : Bundle := named_bundle% "RealMapCertificates/relations/basis20620.json"
theorem reductionProof20620 : EqualModuloRelations reduction20620.relations reduction20620.input reduction20620.output := by lin_cert using reduction20620.terms
theorem substitutionProof20620 : IsMapEvaluation generatorImages reduction20620.relations [1,2333] reduction20620.output := by lin_cert using reduction20620.terms
def image20621 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20621 : InImage map_38_252 image20621 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20621 : Bundle := named_bundle% "RealMapCertificates/relations/basis20621.json"
theorem reductionProof20621 : EqualModuloRelations reduction20621.relations reduction20621.input reduction20621.output := by lin_cert using reduction20621.terms
theorem substitutionProof20621 : IsMapEvaluation generatorImages reduction20621.relations [0,0,64,963] reduction20621.output := by lin_cert using reduction20621.terms
def map_38_253 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image20857 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20857 : InImage map_38_253 image20857 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20857 : Bundle := named_bundle% "RealMapCertificates/relations/basis20857.json"
theorem reductionProof20857 : EqualModuloRelations reduction20857.relations reduction20857.input reduction20857.output := by lin_cert using reduction20857.terms
theorem substitutionProof20857 : IsMapEvaluation generatorImages reduction20857.relations [2438] reduction20857.output := by lin_cert using reduction20857.terms
def image20858 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20858 : InImage map_38_253 image20858 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20858 : Bundle := named_bundle% "RealMapCertificates/relations/basis20858.json"
theorem reductionProof20858 : EqualModuloRelations reduction20858.relations reduction20858.input reduction20858.output := by lin_cert using reduction20858.terms
theorem substitutionProof20858 : IsMapEvaluation generatorImages reduction20858.relations [8,13,13,963] reduction20858.output := by lin_cert using reduction20858.terms
def image20859 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20859 : InImage map_38_253 image20859 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20859 : Bundle := named_bundle% "RealMapCertificates/relations/basis20859.json"
theorem reductionProof20859 : EqualModuloRelations reduction20859.relations reduction20859.input reduction20859.output := by lin_cert using reduction20859.terms
theorem substitutionProof20859 : IsMapEvaluation generatorImages reduction20859.relations [8,8,8,149,209] reduction20859.output := by lin_cert using reduction20859.terms
def image20860 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20860 : InImage map_38_253 image20860 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20860 : Bundle := named_bundle% "RealMapCertificates/relations/basis20860.json"
theorem reductionProof20860 : EqualModuloRelations reduction20860.relations reduction20860.input reduction20860.output := by lin_cert using reduction20860.terms
theorem substitutionProof20860 : IsMapEvaluation generatorImages reduction20860.relations [0,2404] reduction20860.output := by lin_cert using reduction20860.terms
def image20861 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20861 : InImage map_38_253 image20861 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20861 : Bundle := named_bundle% "RealMapCertificates/relations/basis20861.json"
theorem reductionProof20861 : EqualModuloRelations reduction20861.relations reduction20861.input reduction20861.output := by lin_cert using reduction20861.terms
theorem substitutionProof20861 : IsMapEvaluation generatorImages reduction20861.relations [0,64,64,301] reduction20861.output := by lin_cert using reduction20861.terms
def image20862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20862 : InImage map_38_253 image20862 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20862 : Bundle := named_bundle% "RealMapCertificates/relations/basis20862.json"
theorem reductionProof20862 : EqualModuloRelations reduction20862.relations reduction20862.input reduction20862.output := by lin_cert using reduction20862.terms
theorem substitutionProof20862 : IsMapEvaluation generatorImages reduction20862.relations [0,0,0,2334] reduction20862.output := by lin_cert using reduction20862.terms
def map_38_254 : Matrix 1 7 := fun i j => ([false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image21147 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21147 : InImage map_38_254 image21147 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21147 : Bundle := named_bundle% "RealMapCertificates/relations/basis21147.json"
theorem reductionProof21147 : EqualModuloRelations reduction21147.relations reduction21147.input reduction21147.output := by lin_cert using reduction21147.terms
theorem substitutionProof21147 : IsMapEvaluation generatorImages reduction21147.relations [8,64,797] reduction21147.output := by lin_cert using reduction21147.terms
def image21148 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21148 : InImage map_38_254 image21148 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21148 : Bundle := named_bundle% "RealMapCertificates/relations/basis21148.json"
theorem reductionProof21148 : EqualModuloRelations reduction21148.relations reduction21148.input reduction21148.output := by lin_cert using reduction21148.terms
theorem substitutionProof21148 : IsMapEvaluation generatorImages reduction21148.relations [8,8,8,23,690] reduction21148.output := by lin_cert using reduction21148.terms
def image21149 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21149 : InImage map_38_254 image21149 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21149 : Bundle := named_bundle% "RealMapCertificates/relations/basis21149.json"
theorem reductionProof21149 : EqualModuloRelations reduction21149.relations reduction21149.input reduction21149.output := by lin_cert using reduction21149.terms
theorem substitutionProof21149 : IsMapEvaluation generatorImages reduction21149.relations [8,8,8,9,13,13,13,209] reduction21149.output := by lin_cert using reduction21149.terms
def image21150 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21150 : InImage map_38_254 image21150 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21150 : Bundle := named_bundle% "RealMapCertificates/relations/basis21150.json"
theorem reductionProof21150 : EqualModuloRelations reduction21150.relations reduction21150.input reduction21150.output := by lin_cert using reduction21150.terms
theorem substitutionProof21150 : IsMapEvaluation generatorImages reduction21150.relations [8,8,8,8,64,261] reduction21150.output := by lin_cert using reduction21150.terms
def image21151 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21151 : InImage map_38_254 image21151 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21151 : Bundle := named_bundle% "RealMapCertificates/relations/basis21151.json"
theorem reductionProof21151 : EqualModuloRelations reduction21151.relations reduction21151.input reduction21151.output := by lin_cert using reduction21151.terms
theorem substitutionProof21151 : IsMapEvaluation generatorImages reduction21151.relations [1,1,64,963] reduction21151.output := by lin_cert using reduction21151.terms
def image21152 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21152 : InImage map_38_254 image21152 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21152 : Bundle := named_bundle% "RealMapCertificates/relations/basis21152.json"
theorem reductionProof21152 : EqualModuloRelations reduction21152.relations reduction21152.input reduction21152.output := by lin_cert using reduction21152.terms
theorem substitutionProof21152 : IsMapEvaluation generatorImages reduction21152.relations [0,0,0,64,976] reduction21152.output := by lin_cert using reduction21152.terms
def image21153 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21153 : InImage map_38_254 image21153 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21153 : Bundle := named_bundle% "RealMapCertificates/relations/basis21153.json"
theorem reductionProof21153 : EqualModuloRelations reduction21153.relations reduction21153.input reduction21153.output := by lin_cert using reduction21153.terms
theorem substitutionProof21153 : IsMapEvaluation generatorImages reduction21153.relations [0,0,0,0,0,17,1539] reduction21153.output := by lin_cert using reduction21153.terms
def map_38_255 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image21492 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21492 : InImage map_38_255 image21492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21492 : Bundle := named_bundle% "RealMapCertificates/relations/basis21492.json"
theorem reductionProof21492 : EqualModuloRelations reduction21492.relations reduction21492.input reduction21492.output := by lin_cert using reduction21492.terms
theorem substitutionProof21492 : IsMapEvaluation generatorImages reduction21492.relations [8,1901] reduction21492.output := by lin_cert using reduction21492.terms
def image21493 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21493 : InImage map_38_255 image21493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21493 : Bundle := named_bundle% "RealMapCertificates/relations/basis21493.json"
theorem reductionProof21493 : EqualModuloRelations reduction21493.relations reduction21493.input reduction21493.output := by lin_cert using reduction21493.terms
theorem substitutionProof21493 : IsMapEvaluation generatorImages reduction21493.relations [8,64,812] reduction21493.output := by lin_cert using reduction21493.terms
def image21494 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21494 : InImage map_38_255 image21494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21494 : Bundle := named_bundle% "RealMapCertificates/relations/basis21494.json"
theorem reductionProof21494 : EqualModuloRelations reduction21494.relations reduction21494.input reduction21494.output := by lin_cert using reduction21494.terms
theorem substitutionProof21494 : IsMapEvaluation generatorImages reduction21494.relations [8,9,13,13,13,13,267] reduction21494.output := by lin_cert using reduction21494.terms
def image21495 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21495 : InImage map_38_255 image21495 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21495 : Bundle := named_bundle% "RealMapCertificates/relations/basis21495.json"
theorem reductionProof21495 : EqualModuloRelations reduction21495.relations reduction21495.input reduction21495.output := by lin_cert using reduction21495.terms
theorem substitutionProof21495 : IsMapEvaluation generatorImages reduction21495.relations [8,8,8,8,13,640] reduction21495.output := by lin_cert using reduction21495.terms
def image21496 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21496 : InImage map_38_255 image21496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21496 : Bundle := named_bundle% "RealMapCertificates/relations/basis21496.json"
theorem reductionProof21496 : EqualModuloRelations reduction21496.relations reduction21496.input reduction21496.output := by lin_cert using reduction21496.terms
theorem substitutionProof21496 : IsMapEvaluation generatorImages reduction21496.relations [0,0,0,0,0,260,349] reduction21496.output := by lin_cert using reduction21496.terms
def image21497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21497 : InImage map_38_255 image21497 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21497 : Bundle := named_bundle% "RealMapCertificates/relations/basis21497.json"
theorem reductionProof21497 : EqualModuloRelations reduction21497.relations reduction21497.input reduction21497.output := by lin_cert using reduction21497.terms
theorem substitutionProof21497 : IsMapEvaluation generatorImages reduction21497.relations [0,0,0,0,0,0,2304] reduction21497.output := by lin_cert using reduction21497.terms
def map_38_256 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image21755 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21755 : InImage map_38_256 image21755 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21755 : Bundle := named_bundle% "RealMapCertificates/relations/basis21755.json"
theorem reductionProof21755 : EqualModuloRelations reduction21755.relations reduction21755.input reduction21755.output := by lin_cert using reduction21755.terms
theorem substitutionProof21755 : IsMapEvaluation generatorImages reduction21755.relations [2581] reduction21755.output := by lin_cert using reduction21755.terms
def image21756 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21756 : InImage map_38_256 image21756 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21756 : Bundle := named_bundle% "RealMapCertificates/relations/basis21756.json"
theorem reductionProof21756 : EqualModuloRelations reduction21756.relations reduction21756.input reduction21756.output := by lin_cert using reduction21756.terms
theorem substitutionProof21756 : IsMapEvaluation generatorImages reduction21756.relations [9,13,13,963] reduction21756.output := by lin_cert using reduction21756.terms
def image21757 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21757 : InImage map_38_256 image21757 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21757 : Bundle := named_bundle% "RealMapCertificates/relations/basis21757.json"
theorem reductionProof21757 : EqualModuloRelations reduction21757.relations reduction21757.input reduction21757.output := by lin_cert using reduction21757.terms
theorem substitutionProof21757 : IsMapEvaluation generatorImages reduction21757.relations [9,13,13,13,13,13,13,13,75] reduction21757.output := by lin_cert using reduction21757.terms
def image21758 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21758 : InImage map_38_256 image21758 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21758 : Bundle := named_bundle% "RealMapCertificates/relations/basis21758.json"
theorem reductionProof21758 : EqualModuloRelations reduction21758.relations reduction21758.input reduction21758.output := by lin_cert using reduction21758.terms
theorem substitutionProof21758 : IsMapEvaluation generatorImages reduction21758.relations [8,8,8,160,209] reduction21758.output := by lin_cert using reduction21758.terms
def image21759 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21759 : InImage map_38_256 image21759 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21759 : Bundle := named_bundle% "RealMapCertificates/relations/basis21759.json"
theorem reductionProof21759 : EqualModuloRelations reduction21759.relations reduction21759.input reduction21759.output := by lin_cert using reduction21759.terms
theorem substitutionProof21759 : IsMapEvaluation generatorImages reduction21759.relations [0,2542] reduction21759.output := by lin_cert using reduction21759.terms
def image21760 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21760 : InImage map_38_256 image21760 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21760 : Bundle := named_bundle% "RealMapCertificates/relations/basis21760.json"
theorem reductionProof21760 : EqualModuloRelations reduction21760.relations reduction21760.input reduction21760.output := by lin_cert using reduction21760.terms
theorem substitutionProof21760 : IsMapEvaluation generatorImages reduction21760.relations [0,0,0,0,0,0,0,2307] reduction21760.output := by lin_cert using reduction21760.terms
def map_38_257 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22095 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22095 : InImage map_38_257 image22095 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22095 : Bundle := named_bundle% "RealMapCertificates/relations/basis22095.json"
theorem reductionProof22095 : EqualModuloRelations reduction22095.relations reduction22095.input reduction22095.output := by lin_cert using reduction22095.terms
theorem substitutionProof22095 : IsMapEvaluation generatorImages reduction22095.relations [64,64,347] reduction22095.output := by lin_cert using reduction22095.terms
def image22096 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22096 : InImage map_38_257 image22096 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22096 : Bundle := named_bundle% "RealMapCertificates/relations/basis22096.json"
theorem reductionProof22096 : EqualModuloRelations reduction22096.relations reduction22096.input reduction22096.output := by lin_cert using reduction22096.terms
theorem substitutionProof22096 : IsMapEvaluation generatorImages reduction22096.relations [8,8,64,627] reduction22096.output := by lin_cert using reduction22096.terms
def image22097 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22097 : InImage map_38_257 image22097 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22097 : Bundle := named_bundle% "RealMapCertificates/relations/basis22097.json"
theorem reductionProof22097 : EqualModuloRelations reduction22097.relations reduction22097.input reduction22097.output := by lin_cert using reduction22097.terms
theorem substitutionProof22097 : IsMapEvaluation generatorImages reduction22097.relations [8,8,9,23,690] reduction22097.output := by lin_cert using reduction22097.terms
def image22098 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22098 : InImage map_38_257 image22098 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22098 : Bundle := named_bundle% "RealMapCertificates/relations/basis22098.json"
theorem reductionProof22098 : EqualModuloRelations reduction22098.relations reduction22098.input reduction22098.output := by lin_cert using reduction22098.terms
theorem substitutionProof22098 : IsMapEvaluation generatorImages reduction22098.relations [8,8,8,13,13,13,13,209] reduction22098.output := by lin_cert using reduction22098.terms
def image22099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22099 : InImage map_38_257 image22099 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22099 : Bundle := named_bundle% "RealMapCertificates/relations/basis22099.json"
theorem reductionProof22099 : EqualModuloRelations reduction22099.relations reduction22099.input reduction22099.output := by lin_cert using reduction22099.terms
theorem substitutionProof22099 : IsMapEvaluation generatorImages reduction22099.relations [8,8,8,8,8,729] reduction22099.output := by lin_cert using reduction22099.terms
def image22100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22100 : InImage map_38_257 image22100 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22100 : Bundle := named_bundle% "RealMapCertificates/relations/basis22100.json"
theorem reductionProof22100 : EqualModuloRelations reduction22100.relations reduction22100.input reduction22100.output := by lin_cert using reduction22100.terms
theorem substitutionProof22100 : IsMapEvaluation generatorImages reduction22100.relations [0,0,0,0,0,0,0,2340] reduction22100.output := by lin_cert using reduction22100.terms
def map_38_258 : Matrix 0 10 := fun i j => ([] : List Bool)[i.val*10+j.val]!
def image22450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22450 : InImage map_38_258 image22450 := by lin_cert using (fun j : Fin 10 => decide (j.val = 0))
def reduction22450 : Bundle := named_bundle% "RealMapCertificates/relations/basis22450.json"
theorem reductionProof22450 : EqualModuloRelations reduction22450.relations reduction22450.input reduction22450.output := by lin_cert using reduction22450.terms
theorem substitutionProof22450 : IsMapEvaluation generatorImages reduction22450.relations [2676] reduction22450.output := by lin_cert using reduction22450.terms
def image22451 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22451 : InImage map_38_258 image22451 := by lin_cert using (fun j : Fin 10 => decide (j.val = 1))
def reduction22451 : Bundle := named_bundle% "RealMapCertificates/relations/basis22451.json"
theorem reductionProof22451 : EqualModuloRelations reduction22451.relations reduction22451.input reduction22451.output := by lin_cert using reduction22451.terms
theorem substitutionProof22451 : IsMapEvaluation generatorImages reduction22451.relations [13,13,1367] reduction22451.output := by lin_cert using reduction22451.terms
def image22452 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22452 : InImage map_38_258 image22452 := by lin_cert using (fun j : Fin 10 => decide (j.val = 2))
def reduction22452 : Bundle := named_bundle% "RealMapCertificates/relations/basis22452.json"
theorem reductionProof22452 : EqualModuloRelations reduction22452.relations reduction22452.input reduction22452.output := by lin_cert using reduction22452.terms
theorem substitutionProof22452 : IsMapEvaluation generatorImages reduction22452.relations [13,13,13,13,23,303] reduction22452.output := by lin_cert using reduction22452.terms
def image22453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22453 : InImage map_38_258 image22453 := by lin_cert using (fun j : Fin 10 => decide (j.val = 3))
def reduction22453 : Bundle := named_bundle% "RealMapCertificates/relations/basis22453.json"
theorem reductionProof22453 : EqualModuloRelations reduction22453.relations reduction22453.input reduction22453.output := by lin_cert using reduction22453.terms
theorem substitutionProof22453 : IsMapEvaluation generatorImages reduction22453.relations [8,1993] reduction22453.output := by lin_cert using reduction22453.terms
def image22454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22454 : InImage map_38_258 image22454 := by lin_cert using (fun j : Fin 10 => decide (j.val = 4))
def reduction22454 : Bundle := named_bundle% "RealMapCertificates/relations/basis22454.json"
theorem reductionProof22454 : EqualModuloRelations reduction22454.relations reduction22454.input reduction22454.output := by lin_cert using reduction22454.terms
theorem substitutionProof22454 : IsMapEvaluation generatorImages reduction22454.relations [8,64,854] reduction22454.output := by lin_cert using reduction22454.terms
def image22455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22455 : InImage map_38_258 image22455 := by lin_cert using (fun j : Fin 10 => decide (j.val = 5))
def reduction22455 : Bundle := named_bundle% "RealMapCertificates/relations/basis22455.json"
theorem reductionProof22455 : EqualModuloRelations reduction22455.relations reduction22455.input reduction22455.output := by lin_cert using reduction22455.terms
theorem substitutionProof22455 : IsMapEvaluation generatorImages reduction22455.relations [8,13,13,13,13,13,267] reduction22455.output := by lin_cert using reduction22455.terms
def image22456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22456 : InImage map_38_258 image22456 := by lin_cert using (fun j : Fin 10 => decide (j.val = 6))
def reduction22456 : Bundle := named_bundle% "RealMapCertificates/relations/basis22456.json"
theorem reductionProof22456 : EqualModuloRelations reduction22456.relations reduction22456.input reduction22456.output := by lin_cert using reduction22456.terms
theorem substitutionProof22456 : IsMapEvaluation generatorImages reduction22456.relations [8,8,8,9,13,640] reduction22456.output := by lin_cert using reduction22456.terms
def image22457 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22457 : InImage map_38_258 image22457 := by lin_cert using (fun j : Fin 10 => decide (j.val = 7))
def reduction22457 : Bundle := named_bundle% "RealMapCertificates/relations/basis22457.json"
theorem reductionProof22457 : EqualModuloRelations reduction22457.relations reduction22457.input reduction22457.output := by lin_cert using reduction22457.terms
theorem substitutionProof22457 : IsMapEvaluation generatorImages reduction22457.relations [1,260,420] reduction22457.output := by lin_cert using reduction22457.terms
def image22458 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22458 : InImage map_38_258 image22458 := by lin_cert using (fun j : Fin 10 => decide (j.val = 8))
def reduction22458 : Bundle := named_bundle% "RealMapCertificates/relations/basis22458.json"
theorem reductionProof22458 : EqualModuloRelations reduction22458.relations reduction22458.input reduction22458.output := by lin_cert using reduction22458.terms
theorem substitutionProof22458 : IsMapEvaluation generatorImages reduction22458.relations [0,64,138,209] reduction22458.output := by lin_cert using reduction22458.terms
def image22459 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22459 : InImage map_38_258 image22459 := by lin_cert using (fun j : Fin 10 => decide (j.val = 9))
def reduction22459 : Bundle := named_bundle% "RealMapCertificates/relations/basis22459.json"
theorem reductionProof22459 : EqualModuloRelations reduction22459.relations reduction22459.input reduction22459.output := by lin_cert using reduction22459.terms
theorem substitutionProof22459 : IsMapEvaluation generatorImages reduction22459.relations [0,0,0,0,0,0,0,0,2342] reduction22459.output := by lin_cert using reduction22459.terms
def map_38_259 : Matrix 0 9 := fun i j => ([] : List Bool)[i.val*9+j.val]!
def image22761 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22761 : InImage map_38_259 image22761 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction22761 : Bundle := named_bundle% "RealMapCertificates/relations/basis22761.json"
theorem reductionProof22761 : EqualModuloRelations reduction22761.relations reduction22761.input reduction22761.output := by lin_cert using reduction22761.terms
theorem substitutionProof22761 : IsMapEvaluation generatorImages reduction22761.relations [250,491] reduction22761.output := by lin_cert using reduction22761.terms
def image22762 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22762 : InImage map_38_259 image22762 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction22762 : Bundle := named_bundle% "RealMapCertificates/relations/basis22762.json"
theorem reductionProof22762 : EqualModuloRelations reduction22762.relations reduction22762.input reduction22762.output := by lin_cert using reduction22762.terms
theorem substitutionProof22762 : IsMapEvaluation generatorImages reduction22762.relations [17,1720] reduction22762.output := by lin_cert using reduction22762.terms
def image22763 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22763 : InImage map_38_259 image22763 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction22763 : Bundle := named_bundle% "RealMapCertificates/relations/basis22763.json"
theorem reductionProof22763 : EqualModuloRelations reduction22763.relations reduction22763.input reduction22763.output := by lin_cert using reduction22763.terms
theorem substitutionProof22763 : IsMapEvaluation generatorImages reduction22763.relations [13,13,13,963] reduction22763.output := by lin_cert using reduction22763.terms
def image22764 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22764 : InImage map_38_259 image22764 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction22764 : Bundle := named_bundle% "RealMapCertificates/relations/basis22764.json"
theorem reductionProof22764 : EqualModuloRelations reduction22764.relations reduction22764.input reduction22764.output := by lin_cert using reduction22764.terms
theorem substitutionProof22764 : IsMapEvaluation generatorImages reduction22764.relations [13,13,13,13,13,13,13,13,75] reduction22764.output := by lin_cert using reduction22764.terms
def image22765 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22765 : InImage map_38_259 image22765 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction22765 : Bundle := named_bundle% "RealMapCertificates/relations/basis22765.json"
theorem reductionProof22765 : EqualModuloRelations reduction22765.relations reduction22765.input reduction22765.output := by lin_cert using reduction22765.terms
theorem substitutionProof22765 : IsMapEvaluation generatorImages reduction22765.relations [8,8,8,166,209] reduction22765.output := by lin_cert using reduction22765.terms
def image22766 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22766 : InImage map_38_259 image22766 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction22766 : Bundle := named_bundle% "RealMapCertificates/relations/basis22766.json"
theorem reductionProof22766 : EqualModuloRelations reduction22766.relations reduction22766.input reduction22766.output := by lin_cert using reduction22766.terms
theorem substitutionProof22766 : IsMapEvaluation generatorImages reduction22766.relations [0,2677] reduction22766.output := by lin_cert using reduction22766.terms
def image22767 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22767 : InImage map_38_259 image22767 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction22767 : Bundle := named_bundle% "RealMapCertificates/relations/basis22767.json"
theorem reductionProof22767 : EqualModuloRelations reduction22767.relations reduction22767.input reduction22767.output := by lin_cert using reduction22767.terms
theorem substitutionProof22767 : IsMapEvaluation generatorImages reduction22767.relations [0,0,0,0,2544] reduction22767.output := by lin_cert using reduction22767.terms
def image22768 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22768 : InImage map_38_259 image22768 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction22768 : Bundle := named_bundle% "RealMapCertificates/relations/basis22768.json"
theorem reductionProof22768 : EqualModuloRelations reduction22768.relations reduction22768.input reduction22768.output := by lin_cert using reduction22768.terms
theorem substitutionProof22768 : IsMapEvaluation generatorImages reduction22768.relations [0,0,0,0,0,0,0,0,2381] reduction22768.output := by lin_cert using reduction22768.terms
def image22769 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22769 : InImage map_38_259 image22769 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction22769 : Bundle := named_bundle% "RealMapCertificates/relations/basis22769.json"
theorem reductionProof22769 : EqualModuloRelations reduction22769.relations reduction22769.input reduction22769.output := by lin_cert using reduction22769.terms
theorem substitutionProof22769 : IsMapEvaluation generatorImages reduction22769.relations [0,0,0,0,0,0,0,0,0,0,2309] reduction22769.output := by lin_cert using reduction22769.terms
def map_38_260 : Matrix 1 9 := fun i j => ([false,false,false,false,false,false,false,false,false] : List Bool)[i.val*9+j.val]!
def image23136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23136 : InImage map_38_260 image23136 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23136 : Bundle := named_bundle% "RealMapCertificates/relations/basis23136.json"
theorem reductionProof23136 : EqualModuloRelations reduction23136.relations reduction23136.input reduction23136.output := by lin_cert using reduction23136.terms
theorem substitutionProof23136 : IsMapEvaluation generatorImages reduction23136.relations [64,64,382] reduction23136.output := by lin_cert using reduction23136.terms
def image23137 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23137 : InImage map_38_260 image23137 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23137 : Bundle := named_bundle% "RealMapCertificates/relations/basis23137.json"
theorem reductionProof23137 : EqualModuloRelations reduction23137.relations reduction23137.input reduction23137.output := by lin_cert using reduction23137.terms
theorem substitutionProof23137 : IsMapEvaluation generatorImages reduction23137.relations [8,8,64,655] reduction23137.output := by lin_cert using reduction23137.terms
def image23138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23138 : InImage map_38_260 image23138 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23138 : Bundle := named_bundle% "RealMapCertificates/relations/basis23138.json"
theorem reductionProof23138 : EqualModuloRelations reduction23138.relations reduction23138.input reduction23138.output := by lin_cert using reduction23138.terms
theorem substitutionProof23138 : IsMapEvaluation generatorImages reduction23138.relations [8,8,13,23,690] reduction23138.output := by lin_cert using reduction23138.terms
def image23139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23139 : InImage map_38_260 image23139 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23139 : Bundle := named_bundle% "RealMapCertificates/relations/basis23139.json"
theorem reductionProof23139 : EqualModuloRelations reduction23139.relations reduction23139.input reduction23139.output := by lin_cert using reduction23139.terms
theorem substitutionProof23139 : IsMapEvaluation generatorImages reduction23139.relations [8,8,9,13,13,13,13,209] reduction23139.output := by lin_cert using reduction23139.terms
def image23140 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23140 : InImage map_38_260 image23140 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23140 : Bundle := named_bundle% "RealMapCertificates/relations/basis23140.json"
theorem reductionProof23140 : EqualModuloRelations reduction23140.relations reduction23140.input reduction23140.output := by lin_cert using reduction23140.terms
theorem substitutionProof23140 : IsMapEvaluation generatorImages reduction23140.relations [8,8,8,8,8,761] reduction23140.output := by lin_cert using reduction23140.terms
def image23141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23141 : InImage map_38_260 image23141 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23141 : Bundle := named_bundle% "RealMapCertificates/relations/basis23141.json"
theorem reductionProof23141 : EqualModuloRelations reduction23141.relations reduction23141.input reduction23141.output := by lin_cert using reduction23141.terms
theorem substitutionProof23141 : IsMapEvaluation generatorImages reduction23141.relations [0,2743] reduction23141.output := by lin_cert using reduction23141.terms
def image23142 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23142 : InImage map_38_260 image23142 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23142 : Bundle := named_bundle% "RealMapCertificates/relations/basis23142.json"
theorem reductionProof23142 : EqualModuloRelations reduction23142.relations reduction23142.input reduction23142.output := by lin_cert using reduction23142.terms
theorem substitutionProof23142 : IsMapEvaluation generatorImages reduction23142.relations [0,0,0,64,64,349] reduction23142.output := by lin_cert using reduction23142.terms
def image23143 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23143 : InImage map_38_260 image23143 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23143 : Bundle := named_bundle% "RealMapCertificates/relations/basis23143.json"
theorem reductionProof23143 : EqualModuloRelations reduction23143.relations reduction23143.input reduction23143.output := by lin_cert using reduction23143.terms
theorem substitutionProof23143 : IsMapEvaluation generatorImages reduction23143.relations [0,0,0,0,2582] reduction23143.output := by lin_cert using reduction23143.terms
def image23144 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23144 : InImage map_38_260 image23144 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23144 : Bundle := named_bundle% "RealMapCertificates/relations/basis23144.json"
theorem reductionProof23144 : EqualModuloRelations reduction23144.relations reduction23144.input reduction23144.output := by lin_cert using reduction23144.terms
theorem substitutionProof23144 : IsMapEvaluation generatorImages reduction23144.relations [0,0,0,0,0,2546] reduction23144.output := by lin_cert using reduction23144.terms
end RealMapCertificates
