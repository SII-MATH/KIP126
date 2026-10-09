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
  | 22 => [[5,8]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 80 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 180 => [[5,10,12]]
  | 187 => []
  | 194 => [[7,10,12]]
  | 201 => []
  | 206 => [[4,6,8,12]]
  | 212 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 254 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 278 => []
  | 292 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 454 => []
  | 455 => []
  | 491 => []
  | 492 => []
  | 509 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 558 => []
  | 573 => []
  | 598 => [[0,6,9,12,12]]
  | 599 => []
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 642 => [[7,10,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 688 => []
  | 726 => []
  | 820 => [[5,5,5,7,12,12]]
  | 830 => []
  | 897 => []
  | 1034 => []
  | 1315 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1535 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 1772 => [[0,4,4,5,9,12,12,12]]
  | 1831 => [[4,4,6,9,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | _ => []
def map_40_208 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image11008 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation11008 : InImage map_40_208 image11008 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11008 : Bundle := named_bundle% "RealMapCertificates/relations/basis11008.json"
theorem reductionProof11008 : EqualModuloRelations reduction11008.relations reduction11008.input reduction11008.output := by lin_cert using reduction11008.terms
theorem substitutionProof11008 : IsMapEvaluation generatorImages reduction11008.relations [149,244] reduction11008.output := by lin_cert using reduction11008.terms
def map_40_209 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11171 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11171 : InImage map_40_209 image11171 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11171 : Bundle := named_bundle% "RealMapCertificates/relations/basis11171.json"
theorem reductionProof11171 : EqualModuloRelations reduction11171.relations reduction11171.input reduction11171.output := by lin_cert using reduction11171.terms
theorem substitutionProof11171 : IsMapEvaluation generatorImages reduction11171.relations [16,17,17,260] reduction11171.output := by lin_cert using reduction11171.terms
def image11172 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11172 : InImage map_40_209 image11172 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11172 : Bundle := named_bundle% "RealMapCertificates/relations/basis11172.json"
theorem reductionProof11172 : EqualModuloRelations reduction11172.relations reduction11172.input reduction11172.output := by lin_cert using reduction11172.terms
theorem substitutionProof11172 : IsMapEvaluation generatorImages reduction11172.relations [8,1034] reduction11172.output := by lin_cert using reduction11172.terms
def image11173 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11173 : InImage map_40_209 image11173 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11173 : Bundle := named_bundle% "RealMapCertificates/relations/basis11173.json"
theorem reductionProof11173 : EqualModuloRelations reduction11173.relations reduction11173.input reduction11173.output := by lin_cert using reduction11173.terms
theorem substitutionProof11173 : IsMapEvaluation generatorImages reduction11173.relations [8,8,8,8,8,8,180] reduction11173.output := by lin_cert using reduction11173.terms
def image11174 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11174 : InImage map_40_209 image11174 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11174 : Bundle := named_bundle% "RealMapCertificates/relations/basis11174.json"
theorem reductionProof11174 : EqualModuloRelations reduction11174.relations reduction11174.input reduction11174.output := by lin_cert using reduction11174.terms
theorem substitutionProof11174 : IsMapEvaluation generatorImages reduction11174.relations [0,1335] reduction11174.output := by lin_cert using reduction11174.terms
def map_40_210 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image11372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11372 : InImage map_40_210 image11372 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11372 : Bundle := named_bundle% "RealMapCertificates/relations/basis11372.json"
theorem reductionProof11372 : EqualModuloRelations reduction11372.relations reduction11372.input reduction11372.output := by lin_cert using reduction11372.terms
theorem substitutionProof11372 : IsMapEvaluation generatorImages reduction11372.relations [8,8,8,16,64,64] reduction11372.output := by lin_cert using reduction11372.terms
def image11373 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11373 : InImage map_40_210 image11373 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11373 : Bundle := named_bundle% "RealMapCertificates/relations/basis11373.json"
theorem reductionProof11373 : EqualModuloRelations reduction11373.relations reduction11373.input reduction11373.output := by lin_cert using reduction11373.terms
theorem substitutionProof11373 : IsMapEvaluation generatorImages reduction11373.relations [8,8,8,8,8,13,13,13,13,13] reduction11373.output := by lin_cert using reduction11373.terms
def image11374 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11374 : InImage map_40_210 image11374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11374 : Bundle := named_bundle% "RealMapCertificates/relations/basis11374.json"
theorem reductionProof11374 : EqualModuloRelations reduction11374.relations reduction11374.input reduction11374.output := by lin_cert using reduction11374.terms
theorem substitutionProof11374 : IsMapEvaluation generatorImages reduction11374.relations [8,8,8,8,8,8,20,80] reduction11374.output := by lin_cert using reduction11374.terms
def image11375 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11375 : InImage map_40_210 image11375 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11375 : Bundle := named_bundle% "RealMapCertificates/relations/basis11375.json"
theorem reductionProof11375 : EqualModuloRelations reduction11375.relations reduction11375.input reduction11375.output := by lin_cert using reduction11375.terms
theorem substitutionProof11375 : IsMapEvaluation generatorImages reduction11375.relations [0,0,0,0,64,491] reduction11375.output := by lin_cert using reduction11375.terms
def map_40_211 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image11553 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11553 : InImage map_40_211 image11553 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11553 : Bundle := named_bundle% "RealMapCertificates/relations/basis11553.json"
theorem reductionProof11553 : EqualModuloRelations reduction11553.relations reduction11553.input reduction11553.output := by lin_cert using reduction11553.terms
theorem substitutionProof11553 : IsMapEvaluation generatorImages reduction11553.relations [149,257] reduction11553.output := by lin_cert using reduction11553.terms
def image11554 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11554 : InImage map_40_211 image11554 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11554 : Bundle := named_bundle% "RealMapCertificates/relations/basis11554.json"
theorem reductionProof11554 : EqualModuloRelations reduction11554.relations reduction11554.input reduction11554.output := by lin_cert using reduction11554.terms
theorem substitutionProof11554 : IsMapEvaluation generatorImages reduction11554.relations [0,0,0,64,509] reduction11554.output := by lin_cert using reduction11554.terms
def image11555 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11555 : InImage map_40_211 image11555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11555 : Bundle := named_bundle% "RealMapCertificates/relations/basis11555.json"
theorem reductionProof11555 : EqualModuloRelations reduction11555.relations reduction11555.input reduction11555.output := by lin_cert using reduction11555.terms
theorem substitutionProof11555 : IsMapEvaluation generatorImages reduction11555.relations [0,0,0,0,0,138,260] reduction11555.output := by lin_cert using reduction11555.terms
def map_40_212 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11707 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11707 : InImage map_40_212 image11707 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11707 : Bundle := named_bundle% "RealMapCertificates/relations/basis11707.json"
theorem reductionProof11707 : EqualModuloRelations reduction11707.relations reduction11707.input reduction11707.output := by lin_cert using reduction11707.terms
theorem substitutionProof11707 : IsMapEvaluation generatorImages reduction11707.relations [8,17,17,380] reduction11707.output := by lin_cert using reduction11707.terms
def image11708 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11708 : InImage map_40_212 image11708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11708 : Bundle := named_bundle% "RealMapCertificates/relations/basis11708.json"
theorem reductionProof11708 : EqualModuloRelations reduction11708.relations reduction11708.input reduction11708.output := by lin_cert using reduction11708.terms
theorem substitutionProof11708 : IsMapEvaluation generatorImages reduction11708.relations [8,8,830] reduction11708.output := by lin_cert using reduction11708.terms
def image11709 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11709 : InImage map_40_212 image11709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11709 : Bundle := named_bundle% "RealMapCertificates/relations/basis11709.json"
theorem reductionProof11709 : EqualModuloRelations reduction11709.relations reduction11709.input reduction11709.output := by lin_cert using reduction11709.terms
theorem substitutionProof11709 : IsMapEvaluation generatorImages reduction11709.relations [8,8,8,8,8,8,194] reduction11709.output := by lin_cert using reduction11709.terms
def image11710 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11710 : InImage map_40_212 image11710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11710 : Bundle := named_bundle% "RealMapCertificates/relations/basis11710.json"
theorem reductionProof11710 : EqualModuloRelations reduction11710.relations reduction11710.input reduction11710.output := by lin_cert using reduction11710.terms
theorem substitutionProof11710 : IsMapEvaluation generatorImages reduction11710.relations [0,0,0,0,0,1315] reduction11710.output := by lin_cert using reduction11710.terms
def map_40_213 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image11955 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11955 : InImage map_40_213 image11955 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11955 : Bundle := named_bundle% "RealMapCertificates/relations/basis11955.json"
theorem reductionProof11955 : EqualModuloRelations reduction11955.relations reduction11955.input reduction11955.output := by lin_cert using reduction11955.terms
theorem substitutionProof11955 : IsMapEvaluation generatorImages reduction11955.relations [8,8,8,8,64,112] reduction11955.output := by lin_cert using reduction11955.terms
def image11956 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11956 : InImage map_40_213 image11956 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11956 : Bundle := named_bundle% "RealMapCertificates/relations/basis11956.json"
theorem reductionProof11956 : EqualModuloRelations reduction11956.relations reduction11956.input reduction11956.output := by lin_cert using reduction11956.terms
theorem substitutionProof11956 : IsMapEvaluation generatorImages reduction11956.relations [8,8,8,8,9,13,13,13,13,13] reduction11956.output := by lin_cert using reduction11956.terms
def image11957 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11957 : InImage map_40_213 image11957 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11957 : Bundle := named_bundle% "RealMapCertificates/relations/basis11957.json"
theorem reductionProof11957 : EqualModuloRelations reduction11957.relations reduction11957.input reduction11957.output := by lin_cert using reduction11957.terms
theorem substitutionProof11957 : IsMapEvaluation generatorImages reduction11957.relations [8,8,8,8,8,8,22,80] reduction11957.output := by lin_cert using reduction11957.terms
def map_40_214 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12133 : InImage map_40_214 image12133 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12133 : Bundle := named_bundle% "RealMapCertificates/relations/basis12133.json"
theorem reductionProof12133 : EqualModuloRelations reduction12133.relations reduction12133.input reduction12133.output := by lin_cert using reduction12133.terms
theorem substitutionProof12133 : IsMapEvaluation generatorImages reduction12133.relations [16,149,149] reduction12133.output := by lin_cert using reduction12133.terms
def map_40_215 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image12306 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12306 : InImage map_40_215 image12306 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12306 : Bundle := named_bundle% "RealMapCertificates/relations/basis12306.json"
theorem reductionProof12306 : EqualModuloRelations reduction12306.relations reduction12306.input reduction12306.output := by lin_cert using reduction12306.terms
theorem substitutionProof12306 : IsMapEvaluation generatorImages reduction12306.relations [8,8,64,245] reduction12306.output := by lin_cert using reduction12306.terms
def image12307 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12307 : InImage map_40_215 image12307 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12307 : Bundle := named_bundle% "RealMapCertificates/relations/basis12307.json"
theorem reductionProof12307 : EqualModuloRelations reduction12307.relations reduction12307.input reduction12307.output := by lin_cert using reduction12307.terms
theorem substitutionProof12307 : IsMapEvaluation generatorImages reduction12307.relations [8,8,17,17,260] reduction12307.output := by lin_cert using reduction12307.terms
def image12308 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12308 : InImage map_40_215 image12308 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12308 : Bundle := named_bundle% "RealMapCertificates/relations/basis12308.json"
theorem reductionProof12308 : EqualModuloRelations reduction12308.relations reduction12308.input reduction12308.output := by lin_cert using reduction12308.terms
theorem substitutionProof12308 : IsMapEvaluation generatorImages reduction12308.relations [8,8,8,8,8,9,194] reduction12308.output := by lin_cert using reduction12308.terms
def image12309 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12309 : InImage map_40_215 image12309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12309 : Bundle := named_bundle% "RealMapCertificates/relations/basis12309.json"
theorem reductionProof12309 : EqualModuloRelations reduction12309.relations reduction12309.input reduction12309.output := by lin_cert using reduction12309.terms
theorem substitutionProof12309 : IsMapEvaluation generatorImages reduction12309.relations [0,0,64,64,137] reduction12309.output := by lin_cert using reduction12309.terms
def map_40_216 : Matrix 3 4 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image12517 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12517 : InImage map_40_216 image12517 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12517 : Bundle := named_bundle% "RealMapCertificates/relations/basis12517.json"
theorem reductionProof12517 : EqualModuloRelations reduction12517.relations reduction12517.input reduction12517.output := by lin_cert using reduction12517.terms
theorem substitutionProof12517 : IsMapEvaluation generatorImages reduction12517.relations [8,8,8,8,13,13,13,13,13,13] reduction12517.output := by lin_cert using reduction12517.terms
def image12518 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12518 : InImage map_40_216 image12518 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12518 : Bundle := named_bundle% "RealMapCertificates/relations/basis12518.json"
theorem reductionProof12518 : EqualModuloRelations reduction12518.relations reduction12518.input reduction12518.output := by lin_cert using reduction12518.terms
theorem substitutionProof12518 : IsMapEvaluation generatorImages reduction12518.relations [8,8,8,8,8,64,64] reduction12518.output := by lin_cert using reduction12518.terms
def image12519 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12519 : InImage map_40_216 image12519 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12519 : Bundle := named_bundle% "RealMapCertificates/relations/basis12519.json"
theorem reductionProof12519 : EqualModuloRelations reduction12519.relations reduction12519.input reduction12519.output := by lin_cert using reduction12519.terms
theorem substitutionProof12519 : IsMapEvaluation generatorImages reduction12519.relations [8,8,8,8,8,8,23,89] reduction12519.output := by lin_cert using reduction12519.terms
def image12520 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12520 : InImage map_40_216 image12520 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12520 : Bundle := named_bundle% "RealMapCertificates/relations/basis12520.json"
theorem reductionProof12520 : EqualModuloRelations reduction12520.relations reduction12520.input reduction12520.output := by lin_cert using reduction12520.terms
theorem substitutionProof12520 : IsMapEvaluation generatorImages reduction12520.relations [0,0,0,64,64,138] reduction12520.output := by lin_cert using reduction12520.terms
def map_40_217 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12703 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12703 : InImage map_40_217 image12703 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12703 : Bundle := named_bundle% "RealMapCertificates/relations/basis12703.json"
theorem reductionProof12703 : EqualModuloRelations reduction12703.relations reduction12703.input reduction12703.output := by lin_cert using reduction12703.terms
theorem substitutionProof12703 : IsMapEvaluation generatorImages reduction12703.relations [8,149,206] reduction12703.output := by lin_cert using reduction12703.terms
def image12704 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12704 : InImage map_40_217 image12704 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12704 : Bundle := named_bundle% "RealMapCertificates/relations/basis12704.json"
theorem reductionProof12704 : EqualModuloRelations reduction12704.relations reduction12704.input reduction12704.output := by lin_cert using reduction12704.terms
theorem substitutionProof12704 : IsMapEvaluation generatorImages reduction12704.relations [1,1,64,64,137] reduction12704.output := by lin_cert using reduction12704.terms
def image12705 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12705 : InImage map_40_217 image12705 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12705 : Bundle := named_bundle% "RealMapCertificates/relations/basis12705.json"
theorem reductionProof12705 : EqualModuloRelations reduction12705.relations reduction12705.input reduction12705.output := by lin_cert using reduction12705.terms
theorem substitutionProof12705 : IsMapEvaluation generatorImages reduction12705.relations [0,0,0,0,0,0,149,260] reduction12705.output := by lin_cert using reduction12705.terms
def map_40_218 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image12861 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12861 : InImage map_40_218 image12861 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12861 : Bundle := named_bundle% "RealMapCertificates/relations/basis12861.json"
theorem reductionProof12861 : EqualModuloRelations reduction12861.relations reduction12861.input reduction12861.output := by lin_cert using reduction12861.terms
theorem substitutionProof12861 : IsMapEvaluation generatorImages reduction12861.relations [8,8,17,17,278] reduction12861.output := by lin_cert using reduction12861.terms
def image12862 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12862 : InImage map_40_218 image12862 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12862 : Bundle := named_bundle% "RealMapCertificates/relations/basis12862.json"
theorem reductionProof12862 : EqualModuloRelations reduction12862.relations reduction12862.input reduction12862.output := by lin_cert using reduction12862.terms
theorem substitutionProof12862 : IsMapEvaluation generatorImages reduction12862.relations [8,8,8,688] reduction12862.output := by lin_cert using reduction12862.terms
def image12863 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12863 : InImage map_40_218 image12863 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12863 : Bundle := named_bundle% "RealMapCertificates/relations/basis12863.json"
theorem reductionProof12863 : EqualModuloRelations reduction12863.relations reduction12863.input reduction12863.output := by lin_cert using reduction12863.terms
theorem substitutionProof12863 : IsMapEvaluation generatorImages reduction12863.relations [8,8,8,8,8,13,194] reduction12863.output := by lin_cert using reduction12863.terms
def image12864 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12864 : InImage map_40_218 image12864 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12864 : Bundle := named_bundle% "RealMapCertificates/relations/basis12864.json"
theorem reductionProof12864 : EqualModuloRelations reduction12864.relations reduction12864.input reduction12864.output := by lin_cert using reduction12864.terms
theorem substitutionProof12864 : IsMapEvaluation generatorImages reduction12864.relations [0,0,0,0,0,64,558] reduction12864.output := by lin_cert using reduction12864.terms
def map_40_219 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13106 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13106 : InImage map_40_219 image13106 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13106 : Bundle := named_bundle% "RealMapCertificates/relations/basis13106.json"
theorem reductionProof13106 : EqualModuloRelations reduction13106.relations reduction13106.input reduction13106.output := by lin_cert using reduction13106.terms
theorem substitutionProof13106 : IsMapEvaluation generatorImages reduction13106.relations [8,8,8,9,13,13,13,13,13,13] reduction13106.output := by lin_cert using reduction13106.terms
def image13107 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13107 : InImage map_40_219 image13107 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13107 : Bundle := named_bundle% "RealMapCertificates/relations/basis13107.json"
theorem reductionProof13107 : EqualModuloRelations reduction13107.relations reduction13107.input reduction13107.output := by lin_cert using reduction13107.terms
theorem substitutionProof13107 : IsMapEvaluation generatorImages reduction13107.relations [8,8,8,8,8,64,72] reduction13107.output := by lin_cert using reduction13107.terms
def image13108 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13108 : InImage map_40_219 image13108 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13108 : Bundle := named_bundle% "RealMapCertificates/relations/basis13108.json"
theorem reductionProof13108 : EqualModuloRelations reduction13108.relations reduction13108.input reduction13108.output := by lin_cert using reduction13108.terms
theorem substitutionProof13108 : IsMapEvaluation generatorImages reduction13108.relations [8,8,8,8,8,8,23,101] reduction13108.output := by lin_cert using reduction13108.terms
def map_40_220 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image13255 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13255 : InImage map_40_220 image13255 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13255 : Bundle := named_bundle% "RealMapCertificates/relations/basis13255.json"
theorem reductionProof13255 : EqualModuloRelations reduction13255.relations reduction13255.input reduction13255.output := by lin_cert using reduction13255.terms
theorem substitutionProof13255 : IsMapEvaluation generatorImages reduction13255.relations [8,8,149,149] reduction13255.output := by lin_cert using reduction13255.terms
def map_40_221 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image13431 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13431 : InImage map_40_221 image13431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13431 : Bundle := named_bundle% "RealMapCertificates/relations/basis13431.json"
theorem reductionProof13431 : EqualModuloRelations reduction13431.relations reduction13431.input reduction13431.output := by lin_cert using reduction13431.terms
theorem substitutionProof13431 : IsMapEvaluation generatorImages reduction13431.relations [64,623] reduction13431.output := by lin_cert using reduction13431.terms
def image13432 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13432 : InImage map_40_221 image13432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13432 : Bundle := named_bundle% "RealMapCertificates/relations/basis13432.json"
theorem reductionProof13432 : EqualModuloRelations reduction13432.relations reduction13432.input reduction13432.output := by lin_cert using reduction13432.terms
theorem substitutionProof13432 : IsMapEvaluation generatorImages reduction13432.relations [8,8,16,17,292] reduction13432.output := by lin_cert using reduction13432.terms
def image13433 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13433 : InImage map_40_221 image13433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13433 : Bundle := named_bundle% "RealMapCertificates/relations/basis13433.json"
theorem reductionProof13433 : EqualModuloRelations reduction13433.relations reduction13433.input reduction13433.output := by lin_cert using reduction13433.terms
theorem substitutionProof13433 : IsMapEvaluation generatorImages reduction13433.relations [8,8,8,726] reduction13433.output := by lin_cert using reduction13433.terms
def image13434 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13434 : InImage map_40_221 image13434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13434 : Bundle := named_bundle% "RealMapCertificates/relations/basis13434.json"
theorem reductionProof13434 : EqualModuloRelations reduction13434.relations reduction13434.input reduction13434.output := by lin_cert using reduction13434.terms
theorem substitutionProof13434 : IsMapEvaluation generatorImages reduction13434.relations [8,8,8,8,9,13,194] reduction13434.output := by lin_cert using reduction13434.terms
def image13435 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13435 : InImage map_40_221 image13435 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13435 : Bundle := named_bundle% "RealMapCertificates/relations/basis13435.json"
theorem reductionProof13435 : EqualModuloRelations reduction13435.relations reduction13435.input reduction13435.output := by lin_cert using reduction13435.terms
theorem substitutionProof13435 : IsMapEvaluation generatorImages reduction13435.relations [1,1535] reduction13435.output := by lin_cert using reduction13435.terms
def map_40_222 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image13657 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13657 : InImage map_40_222 image13657 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction13657 : Bundle := named_bundle% "RealMapCertificates/relations/basis13657.json"
theorem reductionProof13657 : EqualModuloRelations reduction13657.relations reduction13657.input reduction13657.output := by lin_cert using reduction13657.terms
theorem substitutionProof13657 : IsMapEvaluation generatorImages reduction13657.relations [64,637] reduction13657.output := by lin_cert using reduction13657.terms
def image13658 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13658 : InImage map_40_222 image13658 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction13658 : Bundle := named_bundle% "RealMapCertificates/relations/basis13658.json"
theorem reductionProof13658 : EqualModuloRelations reduction13658.relations reduction13658.input reduction13658.output := by lin_cert using reduction13658.terms
theorem substitutionProof13658 : IsMapEvaluation generatorImages reduction13658.relations [8,8,8,13,13,13,13,13,13,13] reduction13658.output := by lin_cert using reduction13658.terms
def image13659 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13659 : InImage map_40_222 image13659 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction13659 : Bundle := named_bundle% "RealMapCertificates/relations/basis13659.json"
theorem reductionProof13659 : EqualModuloRelations reduction13659.relations reduction13659.input reduction13659.output := by lin_cert using reduction13659.terms
theorem substitutionProof13659 : IsMapEvaluation generatorImages reduction13659.relations [8,8,8,8,8,16,187] reduction13659.output := by lin_cert using reduction13659.terms
def image13660 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13660 : InImage map_40_222 image13660 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction13660 : Bundle := named_bundle% "RealMapCertificates/relations/basis13660.json"
theorem reductionProof13660 : EqualModuloRelations reduction13660.relations reduction13660.input reduction13660.output := by lin_cert using reduction13660.terms
theorem substitutionProof13660 : IsMapEvaluation generatorImages reduction13660.relations [8,8,8,8,8,9,23,101] reduction13660.output := by lin_cert using reduction13660.terms
def image13661 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13661 : InImage map_40_222 image13661 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction13661 : Bundle := named_bundle% "RealMapCertificates/relations/basis13661.json"
theorem reductionProof13661 : EqualModuloRelations reduction13661.relations reduction13661.input reduction13661.output := by lin_cert using reduction13661.terms
theorem substitutionProof13661 : IsMapEvaluation generatorImages reduction13661.relations [0,113,491] reduction13661.output := by lin_cert using reduction13661.terms
def image13662 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13662 : InImage map_40_222 image13662 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction13662 : Bundle := named_bundle% "RealMapCertificates/relations/basis13662.json"
theorem reductionProof13662 : EqualModuloRelations reduction13662.relations reduction13662.input reduction13662.output := by lin_cert using reduction13662.terms
theorem substitutionProof13662 : IsMapEvaluation generatorImages reduction13662.relations [0,0,0,0,64,64,149] reduction13662.output := by lin_cert using reduction13662.terms
def map_40_223 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13832 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13832 : InImage map_40_223 image13832 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13832 : Bundle := named_bundle% "RealMapCertificates/relations/basis13832.json"
theorem reductionProof13832 : EqualModuloRelations reduction13832.relations reduction13832.input reduction13832.output := by lin_cert using reduction13832.terms
theorem substitutionProof13832 : IsMapEvaluation generatorImages reduction13832.relations [8,8,149,160] reduction13832.output := by lin_cert using reduction13832.terms
def image13833 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13833 : InImage map_40_223 image13833 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13833 : Bundle := named_bundle% "RealMapCertificates/relations/basis13833.json"
theorem reductionProof13833 : EqualModuloRelations reduction13833.relations reduction13833.input reduction13833.output := by lin_cert using reduction13833.terms
theorem substitutionProof13833 : IsMapEvaluation generatorImages reduction13833.relations [0,0,0,0,0,64,598] reduction13833.output := by lin_cert using reduction13833.terms
def map_40_224 : Matrix 2 4 := fun i j => ([false,false,false,true,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13987 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13987 : InImage map_40_224 image13987 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13987 : Bundle := named_bundle% "RealMapCertificates/relations/basis13987.json"
theorem reductionProof13987 : EqualModuloRelations reduction13987.relations reduction13987.input reduction13987.output := by lin_cert using reduction13987.terms
theorem substitutionProof13987 : IsMapEvaluation generatorImages reduction13987.relations [8,64,491] reduction13987.output := by lin_cert using reduction13987.terms
def image13988 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13988 : InImage map_40_224 image13988 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13988 : Bundle := named_bundle% "RealMapCertificates/relations/basis13988.json"
theorem reductionProof13988 : EqualModuloRelations reduction13988.relations reduction13988.input reduction13988.output := by lin_cert using reduction13988.terms
theorem substitutionProof13988 : IsMapEvaluation generatorImages reduction13988.relations [8,8,8,17,454] reduction13988.output := by lin_cert using reduction13988.terms
def image13989 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13989 : InImage map_40_224 image13989 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13989 : Bundle := named_bundle% "RealMapCertificates/relations/basis13989.json"
theorem reductionProof13989 : EqualModuloRelations reduction13989.relations reduction13989.input reduction13989.output := by lin_cert using reduction13989.terms
theorem substitutionProof13989 : IsMapEvaluation generatorImages reduction13989.relations [8,8,8,8,573] reduction13989.output := by lin_cert using reduction13989.terms
def image13990 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13990 : InImage map_40_224 image13990 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13990 : Bundle := named_bundle% "RealMapCertificates/relations/basis13990.json"
theorem reductionProof13990 : EqualModuloRelations reduction13990.relations reduction13990.input reduction13990.output := by lin_cert using reduction13990.terms
theorem substitutionProof13990 : IsMapEvaluation generatorImages reduction13990.relations [8,8,8,8,13,13,194] reduction13990.output := by lin_cert using reduction13990.terms
def map_40_225 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14226 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14226 : InImage map_40_225 image14226 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14226 : Bundle := named_bundle% "RealMapCertificates/relations/basis14226.json"
theorem reductionProof14226 : EqualModuloRelations reduction14226.relations reduction14226.input reduction14226.output := by lin_cert using reduction14226.terms
theorem substitutionProof14226 : IsMapEvaluation generatorImages reduction14226.relations [64,664] reduction14226.output := by lin_cert using reduction14226.terms
def image14227 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14227 : InImage map_40_225 image14227 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14227 : Bundle := named_bundle% "RealMapCertificates/relations/basis14227.json"
theorem reductionProof14227 : EqualModuloRelations reduction14227.relations reduction14227.input reduction14227.output := by lin_cert using reduction14227.terms
theorem substitutionProof14227 : IsMapEvaluation generatorImages reduction14227.relations [8,8,9,13,13,13,13,13,13,13] reduction14227.output := by lin_cert using reduction14227.terms
def image14228 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14228 : InImage map_40_225 image14228 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14228 : Bundle := named_bundle% "RealMapCertificates/relations/basis14228.json"
theorem reductionProof14228 : EqualModuloRelations reduction14228.relations reduction14228.input reduction14228.output := by lin_cert using reduction14228.terms
theorem substitutionProof14228 : IsMapEvaluation generatorImages reduction14228.relations [8,8,8,8,8,13,23,101] reduction14228.output := by lin_cert using reduction14228.terms
def image14229 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14229 : InImage map_40_225 image14229 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14229 : Bundle := named_bundle% "RealMapCertificates/relations/basis14229.json"
theorem reductionProof14229 : EqualModuloRelations reduction14229.relations reduction14229.input reduction14229.output := by lin_cert using reduction14229.terms
theorem substitutionProof14229 : IsMapEvaluation generatorImages reduction14229.relations [8,8,8,8,8,8,254] reduction14229.output := by lin_cert using reduction14229.terms
def image14230 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14230 : InImage map_40_225 image14230 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14230 : Bundle := named_bundle% "RealMapCertificates/relations/basis14230.json"
theorem reductionProof14230 : EqualModuloRelations reduction14230.relations reduction14230.input reduction14230.output := by lin_cert using reduction14230.terms
theorem substitutionProof14230 : IsMapEvaluation generatorImages reduction14230.relations [0,8,138,260] reduction14230.output := by lin_cert using reduction14230.terms
def map_40_226 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14383 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14383 : InImage map_40_226 image14383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14383 : Bundle := named_bundle% "RealMapCertificates/relations/basis14383.json"
theorem reductionProof14383 : EqualModuloRelations reduction14383.relations reduction14383.input reduction14383.output := by lin_cert using reduction14383.terms
theorem substitutionProof14383 : IsMapEvaluation generatorImages reduction14383.relations [8,8,16,642] reduction14383.output := by lin_cert using reduction14383.terms
def map_40_227 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image14561 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14561 : InImage map_40_227 image14561 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14561 : Bundle := named_bundle% "RealMapCertificates/relations/basis14561.json"
theorem reductionProof14561 : EqualModuloRelations reduction14561.relations reduction14561.input reduction14561.output := by lin_cert using reduction14561.terms
theorem substitutionProof14561 : IsMapEvaluation generatorImages reduction14561.relations [8,64,516] reduction14561.output := by lin_cert using reduction14561.terms
def image14562 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14562 : InImage map_40_227 image14562 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14562 : Bundle := named_bundle% "RealMapCertificates/relations/basis14562.json"
theorem reductionProof14562 : EqualModuloRelations reduction14562.relations reduction14562.input reduction14562.output := by lin_cert using reduction14562.terms
theorem substitutionProof14562 : IsMapEvaluation generatorImages reduction14562.relations [8,8,8,9,13,13,194] reduction14562.output := by lin_cert using reduction14562.terms
def image14563 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14563 : InImage map_40_227 image14563 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14563 : Bundle := named_bundle% "RealMapCertificates/relations/basis14563.json"
theorem reductionProof14563 : EqualModuloRelations reduction14563.relations reduction14563.input reduction14563.output := by lin_cert using reduction14563.terms
theorem substitutionProof14563 : IsMapEvaluation generatorImages reduction14563.relations [8,8,8,8,599] reduction14563.output := by lin_cert using reduction14563.terms
def image14564 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14564 : InImage map_40_227 image14564 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14564 : Bundle := named_bundle% "RealMapCertificates/relations/basis14564.json"
theorem reductionProof14564 : EqualModuloRelations reduction14564.relations reduction14564.input reduction14564.output := by lin_cert using reduction14564.terms
theorem substitutionProof14564 : IsMapEvaluation generatorImages reduction14564.relations [8,8,8,8,17,292] reduction14564.output := by lin_cert using reduction14564.terms
def image14565 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14565 : InImage map_40_227 image14565 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14565 : Bundle := named_bundle% "RealMapCertificates/relations/basis14565.json"
theorem reductionProof14565 : EqualModuloRelations reduction14565.relations reduction14565.input reduction14565.output := by lin_cert using reduction14565.terms
theorem substitutionProof14565 : IsMapEvaluation generatorImages reduction14565.relations [1,5,149,260] reduction14565.output := by lin_cert using reduction14565.terms
def map_40_228 : Matrix 3 6 := fun i j => ([false,false,true,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image14796 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation14796 : InImage map_40_228 image14796 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction14796 : Bundle := named_bundle% "RealMapCertificates/relations/basis14796.json"
theorem reductionProof14796 : EqualModuloRelations reduction14796.relations reduction14796.input reduction14796.output := by lin_cert using reduction14796.terms
theorem substitutionProof14796 : IsMapEvaluation generatorImages reduction14796.relations [1686] reduction14796.output := by lin_cert using reduction14796.terms
def image14797 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14797 : InImage map_40_228 image14797 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction14797 : Bundle := named_bundle% "RealMapCertificates/relations/basis14797.json"
theorem reductionProof14797 : EqualModuloRelations reduction14797.relations reduction14797.input reduction14797.output := by lin_cert using reduction14797.terms
theorem substitutionProof14797 : IsMapEvaluation generatorImages reduction14797.relations [8,64,529] reduction14797.output := by lin_cert using reduction14797.terms
def image14798 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14798 : InImage map_40_228 image14798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction14798 : Bundle := named_bundle% "RealMapCertificates/relations/basis14798.json"
theorem reductionProof14798 : EqualModuloRelations reduction14798.relations reduction14798.input reduction14798.output := by lin_cert using reduction14798.terms
theorem substitutionProof14798 : IsMapEvaluation generatorImages reduction14798.relations [8,8,13,13,13,13,13,13,13,13] reduction14798.output := by lin_cert using reduction14798.terms
def image14799 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14799 : InImage map_40_228 image14799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction14799 : Bundle := named_bundle% "RealMapCertificates/relations/basis14799.json"
theorem reductionProof14799 : EqualModuloRelations reduction14799.relations reduction14799.input reduction14799.output := by lin_cert using reduction14799.terms
theorem substitutionProof14799 : IsMapEvaluation generatorImages reduction14799.relations [8,8,8,8,9,13,23,101] reduction14799.output := by lin_cert using reduction14799.terms
def image14800 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14800 : InImage map_40_228 image14800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction14800 : Bundle := named_bundle% "RealMapCertificates/relations/basis14800.json"
theorem reductionProof14800 : EqualModuloRelations reduction14800.relations reduction14800.input reduction14800.output := by lin_cert using reduction14800.terms
theorem substitutionProof14800 : IsMapEvaluation generatorImages reduction14800.relations [8,8,8,8,8,8,8,187] reduction14800.output := by lin_cert using reduction14800.terms
def image14801 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14801 : InImage map_40_228 image14801 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction14801 : Bundle := named_bundle% "RealMapCertificates/relations/basis14801.json"
theorem reductionProof14801 : EqualModuloRelations reduction14801.relations reduction14801.input reduction14801.output := by lin_cert using reduction14801.terms
theorem substitutionProof14801 : IsMapEvaluation generatorImages reduction14801.relations [0,8,138,278] reduction14801.output := by lin_cert using reduction14801.terms
def map_40_229 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14986 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14986 : InImage map_40_229 image14986 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14986 : Bundle := named_bundle% "RealMapCertificates/relations/basis14986.json"
theorem reductionProof14986 : EqualModuloRelations reduction14986.relations reduction14986.input reduction14986.output := by lin_cert using reduction14986.terms
theorem substitutionProof14986 : IsMapEvaluation generatorImages reduction14986.relations [8,8,8,820] reduction14986.output := by lin_cert using reduction14986.terms
def map_40_230 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image15158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15158 : InImage map_40_230 image15158 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15158 : Bundle := named_bundle% "RealMapCertificates/relations/basis15158.json"
theorem reductionProof15158 : EqualModuloRelations reduction15158.relations reduction15158.input reduction15158.output := by lin_cert using reduction15158.terms
theorem substitutionProof15158 : IsMapEvaluation generatorImages reduction15158.relations [1736] reduction15158.output := by lin_cert using reduction15158.terms
def image15159 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15159 : InImage map_40_230 image15159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15159 : Bundle := named_bundle% "RealMapCertificates/relations/basis15159.json"
theorem reductionProof15159 : EqualModuloRelations reduction15159.relations reduction15159.input reduction15159.output := by lin_cert using reduction15159.terms
theorem substitutionProof15159 : IsMapEvaluation generatorImages reduction15159.relations [8,16,64,260] reduction15159.output := by lin_cert using reduction15159.terms
def image15160 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15160 : InImage map_40_230 image15160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15160 : Bundle := named_bundle% "RealMapCertificates/relations/basis15160.json"
theorem reductionProof15160 : EqualModuloRelations reduction15160.relations reduction15160.input reduction15160.output := by lin_cert using reduction15160.terms
theorem substitutionProof15160 : IsMapEvaluation generatorImages reduction15160.relations [8,8,8,13,13,13,194] reduction15160.output := by lin_cert using reduction15160.terms
def image15161 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15161 : InImage map_40_230 image15161 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15161 : Bundle := named_bundle% "RealMapCertificates/relations/basis15161.json"
theorem reductionProof15161 : EqualModuloRelations reduction15161.relations reduction15161.input reduction15161.output := by lin_cert using reduction15161.terms
theorem substitutionProof15161 : IsMapEvaluation generatorImages reduction15161.relations [8,8,8,8,20,292] reduction15161.output := by lin_cert using reduction15161.terms
def image15162 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15162 : InImage map_40_230 image15162 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15162 : Bundle := named_bundle% "RealMapCertificates/relations/basis15162.json"
theorem reductionProof15162 : EqualModuloRelations reduction15162.relations reduction15162.input reduction15162.output := by lin_cert using reduction15162.terms
theorem substitutionProof15162 : IsMapEvaluation generatorImages reduction15162.relations [8,8,8,8,8,455] reduction15162.output := by lin_cert using reduction15162.terms
def map_40_231 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image15423 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15423 : InImage map_40_231 image15423 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction15423 : Bundle := named_bundle% "RealMapCertificates/relations/basis15423.json"
theorem reductionProof15423 : EqualModuloRelations reduction15423.relations reduction15423.input reduction15423.output := by lin_cert using reduction15423.terms
theorem substitutionProof15423 : IsMapEvaluation generatorImages reduction15423.relations [1752] reduction15423.output := by lin_cert using reduction15423.terms
def image15424 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15424 : InImage map_40_231 image15424 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction15424 : Bundle := named_bundle% "RealMapCertificates/relations/basis15424.json"
theorem reductionProof15424 : EqualModuloRelations reduction15424.relations reduction15424.input reduction15424.output := by lin_cert using reduction15424.terms
theorem substitutionProof15424 : IsMapEvaluation generatorImages reduction15424.relations [8,64,557] reduction15424.output := by lin_cert using reduction15424.terms
def image15425 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15425 : InImage map_40_231 image15425 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction15425 : Bundle := named_bundle% "RealMapCertificates/relations/basis15425.json"
theorem reductionProof15425 : EqualModuloRelations reduction15425.relations reduction15425.input reduction15425.output := by lin_cert using reduction15425.terms
theorem substitutionProof15425 : IsMapEvaluation generatorImages reduction15425.relations [8,9,13,13,13,13,13,13,13,13] reduction15425.output := by lin_cert using reduction15425.terms
def image15426 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15426 : InImage map_40_231 image15426 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction15426 : Bundle := named_bundle% "RealMapCertificates/relations/basis15426.json"
theorem reductionProof15426 : EqualModuloRelations reduction15426.relations reduction15426.input reduction15426.output := by lin_cert using reduction15426.terms
theorem substitutionProof15426 : IsMapEvaluation generatorImages reduction15426.relations [8,8,8,8,13,13,23,101] reduction15426.output := by lin_cert using reduction15426.terms
def image15427 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15427 : InImage map_40_231 image15427 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction15427 : Bundle := named_bundle% "RealMapCertificates/relations/basis15427.json"
theorem reductionProof15427 : EqualModuloRelations reduction15427.relations reduction15427.input reduction15427.output := by lin_cert using reduction15427.terms
theorem substitutionProof15427 : IsMapEvaluation generatorImages reduction15427.relations [8,8,8,8,8,8,8,201] reduction15427.output := by lin_cert using reduction15427.terms
def image15428 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15428 : InImage map_40_231 image15428 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction15428 : Bundle := named_bundle% "RealMapCertificates/relations/basis15428.json"
theorem reductionProof15428 : EqualModuloRelations reduction15428.relations reduction15428.input reduction15428.output := by lin_cert using reduction15428.terms
theorem substitutionProof15428 : IsMapEvaluation generatorImages reduction15428.relations [0,1737] reduction15428.output := by lin_cert using reduction15428.terms
def image15429 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15429 : InImage map_40_231 image15429 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction15429 : Bundle := named_bundle% "RealMapCertificates/relations/basis15429.json"
theorem reductionProof15429 : EqualModuloRelations reduction15429.relations reduction15429.input reduction15429.output := by lin_cert using reduction15429.terms
theorem substitutionProof15429 : IsMapEvaluation generatorImages reduction15429.relations [0,8,16,897] reduction15429.output := by lin_cert using reduction15429.terms
def map_40_232 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image15611 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation15611 : InImage map_40_232 image15611 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15611 : Bundle := named_bundle% "RealMapCertificates/relations/basis15611.json"
theorem reductionProof15611 : EqualModuloRelations reduction15611.relations reduction15611.input reduction15611.output := by lin_cert using reduction15611.terms
theorem substitutionProof15611 : IsMapEvaluation generatorImages reduction15611.relations [1772] reduction15611.output := by lin_cert using reduction15611.terms
def image15612 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15612 : InImage map_40_232 image15612 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15612 : Bundle := named_bundle% "RealMapCertificates/relations/basis15612.json"
theorem reductionProof15612 : EqualModuloRelations reduction15612.relations reduction15612.input reduction15612.output := by lin_cert using reduction15612.terms
theorem substitutionProof15612 : IsMapEvaluation generatorImages reduction15612.relations [8,8,8,8,642] reduction15612.output := by lin_cert using reduction15612.terms
def map_40_233 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15818 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15818 : InImage map_40_233 image15818 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15818 : Bundle := named_bundle% "RealMapCertificates/relations/basis15818.json"
theorem reductionProof15818 : EqualModuloRelations reduction15818.relations reduction15818.input reduction15818.output := by lin_cert using reduction15818.terms
theorem substitutionProof15818 : IsMapEvaluation generatorImages reduction15818.relations [64,64,206] reduction15818.output := by lin_cert using reduction15818.terms
def image15819 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15819 : InImage map_40_233 image15819 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15819 : Bundle := named_bundle% "RealMapCertificates/relations/basis15819.json"
theorem reductionProof15819 : EqualModuloRelations reduction15819.relations reduction15819.input reduction15819.output := by lin_cert using reduction15819.terms
theorem substitutionProof15819 : IsMapEvaluation generatorImages reduction15819.relations [8,8,64,380] reduction15819.output := by lin_cert using reduction15819.terms
def image15820 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15820 : InImage map_40_233 image15820 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15820 : Bundle := named_bundle% "RealMapCertificates/relations/basis15820.json"
theorem reductionProof15820 : EqualModuloRelations reduction15820.relations reduction15820.input reduction15820.output := by lin_cert using reduction15820.terms
theorem substitutionProof15820 : IsMapEvaluation generatorImages reduction15820.relations [8,8,9,13,13,13,194] reduction15820.output := by lin_cert using reduction15820.terms
def image15821 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15821 : InImage map_40_233 image15821 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15821 : Bundle := named_bundle% "RealMapCertificates/relations/basis15821.json"
theorem reductionProof15821 : EqualModuloRelations reduction15821.relations reduction15821.input reduction15821.output := by lin_cert using reduction15821.terms
theorem substitutionProof15821 : IsMapEvaluation generatorImages reduction15821.relations [8,8,8,8,22,292] reduction15821.output := by lin_cert using reduction15821.terms
def image15822 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15822 : InImage map_40_233 image15822 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15822 : Bundle := named_bundle% "RealMapCertificates/relations/basis15822.json"
theorem reductionProof15822 : EqualModuloRelations reduction15822.relations reduction15822.input reduction15822.output := by lin_cert using reduction15822.terms
theorem substitutionProof15822 : IsMapEvaluation generatorImages reduction15822.relations [8,8,8,8,8,492] reduction15822.output := by lin_cert using reduction15822.terms
def map_40_234 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16072 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16072 : InImage map_40_234 image16072 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16072 : Bundle := named_bundle% "RealMapCertificates/relations/basis16072.json"
theorem reductionProof16072 : EqualModuloRelations reduction16072.relations reduction16072.input reduction16072.output := by lin_cert using reduction16072.terms
theorem substitutionProof16072 : IsMapEvaluation generatorImages reduction16072.relations [1831] reduction16072.output := by lin_cert using reduction16072.terms
def image16073 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16073 : InImage map_40_234 image16073 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16073 : Bundle := named_bundle% "RealMapCertificates/relations/basis16073.json"
theorem reductionProof16073 : EqualModuloRelations reduction16073.relations reduction16073.input reduction16073.output := by lin_cert using reduction16073.terms
theorem substitutionProof16073 : IsMapEvaluation generatorImages reduction16073.relations [8,13,13,13,13,13,13,13,13,13] reduction16073.output := by lin_cert using reduction16073.terms
def image16074 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16074 : InImage map_40_234 image16074 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16074 : Bundle := named_bundle% "RealMapCertificates/relations/basis16074.json"
theorem reductionProof16074 : EqualModuloRelations reduction16074.relations reduction16074.input reduction16074.output := by lin_cert using reduction16074.terms
theorem substitutionProof16074 : IsMapEvaluation generatorImages reduction16074.relations [8,8,64,404] reduction16074.output := by lin_cert using reduction16074.terms
def image16075 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16075 : InImage map_40_234 image16075 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16075 : Bundle := named_bundle% "RealMapCertificates/relations/basis16075.json"
theorem reductionProof16075 : EqualModuloRelations reduction16075.relations reduction16075.input reduction16075.output := by lin_cert using reduction16075.terms
theorem substitutionProof16075 : IsMapEvaluation generatorImages reduction16075.relations [8,8,8,9,13,13,23,101] reduction16075.output := by lin_cert using reduction16075.terms
def image16076 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16076 : InImage map_40_234 image16076 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16076 : Bundle := named_bundle% "RealMapCertificates/relations/basis16076.json"
theorem reductionProof16076 : EqualModuloRelations reduction16076.relations reduction16076.input reduction16076.output := by lin_cert using reduction16076.terms
theorem substitutionProof16076 : IsMapEvaluation generatorImages reduction16076.relations [8,8,8,8,8,8,8,212] reduction16076.output := by lin_cert using reduction16076.terms
def image16077 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16077 : InImage map_40_234 image16077 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16077 : Bundle := named_bundle% "RealMapCertificates/relations/basis16077.json"
theorem reductionProof16077 : EqualModuloRelations reduction16077.relations reduction16077.input reduction16077.output := by lin_cert using reduction16077.terms
theorem substitutionProof16077 : IsMapEvaluation generatorImages reduction16077.relations [0,8,8,113,260] reduction16077.output := by lin_cert using reduction16077.terms
def map_40_235 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16274 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16274 : InImage map_40_235 image16274 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16274 : Bundle := named_bundle% "RealMapCertificates/relations/basis16274.json"
theorem reductionProof16274 : EqualModuloRelations reduction16274.relations reduction16274.input reduction16274.output := by lin_cert using reduction16274.terms
theorem substitutionProof16274 : IsMapEvaluation generatorImages reduction16274.relations [245,260] reduction16274.output := by lin_cert using reduction16274.terms
def image16275 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16275 : InImage map_40_235 image16275 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16275 : Bundle := named_bundle% "RealMapCertificates/relations/basis16275.json"
theorem reductionProof16275 : EqualModuloRelations reduction16275.relations reduction16275.input reduction16275.output := by lin_cert using reduction16275.terms
theorem substitutionProof16275 : IsMapEvaluation generatorImages reduction16275.relations [8,8,8,9,642] reduction16275.output := by lin_cert using reduction16275.terms
def image16276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16276 : InImage map_40_235 image16276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16276 : Bundle := named_bundle% "RealMapCertificates/relations/basis16276.json"
theorem reductionProof16276 : EqualModuloRelations reduction16276.relations reduction16276.input reduction16276.output := by lin_cert using reduction16276.terms
theorem substitutionProof16276 : IsMapEvaluation generatorImages reduction16276.relations [0,1832] reduction16276.output := by lin_cert using reduction16276.terms
end RealMapCertificates
