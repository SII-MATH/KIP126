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
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 185 => [[0,4,4,8,12]]
  | 186 => []
  | 188 => []
  | 232 => [[5,6,9,12]]
  | 246 => []
  | 255 => []
  | 260 => []
  | 278 => []
  | 299 => []
  | 327 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 420 => []
  | 491 => []
  | 509 => []
  | 516 => []
  | 549 => []
  | 558 => []
  | 574 => []
  | 598 => [[0,6,9,12,12]]
  | 601 => []
  | 602 => []
  | 623 => []
  | 642 => [[7,10,12,12]]
  | 653 => []
  | 689 => []
  | 796 => []
  | 831 => []
  | 897 => []
  | 898 => []
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 962 => [[4,5,7,10,12,12]]
  | 972 => []
  | 1121 => []
  | 1167 => [[4,4,5,7,10,12,12]]
  | 1181 => []
  | 1218 => []
  | 1287 => [[4,4,4,5,7,9,12,12]]
  | 1315 => []
  | 1316 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1381 => [[4,4,4,5,7,10,12,12]]
  | 1401 => []
  | 1535 => []
  | 1536 => [[4,6,8,12,12,12]]
  | _ => []
def map_39_196 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image9022 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9022 : InImage map_39_196 image9022 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9022 : Bundle := named_bundle% "RealMapCertificates/relations/basis9022.json"
theorem reductionProof9022 : EqualModuloRelations reduction9022.relations reduction9022.input reduction9022.output := by lin_cert using reduction9022.terms
theorem substitutionProof9022 : IsMapEvaluation generatorImages reduction9022.relations [0,0,8,17,516] reduction9022.output := by lin_cert using reduction9022.terms
def image9023 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9023 : InImage map_39_196 image9023 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9023 : Bundle := named_bundle% "RealMapCertificates/relations/basis9023.json"
theorem reductionProof9023 : EqualModuloRelations reduction9023.relations reduction9023.input reduction9023.output := by lin_cert using reduction9023.terms
theorem substitutionProof9023 : IsMapEvaluation generatorImages reduction9023.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,898] reduction9023.output := by lin_cert using reduction9023.terms
def map_39_197 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9153 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9153 : InImage map_39_197 image9153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9153 : Bundle := named_bundle% "RealMapCertificates/relations/basis9153.json"
theorem reductionProof9153 : EqualModuloRelations reduction9153.relations reduction9153.input reduction9153.output := by lin_cert using reduction9153.terms
theorem substitutionProof9153 : IsMapEvaluation generatorImages reduction9153.relations [1121] reduction9153.output := by lin_cert using reduction9153.terms
def image9154 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9154 : InImage map_39_197 image9154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9154 : Bundle := named_bundle% "RealMapCertificates/relations/basis9154.json"
theorem reductionProof9154 : EqualModuloRelations reduction9154.relations reduction9154.input reduction9154.output := by lin_cert using reduction9154.terms
theorem substitutionProof9154 : IsMapEvaluation generatorImages reduction9154.relations [8,8,8,8,17,160] reduction9154.output := by lin_cert using reduction9154.terms
def map_39_198 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9331 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9331 : InImage map_39_198 image9331 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9331 : Bundle := named_bundle% "RealMapCertificates/relations/basis9331.json"
theorem reductionProof9331 : EqualModuloRelations reduction9331.relations reduction9331.input reduction9331.output := by lin_cert using reduction9331.terms
theorem substitutionProof9331 : IsMapEvaluation generatorImages reduction9331.relations [8,16,64,138] reduction9331.output := by lin_cert using reduction9331.terms
def image9332 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9332 : InImage map_39_198 image9332 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9332 : Bundle := named_bundle% "RealMapCertificates/relations/basis9332.json"
theorem reductionProof9332 : EqualModuloRelations reduction9332.relations reduction9332.input reduction9332.output := by lin_cert using reduction9332.terms
theorem substitutionProof9332 : IsMapEvaluation generatorImages reduction9332.relations [8,8,8,8,17,162] reduction9332.output := by lin_cert using reduction9332.terms
def image9333 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9333 : InImage map_39_198 image9333 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9333 : Bundle := named_bundle% "RealMapCertificates/relations/basis9333.json"
theorem reductionProof9333 : EqualModuloRelations reduction9333.relations reduction9333.input reduction9333.output := by lin_cert using reduction9333.terms
theorem substitutionProof9333 : IsMapEvaluation generatorImages reduction9333.relations [8,8,8,8,8,8,13,13,32] reduction9333.output := by lin_cert using reduction9333.terms
def image9334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9334 : InImage map_39_198 image9334 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9334 : Bundle := named_bundle% "RealMapCertificates/relations/basis9334.json"
theorem reductionProof9334 : EqualModuloRelations reduction9334.relations reduction9334.input reduction9334.output := by lin_cert using reduction9334.terms
theorem substitutionProof9334 : IsMapEvaluation generatorImages reduction9334.relations [0,8,8,8,491] reduction9334.output := by lin_cert using reduction9334.terms
def map_39_199 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image9491 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9491 : InImage map_39_199 image9491 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9491 : Bundle := named_bundle% "RealMapCertificates/relations/basis9491.json"
theorem reductionProof9491 : EqualModuloRelations reduction9491.relations reduction9491.input reduction9491.output := by lin_cert using reduction9491.terms
theorem substitutionProof9491 : IsMapEvaluation generatorImages reduction9491.relations [0,0,8,16,17,260] reduction9491.output := by lin_cert using reduction9491.terms
def map_39_200 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9619 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9619 : InImage map_39_200 image9619 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9619 : Bundle := named_bundle% "RealMapCertificates/relations/basis9619.json"
theorem reductionProof9619 : EqualModuloRelations reduction9619.relations reduction9619.input reduction9619.output := by lin_cert using reduction9619.terms
theorem substitutionProof9619 : IsMapEvaluation generatorImages reduction9619.relations [1181] reduction9619.output := by lin_cert using reduction9619.terms
def image9620 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9620 : InImage map_39_200 image9620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9620 : Bundle := named_bundle% "RealMapCertificates/relations/basis9620.json"
theorem reductionProof9620 : EqualModuloRelations reduction9620.relations reduction9620.input reduction9620.output := by lin_cert using reduction9620.terms
theorem substitutionProof9620 : IsMapEvaluation generatorImages reduction9620.relations [8,8,8,8,16,167] reduction9620.output := by lin_cert using reduction9620.terms
def map_39_201 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9822 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9822 : InImage map_39_201 image9822 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9822 : Bundle := named_bundle% "RealMapCertificates/relations/basis9822.json"
theorem reductionProof9822 : EqualModuloRelations reduction9822.relations reduction9822.input reduction9822.output := by lin_cert using reduction9822.terms
theorem substitutionProof9822 : IsMapEvaluation generatorImages reduction9822.relations [8,8,64,185] reduction9822.output := by lin_cert using reduction9822.terms
def image9823 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9823 : InImage map_39_201 image9823 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9823 : Bundle := named_bundle% "RealMapCertificates/relations/basis9823.json"
theorem reductionProof9823 : EqualModuloRelations reduction9823.relations reduction9823.input reduction9823.output := by lin_cert using reduction9823.terms
theorem substitutionProof9823 : IsMapEvaluation generatorImages reduction9823.relations [8,8,8,8,8,42,64] reduction9823.output := by lin_cert using reduction9823.terms
def image9824 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9824 : InImage map_39_201 image9824 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9824 : Bundle := named_bundle% "RealMapCertificates/relations/basis9824.json"
theorem reductionProof9824 : EqualModuloRelations reduction9824.relations reduction9824.input reduction9824.output := by lin_cert using reduction9824.terms
theorem substitutionProof9824 : IsMapEvaluation generatorImages reduction9824.relations [8,8,8,8,8,9,13,13,32] reduction9824.output := by lin_cert using reduction9824.terms
def map_39_203 : Matrix 2 5 := fun i j => ([false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10114 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10114 : InImage map_39_203 image10114 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10114 : Bundle := named_bundle% "RealMapCertificates/relations/basis10114.json"
theorem reductionProof10114 : EqualModuloRelations reduction10114.relations reduction10114.input reduction10114.output := by lin_cert using reduction10114.terms
theorem substitutionProof10114 : IsMapEvaluation generatorImages reduction10114.relations [137,246] reduction10114.output := by lin_cert using reduction10114.terms
def image10115 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10115 : InImage map_39_203 image10115 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10115 : Bundle := named_bundle% "RealMapCertificates/relations/basis10115.json"
theorem reductionProof10115 : EqualModuloRelations reduction10115.relations reduction10115.input reduction10115.output := by lin_cert using reduction10115.terms
theorem substitutionProof10115 : IsMapEvaluation generatorImages reduction10115.relations [60,491] reduction10115.output := by lin_cert using reduction10115.terms
def image10116 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10116 : InImage map_39_203 image10116 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10116 : Bundle := named_bundle% "RealMapCertificates/relations/basis10116.json"
theorem reductionProof10116 : EqualModuloRelations reduction10116.relations reduction10116.input reduction10116.output := by lin_cert using reduction10116.terms
theorem substitutionProof10116 : IsMapEvaluation generatorImages reduction10116.relations [59,491] reduction10116.output := by lin_cert using reduction10116.terms
def image10117 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10117 : InImage map_39_203 image10117 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10117 : Bundle := named_bundle% "RealMapCertificates/relations/basis10117.json"
theorem reductionProof10117 : EqualModuloRelations reduction10117.relations reduction10117.input reduction10117.output := by lin_cert using reduction10117.terms
theorem substitutionProof10117 : IsMapEvaluation generatorImages reduction10117.relations [8,939] reduction10117.output := by lin_cert using reduction10117.terms
def image10118 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10118 : InImage map_39_203 image10118 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10118 : Bundle := named_bundle% "RealMapCertificates/relations/basis10118.json"
theorem reductionProof10118 : EqualModuloRelations reduction10118.relations reduction10118.input reduction10118.output := by lin_cert using reduction10118.terms
theorem substitutionProof10118 : IsMapEvaluation generatorImages reduction10118.relations [8,8,8,8,8,232] reduction10118.output := by lin_cert using reduction10118.terms
def map_39_204 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10318 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10318 : InImage map_39_204 image10318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10318 : Bundle := named_bundle% "RealMapCertificates/relations/basis10318.json"
theorem reductionProof10318 : EqualModuloRelations reduction10318.relations reduction10318.input reduction10318.output := by lin_cert using reduction10318.terms
theorem substitutionProof10318 : IsMapEvaluation generatorImages reduction10318.relations [8,8,8,64,138] reduction10318.output := by lin_cert using reduction10318.terms
def image10319 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10319 : InImage map_39_204 image10319 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10319 : Bundle := named_bundle% "RealMapCertificates/relations/basis10319.json"
theorem reductionProof10319 : EqualModuloRelations reduction10319.relations reduction10319.input reduction10319.output := by lin_cert using reduction10319.terms
theorem substitutionProof10319 : IsMapEvaluation generatorImages reduction10319.relations [8,8,8,8,8,23,113] reduction10319.output := by lin_cert using reduction10319.terms
def image10320 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10320 : InImage map_39_204 image10320 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10320 : Bundle := named_bundle% "RealMapCertificates/relations/basis10320.json"
theorem reductionProof10320 : EqualModuloRelations reduction10320.relations reduction10320.input reduction10320.output := by lin_cert using reduction10320.terms
theorem substitutionProof10320 : IsMapEvaluation generatorImages reduction10320.relations [8,8,8,8,8,13,13,13,32] reduction10320.output := by lin_cert using reduction10320.terms
def image10321 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10321 : InImage map_39_204 image10321 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10321 : Bundle := named_bundle% "RealMapCertificates/relations/basis10321.json"
theorem reductionProof10321 : EqualModuloRelations reduction10321.relations reduction10321.input reduction10321.output := by lin_cert using reduction10321.terms
theorem substitutionProof10321 : IsMapEvaluation generatorImages reduction10321.relations [0,0,1218] reduction10321.output := by lin_cert using reduction10321.terms
def map_39_206 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10644 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10644 : InImage map_39_206 image10644 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10644 : Bundle := named_bundle% "RealMapCertificates/relations/basis10644.json"
theorem reductionProof10644 : EqualModuloRelations reduction10644.relations reduction10644.input reduction10644.output := by lin_cert using reduction10644.terms
theorem substitutionProof10644 : IsMapEvaluation generatorImages reduction10644.relations [42,623] reduction10644.output := by lin_cert using reduction10644.terms
def image10645 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10645 : InImage map_39_206 image10645 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10645 : Bundle := named_bundle% "RealMapCertificates/relations/basis10645.json"
theorem reductionProof10645 : EqualModuloRelations reduction10645.relations reduction10645.input reduction10645.output := by lin_cert using reduction10645.terms
theorem substitutionProof10645 : IsMapEvaluation generatorImages reduction10645.relations [8,972] reduction10645.output := by lin_cert using reduction10645.terms
def image10646 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10646 : InImage map_39_206 image10646 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10646 : Bundle := named_bundle% "RealMapCertificates/relations/basis10646.json"
theorem reductionProof10646 : EqualModuloRelations reduction10646.relations reduction10646.input reduction10646.output := by lin_cert using reduction10646.terms
theorem substitutionProof10646 : IsMapEvaluation generatorImages reduction10646.relations [8,8,8,8,8,8,167] reduction10646.output := by lin_cert using reduction10646.terms
def image10647 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10647 : InImage map_39_206 image10647 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10647 : Bundle := named_bundle% "RealMapCertificates/relations/basis10647.json"
theorem reductionProof10647 : EqualModuloRelations reduction10647.relations reduction10647.input reduction10647.output := by lin_cert using reduction10647.terms
theorem substitutionProof10647 : IsMapEvaluation generatorImages reduction10647.relations [0,1287] reduction10647.output := by lin_cert using reduction10647.terms
def map_39_207 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10872 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10872 : InImage map_39_207 image10872 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10872 : Bundle := named_bundle% "RealMapCertificates/relations/basis10872.json"
theorem reductionProof10872 : EqualModuloRelations reduction10872.relations reduction10872.input reduction10872.output := by lin_cert using reduction10872.terms
theorem substitutionProof10872 : IsMapEvaluation generatorImages reduction10872.relations [8,8,8,64,147] reduction10872.output := by lin_cert using reduction10872.terms
def image10873 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10873 : InImage map_39_207 image10873 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10873 : Bundle := named_bundle% "RealMapCertificates/relations/basis10873.json"
theorem reductionProof10873 : EqualModuloRelations reduction10873.relations reduction10873.input reduction10873.output := by lin_cert using reduction10873.terms
theorem substitutionProof10873 : IsMapEvaluation generatorImages reduction10873.relations [8,8,8,8,9,13,13,13,32] reduction10873.output := by lin_cert using reduction10873.terms
def image10874 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10874 : InImage map_39_207 image10874 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10874 : Bundle := named_bundle% "RealMapCertificates/relations/basis10874.json"
theorem reductionProof10874 : EqualModuloRelations reduction10874.relations reduction10874.input reduction10874.output := by lin_cert using reduction10874.terms
theorem substitutionProof10874 : IsMapEvaluation generatorImages reduction10874.relations [8,8,8,8,8,8,173] reduction10874.output := by lin_cert using reduction10874.terms
def map_39_208 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11009 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11009 : InImage map_39_208 image11009 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11009 : Bundle := named_bundle% "RealMapCertificates/relations/basis11009.json"
theorem reductionProof11009 : EqualModuloRelations reduction11009.relations reduction11009.input reduction11009.output := by lin_cert using reduction11009.terms
theorem substitutionProof11009 : IsMapEvaluation generatorImages reduction11009.relations [1335] reduction11009.output := by lin_cert using reduction11009.terms
def map_39_209 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11175 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11175 : InImage map_39_209 image11175 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11175 : Bundle := named_bundle% "RealMapCertificates/relations/basis11175.json"
theorem reductionProof11175 : EqualModuloRelations reduction11175.relations reduction11175.input reduction11175.output := by lin_cert using reduction11175.terms
theorem substitutionProof11175 : IsMapEvaluation generatorImages reduction11175.relations [8,42,491] reduction11175.output := by lin_cert using reduction11175.terms
def image11176 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11176 : InImage map_39_209 image11176 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11176 : Bundle := named_bundle% "RealMapCertificates/relations/basis11176.json"
theorem reductionProof11176 : EqualModuloRelations reduction11176.relations reduction11176.input reduction11176.output := by lin_cert using reduction11176.terms
theorem substitutionProof11176 : IsMapEvaluation generatorImages reduction11176.relations [8,8,796] reduction11176.output := by lin_cert using reduction11176.terms
def image11177 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11177 : InImage map_39_209 image11177 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11177 : Bundle := named_bundle% "RealMapCertificates/relations/basis11177.json"
theorem reductionProof11177 : EqualModuloRelations reduction11177.relations reduction11177.input reduction11177.output := by lin_cert using reduction11177.terms
theorem substitutionProof11177 : IsMapEvaluation generatorImages reduction11177.relations [8,8,8,8,8,9,167] reduction11177.output := by lin_cert using reduction11177.terms
def image11178 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11178 : InImage map_39_209 image11178 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11178 : Bundle := named_bundle% "RealMapCertificates/relations/basis11178.json"
theorem reductionProof11178 : EqualModuloRelations reduction11178.relations reduction11178.input reduction11178.output := by lin_cert using reduction11178.terms
theorem substitutionProof11178 : IsMapEvaluation generatorImages reduction11178.relations [0,0,0,64,491] reduction11178.output := by lin_cert using reduction11178.terms
def map_39_210 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11376 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11376 : InImage map_39_210 image11376 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11376 : Bundle := named_bundle% "RealMapCertificates/relations/basis11376.json"
theorem reductionProof11376 : EqualModuloRelations reduction11376.relations reduction11376.input reduction11376.output := by lin_cert using reduction11376.terms
theorem substitutionProof11376 : IsMapEvaluation generatorImages reduction11376.relations [8,8,8,16,299] reduction11376.output := by lin_cert using reduction11376.terms
def image11377 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11377 : InImage map_39_210 image11377 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11377 : Bundle := named_bundle% "RealMapCertificates/relations/basis11377.json"
theorem reductionProof11377 : EqualModuloRelations reduction11377.relations reduction11377.input reduction11377.output := by lin_cert using reduction11377.terms
theorem substitutionProof11377 : IsMapEvaluation generatorImages reduction11377.relations [8,8,8,8,13,13,13,13,32] reduction11377.output := by lin_cert using reduction11377.terms
def image11378 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11378 : InImage map_39_210 image11378 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11378 : Bundle := named_bundle% "RealMapCertificates/relations/basis11378.json"
theorem reductionProof11378 : EqualModuloRelations reduction11378.relations reduction11378.input reduction11378.output := by lin_cert using reduction11378.terms
theorem substitutionProof11378 : IsMapEvaluation generatorImages reduction11378.relations [8,8,8,8,8,8,186] reduction11378.output := by lin_cert using reduction11378.terms
def image11379 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11379 : InImage map_39_210 image11379 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11379 : Bundle := named_bundle% "RealMapCertificates/relations/basis11379.json"
theorem reductionProof11379 : EqualModuloRelations reduction11379.relations reduction11379.input reduction11379.output := by lin_cert using reduction11379.terms
theorem substitutionProof11379 : IsMapEvaluation generatorImages reduction11379.relations [0,0,64,509] reduction11379.output := by lin_cert using reduction11379.terms
def image11380 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11380 : InImage map_39_210 image11380 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11380 : Bundle := named_bundle% "RealMapCertificates/relations/basis11380.json"
theorem reductionProof11380 : EqualModuloRelations reduction11380.relations reduction11380.input reduction11380.output := by lin_cert using reduction11380.terms
theorem substitutionProof11380 : IsMapEvaluation generatorImages reduction11380.relations [0,0,0,0,138,260] reduction11380.output := by lin_cert using reduction11380.terms
def map_39_211 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image11556 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11556 : InImage map_39_211 image11556 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11556 : Bundle := named_bundle% "RealMapCertificates/relations/basis11556.json"
theorem reductionProof11556 : EqualModuloRelations reduction11556.relations reduction11556.input reduction11556.output := by lin_cert using reduction11556.terms
theorem substitutionProof11556 : IsMapEvaluation generatorImages reduction11556.relations [1381] reduction11556.output := by lin_cert using reduction11556.terms
def image11557 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11557 : InImage map_39_211 image11557 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11557 : Bundle := named_bundle% "RealMapCertificates/relations/basis11557.json"
theorem reductionProof11557 : EqualModuloRelations reduction11557.relations reduction11557.input reduction11557.output := by lin_cert using reduction11557.terms
theorem substitutionProof11557 : IsMapEvaluation generatorImages reduction11557.relations [0,0,0,0,1315] reduction11557.output := by lin_cert using reduction11557.terms
def map_39_212 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11711 : InImage map_39_212 image11711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11711 : Bundle := named_bundle% "RealMapCertificates/relations/basis11711.json"
theorem reductionProof11711 : EqualModuloRelations reduction11711.relations reduction11711.input reduction11711.output := by lin_cert using reduction11711.terms
theorem substitutionProof11711 : IsMapEvaluation generatorImages reduction11711.relations [8,42,516] reduction11711.output := by lin_cert using reduction11711.terms
def image11712 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11712 : InImage map_39_212 image11712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11712 : Bundle := named_bundle% "RealMapCertificates/relations/basis11712.json"
theorem reductionProof11712 : EqualModuloRelations reduction11712.relations reduction11712.input reduction11712.output := by lin_cert using reduction11712.terms
theorem substitutionProof11712 : IsMapEvaluation generatorImages reduction11712.relations [8,8,831] reduction11712.output := by lin_cert using reduction11712.terms
def image11713 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11713 : InImage map_39_212 image11713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11713 : Bundle := named_bundle% "RealMapCertificates/relations/basis11713.json"
theorem reductionProof11713 : EqualModuloRelations reduction11713.relations reduction11713.input reduction11713.output := by lin_cert using reduction11713.terms
theorem substitutionProof11713 : IsMapEvaluation generatorImages reduction11713.relations [8,8,8,8,8,13,167] reduction11713.output := by lin_cert using reduction11713.terms
def image11714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11714 : InImage map_39_212 image11714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11714 : Bundle := named_bundle% "RealMapCertificates/relations/basis11714.json"
theorem reductionProof11714 : EqualModuloRelations reduction11714.relations reduction11714.input reduction11714.output := by lin_cert using reduction11714.terms
theorem substitutionProof11714 : IsMapEvaluation generatorImages reduction11714.relations [0,0,0,64,516] reduction11714.output := by lin_cert using reduction11714.terms
def map_39_213 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image11958 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11958 : InImage map_39_213 image11958 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11958 : Bundle := named_bundle% "RealMapCertificates/relations/basis11958.json"
theorem reductionProof11958 : EqualModuloRelations reduction11958.relations reduction11958.input reduction11958.output := by lin_cert using reduction11958.terms
theorem substitutionProof11958 : IsMapEvaluation generatorImages reduction11958.relations [8,8,8,9,13,13,13,13,32] reduction11958.output := by lin_cert using reduction11958.terms
def image11959 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11959 : InImage map_39_213 image11959 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11959 : Bundle := named_bundle% "RealMapCertificates/relations/basis11959.json"
theorem reductionProof11959 : EqualModuloRelations reduction11959.relations reduction11959.input reduction11959.output := by lin_cert using reduction11959.terms
theorem substitutionProof11959 : IsMapEvaluation generatorImages reduction11959.relations [8,8,8,8,64,113] reduction11959.output := by lin_cert using reduction11959.terms
def image11960 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11960 : InImage map_39_213 image11960 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11960 : Bundle := named_bundle% "RealMapCertificates/relations/basis11960.json"
theorem reductionProof11960 : EqualModuloRelations reduction11960.relations reduction11960.input reduction11960.output := by lin_cert using reduction11960.terms
theorem substitutionProof11960 : IsMapEvaluation generatorImages reduction11960.relations [8,8,8,8,8,8,23,80] reduction11960.output := by lin_cert using reduction11960.terms
def map_39_214 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12134 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12134 : InImage map_39_214 image12134 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12134 : Bundle := named_bundle% "RealMapCertificates/relations/basis12134.json"
theorem reductionProof12134 : EqualModuloRelations reduction12134.relations reduction12134.input reduction12134.output := by lin_cert using reduction12134.terms
theorem substitutionProof12134 : IsMapEvaluation generatorImages reduction12134.relations [16,927] reduction12134.output := by lin_cert using reduction12134.terms
def image12135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12135 : InImage map_39_214 image12135 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12135 : Bundle := named_bundle% "RealMapCertificates/relations/basis12135.json"
theorem reductionProof12135 : EqualModuloRelations reduction12135.relations reduction12135.input reduction12135.output := by lin_cert using reduction12135.terms
theorem substitutionProof12135 : IsMapEvaluation generatorImages reduction12135.relations [0,64,64,137] reduction12135.output := by lin_cert using reduction12135.terms
def map_39_215 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image12310 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12310 : InImage map_39_215 image12310 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12310 : Bundle := named_bundle% "RealMapCertificates/relations/basis12310.json"
theorem reductionProof12310 : EqualModuloRelations reduction12310.relations reduction12310.input reduction12310.output := by lin_cert using reduction12310.terms
theorem substitutionProof12310 : IsMapEvaluation generatorImages reduction12310.relations [8,8,60,260] reduction12310.output := by lin_cert using reduction12310.terms
def image12311 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12311 : InImage map_39_215 image12311 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12311 : Bundle := named_bundle% "RealMapCertificates/relations/basis12311.json"
theorem reductionProof12311 : EqualModuloRelations reduction12311.relations reduction12311.input reduction12311.output := by lin_cert using reduction12311.terms
theorem substitutionProof12311 : IsMapEvaluation generatorImages reduction12311.relations [8,8,8,653] reduction12311.output := by lin_cert using reduction12311.terms
def image12312 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12312 : InImage map_39_215 image12312 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12312 : Bundle := named_bundle% "RealMapCertificates/relations/basis12312.json"
theorem reductionProof12312 : EqualModuloRelations reduction12312.relations reduction12312.input reduction12312.output := by lin_cert using reduction12312.terms
theorem substitutionProof12312 : IsMapEvaluation generatorImages reduction12312.relations [8,8,8,8,9,13,167] reduction12312.output := by lin_cert using reduction12312.terms
def image12313 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12313 : InImage map_39_215 image12313 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12313 : Bundle := named_bundle% "RealMapCertificates/relations/basis12313.json"
theorem reductionProof12313 : EqualModuloRelations reduction12313.relations reduction12313.input reduction12313.output := by lin_cert using reduction12313.terms
theorem substitutionProof12313 : IsMapEvaluation generatorImages reduction12313.relations [1,64,64,137] reduction12313.output := by lin_cert using reduction12313.terms
def image12314 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12314 : InImage map_39_215 image12314 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12314 : Bundle := named_bundle% "RealMapCertificates/relations/basis12314.json"
theorem reductionProof12314 : EqualModuloRelations reduction12314.relations reduction12314.input reduction12314.output := by lin_cert using reduction12314.terms
theorem substitutionProof12314 : IsMapEvaluation generatorImages reduction12314.relations [0,0,64,64,138] reduction12314.output := by lin_cert using reduction12314.terms
def map_39_216 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image12521 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12521 : InImage map_39_216 image12521 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12521 : Bundle := named_bundle% "RealMapCertificates/relations/basis12521.json"
theorem reductionProof12521 : EqualModuloRelations reduction12521.relations reduction12521.input reduction12521.output := by lin_cert using reduction12521.terms
theorem substitutionProof12521 : IsMapEvaluation generatorImages reduction12521.relations [8,8,8,13,13,13,13,13,32] reduction12521.output := by lin_cert using reduction12521.terms
def image12522 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12522 : InImage map_39_216 image12522 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12522 : Bundle := named_bundle% "RealMapCertificates/relations/basis12522.json"
theorem reductionProof12522 : EqualModuloRelations reduction12522.relations reduction12522.input reduction12522.output := by lin_cert using reduction12522.terms
theorem substitutionProof12522 : IsMapEvaluation generatorImages reduction12522.relations [8,8,8,8,8,299] reduction12522.output := by lin_cert using reduction12522.terms
def image12523 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12523 : InImage map_39_216 image12523 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12523 : Bundle := named_bundle% "RealMapCertificates/relations/basis12523.json"
theorem reductionProof12523 : EqualModuloRelations reduction12523.relations reduction12523.input reduction12523.output := by lin_cert using reduction12523.terms
theorem substitutionProof12523 : IsMapEvaluation generatorImages reduction12523.relations [8,8,8,8,8,9,23,80] reduction12523.output := by lin_cert using reduction12523.terms
def image12524 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12524 : InImage map_39_216 image12524 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12524 : Bundle := named_bundle% "RealMapCertificates/relations/basis12524.json"
theorem reductionProof12524 : EqualModuloRelations reduction12524.relations reduction12524.input reduction12524.output := by lin_cert using reduction12524.terms
theorem substitutionProof12524 : IsMapEvaluation generatorImages reduction12524.relations [0,0,0,0,0,149,260] reduction12524.output := by lin_cert using reduction12524.terms
def map_39_217 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image12706 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12706 : InImage map_39_217 image12706 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12706 : Bundle := named_bundle% "RealMapCertificates/relations/basis12706.json"
theorem reductionProof12706 : EqualModuloRelations reduction12706.relations reduction12706.input reduction12706.output := by lin_cert using reduction12706.terms
theorem substitutionProof12706 : IsMapEvaluation generatorImages reduction12706.relations [8,1167] reduction12706.output := by lin_cert using reduction12706.terms
def image12707 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12707 : InImage map_39_217 image12707 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12707 : Bundle := named_bundle% "RealMapCertificates/relations/basis12707.json"
theorem reductionProof12707 : EqualModuloRelations reduction12707.relations reduction12707.input reduction12707.output := by lin_cert using reduction12707.terms
theorem substitutionProof12707 : IsMapEvaluation generatorImages reduction12707.relations [0,0,0,0,64,558] reduction12707.output := by lin_cert using reduction12707.terms
def image12708 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12708 : InImage map_39_217 image12708 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12708 : Bundle := named_bundle% "RealMapCertificates/relations/basis12708.json"
theorem reductionProof12708 : EqualModuloRelations reduction12708.relations reduction12708.input reduction12708.output := by lin_cert using reduction12708.terms
theorem substitutionProof12708 : IsMapEvaluation generatorImages reduction12708.relations [0,0,0,0,0,17,897] reduction12708.output := by lin_cert using reduction12708.terms
def map_39_218 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image12865 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12865 : InImage map_39_218 image12865 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12865 : Bundle := named_bundle% "RealMapCertificates/relations/basis12865.json"
theorem reductionProof12865 : EqualModuloRelations reduction12865.relations reduction12865.input reduction12865.output := by lin_cert using reduction12865.terms
theorem substitutionProof12865 : IsMapEvaluation generatorImages reduction12865.relations [8,8,42,380] reduction12865.output := by lin_cert using reduction12865.terms
def image12866 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12866 : InImage map_39_218 image12866 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12866 : Bundle := named_bundle% "RealMapCertificates/relations/basis12866.json"
theorem reductionProof12866 : EqualModuloRelations reduction12866.relations reduction12866.input reduction12866.output := by lin_cert using reduction12866.terms
theorem substitutionProof12866 : IsMapEvaluation generatorImages reduction12866.relations [8,8,8,689] reduction12866.output := by lin_cert using reduction12866.terms
def image12867 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12867 : InImage map_39_218 image12867 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12867 : Bundle := named_bundle% "RealMapCertificates/relations/basis12867.json"
theorem reductionProof12867 : EqualModuloRelations reduction12867.relations reduction12867.input reduction12867.output := by lin_cert using reduction12867.terms
theorem substitutionProof12867 : IsMapEvaluation generatorImages reduction12867.relations [8,8,8,8,13,13,167] reduction12867.output := by lin_cert using reduction12867.terms
def image12868 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12868 : InImage map_39_218 image12868 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12868 : Bundle := named_bundle% "RealMapCertificates/relations/basis12868.json"
theorem reductionProof12868 : EqualModuloRelations reduction12868.relations reduction12868.input reduction12868.output := by lin_cert using reduction12868.terms
theorem substitutionProof12868 : IsMapEvaluation generatorImages reduction12868.relations [0,0,0,0,0,0,1401] reduction12868.output := by lin_cert using reduction12868.terms
def map_39_219 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13109 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13109 : InImage map_39_219 image13109 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13109 : Bundle := named_bundle% "RealMapCertificates/relations/basis13109.json"
theorem reductionProof13109 : EqualModuloRelations reduction13109.relations reduction13109.input reduction13109.output := by lin_cert using reduction13109.terms
theorem substitutionProof13109 : IsMapEvaluation generatorImages reduction13109.relations [1535] reduction13109.output := by lin_cert using reduction13109.terms
def image13110 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13110 : InImage map_39_219 image13110 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13110 : Bundle := named_bundle% "RealMapCertificates/relations/basis13110.json"
theorem reductionProof13110 : EqualModuloRelations reduction13110.relations reduction13110.input reduction13110.output := by lin_cert using reduction13110.terms
theorem substitutionProof13110 : IsMapEvaluation generatorImages reduction13110.relations [8,8,9,13,13,13,13,13,32] reduction13110.output := by lin_cert using reduction13110.terms
def image13111 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13111 : InImage map_39_219 image13111 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13111 : Bundle := named_bundle% "RealMapCertificates/relations/basis13111.json"
theorem reductionProof13111 : EqualModuloRelations reduction13111.relations reduction13111.input reduction13111.output := by lin_cert using reduction13111.terms
theorem substitutionProof13111 : IsMapEvaluation generatorImages reduction13111.relations [8,8,8,8,8,327] reduction13111.output := by lin_cert using reduction13111.terms
def image13112 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13112 : InImage map_39_219 image13112 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13112 : Bundle := named_bundle% "RealMapCertificates/relations/basis13112.json"
theorem reductionProof13112 : EqualModuloRelations reduction13112.relations reduction13112.input reduction13112.output := by lin_cert using reduction13112.terms
theorem substitutionProof13112 : IsMapEvaluation generatorImages reduction13112.relations [8,8,8,8,8,13,23,80] reduction13112.output := by lin_cert using reduction13112.terms
def map_39_220 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13256 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13256 : InImage map_39_220 image13256 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13256 : Bundle := named_bundle% "RealMapCertificates/relations/basis13256.json"
theorem reductionProof13256 : EqualModuloRelations reduction13256.relations reduction13256.input reduction13256.output := by lin_cert using reduction13256.terms
theorem substitutionProof13256 : IsMapEvaluation generatorImages reduction13256.relations [8,8,927] reduction13256.output := by lin_cert using reduction13256.terms
def map_39_221 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image13436 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13436 : InImage map_39_221 image13436 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13436 : Bundle := named_bundle% "RealMapCertificates/relations/basis13436.json"
theorem reductionProof13436 : EqualModuloRelations reduction13436.relations reduction13436.input reduction13436.output := by lin_cert using reduction13436.terms
theorem substitutionProof13436 : IsMapEvaluation generatorImages reduction13436.relations [113,491] reduction13436.output := by lin_cert using reduction13436.terms
def image13437 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13437 : InImage map_39_221 image13437 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13437 : Bundle := named_bundle% "RealMapCertificates/relations/basis13437.json"
theorem reductionProof13437 : EqualModuloRelations reduction13437.relations reduction13437.input reduction13437.output := by lin_cert using reduction13437.terms
theorem substitutionProof13437 : IsMapEvaluation generatorImages reduction13437.relations [8,8,8,42,260] reduction13437.output := by lin_cert using reduction13437.terms
def image13438 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13438 : InImage map_39_221 image13438 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13438 : Bundle := named_bundle% "RealMapCertificates/relations/basis13438.json"
theorem reductionProof13438 : EqualModuloRelations reduction13438.relations reduction13438.input reduction13438.output := by lin_cert using reduction13438.terms
theorem substitutionProof13438 : IsMapEvaluation generatorImages reduction13438.relations [8,8,8,9,13,13,167] reduction13438.output := by lin_cert using reduction13438.terms
def image13439 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13439 : InImage map_39_221 image13439 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13439 : Bundle := named_bundle% "RealMapCertificates/relations/basis13439.json"
theorem reductionProof13439 : EqualModuloRelations reduction13439.relations reduction13439.input reduction13439.output := by lin_cert using reduction13439.terms
theorem substitutionProof13439 : IsMapEvaluation generatorImages reduction13439.relations [8,8,8,8,549] reduction13439.output := by lin_cert using reduction13439.terms
def image13440 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13440 : InImage map_39_221 image13440 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13440 : Bundle := named_bundle% "RealMapCertificates/relations/basis13440.json"
theorem reductionProof13440 : EqualModuloRelations reduction13440.relations reduction13440.input reduction13440.output := by lin_cert using reduction13440.terms
theorem substitutionProof13440 : IsMapEvaluation generatorImages reduction13440.relations [0,0,0,64,64,149] reduction13440.output := by lin_cert using reduction13440.terms
def map_39_222 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13663 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13663 : InImage map_39_222 image13663 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13663 : Bundle := named_bundle% "RealMapCertificates/relations/basis13663.json"
theorem reductionProof13663 : EqualModuloRelations reduction13663.relations reduction13663.input reduction13663.output := by lin_cert using reduction13663.terms
theorem substitutionProof13663 : IsMapEvaluation generatorImages reduction13663.relations [138,404] reduction13663.output := by lin_cert using reduction13663.terms
def image13664 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13664 : InImage map_39_222 image13664 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13664 : Bundle := named_bundle% "RealMapCertificates/relations/basis13664.json"
theorem reductionProof13664 : EqualModuloRelations reduction13664.relations reduction13664.input reduction13664.output := by lin_cert using reduction13664.terms
theorem substitutionProof13664 : IsMapEvaluation generatorImages reduction13664.relations [8,8,13,13,13,13,13,13,32] reduction13664.output := by lin_cert using reduction13664.terms
def image13665 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13665 : InImage map_39_222 image13665 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13665 : Bundle := named_bundle% "RealMapCertificates/relations/basis13665.json"
theorem reductionProof13665 : EqualModuloRelations reduction13665.relations reduction13665.input reduction13665.output := by lin_cert using reduction13665.terms
theorem substitutionProof13665 : IsMapEvaluation generatorImages reduction13665.relations [8,8,8,8,9,13,23,80] reduction13665.output := by lin_cert using reduction13665.terms
def image13666 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13666 : InImage map_39_222 image13666 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13666 : Bundle := named_bundle% "RealMapCertificates/relations/basis13666.json"
theorem reductionProof13666 : EqualModuloRelations reduction13666.relations reduction13666.input reduction13666.output := by lin_cert using reduction13666.terms
theorem substitutionProof13666 : IsMapEvaluation generatorImages reduction13666.relations [8,8,8,8,8,16,188] reduction13666.output := by lin_cert using reduction13666.terms
def image13667 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13667 : InImage map_39_222 image13667 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13667 : Bundle := named_bundle% "RealMapCertificates/relations/basis13667.json"
theorem reductionProof13667 : EqualModuloRelations reduction13667.relations reduction13667.input reduction13667.output := by lin_cert using reduction13667.terms
theorem substitutionProof13667 : IsMapEvaluation generatorImages reduction13667.relations [0,0,0,1536] reduction13667.output := by lin_cert using reduction13667.terms
def image13668 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13668 : InImage map_39_222 image13668 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13668 : Bundle := named_bundle% "RealMapCertificates/relations/basis13668.json"
theorem reductionProof13668 : EqualModuloRelations reduction13668.relations reduction13668.input reduction13668.output := by lin_cert using reduction13668.terms
theorem substitutionProof13668 : IsMapEvaluation generatorImages reduction13668.relations [0,0,0,0,64,598] reduction13668.output := by lin_cert using reduction13668.terms
def map_39_223 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image13834 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13834 : InImage map_39_223 image13834 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13834 : Bundle := named_bundle% "RealMapCertificates/relations/basis13834.json"
theorem reductionProof13834 : EqualModuloRelations reduction13834.relations reduction13834.input reduction13834.output := by lin_cert using reduction13834.terms
theorem substitutionProof13834 : IsMapEvaluation generatorImages reduction13834.relations [8,8,962] reduction13834.output := by lin_cert using reduction13834.terms
def map_39_224 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image13991 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13991 : InImage map_39_224 image13991 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13991 : Bundle := named_bundle% "RealMapCertificates/relations/basis13991.json"
theorem reductionProof13991 : EqualModuloRelations reduction13991.relations reduction13991.input reduction13991.output := by lin_cert using reduction13991.terms
theorem substitutionProof13991 : IsMapEvaluation generatorImages reduction13991.relations [8,138,260] reduction13991.output := by lin_cert using reduction13991.terms
def image13992 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13992 : InImage map_39_224 image13992 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13992 : Bundle := named_bundle% "RealMapCertificates/relations/basis13992.json"
theorem reductionProof13992 : EqualModuloRelations reduction13992.relations reduction13992.input reduction13992.output := by lin_cert using reduction13992.terms
theorem substitutionProof13992 : IsMapEvaluation generatorImages reduction13992.relations [8,8,8,42,278] reduction13992.output := by lin_cert using reduction13992.terms
def image13993 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13993 : InImage map_39_224 image13993 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13993 : Bundle := named_bundle% "RealMapCertificates/relations/basis13993.json"
theorem reductionProof13993 : EqualModuloRelations reduction13993.relations reduction13993.input reduction13993.output := by lin_cert using reduction13993.terms
theorem substitutionProof13993 : IsMapEvaluation generatorImages reduction13993.relations [8,8,8,13,13,13,167] reduction13993.output := by lin_cert using reduction13993.terms
def image13994 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13994 : InImage map_39_224 image13994 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13994 : Bundle := named_bundle% "RealMapCertificates/relations/basis13994.json"
theorem reductionProof13994 : EqualModuloRelations reduction13994.relations reduction13994.input reduction13994.output := by lin_cert using reduction13994.terms
theorem substitutionProof13994 : IsMapEvaluation generatorImages reduction13994.relations [8,8,8,8,574] reduction13994.output := by lin_cert using reduction13994.terms
def image13995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13995 : InImage map_39_224 image13995 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13995 : Bundle := named_bundle% "RealMapCertificates/relations/basis13995.json"
theorem reductionProof13995 : EqualModuloRelations reduction13995.relations reduction13995.input reduction13995.output := by lin_cert using reduction13995.terms
theorem substitutionProof13995 : IsMapEvaluation generatorImages reduction13995.relations [0,0,0,0,0,0,64,601] reduction13995.output := by lin_cert using reduction13995.terms
def map_39_225 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14231 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14231 : InImage map_39_225 image14231 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14231 : Bundle := named_bundle% "RealMapCertificates/relations/basis14231.json"
theorem reductionProof14231 : EqualModuloRelations reduction14231.relations reduction14231.input reduction14231.output := by lin_cert using reduction14231.terms
theorem substitutionProof14231 : IsMapEvaluation generatorImages reduction14231.relations [8,1316] reduction14231.output := by lin_cert using reduction14231.terms
def image14232 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14232 : InImage map_39_225 image14232 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14232 : Bundle := named_bundle% "RealMapCertificates/relations/basis14232.json"
theorem reductionProof14232 : EqualModuloRelations reduction14232.relations reduction14232.input reduction14232.output := by lin_cert using reduction14232.terms
theorem substitutionProof14232 : IsMapEvaluation generatorImages reduction14232.relations [8,9,13,13,13,13,13,13,32] reduction14232.output := by lin_cert using reduction14232.terms
def image14233 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14233 : InImage map_39_225 image14233 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14233 : Bundle := named_bundle% "RealMapCertificates/relations/basis14233.json"
theorem reductionProof14233 : EqualModuloRelations reduction14233.relations reduction14233.input reduction14233.output := by lin_cert using reduction14233.terms
theorem substitutionProof14233 : IsMapEvaluation generatorImages reduction14233.relations [8,8,8,8,13,13,23,80] reduction14233.output := by lin_cert using reduction14233.terms
def image14234 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14234 : InImage map_39_225 image14234 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14234 : Bundle := named_bundle% "RealMapCertificates/relations/basis14234.json"
theorem reductionProof14234 : EqualModuloRelations reduction14234.relations reduction14234.input reduction14234.output := by lin_cert using reduction14234.terms
theorem substitutionProof14234 : IsMapEvaluation generatorImages reduction14234.relations [8,8,8,8,8,8,255] reduction14234.output := by lin_cert using reduction14234.terms
def image14235 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14235 : InImage map_39_225 image14235 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14235 : Bundle := named_bundle% "RealMapCertificates/relations/basis14235.json"
theorem reductionProof14235 : EqualModuloRelations reduction14235.relations reduction14235.input reduction14235.output := by lin_cert using reduction14235.terms
theorem substitutionProof14235 : IsMapEvaluation generatorImages reduction14235.relations [5,149,260] reduction14235.output := by lin_cert using reduction14235.terms
def map_39_226 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14384 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14384 : InImage map_39_226 image14384 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14384 : Bundle := named_bundle% "RealMapCertificates/relations/basis14384.json"
theorem reductionProof14384 : EqualModuloRelations reduction14384.relations reduction14384.input reduction14384.output := by lin_cert using reduction14384.terms
theorem substitutionProof14384 : IsMapEvaluation generatorImages reduction14384.relations [8,8,17,642] reduction14384.output := by lin_cert using reduction14384.terms
def map_39_227 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14566 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14566 : InImage map_39_227 image14566 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14566 : Bundle := named_bundle% "RealMapCertificates/relations/basis14566.json"
theorem reductionProof14566 : EqualModuloRelations reduction14566.relations reduction14566.input reduction14566.output := by lin_cert using reduction14566.terms
theorem substitutionProof14566 : IsMapEvaluation generatorImages reduction14566.relations [8,138,278] reduction14566.output := by lin_cert using reduction14566.terms
def image14567 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14567 : InImage map_39_227 image14567 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14567 : Bundle := named_bundle% "RealMapCertificates/relations/basis14567.json"
theorem reductionProof14567 : EqualModuloRelations reduction14567.relations reduction14567.input reduction14567.output := by lin_cert using reduction14567.terms
theorem substitutionProof14567 : IsMapEvaluation generatorImages reduction14567.relations [8,8,9,13,13,13,167] reduction14567.output := by lin_cert using reduction14567.terms
def image14568 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14568 : InImage map_39_227 image14568 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14568 : Bundle := named_bundle% "RealMapCertificates/relations/basis14568.json"
theorem reductionProof14568 : EqualModuloRelations reduction14568.relations reduction14568.input reduction14568.output := by lin_cert using reduction14568.terms
theorem substitutionProof14568 : IsMapEvaluation generatorImages reduction14568.relations [8,8,8,8,602] reduction14568.output := by lin_cert using reduction14568.terms
def image14569 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14569 : InImage map_39_227 image14569 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14569 : Bundle := named_bundle% "RealMapCertificates/relations/basis14569.json"
theorem reductionProof14569 : EqualModuloRelations reduction14569.relations reduction14569.input reduction14569.output := by lin_cert using reduction14569.terms
theorem substitutionProof14569 : IsMapEvaluation generatorImages reduction14569.relations [8,8,8,8,8,420] reduction14569.output := by lin_cert using reduction14569.terms
def image14570 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14570 : InImage map_39_227 image14570 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14570 : Bundle := named_bundle% "RealMapCertificates/relations/basis14570.json"
theorem reductionProof14570 : EqualModuloRelations reduction14570.relations reduction14570.input reduction14570.output := by lin_cert using reduction14570.terms
theorem substitutionProof14570 : IsMapEvaluation generatorImages reduction14570.relations [0,149,380] reduction14570.output := by lin_cert using reduction14570.terms
end RealMapCertificates
