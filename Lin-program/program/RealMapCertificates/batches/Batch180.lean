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
  | 23 => [[7,7]]
  | 52 => []
  | 64 => []
  | 101 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 188 => []
  | 194 => [[7,10,12]]
  | 212 => []
  | 246 => []
  | 250 => []
  | 260 => []
  | 261 => []
  | 274 => []
  | 278 => []
  | 299 => []
  | 316 => []
  | 318 => []
  | 346 => []
  | 347 => []
  | 348 => []
  | 380 => []
  | 382 => []
  | 434 => [[0,0,9,12,12]]
  | 517 => []
  | 627 => []
  | 642 => [[7,10,12,12]]
  | 655 => []
  | 667 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 797 => []
  | 812 => []
  | 854 => []
  | 862 => []
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 928 => [[4,7,7,9,12,12]]
  | 956 => []
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1365 => [[6,9,12,12,12]]
  | 1382 => []
  | 1427 => [[5,10,12,12,12]]
  | 1439 => []
  | 1482 => [[7,10,12,12,12]]
  | 1502 => []
  | 1536 => [[4,6,8,12,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | 1592 => [[4,6,9,12,12,12]]
  | 1605 => []
  | 1855 => []
  | 1856 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2095 => []
  | 2162 => []
  | 2196 => []
  | 2301 => []
  | 2378 => []
  | _ => []
def map_40_236 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16486 : InImage map_40_236 image16486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16486 : Bundle := named_bundle% "RealMapCertificates/relations/basis16486.json"
theorem reductionProof16486 : EqualModuloRelations reduction16486.relations reduction16486.input reduction16486.output := by lin_cert using reduction16486.terms
theorem substitutionProof16486 : IsMapEvaluation generatorImages reduction16486.relations [8,64,64,149] reduction16486.output := by lin_cert using reduction16486.terms
def image16487 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16487 : InImage map_40_236 image16487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16487 : Bundle := named_bundle% "RealMapCertificates/relations/basis16487.json"
theorem reductionProof16487 : EqualModuloRelations reduction16487.relations reduction16487.input reduction16487.output := by lin_cert using reduction16487.terms
theorem substitutionProof16487 : IsMapEvaluation generatorImages reduction16487.relations [8,8,13,13,13,13,194] reduction16487.output := by lin_cert using reduction16487.terms
def image16488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16488 : InImage map_40_236 image16488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16488 : Bundle := named_bundle% "RealMapCertificates/relations/basis16488.json"
theorem reductionProof16488 : EqualModuloRelations reduction16488.relations reduction16488.input reduction16488.output := by lin_cert using reduction16488.terms
theorem substitutionProof16488 : IsMapEvaluation generatorImages reduction16488.relations [8,8,8,64,260] reduction16488.output := by lin_cert using reduction16488.terms
def image16489 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16489 : InImage map_40_236 image16489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16489 : Bundle := named_bundle% "RealMapCertificates/relations/basis16489.json"
theorem reductionProof16489 : EqualModuloRelations reduction16489.relations reduction16489.input reduction16489.output := by lin_cert using reduction16489.terms
theorem substitutionProof16489 : IsMapEvaluation generatorImages reduction16489.relations [8,8,8,8,23,316] reduction16489.output := by lin_cert using reduction16489.terms
def image16490 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16490 : InImage map_40_236 image16490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16490 : Bundle := named_bundle% "RealMapCertificates/relations/basis16490.json"
theorem reductionProof16490 : EqualModuloRelations reduction16490.relations reduction16490.input reduction16490.output := by lin_cert using reduction16490.terms
theorem substitutionProof16490 : IsMapEvaluation generatorImages reduction16490.relations [8,8,8,8,8,8,318] reduction16490.output := by lin_cert using reduction16490.terms
def image16491 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16491 : InImage map_40_236 image16491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16491 : Bundle := named_bundle% "RealMapCertificates/relations/basis16491.json"
theorem reductionProof16491 : EqualModuloRelations reduction16491.relations reduction16491.input reduction16491.output := by lin_cert using reduction16491.terms
theorem substitutionProof16491 : IsMapEvaluation generatorImages reduction16491.relations [0,246,260] reduction16491.output := by lin_cert using reduction16491.terms
def map_40_237 : Matrix 2 8 := fun i j => ([true,false,false,false,false,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image16749 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16749 : InImage map_40_237 image16749 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction16749 : Bundle := named_bundle% "RealMapCertificates/relations/basis16749.json"
theorem reductionProof16749 : EqualModuloRelations reduction16749.relations reduction16749.input reduction16749.output := by lin_cert using reduction16749.terms
theorem substitutionProof16749 : IsMapEvaluation generatorImages reduction16749.relations [9,13,13,13,13,13,13,13,13,13] reduction16749.output := by lin_cert using reduction16749.terms
def image16750 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16750 : InImage map_40_237 image16750 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction16750 : Bundle := named_bundle% "RealMapCertificates/relations/basis16750.json"
theorem reductionProof16750 : EqualModuloRelations reduction16750.relations reduction16750.input reduction16750.output := by lin_cert using reduction16750.terms
theorem substitutionProof16750 : IsMapEvaluation generatorImages reduction16750.relations [8,1536] reduction16750.output := by lin_cert using reduction16750.terms
def image16751 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16751 : InImage map_40_237 image16751 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction16751 : Bundle := named_bundle% "RealMapCertificates/relations/basis16751.json"
theorem reductionProof16751 : EqualModuloRelations reduction16751.relations reduction16751.input reduction16751.output := by lin_cert using reduction16751.terms
theorem substitutionProof16751 : IsMapEvaluation generatorImages reduction16751.relations [8,8,64,434] reduction16751.output := by lin_cert using reduction16751.terms
def image16752 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16752 : InImage map_40_237 image16752 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction16752 : Bundle := named_bundle% "RealMapCertificates/relations/basis16752.json"
theorem reductionProof16752 : EqualModuloRelations reduction16752.relations reduction16752.input reduction16752.output := by lin_cert using reduction16752.terms
theorem substitutionProof16752 : IsMapEvaluation generatorImages reduction16752.relations [8,8,8,13,13,13,23,101] reduction16752.output := by lin_cert using reduction16752.terms
def image16753 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16753 : InImage map_40_237 image16753 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction16753 : Bundle := named_bundle% "RealMapCertificates/relations/basis16753.json"
theorem reductionProof16753 : EqualModuloRelations reduction16753.relations reduction16753.input reduction16753.output := by lin_cert using reduction16753.terms
theorem substitutionProof16753 : IsMapEvaluation generatorImages reduction16753.relations [8,8,8,8,8,8,9,212] reduction16753.output := by lin_cert using reduction16753.terms
def image16754 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16754 : InImage map_40_237 image16754 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction16754 : Bundle := named_bundle% "RealMapCertificates/relations/basis16754.json"
theorem reductionProof16754 : EqualModuloRelations reduction16754.relations reduction16754.input reduction16754.output := by lin_cert using reduction16754.terms
theorem substitutionProof16754 : IsMapEvaluation generatorImages reduction16754.relations [1,246,260] reduction16754.output := by lin_cert using reduction16754.terms
def image16755 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16755 : InImage map_40_237 image16755 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction16755 : Bundle := named_bundle% "RealMapCertificates/relations/basis16755.json"
theorem reductionProof16755 : EqualModuloRelations reduction16755.relations reduction16755.input reduction16755.output := by lin_cert using reduction16755.terms
theorem substitutionProof16755 : IsMapEvaluation generatorImages reduction16755.relations [0,8,8,8,897] reduction16755.output := by lin_cert using reduction16755.terms
def image16756 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16756 : InImage map_40_237 image16756 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction16756 : Bundle := named_bundle% "RealMapCertificates/relations/basis16756.json"
theorem reductionProof16756 : EqualModuloRelations reduction16756.relations reduction16756.input reduction16756.output := by lin_cert using reduction16756.terms
theorem substitutionProof16756 : IsMapEvaluation generatorImages reduction16756.relations [0,0,1855] reduction16756.output := by lin_cert using reduction16756.terms
def map_40_238 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16941 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16941 : InImage map_40_238 image16941 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16941 : Bundle := named_bundle% "RealMapCertificates/relations/basis16941.json"
theorem reductionProof16941 : EqualModuloRelations reduction16941.relations reduction16941.input reduction16941.output := by lin_cert using reduction16941.terms
theorem substitutionProof16941 : IsMapEvaluation generatorImages reduction16941.relations [8,1552] reduction16941.output := by lin_cert using reduction16941.terms
def image16942 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16942 : InImage map_40_238 image16942 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16942 : Bundle := named_bundle% "RealMapCertificates/relations/basis16942.json"
theorem reductionProof16942 : EqualModuloRelations reduction16942.relations reduction16942.input reduction16942.output := by lin_cert using reduction16942.terms
theorem substitutionProof16942 : IsMapEvaluation generatorImages reduction16942.relations [8,8,8,13,642] reduction16942.output := by lin_cert using reduction16942.terms
def image16943 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16943 : InImage map_40_238 image16943 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16943 : Bundle := named_bundle% "RealMapCertificates/relations/basis16943.json"
theorem reductionProof16943 : EqualModuloRelations reduction16943.relations reduction16943.input reduction16943.output := by lin_cert using reduction16943.terms
theorem substitutionProof16943 : IsMapEvaluation generatorImages reduction16943.relations [0,0,0,1856] reduction16943.output := by lin_cert using reduction16943.terms
def map_40_239 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17179 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17179 : InImage map_40_239 image17179 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17179 : Bundle := named_bundle% "RealMapCertificates/relations/basis17179.json"
theorem reductionProof17179 : EqualModuloRelations reduction17179.relations reduction17179.input reduction17179.output := by lin_cert using reduction17179.terms
theorem substitutionProof17179 : IsMapEvaluation generatorImages reduction17179.relations [8,64,64,160] reduction17179.output := by lin_cert using reduction17179.terms
def image17180 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17180 : InImage map_40_239 image17180 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17180 : Bundle := named_bundle% "RealMapCertificates/relations/basis17180.json"
theorem reductionProof17180 : EqualModuloRelations reduction17180.relations reduction17180.input reduction17180.output := by lin_cert using reduction17180.terms
theorem substitutionProof17180 : IsMapEvaluation generatorImages reduction17180.relations [8,9,13,13,13,13,194] reduction17180.output := by lin_cert using reduction17180.terms
def image17181 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17181 : InImage map_40_239 image17181 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17181 : Bundle := named_bundle% "RealMapCertificates/relations/basis17181.json"
theorem reductionProof17181 : EqualModuloRelations reduction17181.relations reduction17181.input reduction17181.output := by lin_cert using reduction17181.terms
theorem substitutionProof17181 : IsMapEvaluation generatorImages reduction17181.relations [8,8,8,64,278] reduction17181.output := by lin_cert using reduction17181.terms
def image17182 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17182 : InImage map_40_239 image17182 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17182 : Bundle := named_bundle% "RealMapCertificates/relations/basis17182.json"
theorem reductionProof17182 : EqualModuloRelations reduction17182.relations reduction17182.input reduction17182.output := by lin_cert using reduction17182.terms
theorem substitutionProof17182 : IsMapEvaluation generatorImages reduction17182.relations [8,8,8,8,23,346] reduction17182.output := by lin_cert using reduction17182.terms
def image17183 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17183 : InImage map_40_239 image17183 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17183 : Bundle := named_bundle% "RealMapCertificates/relations/basis17183.json"
theorem reductionProof17183 : EqualModuloRelations reduction17183.relations reduction17183.input reduction17183.output := by lin_cert using reduction17183.terms
theorem substitutionProof17183 : IsMapEvaluation generatorImages reduction17183.relations [8,8,8,8,8,8,348] reduction17183.output := by lin_cert using reduction17183.terms
def image17184 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17184 : InImage map_40_239 image17184 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17184 : Bundle := named_bundle% "RealMapCertificates/relations/basis17184.json"
theorem reductionProof17184 : EqualModuloRelations reduction17184.relations reduction17184.input reduction17184.output := by lin_cert using reduction17184.terms
theorem substitutionProof17184 : IsMapEvaluation generatorImages reduction17184.relations [1,1,1855] reduction17184.output := by lin_cert using reduction17184.terms
def map_40_240 : Matrix 3 5 := fun i j => ([true,false,false,false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17446 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17446 : InImage map_40_240 image17446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17446 : Bundle := named_bundle% "RealMapCertificates/relations/basis17446.json"
theorem reductionProof17446 : EqualModuloRelations reduction17446.relations reduction17446.input reduction17446.output := by lin_cert using reduction17446.terms
theorem substitutionProof17446 : IsMapEvaluation generatorImages reduction17446.relations [13,13,13,13,13,13,13,13,13,13] reduction17446.output := by lin_cert using reduction17446.terms
def image17447 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation17447 : InImage map_40_240 image17447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17447 : Bundle := named_bundle% "RealMapCertificates/relations/basis17447.json"
theorem reductionProof17447 : EqualModuloRelations reduction17447.relations reduction17447.input reduction17447.output := by lin_cert using reduction17447.terms
theorem substitutionProof17447 : IsMapEvaluation generatorImages reduction17447.relations [8,1592] reduction17447.output := by lin_cert using reduction17447.terms
def image17448 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17448 : InImage map_40_240 image17448 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17448 : Bundle := named_bundle% "RealMapCertificates/relations/basis17448.json"
theorem reductionProof17448 : EqualModuloRelations reduction17448.relations reduction17448.input reduction17448.output := by lin_cert using reduction17448.terms
theorem substitutionProof17448 : IsMapEvaluation generatorImages reduction17448.relations [8,8,9,13,13,13,23,101] reduction17448.output := by lin_cert using reduction17448.terms
def image17449 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17449 : InImage map_40_240 image17449 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17449 : Bundle := named_bundle% "RealMapCertificates/relations/basis17449.json"
theorem reductionProof17449 : EqualModuloRelations reduction17449.relations reduction17449.input reduction17449.output := by lin_cert using reduction17449.terms
theorem substitutionProof17449 : IsMapEvaluation generatorImages reduction17449.relations [8,8,8,956] reduction17449.output := by lin_cert using reduction17449.terms
def image17450 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17450 : InImage map_40_240 image17450 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17450 : Bundle := named_bundle% "RealMapCertificates/relations/basis17450.json"
theorem reductionProof17450 : EqualModuloRelations reduction17450.relations reduction17450.input reduction17450.output := by lin_cert using reduction17450.terms
theorem substitutionProof17450 : IsMapEvaluation generatorImages reduction17450.relations [8,8,8,8,8,8,13,212] reduction17450.output := by lin_cert using reduction17450.terms
def map_40_241 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17699 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17699 : InImage map_40_241 image17699 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17699 : Bundle := named_bundle% "RealMapCertificates/relations/basis17699.json"
theorem reductionProof17699 : EqualModuloRelations reduction17699.relations reduction17699.input reduction17699.output := by lin_cert using reduction17699.terms
theorem substitutionProof17699 : IsMapEvaluation generatorImages reduction17699.relations [8,1605] reduction17699.output := by lin_cert using reduction17699.terms
def image17700 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17700 : InImage map_40_241 image17700 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17700 : Bundle := named_bundle% "RealMapCertificates/relations/basis17700.json"
theorem reductionProof17700 : EqualModuloRelations reduction17700.relations reduction17700.input reduction17700.output := by lin_cert using reduction17700.terms
theorem substitutionProof17700 : IsMapEvaluation generatorImages reduction17700.relations [8,8,9,13,642] reduction17700.output := by lin_cert using reduction17700.terms
def map_40_242 : Matrix 1 7 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image17943 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17943 : InImage map_40_242 image17943 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17943 : Bundle := named_bundle% "RealMapCertificates/relations/basis17943.json"
theorem reductionProof17943 : EqualModuloRelations reduction17943.relations reduction17943.input reduction17943.output := by lin_cert using reduction17943.terms
theorem substitutionProof17943 : IsMapEvaluation generatorImages reduction17943.relations [8,16,64,347] reduction17943.output := by lin_cert using reduction17943.terms
def image17944 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17944 : InImage map_40_242 image17944 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17944 : Bundle := named_bundle% "RealMapCertificates/relations/basis17944.json"
theorem reductionProof17944 : EqualModuloRelations reduction17944.relations reduction17944.input reduction17944.output := by lin_cert using reduction17944.terms
theorem substitutionProof17944 : IsMapEvaluation generatorImages reduction17944.relations [8,13,13,13,13,13,194] reduction17944.output := by lin_cert using reduction17944.terms
def image17945 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17945 : InImage map_40_242 image17945 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17945 : Bundle := named_bundle% "RealMapCertificates/relations/basis17945.json"
theorem reductionProof17945 : EqualModuloRelations reduction17945.relations reduction17945.input reduction17945.output := by lin_cert using reduction17945.terms
theorem substitutionProof17945 : IsMapEvaluation generatorImages reduction17945.relations [8,8,8,16,627] reduction17945.output := by lin_cert using reduction17945.terms
def image17946 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17946 : InImage map_40_242 image17946 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17946 : Bundle := named_bundle% "RealMapCertificates/relations/basis17946.json"
theorem reductionProof17946 : EqualModuloRelations reduction17946.relations reduction17946.input reduction17946.output := by lin_cert using reduction17946.terms
theorem substitutionProof17946 : IsMapEvaluation generatorImages reduction17946.relations [8,8,8,9,23,346] reduction17946.output := by lin_cert using reduction17946.terms
def image17947 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17947 : InImage map_40_242 image17947 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17947 : Bundle := named_bundle% "RealMapCertificates/relations/basis17947.json"
theorem reductionProof17947 : EqualModuloRelations reduction17947.relations reduction17947.input reduction17947.output := by lin_cert using reduction17947.terms
theorem substitutionProof17947 : IsMapEvaluation generatorImages reduction17947.relations [8,8,8,8,8,8,8,250] reduction17947.output := by lin_cert using reduction17947.terms
def image17948 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17948 : InImage map_40_242 image17948 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17948 : Bundle := named_bundle% "RealMapCertificates/relations/basis17948.json"
theorem reductionProof17948 : EqualModuloRelations reduction17948.relations reduction17948.input reduction17948.output := by lin_cert using reduction17948.terms
theorem substitutionProof17948 : IsMapEvaluation generatorImages reduction17948.relations [0,64,862] reduction17948.output := by lin_cert using reduction17948.terms
def image17949 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17949 : InImage map_40_242 image17949 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17949 : Bundle := named_bundle% "RealMapCertificates/relations/basis17949.json"
theorem reductionProof17949 : EqualModuloRelations reduction17949.relations reduction17949.input reduction17949.output := by lin_cert using reduction17949.terms
theorem substitutionProof17949 : IsMapEvaluation generatorImages reduction17949.relations [0,0,0,0,260,260] reduction17949.output := by lin_cert using reduction17949.terms
def map_40_243 : Matrix 1 7 := fun i j => ([true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18234 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18234 : InImage map_40_243 image18234 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18234 : Bundle := named_bundle% "RealMapCertificates/relations/basis18234.json"
theorem reductionProof18234 : EqualModuloRelations reduction18234.relations reduction18234.input reduction18234.output := by lin_cert using reduction18234.terms
theorem substitutionProof18234 : IsMapEvaluation generatorImages reduction18234.relations [8,8,1317] reduction18234.output := by lin_cert using reduction18234.terms
def image18235 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18235 : InImage map_40_243 image18235 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18235 : Bundle := named_bundle% "RealMapCertificates/relations/basis18235.json"
theorem reductionProof18235 : EqualModuloRelations reduction18235.relations reduction18235.input reduction18235.output := by lin_cert using reduction18235.terms
theorem substitutionProof18235 : IsMapEvaluation generatorImages reduction18235.relations [8,8,13,13,13,13,23,101] reduction18235.output := by lin_cert using reduction18235.terms
def image18236 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18236 : InImage map_40_243 image18236 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18236 : Bundle := named_bundle% "RealMapCertificates/relations/basis18236.json"
theorem reductionProof18236 : EqualModuloRelations reduction18236.relations reduction18236.input reduction18236.output := by lin_cert using reduction18236.terms
theorem substitutionProof18236 : IsMapEvaluation generatorImages reduction18236.relations [8,8,8,138,188] reduction18236.output := by lin_cert using reduction18236.terms
def image18237 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18237 : InImage map_40_243 image18237 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18237 : Bundle := named_bundle% "RealMapCertificates/relations/basis18237.json"
theorem reductionProof18237 : EqualModuloRelations reduction18237.relations reduction18237.input reduction18237.output := by lin_cert using reduction18237.terms
theorem substitutionProof18237 : IsMapEvaluation generatorImages reduction18237.relations [8,8,8,8,8,9,13,212] reduction18237.output := by lin_cert using reduction18237.terms
def image18238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18238 : InImage map_40_243 image18238 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18238 : Bundle := named_bundle% "RealMapCertificates/relations/basis18238.json"
theorem reductionProof18238 : EqualModuloRelations reduction18238.relations reduction18238.input reduction18238.output := by lin_cert using reduction18238.terms
theorem substitutionProof18238 : IsMapEvaluation generatorImages reduction18238.relations [1,64,862] reduction18238.output := by lin_cert using reduction18238.terms
def image18239 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18239 : InImage map_40_243 image18239 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18239 : Bundle := named_bundle% "RealMapCertificates/relations/basis18239.json"
theorem reductionProof18239 : EqualModuloRelations reduction18239.relations reduction18239.input reduction18239.output := by lin_cert using reduction18239.terms
theorem substitutionProof18239 : IsMapEvaluation generatorImages reduction18239.relations [0,0,0,260,274] reduction18239.output := by lin_cert using reduction18239.terms
def image18240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18240 : InImage map_40_243 image18240 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18240 : Bundle := named_bundle% "RealMapCertificates/relations/basis18240.json"
theorem reductionProof18240 : EqualModuloRelations reduction18240.relations reduction18240.input reduction18240.output := by lin_cert using reduction18240.terms
theorem substitutionProof18240 : IsMapEvaluation generatorImages reduction18240.relations [0,0,0,0,0,1926] reduction18240.output := by lin_cert using reduction18240.terms
def map_40_244 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18439 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18439 : InImage map_40_244 image18439 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18439 : Bundle := named_bundle% "RealMapCertificates/relations/basis18439.json"
theorem reductionProof18439 : EqualModuloRelations reduction18439.relations reduction18439.input reduction18439.output := by lin_cert using reduction18439.terms
theorem substitutionProof18439 : IsMapEvaluation generatorImages reduction18439.relations [64,889] reduction18439.output := by lin_cert using reduction18439.terms
def image18440 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18440 : InImage map_40_244 image18440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18440 : Bundle := named_bundle% "RealMapCertificates/relations/basis18440.json"
theorem reductionProof18440 : EqualModuloRelations reduction18440.relations reduction18440.input reduction18440.output := by lin_cert using reduction18440.terms
theorem substitutionProof18440 : IsMapEvaluation generatorImages reduction18440.relations [8,8,1336] reduction18440.output := by lin_cert using reduction18440.terms
def image18441 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18441 : InImage map_40_244 image18441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18441 : Bundle := named_bundle% "RealMapCertificates/relations/basis18441.json"
theorem reductionProof18441 : EqualModuloRelations reduction18441.relations reduction18441.input reduction18441.output := by lin_cert using reduction18441.terms
theorem substitutionProof18441 : IsMapEvaluation generatorImages reduction18441.relations [8,8,13,13,642] reduction18441.output := by lin_cert using reduction18441.terms
def image18442 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18442 : InImage map_40_244 image18442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18442 : Bundle := named_bundle% "RealMapCertificates/relations/basis18442.json"
theorem reductionProof18442 : EqualModuloRelations reduction18442.relations reduction18442.input reduction18442.output := by lin_cert using reduction18442.terms
theorem substitutionProof18442 : IsMapEvaluation generatorImages reduction18442.relations [0,0,0,0,0,1967] reduction18442.output := by lin_cert using reduction18442.terms
def map_40_245 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18693 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18693 : InImage map_40_245 image18693 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18693 : Bundle := named_bundle% "RealMapCertificates/relations/basis18693.json"
theorem reductionProof18693 : EqualModuloRelations reduction18693.relations reduction18693.input reduction18693.output := by lin_cert using reduction18693.terms
theorem substitutionProof18693 : IsMapEvaluation generatorImages reduction18693.relations [9,13,13,13,13,13,194] reduction18693.output := by lin_cert using reduction18693.terms
def image18694 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18694 : InImage map_40_245 image18694 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18694 : Bundle := named_bundle% "RealMapCertificates/relations/basis18694.json"
theorem reductionProof18694 : EqualModuloRelations reduction18694.relations reduction18694.input reduction18694.output := by lin_cert using reduction18694.terms
theorem substitutionProof18694 : IsMapEvaluation generatorImages reduction18694.relations [8,8,64,517] reduction18694.output := by lin_cert using reduction18694.terms
def image18695 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18695 : InImage map_40_245 image18695 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18695 : Bundle := named_bundle% "RealMapCertificates/relations/basis18695.json"
theorem reductionProof18695 : EqualModuloRelations reduction18695.relations reduction18695.input reduction18695.output := by lin_cert using reduction18695.terms
theorem substitutionProof18695 : IsMapEvaluation generatorImages reduction18695.relations [8,8,8,13,23,346] reduction18695.output := by lin_cert using reduction18695.terms
def image18696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18696 : InImage map_40_245 image18696 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18696 : Bundle := named_bundle% "RealMapCertificates/relations/basis18696.json"
theorem reductionProof18696 : EqualModuloRelations reduction18696.relations reduction18696.input reduction18696.output := by lin_cert using reduction18696.terms
theorem substitutionProof18696 : IsMapEvaluation generatorImages reduction18696.relations [8,8,8,8,797] reduction18696.output := by lin_cert using reduction18696.terms
def image18697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18697 : InImage map_40_245 image18697 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18697 : Bundle := named_bundle% "RealMapCertificates/relations/basis18697.json"
theorem reductionProof18697 : EqualModuloRelations reduction18697.relations reduction18697.input reduction18697.output := by lin_cert using reduction18697.terms
theorem substitutionProof18697 : IsMapEvaluation generatorImages reduction18697.relations [8,8,8,8,8,8,8,261] reduction18697.output := by lin_cert using reduction18697.terms
def image18698 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18698 : InImage map_40_245 image18698 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18698 : Bundle := named_bundle% "RealMapCertificates/relations/basis18698.json"
theorem reductionProof18698 : EqualModuloRelations reduction18698.relations reduction18698.input reduction18698.output := by lin_cert using reduction18698.terms
theorem substitutionProof18698 : IsMapEvaluation generatorImages reduction18698.relations [0,0,0,0,0,0,0,1927] reduction18698.output := by lin_cert using reduction18698.terms
def map_40_246 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image18987 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18987 : InImage map_40_246 image18987 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18987 : Bundle := named_bundle% "RealMapCertificates/relations/basis18987.json"
theorem reductionProof18987 : EqualModuloRelations reduction18987.relations reduction18987.input reduction18987.output := by lin_cert using reduction18987.terms
theorem substitutionProof18987 : IsMapEvaluation generatorImages reduction18987.relations [13,13,13,13,13,13,13,13,52] reduction18987.output := by lin_cert using reduction18987.terms
def image18988 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18988 : InImage map_40_246 image18988 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18988 : Bundle := named_bundle% "RealMapCertificates/relations/basis18988.json"
theorem reductionProof18988 : EqualModuloRelations reduction18988.relations reduction18988.input reduction18988.output := by lin_cert using reduction18988.terms
theorem substitutionProof18988 : IsMapEvaluation generatorImages reduction18988.relations [8,9,13,13,13,13,23,101] reduction18988.output := by lin_cert using reduction18988.terms
def image18989 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18989 : InImage map_40_246 image18989 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18989 : Bundle := named_bundle% "RealMapCertificates/relations/basis18989.json"
theorem reductionProof18989 : EqualModuloRelations reduction18989.relations reduction18989.input reduction18989.output := by lin_cert using reduction18989.terms
theorem substitutionProof18989 : IsMapEvaluation generatorImages reduction18989.relations [8,8,1365] reduction18989.output := by lin_cert using reduction18989.terms
def image18990 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18990 : InImage map_40_246 image18990 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18990 : Bundle := named_bundle% "RealMapCertificates/relations/basis18990.json"
theorem reductionProof18990 : EqualModuloRelations reduction18990.relations reduction18990.input reduction18990.output := by lin_cert using reduction18990.terms
theorem substitutionProof18990 : IsMapEvaluation generatorImages reduction18990.relations [8,8,8,8,812] reduction18990.output := by lin_cert using reduction18990.terms
def image18991 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18991 : InImage map_40_246 image18991 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18991 : Bundle := named_bundle% "RealMapCertificates/relations/basis18991.json"
theorem reductionProof18991 : EqualModuloRelations reduction18991.relations reduction18991.input reduction18991.output := by lin_cert using reduction18991.terms
theorem substitutionProof18991 : IsMapEvaluation generatorImages reduction18991.relations [8,8,8,8,8,13,13,212] reduction18991.output := by lin_cert using reduction18991.terms
def image18992 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18992 : InImage map_40_246 image18992 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18992 : Bundle := named_bundle% "RealMapCertificates/relations/basis18992.json"
theorem reductionProof18992 : EqualModuloRelations reduction18992.relations reduction18992.input reduction18992.output := by lin_cert using reduction18992.terms
theorem substitutionProof18992 : IsMapEvaluation generatorImages reduction18992.relations [0,0,0,0,0,0,1994] reduction18992.output := by lin_cert using reduction18992.terms
def map_40_247 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image19237 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19237 : InImage map_40_247 image19237 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19237 : Bundle := named_bundle% "RealMapCertificates/relations/basis19237.json"
theorem reductionProof19237 : EqualModuloRelations reduction19237.relations reduction19237.input reduction19237.output := by lin_cert using reduction19237.terms
theorem substitutionProof19237 : IsMapEvaluation generatorImages reduction19237.relations [64,928] reduction19237.output := by lin_cert using reduction19237.terms
def image19238 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19238 : InImage map_40_247 image19238 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19238 : Bundle := named_bundle% "RealMapCertificates/relations/basis19238.json"
theorem reductionProof19238 : EqualModuloRelations reduction19238.relations reduction19238.input reduction19238.output := by lin_cert using reduction19238.terms
theorem substitutionProof19238 : IsMapEvaluation generatorImages reduction19238.relations [8,9,13,13,642] reduction19238.output := by lin_cert using reduction19238.terms
def image19239 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19239 : InImage map_40_247 image19239 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19239 : Bundle := named_bundle% "RealMapCertificates/relations/basis19239.json"
theorem reductionProof19239 : EqualModuloRelations reduction19239.relations reduction19239.input reduction19239.output := by lin_cert using reduction19239.terms
theorem substitutionProof19239 : IsMapEvaluation generatorImages reduction19239.relations [8,8,1382] reduction19239.output := by lin_cert using reduction19239.terms
def image19240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19240 : InImage map_40_247 image19240 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19240 : Bundle := named_bundle% "RealMapCertificates/relations/basis19240.json"
theorem reductionProof19240 : EqualModuloRelations reduction19240.relations reduction19240.input reduction19240.output := by lin_cert using reduction19240.terms
theorem substitutionProof19240 : IsMapEvaluation generatorImages reduction19240.relations [1,2162] reduction19240.output := by lin_cert using reduction19240.terms
def image19241 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19241 : InImage map_40_247 image19241 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19241 : Bundle := named_bundle% "RealMapCertificates/relations/basis19241.json"
theorem reductionProof19241 : EqualModuloRelations reduction19241.relations reduction19241.input reduction19241.output := by lin_cert using reduction19241.terms
theorem substitutionProof19241 : IsMapEvaluation generatorImages reduction19241.relations [0,0,64,64,260] reduction19241.output := by lin_cert using reduction19241.terms
def map_40_248 : Matrix 2 8 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image19492 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19492 : InImage map_40_248 image19492 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19492 : Bundle := named_bundle% "RealMapCertificates/relations/basis19492.json"
theorem reductionProof19492 : EqualModuloRelations reduction19492.relations reduction19492.input reduction19492.output := by lin_cert using reduction19492.terms
theorem substitutionProof19492 : IsMapEvaluation generatorImages reduction19492.relations [13,13,13,13,13,13,194] reduction19492.output := by lin_cert using reduction19492.terms
def image19493 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19493 : InImage map_40_248 image19493 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19493 : Bundle := named_bundle% "RealMapCertificates/relations/basis19493.json"
theorem reductionProof19493 : EqualModuloRelations reduction19493.relations reduction19493.input reduction19493.output := by lin_cert using reduction19493.terms
theorem substitutionProof19493 : IsMapEvaluation generatorImages reduction19493.relations [8,8,9,13,23,346] reduction19493.output := by lin_cert using reduction19493.terms
def image19494 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19494 : InImage map_40_248 image19494 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19494 : Bundle := named_bundle% "RealMapCertificates/relations/basis19494.json"
theorem reductionProof19494 : EqualModuloRelations reduction19494.relations reduction19494.input reduction19494.output := by lin_cert using reduction19494.terms
theorem substitutionProof19494 : IsMapEvaluation generatorImages reduction19494.relations [8,8,8,64,347] reduction19494.output := by lin_cert using reduction19494.terms
def image19495 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19495 : InImage map_40_248 image19495 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19495 : Bundle := named_bundle% "RealMapCertificates/relations/basis19495.json"
theorem reductionProof19495 : EqualModuloRelations reduction19495.relations reduction19495.input reduction19495.output := by lin_cert using reduction19495.terms
theorem substitutionProof19495 : IsMapEvaluation generatorImages reduction19495.relations [8,8,8,8,8,627] reduction19495.output := by lin_cert using reduction19495.terms
def image19496 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19496 : InImage map_40_248 image19496 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19496 : Bundle := named_bundle% "RealMapCertificates/relations/basis19496.json"
theorem reductionProof19496 : EqualModuloRelations reduction19496.relations reduction19496.input reduction19496.output := by lin_cert using reduction19496.terms
theorem substitutionProof19496 : IsMapEvaluation generatorImages reduction19496.relations [8,8,8,8,8,8,9,261] reduction19496.output := by lin_cert using reduction19496.terms
def image19497 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19497 : InImage map_40_248 image19497 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19497 : Bundle := named_bundle% "RealMapCertificates/relations/basis19497.json"
theorem reductionProof19497 : EqualModuloRelations reduction19497.relations reduction19497.input reduction19497.output := by lin_cert using reduction19497.terms
theorem substitutionProof19497 : IsMapEvaluation generatorImages reduction19497.relations [0,64,64,274] reduction19497.output := by lin_cert using reduction19497.terms
def image19498 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19498 : InImage map_40_248 image19498 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19498 : Bundle := named_bundle% "RealMapCertificates/relations/basis19498.json"
theorem reductionProof19498 : EqualModuloRelations reduction19498.relations reduction19498.input reduction19498.output := by lin_cert using reduction19498.terms
theorem substitutionProof19498 : IsMapEvaluation generatorImages reduction19498.relations [0,0,2196] reduction19498.output := by lin_cert using reduction19498.terms
def image19499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19499 : InImage map_40_248 image19499 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19499 : Bundle := named_bundle% "RealMapCertificates/relations/basis19499.json"
theorem reductionProof19499 : EqualModuloRelations reduction19499.relations reduction19499.input reduction19499.output := by lin_cert using reduction19499.terms
theorem substitutionProof19499 : IsMapEvaluation generatorImages reduction19499.relations [0,0,0,64,897] reduction19499.output := by lin_cert using reduction19499.terms
def map_40_249 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19802 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19802 : InImage map_40_249 image19802 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19802 : Bundle := named_bundle% "RealMapCertificates/relations/basis19802.json"
theorem reductionProof19802 : EqualModuloRelations reduction19802.relations reduction19802.input reduction19802.output := by lin_cert using reduction19802.terms
theorem substitutionProof19802 : IsMapEvaluation generatorImages reduction19802.relations [8,13,13,13,13,13,23,101] reduction19802.output := by lin_cert using reduction19802.terms
def image19803 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19803 : InImage map_40_249 image19803 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19803 : Bundle := named_bundle% "RealMapCertificates/relations/basis19803.json"
theorem reductionProof19803 : EqualModuloRelations reduction19803.relations reduction19803.input reduction19803.output := by lin_cert using reduction19803.terms
theorem substitutionProof19803 : IsMapEvaluation generatorImages reduction19803.relations [8,8,1427] reduction19803.output := by lin_cert using reduction19803.terms
def image19804 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19804 : InImage map_40_249 image19804 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19804 : Bundle := named_bundle% "RealMapCertificates/relations/basis19804.json"
theorem reductionProof19804 : EqualModuloRelations reduction19804.relations reduction19804.input reduction19804.output := by lin_cert using reduction19804.terms
theorem substitutionProof19804 : IsMapEvaluation generatorImages reduction19804.relations [8,8,8,8,854] reduction19804.output := by lin_cert using reduction19804.terms
def image19805 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19805 : InImage map_40_249 image19805 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19805 : Bundle := named_bundle% "RealMapCertificates/relations/basis19805.json"
theorem reductionProof19805 : EqualModuloRelations reduction19805.relations reduction19805.input reduction19805.output := by lin_cert using reduction19805.terms
theorem substitutionProof19805 : IsMapEvaluation generatorImages reduction19805.relations [8,8,8,8,9,13,13,212] reduction19805.output := by lin_cert using reduction19805.terms
def image19806 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19806 : InImage map_40_249 image19806 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19806 : Bundle := named_bundle% "RealMapCertificates/relations/basis19806.json"
theorem reductionProof19806 : EqualModuloRelations reduction19806.relations reduction19806.input reduction19806.output := by lin_cert using reduction19806.terms
theorem substitutionProof19806 : IsMapEvaluation generatorImages reduction19806.relations [1,1,64,64,260] reduction19806.output := by lin_cert using reduction19806.terms
def image19807 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19807 : InImage map_40_249 image19807 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19807 : Bundle := named_bundle% "RealMapCertificates/relations/basis19807.json"
theorem reductionProof19807 : EqualModuloRelations reduction19807.relations reduction19807.input reduction19807.output := by lin_cert using reduction19807.terms
theorem substitutionProof19807 : IsMapEvaluation generatorImages reduction19807.relations [0,0,0,64,919] reduction19807.output := by lin_cert using reduction19807.terms
def image19808 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19808 : InImage map_40_249 image19808 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19808 : Bundle := named_bundle% "RealMapCertificates/relations/basis19808.json"
theorem reductionProof19808 : EqualModuloRelations reduction19808.relations reduction19808.input reduction19808.output := by lin_cert using reduction19808.terms
theorem substitutionProof19808 : IsMapEvaluation generatorImages reduction19808.relations [0,0,0,0,0,0,2095] reduction19808.output := by lin_cert using reduction19808.terms
def map_40_250 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image20022 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20022 : InImage map_40_250 image20022 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20022 : Bundle := named_bundle% "RealMapCertificates/relations/basis20022.json"
theorem reductionProof20022 : EqualModuloRelations reduction20022.relations reduction20022.input reduction20022.output := by lin_cert using reduction20022.terms
theorem substitutionProof20022 : IsMapEvaluation generatorImages reduction20022.relations [8,64,753] reduction20022.output := by lin_cert using reduction20022.terms
def image20023 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20023 : InImage map_40_250 image20023 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20023 : Bundle := named_bundle% "RealMapCertificates/relations/basis20023.json"
theorem reductionProof20023 : EqualModuloRelations reduction20023.relations reduction20023.input reduction20023.output := by lin_cert using reduction20023.terms
theorem substitutionProof20023 : IsMapEvaluation generatorImages reduction20023.relations [8,13,13,13,642] reduction20023.output := by lin_cert using reduction20023.terms
def image20024 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20024 : InImage map_40_250 image20024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20024 : Bundle := named_bundle% "RealMapCertificates/relations/basis20024.json"
theorem reductionProof20024 : EqualModuloRelations reduction20024.relations reduction20024.input reduction20024.output := by lin_cert using reduction20024.terms
theorem substitutionProof20024 : IsMapEvaluation generatorImages reduction20024.relations [8,8,1439] reduction20024.output := by lin_cert using reduction20024.terms
def image20025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20025 : InImage map_40_250 image20025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20025 : Bundle := named_bundle% "RealMapCertificates/relations/basis20025.json"
theorem reductionProof20025 : EqualModuloRelations reduction20025.relations reduction20025.input reduction20025.output := by lin_cert using reduction20025.terms
theorem substitutionProof20025 : IsMapEvaluation generatorImages reduction20025.relations [0,0,0,0,0,64,898] reduction20025.output := by lin_cert using reduction20025.terms
def map_40_251 : Matrix 0 5 := fun i j => ([] : List Bool)[i.val*5+j.val]!
def image20307 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20307 : InImage map_40_251 image20307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20307 : Bundle := named_bundle% "RealMapCertificates/relations/basis20307.json"
theorem reductionProof20307 : EqualModuloRelations reduction20307.relations reduction20307.input reduction20307.output := by lin_cert using reduction20307.terms
theorem substitutionProof20307 : IsMapEvaluation generatorImages reduction20307.relations [8,8,13,13,23,346] reduction20307.output := by lin_cert using reduction20307.terms
def image20308 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20308 : InImage map_40_251 image20308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20308 : Bundle := named_bundle% "RealMapCertificates/relations/basis20308.json"
theorem reductionProof20308 : EqualModuloRelations reduction20308.relations reduction20308.input reduction20308.output := by lin_cert using reduction20308.terms
theorem substitutionProof20308 : IsMapEvaluation generatorImages reduction20308.relations [8,8,8,64,382] reduction20308.output := by lin_cert using reduction20308.terms
def image20309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20309 : InImage map_40_251 image20309 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20309 : Bundle := named_bundle% "RealMapCertificates/relations/basis20309.json"
theorem reductionProof20309 : EqualModuloRelations reduction20309.relations reduction20309.input reduction20309.output := by lin_cert using reduction20309.terms
theorem substitutionProof20309 : IsMapEvaluation generatorImages reduction20309.relations [8,8,8,8,8,655] reduction20309.output := by lin_cert using reduction20309.terms
def image20310 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20310 : InImage map_40_251 image20310 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20310 : Bundle := named_bundle% "RealMapCertificates/relations/basis20310.json"
theorem reductionProof20310 : EqualModuloRelations reduction20310.relations reduction20310.input reduction20310.output := by lin_cert using reduction20310.terms
theorem substitutionProof20310 : IsMapEvaluation generatorImages reduction20310.relations [8,8,8,8,8,8,13,261] reduction20310.output := by lin_cert using reduction20310.terms
def image20311 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation20311 : InImage map_40_251 image20311 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20311 : Bundle := named_bundle% "RealMapCertificates/relations/basis20311.json"
theorem reductionProof20311 : EqualModuloRelations reduction20311.relations reduction20311.input reduction20311.output := by lin_cert using reduction20311.terms
theorem substitutionProof20311 : IsMapEvaluation generatorImages reduction20311.relations [0,0,2301] reduction20311.output := by lin_cert using reduction20311.terms
def map_40_252 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20606 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20606 : InImage map_40_252 image20606 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20606 : Bundle := named_bundle% "RealMapCertificates/relations/basis20606.json"
theorem reductionProof20606 : EqualModuloRelations reduction20606.relations reduction20606.input reduction20606.output := by lin_cert using reduction20606.terms
theorem substitutionProof20606 : IsMapEvaluation generatorImages reduction20606.relations [64,64,64,64] reduction20606.output := by lin_cert using reduction20606.terms
def image20607 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20607 : InImage map_40_252 image20607 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20607 : Bundle := named_bundle% "RealMapCertificates/relations/basis20607.json"
theorem reductionProof20607 : EqualModuloRelations reduction20607.relations reduction20607.input reduction20607.output := by lin_cert using reduction20607.terms
theorem substitutionProof20607 : IsMapEvaluation generatorImages reduction20607.relations [9,13,13,13,13,13,23,101] reduction20607.output := by lin_cert using reduction20607.terms
def image20608 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20608 : InImage map_40_252 image20608 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20608 : Bundle := named_bundle% "RealMapCertificates/relations/basis20608.json"
theorem reductionProof20608 : EqualModuloRelations reduction20608.relations reduction20608.input reduction20608.output := by lin_cert using reduction20608.terms
theorem substitutionProof20608 : IsMapEvaluation generatorImages reduction20608.relations [8,8,1482] reduction20608.output := by lin_cert using reduction20608.terms
def image20609 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20609 : InImage map_40_252 image20609 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20609 : Bundle := named_bundle% "RealMapCertificates/relations/basis20609.json"
theorem reductionProof20609 : EqualModuloRelations reduction20609.relations reduction20609.input reduction20609.output := by lin_cert using reduction20609.terms
theorem substitutionProof20609 : IsMapEvaluation generatorImages reduction20609.relations [8,8,8,8,13,13,13,212] reduction20609.output := by lin_cert using reduction20609.terms
def image20610 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20610 : InImage map_40_252 image20610 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20610 : Bundle := named_bundle% "RealMapCertificates/relations/basis20610.json"
theorem reductionProof20610 : EqualModuloRelations reduction20610.relations reduction20610.input reduction20610.output := by lin_cert using reduction20610.terms
theorem substitutionProof20610 : IsMapEvaluation generatorImages reduction20610.relations [8,8,8,8,8,667] reduction20610.output := by lin_cert using reduction20610.terms
def map_40_253 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20846 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20846 : InImage map_40_253 image20846 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20846 : Bundle := named_bundle% "RealMapCertificates/relations/basis20846.json"
theorem reductionProof20846 : EqualModuloRelations reduction20846.relations reduction20846.input reduction20846.output := by lin_cert using reduction20846.terms
theorem substitutionProof20846 : IsMapEvaluation generatorImages reduction20846.relations [260,380] reduction20846.output := by lin_cert using reduction20846.terms
def image20847 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20847 : InImage map_40_253 image20847 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20847 : Bundle := named_bundle% "RealMapCertificates/relations/basis20847.json"
theorem reductionProof20847 : EqualModuloRelations reduction20847.relations reduction20847.input reduction20847.output := by lin_cert using reduction20847.terms
theorem substitutionProof20847 : IsMapEvaluation generatorImages reduction20847.relations [9,13,13,13,642] reduction20847.output := by lin_cert using reduction20847.terms
def image20848 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20848 : InImage map_40_253 image20848 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20848 : Bundle := named_bundle% "RealMapCertificates/relations/basis20848.json"
theorem reductionProof20848 : EqualModuloRelations reduction20848.relations reduction20848.input reduction20848.output := by lin_cert using reduction20848.terms
theorem substitutionProof20848 : IsMapEvaluation generatorImages reduction20848.relations [8,64,784] reduction20848.output := by lin_cert using reduction20848.terms
def image20849 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20849 : InImage map_40_253 image20849 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20849 : Bundle := named_bundle% "RealMapCertificates/relations/basis20849.json"
theorem reductionProof20849 : EqualModuloRelations reduction20849.relations reduction20849.input reduction20849.output := by lin_cert using reduction20849.terms
theorem substitutionProof20849 : IsMapEvaluation generatorImages reduction20849.relations [8,8,1502] reduction20849.output := by lin_cert using reduction20849.terms
def image20850 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20850 : InImage map_40_253 image20850 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20850 : Bundle := named_bundle% "RealMapCertificates/relations/basis20850.json"
theorem reductionProof20850 : EqualModuloRelations reduction20850.relations reduction20850.input reduction20850.output := by lin_cert using reduction20850.terms
theorem substitutionProof20850 : IsMapEvaluation generatorImages reduction20850.relations [1,2378] reduction20850.output := by lin_cert using reduction20850.terms
def image20851 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20851 : InImage map_40_253 image20851 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20851 : Bundle := named_bundle% "RealMapCertificates/relations/basis20851.json"
theorem reductionProof20851 : EqualModuloRelations reduction20851.relations reduction20851.input reduction20851.output := by lin_cert using reduction20851.terms
theorem substitutionProof20851 : IsMapEvaluation generatorImages reduction20851.relations [0,64,64,299] reduction20851.output := by lin_cert using reduction20851.terms
end RealMapCertificates
