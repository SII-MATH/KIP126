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
  | 67 => []
  | 72 => []
  | 80 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 188 => []
  | 209 => []
  | 210 => []
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 246 => []
  | 250 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 255 => []
  | 256 => [[3,4,4,4,4,4,4,4,4,4]]
  | 260 => []
  | 280 => []
  | 292 => []
  | 293 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 299 => []
  | 301 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 327 => []
  | 347 => []
  | 349 => []
  | 383 => []
  | 423 => []
  | 491 => []
  | 537 => []
  | 638 => []
  | 668 => []
  | 705 => []
  | 715 => [[7,7,7,12,12]]
  | 760 => []
  | 864 => [[7,7,10,12,12]]
  | 874 => []
  | 898 => []
  | 901 => []
  | 956 => []
  | 963 => []
  | 976 => []
  | 1290 => []
  | 1366 => [[7,9,12,12,12]]
  | 1440 => []
  | 1503 => []
  | 1901 => []
  | 1926 => []
  | 1968 => []
  | 1992 => []
  | 1993 => []
  | 2038 => []
  | 2059 => []
  | 2095 => []
  | 2121 => []
  | 2125 => []
  | 2301 => []
  | 2307 => []
  | 2309 => []
  | 2332 => [[0,0,9,12,12,12,12]]
  | 2334 => []
  | 2340 => []
  | 2342 => []
  | 2378 => []
  | 2381 => []
  | 2403 => []
  | 2404 => []
  | 2437 => []
  | 2438 => []
  | 2488 => []
  | 2542 => []
  | 2544 => []
  | 2546 => []
  | 2582 => []
  | 2677 => []
  | 2862 => []
  | _ => []
