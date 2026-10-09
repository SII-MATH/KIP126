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
  | 19 => [[4,8]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 113 => [[0,8,12]]
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 516 => []
  | 555 => []
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 623 => []
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 795 => []
  | 807 => []
  | 896 => []
  | 919 => []
  | 971 => []
  | 1121 => []
  | 1180 => []
  | 1218 => []
  | _ => []
def map_40_141 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3200 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3200 : InImage map_40_141 image3200 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3200 : Bundle := named_bundle% "RealMapCertificates/relations/basis3200.json"
theorem reductionProof3200 : EqualModuloRelations reduction3200.relations reduction3200.input reduction3200.output := by lin_cert using reduction3200.terms
theorem substitutionProof3200 : IsMapEvaluation generatorImages reduction3200.relations [8,8,199] reduction3200.output := by lin_cert using reduction3200.terms
def image3201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3201 : InImage map_40_141 image3201 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3201 : Bundle := named_bundle% "RealMapCertificates/relations/basis3201.json"
theorem reductionProof3201 : EqualModuloRelations reduction3201.relations reduction3201.input reduction3201.output := by lin_cert using reduction3201.terms
theorem substitutionProof3201 : IsMapEvaluation generatorImages reduction3201.relations [0,0,0,0,0,0,402] reduction3201.output := by lin_cert using reduction3201.terms
def map_40_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3292 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3292 : InImage map_40_142 image3292 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3292 : Bundle := named_bundle% "RealMapCertificates/relations/basis3292.json"
theorem reductionProof3292 : EqualModuloRelations reduction3292.relations reduction3292.input reduction3292.output := by lin_cert using reduction3292.terms
theorem substitutionProof3292 : IsMapEvaluation generatorImages reduction3292.relations [0,0,0,0,0,0,0,403] reduction3292.output := by lin_cert using reduction3292.terms
def map_40_144 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3443 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3443 : InImage map_40_144 image3443 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3443 : Bundle := named_bundle% "RealMapCertificates/relations/basis3443.json"
theorem reductionProof3443 : EqualModuloRelations reduction3443.relations reduction3443.input reduction3443.output := by lin_cert using reduction3443.terms
theorem substitutionProof3443 : IsMapEvaluation generatorImages reduction3443.relations [8,8,8,145] reduction3443.output := by lin_cert using reduction3443.terms
def map_40_147 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3703 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3703 : InImage map_40_147 image3703 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3703 : Bundle := named_bundle% "RealMapCertificates/relations/basis3703.json"
theorem reductionProof3703 : EqualModuloRelations reduction3703.relations reduction3703.input reduction3703.output := by lin_cert using reduction3703.terms
theorem substitutionProof3703 : IsMapEvaluation generatorImages reduction3703.relations [8,8,8,152] reduction3703.output := by lin_cert using reduction3703.terms
def map_40_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3957 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3957 : InImage map_40_150 image3957 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3957 : Bundle := named_bundle% "RealMapCertificates/relations/basis3957.json"
theorem reductionProof3957 : EqualModuloRelations reduction3957.relations reduction3957.input reduction3957.output := by lin_cert using reduction3957.terms
theorem substitutionProof3957 : IsMapEvaluation generatorImages reduction3957.relations [8,8,8,8,110] reduction3957.output := by lin_cert using reduction3957.terms
def map_40_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4077 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4077 : InImage map_40_151 image4077 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4077 : Bundle := named_bundle% "RealMapCertificates/relations/basis4077.json"
theorem reductionProof4077 : EqualModuloRelations reduction4077.relations reduction4077.input reduction4077.output := by lin_cert using reduction4077.terms
theorem substitutionProof4077 : IsMapEvaluation generatorImages reduction4077.relations [1,5,402] reduction4077.output := by lin_cert using reduction4077.terms
def map_40_152 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image4148 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4148 : InImage map_40_152 image4148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4148 : Bundle := named_bundle% "RealMapCertificates/relations/basis4148.json"
theorem reductionProof4148 : EqualModuloRelations reduction4148.relations reduction4148.input reduction4148.output := by lin_cert using reduction4148.terms
theorem substitutionProof4148 : IsMapEvaluation generatorImages reduction4148.relations [0,0,555] reduction4148.output := by lin_cert using reduction4148.terms
def map_40_153 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4240 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4240 : InImage map_40_153 image4240 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4240 : Bundle := named_bundle% "RealMapCertificates/relations/basis4240.json"
theorem reductionProof4240 : EqualModuloRelations reduction4240.relations reduction4240.input reduction4240.output := by lin_cert using reduction4240.terms
theorem substitutionProof4240 : IsMapEvaluation generatorImages reduction4240.relations [8,8,8,8,116] reduction4240.output := by lin_cert using reduction4240.terms
def map_40_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4401 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4401 : InImage map_40_155 image4401 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4401 : Bundle := named_bundle% "RealMapCertificates/relations/basis4401.json"
theorem reductionProof4401 : EqualModuloRelations reduction4401.relations reduction4401.input reduction4401.output := by lin_cert using reduction4401.terms
theorem substitutionProof4401 : IsMapEvaluation generatorImages reduction4401.relations [0,0,8,402] reduction4401.output := by lin_cert using reduction4401.terms
def map_40_156 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4481 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4481 : InImage map_40_156 image4481 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4481 : Bundle := named_bundle% "RealMapCertificates/relations/basis4481.json"
theorem reductionProof4481 : EqualModuloRelations reduction4481.relations reduction4481.input reduction4481.output := by lin_cert using reduction4481.terms
theorem substitutionProof4481 : IsMapEvaluation generatorImages reduction4481.relations [8,8,8,8,8,71] reduction4481.output := by lin_cert using reduction4481.terms
def map_40_158 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4665 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4665 : InImage map_40_158 image4665 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4665 : Bundle := named_bundle% "RealMapCertificates/relations/basis4665.json"
theorem reductionProof4665 : EqualModuloRelations reduction4665.relations reduction4665.input reduction4665.output := by lin_cert using reduction4665.terms
theorem substitutionProof4665 : IsMapEvaluation generatorImages reduction4665.relations [0,0,8,432] reduction4665.output := by lin_cert using reduction4665.terms
def map_40_159 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4752 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4752 : InImage map_40_159 image4752 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4752 : Bundle := named_bundle% "RealMapCertificates/relations/basis4752.json"
theorem reductionProof4752 : EqualModuloRelations reduction4752.relations reduction4752.input reduction4752.output := by lin_cert using reduction4752.terms
theorem substitutionProof4752 : IsMapEvaluation generatorImages reduction4752.relations [8,8,8,8,8,77] reduction4752.output := by lin_cert using reduction4752.terms
def map_40_161 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4927 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4927 : InImage map_40_161 image4927 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4927 : Bundle := named_bundle% "RealMapCertificates/relations/basis4927.json"
theorem reductionProof4927 : EqualModuloRelations reduction4927.relations reduction4927.input reduction4927.output := by lin_cert using reduction4927.terms
theorem substitutionProof4927 : IsMapEvaluation generatorImages reduction4927.relations [0,0,8,16,224] reduction4927.output := by lin_cert using reduction4927.terms
def map_40_162 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5023 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5023 : InImage map_40_162 image5023 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5023 : Bundle := named_bundle% "RealMapCertificates/relations/basis5023.json"
theorem reductionProof5023 : EqualModuloRelations reduction5023.relations reduction5023.input reduction5023.output := by lin_cert using reduction5023.terms
theorem substitutionProof5023 : IsMapEvaluation generatorImages reduction5023.relations [8,8,8,8,8,8,49] reduction5023.output := by lin_cert using reduction5023.terms
def map_40_164 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image5216 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5216 : InImage map_40_164 image5216 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5216 : Bundle := named_bundle% "RealMapCertificates/relations/basis5216.json"
theorem reductionProof5216 : EqualModuloRelations reduction5216.relations reduction5216.input reduction5216.output := by lin_cert using reduction5216.terms
theorem substitutionProof5216 : IsMapEvaluation generatorImages reduction5216.relations [685] reduction5216.output := by lin_cert using reduction5216.terms
def map_40_165 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image5326 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5326 : InImage map_40_165 image5326 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5326 : Bundle := named_bundle% "RealMapCertificates/relations/basis5326.json"
theorem reductionProof5326 : EqualModuloRelations reduction5326.relations reduction5326.input reduction5326.output := by lin_cert using reduction5326.terms
theorem substitutionProof5326 : IsMapEvaluation generatorImages reduction5326.relations [17,403] reduction5326.output := by lin_cert using reduction5326.terms
def image5327 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5327 : InImage map_40_165 image5327 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5327 : Bundle := named_bundle% "RealMapCertificates/relations/basis5327.json"
theorem reductionProof5327 : EqualModuloRelations reduction5327.relations reduction5327.input reduction5327.output := by lin_cert using reduction5327.terms
theorem substitutionProof5327 : IsMapEvaluation generatorImages reduction5327.relations [8,8,8,8,8,8,55] reduction5327.output := by lin_cert using reduction5327.terms
def map_40_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5443 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5443 : InImage map_40_166 image5443 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5443 : Bundle := named_bundle% "RealMapCertificates/relations/basis5443.json"
theorem reductionProof5443 : EqualModuloRelations reduction5443.relations reduction5443.input reduction5443.output := by lin_cert using reduction5443.terms
theorem substitutionProof5443 : IsMapEvaluation generatorImages reduction5443.relations [0,0,686] reduction5443.output := by lin_cert using reduction5443.terms
def map_40_167 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5542 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5542 : InImage map_40_167 image5542 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5542 : Bundle := named_bundle% "RealMapCertificates/relations/basis5542.json"
theorem reductionProof5542 : EqualModuloRelations reduction5542.relations reduction5542.input reduction5542.output := by lin_cert using reduction5542.terms
theorem substitutionProof5542 : IsMapEvaluation generatorImages reduction5542.relations [722] reduction5542.output := by lin_cert using reduction5542.terms
def image5543 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5543 : InImage map_40_167 image5543 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5543 : Bundle := named_bundle% "RealMapCertificates/relations/basis5543.json"
theorem reductionProof5543 : EqualModuloRelations reduction5543.relations reduction5543.input reduction5543.output := by lin_cert using reduction5543.terms
theorem substitutionProof5543 : IsMapEvaluation generatorImages reduction5543.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5543.output := by lin_cert using reduction5543.terms
def map_40_168 : Matrix 4 2 := fun i j => ([false,true,true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5645 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation5645 : InImage map_40_168 image5645 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5645 : Bundle := named_bundle% "RealMapCertificates/relations/basis5645.json"
theorem reductionProof5645 : EqualModuloRelations reduction5645.relations reduction5645.input reduction5645.output := by lin_cert using reduction5645.terms
theorem substitutionProof5645 : IsMapEvaluation generatorImages reduction5645.relations [17,433] reduction5645.output := by lin_cert using reduction5645.terms
def image5646 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5646 : InImage map_40_168 image5646 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5646 : Bundle := named_bundle% "RealMapCertificates/relations/basis5646.json"
theorem reductionProof5646 : EqualModuloRelations reduction5646.relations reduction5646.input reduction5646.output := by lin_cert using reduction5646.terms
theorem substitutionProof5646 : IsMapEvaluation generatorImages reduction5646.relations [8,8,8,8,8,8,8,31] reduction5646.output := by lin_cert using reduction5646.terms
def map_40_170 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5868 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5868 : InImage map_40_170 image5868 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5868 : Bundle := named_bundle% "RealMapCertificates/relations/basis5868.json"
theorem reductionProof5868 : EqualModuloRelations reduction5868.relations reduction5868.input reduction5868.output := by lin_cert using reduction5868.terms
theorem substitutionProof5868 : IsMapEvaluation generatorImages reduction5868.relations [16,452] reduction5868.output := by lin_cert using reduction5868.terms
def map_40_171 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image5988 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5988 : InImage map_40_171 image5988 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5988 : Bundle := named_bundle% "RealMapCertificates/relations/basis5988.json"
theorem reductionProof5988 : EqualModuloRelations reduction5988.relations reduction5988.input reduction5988.output := by lin_cert using reduction5988.terms
theorem substitutionProof5988 : IsMapEvaluation generatorImages reduction5988.relations [16,17,225] reduction5988.output := by lin_cert using reduction5988.terms
def image5989 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5989 : InImage map_40_171 image5989 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5989 : Bundle := named_bundle% "RealMapCertificates/relations/basis5989.json"
theorem reductionProof5989 : EqualModuloRelations reduction5989.relations reduction5989.input reduction5989.output := by lin_cert using reduction5989.terms
theorem substitutionProof5989 : IsMapEvaluation generatorImages reduction5989.relations [8,8,8,8,8,8,8,39] reduction5989.output := by lin_cert using reduction5989.terms
def image5990 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5990 : InImage map_40_171 image5990 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5990 : Bundle := named_bundle% "RealMapCertificates/relations/basis5990.json"
theorem reductionProof5990 : EqualModuloRelations reduction5990.relations reduction5990.input reduction5990.output := by lin_cert using reduction5990.terms
theorem substitutionProof5990 : IsMapEvaluation generatorImages reduction5990.relations [0,17,452] reduction5990.output := by lin_cert using reduction5990.terms
def map_40_172 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image6117 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6117 : InImage map_40_172 image6117 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6117 : Bundle := named_bundle% "RealMapCertificates/relations/basis6117.json"
theorem reductionProof6117 : EqualModuloRelations reduction6117.relations reduction6117.input reduction6117.output := by lin_cert using reduction6117.terms
theorem substitutionProof6117 : IsMapEvaluation generatorImages reduction6117.relations [0,17,17,225] reduction6117.output := by lin_cert using reduction6117.terms
def map_40_173 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image6205 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6205 : InImage map_40_173 image6205 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6205 : Bundle := named_bundle% "RealMapCertificates/relations/basis6205.json"
theorem reductionProof6205 : EqualModuloRelations reduction6205.relations reduction6205.input reduction6205.output := by lin_cert using reduction6205.terms
theorem substitutionProof6205 : IsMapEvaluation generatorImages reduction6205.relations [8,595] reduction6205.output := by lin_cert using reduction6205.terms
def image6206 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6206 : InImage map_40_173 image6206 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6206 : Bundle := named_bundle% "RealMapCertificates/relations/basis6206.json"
theorem reductionProof6206 : EqualModuloRelations reduction6206.relations reduction6206.input reduction6206.output := by lin_cert using reduction6206.terms
theorem substitutionProof6206 : IsMapEvaluation generatorImages reduction6206.relations [1,59,224] reduction6206.output := by lin_cert using reduction6206.terms
def image6207 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6207 : InImage map_40_173 image6207 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6207 : Bundle := named_bundle% "RealMapCertificates/relations/basis6207.json"
theorem reductionProof6207 : EqualModuloRelations reduction6207.relations reduction6207.input reduction6207.output := by lin_cert using reduction6207.terms
theorem substitutionProof6207 : IsMapEvaluation generatorImages reduction6207.relations [0,0,0,0,0,0,725] reduction6207.output := by lin_cert using reduction6207.terms
def map_40_174 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6314 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6314 : InImage map_40_174 image6314 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6314 : Bundle := named_bundle% "RealMapCertificates/relations/basis6314.json"
theorem reductionProof6314 : EqualModuloRelations reduction6314.relations reduction6314.input reduction6314.output := by lin_cert using reduction6314.terms
theorem substitutionProof6314 : IsMapEvaluation generatorImages reduction6314.relations [8,17,298] reduction6314.output := by lin_cert using reduction6314.terms
def image6315 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6315 : InImage map_40_174 image6315 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6315 : Bundle := named_bundle% "RealMapCertificates/relations/basis6315.json"
theorem reductionProof6315 : EqualModuloRelations reduction6315.relations reduction6315.input reduction6315.output := by lin_cert using reduction6315.terms
theorem substitutionProof6315 : IsMapEvaluation generatorImages reduction6315.relations [8,8,8,8,8,8,8,8,16] reduction6315.output := by lin_cert using reduction6315.terms
def image6316 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6316 : InImage map_40_174 image6316 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6316 : Bundle := named_bundle% "RealMapCertificates/relations/basis6316.json"
theorem reductionProof6316 : EqualModuloRelations reduction6316.relations reduction6316.input reduction6316.output := by lin_cert using reduction6316.terms
theorem substitutionProof6316 : IsMapEvaluation generatorImages reduction6316.relations [0,0,0,0,0,752] reduction6316.output := by lin_cert using reduction6316.terms
def map_40_176 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image6541 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6541 : InImage map_40_176 image6541 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6541 : Bundle := named_bundle% "RealMapCertificates/relations/basis6541.json"
theorem reductionProof6541 : EqualModuloRelations reduction6541.relations reduction6541.input reduction6541.output := by lin_cert using reduction6541.terms
theorem substitutionProof6541 : IsMapEvaluation generatorImages reduction6541.relations [8,8,452] reduction6541.output := by lin_cert using reduction6541.terms
def map_40_177 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6670 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6670 : InImage map_40_177 image6670 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6670 : Bundle := named_bundle% "RealMapCertificates/relations/basis6670.json"
theorem reductionProof6670 : EqualModuloRelations reduction6670.relations reduction6670.input reduction6670.output := by lin_cert using reduction6670.terms
theorem substitutionProof6670 : IsMapEvaluation generatorImages reduction6670.relations [8,8,17,225] reduction6670.output := by lin_cert using reduction6670.terms
def image6671 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6671 : InImage map_40_177 image6671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6671 : Bundle := named_bundle% "RealMapCertificates/relations/basis6671.json"
theorem reductionProof6671 : EqualModuloRelations reduction6671.relations reduction6671.input reduction6671.output := by lin_cert using reduction6671.terms
theorem substitutionProof6671 : IsMapEvaluation generatorImages reduction6671.relations [8,8,8,8,8,8,8,8,19] reduction6671.output := by lin_cert using reduction6671.terms
def map_40_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6795 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6795 : InImage map_40_178 image6795 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6795 : Bundle := named_bundle% "RealMapCertificates/relations/basis6795.json"
theorem reductionProof6795 : EqualModuloRelations reduction6795.relations reduction6795.input reduction6795.output := by lin_cert using reduction6795.terms
theorem substitutionProof6795 : IsMapEvaluation generatorImages reduction6795.relations [0,0,0,0,64,224] reduction6795.output := by lin_cert using reduction6795.terms
def map_40_179 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6902 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6902 : InImage map_40_179 image6902 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6902 : Bundle := named_bundle% "RealMapCertificates/relations/basis6902.json"
theorem reductionProof6902 : EqualModuloRelations reduction6902.relations reduction6902.input reduction6902.output := by lin_cert using reduction6902.terms
theorem substitutionProof6902 : IsMapEvaluation generatorImages reduction6902.relations [8,8,488] reduction6902.output := by lin_cert using reduction6902.terms
def image6903 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6903 : InImage map_40_179 image6903 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6903 : Bundle := named_bundle% "RealMapCertificates/relations/basis6903.json"
theorem reductionProof6903 : EqualModuloRelations reduction6903.relations reduction6903.input reduction6903.output := by lin_cert using reduction6903.terms
theorem substitutionProof6903 : IsMapEvaluation generatorImages reduction6903.relations [0,0,0,0,0,64,225] reduction6903.output := by lin_cert using reduction6903.terms
def map_40_180 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7033 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7033 : InImage map_40_180 image7033 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7033 : Bundle := named_bundle% "RealMapCertificates/relations/basis7033.json"
theorem reductionProof7033 : EqualModuloRelations reduction7033.relations reduction7033.input reduction7033.output := by lin_cert using reduction7033.terms
theorem substitutionProof7033 : IsMapEvaluation generatorImages reduction7033.relations [8,8,17,238] reduction7033.output := by lin_cert using reduction7033.terms
def image7034 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7034 : InImage map_40_180 image7034 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7034 : Bundle := named_bundle% "RealMapCertificates/relations/basis7034.json"
theorem reductionProof7034 : EqualModuloRelations reduction7034.relations reduction7034.input reduction7034.output := by lin_cert using reduction7034.terms
theorem substitutionProof7034 : IsMapEvaluation generatorImages reduction7034.relations [8,8,8,8,8,8,8,8,8,8] reduction7034.output := by lin_cert using reduction7034.terms
def map_40_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7171 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7171 : InImage map_40_181 image7171 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7171 : Bundle := named_bundle% "RealMapCertificates/relations/basis7171.json"
theorem reductionProof7171 : EqualModuloRelations reduction7171.relations reduction7171.input reduction7171.output := by lin_cert using reduction7171.terms
theorem substitutionProof7171 : IsMapEvaluation generatorImages reduction7171.relations [0,0,0,0,0,0,0,807] reduction7171.output := by lin_cert using reduction7171.terms
def map_40_182 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7259 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7259 : InImage map_40_182 image7259 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7259 : Bundle := named_bundle% "RealMapCertificates/relations/basis7259.json"
theorem reductionProof7259 : EqualModuloRelations reduction7259.relations reduction7259.input reduction7259.output := by lin_cert using reduction7259.terms
theorem substitutionProof7259 : IsMapEvaluation generatorImages reduction7259.relations [8,8,16,244] reduction7259.output := by lin_cert using reduction7259.terms
def image7260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7260 : InImage map_40_182 image7260 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7260 : Bundle := named_bundle% "RealMapCertificates/relations/basis7260.json"
theorem reductionProof7260 : EqualModuloRelations reduction7260.relations reduction7260.input reduction7260.output := by lin_cert using reduction7260.terms
theorem substitutionProof7260 : IsMapEvaluation generatorImages reduction7260.relations [0,0,0,0,0,0,0,0,0,795] reduction7260.output := by lin_cert using reduction7260.terms
def map_40_183 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7398 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7398 : InImage map_40_183 image7398 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7398 : Bundle := named_bundle% "RealMapCertificates/relations/basis7398.json"
theorem reductionProof7398 : EqualModuloRelations reduction7398.relations reduction7398.input reduction7398.output := by lin_cert using reduction7398.terms
theorem substitutionProof7398 : IsMapEvaluation generatorImages reduction7398.relations [8,8,16,17,138] reduction7398.output := by lin_cert using reduction7398.terms
def image7399 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7399 : InImage map_40_183 image7399 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7399 : Bundle := named_bundle% "RealMapCertificates/relations/basis7399.json"
theorem reductionProof7399 : EqualModuloRelations reduction7399.relations reduction7399.input reduction7399.output := by lin_cert using reduction7399.terms
theorem substitutionProof7399 : IsMapEvaluation generatorImages reduction7399.relations [8,8,8,8,8,8,8,8,8,9] reduction7399.output := by lin_cert using reduction7399.terms
def image7400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7400 : InImage map_40_183 image7400 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7400 : Bundle := named_bundle% "RealMapCertificates/relations/basis7400.json"
theorem reductionProof7400 : EqualModuloRelations reduction7400.relations reduction7400.input reduction7400.output := by lin_cert using reduction7400.terms
theorem substitutionProof7400 : IsMapEvaluation generatorImages reduction7400.relations [1,5,725] reduction7400.output := by lin_cert using reduction7400.terms
def map_40_184 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image7525 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7525 : InImage map_40_184 image7525 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7525 : Bundle := named_bundle% "RealMapCertificates/relations/basis7525.json"
theorem reductionProof7525 : EqualModuloRelations reduction7525.relations reduction7525.input reduction7525.output := by lin_cert using reduction7525.terms
theorem substitutionProof7525 : IsMapEvaluation generatorImages reduction7525.relations [0,0,896] reduction7525.output := by lin_cert using reduction7525.terms
def map_40_185 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7625 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7625 : InImage map_40_185 image7625 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7625 : Bundle := named_bundle% "RealMapCertificates/relations/basis7625.json"
theorem reductionProof7625 : EqualModuloRelations reduction7625.relations reduction7625.input reduction7625.output := by lin_cert using reduction7625.terms
theorem substitutionProof7625 : IsMapEvaluation generatorImages reduction7625.relations [8,8,8,343] reduction7625.output := by lin_cert using reduction7625.terms
def image7626 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7626 : InImage map_40_185 image7626 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7626 : Bundle := named_bundle% "RealMapCertificates/relations/basis7626.json"
theorem reductionProof7626 : EqualModuloRelations reduction7626.relations reduction7626.input reduction7626.output := by lin_cert using reduction7626.terms
theorem substitutionProof7626 : IsMapEvaluation generatorImages reduction7626.relations [0,0,0,0,0,0,64,244] reduction7626.output := by lin_cert using reduction7626.terms
def map_40_186 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7758 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7758 : InImage map_40_186 image7758 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7758 : Bundle := named_bundle% "RealMapCertificates/relations/basis7758.json"
theorem reductionProof7758 : EqualModuloRelations reduction7758.relations reduction7758.input reduction7758.output := by lin_cert using reduction7758.terms
theorem substitutionProof7758 : IsMapEvaluation generatorImages reduction7758.relations [8,8,8,17,185] reduction7758.output := by lin_cert using reduction7758.terms
def image7759 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7759 : InImage map_40_186 image7759 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7759 : Bundle := named_bundle% "RealMapCertificates/relations/basis7759.json"
theorem reductionProof7759 : EqualModuloRelations reduction7759.relations reduction7759.input reduction7759.output := by lin_cert using reduction7759.terms
theorem substitutionProof7759 : IsMapEvaluation generatorImages reduction7759.relations [8,8,8,8,8,8,8,8,8,13] reduction7759.output := by lin_cert using reduction7759.terms
def map_40_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7885 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7885 : InImage map_40_187 image7885 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7885 : Bundle := named_bundle% "RealMapCertificates/relations/basis7885.json"
theorem reductionProof7885 : EqualModuloRelations reduction7885.relations reduction7885.input reduction7885.output := by lin_cert using reduction7885.terms
theorem substitutionProof7885 : IsMapEvaluation generatorImages reduction7885.relations [0,0,8,725] reduction7885.output := by lin_cert using reduction7885.terms
def map_40_188 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image7964 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7964 : InImage map_40_188 image7964 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7964 : Bundle := named_bundle% "RealMapCertificates/relations/basis7964.json"
theorem reductionProof7964 : EqualModuloRelations reduction7964.relations reduction7964.input reduction7964.output := by lin_cert using reduction7964.terms
theorem substitutionProof7964 : IsMapEvaluation generatorImages reduction7964.relations [8,8,8,8,244] reduction7964.output := by lin_cert using reduction7964.terms
def map_40_189 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image8109 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8109 : InImage map_40_189 image8109 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8109 : Bundle := named_bundle% "RealMapCertificates/relations/basis8109.json"
theorem reductionProof8109 : EqualModuloRelations reduction8109.relations reduction8109.input reduction8109.output := by lin_cert using reduction8109.terms
theorem substitutionProof8109 : IsMapEvaluation generatorImages reduction8109.relations [64,297] reduction8109.output := by lin_cert using reduction8109.terms
def image8110 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8110 : InImage map_40_189 image8110 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8110 : Bundle := named_bundle% "RealMapCertificates/relations/basis8110.json"
theorem reductionProof8110 : EqualModuloRelations reduction8110.relations reduction8110.input reduction8110.output := by lin_cert using reduction8110.terms
theorem substitutionProof8110 : IsMapEvaluation generatorImages reduction8110.relations [8,8,8,8,17,138] reduction8110.output := by lin_cert using reduction8110.terms
def image8111 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8111 : InImage map_40_189 image8111 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8111 : Bundle := named_bundle% "RealMapCertificates/relations/basis8111.json"
theorem reductionProof8111 : EqualModuloRelations reduction8111.relations reduction8111.input reduction8111.output := by lin_cert using reduction8111.terms
theorem substitutionProof8111 : IsMapEvaluation generatorImages reduction8111.relations [8,8,8,8,8,8,8,8,9,13] reduction8111.output := by lin_cert using reduction8111.terms
def map_40_190 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8235 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8235 : InImage map_40_190 image8235 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8235 : Bundle := named_bundle% "RealMapCertificates/relations/basis8235.json"
theorem reductionProof8235 : EqualModuloRelations reduction8235.relations reduction8235.input reduction8235.output := by lin_cert using reduction8235.terms
theorem substitutionProof8235 : IsMapEvaluation generatorImages reduction8235.relations [0,64,298] reduction8235.output := by lin_cert using reduction8235.terms
def image8236 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8236 : InImage map_40_190 image8236 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8236 : Bundle := named_bundle% "RealMapCertificates/relations/basis8236.json"
theorem reductionProof8236 : EqualModuloRelations reduction8236.relations reduction8236.input reduction8236.output := by lin_cert using reduction8236.terms
theorem substitutionProof8236 : IsMapEvaluation generatorImages reduction8236.relations [0,0,8,759] reduction8236.output := by lin_cert using reduction8236.terms
def map_40_191 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8348 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8348 : InImage map_40_191 image8348 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8348 : Bundle := named_bundle% "RealMapCertificates/relations/basis8348.json"
theorem reductionProof8348 : EqualModuloRelations reduction8348.relations reduction8348.input reduction8348.output := by lin_cert using reduction8348.terms
theorem substitutionProof8348 : IsMapEvaluation generatorImages reduction8348.relations [8,8,8,8,257] reduction8348.output := by lin_cert using reduction8348.terms
def map_40_192 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8482 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8482 : InImage map_40_192 image8482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8482 : Bundle := named_bundle% "RealMapCertificates/relations/basis8482.json"
theorem reductionProof8482 : EqualModuloRelations reduction8482.relations reduction8482.input reduction8482.output := by lin_cert using reduction8482.terms
theorem substitutionProof8482 : IsMapEvaluation generatorImages reduction8482.relations [8,64,224] reduction8482.output := by lin_cert using reduction8482.terms
def image8483 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8483 : InImage map_40_192 image8483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8483 : Bundle := named_bundle% "RealMapCertificates/relations/basis8483.json"
theorem reductionProof8483 : EqualModuloRelations reduction8483.relations reduction8483.input reduction8483.output := by lin_cert using reduction8483.terms
theorem substitutionProof8483 : IsMapEvaluation generatorImages reduction8483.relations [8,8,8,8,17,147] reduction8483.output := by lin_cert using reduction8483.terms
def image8484 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8484 : InImage map_40_192 image8484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8484 : Bundle := named_bundle% "RealMapCertificates/relations/basis8484.json"
theorem reductionProof8484 : EqualModuloRelations reduction8484.relations reduction8484.input reduction8484.output := by lin_cert using reduction8484.terms
theorem substitutionProof8484 : IsMapEvaluation generatorImages reduction8484.relations [8,8,8,8,8,8,8,8,13,13] reduction8484.output := by lin_cert using reduction8484.terms
def map_40_193 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8616 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8616 : InImage map_40_193 image8616 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8616 : Bundle := named_bundle% "RealMapCertificates/relations/basis8616.json"
theorem reductionProof8616 : EqualModuloRelations reduction8616.relations reduction8616.input reduction8616.output := by lin_cert using reduction8616.terms
theorem substitutionProof8616 : IsMapEvaluation generatorImages reduction8616.relations [0,8,64,225] reduction8616.output := by lin_cert using reduction8616.terms
def image8617 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8617 : InImage map_40_193 image8617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8617 : Bundle := named_bundle% "RealMapCertificates/relations/basis8617.json"
theorem reductionProof8617 : EqualModuloRelations reduction8617.relations reduction8617.input reduction8617.output := by lin_cert using reduction8617.terms
theorem substitutionProof8617 : IsMapEvaluation generatorImages reduction8617.relations [0,0,8,16,491] reduction8617.output := by lin_cert using reduction8617.terms
def map_40_194 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8723 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8723 : InImage map_40_194 image8723 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8723 : Bundle := named_bundle% "RealMapCertificates/relations/basis8723.json"
theorem reductionProof8723 : EqualModuloRelations reduction8723.relations reduction8723.input reduction8723.output := by lin_cert using reduction8723.terms
theorem substitutionProof8723 : IsMapEvaluation generatorImages reduction8723.relations [8,8,8,8,16,149] reduction8723.output := by lin_cert using reduction8723.terms
def map_40_195 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image8887 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8887 : InImage map_40_195 image8887 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction8887 : Bundle := named_bundle% "RealMapCertificates/relations/basis8887.json"
theorem reductionProof8887 : EqualModuloRelations reduction8887.relations reduction8887.input reduction8887.output := by lin_cert using reduction8887.terms
theorem substitutionProof8887 : IsMapEvaluation generatorImages reduction8887.relations [8,64,237] reduction8887.output := by lin_cert using reduction8887.terms
def image8888 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8888 : InImage map_40_195 image8888 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction8888 : Bundle := named_bundle% "RealMapCertificates/relations/basis8888.json"
theorem reductionProof8888 : EqualModuloRelations reduction8888.relations reduction8888.input reduction8888.output := by lin_cert using reduction8888.terms
theorem substitutionProof8888 : IsMapEvaluation generatorImages reduction8888.relations [8,8,8,8,16,154] reduction8888.output := by lin_cert using reduction8888.terms
def image8889 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8889 : InImage map_40_195 image8889 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction8889 : Bundle := named_bundle% "RealMapCertificates/relations/basis8889.json"
theorem reductionProof8889 : EqualModuloRelations reduction8889.relations reduction8889.input reduction8889.output := by lin_cert using reduction8889.terms
theorem substitutionProof8889 : IsMapEvaluation generatorImages reduction8889.relations [8,8,8,8,8,8,8,9,13,13] reduction8889.output := by lin_cert using reduction8889.terms
def image8890 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8890 : InImage map_40_195 image8890 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction8890 : Bundle := named_bundle% "RealMapCertificates/relations/basis8890.json"
theorem reductionProof8890 : EqualModuloRelations reduction8890.relations reduction8890.input reduction8890.output := by lin_cert using reduction8890.terms
theorem substitutionProof8890 : IsMapEvaluation generatorImages reduction8890.relations [1,5,64,244] reduction8890.output := by lin_cert using reduction8890.terms
def map_40_196 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9020 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9020 : InImage map_40_196 image9020 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9020 : Bundle := named_bundle% "RealMapCertificates/relations/basis9020.json"
theorem reductionProof9020 : EqualModuloRelations reduction9020.relations reduction9020.input reduction9020.output := by lin_cert using reduction9020.terms
theorem substitutionProof9020 : IsMapEvaluation generatorImages reduction9020.relations [0,0,8,8,623] reduction9020.output := by lin_cert using reduction9020.terms
def image9021 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9021 : InImage map_40_196 image9021 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9021 : Bundle := named_bundle% "RealMapCertificates/relations/basis9021.json"
theorem reductionProof9021 : EqualModuloRelations reduction9021.relations reduction9021.input reduction9021.output := by lin_cert using reduction9021.terms
theorem substitutionProof9021 : IsMapEvaluation generatorImages reduction9021.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,919] reduction9021.output := by lin_cert using reduction9021.terms
def map_40_197 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9152 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9152 : InImage map_40_197 image9152 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9152 : Bundle := named_bundle% "RealMapCertificates/relations/basis9152.json"
theorem reductionProof9152 : EqualModuloRelations reduction9152.relations reduction9152.input reduction9152.output := by lin_cert using reduction9152.terms
theorem substitutionProof9152 : IsMapEvaluation generatorImages reduction9152.relations [8,8,8,8,8,206] reduction9152.output := by lin_cert using reduction9152.terms
def map_40_198 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9328 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9328 : InImage map_40_198 image9328 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9328 : Bundle := named_bundle% "RealMapCertificates/relations/basis9328.json"
theorem reductionProof9328 : EqualModuloRelations reduction9328.relations reduction9328.input reduction9328.output := by lin_cert using reduction9328.terms
theorem substitutionProof9328 : IsMapEvaluation generatorImages reduction9328.relations [8,16,64,137] reduction9328.output := by lin_cert using reduction9328.terms
def image9329 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9329 : InImage map_40_198 image9329 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9329 : Bundle := named_bundle% "RealMapCertificates/relations/basis9329.json"
theorem reductionProof9329 : EqualModuloRelations reduction9329.relations reduction9329.input reduction9329.output := by lin_cert using reduction9329.terms
theorem substitutionProof9329 : IsMapEvaluation generatorImages reduction9329.relations [8,8,8,8,8,17,113] reduction9329.output := by lin_cert using reduction9329.terms
def image9330 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9330 : InImage map_40_198 image9330 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9330 : Bundle := named_bundle% "RealMapCertificates/relations/basis9330.json"
theorem reductionProof9330 : EqualModuloRelations reduction9330.relations reduction9330.input reduction9330.output := by lin_cert using reduction9330.terms
theorem substitutionProof9330 : IsMapEvaluation generatorImages reduction9330.relations [8,8,8,8,8,8,8,13,13,13] reduction9330.output := by lin_cert using reduction9330.terms
def map_40_199 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image9489 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9489 : InImage map_40_199 image9489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9489 : Bundle := named_bundle% "RealMapCertificates/relations/basis9489.json"
theorem reductionProof9489 : EqualModuloRelations reduction9489.relations reduction9489.input reduction9489.output := by lin_cert using reduction9489.terms
theorem substitutionProof9489 : IsMapEvaluation generatorImages reduction9489.relations [1,1121] reduction9489.output := by lin_cert using reduction9489.terms
def image9490 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9490 : InImage map_40_199 image9490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9490 : Bundle := named_bundle% "RealMapCertificates/relations/basis9490.json"
theorem reductionProof9490 : EqualModuloRelations reduction9490.relations reduction9490.input reduction9490.output := by lin_cert using reduction9490.terms
theorem substitutionProof9490 : IsMapEvaluation generatorImages reduction9490.relations [0,0,8,8,8,491] reduction9490.output := by lin_cert using reduction9490.terms
def map_40_200 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9617 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9617 : InImage map_40_200 image9617 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9617 : Bundle := named_bundle% "RealMapCertificates/relations/basis9617.json"
theorem reductionProof9617 : EqualModuloRelations reduction9617.relations reduction9617.input reduction9617.output := by lin_cert using reduction9617.terms
theorem substitutionProof9617 : IsMapEvaluation generatorImages reduction9617.relations [1180] reduction9617.output := by lin_cert using reduction9617.terms
def image9618 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation9618 : InImage map_40_200 image9618 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9618 : Bundle := named_bundle% "RealMapCertificates/relations/basis9618.json"
theorem reductionProof9618 : EqualModuloRelations reduction9618.relations reduction9618.input reduction9618.output := by lin_cert using reduction9618.terms
theorem substitutionProof9618 : IsMapEvaluation generatorImages reduction9618.relations [8,8,8,8,8,8,149] reduction9618.output := by lin_cert using reduction9618.terms
def map_40_201 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image9819 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9819 : InImage map_40_201 image9819 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9819 : Bundle := named_bundle% "RealMapCertificates/relations/basis9819.json"
theorem reductionProof9819 : EqualModuloRelations reduction9819.relations reduction9819.input reduction9819.output := by lin_cert using reduction9819.terms
theorem substitutionProof9819 : IsMapEvaluation generatorImages reduction9819.relations [8,8,64,184] reduction9819.output := by lin_cert using reduction9819.terms
def image9820 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9820 : InImage map_40_201 image9820 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9820 : Bundle := named_bundle% "RealMapCertificates/relations/basis9820.json"
theorem reductionProof9820 : EqualModuloRelations reduction9820.relations reduction9820.input reduction9820.output := by lin_cert using reduction9820.terms
theorem substitutionProof9820 : IsMapEvaluation generatorImages reduction9820.relations [8,8,8,8,8,8,154] reduction9820.output := by lin_cert using reduction9820.terms
def image9821 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9821 : InImage map_40_201 image9821 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9821 : Bundle := named_bundle% "RealMapCertificates/relations/basis9821.json"
theorem reductionProof9821 : EqualModuloRelations reduction9821.relations reduction9821.input reduction9821.output := by lin_cert using reduction9821.terms
theorem substitutionProof9821 : IsMapEvaluation generatorImages reduction9821.relations [8,8,8,8,8,8,9,13,13,13] reduction9821.output := by lin_cert using reduction9821.terms
def map_40_203 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image10111 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10111 : InImage map_40_203 image10111 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10111 : Bundle := named_bundle% "RealMapCertificates/relations/basis10111.json"
theorem reductionProof10111 : EqualModuloRelations reduction10111.relations reduction10111.input reduction10111.output := by lin_cert using reduction10111.terms
theorem substitutionProof10111 : IsMapEvaluation generatorImages reduction10111.relations [137,245] reduction10111.output := by lin_cert using reduction10111.terms
def image10112 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10112 : InImage map_40_203 image10112 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10112 : Bundle := named_bundle% "RealMapCertificates/relations/basis10112.json"
theorem reductionProof10112 : EqualModuloRelations reduction10112.relations reduction10112.input reduction10112.output := by lin_cert using reduction10112.terms
theorem substitutionProof10112 : IsMapEvaluation generatorImages reduction10112.relations [17,17,491] reduction10112.output := by lin_cert using reduction10112.terms
def image10113 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10113 : InImage map_40_203 image10113 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10113 : Bundle := named_bundle% "RealMapCertificates/relations/basis10113.json"
theorem reductionProof10113 : EqualModuloRelations reduction10113.relations reduction10113.input reduction10113.output := by lin_cert using reduction10113.terms
theorem substitutionProof10113 : IsMapEvaluation generatorImages reduction10113.relations [8,8,8,8,8,8,160] reduction10113.output := by lin_cert using reduction10113.terms
def map_40_204 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10313 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10313 : InImage map_40_204 image10313 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10313 : Bundle := named_bundle% "RealMapCertificates/relations/basis10313.json"
theorem reductionProof10313 : EqualModuloRelations reduction10313.relations reduction10313.input reduction10313.output := by lin_cert using reduction10313.terms
theorem substitutionProof10313 : IsMapEvaluation generatorImages reduction10313.relations [8,8,8,64,137] reduction10313.output := by lin_cert using reduction10313.terms
def image10314 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10314 : InImage map_40_204 image10314 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10314 : Bundle := named_bundle% "RealMapCertificates/relations/basis10314.json"
theorem reductionProof10314 : EqualModuloRelations reduction10314.relations reduction10314.input reduction10314.output := by lin_cert using reduction10314.terms
theorem substitutionProof10314 : IsMapEvaluation generatorImages reduction10314.relations [8,8,8,8,8,8,162] reduction10314.output := by lin_cert using reduction10314.terms
def image10315 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10315 : InImage map_40_204 image10315 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10315 : Bundle := named_bundle% "RealMapCertificates/relations/basis10315.json"
theorem reductionProof10315 : EqualModuloRelations reduction10315.relations reduction10315.input reduction10315.output := by lin_cert using reduction10315.terms
theorem substitutionProof10315 : IsMapEvaluation generatorImages reduction10315.relations [8,8,8,8,8,8,13,13,13,13] reduction10315.output := by lin_cert using reduction10315.terms
def image10316 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10316 : InImage map_40_204 image10316 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10316 : Bundle := named_bundle% "RealMapCertificates/relations/basis10316.json"
theorem reductionProof10316 : EqualModuloRelations reduction10316.relations reduction10316.input reduction10316.output := by lin_cert using reduction10316.terms
theorem substitutionProof10316 : IsMapEvaluation generatorImages reduction10316.relations [0,137,246] reduction10316.output := by lin_cert using reduction10316.terms
def image10317 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10317 : InImage map_40_204 image10317 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10317 : Bundle := named_bundle% "RealMapCertificates/relations/basis10317.json"
theorem reductionProof10317 : EqualModuloRelations reduction10317.relations reduction10317.input reduction10317.output := by lin_cert using reduction10317.terms
theorem substitutionProof10317 : IsMapEvaluation generatorImages reduction10317.relations [0,59,491] reduction10317.output := by lin_cert using reduction10317.terms
def map_40_205 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image10491 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10491 : InImage map_40_205 image10491 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10491 : Bundle := named_bundle% "RealMapCertificates/relations/basis10491.json"
theorem reductionProof10491 : EqualModuloRelations reduction10491.relations reduction10491.input reduction10491.output := by lin_cert using reduction10491.terms
theorem substitutionProof10491 : IsMapEvaluation generatorImages reduction10491.relations [1,59,491] reduction10491.output := by lin_cert using reduction10491.terms
def image10492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10492 : InImage map_40_205 image10492 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10492 : Bundle := named_bundle% "RealMapCertificates/relations/basis10492.json"
theorem reductionProof10492 : EqualModuloRelations reduction10492.relations reduction10492.input reduction10492.output := by lin_cert using reduction10492.terms
theorem substitutionProof10492 : IsMapEvaluation generatorImages reduction10492.relations [0,0,0,1218] reduction10492.output := by lin_cert using reduction10492.terms
def map_40_206 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image10641 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10641 : InImage map_40_206 image10641 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10641 : Bundle := named_bundle% "RealMapCertificates/relations/basis10641.json"
theorem reductionProof10641 : EqualModuloRelations reduction10641.relations reduction10641.input reduction10641.output := by lin_cert using reduction10641.terms
theorem substitutionProof10641 : IsMapEvaluation generatorImages reduction10641.relations [17,17,516] reduction10641.output := by lin_cert using reduction10641.terms
def image10642 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10642 : InImage map_40_206 image10642 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10642 : Bundle := named_bundle% "RealMapCertificates/relations/basis10642.json"
theorem reductionProof10642 : EqualModuloRelations reduction10642.relations reduction10642.input reduction10642.output := by lin_cert using reduction10642.terms
theorem substitutionProof10642 : IsMapEvaluation generatorImages reduction10642.relations [8,971] reduction10642.output := by lin_cert using reduction10642.terms
def image10643 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10643 : InImage map_40_206 image10643 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10643 : Bundle := named_bundle% "RealMapCertificates/relations/basis10643.json"
theorem reductionProof10643 : EqualModuloRelations reduction10643.relations reduction10643.input reduction10643.output := by lin_cert using reduction10643.terms
theorem substitutionProof10643 : IsMapEvaluation generatorImages reduction10643.relations [8,8,8,8,8,8,166] reduction10643.output := by lin_cert using reduction10643.terms
def map_40_207 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10869 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10869 : InImage map_40_207 image10869 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10869 : Bundle := named_bundle% "RealMapCertificates/relations/basis10869.json"
theorem reductionProof10869 : EqualModuloRelations reduction10869.relations reduction10869.input reduction10869.output := by lin_cert using reduction10869.terms
theorem substitutionProof10869 : IsMapEvaluation generatorImages reduction10869.relations [8,8,8,64,146] reduction10869.output := by lin_cert using reduction10869.terms
def image10870 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10870 : InImage map_40_207 image10870 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10870 : Bundle := named_bundle% "RealMapCertificates/relations/basis10870.json"
theorem reductionProof10870 : EqualModuloRelations reduction10870.relations reduction10870.input reduction10870.output := by lin_cert using reduction10870.terms
theorem substitutionProof10870 : IsMapEvaluation generatorImages reduction10870.relations [8,8,8,8,8,9,13,13,13,13] reduction10870.output := by lin_cert using reduction10870.terms
def image10871 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10871 : InImage map_40_207 image10871 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10871 : Bundle := named_bundle% "RealMapCertificates/relations/basis10871.json"
theorem reductionProof10871 : EqualModuloRelations reduction10871.relations reduction10871.input reduction10871.output := by lin_cert using reduction10871.terms
theorem substitutionProof10871 : IsMapEvaluation generatorImages reduction10871.relations [8,8,8,8,8,8,17,80] reduction10871.output := by lin_cert using reduction10871.terms
end RealMapCertificates
