import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 154 => [[0,5,8,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 185 => [[0,4,4,8,12]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 206 => [[4,6,8,12]]
  | 210 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 227 => [[2,4,4,4,4,4,4,4,4,4]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 256 => [[3,4,4,4,4,4,4,4,4,4]]
  | 257 => [[4,4,6,8,12]]
  | 267 => []
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 343 => [[4,4,4,6,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 623 => []
  | 640 => []
  | 667 => []
  | 686 => [[4,4,4,4,4,4,7,7,12]]
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
  | 919 => []
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 1063 => []
  | 2094 => []
  | 2095 => []
  | _ => []
def map_38_261 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image23579 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23579 : InImage map_38_261 image23579 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23579 : Bundle := named_bundle% "RealMapCertificates/relations/basis23579.json"
theorem reductionProof23579 : EqualModuloRelations reduction23579.relations reduction23579.input reduction23579.output := by lin_cert using reduction23579.terms
theorem substitutionProof23579 : IsMapEvaluation generatorImages reduction23579.relations [9,13,13,13,13,13,267] reduction23579.output := by lin_cert using reduction23579.terms
def image23580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23580 : InImage map_38_261 image23580 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23580 : Bundle := named_bundle% "RealMapCertificates/relations/basis23580.json"
theorem reductionProof23580 : EqualModuloRelations reduction23580.relations reduction23580.input reduction23580.output := by lin_cert using reduction23580.terms
theorem substitutionProof23580 : IsMapEvaluation generatorImages reduction23580.relations [8,2095] reduction23580.output := by lin_cert using reduction23580.terms
def image23581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23581 : InImage map_38_261 image23581 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23581 : Bundle := named_bundle% "RealMapCertificates/relations/basis23581.json"
theorem reductionProof23581 : EqualModuloRelations reduction23581.relations reduction23581.input reduction23581.output := by lin_cert using reduction23581.terms
theorem substitutionProof23581 : IsMapEvaluation generatorImages reduction23581.relations [8,2094] reduction23581.output := by lin_cert using reduction23581.terms
def image23582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23582 : InImage map_38_261 image23582 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23582 : Bundle := named_bundle% "RealMapCertificates/relations/basis23582.json"
theorem reductionProof23582 : EqualModuloRelations reduction23582.relations reduction23582.input reduction23582.output := by lin_cert using reduction23582.terms
theorem substitutionProof23582 : IsMapEvaluation generatorImages reduction23582.relations [8,8,64,667] reduction23582.output := by lin_cert using reduction23582.terms
def image23583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23583 : InImage map_38_261 image23583 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23583 : Bundle := named_bundle% "RealMapCertificates/relations/basis23583.json"
theorem reductionProof23583 : EqualModuloRelations reduction23583.relations reduction23583.input reduction23583.output := by lin_cert using reduction23583.terms
theorem substitutionProof23583 : IsMapEvaluation generatorImages reduction23583.relations [8,8,8,13,13,640] reduction23583.output := by lin_cert using reduction23583.terms
def image23584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23584 : InImage map_38_261 image23584 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23584 : Bundle := named_bundle% "RealMapCertificates/relations/basis23584.json"
theorem reductionProof23584 : EqualModuloRelations reduction23584.relations reduction23584.input reduction23584.output := by lin_cert using reduction23584.terms
theorem substitutionProof23584 : IsMapEvaluation generatorImages reduction23584.relations [0,0,0,0,0,64,1063] reduction23584.output := by lin_cert using reduction23584.terms
def map_39_39 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image155 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation155 : InImage map_39_39 image155 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction155 : Bundle := named_bundle% "RealMapCertificates/relations/basis155.json"
theorem reductionProof155 : EqualModuloRelations reduction155.relations reduction155.input reduction155.output := by lin_cert using reduction155.terms
theorem substitutionProof155 : IsMapEvaluation generatorImages reduction155.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction155.output := by lin_cert using reduction155.terms
def map_39_114 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1699 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1699 : InImage map_39_114 image1699 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1699 : Bundle := named_bundle% "RealMapCertificates/relations/basis1699.json"
theorem reductionProof1699 : EqualModuloRelations reduction1699.relations reduction1699.input reduction1699.output := by lin_cert using reduction1699.terms
theorem substitutionProof1699 : IsMapEvaluation generatorImages reduction1699.relations [0,0,227] reduction1699.output := by lin_cert using reduction1699.terms
def map_39_118 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1845 : InImage map_39_118 image1845 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1845 : Bundle := named_bundle% "RealMapCertificates/relations/basis1845.json"
theorem reductionProof1845 : EqualModuloRelations reduction1845.relations reduction1845.input reduction1845.output := by lin_cert using reduction1845.terms
theorem substitutionProof1845 : IsMapEvaluation generatorImages reduction1845.relations [0,0,0,0,0,0,0,0,0,0,210] reduction1845.output := by lin_cert using reduction1845.terms
def map_39_119 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image1884 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation1884 : InImage map_39_119 image1884 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1884 : Bundle := named_bundle% "RealMapCertificates/relations/basis1884.json"
theorem reductionProof1884 : EqualModuloRelations reduction1884.relations reduction1884.input reduction1884.output := by lin_cert using reduction1884.terms
theorem substitutionProof1884 : IsMapEvaluation generatorImages reduction1884.relations [256] reduction1884.output := by lin_cert using reduction1884.terms
def map_39_120 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1916 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1916 : InImage map_39_120 image1916 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1916 : Bundle := named_bundle% "RealMapCertificates/relations/basis1916.json"
theorem reductionProof1916 : EqualModuloRelations reduction1916.relations reduction1916.input reduction1916.output := by lin_cert using reduction1916.terms
theorem substitutionProof1916 : IsMapEvaluation generatorImages reduction1916.relations [0,0,0,252] reduction1916.output := by lin_cert using reduction1916.terms
def map_39_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2163 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2163 : InImage map_39_126 image2163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2163 : Bundle := named_bundle% "RealMapCertificates/relations/basis2163.json"
theorem reductionProof2163 : EqualModuloRelations reduction2163.relations reduction2163.input reduction2163.output := by lin_cert using reduction2163.terms
theorem substitutionProof2163 : IsMapEvaluation generatorImages reduction2163.relations [296] reduction2163.output := by lin_cert using reduction2163.terms
def map_39_129 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2319 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2319 : InImage map_39_129 image2319 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2319 : Bundle := named_bundle% "RealMapCertificates/relations/basis2319.json"
theorem reductionProof2319 : EqualModuloRelations reduction2319.relations reduction2319.input reduction2319.output := by lin_cert using reduction2319.terms
theorem substitutionProof2319 : IsMapEvaluation generatorImages reduction2319.relations [326] reduction2319.output := by lin_cert using reduction2319.terms
def map_39_132 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2499 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2499 : InImage map_39_132 image2499 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2499 : Bundle := named_bundle% "RealMapCertificates/relations/basis2499.json"
theorem reductionProof2499 : EqualModuloRelations reduction2499.relations reduction2499.input reduction2499.output := by lin_cert using reduction2499.terms
theorem substitutionProof2499 : IsMapEvaluation generatorImages reduction2499.relations [16,183] reduction2499.output := by lin_cert using reduction2499.terms
def map_39_133 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2584 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2584 : InImage map_39_133 image2584 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2584 : Bundle := named_bundle% "RealMapCertificates/relations/basis2584.json"
theorem reductionProof2584 : EqualModuloRelations reduction2584.relations reduction2584.input reduction2584.output := by lin_cert using reduction2584.terms
theorem substitutionProof2584 : IsMapEvaluation generatorImages reduction2584.relations [0,17,183] reduction2584.output := by lin_cert using reduction2584.terms
def map_39_134 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2643 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2643 : InImage map_39_134 image2643 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2643 : Bundle := named_bundle% "RealMapCertificates/relations/basis2643.json"
theorem reductionProof2643 : EqualModuloRelations reduction2643.relations reduction2643.input reduction2643.output := by lin_cert using reduction2643.terms
theorem substitutionProof2643 : IsMapEvaluation generatorImages reduction2643.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2643.output := by lin_cert using reduction2643.terms
def map_39_135 : Matrix 5 1 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2723 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation2723 : InImage map_39_135 image2723 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2723 : Bundle := named_bundle% "RealMapCertificates/relations/basis2723.json"
theorem reductionProof2723 : EqualModuloRelations reduction2723.relations reduction2723.input reduction2723.output := by lin_cert using reduction2723.terms
theorem substitutionProof2723 : IsMapEvaluation generatorImages reduction2723.relations [8,253] reduction2723.output := by lin_cert using reduction2723.terms
def map_39_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2811 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2811 : InImage map_39_136 image2811 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2811 : Bundle := named_bundle% "RealMapCertificates/relations/basis2811.json"
theorem reductionProof2811 : EqualModuloRelations reduction2811.relations reduction2811.input reduction2811.output := by lin_cert using reduction2811.terms
theorem substitutionProof2811 : IsMapEvaluation generatorImages reduction2811.relations [0,17,200] reduction2811.output := by lin_cert using reduction2811.terms
def map_39_138 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2948 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2948 : InImage map_39_138 image2948 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2948 : Bundle := named_bundle% "RealMapCertificates/relations/basis2948.json"
theorem reductionProof2948 : EqualModuloRelations reduction2948.relations reduction2948.input reduction2948.output := by lin_cert using reduction2948.terms
theorem substitutionProof2948 : IsMapEvaluation generatorImages reduction2948.relations [8,8,183] reduction2948.output := by lin_cert using reduction2948.terms
def map_39_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3114 : InImage map_39_140 image3114 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3114 : Bundle := named_bundle% "RealMapCertificates/relations/basis3114.json"
theorem reductionProof3114 : EqualModuloRelations reduction3114.relations reduction3114.input reduction3114.output := by lin_cert using reduction3114.terms
theorem substitutionProof3114 : IsMapEvaluation generatorImages reduction3114.relations [0,0,0,0,0,402] reduction3114.output := by lin_cert using reduction3114.terms
def map_39_141 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3202 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3202 : InImage map_39_141 image3202 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3202 : Bundle := named_bundle% "RealMapCertificates/relations/basis3202.json"
theorem reductionProof3202 : EqualModuloRelations reduction3202.relations reduction3202.input reduction3202.output := by lin_cert using reduction3202.terms
theorem substitutionProof3202 : IsMapEvaluation generatorImages reduction3202.relations [8,8,200] reduction3202.output := by lin_cert using reduction3202.terms
def image3203 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3203 : InImage map_39_141 image3203 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3203 : Bundle := named_bundle% "RealMapCertificates/relations/basis3203.json"
theorem reductionProof3203 : EqualModuloRelations reduction3203.relations reduction3203.input reduction3203.output := by lin_cert using reduction3203.terms
theorem substitutionProof3203 : IsMapEvaluation generatorImages reduction3203.relations [0,0,0,0,0,0,403] reduction3203.output := by lin_cert using reduction3203.terms
def map_39_144 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3444 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3444 : InImage map_39_144 image3444 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3444 : Bundle := named_bundle% "RealMapCertificates/relations/basis3444.json"
theorem reductionProof3444 : EqualModuloRelations reduction3444.relations reduction3444.input reduction3444.output := by lin_cert using reduction3444.terms
theorem substitutionProof3444 : IsMapEvaluation generatorImages reduction3444.relations [8,8,16,111] reduction3444.output := by lin_cert using reduction3444.terms
def map_39_147 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3704 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3704 : InImage map_39_147 image3704 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3704 : Bundle := named_bundle% "RealMapCertificates/relations/basis3704.json"
theorem reductionProof3704 : EqualModuloRelations reduction3704.relations reduction3704.input reduction3704.output := by lin_cert using reduction3704.terms
theorem substitutionProof3704 : IsMapEvaluation generatorImages reduction3704.relations [8,8,8,153] reduction3704.output := by lin_cert using reduction3704.terms
def map_39_149 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3876 : InImage map_39_149 image3876 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3876 : Bundle := named_bundle% "RealMapCertificates/relations/basis3876.json"
theorem reductionProof3876 : EqualModuloRelations reduction3876.relations reduction3876.input reduction3876.output := by lin_cert using reduction3876.terms
theorem substitutionProof3876 : IsMapEvaluation generatorImages reduction3876.relations [5,402] reduction3876.output := by lin_cert using reduction3876.terms
def map_39_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3958 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3958 : InImage map_39_150 image3958 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3958 : Bundle := named_bundle% "RealMapCertificates/relations/basis3958.json"
theorem reductionProof3958 : EqualModuloRelations reduction3958.relations reduction3958.input reduction3958.output := by lin_cert using reduction3958.terms
theorem substitutionProof3958 : IsMapEvaluation generatorImages reduction3958.relations [8,8,8,8,111] reduction3958.output := by lin_cert using reduction3958.terms
def map_39_151 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image4078 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4078 : InImage map_39_151 image4078 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4078 : Bundle := named_bundle% "RealMapCertificates/relations/basis4078.json"
theorem reductionProof4078 : EqualModuloRelations reduction4078.relations reduction4078.input reduction4078.output := by lin_cert using reduction4078.terms
theorem substitutionProof4078 : IsMapEvaluation generatorImages reduction4078.relations [0,555] reduction4078.output := by lin_cert using reduction4078.terms
def map_39_152 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4149 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4149 : InImage map_39_152 image4149 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4149 : Bundle := named_bundle% "RealMapCertificates/relations/basis4149.json"
theorem reductionProof4149 : EqualModuloRelations reduction4149.relations reduction4149.input reduction4149.output := by lin_cert using reduction4149.terms
theorem substitutionProof4149 : IsMapEvaluation generatorImages reduction4149.relations [0,0,556] reduction4149.output := by lin_cert using reduction4149.terms
def map_39_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4241 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4241 : InImage map_39_153 image4241 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4241 : Bundle := named_bundle% "RealMapCertificates/relations/basis4241.json"
theorem reductionProof4241 : EqualModuloRelations reduction4241.relations reduction4241.input reduction4241.output := by lin_cert using reduction4241.terms
theorem substitutionProof4241 : IsMapEvaluation generatorImages reduction4241.relations [8,8,8,8,117] reduction4241.output := by lin_cert using reduction4241.terms
def map_39_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4327 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4327 : InImage map_39_154 image4327 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4327 : Bundle := named_bundle% "RealMapCertificates/relations/basis4327.json"
theorem reductionProof4327 : EqualModuloRelations reduction4327.relations reduction4327.input reduction4327.output := by lin_cert using reduction4327.terms
theorem substitutionProof4327 : IsMapEvaluation generatorImages reduction4327.relations [0,8,402] reduction4327.output := by lin_cert using reduction4327.terms
def map_39_155 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image4402 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4402 : InImage map_39_155 image4402 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4402 : Bundle := named_bundle% "RealMapCertificates/relations/basis4402.json"
theorem reductionProof4402 : EqualModuloRelations reduction4402.relations reduction4402.input reduction4402.output := by lin_cert using reduction4402.terms
theorem substitutionProof4402 : IsMapEvaluation generatorImages reduction4402.relations [0,0,8,403] reduction4402.output := by lin_cert using reduction4402.terms
def map_39_156 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4482 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4482 : InImage map_39_156 image4482 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4482 : Bundle := named_bundle% "RealMapCertificates/relations/basis4482.json"
theorem reductionProof4482 : EqualModuloRelations reduction4482.relations reduction4482.input reduction4482.output := by lin_cert using reduction4482.terms
theorem substitutionProof4482 : IsMapEvaluation generatorImages reduction4482.relations [8,8,8,8,16,50] reduction4482.output := by lin_cert using reduction4482.terms
def map_39_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4592 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4592 : InImage map_39_157 image4592 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4592 : Bundle := named_bundle% "RealMapCertificates/relations/basis4592.json"
theorem reductionProof4592 : EqualModuloRelations reduction4592.relations reduction4592.input reduction4592.output := by lin_cert using reduction4592.terms
theorem substitutionProof4592 : IsMapEvaluation generatorImages reduction4592.relations [0,8,432] reduction4592.output := by lin_cert using reduction4592.terms
def map_39_158 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image4666 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4666 : InImage map_39_158 image4666 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4666 : Bundle := named_bundle% "RealMapCertificates/relations/basis4666.json"
theorem reductionProof4666 : EqualModuloRelations reduction4666.relations reduction4666.input reduction4666.output := by lin_cert using reduction4666.terms
theorem substitutionProof4666 : IsMapEvaluation generatorImages reduction4666.relations [0,0,8,433] reduction4666.output := by lin_cert using reduction4666.terms
def image4667 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4667 : InImage map_39_158 image4667 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4667 : Bundle := named_bundle% "RealMapCertificates/relations/basis4667.json"
theorem reductionProof4667 : EqualModuloRelations reduction4667.relations reduction4667.input reduction4667.output := by lin_cert using reduction4667.terms
theorem substitutionProof4667 : IsMapEvaluation generatorImages reduction4667.relations [0,0,0,595] reduction4667.output := by lin_cert using reduction4667.terms
def map_39_159 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4753 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4753 : InImage map_39_159 image4753 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4753 : Bundle := named_bundle% "RealMapCertificates/relations/basis4753.json"
theorem reductionProof4753 : EqualModuloRelations reduction4753.relations reduction4753.input reduction4753.output := by lin_cert using reduction4753.terms
theorem substitutionProof4753 : IsMapEvaluation generatorImages reduction4753.relations [8,8,8,8,8,78] reduction4753.output := by lin_cert using reduction4753.terms
def map_39_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4848 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4848 : InImage map_39_160 image4848 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4848 : Bundle := named_bundle% "RealMapCertificates/relations/basis4848.json"
theorem reductionProof4848 : EqualModuloRelations reduction4848.relations reduction4848.input reduction4848.output := by lin_cert using reduction4848.terms
theorem substitutionProof4848 : IsMapEvaluation generatorImages reduction4848.relations [0,8,16,224] reduction4848.output := by lin_cert using reduction4848.terms
def map_39_161 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4928 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4928 : InImage map_39_161 image4928 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4928 : Bundle := named_bundle% "RealMapCertificates/relations/basis4928.json"
theorem reductionProof4928 : EqualModuloRelations reduction4928.relations reduction4928.input reduction4928.output := by lin_cert using reduction4928.terms
theorem substitutionProof4928 : IsMapEvaluation generatorImages reduction4928.relations [0,0,8,16,225] reduction4928.output := by lin_cert using reduction4928.terms
def map_39_162 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5024 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5024 : InImage map_39_162 image5024 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5024 : Bundle := named_bundle% "RealMapCertificates/relations/basis5024.json"
theorem reductionProof5024 : EqualModuloRelations reduction5024.relations reduction5024.input reduction5024.output := by lin_cert using reduction5024.terms
theorem substitutionProof5024 : IsMapEvaluation generatorImages reduction5024.relations [8,8,8,8,8,8,50] reduction5024.output := by lin_cert using reduction5024.terms
def map_39_163 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image5142 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5142 : InImage map_39_163 image5142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5142 : Bundle := named_bundle% "RealMapCertificates/relations/basis5142.json"
theorem reductionProof5142 : EqualModuloRelations reduction5142.relations reduction5142.input reduction5142.output := by lin_cert using reduction5142.terms
theorem substitutionProof5142 : IsMapEvaluation generatorImages reduction5142.relations [0,8,8,297] reduction5142.output := by lin_cert using reduction5142.terms
def map_39_164 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5217 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5217 : InImage map_39_164 image5217 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5217 : Bundle := named_bundle% "RealMapCertificates/relations/basis5217.json"
theorem reductionProof5217 : EqualModuloRelations reduction5217.relations reduction5217.input reduction5217.output := by lin_cert using reduction5217.terms
theorem substitutionProof5217 : IsMapEvaluation generatorImages reduction5217.relations [0,0,8,8,298] reduction5217.output := by lin_cert using reduction5217.terms
def map_39_165 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5328 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5328 : InImage map_39_165 image5328 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5328 : Bundle := named_bundle% "RealMapCertificates/relations/basis5328.json"
theorem reductionProof5328 : EqualModuloRelations reduction5328.relations reduction5328.input reduction5328.output := by lin_cert using reduction5328.terms
theorem substitutionProof5328 : IsMapEvaluation generatorImages reduction5328.relations [8,8,8,8,8,8,56] reduction5328.output := by lin_cert using reduction5328.terms
def image5329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5329 : InImage map_39_165 image5329 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5329 : Bundle := named_bundle% "RealMapCertificates/relations/basis5329.json"
theorem reductionProof5329 : EqualModuloRelations reduction5329.relations reduction5329.input reduction5329.output := by lin_cert using reduction5329.terms
theorem substitutionProof5329 : IsMapEvaluation generatorImages reduction5329.relations [0,686] reduction5329.output := by lin_cert using reduction5329.terms
def map_39_166 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5444 : InImage map_39_166 image5444 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5444 : Bundle := named_bundle% "RealMapCertificates/relations/basis5444.json"
theorem reductionProof5444 : EqualModuloRelations reduction5444.relations reduction5444.input reduction5444.output := by lin_cert using reduction5444.terms
theorem substitutionProof5444 : IsMapEvaluation generatorImages reduction5444.relations [0,8,8,8,224] reduction5444.output := by lin_cert using reduction5444.terms
def image5445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5445 : InImage map_39_166 image5445 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5445 : Bundle := named_bundle% "RealMapCertificates/relations/basis5445.json"
theorem reductionProof5445 : EqualModuloRelations reduction5445.relations reduction5445.input reduction5445.output := by lin_cert using reduction5445.terms
theorem substitutionProof5445 : IsMapEvaluation generatorImages reduction5445.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5445.output := by lin_cert using reduction5445.terms
def map_39_167 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5544 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5544 : InImage map_39_167 image5544 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5544 : Bundle := named_bundle% "RealMapCertificates/relations/basis5544.json"
theorem reductionProof5544 : EqualModuloRelations reduction5544.relations reduction5544.input reduction5544.output := by lin_cert using reduction5544.terms
theorem substitutionProof5544 : IsMapEvaluation generatorImages reduction5544.relations [0,0,8,8,8,225] reduction5544.output := by lin_cert using reduction5544.terms
def map_39_168 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5647 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5647 : InImage map_39_168 image5647 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5647 : Bundle := named_bundle% "RealMapCertificates/relations/basis5647.json"
theorem reductionProof5647 : EqualModuloRelations reduction5647.relations reduction5647.input reduction5647.output := by lin_cert using reduction5647.terms
theorem substitutionProof5647 : IsMapEvaluation generatorImages reduction5647.relations [8,8,8,8,8,8,16,17] reduction5647.output := by lin_cert using reduction5647.terms
def image5648 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5648 : InImage map_39_168 image5648 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5648 : Bundle := named_bundle% "RealMapCertificates/relations/basis5648.json"
theorem reductionProof5648 : EqualModuloRelations reduction5648.relations reduction5648.input reduction5648.output := by lin_cert using reduction5648.terms
theorem substitutionProof5648 : IsMapEvaluation generatorImages reduction5648.relations [0,723] reduction5648.output := by lin_cert using reduction5648.terms
def map_39_170 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5869 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5869 : InImage map_39_170 image5869 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5869 : Bundle := named_bundle% "RealMapCertificates/relations/basis5869.json"
theorem reductionProof5869 : EqualModuloRelations reduction5869.relations reduction5869.input reduction5869.output := by lin_cert using reduction5869.terms
theorem substitutionProof5869 : IsMapEvaluation generatorImages reduction5869.relations [17,452] reduction5869.output := by lin_cert using reduction5869.terms
def map_39_171 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image5991 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5991 : InImage map_39_171 image5991 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5991 : Bundle := named_bundle% "RealMapCertificates/relations/basis5991.json"
theorem reductionProof5991 : EqualModuloRelations reduction5991.relations reduction5991.input reduction5991.output := by lin_cert using reduction5991.terms
theorem substitutionProof5991 : IsMapEvaluation generatorImages reduction5991.relations [59,224] reduction5991.output := by lin_cert using reduction5991.terms
def image5992 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5992 : InImage map_39_171 image5992 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5992 : Bundle := named_bundle% "RealMapCertificates/relations/basis5992.json"
theorem reductionProof5992 : EqualModuloRelations reduction5992.relations reduction5992.input reduction5992.output := by lin_cert using reduction5992.terms
theorem substitutionProof5992 : IsMapEvaluation generatorImages reduction5992.relations [17,17,225] reduction5992.output := by lin_cert using reduction5992.terms
def image5993 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5993 : InImage map_39_171 image5993 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5993 : Bundle := named_bundle% "RealMapCertificates/relations/basis5993.json"
theorem reductionProof5993 : EqualModuloRelations reduction5993.relations reduction5993.input reduction5993.output := by lin_cert using reduction5993.terms
theorem substitutionProof5993 : IsMapEvaluation generatorImages reduction5993.relations [8,8,8,8,8,8,8,40] reduction5993.output := by lin_cert using reduction5993.terms
def map_39_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6118 : InImage map_39_172 image6118 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6118 : Bundle := named_bundle% "RealMapCertificates/relations/basis6118.json"
theorem reductionProof6118 : EqualModuloRelations reduction6118.relations reduction6118.input reduction6118.output := by lin_cert using reduction6118.terms
theorem substitutionProof6118 : IsMapEvaluation generatorImages reduction6118.relations [0,0,0,0,0,725] reduction6118.output := by lin_cert using reduction6118.terms
def map_39_173 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6208 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6208 : InImage map_39_173 image6208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6208 : Bundle := named_bundle% "RealMapCertificates/relations/basis6208.json"
theorem reductionProof6208 : EqualModuloRelations reduction6208.relations reduction6208.input reduction6208.output := by lin_cert using reduction6208.terms
theorem substitutionProof6208 : IsMapEvaluation generatorImages reduction6208.relations [17,488] reduction6208.output := by lin_cert using reduction6208.terms
def image6209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6209 : InImage map_39_173 image6209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6209 : Bundle := named_bundle% "RealMapCertificates/relations/basis6209.json"
theorem reductionProof6209 : EqualModuloRelations reduction6209.relations reduction6209.input reduction6209.output := by lin_cert using reduction6209.terms
theorem substitutionProof6209 : IsMapEvaluation generatorImages reduction6209.relations [0,0,0,0,752] reduction6209.output := by lin_cert using reduction6209.terms
def map_39_174 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6317 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6317 : InImage map_39_174 image6317 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6317 : Bundle := named_bundle% "RealMapCertificates/relations/basis6317.json"
theorem reductionProof6317 : EqualModuloRelations reduction6317.relations reduction6317.input reduction6317.output := by lin_cert using reduction6317.terms
theorem substitutionProof6317 : IsMapEvaluation generatorImages reduction6317.relations [17,17,238] reduction6317.output := by lin_cert using reduction6317.terms
def image6318 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6318 : InImage map_39_174 image6318 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6318 : Bundle := named_bundle% "RealMapCertificates/relations/basis6318.json"
theorem reductionProof6318 : EqualModuloRelations reduction6318.relations reduction6318.input reduction6318.output := by lin_cert using reduction6318.terms
theorem substitutionProof6318 : IsMapEvaluation generatorImages reduction6318.relations [8,8,8,8,8,8,8,8,17] reduction6318.output := by lin_cert using reduction6318.terms
def map_39_176 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6542 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6542 : InImage map_39_176 image6542 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6542 : Bundle := named_bundle% "RealMapCertificates/relations/basis6542.json"
theorem reductionProof6542 : EqualModuloRelations reduction6542.relations reduction6542.input reduction6542.output := by lin_cert using reduction6542.terms
theorem substitutionProof6542 : IsMapEvaluation generatorImages reduction6542.relations [16,17,244] reduction6542.output := by lin_cert using reduction6542.terms
def map_39_177 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6672 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6672 : InImage map_39_177 image6672 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6672 : Bundle := named_bundle% "RealMapCertificates/relations/basis6672.json"
theorem reductionProof6672 : EqualModuloRelations reduction6672.relations reduction6672.input reduction6672.output := by lin_cert using reduction6672.terms
theorem substitutionProof6672 : IsMapEvaluation generatorImages reduction6672.relations [8,42,224] reduction6672.output := by lin_cert using reduction6672.terms
def image6673 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6673 : InImage map_39_177 image6673 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6673 : Bundle := named_bundle% "RealMapCertificates/relations/basis6673.json"
theorem reductionProof6673 : EqualModuloRelations reduction6673.relations reduction6673.input reduction6673.output := by lin_cert using reduction6673.terms
theorem substitutionProof6673 : IsMapEvaluation generatorImages reduction6673.relations [8,8,8,8,8,8,8,8,20] reduction6673.output := by lin_cert using reduction6673.terms
def image6674 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6674 : InImage map_39_177 image6674 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6674 : Bundle := named_bundle% "RealMapCertificates/relations/basis6674.json"
theorem reductionProof6674 : EqualModuloRelations reduction6674.relations reduction6674.input reduction6674.output := by lin_cert using reduction6674.terms
theorem substitutionProof6674 : IsMapEvaluation generatorImages reduction6674.relations [0,0,0,64,224] reduction6674.output := by lin_cert using reduction6674.terms
def map_39_178 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6796 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6796 : InImage map_39_178 image6796 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6796 : Bundle := named_bundle% "RealMapCertificates/relations/basis6796.json"
theorem reductionProof6796 : EqualModuloRelations reduction6796.relations reduction6796.input reduction6796.output := by lin_cert using reduction6796.terms
theorem substitutionProof6796 : IsMapEvaluation generatorImages reduction6796.relations [0,0,0,0,64,225] reduction6796.output := by lin_cert using reduction6796.terms
def map_39_179 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image6904 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6904 : InImage map_39_179 image6904 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6904 : Bundle := named_bundle% "RealMapCertificates/relations/basis6904.json"
theorem reductionProof6904 : EqualModuloRelations reduction6904.relations reduction6904.input reduction6904.output := by lin_cert using reduction6904.terms
theorem substitutionProof6904 : IsMapEvaluation generatorImages reduction6904.relations [8,17,343] reduction6904.output := by lin_cert using reduction6904.terms
def map_39_180 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image7035 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7035 : InImage map_39_180 image7035 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction7035 : Bundle := named_bundle% "RealMapCertificates/relations/basis7035.json"
theorem reductionProof7035 : EqualModuloRelations reduction7035.relations reduction7035.input reduction7035.output := by lin_cert using reduction7035.terms
theorem substitutionProof7035 : IsMapEvaluation generatorImages reduction7035.relations [8,17,17,185] reduction7035.output := by lin_cert using reduction7035.terms
def image7036 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7036 : InImage map_39_180 image7036 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction7036 : Bundle := named_bundle% "RealMapCertificates/relations/basis7036.json"
theorem reductionProof7036 : EqualModuloRelations reduction7036.relations reduction7036.input reduction7036.output := by lin_cert using reduction7036.terms
theorem substitutionProof7036 : IsMapEvaluation generatorImages reduction7036.relations [8,8,8,8,8,8,8,8,22] reduction7036.output := by lin_cert using reduction7036.terms
def image7037 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7037 : InImage map_39_180 image7037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction7037 : Bundle := named_bundle% "RealMapCertificates/relations/basis7037.json"
theorem reductionProof7037 : EqualModuloRelations reduction7037.relations reduction7037.input reduction7037.output := by lin_cert using reduction7037.terms
theorem substitutionProof7037 : IsMapEvaluation generatorImages reduction7037.relations [0,0,0,0,0,0,809] reduction7037.output := by lin_cert using reduction7037.terms
def image7038 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7038 : InImage map_39_180 image7038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction7038 : Bundle := named_bundle% "RealMapCertificates/relations/basis7038.json"
theorem reductionProof7038 : EqualModuloRelations reduction7038.relations reduction7038.input reduction7038.output := by lin_cert using reduction7038.terms
theorem substitutionProof7038 : IsMapEvaluation generatorImages reduction7038.relations [0,0,0,0,0,0,807] reduction7038.output := by lin_cert using reduction7038.terms
def map_39_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7172 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7172 : InImage map_39_181 image7172 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7172 : Bundle := named_bundle% "RealMapCertificates/relations/basis7172.json"
theorem reductionProof7172 : EqualModuloRelations reduction7172.relations reduction7172.input reduction7172.output := by lin_cert using reduction7172.terms
theorem substitutionProof7172 : IsMapEvaluation generatorImages reduction7172.relations [5,725] reduction7172.output := by lin_cert using reduction7172.terms
def image7173 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7173 : InImage map_39_181 image7173 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7173 : Bundle := named_bundle% "RealMapCertificates/relations/basis7173.json"
theorem reductionProof7173 : EqualModuloRelations reduction7173.relations reduction7173.input reduction7173.output := by lin_cert using reduction7173.terms
theorem substitutionProof7173 : IsMapEvaluation generatorImages reduction7173.relations [0,0,0,0,0,0,0,0,795] reduction7173.output := by lin_cert using reduction7173.terms
def map_39_182 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7261 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7261 : InImage map_39_182 image7261 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7261 : Bundle := named_bundle% "RealMapCertificates/relations/basis7261.json"
theorem reductionProof7261 : EqualModuloRelations reduction7261.relations reduction7261.input reduction7261.output := by lin_cert using reduction7261.terms
theorem substitutionProof7261 : IsMapEvaluation generatorImages reduction7261.relations [8,8,17,244] reduction7261.output := by lin_cert using reduction7261.terms
def map_39_183 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image7401 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7401 : InImage map_39_183 image7401 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7401 : Bundle := named_bundle% "RealMapCertificates/relations/basis7401.json"
theorem reductionProof7401 : EqualModuloRelations reduction7401.relations reduction7401.input reduction7401.output := by lin_cert using reduction7401.terms
theorem substitutionProof7401 : IsMapEvaluation generatorImages reduction7401.relations [8,8,17,17,138] reduction7401.output := by lin_cert using reduction7401.terms
def image7402 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7402 : InImage map_39_183 image7402 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7402 : Bundle := named_bundle% "RealMapCertificates/relations/basis7402.json"
theorem reductionProof7402 : EqualModuloRelations reduction7402.relations reduction7402.input reduction7402.output := by lin_cert using reduction7402.terms
theorem substitutionProof7402 : IsMapEvaluation generatorImages reduction7402.relations [8,8,8,8,8,8,8,8,29] reduction7402.output := by lin_cert using reduction7402.terms
def image7403 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7403 : InImage map_39_183 image7403 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7403 : Bundle := named_bundle% "RealMapCertificates/relations/basis7403.json"
theorem reductionProof7403 : EqualModuloRelations reduction7403.relations reduction7403.input reduction7403.output := by lin_cert using reduction7403.terms
theorem substitutionProof7403 : IsMapEvaluation generatorImages reduction7403.relations [0,896] reduction7403.output := by lin_cert using reduction7403.terms
def map_39_184 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7526 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7526 : InImage map_39_184 image7526 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7526 : Bundle := named_bundle% "RealMapCertificates/relations/basis7526.json"
theorem reductionProof7526 : EqualModuloRelations reduction7526.relations reduction7526.input reduction7526.output := by lin_cert using reduction7526.terms
theorem substitutionProof7526 : IsMapEvaluation generatorImages reduction7526.relations [0,918] reduction7526.output := by lin_cert using reduction7526.terms
def image7527 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7527 : InImage map_39_184 image7527 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7527 : Bundle := named_bundle% "RealMapCertificates/relations/basis7527.json"
theorem reductionProof7527 : EqualModuloRelations reduction7527.relations reduction7527.input reduction7527.output := by lin_cert using reduction7527.terms
theorem substitutionProof7527 : IsMapEvaluation generatorImages reduction7527.relations [0,0,0,0,0,64,244] reduction7527.output := by lin_cert using reduction7527.terms
def map_39_185 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7627 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7627 : InImage map_39_185 image7627 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7627 : Bundle := named_bundle% "RealMapCertificates/relations/basis7627.json"
theorem reductionProof7627 : EqualModuloRelations reduction7627.relations reduction7627.input reduction7627.output := by lin_cert using reduction7627.terms
theorem substitutionProof7627 : IsMapEvaluation generatorImages reduction7627.relations [8,8,17,257] reduction7627.output := by lin_cert using reduction7627.terms
def image7628 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7628 : InImage map_39_185 image7628 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7628 : Bundle := named_bundle% "RealMapCertificates/relations/basis7628.json"
theorem reductionProof7628 : EqualModuloRelations reduction7628.relations reduction7628.input reduction7628.output := by lin_cert using reduction7628.terms
theorem substitutionProof7628 : IsMapEvaluation generatorImages reduction7628.relations [0,0,0,0,0,0,138,149] reduction7628.output := by lin_cert using reduction7628.terms
def map_39_186 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7760 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7760 : InImage map_39_186 image7760 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7760 : Bundle := named_bundle% "RealMapCertificates/relations/basis7760.json"
theorem reductionProof7760 : EqualModuloRelations reduction7760.relations reduction7760.input reduction7760.output := by lin_cert using reduction7760.terms
theorem substitutionProof7760 : IsMapEvaluation generatorImages reduction7760.relations [8,8,17,17,147] reduction7760.output := by lin_cert using reduction7760.terms
def image7761 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7761 : InImage map_39_186 image7761 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7761 : Bundle := named_bundle% "RealMapCertificates/relations/basis7761.json"
theorem reductionProof7761 : EqualModuloRelations reduction7761.relations reduction7761.input reduction7761.output := by lin_cert using reduction7761.terms
theorem substitutionProof7761 : IsMapEvaluation generatorImages reduction7761.relations [8,8,8,8,8,8,8,8,32] reduction7761.output := by lin_cert using reduction7761.terms
def image7762 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7762 : InImage map_39_186 image7762 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7762 : Bundle := named_bundle% "RealMapCertificates/relations/basis7762.json"
theorem reductionProof7762 : EqualModuloRelations reduction7762.relations reduction7762.input reduction7762.output := by lin_cert using reduction7762.terms
theorem substitutionProof7762 : IsMapEvaluation generatorImages reduction7762.relations [0,8,725] reduction7762.output := by lin_cert using reduction7762.terms
def map_39_187 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image7886 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7886 : InImage map_39_187 image7886 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7886 : Bundle := named_bundle% "RealMapCertificates/relations/basis7886.json"
theorem reductionProof7886 : EqualModuloRelations reduction7886.relations reduction7886.input reduction7886.output := by lin_cert using reduction7886.terms
theorem substitutionProof7886 : IsMapEvaluation generatorImages reduction7886.relations [0,954] reduction7886.output := by lin_cert using reduction7886.terms
def map_39_188 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7965 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7965 : InImage map_39_188 image7965 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7965 : Bundle := named_bundle% "RealMapCertificates/relations/basis7965.json"
theorem reductionProof7965 : EqualModuloRelations reduction7965.relations reduction7965.input reduction7965.output := by lin_cert using reduction7965.terms
theorem substitutionProof7965 : IsMapEvaluation generatorImages reduction7965.relations [8,8,16,17,149] reduction7965.output := by lin_cert using reduction7965.terms
def map_39_189 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image8112 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8112 : InImage map_39_189 image8112 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8112 : Bundle := named_bundle% "RealMapCertificates/relations/basis8112.json"
theorem reductionProof8112 : EqualModuloRelations reduction8112.relations reduction8112.input reduction8112.output := by lin_cert using reduction8112.terms
theorem substitutionProof8112 : IsMapEvaluation generatorImages reduction8112.relations [64,298] reduction8112.output := by lin_cert using reduction8112.terms
def image8113 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8113 : InImage map_39_189 image8113 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8113 : Bundle := named_bundle% "RealMapCertificates/relations/basis8113.json"
theorem reductionProof8113 : EqualModuloRelations reduction8113.relations reduction8113.input reduction8113.output := by lin_cert using reduction8113.terms
theorem substitutionProof8113 : IsMapEvaluation generatorImages reduction8113.relations [8,8,8,42,137] reduction8113.output := by lin_cert using reduction8113.terms
def image8114 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8114 : InImage map_39_189 image8114 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8114 : Bundle := named_bundle% "RealMapCertificates/relations/basis8114.json"
theorem reductionProof8114 : EqualModuloRelations reduction8114.relations reduction8114.input reduction8114.output := by lin_cert using reduction8114.terms
theorem substitutionProof8114 : IsMapEvaluation generatorImages reduction8114.relations [8,8,8,8,8,8,8,9,32] reduction8114.output := by lin_cert using reduction8114.terms
def image8115 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8115 : InImage map_39_189 image8115 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8115 : Bundle := named_bundle% "RealMapCertificates/relations/basis8115.json"
theorem reductionProof8115 : EqualModuloRelations reduction8115.relations reduction8115.input reduction8115.output := by lin_cert using reduction8115.terms
theorem substitutionProof8115 : IsMapEvaluation generatorImages reduction8115.relations [0,8,759] reduction8115.output := by lin_cert using reduction8115.terms
def map_39_190 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8237 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8237 : InImage map_39_190 image8237 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8237 : Bundle := named_bundle% "RealMapCertificates/relations/basis8237.json"
theorem reductionProof8237 : EqualModuloRelations reduction8237.relations reduction8237.input reduction8237.output := by lin_cert using reduction8237.terms
theorem substitutionProof8237 : IsMapEvaluation generatorImages reduction8237.relations [0,8,778] reduction8237.output := by lin_cert using reduction8237.terms
def image8238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8238 : InImage map_39_190 image8238 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8238 : Bundle := named_bundle% "RealMapCertificates/relations/basis8238.json"
theorem reductionProof8238 : EqualModuloRelations reduction8238.relations reduction8238.input reduction8238.output := by lin_cert using reduction8238.terms
theorem substitutionProof8238 : IsMapEvaluation generatorImages reduction8238.relations [0,0,17,623] reduction8238.output := by lin_cert using reduction8238.terms
def map_39_191 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image8349 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8349 : InImage map_39_191 image8349 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8349 : Bundle := named_bundle% "RealMapCertificates/relations/basis8349.json"
theorem reductionProof8349 : EqualModuloRelations reduction8349.relations reduction8349.input reduction8349.output := by lin_cert using reduction8349.terms
theorem substitutionProof8349 : IsMapEvaluation generatorImages reduction8349.relations [8,8,8,17,206] reduction8349.output := by lin_cert using reduction8349.terms
def map_39_192 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image8485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8485 : InImage map_39_192 image8485 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8485 : Bundle := named_bundle% "RealMapCertificates/relations/basis8485.json"
theorem reductionProof8485 : EqualModuloRelations reduction8485.relations reduction8485.input reduction8485.output := by lin_cert using reduction8485.terms
theorem substitutionProof8485 : IsMapEvaluation generatorImages reduction8485.relations [8,64,225] reduction8485.output := by lin_cert using reduction8485.terms
def image8486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8486 : InImage map_39_192 image8486 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8486 : Bundle := named_bundle% "RealMapCertificates/relations/basis8486.json"
theorem reductionProof8486 : EqualModuloRelations reduction8486.relations reduction8486.input reduction8486.output := by lin_cert using reduction8486.terms
theorem substitutionProof8486 : IsMapEvaluation generatorImages reduction8486.relations [8,8,8,17,17,113] reduction8486.output := by lin_cert using reduction8486.terms
def image8487 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8487 : InImage map_39_192 image8487 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8487 : Bundle := named_bundle% "RealMapCertificates/relations/basis8487.json"
theorem reductionProof8487 : EqualModuloRelations reduction8487.relations reduction8487.input reduction8487.output := by lin_cert using reduction8487.terms
theorem substitutionProof8487 : IsMapEvaluation generatorImages reduction8487.relations [8,8,8,8,8,8,8,13,32] reduction8487.output := by lin_cert using reduction8487.terms
def image8488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8488 : InImage map_39_192 image8488 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8488 : Bundle := named_bundle% "RealMapCertificates/relations/basis8488.json"
theorem reductionProof8488 : EqualModuloRelations reduction8488.relations reduction8488.input reduction8488.output := by lin_cert using reduction8488.terms
theorem substitutionProof8488 : IsMapEvaluation generatorImages reduction8488.relations [0,8,16,491] reduction8488.output := by lin_cert using reduction8488.terms
def map_39_193 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8618 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8618 : InImage map_39_193 image8618 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8618 : Bundle := named_bundle% "RealMapCertificates/relations/basis8618.json"
theorem reductionProof8618 : EqualModuloRelations reduction8618.relations reduction8618.input reduction8618.output := by lin_cert using reduction8618.terms
theorem substitutionProof8618 : IsMapEvaluation generatorImages reduction8618.relations [5,64,244] reduction8618.output := by lin_cert using reduction8618.terms
def image8619 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8619 : InImage map_39_193 image8619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8619 : Bundle := named_bundle% "RealMapCertificates/relations/basis8619.json"
theorem reductionProof8619 : EqualModuloRelations reduction8619.relations reduction8619.input reduction8619.output := by lin_cert using reduction8619.terms
theorem substitutionProof8619 : IsMapEvaluation generatorImages reduction8619.relations [0,0,8,17,491] reduction8619.output := by lin_cert using reduction8619.terms
def map_39_194 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8724 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8724 : InImage map_39_194 image8724 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8724 : Bundle := named_bundle% "RealMapCertificates/relations/basis8724.json"
theorem reductionProof8724 : EqualModuloRelations reduction8724.relations reduction8724.input reduction8724.output := by lin_cert using reduction8724.terms
theorem substitutionProof8724 : IsMapEvaluation generatorImages reduction8724.relations [8,8,8,8,17,149] reduction8724.output := by lin_cert using reduction8724.terms
def map_39_195 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image8891 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8891 : InImage map_39_195 image8891 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction8891 : Bundle := named_bundle% "RealMapCertificates/relations/basis8891.json"
theorem reductionProof8891 : EqualModuloRelations reduction8891.relations reduction8891.input reduction8891.output := by lin_cert using reduction8891.terms
theorem substitutionProof8891 : IsMapEvaluation generatorImages reduction8891.relations [8,64,238] reduction8891.output := by lin_cert using reduction8891.terms
def image8892 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8892 : InImage map_39_195 image8892 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction8892 : Bundle := named_bundle% "RealMapCertificates/relations/basis8892.json"
theorem reductionProof8892 : EqualModuloRelations reduction8892.relations reduction8892.input reduction8892.output := by lin_cert using reduction8892.terms
theorem substitutionProof8892 : IsMapEvaluation generatorImages reduction8892.relations [8,8,8,8,17,154] reduction8892.output := by lin_cert using reduction8892.terms
def image8893 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8893 : InImage map_39_195 image8893 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction8893 : Bundle := named_bundle% "RealMapCertificates/relations/basis8893.json"
theorem reductionProof8893 : EqualModuloRelations reduction8893.relations reduction8893.input reduction8893.output := by lin_cert using reduction8893.terms
theorem substitutionProof8893 : IsMapEvaluation generatorImages reduction8893.relations [8,8,8,8,8,8,9,13,32] reduction8893.output := by lin_cert using reduction8893.terms
def image8894 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8894 : InImage map_39_195 image8894 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction8894 : Bundle := named_bundle% "RealMapCertificates/relations/basis8894.json"
theorem reductionProof8894 : EqualModuloRelations reduction8894.relations reduction8894.input reduction8894.output := by lin_cert using reduction8894.terms
theorem substitutionProof8894 : IsMapEvaluation generatorImages reduction8894.relations [0,8,8,623] reduction8894.output := by lin_cert using reduction8894.terms
def image8895 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8895 : InImage map_39_195 image8895 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction8895 : Bundle := named_bundle% "RealMapCertificates/relations/basis8895.json"
theorem reductionProof8895 : EqualModuloRelations reduction8895.relations reduction8895.input reduction8895.output := by lin_cert using reduction8895.terms
theorem substitutionProof8895 : IsMapEvaluation generatorImages reduction8895.relations [0,0,0,0,0,0,0,0,0,0,0,0,919] reduction8895.output := by lin_cert using reduction8895.terms
end RealMapCertificates
