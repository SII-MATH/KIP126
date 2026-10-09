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
  | 72 => []
  | 80 => []
  | 101 => []
  | 125 => [[4,4,4,5,5,7]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 188 => []
  | 209 => []
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 212 => []
  | 220 => []
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 254 => []
  | 260 => []
  | 261 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 276 => [[1,4,4,4,4,4,4,4,4,4,4]]
  | 278 => []
  | 279 => []
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 290 => [[2,4,4,4,4,4,4,4,4,4,4]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 301 => []
  | 318 => []
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 346 => []
  | 347 => []
  | 348 => []
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 404 => [[0,0,8,12,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 434 => [[0,0,9,12,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 642 => [[7,10,12,12]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 690 => []
  | 704 => []
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 738 => []
  | 963 => []
  | 976 => []
  | 1482 => [[7,10,12,12,12]]
  | 1553 => []
  | 1901 => []
  | 1926 => []
  | 1991 => []
  | 1993 => []
  | 2058 => []
  | 2095 => []
  | 2307 => []
  | 2309 => []
  | 2334 => []
  | 2340 => []
  | 2342 => []
  | 2381 => []
  | 2403 => []
  | 2437 => []
  | _ => []
def map_40_254 : Matrix 1 9 := fun i j => ([false,false,false,false,false,false,false,false,false] : List Bool)[i.val*9+j.val]!
def image21129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21129 : InImage map_40_254 image21129 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction21129 : Bundle := named_bundle% "RealMapCertificates/relations/basis21129.json"
theorem reductionProof21129 : EqualModuloRelations reduction21129.relations reduction21129.input reduction21129.output := by lin_cert using reduction21129.terms
theorem substitutionProof21129 : IsMapEvaluation generatorImages reduction21129.relations [260,404] reduction21129.output := by lin_cert using reduction21129.terms
def image21130 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21130 : InImage map_40_254 image21130 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction21130 : Bundle := named_bundle% "RealMapCertificates/relations/basis21130.json"
theorem reductionProof21130 : EqualModuloRelations reduction21130.relations reduction21130.input reduction21130.output := by lin_cert using reduction21130.terms
theorem substitutionProof21130 : IsMapEvaluation generatorImages reduction21130.relations [13,13,13,13,13,13,220] reduction21130.output := by lin_cert using reduction21130.terms
def image21131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21131 : InImage map_40_254 image21131 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction21131 : Bundle := named_bundle% "RealMapCertificates/relations/basis21131.json"
theorem reductionProof21131 : EqualModuloRelations reduction21131.relations reduction21131.input reduction21131.output := by lin_cert using reduction21131.terms
theorem substitutionProof21131 : IsMapEvaluation generatorImages reduction21131.relations [8,9,13,13,23,346] reduction21131.output := by lin_cert using reduction21131.terms
def image21132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21132 : InImage map_40_254 image21132 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction21132 : Bundle := named_bundle% "RealMapCertificates/relations/basis21132.json"
theorem reductionProof21132 : EqualModuloRelations reduction21132.relations reduction21132.input reduction21132.output := by lin_cert using reduction21132.terms
theorem substitutionProof21132 : IsMapEvaluation generatorImages reduction21132.relations [8,8,8,16,64,209] reduction21132.output := by lin_cert using reduction21132.terms
def image21133 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21133 : InImage map_40_254 image21133 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction21133 : Bundle := named_bundle% "RealMapCertificates/relations/basis21133.json"
theorem reductionProof21133 : EqualModuloRelations reduction21133.relations reduction21133.input reduction21133.output := by lin_cert using reduction21133.terms
theorem substitutionProof21133 : IsMapEvaluation generatorImages reduction21133.relations [8,8,8,8,8,690] reduction21133.output := by lin_cert using reduction21133.terms
def image21134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21134 : InImage map_40_254 image21134 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction21134 : Bundle := named_bundle% "RealMapCertificates/relations/basis21134.json"
theorem reductionProof21134 : EqualModuloRelations reduction21134.relations reduction21134.input reduction21134.output := by lin_cert using reduction21134.terms
theorem substitutionProof21134 : IsMapEvaluation generatorImages reduction21134.relations [8,8,8,8,8,9,13,261] reduction21134.output := by lin_cert using reduction21134.terms
def image21135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21135 : InImage map_40_254 image21135 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction21135 : Bundle := named_bundle% "RealMapCertificates/relations/basis21135.json"
theorem reductionProof21135 : EqualModuloRelations reduction21135.relations reduction21135.input reduction21135.output := by lin_cert using reduction21135.terms
theorem substitutionProof21135 : IsMapEvaluation generatorImages reduction21135.relations [0,2437] reduction21135.output := by lin_cert using reduction21135.terms
def image21136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21136 : InImage map_40_254 image21136 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction21136 : Bundle := named_bundle% "RealMapCertificates/relations/basis21136.json"
theorem reductionProof21136 : EqualModuloRelations reduction21136.relations reduction21136.input reduction21136.output := by lin_cert using reduction21136.terms
theorem substitutionProof21136 : IsMapEvaluation generatorImages reduction21136.relations [0,0,2403] reduction21136.output := by lin_cert using reduction21136.terms
def image21137 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21137 : InImage map_40_254 image21137 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction21137 : Bundle := named_bundle% "RealMapCertificates/relations/basis21137.json"
theorem reductionProof21137 : EqualModuloRelations reduction21137.relations reduction21137.input reduction21137.output := by lin_cert using reduction21137.terms
theorem substitutionProof21137 : IsMapEvaluation generatorImages reduction21137.relations [0,0,0,0,64,963] reduction21137.output := by lin_cert using reduction21137.terms
def map_40_255 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image21480 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21480 : InImage map_40_255 image21480 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21480 : Bundle := named_bundle% "RealMapCertificates/relations/basis21480.json"
theorem reductionProof21480 : EqualModuloRelations reduction21480.relations reduction21480.input reduction21480.output := by lin_cert using reduction21480.terms
theorem substitutionProof21480 : IsMapEvaluation generatorImages reduction21480.relations [64,64,64,72] reduction21480.output := by lin_cert using reduction21480.terms
def image21481 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21481 : InImage map_40_255 image21481 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21481 : Bundle := named_bundle% "RealMapCertificates/relations/basis21481.json"
theorem reductionProof21481 : EqualModuloRelations reduction21481.relations reduction21481.input reduction21481.output := by lin_cert using reduction21481.terms
theorem substitutionProof21481 : IsMapEvaluation generatorImages reduction21481.relations [13,13,13,13,13,13,23,101] reduction21481.output := by lin_cert using reduction21481.terms
def image21482 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21482 : InImage map_40_255 image21482 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21482 : Bundle := named_bundle% "RealMapCertificates/relations/basis21482.json"
theorem reductionProof21482 : EqualModuloRelations reduction21482.relations reduction21482.input reduction21482.output := by lin_cert using reduction21482.terms
theorem substitutionProof21482 : IsMapEvaluation generatorImages reduction21482.relations [8,9,1482] reduction21482.output := by lin_cert using reduction21482.terms
def image21483 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21483 : InImage map_40_255 image21483 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21483 : Bundle := named_bundle% "RealMapCertificates/relations/basis21483.json"
theorem reductionProof21483 : EqualModuloRelations reduction21483.relations reduction21483.input reduction21483.output := by lin_cert using reduction21483.terms
theorem substitutionProof21483 : IsMapEvaluation generatorImages reduction21483.relations [8,8,8,9,13,13,13,212] reduction21483.output := by lin_cert using reduction21483.terms
def image21484 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21484 : InImage map_40_255 image21484 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21484 : Bundle := named_bundle% "RealMapCertificates/relations/basis21484.json"
theorem reductionProof21484 : EqualModuloRelations reduction21484.relations reduction21484.input reduction21484.output := by lin_cert using reduction21484.terms
theorem substitutionProof21484 : IsMapEvaluation generatorImages reduction21484.relations [8,8,8,8,8,704] reduction21484.output := by lin_cert using reduction21484.terms
def image21485 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21485 : InImage map_40_255 image21485 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21485 : Bundle := named_bundle% "RealMapCertificates/relations/basis21485.json"
theorem reductionProof21485 : EqualModuloRelations reduction21485.relations reduction21485.input reduction21485.output := by lin_cert using reduction21485.terms
theorem substitutionProof21485 : IsMapEvaluation generatorImages reduction21485.relations [0,0,0,64,64,301] reduction21485.output := by lin_cert using reduction21485.terms
def image21486 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21486 : InImage map_40_255 image21486 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21486 : Bundle := named_bundle% "RealMapCertificates/relations/basis21486.json"
theorem reductionProof21486 : EqualModuloRelations reduction21486.relations reduction21486.input reduction21486.output := by lin_cert using reduction21486.terms
theorem substitutionProof21486 : IsMapEvaluation generatorImages reduction21486.relations [0,0,0,0,0,2334] reduction21486.output := by lin_cert using reduction21486.terms
def map_40_256 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21743 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21743 : InImage map_40_256 image21743 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21743 : Bundle := named_bundle% "RealMapCertificates/relations/basis21743.json"
theorem reductionProof21743 : EqualModuloRelations reduction21743.relations reduction21743.input reduction21743.output := by lin_cert using reduction21743.terms
theorem substitutionProof21743 : IsMapEvaluation generatorImages reduction21743.relations [13,13,13,13,642] reduction21743.output := by lin_cert using reduction21743.terms
def image21744 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21744 : InImage map_40_256 image21744 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21744 : Bundle := named_bundle% "RealMapCertificates/relations/basis21744.json"
theorem reductionProof21744 : EqualModuloRelations reduction21744.relations reduction21744.input reduction21744.output := by lin_cert using reduction21744.terms
theorem substitutionProof21744 : IsMapEvaluation generatorImages reduction21744.relations [8,260,260] reduction21744.output := by lin_cert using reduction21744.terms
def image21745 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21745 : InImage map_40_256 image21745 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21745 : Bundle := named_bundle% "RealMapCertificates/relations/basis21745.json"
theorem reductionProof21745 : EqualModuloRelations reduction21745.relations reduction21745.input reduction21745.output := by lin_cert using reduction21745.terms
theorem substitutionProof21745 : IsMapEvaluation generatorImages reduction21745.relations [8,8,1553] reduction21745.output := by lin_cert using reduction21745.terms
def image21746 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21746 : InImage map_40_256 image21746 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21746 : Bundle := named_bundle% "RealMapCertificates/relations/basis21746.json"
theorem reductionProof21746 : EqualModuloRelations reduction21746.relations reduction21746.input reduction21746.output := by lin_cert using reduction21746.terms
theorem substitutionProof21746 : IsMapEvaluation generatorImages reduction21746.relations [8,8,149,318] reduction21746.output := by lin_cert using reduction21746.terms
def image21747 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21747 : InImage map_40_256 image21747 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21747 : Bundle := named_bundle% "RealMapCertificates/relations/basis21747.json"
theorem reductionProof21747 : EqualModuloRelations reduction21747.relations reduction21747.input reduction21747.output := by lin_cert using reduction21747.terms
theorem substitutionProof21747 : IsMapEvaluation generatorImages reduction21747.relations [0,0,0,0,0,64,976] reduction21747.output := by lin_cert using reduction21747.terms
def map_40_257 : Matrix 1 7 := fun i j => ([false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image22080 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22080 : InImage map_40_257 image22080 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction22080 : Bundle := named_bundle% "RealMapCertificates/relations/basis22080.json"
theorem reductionProof22080 : EqualModuloRelations reduction22080.relations reduction22080.input reduction22080.output := by lin_cert using reduction22080.terms
theorem substitutionProof22080 : IsMapEvaluation generatorImages reduction22080.relations [260,434] reduction22080.output := by lin_cert using reduction22080.terms
def image22081 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22081 : InImage map_40_257 image22081 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction22081 : Bundle := named_bundle% "RealMapCertificates/relations/basis22081.json"
theorem reductionProof22081 : EqualModuloRelations reduction22081.relations reduction22081.input reduction22081.output := by lin_cert using reduction22081.terms
theorem substitutionProof22081 : IsMapEvaluation generatorImages reduction22081.relations [8,13,13,13,23,346] reduction22081.output := by lin_cert using reduction22081.terms
def image22082 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22082 : InImage map_40_257 image22082 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction22082 : Bundle := named_bundle% "RealMapCertificates/relations/basis22082.json"
theorem reductionProof22082 : EqualModuloRelations reduction22082.relations reduction22082.input reduction22082.output := by lin_cert using reduction22082.terms
theorem substitutionProof22082 : IsMapEvaluation generatorImages reduction22082.relations [8,8,8,8,64,279] reduction22082.output := by lin_cert using reduction22082.terms
def image22083 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22083 : InImage map_40_257 image22083 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction22083 : Bundle := named_bundle% "RealMapCertificates/relations/basis22083.json"
theorem reductionProof22083 : EqualModuloRelations reduction22083.relations reduction22083.input reduction22083.output := by lin_cert using reduction22083.terms
theorem substitutionProof22083 : IsMapEvaluation generatorImages reduction22083.relations [8,8,8,8,9,690] reduction22083.output := by lin_cert using reduction22083.terms
def image22084 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22084 : InImage map_40_257 image22084 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction22084 : Bundle := named_bundle% "RealMapCertificates/relations/basis22084.json"
theorem reductionProof22084 : EqualModuloRelations reduction22084.relations reduction22084.input reduction22084.output := by lin_cert using reduction22084.terms
theorem substitutionProof22084 : IsMapEvaluation generatorImages reduction22084.relations [8,8,8,8,8,13,13,261] reduction22084.output := by lin_cert using reduction22084.terms
def image22085 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22085 : InImage map_40_257 image22085 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction22085 : Bundle := named_bundle% "RealMapCertificates/relations/basis22085.json"
theorem reductionProof22085 : EqualModuloRelations reduction22085.relations reduction22085.input reduction22085.output := by lin_cert using reduction22085.terms
theorem substitutionProof22085 : IsMapEvaluation generatorImages reduction22085.relations [0,8,1926] reduction22085.output := by lin_cert using reduction22085.terms
def image22086 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22086 : InImage map_40_257 image22086 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction22086 : Bundle := named_bundle% "RealMapCertificates/relations/basis22086.json"
theorem reductionProof22086 : EqualModuloRelations reduction22086.relations reduction22086.input reduction22086.output := by lin_cert using reduction22086.terms
theorem substitutionProof22086 : IsMapEvaluation generatorImages reduction22086.relations [0,0,8,1901] reduction22086.output := by lin_cert using reduction22086.terms
def map_40_258 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22439 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22439 : InImage map_40_258 image22439 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22439 : Bundle := named_bundle% "RealMapCertificates/relations/basis22439.json"
theorem reductionProof22439 : EqualModuloRelations reduction22439.relations reduction22439.input reduction22439.output := by lin_cert using reduction22439.terms
theorem substitutionProof22439 : IsMapEvaluation generatorImages reduction22439.relations [8,1991] reduction22439.output := by lin_cert using reduction22439.terms
def image22440 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22440 : InImage map_40_258 image22440 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22440 : Bundle := named_bundle% "RealMapCertificates/relations/basis22440.json"
theorem reductionProof22440 : EqualModuloRelations reduction22440.relations reduction22440.input reduction22440.output := by lin_cert using reduction22440.terms
theorem substitutionProof22440 : IsMapEvaluation generatorImages reduction22440.relations [8,13,1482] reduction22440.output := by lin_cert using reduction22440.terms
def image22441 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22441 : InImage map_40_258 image22441 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22441 : Bundle := named_bundle% "RealMapCertificates/relations/basis22441.json"
theorem reductionProof22441 : EqualModuloRelations reduction22441.relations reduction22441.input reduction22441.output := by lin_cert using reduction22441.terms
theorem substitutionProof22441 : IsMapEvaluation generatorImages reduction22441.relations [8,8,8,13,13,13,13,212] reduction22441.output := by lin_cert using reduction22441.terms
def image22442 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22442 : InImage map_40_258 image22442 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22442 : Bundle := named_bundle% "RealMapCertificates/relations/basis22442.json"
theorem reductionProof22442 : EqualModuloRelations reduction22442.relations reduction22442.input reduction22442.output := by lin_cert using reduction22442.terms
theorem substitutionProof22442 : IsMapEvaluation generatorImages reduction22442.relations [8,8,8,8,8,738] reduction22442.output := by lin_cert using reduction22442.terms
def image22443 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22443 : InImage map_40_258 image22443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22443 : Bundle := named_bundle% "RealMapCertificates/relations/basis22443.json"
theorem reductionProof22443 : EqualModuloRelations reduction22443.relations reduction22443.input reduction22443.output := by lin_cert using reduction22443.terms
theorem substitutionProof22443 : IsMapEvaluation generatorImages reduction22443.relations [0,0,0,0,0,0,0,0,0,2307] reduction22443.output := by lin_cert using reduction22443.terms
def map_40_259 : Matrix 0 6 := fun i j => ([] : List Bool)[i.val*6+j.val]!
def image22748 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22748 : InImage map_40_259 image22748 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22748 : Bundle := named_bundle% "RealMapCertificates/relations/basis22748.json"
theorem reductionProof22748 : EqualModuloRelations reduction22748.relations reduction22748.input reduction22748.output := by lin_cert using reduction22748.terms
theorem substitutionProof22748 : IsMapEvaluation generatorImages reduction22748.relations [8,260,278] reduction22748.output := by lin_cert using reduction22748.terms
def image22749 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22749 : InImage map_40_259 image22749 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22749 : Bundle := named_bundle% "RealMapCertificates/relations/basis22749.json"
theorem reductionProof22749 : EqualModuloRelations reduction22749.relations reduction22749.input reduction22749.output := by lin_cert using reduction22749.terms
theorem substitutionProof22749 : IsMapEvaluation generatorImages reduction22749.relations [8,8,149,348] reduction22749.output := by lin_cert using reduction22749.terms
def image22750 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22750 : InImage map_40_259 image22750 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22750 : Bundle := named_bundle% "RealMapCertificates/relations/basis22750.json"
theorem reductionProof22750 : EqualModuloRelations reduction22750.relations reduction22750.input reduction22750.output := by lin_cert using reduction22750.terms
theorem substitutionProof22750 : IsMapEvaluation generatorImages reduction22750.relations [8,8,23,963] reduction22750.output := by lin_cert using reduction22750.terms
def image22751 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22751 : InImage map_40_259 image22751 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22751 : Bundle := named_bundle% "RealMapCertificates/relations/basis22751.json"
theorem reductionProof22751 : EqualModuloRelations reduction22751.relations reduction22751.input reduction22751.output := by lin_cert using reduction22751.terms
theorem substitutionProof22751 : IsMapEvaluation generatorImages reduction22751.relations [1,5,2095] reduction22751.output := by lin_cert using reduction22751.terms
def image22752 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22752 : InImage map_40_259 image22752 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22752 : Bundle := named_bundle% "RealMapCertificates/relations/basis22752.json"
theorem reductionProof22752 : EqualModuloRelations reduction22752.relations reduction22752.input reduction22752.output := by lin_cert using reduction22752.terms
theorem substitutionProof22752 : IsMapEvaluation generatorImages reduction22752.relations [0,0,64,64,347] reduction22752.output := by lin_cert using reduction22752.terms
def image22753 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation22753 : InImage map_40_259 image22753 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22753 : Bundle := named_bundle% "RealMapCertificates/relations/basis22753.json"
theorem reductionProof22753 : EqualModuloRelations reduction22753.relations reduction22753.input reduction22753.output := by lin_cert using reduction22753.terms
theorem substitutionProof22753 : IsMapEvaluation generatorImages reduction22753.relations [0,0,0,0,0,0,0,0,0,2340] reduction22753.output := by lin_cert using reduction22753.terms
def map_40_260 : Matrix 1 8 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image23119 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23119 : InImage map_40_260 image23119 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23119 : Bundle := named_bundle% "RealMapCertificates/relations/basis23119.json"
theorem reductionProof23119 : EqualModuloRelations reduction23119.relations reduction23119.input reduction23119.output := by lin_cert using reduction23119.terms
theorem substitutionProof23119 : IsMapEvaluation generatorImages reduction23119.relations [9,13,13,13,23,346] reduction23119.output := by lin_cert using reduction23119.terms
def image23120 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23120 : InImage map_40_260 image23120 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23120 : Bundle := named_bundle% "RealMapCertificates/relations/basis23120.json"
theorem reductionProof23120 : EqualModuloRelations reduction23120.relations reduction23120.input reduction23120.output := by lin_cert using reduction23120.terms
theorem substitutionProof23120 : IsMapEvaluation generatorImages reduction23120.relations [8,2058] reduction23120.output := by lin_cert using reduction23120.terms
def image23121 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23121 : InImage map_40_260 image23121 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23121 : Bundle := named_bundle% "RealMapCertificates/relations/basis23121.json"
theorem reductionProof23121 : EqualModuloRelations reduction23121.relations reduction23121.input reduction23121.output := by lin_cert using reduction23121.terms
theorem substitutionProof23121 : IsMapEvaluation generatorImages reduction23121.relations [8,8,8,8,13,690] reduction23121.output := by lin_cert using reduction23121.terms
def image23122 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23122 : InImage map_40_260 image23122 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23122 : Bundle := named_bundle% "RealMapCertificates/relations/basis23122.json"
theorem reductionProof23122 : EqualModuloRelations reduction23122.relations reduction23122.input reduction23122.output := by lin_cert using reduction23122.terms
theorem substitutionProof23122 : IsMapEvaluation generatorImages reduction23122.relations [8,8,8,8,9,13,13,261] reduction23122.output := by lin_cert using reduction23122.terms
def image23123 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23123 : InImage map_40_260 image23123 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23123 : Bundle := named_bundle% "RealMapCertificates/relations/basis23123.json"
theorem reductionProof23123 : EqualModuloRelations reduction23123.relations reduction23123.input reduction23123.output := by lin_cert using reduction23123.terms
theorem substitutionProof23123 : IsMapEvaluation generatorImages reduction23123.relations [8,8,8,8,8,64,209] reduction23123.output := by lin_cert using reduction23123.terms
def image23124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23124 : InImage map_40_260 image23124 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23124 : Bundle := named_bundle% "RealMapCertificates/relations/basis23124.json"
theorem reductionProof23124 : EqualModuloRelations reduction23124.relations reduction23124.input reduction23124.output := by lin_cert using reduction23124.terms
theorem substitutionProof23124 : IsMapEvaluation generatorImages reduction23124.relations [0,0,8,1993] reduction23124.output := by lin_cert using reduction23124.terms
def image23125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23125 : InImage map_40_260 image23125 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23125 : Bundle := named_bundle% "RealMapCertificates/relations/basis23125.json"
theorem reductionProof23125 : EqualModuloRelations reduction23125.relations reduction23125.input reduction23125.output := by lin_cert using reduction23125.terms
theorem substitutionProof23125 : IsMapEvaluation generatorImages reduction23125.relations [0,0,0,64,138,209] reduction23125.output := by lin_cert using reduction23125.terms
def image23126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23126 : InImage map_40_260 image23126 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23126 : Bundle := named_bundle% "RealMapCertificates/relations/basis23126.json"
theorem reductionProof23126 : EqualModuloRelations reduction23126.relations reduction23126.input reduction23126.output := by lin_cert using reduction23126.terms
theorem substitutionProof23126 : IsMapEvaluation generatorImages reduction23126.relations [0,0,0,0,0,0,0,0,0,0,2342] reduction23126.output := by lin_cert using reduction23126.terms
def map_40_261 : Matrix 2 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image23565 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23565 : InImage map_40_261 image23565 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23565 : Bundle := named_bundle% "RealMapCertificates/relations/basis23565.json"
theorem reductionProof23565 : EqualModuloRelations reduction23565.relations reduction23565.input reduction23565.output := by lin_cert using reduction23565.terms
theorem substitutionProof23565 : IsMapEvaluation generatorImages reduction23565.relations [9,13,1482] reduction23565.output := by lin_cert using reduction23565.terms
def image23566 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23566 : InImage map_40_261 image23566 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23566 : Bundle := named_bundle% "RealMapCertificates/relations/basis23566.json"
theorem reductionProof23566 : EqualModuloRelations reduction23566.relations reduction23566.input reduction23566.output := by lin_cert using reduction23566.terms
theorem substitutionProof23566 : IsMapEvaluation generatorImages reduction23566.relations [8,64,64,254] reduction23566.output := by lin_cert using reduction23566.terms
def image23567 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23567 : InImage map_40_261 image23567 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23567 : Bundle := named_bundle% "RealMapCertificates/relations/basis23567.json"
theorem reductionProof23567 : EqualModuloRelations reduction23567.relations reduction23567.input reduction23567.output := by lin_cert using reduction23567.terms
theorem substitutionProof23567 : IsMapEvaluation generatorImages reduction23567.relations [8,8,9,13,13,13,13,212] reduction23567.output := by lin_cert using reduction23567.terms
def image23568 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23568 : InImage map_40_261 image23568 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23568 : Bundle := named_bundle% "RealMapCertificates/relations/basis23568.json"
theorem reductionProof23568 : EqualModuloRelations reduction23568.relations reduction23568.input reduction23568.output := by lin_cert using reduction23568.terms
theorem substitutionProof23568 : IsMapEvaluation generatorImages reduction23568.relations [8,8,8,8,8,80,188] reduction23568.output := by lin_cert using reduction23568.terms
def image23569 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23569 : InImage map_40_261 image23569 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23569 : Bundle := named_bundle% "RealMapCertificates/relations/basis23569.json"
theorem reductionProof23569 : EqualModuloRelations reduction23569.relations reduction23569.input reduction23569.output := by lin_cert using reduction23569.terms
theorem substitutionProof23569 : IsMapEvaluation generatorImages reduction23569.relations [1,1,64,64,347] reduction23569.output := by lin_cert using reduction23569.terms
def image23570 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23570 : InImage map_40_261 image23570 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23570 : Bundle := named_bundle% "RealMapCertificates/relations/basis23570.json"
theorem reductionProof23570 : EqualModuloRelations reduction23570.relations reduction23570.input reduction23570.output := by lin_cert using reduction23570.terms
theorem substitutionProof23570 : IsMapEvaluation generatorImages reduction23570.relations [0,0,0,0,0,0,0,0,0,0,2381] reduction23570.output := by lin_cert using reduction23570.terms
def image23571 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23571 : InImage map_40_261 image23571 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23571 : Bundle := named_bundle% "RealMapCertificates/relations/basis23571.json"
theorem reductionProof23571 : EqualModuloRelations reduction23571.relations reduction23571.input reduction23571.output := by lin_cert using reduction23571.terms
theorem substitutionProof23571 : IsMapEvaluation generatorImages reduction23571.relations [0,0,0,0,0,0,0,0,0,0,0,0,2309] reduction23571.output := by lin_cert using reduction23571.terms
def map_41_41 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image172 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation172 : InImage map_41_41 image172 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction172 : Bundle := named_bundle% "RealMapCertificates/relations/basis172.json"
theorem reductionProof172 : EqualModuloRelations reduction172.relations reduction172.input reduction172.output := by lin_cert using reduction172.terms
theorem substitutionProof172 : IsMapEvaluation generatorImages reduction172.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction172.output := by lin_cert using reduction172.terms
def map_41_122 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2003 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2003 : InImage map_41_122 image2003 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2003 : Bundle := named_bundle% "RealMapCertificates/relations/basis2003.json"
theorem reductionProof2003 : EqualModuloRelations reduction2003.relations reduction2003.input reduction2003.output := by lin_cert using reduction2003.terms
theorem substitutionProof2003 : IsMapEvaluation generatorImages reduction2003.relations [276] reduction2003.output := by lin_cert using reduction2003.terms
def map_41_124 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2090 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2090 : InImage map_41_124 image2090 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2090 : Bundle := named_bundle% "RealMapCertificates/relations/basis2090.json"
theorem reductionProof2090 : EqualModuloRelations reduction2090.relations reduction2090.input reduction2090.output := by lin_cert using reduction2090.terms
theorem substitutionProof2090 : IsMapEvaluation generatorImages reduction2090.relations [290] reduction2090.output := by lin_cert using reduction2090.terms
def map_41_127 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2219 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2219 : InImage map_41_127 image2219 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2219 : Bundle := named_bundle% "RealMapCertificates/relations/basis2219.json"
theorem reductionProof2219 : EqualModuloRelations reduction2219.relations reduction2219.input reduction2219.output := by lin_cert using reduction2219.terms
theorem substitutionProof2219 : IsMapEvaluation generatorImages reduction2219.relations [0,295] reduction2219.output := by lin_cert using reduction2219.terms
def map_41_128 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image2261 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2261 : InImage map_41_128 image2261 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2261 : Bundle := named_bundle% "RealMapCertificates/relations/basis2261.json"
theorem reductionProof2261 : EqualModuloRelations reduction2261.relations reduction2261.input reduction2261.output := by lin_cert using reduction2261.terms
theorem substitutionProof2261 : IsMapEvaluation generatorImages reduction2261.relations [1,295] reduction2261.output := by lin_cert using reduction2261.terms
def image2262 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2262 : InImage map_41_128 image2262 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2262 : Bundle := named_bundle% "RealMapCertificates/relations/basis2262.json"
theorem reductionProof2262 : EqualModuloRelations reduction2262.relations reduction2262.input reduction2262.output := by lin_cert using reduction2262.terms
theorem substitutionProof2262 : IsMapEvaluation generatorImages reduction2262.relations [0,0,296] reduction2262.output := by lin_cert using reduction2262.terms
def map_41_130 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2385 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2385 : InImage map_41_130 image2385 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2385 : Bundle := named_bundle% "RealMapCertificates/relations/basis2385.json"
theorem reductionProof2385 : EqualModuloRelations reduction2385.relations reduction2385.input reduction2385.output := by lin_cert using reduction2385.terms
theorem substitutionProof2385 : IsMapEvaluation generatorImages reduction2385.relations [0,325] reduction2385.output := by lin_cert using reduction2385.terms
def map_41_131 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2445 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2445 : InImage map_41_131 image2445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2445 : Bundle := named_bundle% "RealMapCertificates/relations/basis2445.json"
theorem reductionProof2445 : EqualModuloRelations reduction2445.relations reduction2445.input reduction2445.output := by lin_cert using reduction2445.terms
theorem substitutionProof2445 : IsMapEvaluation generatorImages reduction2445.relations [0,0,326] reduction2445.output := by lin_cert using reduction2445.terms
def map_41_133 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2582 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2582 : InImage map_41_133 image2582 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2582 : Bundle := named_bundle% "RealMapCertificates/relations/basis2582.json"
theorem reductionProof2582 : EqualModuloRelations reduction2582.relations reduction2582.input reduction2582.output := by lin_cert using reduction2582.terms
theorem substitutionProof2582 : IsMapEvaluation generatorImages reduction2582.relations [0,8,236] reduction2582.output := by lin_cert using reduction2582.terms
def map_41_134 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2641 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2641 : InImage map_41_134 image2641 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2641 : Bundle := named_bundle% "RealMapCertificates/relations/basis2641.json"
theorem reductionProof2641 : EqualModuloRelations reduction2641.relations reduction2641.input reduction2641.output := by lin_cert using reduction2641.terms
theorem substitutionProof2641 : IsMapEvaluation generatorImages reduction2641.relations [0,0,16,183] reduction2641.output := by lin_cert using reduction2641.terms
def map_41_135 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2720 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2720 : InImage map_41_135 image2720 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2720 : Bundle := named_bundle% "RealMapCertificates/relations/basis2720.json"
theorem reductionProof2720 : EqualModuloRelations reduction2720.relations reduction2720.input reduction2720.output := by lin_cert using reduction2720.terms
theorem substitutionProof2720 : IsMapEvaluation generatorImages reduction2720.relations [0,0,0,17,183] reduction2720.output := by lin_cert using reduction2720.terms
def map_41_136 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2808 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2808 : InImage map_41_136 image2808 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2808 : Bundle := named_bundle% "RealMapCertificates/relations/basis2808.json"
theorem reductionProof2808 : EqualModuloRelations reduction2808.relations reduction2808.input reduction2808.output := by lin_cert using reduction2808.terms
theorem substitutionProof2808 : IsMapEvaluation generatorImages reduction2808.relations [0,8,252] reduction2808.output := by lin_cert using reduction2808.terms
def image2809 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2809 : InImage map_41_136 image2809 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2809 : Bundle := named_bundle% "RealMapCertificates/relations/basis2809.json"
theorem reductionProof2809 : EqualModuloRelations reduction2809.relations reduction2809.input reduction2809.output := by lin_cert using reduction2809.terms
theorem substitutionProof2809 : IsMapEvaluation generatorImages reduction2809.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2809.output := by lin_cert using reduction2809.terms
def map_41_137 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2877 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2877 : InImage map_41_137 image2877 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2877 : Bundle := named_bundle% "RealMapCertificates/relations/basis2877.json"
theorem reductionProof2877 : EqualModuloRelations reduction2877.relations reduction2877.input reduction2877.output := by lin_cert using reduction2877.terms
theorem substitutionProof2877 : IsMapEvaluation generatorImages reduction2877.relations [0,0,8,253] reduction2877.output := by lin_cert using reduction2877.terms
def map_41_139 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3045 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3045 : InImage map_41_139 image3045 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3045 : Bundle := named_bundle% "RealMapCertificates/relations/basis3045.json"
theorem reductionProof3045 : EqualModuloRelations reduction3045.relations reduction3045.input reduction3045.output := by lin_cert using reduction3045.terms
theorem substitutionProof3045 : IsMapEvaluation generatorImages reduction3045.relations [0,8,8,182] reduction3045.output := by lin_cert using reduction3045.terms
def map_41_140 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3113 : InImage map_41_140 image3113 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3113 : Bundle := named_bundle% "RealMapCertificates/relations/basis3113.json"
theorem reductionProof3113 : EqualModuloRelations reduction3113.relations reduction3113.input reduction3113.output := by lin_cert using reduction3113.terms
theorem substitutionProof3113 : IsMapEvaluation generatorImages reduction3113.relations [0,0,8,8,183] reduction3113.output := by lin_cert using reduction3113.terms
def map_41_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3291 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3291 : InImage map_41_142 image3291 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3291 : Bundle := named_bundle% "RealMapCertificates/relations/basis3291.json"
theorem reductionProof3291 : EqualModuloRelations reduction3291.relations reduction3291.input reduction3291.output := by lin_cert using reduction3291.terms
theorem substitutionProof3291 : IsMapEvaluation generatorImages reduction3291.relations [0,0,0,0,0,0,0,402] reduction3291.output := by lin_cert using reduction3291.terms
def map_41_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3367 : InImage map_41_143 image3367 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3367 : Bundle := named_bundle% "RealMapCertificates/relations/basis3367.json"
theorem reductionProof3367 : EqualModuloRelations reduction3367.relations reduction3367.input reduction3367.output := by lin_cert using reduction3367.terms
theorem substitutionProof3367 : IsMapEvaluation generatorImages reduction3367.relations [0,0,0,0,0,0,0,0,403] reduction3367.output := by lin_cert using reduction3367.terms
def map_41_144 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3442 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3442 : InImage map_41_144 image3442 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3442 : Bundle := named_bundle% "RealMapCertificates/relations/basis3442.json"
theorem reductionProof3442 : EqualModuloRelations reduction3442.relations reduction3442.input reduction3442.output := by lin_cert using reduction3442.terms
theorem substitutionProof3442 : IsMapEvaluation generatorImages reduction3442.relations [498] reduction3442.output := by lin_cert using reduction3442.terms
def map_41_147 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3702 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3702 : InImage map_41_147 image3702 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3702 : Bundle := named_bundle% "RealMapCertificates/relations/basis3702.json"
theorem reductionProof3702 : EqualModuloRelations reduction3702.relations reduction3702.input reduction3702.output := by lin_cert using reduction3702.terms
theorem substitutionProof3702 : IsMapEvaluation generatorImages reduction3702.relations [528] reduction3702.output := by lin_cert using reduction3702.terms
def map_41_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3956 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3956 : InImage map_41_150 image3956 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3956 : Bundle := named_bundle% "RealMapCertificates/relations/basis3956.json"
theorem reductionProof3956 : EqualModuloRelations reduction3956.relations reduction3956.input reduction3956.output := by lin_cert using reduction3956.terms
theorem substitutionProof3956 : IsMapEvaluation generatorImages reduction3956.relations [8,354] reduction3956.output := by lin_cert using reduction3956.terms
def map_41_153 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image4238 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4238 : InImage map_41_153 image4238 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4238 : Bundle := named_bundle% "RealMapCertificates/relations/basis4238.json"
theorem reductionProof4238 : EqualModuloRelations reduction4238.relations reduction4238.input reduction4238.output := by lin_cert using reduction4238.terms
theorem substitutionProof4238 : IsMapEvaluation generatorImages reduction4238.relations [8,401] reduction4238.output := by lin_cert using reduction4238.terms
def image4239 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation4239 : InImage map_41_153 image4239 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4239 : Bundle := named_bundle% "RealMapCertificates/relations/basis4239.json"
theorem reductionProof4239 : EqualModuloRelations reduction4239.relations reduction4239.input reduction4239.output := by lin_cert using reduction4239.terms
theorem substitutionProof4239 : IsMapEvaluation generatorImages reduction4239.relations [0,0,0,555] reduction4239.output := by lin_cert using reduction4239.terms
def map_41_156 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4480 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4480 : InImage map_41_156 image4480 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4480 : Bundle := named_bundle% "RealMapCertificates/relations/basis4480.json"
theorem reductionProof4480 : EqualModuloRelations reduction4480.relations reduction4480.input reduction4480.output := by lin_cert using reduction4480.terms
theorem substitutionProof4480 : IsMapEvaluation generatorImages reduction4480.relations [8,8,265] reduction4480.output := by lin_cert using reduction4480.terms
def map_41_159 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image4750 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation4750 : InImage map_41_159 image4750 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4750 : Bundle := named_bundle% "RealMapCertificates/relations/basis4750.json"
theorem reductionProof4750 : EqualModuloRelations reduction4750.relations reduction4750.input reduction4750.output := by lin_cert using reduction4750.terms
theorem substitutionProof4750 : IsMapEvaluation generatorImages reduction4750.relations [636] reduction4750.output := by lin_cert using reduction4750.terms
def image4751 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4751 : InImage map_41_159 image4751 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4751 : Bundle := named_bundle% "RealMapCertificates/relations/basis4751.json"
theorem reductionProof4751 : EqualModuloRelations reduction4751.relations reduction4751.input reduction4751.output := by lin_cert using reduction4751.terms
theorem substitutionProof4751 : IsMapEvaluation generatorImages reduction4751.relations [8,8,283] reduction4751.output := by lin_cert using reduction4751.terms
def map_41_162 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image5021 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5021 : InImage map_41_162 image5021 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5021 : Bundle := named_bundle% "RealMapCertificates/relations/basis5021.json"
theorem reductionProof5021 : EqualModuloRelations reduction5021.relations reduction5021.input reduction5021.output := by lin_cert using reduction5021.terms
theorem substitutionProof5021 : IsMapEvaluation generatorImages reduction5021.relations [663] reduction5021.output := by lin_cert using reduction5021.terms
def image5022 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5022 : InImage map_41_162 image5022 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5022 : Bundle := named_bundle% "RealMapCertificates/relations/basis5022.json"
theorem reductionProof5022 : EqualModuloRelations reduction5022.relations reduction5022.input reduction5022.output := by lin_cert using reduction5022.terms
theorem substitutionProof5022 : IsMapEvaluation generatorImages reduction5022.relations [8,8,8,211] reduction5022.output := by lin_cert using reduction5022.terms
def map_41_165 : Matrix 4 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image5323 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation5323 : InImage map_41_165 image5323 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5323 : Bundle := named_bundle% "RealMapCertificates/relations/basis5323.json"
theorem reductionProof5323 : EqualModuloRelations reduction5323.relations reduction5323.input reduction5323.output := by lin_cert using reduction5323.terms
theorem substitutionProof5323 : IsMapEvaluation generatorImages reduction5323.relations [16,403] reduction5323.output := by lin_cert using reduction5323.terms
def image5324 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5324 : InImage map_41_165 image5324 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5324 : Bundle := named_bundle% "RealMapCertificates/relations/basis5324.json"
theorem reductionProof5324 : EqualModuloRelations reduction5324.relations reduction5324.input reduction5324.output := by lin_cert using reduction5324.terms
theorem substitutionProof5324 : IsMapEvaluation generatorImages reduction5324.relations [8,8,8,223] reduction5324.output := by lin_cert using reduction5324.terms
def image5325 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation5325 : InImage map_41_165 image5325 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5325 : Bundle := named_bundle% "RealMapCertificates/relations/basis5325.json"
theorem reductionProof5325 : EqualModuloRelations reduction5325.relations reduction5325.input reduction5325.output := by lin_cert using reduction5325.terms
theorem substitutionProof5325 : IsMapEvaluation generatorImages reduction5325.relations [0,685] reduction5325.output := by lin_cert using reduction5325.terms
def map_41_166 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image5441 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5441 : InImage map_41_166 image5441 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5441 : Bundle := named_bundle% "RealMapCertificates/relations/basis5441.json"
theorem reductionProof5441 : EqualModuloRelations reduction5441.relations reduction5441.input reduction5441.output := by lin_cert using reduction5441.terms
theorem substitutionProof5441 : IsMapEvaluation generatorImages reduction5441.relations [1,685] reduction5441.output := by lin_cert using reduction5441.terms
def image5442 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5442 : InImage map_41_166 image5442 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5442 : Bundle := named_bundle% "RealMapCertificates/relations/basis5442.json"
theorem reductionProof5442 : EqualModuloRelations reduction5442.relations reduction5442.input reduction5442.output := by lin_cert using reduction5442.terms
theorem substitutionProof5442 : IsMapEvaluation generatorImages reduction5442.relations [0,17,403] reduction5442.output := by lin_cert using reduction5442.terms
def map_41_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5541 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5541 : InImage map_41_167 image5541 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5541 : Bundle := named_bundle% "RealMapCertificates/relations/basis5541.json"
theorem reductionProof5541 : EqualModuloRelations reduction5541.relations reduction5541.input reduction5541.output := by lin_cert using reduction5541.terms
theorem substitutionProof5541 : IsMapEvaluation generatorImages reduction5541.relations [0,0,0,686] reduction5541.output := by lin_cert using reduction5541.terms
def map_41_168 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image5641 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5641 : InImage map_41_168 image5641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5641 : Bundle := named_bundle% "RealMapCertificates/relations/basis5641.json"
theorem reductionProof5641 : EqualModuloRelations reduction5641.relations reduction5641.input reduction5641.output := by lin_cert using reduction5641.terms
theorem substitutionProof5641 : IsMapEvaluation generatorImages reduction5641.relations [8,556] reduction5641.output := by lin_cert using reduction5641.terms
def image5642 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5642 : InImage map_41_168 image5642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5642 : Bundle := named_bundle% "RealMapCertificates/relations/basis5642.json"
theorem reductionProof5642 : EqualModuloRelations reduction5642.relations reduction5642.input reduction5642.output := by lin_cert using reduction5642.terms
theorem substitutionProof5642 : IsMapEvaluation generatorImages reduction5642.relations [8,8,8,8,161] reduction5642.output := by lin_cert using reduction5642.terms
def image5643 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5643 : InImage map_41_168 image5643 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5643 : Bundle := named_bundle% "RealMapCertificates/relations/basis5643.json"
theorem reductionProof5643 : EqualModuloRelations reduction5643.relations reduction5643.input reduction5643.output := by lin_cert using reduction5643.terms
theorem substitutionProof5643 : IsMapEvaluation generatorImages reduction5643.relations [0,722] reduction5643.output := by lin_cert using reduction5643.terms
def image5644 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5644 : InImage map_41_168 image5644 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5644 : Bundle := named_bundle% "RealMapCertificates/relations/basis5644.json"
theorem reductionProof5644 : EqualModuloRelations reduction5644.relations reduction5644.input reduction5644.output := by lin_cert using reduction5644.terms
theorem substitutionProof5644 : IsMapEvaluation generatorImages reduction5644.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5644.output := by lin_cert using reduction5644.terms
def map_41_169 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image5778 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5778 : InImage map_41_169 image5778 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5778 : Bundle := named_bundle% "RealMapCertificates/relations/basis5778.json"
theorem reductionProof5778 : EqualModuloRelations reduction5778.relations reduction5778.input reduction5778.output := by lin_cert using reduction5778.terms
theorem substitutionProof5778 : IsMapEvaluation generatorImages reduction5778.relations [0,17,433] reduction5778.output := by lin_cert using reduction5778.terms
def map_41_171 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image5985 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5985 : InImage map_41_171 image5985 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5985 : Bundle := named_bundle% "RealMapCertificates/relations/basis5985.json"
theorem reductionProof5985 : EqualModuloRelations reduction5985.relations reduction5985.input reduction5985.output := by lin_cert using reduction5985.terms
theorem substitutionProof5985 : IsMapEvaluation generatorImages reduction5985.relations [8,8,403] reduction5985.output := by lin_cert using reduction5985.terms
def image5986 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5986 : InImage map_41_171 image5986 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5986 : Bundle := named_bundle% "RealMapCertificates/relations/basis5986.json"
theorem reductionProof5986 : EqualModuloRelations reduction5986.relations reduction5986.input reduction5986.output := by lin_cert using reduction5986.terms
theorem substitutionProof5986 : IsMapEvaluation generatorImages reduction5986.relations [8,8,8,8,171] reduction5986.output := by lin_cert using reduction5986.terms
def image5987 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation5987 : InImage map_41_171 image5987 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5987 : Bundle := named_bundle% "RealMapCertificates/relations/basis5987.json"
theorem reductionProof5987 : EqualModuloRelations reduction5987.relations reduction5987.input reduction5987.output := by lin_cert using reduction5987.terms
theorem substitutionProof5987 : IsMapEvaluation generatorImages reduction5987.relations [0,16,452] reduction5987.output := by lin_cert using reduction5987.terms
def map_41_172 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6115 : InImage map_41_172 image6115 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6115 : Bundle := named_bundle% "RealMapCertificates/relations/basis6115.json"
theorem reductionProof6115 : EqualModuloRelations reduction6115.relations reduction6115.input reduction6115.output := by lin_cert using reduction6115.terms
theorem substitutionProof6115 : IsMapEvaluation generatorImages reduction6115.relations [0,16,17,225] reduction6115.output := by lin_cert using reduction6115.terms
def image6116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6116 : InImage map_41_172 image6116 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6116 : Bundle := named_bundle% "RealMapCertificates/relations/basis6116.json"
theorem reductionProof6116 : EqualModuloRelations reduction6116.relations reduction6116.input reduction6116.output := by lin_cert using reduction6116.terms
theorem substitutionProof6116 : IsMapEvaluation generatorImages reduction6116.relations [0,0,17,452] reduction6116.output := by lin_cert using reduction6116.terms
def map_41_173 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image6204 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6204 : InImage map_41_173 image6204 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6204 : Bundle := named_bundle% "RealMapCertificates/relations/basis6204.json"
theorem reductionProof6204 : EqualModuloRelations reduction6204.relations reduction6204.input reduction6204.output := by lin_cert using reduction6204.terms
theorem substitutionProof6204 : IsMapEvaluation generatorImages reduction6204.relations [0,0,17,17,225] reduction6204.output := by lin_cert using reduction6204.terms
def map_41_174 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image6311 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6311 : InImage map_41_174 image6311 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6311 : Bundle := named_bundle% "RealMapCertificates/relations/basis6311.json"
theorem reductionProof6311 : EqualModuloRelations reduction6311.relations reduction6311.input reduction6311.output := by lin_cert using reduction6311.terms
theorem substitutionProof6311 : IsMapEvaluation generatorImages reduction6311.relations [8,8,433] reduction6311.output := by lin_cert using reduction6311.terms
def image6312 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6312 : InImage map_41_174 image6312 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6312 : Bundle := named_bundle% "RealMapCertificates/relations/basis6312.json"
theorem reductionProof6312 : EqualModuloRelations reduction6312.relations reduction6312.input reduction6312.output := by lin_cert using reduction6312.terms
theorem substitutionProof6312 : IsMapEvaluation generatorImages reduction6312.relations [8,8,8,8,8,125] reduction6312.output := by lin_cert using reduction6312.terms
def image6313 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6313 : InImage map_41_174 image6313 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6313 : Bundle := named_bundle% "RealMapCertificates/relations/basis6313.json"
theorem reductionProof6313 : EqualModuloRelations reduction6313.relations reduction6313.input reduction6313.output := by lin_cert using reduction6313.terms
theorem substitutionProof6313 : IsMapEvaluation generatorImages reduction6313.relations [0,0,0,0,0,0,0,725] reduction6313.output := by lin_cert using reduction6313.terms
end RealMapCertificates