def map_39_249 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19809 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19809 : InImage map_39_249 image19809 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19809 : Bundle := named_bundle% "RealMapCertificates/relations/basis19809.json"
theorem reductionProof19809 : EqualModuloRelations reduction19809.relations reduction19809.input reduction19809.output := by lin_cert using reduction19809.terms
theorem substitutionProof19809 : IsMapEvaluation generatorImages reduction19809.relations [13,13,13,13,13,13,23,80] reduction19809.output := by lin_cert using reduction19809.terms
def image19810 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19810 : InImage map_39_249 image19810 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19810 : Bundle := named_bundle% "RealMapCertificates/relations/basis19810.json"
theorem reductionProof19810 : EqualModuloRelations reduction19810.relations reduction19810.input reduction19810.output := by lin_cert using reduction19810.terms
theorem substitutionProof19810 : IsMapEvaluation generatorImages reduction19810.relations [8,9,1366] reduction19810.output := by lin_cert using reduction19810.terms
def image19811 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19811 : InImage map_39_249 image19811 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19811 : Bundle := named_bundle% "RealMapCertificates/relations/basis19811.json"
theorem reductionProof19811 : EqualModuloRelations reduction19811.relations reduction19811.input reduction19811.output := by lin_cert using reduction19811.terms
theorem substitutionProof19811 : IsMapEvaluation generatorImages reduction19811.relations [8,8,8,9,13,13,13,188] reduction19811.output := by lin_cert using reduction19811.terms
def image19812 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19812 : InImage map_39_249 image19812 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19812 : Bundle := named_bundle% "RealMapCertificates/relations/basis19812.json"
theorem reductionProof19812 : EqualModuloRelations reduction19812.relations reduction19812.input reduction19812.output := by lin_cert using reduction19812.terms
theorem substitutionProof19812 : IsMapEvaluation generatorImages reduction19812.relations [8,8,8,8,8,638] reduction19812.output := by lin_cert using reduction19812.terms
def image19813 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19813 : InImage map_39_249 image19813 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19813 : Bundle := named_bundle% "RealMapCertificates/relations/basis19813.json"
theorem reductionProof19813 : EqualModuloRelations reduction19813.relations reduction19813.input reduction19813.output := by lin_cert using reduction19813.terms
theorem substitutionProof19813 : IsMapEvaluation generatorImages reduction19813.relations [0,0,0,0,64,898] reduction19813.output := by lin_cert using reduction19813.terms
def image19814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19814 : InImage map_39_249 image19814 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19814 : Bundle := named_bundle% "RealMapCertificates/relations/basis19814.json"
theorem reductionProof19814 : EqualModuloRelations reduction19814.relations reduction19814.input reduction19814.output := by lin_cert using reduction19814.terms
theorem substitutionProof19814 : IsMapEvaluation generatorImages reduction19814.relations [0,0,0,0,0,2121] reduction19814.output := by lin_cert using reduction19814.terms
def map_39_250 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20026 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20026 : InImage map_39_250 image20026 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20026 : Bundle := named_bundle% "RealMapCertificates/relations/basis20026.json"
theorem reductionProof20026 : EqualModuloRelations reduction20026.relations reduction20026.input reduction20026.output := by lin_cert using reduction20026.terms
theorem substitutionProof20026 : IsMapEvaluation generatorImages reduction20026.relations [13,13,13,864] reduction20026.output := by lin_cert using reduction20026.terms
def image20027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20027 : InImage map_39_250 image20027 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20027 : Bundle := named_bundle% "RealMapCertificates/relations/basis20027.json"
theorem reductionProof20027 : EqualModuloRelations reduction20027.relations reduction20027.input reduction20027.output := by lin_cert using reduction20027.terms
theorem substitutionProof20027 : IsMapEvaluation generatorImages reduction20027.relations [8,72,715] reduction20027.output := by lin_cert using reduction20027.terms
def image20028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20028 : InImage map_39_250 image20028 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20028 : Bundle := named_bundle% "RealMapCertificates/relations/basis20028.json"
theorem reductionProof20028 : EqualModuloRelations reduction20028.relations reduction20028.input reduction20028.output := by lin_cert using reduction20028.terms
theorem substitutionProof20028 : IsMapEvaluation generatorImages reduction20028.relations [8,8,1440] reduction20028.output := by lin_cert using reduction20028.terms
def image20029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20029 : InImage map_39_250 image20029 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20029 : Bundle := named_bundle% "RealMapCertificates/relations/basis20029.json"
theorem reductionProof20029 : EqualModuloRelations reduction20029.relations reduction20029.input reduction20029.output := by lin_cert using reduction20029.terms
theorem substitutionProof20029 : IsMapEvaluation generatorImages reduction20029.relations [0,2301] reduction20029.output := by lin_cert using reduction20029.terms
def image20030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20030 : InImage map_39_250 image20030 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20030 : Bundle := named_bundle% "RealMapCertificates/relations/basis20030.json"
theorem reductionProof20030 : EqualModuloRelations reduction20030.relations reduction20030.input reduction20030.output := by lin_cert using reduction20030.terms
theorem substitutionProof20030 : IsMapEvaluation generatorImages reduction20030.relations [0,64,956] reduction20030.output := by lin_cert using reduction20030.terms
def image20031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20031 : InImage map_39_250 image20031 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20031 : Bundle := named_bundle% "RealMapCertificates/relations/basis20031.json"
theorem reductionProof20031 : EqualModuloRelations reduction20031.relations reduction20031.input reduction20031.output := by lin_cert using reduction20031.terms
theorem substitutionProof20031 : IsMapEvaluation generatorImages reduction20031.relations [0,0,0,0,0,0,2125] reduction20031.output := by lin_cert using reduction20031.terms
def map_39_251 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20312 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20312 : InImage map_39_251 image20312 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20312 : Bundle := named_bundle% "RealMapCertificates/relations/basis20312.json"
theorem reductionProof20312 : EqualModuloRelations reduction20312.relations reduction20312.input reduction20312.output := by lin_cert using reduction20312.terms
theorem substitutionProof20312 : IsMapEvaluation generatorImages reduction20312.relations [2378] reduction20312.output := by lin_cert using reduction20312.terms
def image20313 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20313 : InImage map_39_251 image20313 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20313 : Bundle := named_bundle% "RealMapCertificates/relations/basis20313.json"
theorem reductionProof20313 : EqualModuloRelations reduction20313.relations reduction20313.input reduction20313.output := by lin_cert using reduction20313.terms
theorem substitutionProof20313 : IsMapEvaluation generatorImages reduction20313.relations [8,13,13,13,23,292] reduction20313.output := by lin_cert using reduction20313.terms
def image20314 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20314 : InImage map_39_251 image20314 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20314 : Bundle := named_bundle% "RealMapCertificates/relations/basis20314.json"
theorem reductionProof20314 : EqualModuloRelations reduction20314.relations reduction20314.input reduction20314.output := by lin_cert using reduction20314.terms
theorem substitutionProof20314 : IsMapEvaluation generatorImages reduction20314.relations [8,8,8,64,383] reduction20314.output := by lin_cert using reduction20314.terms
def image20315 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20315 : InImage map_39_251 image20315 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20315 : Bundle := named_bundle% "RealMapCertificates/relations/basis20315.json"
theorem reductionProof20315 : EqualModuloRelations reduction20315.relations reduction20315.input reduction20315.output := by lin_cert using reduction20315.terms
theorem substitutionProof20315 : IsMapEvaluation generatorImages reduction20315.relations [8,8,8,8,874] reduction20315.output := by lin_cert using reduction20315.terms
def image20316 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20316 : InImage map_39_251 image20316 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20316 : Bundle := named_bundle% "RealMapCertificates/relations/basis20316.json"
theorem reductionProof20316 : EqualModuloRelations reduction20316.relations reduction20316.input reduction20316.output := by lin_cert using reduction20316.terms
theorem substitutionProof20316 : IsMapEvaluation generatorImages reduction20316.relations [8,8,8,8,8,13,423] reduction20316.output := by lin_cert using reduction20316.terms
def image20317 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20317 : InImage map_39_251 image20317 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20317 : Bundle := named_bundle% "RealMapCertificates/relations/basis20317.json"
theorem reductionProof20317 : EqualModuloRelations reduction20317.relations reduction20317.input reduction20317.output := by lin_cert using reduction20317.terms
theorem substitutionProof20317 : IsMapEvaluation generatorImages reduction20317.relations [0,2332] reduction20317.output := by lin_cert using reduction20317.terms
def map_39_252 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image20611 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20611 : InImage map_39_252 image20611 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20611 : Bundle := named_bundle% "RealMapCertificates/relations/basis20611.json"
theorem reductionProof20611 : EqualModuloRelations reduction20611.relations reduction20611.input reduction20611.output := by lin_cert using reduction20611.terms
theorem substitutionProof20611 : IsMapEvaluation generatorImages reduction20611.relations [64,64,299] reduction20611.output := by lin_cert using reduction20611.terms
def image20612 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20612 : InImage map_39_252 image20612 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20612 : Bundle := named_bundle% "RealMapCertificates/relations/basis20612.json"
theorem reductionProof20612 : EqualModuloRelations reduction20612.relations reduction20612.input reduction20612.output := by lin_cert using reduction20612.terms
theorem substitutionProof20612 : IsMapEvaluation generatorImages reduction20612.relations [8,13,1366] reduction20612.output := by lin_cert using reduction20612.terms
def image20613 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20613 : InImage map_39_252 image20613 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20613 : Bundle := named_bundle% "RealMapCertificates/relations/basis20613.json"
theorem reductionProof20613 : EqualModuloRelations reduction20613.relations reduction20613.input reduction20613.output := by lin_cert using reduction20613.terms
theorem substitutionProof20613 : IsMapEvaluation generatorImages reduction20613.relations [8,8,8,13,13,13,13,188] reduction20613.output := by lin_cert using reduction20613.terms
def image20614 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20614 : InImage map_39_252 image20614 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20614 : Bundle := named_bundle% "RealMapCertificates/relations/basis20614.json"
theorem reductionProof20614 : EqualModuloRelations reduction20614.relations reduction20614.input reduction20614.output := by lin_cert using reduction20614.terms
theorem substitutionProof20614 : IsMapEvaluation generatorImages reduction20614.relations [8,8,8,8,8,668] reduction20614.output := by lin_cert using reduction20614.terms
def map_39_253 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20852 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20852 : InImage map_39_253 image20852 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20852 : Bundle := named_bundle% "RealMapCertificates/relations/basis20852.json"
theorem reductionProof20852 : EqualModuloRelations reduction20852.relations reduction20852.input reduction20852.output := by lin_cert using reduction20852.terms
theorem substitutionProof20852 : IsMapEvaluation generatorImages reduction20852.relations [2437] reduction20852.output := by lin_cert using reduction20852.terms
def image20853 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20853 : InImage map_39_253 image20853 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20853 : Bundle := named_bundle% "RealMapCertificates/relations/basis20853.json"
theorem reductionProof20853 : EqualModuloRelations reduction20853.relations reduction20853.input reduction20853.output := by lin_cert using reduction20853.terms
theorem substitutionProof20853 : IsMapEvaluation generatorImages reduction20853.relations [8,8,1503] reduction20853.output := by lin_cert using reduction20853.terms
def image20854 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20854 : InImage map_39_253 image20854 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20854 : Bundle := named_bundle% "RealMapCertificates/relations/basis20854.json"
theorem reductionProof20854 : EqualModuloRelations reduction20854.relations reduction20854.input reduction20854.output := by lin_cert using reduction20854.terms
theorem substitutionProof20854 : IsMapEvaluation generatorImages reduction20854.relations [8,8,149,293] reduction20854.output := by lin_cert using reduction20854.terms
def image20855 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20855 : InImage map_39_253 image20855 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20855 : Bundle := named_bundle% "RealMapCertificates/relations/basis20855.json"
theorem reductionProof20855 : EqualModuloRelations reduction20855.relations reduction20855.input reduction20855.output := by lin_cert using reduction20855.terms
theorem substitutionProof20855 : IsMapEvaluation generatorImages reduction20855.relations [0,2403] reduction20855.output := by lin_cert using reduction20855.terms
def image20856 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20856 : InImage map_39_253 image20856 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20856 : Bundle := named_bundle% "RealMapCertificates/relations/basis20856.json"
theorem reductionProof20856 : EqualModuloRelations reduction20856.relations reduction20856.input reduction20856.output := by lin_cert using reduction20856.terms
theorem substitutionProof20856 : IsMapEvaluation generatorImages reduction20856.relations [0,0,0,64,963] reduction20856.output := by lin_cert using reduction20856.terms
def map_39_254 : Matrix 1 9 := fun i j => ([false,false,false,false,false,false,false,false,false] : List Bool)[i.val*9+j.val]!
def image21138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21138 : InImage map_39_254 image21138 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21138 : Bundle := named_bundle% "RealMapCertificates/relations/basis21138.json"
theorem reductionProof21138 : EqualModuloRelations reduction21138.relations reduction21138.input reduction21138.output := by lin_cert using reduction21138.terms
theorem substitutionProof21138 : IsMapEvaluation generatorImages reduction21138.relations [2488] reduction21138.output := by lin_cert using reduction21138.terms
def image21139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21139 : InImage map_39_254 image21139 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21139 : Bundle := named_bundle% "RealMapCertificates/relations/basis21139.json"
theorem reductionProof21139 : EqualModuloRelations reduction21139.relations reduction21139.input reduction21139.output := by lin_cert using reduction21139.terms
theorem substitutionProof21139 : IsMapEvaluation generatorImages reduction21139.relations [9,13,13,13,23,292] reduction21139.output := by lin_cert using reduction21139.terms
def image21140 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21140 : InImage map_39_254 image21140 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21140 : Bundle := named_bundle% "RealMapCertificates/relations/basis21140.json"
theorem reductionProof21140 : EqualModuloRelations reduction21140.relations reduction21140.input reduction21140.output := by lin_cert using reduction21140.terms
theorem substitutionProof21140 : IsMapEvaluation generatorImages reduction21140.relations [8,8,8,16,760] reduction21140.output := by lin_cert using reduction21140.terms
def image21141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21141 : InImage map_39_254 image21141 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21141 : Bundle := named_bundle% "RealMapCertificates/relations/basis21141.json"
theorem reductionProof21141 : EqualModuloRelations reduction21141.relations reduction21141.input reduction21141.output := by lin_cert using reduction21141.terms
theorem substitutionProof21141 : IsMapEvaluation generatorImages reduction21141.relations [8,8,8,8,901] reduction21141.output := by lin_cert using reduction21141.terms
def image21142 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21142 : InImage map_39_254 image21142 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21142 : Bundle := named_bundle% "RealMapCertificates/relations/basis21142.json"
theorem reductionProof21142 : EqualModuloRelations reduction21142.relations reduction21142.input reduction21142.output := by lin_cert using reduction21142.terms
theorem substitutionProof21142 : IsMapEvaluation generatorImages reduction21142.relations [8,8,8,8,9,13,423] reduction21142.output := by lin_cert using reduction21142.terms
def image21143 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21143 : InImage map_39_254 image21143 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21143 : Bundle := named_bundle% "RealMapCertificates/relations/basis21143.json"
theorem reductionProof21143 : EqualModuloRelations reduction21143.relations reduction21143.input reduction21143.output := by lin_cert using reduction21143.terms
theorem substitutionProof21143 : IsMapEvaluation generatorImages reduction21143.relations [0,2438] reduction21143.output := by lin_cert using reduction21143.terms
def image21144 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21144 : InImage map_39_254 image21144 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21144 : Bundle := named_bundle% "RealMapCertificates/relations/basis21144.json"
theorem reductionProof21144 : EqualModuloRelations reduction21144.relations reduction21144.input reduction21144.output := by lin_cert using reduction21144.terms
theorem substitutionProof21144 : IsMapEvaluation generatorImages reduction21144.relations [0,0,2404] reduction21144.output := by lin_cert using reduction21144.terms
def image21145 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21145 : InImage map_39_254 image21145 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21145 : Bundle := named_bundle% "RealMapCertificates/relations/basis21145.json"
theorem reductionProof21145 : EqualModuloRelations reduction21145.relations reduction21145.input reduction21145.output := by lin_cert using reduction21145.terms
theorem substitutionProof21145 : IsMapEvaluation generatorImages reduction21145.relations [0,0,64,64,301] reduction21145.output := by lin_cert using reduction21145.terms
def image21146 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21146 : InImage map_39_254 image21146 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21146 : Bundle := named_bundle% "RealMapCertificates/relations/basis21146.json"
theorem reductionProof21146 : EqualModuloRelations reduction21146.relations reduction21146.input reduction21146.output := by lin_cert using reduction21146.terms
theorem substitutionProof21146 : IsMapEvaluation generatorImages reduction21146.relations [0,0,0,0,2334] reduction21146.output := by lin_cert using reduction21146.terms
def map_39_255 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21487 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21487 : InImage map_39_255 image21487 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21487 : Bundle := named_bundle% "RealMapCertificates/relations/basis21487.json"
theorem reductionProof21487 : EqualModuloRelations reduction21487.relations reduction21487.input reduction21487.output := by lin_cert using reduction21487.terms
theorem substitutionProof21487 : IsMapEvaluation generatorImages reduction21487.relations [64,64,327] reduction21487.output := by lin_cert using reduction21487.terms
def image21488 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21488 : InImage map_39_255 image21488 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21488 : Bundle := named_bundle% "RealMapCertificates/relations/basis21488.json"
theorem reductionProof21488 : EqualModuloRelations reduction21488.relations reduction21488.input reduction21488.output := by lin_cert using reduction21488.terms
theorem substitutionProof21488 : IsMapEvaluation generatorImages reduction21488.relations [9,13,1366] reduction21488.output := by lin_cert using reduction21488.terms
def image21489 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21489 : InImage map_39_255 image21489 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21489 : Bundle := named_bundle% "RealMapCertificates/relations/basis21489.json"
theorem reductionProof21489 : EqualModuloRelations reduction21489.relations reduction21489.input reduction21489.output := by lin_cert using reduction21489.terms
theorem substitutionProof21489 : IsMapEvaluation generatorImages reduction21489.relations [8,8,9,13,13,13,13,188] reduction21489.output := by lin_cert using reduction21489.terms
def image21490 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21490 : InImage map_39_255 image21490 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21490 : Bundle := named_bundle% "RealMapCertificates/relations/basis21490.json"
theorem reductionProof21490 : EqualModuloRelations reduction21490.relations reduction21490.input reduction21490.output := by lin_cert using reduction21490.terms
theorem substitutionProof21490 : IsMapEvaluation generatorImages reduction21490.relations [8,8,8,8,8,705] reduction21490.output := by lin_cert using reduction21490.terms
def image21491 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21491 : InImage map_39_255 image21491 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21491 : Bundle := named_bundle% "RealMapCertificates/relations/basis21491.json"
theorem reductionProof21491 : EqualModuloRelations reduction21491.relations reduction21491.input reduction21491.output := by lin_cert using reduction21491.terms
theorem substitutionProof21491 : IsMapEvaluation generatorImages reduction21491.relations [0,0,0,0,64,976] reduction21491.output := by lin_cert using reduction21491.terms
def map_39_256 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image21748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21748 : InImage map_39_256 image21748 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21748 : Bundle := named_bundle% "RealMapCertificates/relations/basis21748.json"
theorem reductionProof21748 : EqualModuloRelations reduction21748.relations reduction21748.input reduction21748.output := by lin_cert using reduction21748.terms
theorem substitutionProof21748 : IsMapEvaluation generatorImages reduction21748.relations [13,13,13,23,537] reduction21748.output := by lin_cert using reduction21748.terms
def image21749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21749 : InImage map_39_256 image21749 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21749 : Bundle := named_bundle% "RealMapCertificates/relations/basis21749.json"
theorem reductionProof21749 : EqualModuloRelations reduction21749.relations reduction21749.input reduction21749.output := by lin_cert using reduction21749.terms
theorem substitutionProof21749 : IsMapEvaluation generatorImages reduction21749.relations [13,13,13,13,13,13,13,13,67] reduction21749.output := by lin_cert using reduction21749.terms
def image21750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21750 : InImage map_39_256 image21750 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21750 : Bundle := named_bundle% "RealMapCertificates/relations/basis21750.json"
theorem reductionProof21750 : EqualModuloRelations reduction21750.relations reduction21750.input reduction21750.output := by lin_cert using reduction21750.terms
theorem substitutionProof21750 : IsMapEvaluation generatorImages reduction21750.relations [8,1926] reduction21750.output := by lin_cert using reduction21750.terms
def image21751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21751 : InImage map_39_256 image21751 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21751 : Bundle := named_bundle% "RealMapCertificates/relations/basis21751.json"
theorem reductionProof21751 : EqualModuloRelations reduction21751.relations reduction21751.input reduction21751.output := by lin_cert using reduction21751.terms
theorem substitutionProof21751 : IsMapEvaluation generatorImages reduction21751.relations [8,9,1503] reduction21751.output := by lin_cert using reduction21751.terms
def image21752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21752 : InImage map_39_256 image21752 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21752 : Bundle := named_bundle% "RealMapCertificates/relations/basis21752.json"
theorem reductionProof21752 : EqualModuloRelations reduction21752.relations reduction21752.input reduction21752.output := by lin_cert using reduction21752.terms
theorem substitutionProof21752 : IsMapEvaluation generatorImages reduction21752.relations [8,8,160,293] reduction21752.output := by lin_cert using reduction21752.terms
def image21753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21753 : InImage map_39_256 image21753 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21753 : Bundle := named_bundle% "RealMapCertificates/relations/basis21753.json"
theorem reductionProof21753 : EqualModuloRelations reduction21753.relations reduction21753.input reduction21753.output := by lin_cert using reduction21753.terms
theorem substitutionProof21753 : IsMapEvaluation generatorImages reduction21753.relations [0,8,1901] reduction21753.output := by lin_cert using reduction21753.terms
def image21754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation21754 : InImage map_39_256 image21754 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21754 : Bundle := named_bundle% "RealMapCertificates/relations/basis21754.json"
theorem reductionProof21754 : EqualModuloRelations reduction21754.relations reduction21754.input reduction21754.output := by lin_cert using reduction21754.terms
theorem substitutionProof21754 : IsMapEvaluation generatorImages reduction21754.relations [0,0,0,0,0,0,260,349] reduction21754.output := by lin_cert using reduction21754.terms
def map_39_257 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image22087 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22087 : InImage map_39_257 image22087 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction22087 : Bundle := named_bundle% "RealMapCertificates/relations/basis22087.json"
theorem reductionProof22087 : EqualModuloRelations reduction22087.relations reduction22087.input reduction22087.output := by lin_cert using reduction22087.terms
theorem substitutionProof22087 : IsMapEvaluation generatorImages reduction22087.relations [13,13,13,13,23,292] reduction22087.output := by lin_cert using reduction22087.terms
def image22088 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22088 : InImage map_39_257 image22088 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction22088 : Bundle := named_bundle% "RealMapCertificates/relations/basis22088.json"
theorem reductionProof22088 : EqualModuloRelations reduction22088.relations reduction22088.input reduction22088.output := by lin_cert using reduction22088.terms
theorem substitutionProof22088 : IsMapEvaluation generatorImages reduction22088.relations [8,1968] reduction22088.output := by lin_cert using reduction22088.terms
def image22089 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22089 : InImage map_39_257 image22089 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction22089 : Bundle := named_bundle% "RealMapCertificates/relations/basis22089.json"
theorem reductionProof22089 : EqualModuloRelations reduction22089.relations reduction22089.input reduction22089.output := by lin_cert using reduction22089.terms
theorem substitutionProof22089 : IsMapEvaluation generatorImages reduction22089.relations [8,8,8,9,901] reduction22089.output := by lin_cert using reduction22089.terms
def image22090 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22090 : InImage map_39_257 image22090 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction22090 : Bundle := named_bundle% "RealMapCertificates/relations/basis22090.json"
theorem reductionProof22090 : EqualModuloRelations reduction22090.relations reduction22090.input reduction22090.output := by lin_cert using reduction22090.terms
theorem substitutionProof22090 : IsMapEvaluation generatorImages reduction22090.relations [8,8,8,8,64,280] reduction22090.output := by lin_cert using reduction22090.terms
def image22091 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22091 : InImage map_39_257 image22091 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction22091 : Bundle := named_bundle% "RealMapCertificates/relations/basis22091.json"
theorem reductionProof22091 : EqualModuloRelations reduction22091.relations reduction22091.input reduction22091.output := by lin_cert using reduction22091.terms
theorem substitutionProof22091 : IsMapEvaluation generatorImages reduction22091.relations [8,8,8,8,13,13,423] reduction22091.output := by lin_cert using reduction22091.terms
def image22092 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22092 : InImage map_39_257 image22092 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction22092 : Bundle := named_bundle% "RealMapCertificates/relations/basis22092.json"
theorem reductionProof22092 : EqualModuloRelations reduction22092.relations reduction22092.input reduction22092.output := by lin_cert using reduction22092.terms
theorem substitutionProof22092 : IsMapEvaluation generatorImages reduction22092.relations [5,2095] reduction22092.output := by lin_cert using reduction22092.terms
def image22093 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22093 : InImage map_39_257 image22093 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction22093 : Bundle := named_bundle% "RealMapCertificates/relations/basis22093.json"
theorem reductionProof22093 : EqualModuloRelations reduction22093.relations reduction22093.input reduction22093.output := by lin_cert using reduction22093.terms
theorem substitutionProof22093 : IsMapEvaluation generatorImages reduction22093.relations [0,0,2542] reduction22093.output := by lin_cert using reduction22093.terms
def image22094 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22094 : InImage map_39_257 image22094 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction22094 : Bundle := named_bundle% "RealMapCertificates/relations/basis22094.json"
theorem reductionProof22094 : EqualModuloRelations reduction22094.relations reduction22094.input reduction22094.output := by lin_cert using reduction22094.terms
theorem substitutionProof22094 : IsMapEvaluation generatorImages reduction22094.relations [0,0,0,0,0,0,0,0,2307] reduction22094.output := by lin_cert using reduction22094.terms
def map_39_258 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22444 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22444 : InImage map_39_258 image22444 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22444 : Bundle := named_bundle% "RealMapCertificates/relations/basis22444.json"
theorem reductionProof22444 : EqualModuloRelations reduction22444.relations reduction22444.input reduction22444.output := by lin_cert using reduction22444.terms
theorem substitutionProof22444 : IsMapEvaluation generatorImages reduction22444.relations [13,13,1366] reduction22444.output := by lin_cert using reduction22444.terms
def image22445 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22445 : InImage map_39_258 image22445 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22445 : Bundle := named_bundle% "RealMapCertificates/relations/basis22445.json"
theorem reductionProof22445 : EqualModuloRelations reduction22445.relations reduction22445.input reduction22445.output := by lin_cert using reduction22445.terms
theorem substitutionProof22445 : IsMapEvaluation generatorImages reduction22445.relations [8,1992] reduction22445.output := by lin_cert using reduction22445.terms
def image22446 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22446 : InImage map_39_258 image22446 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22446 : Bundle := named_bundle% "RealMapCertificates/relations/basis22446.json"
theorem reductionProof22446 : EqualModuloRelations reduction22446.relations reduction22446.input reduction22446.output := by lin_cert using reduction22446.terms
theorem substitutionProof22446 : IsMapEvaluation generatorImages reduction22446.relations [8,8,13,13,13,13,13,188] reduction22446.output := by lin_cert using reduction22446.terms
def image22447 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22447 : InImage map_39_258 image22447 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22447 : Bundle := named_bundle% "RealMapCertificates/relations/basis22447.json"
theorem reductionProof22447 : EqualModuloRelations reduction22447.relations reduction22447.input reduction22447.output := by lin_cert using reduction22447.terms
theorem substitutionProof22447 : IsMapEvaluation generatorImages reduction22447.relations [8,8,8,8,9,705] reduction22447.output := by lin_cert using reduction22447.terms
def image22448 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22448 : InImage map_39_258 image22448 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22448 : Bundle := named_bundle% "RealMapCertificates/relations/basis22448.json"
theorem reductionProof22448 : EqualModuloRelations reduction22448.relations reduction22448.input reduction22448.output := by lin_cert using reduction22448.terms
theorem substitutionProof22448 : IsMapEvaluation generatorImages reduction22448.relations [0,64,64,347] reduction22448.output := by lin_cert using reduction22448.terms
def image22449 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22449 : InImage map_39_258 image22449 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22449 : Bundle := named_bundle% "RealMapCertificates/relations/basis22449.json"
theorem reductionProof22449 : EqualModuloRelations reduction22449.relations reduction22449.input reduction22449.output := by lin_cert using reduction22449.terms
theorem substitutionProof22449 : IsMapEvaluation generatorImages reduction22449.relations [0,0,0,0,0,0,0,0,2340] reduction22449.output := by lin_cert using reduction22449.terms
def map_39_259 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image22754 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22754 : InImage map_39_259 image22754 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22754 : Bundle := named_bundle% "RealMapCertificates/relations/basis22754.json"
theorem reductionProof22754 : EqualModuloRelations reduction22754.relations reduction22754.input reduction22754.output := by lin_cert using reduction22754.terms
theorem substitutionProof22754 : IsMapEvaluation generatorImages reduction22754.relations [8,2038] reduction22754.output := by lin_cert using reduction22754.terms
def image22755 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22755 : InImage map_39_259 image22755 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22755 : Bundle := named_bundle% "RealMapCertificates/relations/basis22755.json"
theorem reductionProof22755 : EqualModuloRelations reduction22755.relations reduction22755.input reduction22755.output := by lin_cert using reduction22755.terms
theorem substitutionProof22755 : IsMapEvaluation generatorImages reduction22755.relations [8,13,1503] reduction22755.output := by lin_cert using reduction22755.terms
def image22756 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22756 : InImage map_39_259 image22756 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22756 : Bundle := named_bundle% "RealMapCertificates/relations/basis22756.json"
theorem reductionProof22756 : EqualModuloRelations reduction22756.relations reduction22756.input reduction22756.output := by lin_cert using reduction22756.terms
theorem substitutionProof22756 : IsMapEvaluation generatorImages reduction22756.relations [8,8,8,1290] reduction22756.output := by lin_cert using reduction22756.terms
def image22757 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22757 : InImage map_39_259 image22757 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22757 : Bundle := named_bundle% "RealMapCertificates/relations/basis22757.json"
theorem reductionProof22757 : EqualModuloRelations reduction22757.relations reduction22757.input reduction22757.output := by lin_cert using reduction22757.terms
theorem substitutionProof22757 : IsMapEvaluation generatorImages reduction22757.relations [1,64,64,347] reduction22757.output := by lin_cert using reduction22757.terms
def image22758 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22758 : InImage map_39_259 image22758 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22758 : Bundle := named_bundle% "RealMapCertificates/relations/basis22758.json"
theorem reductionProof22758 : EqualModuloRelations reduction22758.relations reduction22758.input reduction22758.output := by lin_cert using reduction22758.terms
theorem substitutionProof22758 : IsMapEvaluation generatorImages reduction22758.relations [0,8,1993] reduction22758.output := by lin_cert using reduction22758.terms
def image22759 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22759 : InImage map_39_259 image22759 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22759 : Bundle := named_bundle% "RealMapCertificates/relations/basis22759.json"
theorem reductionProof22759 : EqualModuloRelations reduction22759.relations reduction22759.input reduction22759.output := by lin_cert using reduction22759.terms
theorem substitutionProof22759 : IsMapEvaluation generatorImages reduction22759.relations [0,0,64,138,209] reduction22759.output := by lin_cert using reduction22759.terms
def image22760 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22760 : InImage map_39_259 image22760 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22760 : Bundle := named_bundle% "RealMapCertificates/relations/basis22760.json"
theorem reductionProof22760 : EqualModuloRelations reduction22760.relations reduction22760.input reduction22760.output := by lin_cert using reduction22760.terms
theorem substitutionProof22760 : IsMapEvaluation generatorImages reduction22760.relations [0,0,0,0,0,0,0,0,0,2342] reduction22760.output := by lin_cert using reduction22760.terms
def map_39_260 : Matrix 1 9 := fun i j => ([false,false,false,false,false,false,false,false,false] : List Bool)[i.val*9+j.val]!
def image23127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23127 : InImage map_39_260 image23127 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction23127 : Bundle := named_bundle% "RealMapCertificates/relations/basis23127.json"
theorem reductionProof23127 : EqualModuloRelations reduction23127.relations reduction23127.input reduction23127.output := by lin_cert using reduction23127.terms
theorem substitutionProof23127 : IsMapEvaluation generatorImages reduction23127.relations [8,2059] reduction23127.output := by lin_cert using reduction23127.terms
def image23128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23128 : InImage map_39_260 image23128 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction23128 : Bundle := named_bundle% "RealMapCertificates/relations/basis23128.json"
theorem reductionProof23128 : EqualModuloRelations reduction23128.relations reduction23128.input reduction23128.output := by lin_cert using reduction23128.terms
theorem substitutionProof23128 : IsMapEvaluation generatorImages reduction23128.relations [8,8,8,13,901] reduction23128.output := by lin_cert using reduction23128.terms
def image23129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23129 : InImage map_39_260 image23129 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction23129 : Bundle := named_bundle% "RealMapCertificates/relations/basis23129.json"
theorem reductionProof23129 : EqualModuloRelations reduction23129.relations reduction23129.input reduction23129.output := by lin_cert using reduction23129.terms
theorem substitutionProof23129 : IsMapEvaluation generatorImages reduction23129.relations [8,8,8,9,13,13,423] reduction23129.output := by lin_cert using reduction23129.terms
def image23130 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23130 : InImage map_39_260 image23130 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction23130 : Bundle := named_bundle% "RealMapCertificates/relations/basis23130.json"
theorem reductionProof23130 : EqualModuloRelations reduction23130.relations reduction23130.input reduction23130.output := by lin_cert using reduction23130.terms
theorem substitutionProof23130 : IsMapEvaluation generatorImages reduction23130.relations [8,8,8,8,8,760] reduction23130.output := by lin_cert using reduction23130.terms
def image23131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23131 : InImage map_39_260 image23131 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction23131 : Bundle := named_bundle% "RealMapCertificates/relations/basis23131.json"
theorem reductionProof23131 : EqualModuloRelations reduction23131.relations reduction23131.input reduction23131.output := by lin_cert using reduction23131.terms
theorem substitutionProof23131 : IsMapEvaluation generatorImages reduction23131.relations [0,250,491] reduction23131.output := by lin_cert using reduction23131.terms
def image23132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23132 : InImage map_39_260 image23132 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction23132 : Bundle := named_bundle% "RealMapCertificates/relations/basis23132.json"
theorem reductionProof23132 : EqualModuloRelations reduction23132.relations reduction23132.input reduction23132.output := by lin_cert using reduction23132.terms
theorem substitutionProof23132 : IsMapEvaluation generatorImages reduction23132.relations [0,0,2677] reduction23132.output := by lin_cert using reduction23132.terms
def image23133 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23133 : InImage map_39_260 image23133 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction23133 : Bundle := named_bundle% "RealMapCertificates/relations/basis23133.json"
theorem reductionProof23133 : EqualModuloRelations reduction23133.relations reduction23133.input reduction23133.output := by lin_cert using reduction23133.terms
theorem substitutionProof23133 : IsMapEvaluation generatorImages reduction23133.relations [0,0,0,0,0,2544] reduction23133.output := by lin_cert using reduction23133.terms
def image23134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23134 : InImage map_39_260 image23134 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction23134 : Bundle := named_bundle% "RealMapCertificates/relations/basis23134.json"
theorem reductionProof23134 : EqualModuloRelations reduction23134.relations reduction23134.input reduction23134.output := by lin_cert using reduction23134.terms
theorem substitutionProof23134 : IsMapEvaluation generatorImages reduction23134.relations [0,0,0,0,0,0,0,0,0,2381] reduction23134.output := by lin_cert using reduction23134.terms
def image23135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23135 : InImage map_39_260 image23135 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction23135 : Bundle := named_bundle% "RealMapCertificates/relations/basis23135.json"
theorem reductionProof23135 : EqualModuloRelations reduction23135.relations reduction23135.input reduction23135.output := by lin_cert using reduction23135.terms
theorem substitutionProof23135 : IsMapEvaluation generatorImages reduction23135.relations [0,0,0,0,0,0,0,0,0,0,0,2309] reduction23135.output := by lin_cert using reduction23135.terms
def map_39_261 : Matrix 0 7 := fun i j => ([] : List Bool)[i.val*7+j.val]!
def image23572 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23572 : InImage map_39_261 image23572 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23572 : Bundle := named_bundle% "RealMapCertificates/relations/basis23572.json"
theorem reductionProof23572 : EqualModuloRelations reduction23572.relations reduction23572.input reduction23572.output := by lin_cert using reduction23572.terms
theorem substitutionProof23572 : IsMapEvaluation generatorImages reduction23572.relations [2862] reduction23572.output := by lin_cert using reduction23572.terms
def image23573 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23573 : InImage map_39_261 image23573 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23573 : Bundle := named_bundle% "RealMapCertificates/relations/basis23573.json"
theorem reductionProof23573 : EqualModuloRelations reduction23573.relations reduction23573.input reduction23573.output := by lin_cert using reduction23573.terms
theorem substitutionProof23573 : IsMapEvaluation generatorImages reduction23573.relations [8,64,64,255] reduction23573.output := by lin_cert using reduction23573.terms
def image23574 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23574 : InImage map_39_261 image23574 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23574 : Bundle := named_bundle% "RealMapCertificates/relations/basis23574.json"
theorem reductionProof23574 : EqualModuloRelations reduction23574.relations reduction23574.input reduction23574.output := by lin_cert using reduction23574.terms
theorem substitutionProof23574 : IsMapEvaluation generatorImages reduction23574.relations [8,9,13,13,13,13,13,188] reduction23574.output := by lin_cert using reduction23574.terms
def image23575 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23575 : InImage map_39_261 image23575 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23575 : Bundle := named_bundle% "RealMapCertificates/relations/basis23575.json"
theorem reductionProof23575 : EqualModuloRelations reduction23575.relations reduction23575.input reduction23575.output := by lin_cert using reduction23575.terms
theorem substitutionProof23575 : IsMapEvaluation generatorImages reduction23575.relations [8,8,8,8,13,705] reduction23575.output := by lin_cert using reduction23575.terms
def image23576 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23576 : InImage map_39_261 image23576 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23576 : Bundle := named_bundle% "RealMapCertificates/relations/basis23576.json"
theorem reductionProof23576 : EqualModuloRelations reduction23576.relations reduction23576.input reduction23576.output := by lin_cert using reduction23576.terms
theorem substitutionProof23576 : IsMapEvaluation generatorImages reduction23576.relations [0,0,0,0,64,64,349] reduction23576.output := by lin_cert using reduction23576.terms
def image23577 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23577 : InImage map_39_261 image23577 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23577 : Bundle := named_bundle% "RealMapCertificates/relations/basis23577.json"
theorem reductionProof23577 : EqualModuloRelations reduction23577.relations reduction23577.input reduction23577.output := by lin_cert using reduction23577.terms
theorem substitutionProof23577 : IsMapEvaluation generatorImages reduction23577.relations [0,0,0,0,0,2582] reduction23577.output := by lin_cert using reduction23577.terms
def image23578 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23578 : InImage map_39_261 image23578 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23578 : Bundle := named_bundle% "RealMapCertificates/relations/basis23578.json"
theorem reductionProof23578 : EqualModuloRelations reduction23578.relations reduction23578.input reduction23578.output := by lin_cert using reduction23578.terms
theorem substitutionProof23578 : IsMapEvaluation generatorImages reduction23578.relations [0,0,0,0,0,0,2546] reduction23578.output := by lin_cert using reduction23578.terms
def map_40_40 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image160 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation160 : InImage map_40_40 image160 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction160 : Bundle := named_bundle% "RealMapCertificates/relations/basis160.json"
theorem reductionProof160 : EqualModuloRelations reduction160.relations reduction160.input reduction160.output := by lin_cert using reduction160.terms
theorem substitutionProof160 : IsMapEvaluation generatorImages reduction160.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction160.output := by lin_cert using reduction160.terms
def map_40_119 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image1883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation1883 : InImage map_40_119 image1883 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1883 : Bundle := named_bundle% "RealMapCertificates/relations/basis1883.json"
theorem reductionProof1883 : EqualModuloRelations reduction1883.relations reduction1883.input reduction1883.output := by lin_cert using reduction1883.terms
theorem substitutionProof1883 : IsMapEvaluation generatorImages reduction1883.relations [0,0,0,0,0,0,0,0,0,0,0,210] reduction1883.output := by lin_cert using reduction1883.terms
def map_40_121 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image1971 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation1971 : InImage map_40_121 image1971 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction1971 : Bundle := named_bundle% "RealMapCertificates/relations/basis1971.json"
theorem reductionProof1971 : EqualModuloRelations reduction1971.relations reduction1971.input reduction1971.output := by lin_cert using reduction1971.terms
theorem substitutionProof1971 : IsMapEvaluation generatorImages reduction1971.relations [1,256] reduction1971.output := by lin_cert using reduction1971.terms
def map_40_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2162 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2162 : InImage map_40_126 image2162 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2162 : Bundle := named_bundle% "RealMapCertificates/relations/basis2162.json"
theorem reductionProof2162 : EqualModuloRelations reduction2162.relations reduction2162.input reduction2162.output := by lin_cert using reduction2162.terms
theorem substitutionProof2162 : IsMapEvaluation generatorImages reduction2162.relations [295] reduction2162.output := by lin_cert using reduction2162.terms
def map_40_127 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2220 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2220 : InImage map_40_127 image2220 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2220 : Bundle := named_bundle% "RealMapCertificates/relations/basis2220.json"
theorem reductionProof2220 : EqualModuloRelations reduction2220.relations reduction2220.input reduction2220.output := by lin_cert using reduction2220.terms
theorem substitutionProof2220 : IsMapEvaluation generatorImages reduction2220.relations [0,296] reduction2220.output := by lin_cert using reduction2220.terms
def map_40_129 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2318 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2318 : InImage map_40_129 image2318 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2318 : Bundle := named_bundle% "RealMapCertificates/relations/basis2318.json"
theorem reductionProof2318 : EqualModuloRelations reduction2318.relations reduction2318.input reduction2318.output := by lin_cert using reduction2318.terms
theorem substitutionProof2318 : IsMapEvaluation generatorImages reduction2318.relations [325] reduction2318.output := by lin_cert using reduction2318.terms
def map_40_130 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2386 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2386 : InImage map_40_130 image2386 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2386 : Bundle := named_bundle% "RealMapCertificates/relations/basis2386.json"
theorem reductionProof2386 : EqualModuloRelations reduction2386.relations reduction2386.input reduction2386.output := by lin_cert using reduction2386.terms
theorem substitutionProof2386 : IsMapEvaluation generatorImages reduction2386.relations [0,326] reduction2386.output := by lin_cert using reduction2386.terms
def map_40_132 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2498 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2498 : InImage map_40_132 image2498 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2498 : Bundle := named_bundle% "RealMapCertificates/relations/basis2498.json"
theorem reductionProof2498 : EqualModuloRelations reduction2498.relations reduction2498.input reduction2498.output := by lin_cert using reduction2498.terms
theorem substitutionProof2498 : IsMapEvaluation generatorImages reduction2498.relations [8,236] reduction2498.output := by lin_cert using reduction2498.terms
def map_40_133 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2583 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2583 : InImage map_40_133 image2583 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2583 : Bundle := named_bundle% "RealMapCertificates/relations/basis2583.json"
theorem reductionProof2583 : EqualModuloRelations reduction2583.relations reduction2583.input reduction2583.output := by lin_cert using reduction2583.terms
theorem substitutionProof2583 : IsMapEvaluation generatorImages reduction2583.relations [0,16,183] reduction2583.output := by lin_cert using reduction2583.terms
def map_40_134 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2642 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2642 : InImage map_40_134 image2642 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2642 : Bundle := named_bundle% "RealMapCertificates/relations/basis2642.json"
theorem reductionProof2642 : EqualModuloRelations reduction2642.relations reduction2642.input reduction2642.output := by lin_cert using reduction2642.terms
theorem substitutionProof2642 : IsMapEvaluation generatorImages reduction2642.relations [0,0,17,183] reduction2642.output := by lin_cert using reduction2642.terms
def map_40_135 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image2721 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2721 : InImage map_40_135 image2721 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2721 : Bundle := named_bundle% "RealMapCertificates/relations/basis2721.json"
theorem reductionProof2721 : EqualModuloRelations reduction2721.relations reduction2721.input reduction2721.output := by lin_cert using reduction2721.terms
theorem substitutionProof2721 : IsMapEvaluation generatorImages reduction2721.relations [8,252] reduction2721.output := by lin_cert using reduction2721.terms
def image2722 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2722 : InImage map_40_135 image2722 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2722 : Bundle := named_bundle% "RealMapCertificates/relations/basis2722.json"
theorem reductionProof2722 : EqualModuloRelations reduction2722.relations reduction2722.input reduction2722.output := by lin_cert using reduction2722.terms
theorem substitutionProof2722 : IsMapEvaluation generatorImages reduction2722.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2722.output := by lin_cert using reduction2722.terms
def map_40_136 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2810 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2810 : InImage map_40_136 image2810 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2810 : Bundle := named_bundle% "RealMapCertificates/relations/basis2810.json"
theorem reductionProof2810 : EqualModuloRelations reduction2810.relations reduction2810.input reduction2810.output := by lin_cert using reduction2810.terms
theorem substitutionProof2810 : IsMapEvaluation generatorImages reduction2810.relations [0,8,253] reduction2810.output := by lin_cert using reduction2810.terms
def map_40_138 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2947 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2947 : InImage map_40_138 image2947 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2947 : Bundle := named_bundle% "RealMapCertificates/relations/basis2947.json"
theorem reductionProof2947 : EqualModuloRelations reduction2947.relations reduction2947.input reduction2947.output := by lin_cert using reduction2947.terms
theorem substitutionProof2947 : IsMapEvaluation generatorImages reduction2947.relations [8,8,182] reduction2947.output := by lin_cert using reduction2947.terms
def map_40_139 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3046 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3046 : InImage map_40_139 image3046 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3046 : Bundle := named_bundle% "RealMapCertificates/relations/basis3046.json"
theorem reductionProof3046 : EqualModuloRelations reduction3046.relations reduction3046.input reduction3046.output := by lin_cert using reduction3046.terms
theorem substitutionProof3046 : IsMapEvaluation generatorImages reduction3046.relations [0,8,8,183] reduction3046.output := by lin_cert using reduction3046.terms
end RealMapCertificates
