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
  | 24 => []
  | 32 => [[7,9]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 167 => [[7,9,12]]
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 209 => []
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 260 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 293 => []
  | 350 => []
  | 384 => []
  | 420 => []
  | 423 => []
  | 518 => []
  | 598 => [[0,6,9,12,12]]
  | 624 => []
  | 625 => []
  | 627 => []
  | 655 => []
  | 688 => []
  | 715 => [[7,7,7,12,12]]
  | 779 => []
  | 813 => []
  | 821 => [[5,7,10,12,12]]
  | 832 => []
  | 862 => []
  | 863 => [[4,7,7,7,12,12]]
  | 864 => [[7,7,10,12,12]]
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 919 => []
  | 920 => []
  | 940 => []
  | 957 => []
  | 1094 => []
  | 1145 => []
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1364 => []
  | 1366 => [[7,9,12,12,12]]
  | 1384 => []
  | 1638 => [[5,6,9,12,12,12]]
  | 1737 => []
  | 1753 => [[4,5,5,8,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | 1855 => []
  | 1856 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1992 => []
  | 1994 => []
  | 2095 => []
  | 2162 => []
  | 2196 => []
  | 2239 => [[0,0,8,12,12,12,12]]
  | _ => []
def map_39_228 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14802 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14802 : InImage map_39_228 image14802 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14802 : Bundle := named_bundle% "RealMapCertificates/relations/basis14802.json"
theorem reductionProof14802 : EqualModuloRelations reduction14802.relations reduction14802.input reduction14802.output := by lin_cert using reduction14802.terms
theorem substitutionProof14802 : IsMapEvaluation generatorImages reduction14802.relations [8,1364] reduction14802.output := by lin_cert using reduction14802.terms
def image14803 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14803 : InImage map_39_228 image14803 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14803 : Bundle := named_bundle% "RealMapCertificates/relations/basis14803.json"
theorem reductionProof14803 : EqualModuloRelations reduction14803.relations reduction14803.input reduction14803.output := by lin_cert using reduction14803.terms
theorem substitutionProof14803 : IsMapEvaluation generatorImages reduction14803.relations [8,13,13,13,13,13,13,13,32] reduction14803.output := by lin_cert using reduction14803.terms
def image14804 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14804 : InImage map_39_228 image14804 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14804 : Bundle := named_bundle% "RealMapCertificates/relations/basis14804.json"
theorem reductionProof14804 : EqualModuloRelations reduction14804.relations reduction14804.input reduction14804.output := by lin_cert using reduction14804.terms
theorem substitutionProof14804 : IsMapEvaluation generatorImages reduction14804.relations [8,8,8,9,13,13,23,80] reduction14804.output := by lin_cert using reduction14804.terms
def image14805 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14805 : InImage map_39_228 image14805 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14805 : Bundle := named_bundle% "RealMapCertificates/relations/basis14805.json"
theorem reductionProof14805 : EqualModuloRelations reduction14805.relations reduction14805.input reduction14805.output := by lin_cert using reduction14805.terms
theorem substitutionProof14805 : IsMapEvaluation generatorImages reduction14805.relations [8,8,8,8,8,8,8,188] reduction14805.output := by lin_cert using reduction14805.terms
def image14806 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14806 : InImage map_39_228 image14806 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14806 : Bundle := named_bundle% "RealMapCertificates/relations/basis14806.json"
theorem reductionProof14806 : EqualModuloRelations reduction14806.relations reduction14806.input reduction14806.output := by lin_cert using reduction14806.terms
theorem substitutionProof14806 : IsMapEvaluation generatorImages reduction14806.relations [0,64,688] reduction14806.output := by lin_cert using reduction14806.terms
def image14807 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14807 : InImage map_39_228 image14807 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14807 : Bundle := named_bundle% "RealMapCertificates/relations/basis14807.json"
theorem reductionProof14807 : EqualModuloRelations reduction14807.relations reduction14807.input reduction14807.output := by lin_cert using reduction14807.terms
theorem substitutionProof14807 : IsMapEvaluation generatorImages reduction14807.relations [0,17,113,260] reduction14807.output := by lin_cert using reduction14807.terms
def map_39_229 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14987 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14987 : InImage map_39_229 image14987 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14987 : Bundle := named_bundle% "RealMapCertificates/relations/basis14987.json"
theorem reductionProof14987 : EqualModuloRelations reduction14987.relations reduction14987.input reduction14987.output := by lin_cert using reduction14987.terms
theorem substitutionProof14987 : IsMapEvaluation generatorImages reduction14987.relations [8,8,8,821] reduction14987.output := by lin_cert using reduction14987.terms
def map_39_230 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image15163 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15163 : InImage map_39_230 image15163 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15163 : Bundle := named_bundle% "RealMapCertificates/relations/basis15163.json"
theorem reductionProof15163 : EqualModuloRelations reduction15163.relations reduction15163.input reduction15163.output := by lin_cert using reduction15163.terms
theorem substitutionProof15163 : IsMapEvaluation generatorImages reduction15163.relations [1737] reduction15163.output := by lin_cert using reduction15163.terms
def image15164 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15164 : InImage map_39_230 image15164 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15164 : Bundle := named_bundle% "RealMapCertificates/relations/basis15164.json"
theorem reductionProof15164 : EqualModuloRelations reduction15164.relations reduction15164.input reduction15164.output := by lin_cert using reduction15164.terms
theorem substitutionProof15164 : IsMapEvaluation generatorImages reduction15164.relations [8,16,897] reduction15164.output := by lin_cert using reduction15164.terms
def image15165 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15165 : InImage map_39_230 image15165 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15165 : Bundle := named_bundle% "RealMapCertificates/relations/basis15165.json"
theorem reductionProof15165 : EqualModuloRelations reduction15165.relations reduction15165.input reduction15165.output := by lin_cert using reduction15165.terms
theorem substitutionProof15165 : IsMapEvaluation generatorImages reduction15165.relations [8,8,13,13,13,13,167] reduction15165.output := by lin_cert using reduction15165.terms
def image15166 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15166 : InImage map_39_230 image15166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15166 : Bundle := named_bundle% "RealMapCertificates/relations/basis15166.json"
theorem reductionProof15166 : EqualModuloRelations reduction15166.relations reduction15166.input reduction15166.output := by lin_cert using reduction15166.terms
theorem substitutionProof15166 : IsMapEvaluation generatorImages reduction15166.relations [8,8,8,8,625] reduction15166.output := by lin_cert using reduction15166.terms
def image15167 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15167 : InImage map_39_230 image15167 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15167 : Bundle := named_bundle% "RealMapCertificates/relations/basis15167.json"
theorem reductionProof15167 : EqualModuloRelations reduction15167.relations reduction15167.input reduction15167.output := by lin_cert using reduction15167.terms
theorem substitutionProof15167 : IsMapEvaluation generatorImages reduction15167.relations [8,8,8,8,9,420] reduction15167.output := by lin_cert using reduction15167.terms
def image15168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15168 : InImage map_39_230 image15168 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15168 : Bundle := named_bundle% "RealMapCertificates/relations/basis15168.json"
theorem reductionProof15168 : EqualModuloRelations reduction15168.relations reduction15168.input reduction15168.output := by lin_cert using reduction15168.terms
theorem substitutionProof15168 : IsMapEvaluation generatorImages reduction15168.relations [0,8,149,260] reduction15168.output := by lin_cert using reduction15168.terms
def map_39_231 : Matrix 4 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15430 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15430 : InImage map_39_231 image15430 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15430 : Bundle := named_bundle% "RealMapCertificates/relations/basis15430.json"
theorem reductionProof15430 : EqualModuloRelations reduction15430.relations reduction15430.input reduction15430.output := by lin_cert using reduction15430.terms
theorem substitutionProof15430 : IsMapEvaluation generatorImages reduction15430.relations [9,13,13,13,13,13,13,13,32] reduction15430.output := by lin_cert using reduction15430.terms
def image15431 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15431 : InImage map_39_231 image15431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15431 : Bundle := named_bundle% "RealMapCertificates/relations/basis15431.json"
theorem reductionProof15431 : EqualModuloRelations reduction15431.relations reduction15431.input reduction15431.output := by lin_cert using reduction15431.terms
theorem substitutionProof15431 : IsMapEvaluation generatorImages reduction15431.relations [8,8,1094] reduction15431.output := by lin_cert using reduction15431.terms
def image15432 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15432 : InImage map_39_231 image15432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15432 : Bundle := named_bundle% "RealMapCertificates/relations/basis15432.json"
theorem reductionProof15432 : EqualModuloRelations reduction15432.relations reduction15432.input reduction15432.output := by lin_cert using reduction15432.terms
theorem substitutionProof15432 : IsMapEvaluation generatorImages reduction15432.relations [8,8,8,13,13,13,23,80] reduction15432.output := by lin_cert using reduction15432.terms
def image15433 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15433 : InImage map_39_231 image15433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15433 : Bundle := named_bundle% "RealMapCertificates/relations/basis15433.json"
theorem reductionProof15433 : EqualModuloRelations reduction15433.relations reduction15433.input reduction15433.output := by lin_cert using reduction15433.terms
theorem substitutionProof15433 : IsMapEvaluation generatorImages reduction15433.relations [8,8,8,8,8,8,9,188] reduction15433.output := by lin_cert using reduction15433.terms
def image15434 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15434 : InImage map_39_231 image15434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15434 : Bundle := named_bundle% "RealMapCertificates/relations/basis15434.json"
theorem reductionProof15434 : EqualModuloRelations reduction15434.relations reduction15434.input reduction15434.output := by lin_cert using reduction15434.terms
theorem substitutionProof15434 : IsMapEvaluation generatorImages reduction15434.relations [0,8,17,897] reduction15434.output := by lin_cert using reduction15434.terms
def map_39_232 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15613 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15613 : InImage map_39_232 image15613 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15613 : Bundle := named_bundle% "RealMapCertificates/relations/basis15613.json"
theorem reductionProof15613 : EqualModuloRelations reduction15613.relations reduction15613.input reduction15613.output := by lin_cert using reduction15613.terms
theorem substitutionProof15613 : IsMapEvaluation generatorImages reduction15613.relations [8,8,8,864] reduction15613.output := by lin_cert using reduction15613.terms
def image15614 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15614 : InImage map_39_232 image15614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15614 : Bundle := named_bundle% "RealMapCertificates/relations/basis15614.json"
theorem reductionProof15614 : EqualModuloRelations reduction15614.relations reduction15614.input reduction15614.output := by lin_cert using reduction15614.terms
theorem substitutionProof15614 : IsMapEvaluation generatorImages reduction15614.relations [0,1753] reduction15614.output := by lin_cert using reduction15614.terms
def map_39_233 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image15823 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15823 : InImage map_39_233 image15823 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15823 : Bundle := named_bundle% "RealMapCertificates/relations/basis15823.json"
theorem reductionProof15823 : EqualModuloRelations reduction15823.relations reduction15823.input reduction15823.output := by lin_cert using reduction15823.terms
theorem substitutionProof15823 : IsMapEvaluation generatorImages reduction15823.relations [64,113,149] reduction15823.output := by lin_cert using reduction15823.terms
def image15824 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15824 : InImage map_39_233 image15824 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15824 : Bundle := named_bundle% "RealMapCertificates/relations/basis15824.json"
theorem reductionProof15824 : EqualModuloRelations reduction15824.relations reduction15824.input reduction15824.output := by lin_cert using reduction15824.terms
theorem substitutionProof15824 : IsMapEvaluation generatorImages reduction15824.relations [8,9,13,13,13,13,167] reduction15824.output := by lin_cert using reduction15824.terms
def image15825 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15825 : InImage map_39_233 image15825 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15825 : Bundle := named_bundle% "RealMapCertificates/relations/basis15825.json"
theorem reductionProof15825 : EqualModuloRelations reduction15825.relations reduction15825.input reduction15825.output := by lin_cert using reduction15825.terms
theorem substitutionProof15825 : IsMapEvaluation generatorImages reduction15825.relations [8,8,113,260] reduction15825.output := by lin_cert using reduction15825.terms
def image15826 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15826 : InImage map_39_233 image15826 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15826 : Bundle := named_bundle% "RealMapCertificates/relations/basis15826.json"
theorem reductionProof15826 : EqualModuloRelations reduction15826.relations reduction15826.input reduction15826.output := by lin_cert using reduction15826.terms
theorem substitutionProof15826 : IsMapEvaluation generatorImages reduction15826.relations [8,8,8,8,23,292] reduction15826.output := by lin_cert using reduction15826.terms
def image15827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15827 : InImage map_39_233 image15827 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15827 : Bundle := named_bundle% "RealMapCertificates/relations/basis15827.json"
theorem reductionProof15827 : EqualModuloRelations reduction15827.relations reduction15827.input reduction15827.output := by lin_cert using reduction15827.terms
theorem substitutionProof15827 : IsMapEvaluation generatorImages reduction15827.relations [8,8,8,8,8,8,293] reduction15827.output := by lin_cert using reduction15827.terms
def map_39_234 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16078 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16078 : InImage map_39_234 image16078 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16078 : Bundle := named_bundle% "RealMapCertificates/relations/basis16078.json"
theorem reductionProof16078 : EqualModuloRelations reduction16078.relations reduction16078.input reduction16078.output := by lin_cert using reduction16078.terms
theorem substitutionProof16078 : IsMapEvaluation generatorImages reduction16078.relations [1832] reduction16078.output := by lin_cert using reduction16078.terms
def image16079 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16079 : InImage map_39_234 image16079 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16079 : Bundle := named_bundle% "RealMapCertificates/relations/basis16079.json"
theorem reductionProof16079 : EqualModuloRelations reduction16079.relations reduction16079.input reduction16079.output := by lin_cert using reduction16079.terms
theorem substitutionProof16079 : IsMapEvaluation generatorImages reduction16079.relations [13,13,13,13,13,13,13,13,32] reduction16079.output := by lin_cert using reduction16079.terms
def image16080 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16080 : InImage map_39_234 image16080 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16080 : Bundle := named_bundle% "RealMapCertificates/relations/basis16080.json"
theorem reductionProof16080 : EqualModuloRelations reduction16080.relations reduction16080.input reduction16080.output := by lin_cert using reduction16080.terms
theorem substitutionProof16080 : IsMapEvaluation generatorImages reduction16080.relations [8,8,1145] reduction16080.output := by lin_cert using reduction16080.terms
def image16081 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16081 : InImage map_39_234 image16081 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16081 : Bundle := named_bundle% "RealMapCertificates/relations/basis16081.json"
theorem reductionProof16081 : EqualModuloRelations reduction16081.relations reduction16081.input reduction16081.output := by lin_cert using reduction16081.terms
theorem substitutionProof16081 : IsMapEvaluation generatorImages reduction16081.relations [8,8,9,13,13,13,23,80] reduction16081.output := by lin_cert using reduction16081.terms
def image16082 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16082 : InImage map_39_234 image16082 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16082 : Bundle := named_bundle% "RealMapCertificates/relations/basis16082.json"
theorem reductionProof16082 : EqualModuloRelations reduction16082.relations reduction16082.input reduction16082.output := by lin_cert using reduction16082.terms
theorem substitutionProof16082 : IsMapEvaluation generatorImages reduction16082.relations [8,8,8,8,8,8,13,188] reduction16082.output := by lin_cert using reduction16082.terms
def image16083 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16083 : InImage map_39_234 image16083 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16083 : Bundle := named_bundle% "RealMapCertificates/relations/basis16083.json"
theorem reductionProof16083 : EqualModuloRelations reduction16083.relations reduction16083.input reduction16083.output := by lin_cert using reduction16083.terms
theorem substitutionProof16083 : IsMapEvaluation generatorImages reduction16083.relations [0,8,17,940] reduction16083.output := by lin_cert using reduction16083.terms
def map_39_235 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image16277 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16277 : InImage map_39_235 image16277 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16277 : Bundle := named_bundle% "RealMapCertificates/relations/basis16277.json"
theorem reductionProof16277 : EqualModuloRelations reduction16277.relations reduction16277.input reduction16277.output := by lin_cert using reduction16277.terms
theorem substitutionProof16277 : IsMapEvaluation generatorImages reduction16277.relations [247,260] reduction16277.output := by lin_cert using reduction16277.terms
def image16278 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16278 : InImage map_39_235 image16278 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16278 : Bundle := named_bundle% "RealMapCertificates/relations/basis16278.json"
theorem reductionProof16278 : EqualModuloRelations reduction16278.relations reduction16278.input reduction16278.output := by lin_cert using reduction16278.terms
theorem substitutionProof16278 : IsMapEvaluation generatorImages reduction16278.relations [246,260] reduction16278.output := by lin_cert using reduction16278.terms
def image16279 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16279 : InImage map_39_235 image16279 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16279 : Bundle := named_bundle% "RealMapCertificates/relations/basis16279.json"
theorem reductionProof16279 : EqualModuloRelations reduction16279.relations reduction16279.input reduction16279.output := by lin_cert using reduction16279.terms
theorem substitutionProof16279 : IsMapEvaluation generatorImages reduction16279.relations [8,8,9,864] reduction16279.output := by lin_cert using reduction16279.terms
def map_39_236 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16492 : InImage map_39_236 image16492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16492 : Bundle := named_bundle% "RealMapCertificates/relations/basis16492.json"
theorem reductionProof16492 : EqualModuloRelations reduction16492.relations reduction16492.input reduction16492.output := by lin_cert using reduction16492.terms
theorem substitutionProof16492 : IsMapEvaluation generatorImages reduction16492.relations [8,64,598] reduction16492.output := by lin_cert using reduction16492.terms
def image16493 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16493 : InImage map_39_236 image16493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16493 : Bundle := named_bundle% "RealMapCertificates/relations/basis16493.json"
theorem reductionProof16493 : EqualModuloRelations reduction16493.relations reduction16493.input reduction16493.output := by lin_cert using reduction16493.terms
theorem substitutionProof16493 : IsMapEvaluation generatorImages reduction16493.relations [8,13,13,13,13,13,167] reduction16493.output := by lin_cert using reduction16493.terms
def image16494 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16494 : InImage map_39_236 image16494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16494 : Bundle := named_bundle% "RealMapCertificates/relations/basis16494.json"
theorem reductionProof16494 : EqualModuloRelations reduction16494.relations reduction16494.input reduction16494.output := by lin_cert using reduction16494.terms
theorem substitutionProof16494 : IsMapEvaluation generatorImages reduction16494.relations [8,8,8,897] reduction16494.output := by lin_cert using reduction16494.terms
def image16495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16495 : InImage map_39_236 image16495 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16495 : Bundle := named_bundle% "RealMapCertificates/relations/basis16495.json"
theorem reductionProof16495 : EqualModuloRelations reduction16495.relations reduction16495.input reduction16495.output := by lin_cert using reduction16495.terms
theorem substitutionProof16495 : IsMapEvaluation generatorImages reduction16495.relations [8,8,8,9,23,292] reduction16495.output := by lin_cert using reduction16495.terms
def image16496 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16496 : InImage map_39_236 image16496 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16496 : Bundle := named_bundle% "RealMapCertificates/relations/basis16496.json"
theorem reductionProof16496 : EqualModuloRelations reduction16496.relations reduction16496.input reduction16496.output := by lin_cert using reduction16496.terms
theorem substitutionProof16496 : IsMapEvaluation generatorImages reduction16496.relations [8,8,8,8,8,9,293] reduction16496.output := by lin_cert using reduction16496.terms
def image16497 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16497 : InImage map_39_236 image16497 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16497 : Bundle := named_bundle% "RealMapCertificates/relations/basis16497.json"
theorem reductionProof16497 : EqualModuloRelations reduction16497.relations reduction16497.input reduction16497.output := by lin_cert using reduction16497.terms
theorem substitutionProof16497 : IsMapEvaluation generatorImages reduction16497.relations [0,1855] reduction16497.output := by lin_cert using reduction16497.terms
def map_39_237 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16757 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16757 : InImage map_39_237 image16757 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16757 : Bundle := named_bundle% "RealMapCertificates/relations/basis16757.json"
theorem reductionProof16757 : EqualModuloRelations reduction16757.relations reduction16757.input reduction16757.output := by lin_cert using reduction16757.terms
theorem substitutionProof16757 : IsMapEvaluation generatorImages reduction16757.relations [17,1317] reduction16757.output := by lin_cert using reduction16757.terms
def image16758 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16758 : InImage map_39_237 image16758 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16758 : Bundle := named_bundle% "RealMapCertificates/relations/basis16758.json"
theorem reductionProof16758 : EqualModuloRelations reduction16758.relations reduction16758.input reduction16758.output := by lin_cert using reduction16758.terms
theorem substitutionProof16758 : IsMapEvaluation generatorImages reduction16758.relations [8,8,13,13,13,13,23,80] reduction16758.output := by lin_cert using reduction16758.terms
def image16759 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16759 : InImage map_39_237 image16759 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16759 : Bundle := named_bundle% "RealMapCertificates/relations/basis16759.json"
theorem reductionProof16759 : EqualModuloRelations reduction16759.relations reduction16759.input reduction16759.output := by lin_cert using reduction16759.terms
theorem substitutionProof16759 : IsMapEvaluation generatorImages reduction16759.relations [8,8,8,920] reduction16759.output := by lin_cert using reduction16759.terms
def image16760 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16760 : InImage map_39_237 image16760 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16760 : Bundle := named_bundle% "RealMapCertificates/relations/basis16760.json"
theorem reductionProof16760 : EqualModuloRelations reduction16760.relations reduction16760.input reduction16760.output := by lin_cert using reduction16760.terms
theorem substitutionProof16760 : IsMapEvaluation generatorImages reduction16760.relations [8,8,8,8,8,9,13,188] reduction16760.output := by lin_cert using reduction16760.terms
def image16761 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16761 : InImage map_39_237 image16761 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16761 : Bundle := named_bundle% "RealMapCertificates/relations/basis16761.json"
theorem reductionProof16761 : EqualModuloRelations reduction16761.relations reduction16761.input reduction16761.output := by lin_cert using reduction16761.terms
theorem substitutionProof16761 : IsMapEvaluation generatorImages reduction16761.relations [1,1855] reduction16761.output := by lin_cert using reduction16761.terms
def image16762 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16762 : InImage map_39_237 image16762 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16762 : Bundle := named_bundle% "RealMapCertificates/relations/basis16762.json"
theorem reductionProof16762 : EqualModuloRelations reduction16762.relations reduction16762.input reduction16762.output := by lin_cert using reduction16762.terms
theorem substitutionProof16762 : IsMapEvaluation generatorImages reduction16762.relations [0,0,1856] reduction16762.output := by lin_cert using reduction16762.terms
def map_39_238 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16944 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16944 : InImage map_39_238 image16944 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16944 : Bundle := named_bundle% "RealMapCertificates/relations/basis16944.json"
theorem reductionProof16944 : EqualModuloRelations reduction16944.relations reduction16944.input reduction16944.output := by lin_cert using reduction16944.terms
theorem substitutionProof16944 : IsMapEvaluation generatorImages reduction16944.relations [17,1336] reduction16944.output := by lin_cert using reduction16944.terms
def image16945 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16945 : InImage map_39_238 image16945 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16945 : Bundle := named_bundle% "RealMapCertificates/relations/basis16945.json"
theorem reductionProof16945 : EqualModuloRelations reduction16945.relations reduction16945.input reduction16945.output := by lin_cert using reduction16945.terms
theorem substitutionProof16945 : IsMapEvaluation generatorImages reduction16945.relations [8,8,13,864] reduction16945.output := by lin_cert using reduction16945.terms
def map_39_239 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17185 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17185 : InImage map_39_239 image17185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17185 : Bundle := named_bundle% "RealMapCertificates/relations/basis17185.json"
theorem reductionProof17185 : EqualModuloRelations reduction17185.relations reduction17185.input reduction17185.output := by lin_cert using reduction17185.terms
theorem substitutionProof17185 : IsMapEvaluation generatorImages reduction17185.relations [9,13,13,13,13,13,167] reduction17185.output := by lin_cert using reduction17185.terms
def image17186 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17186 : InImage map_39_239 image17186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17186 : Bundle := named_bundle% "RealMapCertificates/relations/basis17186.json"
theorem reductionProof17186 : EqualModuloRelations reduction17186.relations reduction17186.input reduction17186.output := by lin_cert using reduction17186.terms
theorem substitutionProof17186 : IsMapEvaluation generatorImages reduction17186.relations [8,64,624] reduction17186.output := by lin_cert using reduction17186.terms
def image17187 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17187 : InImage map_39_239 image17187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17187 : Bundle := named_bundle% "RealMapCertificates/relations/basis17187.json"
theorem reductionProof17187 : EqualModuloRelations reduction17187.relations reduction17187.input reduction17187.output := by lin_cert using reduction17187.terms
theorem substitutionProof17187 : IsMapEvaluation generatorImages reduction17187.relations [8,8,8,940] reduction17187.output := by lin_cert using reduction17187.terms
def image17188 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17188 : InImage map_39_239 image17188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17188 : Bundle := named_bundle% "RealMapCertificates/relations/basis17188.json"
theorem reductionProof17188 : EqualModuloRelations reduction17188.relations reduction17188.input reduction17188.output := by lin_cert using reduction17188.terms
theorem substitutionProof17188 : IsMapEvaluation generatorImages reduction17188.relations [8,8,8,13,23,292] reduction17188.output := by lin_cert using reduction17188.terms
def image17189 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17189 : InImage map_39_239 image17189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17189 : Bundle := named_bundle% "RealMapCertificates/relations/basis17189.json"
theorem reductionProof17189 : EqualModuloRelations reduction17189.relations reduction17189.input reduction17189.output := by lin_cert using reduction17189.terms
theorem substitutionProof17189 : IsMapEvaluation generatorImages reduction17189.relations [8,8,8,8,8,8,350] reduction17189.output := by lin_cert using reduction17189.terms
def map_39_240 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17451 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17451 : InImage map_39_240 image17451 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17451 : Bundle := named_bundle% "RealMapCertificates/relations/basis17451.json"
theorem reductionProof17451 : EqualModuloRelations reduction17451.relations reduction17451.input reduction17451.output := by lin_cert using reduction17451.terms
theorem substitutionProof17451 : IsMapEvaluation generatorImages reduction17451.relations [16,1366] reduction17451.output := by lin_cert using reduction17451.terms
def image17452 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17452 : InImage map_39_240 image17452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17452 : Bundle := named_bundle% "RealMapCertificates/relations/basis17452.json"
theorem reductionProof17452 : EqualModuloRelations reduction17452.relations reduction17452.input reduction17452.output := by lin_cert using reduction17452.terms
theorem substitutionProof17452 : IsMapEvaluation generatorImages reduction17452.relations [13,13,13,13,13,13,13,23,24] reduction17452.output := by lin_cert using reduction17452.terms
def image17453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17453 : InImage map_39_240 image17453 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17453 : Bundle := named_bundle% "RealMapCertificates/relations/basis17453.json"
theorem reductionProof17453 : EqualModuloRelations reduction17453.relations reduction17453.input reduction17453.output := by lin_cert using reduction17453.terms
theorem substitutionProof17453 : IsMapEvaluation generatorImages reduction17453.relations [8,9,13,13,13,13,23,80] reduction17453.output := by lin_cert using reduction17453.terms
def image17454 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17454 : InImage map_39_240 image17454 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17454 : Bundle := named_bundle% "RealMapCertificates/relations/basis17454.json"
theorem reductionProof17454 : EqualModuloRelations reduction17454.relations reduction17454.input reduction17454.output := by lin_cert using reduction17454.terms
theorem substitutionProof17454 : IsMapEvaluation generatorImages reduction17454.relations [8,8,8,957] reduction17454.output := by lin_cert using reduction17454.terms
def image17455 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17455 : InImage map_39_240 image17455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17455 : Bundle := named_bundle% "RealMapCertificates/relations/basis17455.json"
theorem reductionProof17455 : EqualModuloRelations reduction17455.relations reduction17455.input reduction17455.output := by lin_cert using reduction17455.terms
theorem substitutionProof17455 : IsMapEvaluation generatorImages reduction17455.relations [8,8,8,8,8,13,13,188] reduction17455.output := by lin_cert using reduction17455.terms
def map_39_241 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image17701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17701 : InImage map_39_241 image17701 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17701 : Bundle := named_bundle% "RealMapCertificates/relations/basis17701.json"
theorem reductionProof17701 : EqualModuloRelations reduction17701.relations reduction17701.input reduction17701.output := by lin_cert using reduction17701.terms
theorem substitutionProof17701 : IsMapEvaluation generatorImages reduction17701.relations [64,863] reduction17701.output := by lin_cert using reduction17701.terms
def image17702 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17702 : InImage map_39_241 image17702 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17702 : Bundle := named_bundle% "RealMapCertificates/relations/basis17702.json"
theorem reductionProof17702 : EqualModuloRelations reduction17702.relations reduction17702.input reduction17702.output := by lin_cert using reduction17702.terms
theorem substitutionProof17702 : IsMapEvaluation generatorImages reduction17702.relations [64,862] reduction17702.output := by lin_cert using reduction17702.terms
def image17703 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17703 : InImage map_39_241 image17703 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17703 : Bundle := named_bundle% "RealMapCertificates/relations/basis17703.json"
theorem reductionProof17703 : EqualModuloRelations reduction17703.relations reduction17703.input reduction17703.output := by lin_cert using reduction17703.terms
theorem substitutionProof17703 : IsMapEvaluation generatorImages reduction17703.relations [8,193,260] reduction17703.output := by lin_cert using reduction17703.terms
def image17704 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17704 : InImage map_39_241 image17704 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17704 : Bundle := named_bundle% "RealMapCertificates/relations/basis17704.json"
theorem reductionProof17704 : EqualModuloRelations reduction17704.relations reduction17704.input reduction17704.output := by lin_cert using reduction17704.terms
theorem substitutionProof17704 : IsMapEvaluation generatorImages reduction17704.relations [8,9,13,864] reduction17704.output := by lin_cert using reduction17704.terms
def image17705 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17705 : InImage map_39_241 image17705 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17705 : Bundle := named_bundle% "RealMapCertificates/relations/basis17705.json"
theorem reductionProof17705 : EqualModuloRelations reduction17705.relations reduction17705.input reduction17705.output := by lin_cert using reduction17705.terms
theorem substitutionProof17705 : IsMapEvaluation generatorImages reduction17705.relations [0,0,0,260,260] reduction17705.output := by lin_cert using reduction17705.terms
def map_39_242 : Matrix 2 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image17950 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17950 : InImage map_39_242 image17950 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17950 : Bundle := named_bundle% "RealMapCertificates/relations/basis17950.json"
theorem reductionProof17950 : EqualModuloRelations reduction17950.relations reduction17950.input reduction17950.output := by lin_cert using reduction17950.terms
theorem substitutionProof17950 : IsMapEvaluation generatorImages reduction17950.relations [13,13,13,13,13,13,167] reduction17950.output := by lin_cert using reduction17950.terms
def image17951 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17951 : InImage map_39_242 image17951 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17951 : Bundle := named_bundle% "RealMapCertificates/relations/basis17951.json"
theorem reductionProof17951 : EqualModuloRelations reduction17951.relations reduction17951.input reduction17951.output := by lin_cert using reduction17951.terms
theorem substitutionProof17951 : IsMapEvaluation generatorImages reduction17951.relations [8,16,138,209] reduction17951.output := by lin_cert using reduction17951.terms
def image17952 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17952 : InImage map_39_242 image17952 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17952 : Bundle := named_bundle% "RealMapCertificates/relations/basis17952.json"
theorem reductionProof17952 : EqualModuloRelations reduction17952.relations reduction17952.input reduction17952.output := by lin_cert using reduction17952.terms
theorem substitutionProof17952 : IsMapEvaluation generatorImages reduction17952.relations [8,8,9,13,23,292] reduction17952.output := by lin_cert using reduction17952.terms
def image17953 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17953 : InImage map_39_242 image17953 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17953 : Bundle := named_bundle% "RealMapCertificates/relations/basis17953.json"
theorem reductionProof17953 : EqualModuloRelations reduction17953.relations reduction17953.input reduction17953.output := by lin_cert using reduction17953.terms
theorem substitutionProof17953 : IsMapEvaluation generatorImages reduction17953.relations [8,8,8,17,627] reduction17953.output := by lin_cert using reduction17953.terms
def image17954 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17954 : InImage map_39_242 image17954 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17954 : Bundle := named_bundle% "RealMapCertificates/relations/basis17954.json"
theorem reductionProof17954 : EqualModuloRelations reduction17954.relations reduction17954.input reduction17954.output := by lin_cert using reduction17954.terms
theorem substitutionProof17954 : IsMapEvaluation generatorImages reduction17954.relations [8,8,8,8,8,8,384] reduction17954.output := by lin_cert using reduction17954.terms
def image17955 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17955 : InImage map_39_242 image17955 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17955 : Bundle := named_bundle% "RealMapCertificates/relations/basis17955.json"
theorem reductionProof17955 : EqualModuloRelations reduction17955.relations reduction17955.input reduction17955.output := by lin_cert using reduction17955.terms
theorem substitutionProof17955 : IsMapEvaluation generatorImages reduction17955.relations [0,0,260,274] reduction17955.output := by lin_cert using reduction17955.terms
def image17956 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17956 : InImage map_39_242 image17956 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17956 : Bundle := named_bundle% "RealMapCertificates/relations/basis17956.json"
theorem reductionProof17956 : EqualModuloRelations reduction17956.relations reduction17956.input reduction17956.output := by lin_cert using reduction17956.terms
theorem substitutionProof17956 : IsMapEvaluation generatorImages reduction17956.relations [0,0,0,0,1926] reduction17956.output := by lin_cert using reduction17956.terms
def map_39_243 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image18241 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18241 : InImage map_39_243 image18241 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18241 : Bundle := named_bundle% "RealMapCertificates/relations/basis18241.json"
theorem reductionProof18241 : EqualModuloRelations reduction18241.relations reduction18241.input reduction18241.output := by lin_cert using reduction18241.terms
theorem substitutionProof18241 : IsMapEvaluation generatorImages reduction18241.relations [8,1638] reduction18241.output := by lin_cert using reduction18241.terms
def image18242 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18242 : InImage map_39_243 image18242 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18242 : Bundle := named_bundle% "RealMapCertificates/relations/basis18242.json"
theorem reductionProof18242 : EqualModuloRelations reduction18242.relations reduction18242.input reduction18242.output := by lin_cert using reduction18242.terms
theorem substitutionProof18242 : IsMapEvaluation generatorImages reduction18242.relations [8,13,13,13,13,13,23,80] reduction18242.output := by lin_cert using reduction18242.terms
def image18243 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18243 : InImage map_39_243 image18243 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18243 : Bundle := named_bundle% "RealMapCertificates/relations/basis18243.json"
theorem reductionProof18243 : EqualModuloRelations reduction18243.relations reduction18243.input reduction18243.output := by lin_cert using reduction18243.terms
theorem substitutionProof18243 : IsMapEvaluation generatorImages reduction18243.relations [8,8,8,8,779] reduction18243.output := by lin_cert using reduction18243.terms
def image18244 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18244 : InImage map_39_243 image18244 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18244 : Bundle := named_bundle% "RealMapCertificates/relations/basis18244.json"
theorem reductionProof18244 : EqualModuloRelations reduction18244.relations reduction18244.input reduction18244.output := by lin_cert using reduction18244.terms
theorem substitutionProof18244 : IsMapEvaluation generatorImages reduction18244.relations [8,8,8,8,9,13,13,188] reduction18244.output := by lin_cert using reduction18244.terms
def image18245 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18245 : InImage map_39_243 image18245 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18245 : Bundle := named_bundle% "RealMapCertificates/relations/basis18245.json"
theorem reductionProof18245 : EqualModuloRelations reduction18245.relations reduction18245.input reduction18245.output := by lin_cert using reduction18245.terms
theorem substitutionProof18245 : IsMapEvaluation generatorImages reduction18245.relations [0,0,0,0,1967] reduction18245.output := by lin_cert using reduction18245.terms
def map_39_244 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image18443 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18443 : InImage map_39_244 image18443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18443 : Bundle := named_bundle% "RealMapCertificates/relations/basis18443.json"
theorem reductionProof18443 : EqualModuloRelations reduction18443.relations reduction18443.input reduction18443.output := by lin_cert using reduction18443.terms
theorem substitutionProof18443 : IsMapEvaluation generatorImages reduction18443.relations [64,890] reduction18443.output := by lin_cert using reduction18443.terms
def image18444 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18444 : InImage map_39_244 image18444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18444 : Bundle := named_bundle% "RealMapCertificates/relations/basis18444.json"
theorem reductionProof18444 : EqualModuloRelations reduction18444.relations reduction18444.input reduction18444.output := by lin_cert using reduction18444.terms
theorem substitutionProof18444 : IsMapEvaluation generatorImages reduction18444.relations [8,193,278] reduction18444.output := by lin_cert using reduction18444.terms
def image18445 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18445 : InImage map_39_244 image18445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18445 : Bundle := named_bundle% "RealMapCertificates/relations/basis18445.json"
theorem reductionProof18445 : EqualModuloRelations reduction18445.relations reduction18445.input reduction18445.output := by lin_cert using reduction18445.terms
theorem substitutionProof18445 : IsMapEvaluation generatorImages reduction18445.relations [8,13,13,864] reduction18445.output := by lin_cert using reduction18445.terms
def image18446 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18446 : InImage map_39_244 image18446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18446 : Bundle := named_bundle% "RealMapCertificates/relations/basis18446.json"
theorem reductionProof18446 : EqualModuloRelations reduction18446.relations reduction18446.input reduction18446.output := by lin_cert using reduction18446.terms
theorem substitutionProof18446 : IsMapEvaluation generatorImages reduction18446.relations [0,0,0,0,1992] reduction18446.output := by lin_cert using reduction18446.terms
def image18447 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18447 : InImage map_39_244 image18447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18447 : Bundle := named_bundle% "RealMapCertificates/relations/basis18447.json"
theorem reductionProof18447 : EqualModuloRelations reduction18447.relations reduction18447.input reduction18447.output := by lin_cert using reduction18447.terms
theorem substitutionProof18447 : IsMapEvaluation generatorImages reduction18447.relations [0,0,0,0,0,0,1927] reduction18447.output := by lin_cert using reduction18447.terms
def map_39_245 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image18699 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18699 : InImage map_39_245 image18699 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18699 : Bundle := named_bundle% "RealMapCertificates/relations/basis18699.json"
theorem reductionProof18699 : EqualModuloRelations reduction18699.relations reduction18699.input reduction18699.output := by lin_cert using reduction18699.terms
theorem substitutionProof18699 : IsMapEvaluation generatorImages reduction18699.relations [2162] reduction18699.output := by lin_cert using reduction18699.terms
def image18700 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18700 : InImage map_39_245 image18700 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18700 : Bundle := named_bundle% "RealMapCertificates/relations/basis18700.json"
theorem reductionProof18700 : EqualModuloRelations reduction18700.relations reduction18700.input reduction18700.output := by lin_cert using reduction18700.terms
theorem substitutionProof18700 : IsMapEvaluation generatorImages reduction18700.relations [8,8,64,518] reduction18700.output := by lin_cert using reduction18700.terms
def image18701 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18701 : InImage map_39_245 image18701 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18701 : Bundle := named_bundle% "RealMapCertificates/relations/basis18701.json"
theorem reductionProof18701 : EqualModuloRelations reduction18701.relations reduction18701.input reduction18701.output := by lin_cert using reduction18701.terms
theorem substitutionProof18701 : IsMapEvaluation generatorImages reduction18701.relations [8,8,13,13,23,292] reduction18701.output := by lin_cert using reduction18701.terms
def image18702 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18702 : InImage map_39_245 image18702 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18702 : Bundle := named_bundle% "RealMapCertificates/relations/basis18702.json"
theorem reductionProof18702 : EqualModuloRelations reduction18702.relations reduction18702.input reduction18702.output := by lin_cert using reduction18702.terms
theorem substitutionProof18702 : IsMapEvaluation generatorImages reduction18702.relations [8,8,8,17,655] reduction18702.output := by lin_cert using reduction18702.terms
def image18703 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18703 : InImage map_39_245 image18703 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18703 : Bundle := named_bundle% "RealMapCertificates/relations/basis18703.json"
theorem reductionProof18703 : EqualModuloRelations reduction18703.relations reduction18703.input reduction18703.output := by lin_cert using reduction18703.terms
theorem substitutionProof18703 : IsMapEvaluation generatorImages reduction18703.relations [8,8,8,8,8,8,423] reduction18703.output := by lin_cert using reduction18703.terms
def image18704 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation18704 : InImage map_39_245 image18704 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18704 : Bundle := named_bundle% "RealMapCertificates/relations/basis18704.json"
theorem reductionProof18704 : EqualModuloRelations reduction18704.relations reduction18704.input reduction18704.output := by lin_cert using reduction18704.terms
theorem substitutionProof18704 : IsMapEvaluation generatorImages reduction18704.relations [0,0,0,0,0,1994] reduction18704.output := by lin_cert using reduction18704.terms
def map_39_246 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image18993 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18993 : InImage map_39_246 image18993 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18993 : Bundle := named_bundle% "RealMapCertificates/relations/basis18993.json"
theorem reductionProof18993 : EqualModuloRelations reduction18993.relations reduction18993.input reduction18993.output := by lin_cert using reduction18993.terms
theorem substitutionProof18993 : IsMapEvaluation generatorImages reduction18993.relations [9,13,13,13,13,13,23,80] reduction18993.output := by lin_cert using reduction18993.terms
def image18994 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18994 : InImage map_39_246 image18994 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18994 : Bundle := named_bundle% "RealMapCertificates/relations/basis18994.json"
theorem reductionProof18994 : EqualModuloRelations reduction18994.relations reduction18994.input reduction18994.output := by lin_cert using reduction18994.terms
theorem substitutionProof18994 : IsMapEvaluation generatorImages reduction18994.relations [8,8,1366] reduction18994.output := by lin_cert using reduction18994.terms
def image18995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18995 : InImage map_39_246 image18995 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18995 : Bundle := named_bundle% "RealMapCertificates/relations/basis18995.json"
theorem reductionProof18995 : EqualModuloRelations reduction18995.relations reduction18995.input reduction18995.output := by lin_cert using reduction18995.terms
theorem substitutionProof18995 : IsMapEvaluation generatorImages reduction18995.relations [8,8,8,8,813] reduction18995.output := by lin_cert using reduction18995.terms
def image18996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18996 : InImage map_39_246 image18996 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18996 : Bundle := named_bundle% "RealMapCertificates/relations/basis18996.json"
theorem reductionProof18996 : EqualModuloRelations reduction18996.relations reduction18996.input reduction18996.output := by lin_cert using reduction18996.terms
theorem substitutionProof18996 : IsMapEvaluation generatorImages reduction18996.relations [8,8,8,8,13,13,13,188] reduction18996.output := by lin_cert using reduction18996.terms
def image18997 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18997 : InImage map_39_246 image18997 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18997 : Bundle := named_bundle% "RealMapCertificates/relations/basis18997.json"
theorem reductionProof18997 : EqualModuloRelations reduction18997.relations reduction18997.input reduction18997.output := by lin_cert using reduction18997.terms
theorem substitutionProof18997 : IsMapEvaluation generatorImages reduction18997.relations [0,64,64,260] reduction18997.output := by lin_cert using reduction18997.terms
def map_39_247 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19242 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19242 : InImage map_39_247 image19242 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19242 : Bundle := named_bundle% "RealMapCertificates/relations/basis19242.json"
theorem reductionProof19242 : EqualModuloRelations reduction19242.relations reduction19242.input reduction19242.output := by lin_cert using reduction19242.terms
theorem substitutionProof19242 : IsMapEvaluation generatorImages reduction19242.relations [64,64,274] reduction19242.output := by lin_cert using reduction19242.terms
def image19243 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19243 : InImage map_39_247 image19243 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19243 : Bundle := named_bundle% "RealMapCertificates/relations/basis19243.json"
theorem reductionProof19243 : EqualModuloRelations reduction19243.relations reduction19243.input reduction19243.output := by lin_cert using reduction19243.terms
theorem substitutionProof19243 : IsMapEvaluation generatorImages reduction19243.relations [9,13,13,864] reduction19243.output := by lin_cert using reduction19243.terms
def image19244 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19244 : InImage map_39_247 image19244 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19244 : Bundle := named_bundle% "RealMapCertificates/relations/basis19244.json"
theorem reductionProof19244 : EqualModuloRelations reduction19244.relations reduction19244.input reduction19244.output := by lin_cert using reduction19244.terms
theorem substitutionProof19244 : IsMapEvaluation generatorImages reduction19244.relations [8,64,715] reduction19244.output := by lin_cert using reduction19244.terms
def image19245 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19245 : InImage map_39_247 image19245 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19245 : Bundle := named_bundle% "RealMapCertificates/relations/basis19245.json"
theorem reductionProof19245 : EqualModuloRelations reduction19245.relations reduction19245.input reduction19245.output := by lin_cert using reduction19245.terms
theorem substitutionProof19245 : IsMapEvaluation generatorImages reduction19245.relations [8,8,1384] reduction19245.output := by lin_cert using reduction19245.terms
def image19246 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19246 : InImage map_39_247 image19246 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19246 : Bundle := named_bundle% "RealMapCertificates/relations/basis19246.json"
theorem reductionProof19246 : EqualModuloRelations reduction19246.relations reduction19246.input reduction19246.output := by lin_cert using reduction19246.terms
theorem substitutionProof19246 : IsMapEvaluation generatorImages reduction19246.relations [1,64,64,260] reduction19246.output := by lin_cert using reduction19246.terms
def image19247 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19247 : InImage map_39_247 image19247 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19247 : Bundle := named_bundle% "RealMapCertificates/relations/basis19247.json"
theorem reductionProof19247 : EqualModuloRelations reduction19247.relations reduction19247.input reduction19247.output := by lin_cert using reduction19247.terms
theorem substitutionProof19247 : IsMapEvaluation generatorImages reduction19247.relations [0,2196] reduction19247.output := by lin_cert using reduction19247.terms
def image19248 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19248 : InImage map_39_247 image19248 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19248 : Bundle := named_bundle% "RealMapCertificates/relations/basis19248.json"
theorem reductionProof19248 : EqualModuloRelations reduction19248.relations reduction19248.input reduction19248.output := by lin_cert using reduction19248.terms
theorem substitutionProof19248 : IsMapEvaluation generatorImages reduction19248.relations [0,0,64,897] reduction19248.output := by lin_cert using reduction19248.terms
def map_39_248 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image19500 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19500 : InImage map_39_248 image19500 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19500 : Bundle := named_bundle% "RealMapCertificates/relations/basis19500.json"
theorem reductionProof19500 : EqualModuloRelations reduction19500.relations reduction19500.input reduction19500.output := by lin_cert using reduction19500.terms
theorem substitutionProof19500 : IsMapEvaluation generatorImages reduction19500.relations [13,13,13,13,13,23,150] reduction19500.output := by lin_cert using reduction19500.terms
def image19501 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19501 : InImage map_39_248 image19501 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19501 : Bundle := named_bundle% "RealMapCertificates/relations/basis19501.json"
theorem reductionProof19501 : EqualModuloRelations reduction19501.relations reduction19501.input reduction19501.output := by lin_cert using reduction19501.terms
theorem substitutionProof19501 : IsMapEvaluation generatorImages reduction19501.relations [8,9,13,13,23,292] reduction19501.output := by lin_cert using reduction19501.terms
def image19502 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19502 : InImage map_39_248 image19502 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19502 : Bundle := named_bundle% "RealMapCertificates/relations/basis19502.json"
theorem reductionProof19502 : EqualModuloRelations reduction19502.relations reduction19502.input reduction19502.output := by lin_cert using reduction19502.terms
theorem substitutionProof19502 : IsMapEvaluation generatorImages reduction19502.relations [8,8,8,138,209] reduction19502.output := by lin_cert using reduction19502.terms
def image19503 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19503 : InImage map_39_248 image19503 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19503 : Bundle := named_bundle% "RealMapCertificates/relations/basis19503.json"
theorem reductionProof19503 : EqualModuloRelations reduction19503.relations reduction19503.input reduction19503.output := by lin_cert using reduction19503.terms
theorem substitutionProof19503 : IsMapEvaluation generatorImages reduction19503.relations [8,8,8,8,832] reduction19503.output := by lin_cert using reduction19503.terms
def image19504 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19504 : InImage map_39_248 image19504 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19504 : Bundle := named_bundle% "RealMapCertificates/relations/basis19504.json"
theorem reductionProof19504 : EqualModuloRelations reduction19504.relations reduction19504.input reduction19504.output := by lin_cert using reduction19504.terms
theorem substitutionProof19504 : IsMapEvaluation generatorImages reduction19504.relations [8,8,8,8,8,9,423] reduction19504.output := by lin_cert using reduction19504.terms
def image19505 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19505 : InImage map_39_248 image19505 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19505 : Bundle := named_bundle% "RealMapCertificates/relations/basis19505.json"
theorem reductionProof19505 : EqualModuloRelations reduction19505.relations reduction19505.input reduction19505.output := by lin_cert using reduction19505.terms
theorem substitutionProof19505 : IsMapEvaluation generatorImages reduction19505.relations [0,2239] reduction19505.output := by lin_cert using reduction19505.terms
def image19506 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19506 : InImage map_39_248 image19506 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19506 : Bundle := named_bundle% "RealMapCertificates/relations/basis19506.json"
theorem reductionProof19506 : EqualModuloRelations reduction19506.relations reduction19506.input reduction19506.output := by lin_cert using reduction19506.terms
theorem substitutionProof19506 : IsMapEvaluation generatorImages reduction19506.relations [0,0,64,919] reduction19506.output := by lin_cert using reduction19506.terms
def image19507 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation19507 : InImage map_39_248 image19507 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19507 : Bundle := named_bundle% "RealMapCertificates/relations/basis19507.json"
theorem reductionProof19507 : EqualModuloRelations reduction19507.relations reduction19507.input reduction19507.output := by lin_cert using reduction19507.terms
theorem substitutionProof19507 : IsMapEvaluation generatorImages reduction19507.relations [0,0,0,0,0,2095] reduction19507.output := by lin_cert using reduction19507.terms
end RealMapCertificates
