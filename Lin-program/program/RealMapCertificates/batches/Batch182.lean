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
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 80 => []
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 136 => [[4,4,4,5,7,7]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 193 => [[5,5,7,12]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 257 => [[4,4,6,8,12]]
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 315 => [[4,4,5,5,7,12]]
  | 345 => [[4,4,5,7,7,12]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 509 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 558 => []
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 665 => [[0,0,4,5,8,12,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 807 => []
  | 808 => [[0,0,4,4,5,8,12,12]]
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 873 => [[4,4,4,4,4,4,5,7,7,12]]
  | 896 => []
  | 919 => []
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 1143 => []
  | 1144 => [[0,0,4,4,4,4,5,8,12,12]]
  | 1180 => []
  | 1218 => []
  | 1219 => [[4,4,4,7,7,7,12,12]]
  | 1315 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1438 => [[4,4,4,4,7,7,7,12,12]]
  | 1501 => [[4,4,4,5,5,5,9,12,12]]
  | _ => []
def map_41_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6455 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6455 : InImage map_41_175 image6455 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6455 : Bundle := named_bundle% "RealMapCertificates/relations/basis6455.json"
theorem reductionProof6455 : EqualModuloRelations reduction6455.relations reduction6455.input reduction6455.output := by lin_cert using reduction6455.terms
theorem substitutionProof6455 : IsMapEvaluation generatorImages reduction6455.relations [0,8,17,298] reduction6455.output := by lin_cert using reduction6455.terms
def image6456 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6456 : InImage map_41_175 image6456 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6456 : Bundle := named_bundle% "RealMapCertificates/relations/basis6456.json"
theorem reductionProof6456 : EqualModuloRelations reduction6456.relations reduction6456.input reduction6456.output := by lin_cert using reduction6456.terms
theorem substitutionProof6456 : IsMapEvaluation generatorImages reduction6456.relations [0,0,0,0,0,0,752] reduction6456.output := by lin_cert using reduction6456.terms
def map_41_176 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6540 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6540 : InImage map_41_176 image6540 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6540 : Bundle := named_bundle% "RealMapCertificates/relations/basis6540.json"
theorem reductionProof6540 : EqualModuloRelations reduction6540.relations reduction6540.input reduction6540.output := by lin_cert using reduction6540.terms
theorem substitutionProof6540 : IsMapEvaluation generatorImages reduction6540.relations [829] reduction6540.output := by lin_cert using reduction6540.terms
def map_41_177 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6668 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6668 : InImage map_41_177 image6668 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6668 : Bundle := named_bundle% "RealMapCertificates/relations/basis6668.json"
theorem reductionProof6668 : EqualModuloRelations reduction6668.relations reduction6668.input reduction6668.output := by lin_cert using reduction6668.terms
theorem substitutionProof6668 : IsMapEvaluation generatorImages reduction6668.relations [8,8,16,225] reduction6668.output := by lin_cert using reduction6668.terms
def image6669 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation6669 : InImage map_41_177 image6669 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6669 : Bundle := named_bundle% "RealMapCertificates/relations/basis6669.json"
theorem reductionProof6669 : EqualModuloRelations reduction6669.relations reduction6669.input reduction6669.output := by lin_cert using reduction6669.terms
theorem substitutionProof6669 : IsMapEvaluation generatorImages reduction6669.relations [8,8,8,8,8,136] reduction6669.output := by lin_cert using reduction6669.terms
def map_41_179 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6900 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6900 : InImage map_41_179 image6900 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6900 : Bundle := named_bundle% "RealMapCertificates/relations/basis6900.json"
theorem reductionProof6900 : EqualModuloRelations reduction6900.relations reduction6900.input reduction6900.output := by lin_cert using reduction6900.terms
theorem substitutionProof6900 : IsMapEvaluation generatorImages reduction6900.relations [873] reduction6900.output := by lin_cert using reduction6900.terms
def image6901 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6901 : InImage map_41_179 image6901 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6901 : Bundle := named_bundle% "RealMapCertificates/relations/basis6901.json"
theorem reductionProof6901 : EqualModuloRelations reduction6901.relations reduction6901.input reduction6901.output := by lin_cert using reduction6901.terms
theorem substitutionProof6901 : IsMapEvaluation generatorImages reduction6901.relations [0,0,0,0,0,64,224] reduction6901.output := by lin_cert using reduction6901.terms
def map_41_180 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7030 : InImage map_41_180 image7030 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7030 : Bundle := named_bundle% "RealMapCertificates/relations/basis7030.json"
theorem reductionProof7030 : EqualModuloRelations reduction7030.relations reduction7030.input reduction7030.output := by lin_cert using reduction7030.terms
theorem substitutionProof7030 : IsMapEvaluation generatorImages reduction7030.relations [8,8,8,298] reduction7030.output := by lin_cert using reduction7030.terms
def image7031 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7031 : InImage map_41_180 image7031 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7031 : Bundle := named_bundle% "RealMapCertificates/relations/basis7031.json"
theorem reductionProof7031 : EqualModuloRelations reduction7031.relations reduction7031.input reduction7031.output := by lin_cert using reduction7031.terms
theorem substitutionProof7031 : IsMapEvaluation generatorImages reduction7031.relations [8,8,8,8,8,8,88] reduction7031.output := by lin_cert using reduction7031.terms
def image7032 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7032 : InImage map_41_180 image7032 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7032 : Bundle := named_bundle% "RealMapCertificates/relations/basis7032.json"
theorem reductionProof7032 : EqualModuloRelations reduction7032.relations reduction7032.input reduction7032.output := by lin_cert using reduction7032.terms
theorem substitutionProof7032 : IsMapEvaluation generatorImages reduction7032.relations [0,0,0,0,0,0,64,225] reduction7032.output := by lin_cert using reduction7032.terms
def map_41_182 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7257 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7257 : InImage map_41_182 image7257 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7257 : Bundle := named_bundle% "RealMapCertificates/relations/basis7257.json"
theorem reductionProof7257 : EqualModuloRelations reduction7257.relations reduction7257.input reduction7257.output := by lin_cert using reduction7257.terms
theorem substitutionProof7257 : IsMapEvaluation generatorImages reduction7257.relations [8,687] reduction7257.output := by lin_cert using reduction7257.terms
def image7258 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7258 : InImage map_41_182 image7258 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7258 : Bundle := named_bundle% "RealMapCertificates/relations/basis7258.json"
theorem reductionProof7258 : EqualModuloRelations reduction7258.relations reduction7258.input reduction7258.output := by lin_cert using reduction7258.terms
theorem substitutionProof7258 : IsMapEvaluation generatorImages reduction7258.relations [0,0,0,0,0,0,0,0,807] reduction7258.output := by lin_cert using reduction7258.terms
def map_41_183 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7395 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7395 : InImage map_41_183 image7395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7395 : Bundle := named_bundle% "RealMapCertificates/relations/basis7395.json"
theorem reductionProof7395 : EqualModuloRelations reduction7395.relations reduction7395.input reduction7395.output := by lin_cert using reduction7395.terms
theorem substitutionProof7395 : IsMapEvaluation generatorImages reduction7395.relations [8,8,8,8,225] reduction7395.output := by lin_cert using reduction7395.terms
def image7396 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7396 : InImage map_41_183 image7396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7396 : Bundle := named_bundle% "RealMapCertificates/relations/basis7396.json"
theorem reductionProof7396 : EqualModuloRelations reduction7396.relations reduction7396.input reduction7396.output := by lin_cert using reduction7396.terms
theorem substitutionProof7396 : IsMapEvaluation generatorImages reduction7396.relations [8,8,8,8,8,8,100] reduction7396.output := by lin_cert using reduction7396.terms
def image7397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7397 : InImage map_41_183 image7397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7397 : Bundle := named_bundle% "RealMapCertificates/relations/basis7397.json"
theorem reductionProof7397 : EqualModuloRelations reduction7397.relations reduction7397.input reduction7397.output := by lin_cert using reduction7397.terms
theorem substitutionProof7397 : IsMapEvaluation generatorImages reduction7397.relations [0,0,0,0,0,0,0,0,0,0,795] reduction7397.output := by lin_cert using reduction7397.terms
def map_41_185 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7623 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7623 : InImage map_41_185 image7623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7623 : Bundle := named_bundle% "RealMapCertificates/relations/basis7623.json"
theorem reductionProof7623 : EqualModuloRelations reduction7623.relations reduction7623.input reduction7623.output := by lin_cert using reduction7623.terms
theorem substitutionProof7623 : IsMapEvaluation generatorImages reduction7623.relations [8,724] reduction7623.output := by lin_cert using reduction7623.terms
def image7624 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7624 : InImage map_41_185 image7624 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7624 : Bundle := named_bundle% "RealMapCertificates/relations/basis7624.json"
theorem reductionProof7624 : EqualModuloRelations reduction7624.relations reduction7624.input reduction7624.output := by lin_cert using reduction7624.terms
theorem substitutionProof7624 : IsMapEvaluation generatorImages reduction7624.relations [0,0,0,896] reduction7624.output := by lin_cert using reduction7624.terms
def map_41_186 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image7756 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7756 : InImage map_41_186 image7756 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7756 : Bundle := named_bundle% "RealMapCertificates/relations/basis7756.json"
theorem reductionProof7756 : EqualModuloRelations reduction7756.relations reduction7756.input reduction7756.output := by lin_cert using reduction7756.terms
theorem substitutionProof7756 : IsMapEvaluation generatorImages reduction7756.relations [8,8,8,8,238] reduction7756.output := by lin_cert using reduction7756.terms
def image7757 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7757 : InImage map_41_186 image7757 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7757 : Bundle := named_bundle% "RealMapCertificates/relations/basis7757.json"
theorem reductionProof7757 : EqualModuloRelations reduction7757.relations reduction7757.input reduction7757.output := by lin_cert using reduction7757.terms
theorem substitutionProof7757 : IsMapEvaluation generatorImages reduction7757.relations [8,8,8,8,8,8,8,60] reduction7757.output := by lin_cert using reduction7757.terms
def map_41_188 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image7962 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7962 : InImage map_41_188 image7962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7962 : Bundle := named_bundle% "RealMapCertificates/relations/basis7962.json"
theorem reductionProof7962 : EqualModuloRelations reduction7962.relations reduction7962.input reduction7962.output := by lin_cert using reduction7962.terms
theorem substitutionProof7962 : IsMapEvaluation generatorImages reduction7962.relations [8,8,572] reduction7962.output := by lin_cert using reduction7962.terms
def image7963 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation7963 : InImage map_41_188 image7963 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7963 : Bundle := named_bundle% "RealMapCertificates/relations/basis7963.json"
theorem reductionProof7963 : EqualModuloRelations reduction7963.relations reduction7963.input reduction7963.output := by lin_cert using reduction7963.terms
theorem substitutionProof7963 : IsMapEvaluation generatorImages reduction7963.relations [5,64,224] reduction7963.output := by lin_cert using reduction7963.terms
def map_41_189 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8107 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8107 : InImage map_41_189 image8107 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8107 : Bundle := named_bundle% "RealMapCertificates/relations/basis8107.json"
theorem reductionProof8107 : EqualModuloRelations reduction8107.relations reduction8107.input reduction8107.output := by lin_cert using reduction8107.terms
theorem substitutionProof8107 : IsMapEvaluation generatorImages reduction8107.relations [8,8,8,8,16,138] reduction8107.output := by lin_cert using reduction8107.terms
def image8108 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8108 : InImage map_41_189 image8108 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8108 : Bundle := named_bundle% "RealMapCertificates/relations/basis8108.json"
theorem reductionProof8108 : EqualModuloRelations reduction8108.relations reduction8108.input reduction8108.output := by lin_cert using reduction8108.terms
theorem substitutionProof8108 : IsMapEvaluation generatorImages reduction8108.relations [8,8,8,8,8,8,8,63] reduction8108.output := by lin_cert using reduction8108.terms
def map_41_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8234 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8234 : InImage map_41_190 image8234 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8234 : Bundle := named_bundle% "RealMapCertificates/relations/basis8234.json"
theorem reductionProof8234 : EqualModuloRelations reduction8234.relations reduction8234.input reduction8234.output := by lin_cert using reduction8234.terms
theorem substitutionProof8234 : IsMapEvaluation generatorImages reduction8234.relations [0,64,297] reduction8234.output := by lin_cert using reduction8234.terms
def map_41_191 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image8346 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8346 : InImage map_41_191 image8346 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8346 : Bundle := named_bundle% "RealMapCertificates/relations/basis8346.json"
theorem reductionProof8346 : EqualModuloRelations reduction8346.relations reduction8346.input reduction8346.output := by lin_cert using reduction8346.terms
theorem substitutionProof8346 : IsMapEvaluation generatorImages reduction8346.relations [8,8,597] reduction8346.output := by lin_cert using reduction8346.terms
def image8347 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8347 : InImage map_41_191 image8347 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8347 : Bundle := named_bundle% "RealMapCertificates/relations/basis8347.json"
theorem reductionProof8347 : EqualModuloRelations reduction8347.relations reduction8347.input reduction8347.output := by lin_cert using reduction8347.terms
theorem substitutionProof8347 : IsMapEvaluation generatorImages reduction8347.relations [0,0,64,298] reduction8347.output := by lin_cert using reduction8347.terms
def map_41_192 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image8480 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8480 : InImage map_41_192 image8480 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8480 : Bundle := named_bundle% "RealMapCertificates/relations/basis8480.json"
theorem reductionProof8480 : EqualModuloRelations reduction8480.relations reduction8480.input reduction8480.output := by lin_cert using reduction8480.terms
theorem substitutionProof8480 : IsMapEvaluation generatorImages reduction8480.relations [8,8,8,8,8,185] reduction8480.output := by lin_cert using reduction8480.terms
def image8481 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8481 : InImage map_41_192 image8481 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8481 : Bundle := named_bundle% "RealMapCertificates/relations/basis8481.json"
theorem reductionProof8481 : EqualModuloRelations reduction8481.relations reduction8481.input reduction8481.output := by lin_cert using reduction8481.terms
theorem substitutionProof8481 : IsMapEvaluation generatorImages reduction8481.relations [8,8,8,8,8,8,8,8,42] reduction8481.output := by lin_cert using reduction8481.terms
def map_41_193 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image8615 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8615 : InImage map_41_193 image8615 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8615 : Bundle := named_bundle% "RealMapCertificates/relations/basis8615.json"
theorem reductionProof8615 : EqualModuloRelations reduction8615.relations reduction8615.input reduction8615.output := by lin_cert using reduction8615.terms
theorem substitutionProof8615 : IsMapEvaluation generatorImages reduction8615.relations [0,8,64,224] reduction8615.output := by lin_cert using reduction8615.terms
def map_41_194 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image8721 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8721 : InImage map_41_194 image8721 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8721 : Bundle := named_bundle% "RealMapCertificates/relations/basis8721.json"
theorem reductionProof8721 : EqualModuloRelations reduction8721.relations reduction8721.input reduction8721.output := by lin_cert using reduction8721.terms
theorem substitutionProof8721 : IsMapEvaluation generatorImages reduction8721.relations [8,8,8,453] reduction8721.output := by lin_cert using reduction8721.terms
def image8722 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8722 : InImage map_41_194 image8722 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8722 : Bundle := named_bundle% "RealMapCertificates/relations/basis8722.json"
theorem reductionProof8722 : EqualModuloRelations reduction8722.relations reduction8722.input reduction8722.output := by lin_cert using reduction8722.terms
theorem substitutionProof8722 : IsMapEvaluation generatorImages reduction8722.relations [0,0,8,64,225] reduction8722.output := by lin_cert using reduction8722.terms
def map_41_195 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image8885 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8885 : InImage map_41_195 image8885 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8885 : Bundle := named_bundle% "RealMapCertificates/relations/basis8885.json"
theorem reductionProof8885 : EqualModuloRelations reduction8885.relations reduction8885.input reduction8885.output := by lin_cert using reduction8885.terms
theorem substitutionProof8885 : IsMapEvaluation generatorImages reduction8885.relations [8,8,8,8,8,8,138] reduction8885.output := by lin_cert using reduction8885.terms
def image8886 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8886 : InImage map_41_195 image8886 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8886 : Bundle := named_bundle% "RealMapCertificates/relations/basis8886.json"
theorem reductionProof8886 : EqualModuloRelations reduction8886.relations reduction8886.input reduction8886.output := by lin_cert using reduction8886.terms
theorem substitutionProof8886 : IsMapEvaluation generatorImages reduction8886.relations [8,8,8,8,8,8,8,8,46] reduction8886.output := by lin_cert using reduction8886.terms
def map_41_197 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9149 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9149 : InImage map_41_197 image9149 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9149 : Bundle := named_bundle% "RealMapCertificates/relations/basis9149.json"
theorem reductionProof9149 : EqualModuloRelations reduction9149.relations reduction9149.input reduction9149.output := by lin_cert using reduction9149.terms
theorem substitutionProof9149 : IsMapEvaluation generatorImages reduction9149.relations [17,725] reduction9149.output := by lin_cert using reduction9149.terms
def image9150 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9150 : InImage map_41_197 image9150 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9150 : Bundle := named_bundle% "RealMapCertificates/relations/basis9150.json"
theorem reductionProof9150 : EqualModuloRelations reduction9150.relations reduction9150.input reduction9150.output := by lin_cert using reduction9150.terms
theorem substitutionProof9150 : IsMapEvaluation generatorImages reduction9150.relations [8,8,8,490] reduction9150.output := by lin_cert using reduction9150.terms
def image9151 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9151 : InImage map_41_197 image9151 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9151 : Bundle := named_bundle% "RealMapCertificates/relations/basis9151.json"
theorem reductionProof9151 : EqualModuloRelations reduction9151.relations reduction9151.input reduction9151.output := by lin_cert using reduction9151.terms
theorem substitutionProof9151 : IsMapEvaluation generatorImages reduction9151.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,919] reduction9151.output := by lin_cert using reduction9151.terms
def map_41_198 : Matrix 2 4 := fun i j => ([false,false,false,true,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image9324 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation9324 : InImage map_41_198 image9324 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9324 : Bundle := named_bundle% "RealMapCertificates/relations/basis9324.json"
theorem reductionProof9324 : EqualModuloRelations reduction9324.relations reduction9324.input reduction9324.output := by lin_cert using reduction9324.terms
theorem substitutionProof9324 : IsMapEvaluation generatorImages reduction9324.relations [1144] reduction9324.output := by lin_cert using reduction9324.terms
def image9325 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9325 : InImage map_41_198 image9325 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9325 : Bundle := named_bundle% "RealMapCertificates/relations/basis9325.json"
theorem reductionProof9325 : EqualModuloRelations reduction9325.relations reduction9325.input reduction9325.output := by lin_cert using reduction9325.terms
theorem substitutionProof9325 : IsMapEvaluation generatorImages reduction9325.relations [1143] reduction9325.output := by lin_cert using reduction9325.terms
def image9326 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9326 : InImage map_41_198 image9326 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9326 : Bundle := named_bundle% "RealMapCertificates/relations/basis9326.json"
theorem reductionProof9326 : EqualModuloRelations reduction9326.relations reduction9326.input reduction9326.output := by lin_cert using reduction9326.terms
theorem substitutionProof9326 : IsMapEvaluation generatorImages reduction9326.relations [8,8,8,8,8,8,147] reduction9326.output := by lin_cert using reduction9326.terms
def image9327 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9327 : InImage map_41_198 image9327 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9327 : Bundle := named_bundle% "RealMapCertificates/relations/basis9327.json"
theorem reductionProof9327 : EqualModuloRelations reduction9327.relations reduction9327.input reduction9327.output := by lin_cert using reduction9327.terms
theorem substitutionProof9327 : IsMapEvaluation generatorImages reduction9327.relations [8,8,8,8,8,8,8,8,51] reduction9327.output := by lin_cert using reduction9327.terms
def map_41_200 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9615 : InImage map_41_200 image9615 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9615 : Bundle := named_bundle% "RealMapCertificates/relations/basis9615.json"
theorem reductionProof9615 : EqualModuloRelations reduction9615.relations reduction9615.input reduction9615.output := by lin_cert using reduction9615.terms
theorem substitutionProof9615 : IsMapEvaluation generatorImages reduction9615.relations [17,759] reduction9615.output := by lin_cert using reduction9615.terms
def image9616 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9616 : InImage map_41_200 image9616 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9616 : Bundle := named_bundle% "RealMapCertificates/relations/basis9616.json"
theorem reductionProof9616 : EqualModuloRelations reduction9616.relations reduction9616.input reduction9616.output := by lin_cert using reduction9616.terms
theorem substitutionProof9616 : IsMapEvaluation generatorImages reduction9616.relations [8,8,8,8,315] reduction9616.output := by lin_cert using reduction9616.terms
def map_41_201 : Matrix 3 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9815 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation9815 : InImage map_41_201 image9815 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9815 : Bundle := named_bundle% "RealMapCertificates/relations/basis9815.json"
theorem reductionProof9815 : EqualModuloRelations reduction9815.relations reduction9815.input reduction9815.output := by lin_cert using reduction9815.terms
theorem substitutionProof9815 : IsMapEvaluation generatorImages reduction9815.relations [17,778] reduction9815.output := by lin_cert using reduction9815.terms
def image9816 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9816 : InImage map_41_201 image9816 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9816 : Bundle := named_bundle% "RealMapCertificates/relations/basis9816.json"
theorem reductionProof9816 : EqualModuloRelations reduction9816.relations reduction9816.input reduction9816.output := by lin_cert using reduction9816.terms
theorem substitutionProof9816 : IsMapEvaluation generatorImages reduction9816.relations [8,8,8,8,8,8,17,64] reduction9816.output := by lin_cert using reduction9816.terms
def image9817 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation9817 : InImage map_41_201 image9817 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9817 : Bundle := named_bundle% "RealMapCertificates/relations/basis9817.json"
theorem reductionProof9817 : EqualModuloRelations reduction9817.relations reduction9817.input reduction9817.output := by lin_cert using reduction9817.terms
theorem substitutionProof9817 : IsMapEvaluation generatorImages reduction9817.relations [8,8,8,8,8,8,8,9,51] reduction9817.output := by lin_cert using reduction9817.terms
def image9818 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9818 : InImage map_41_201 image9818 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9818 : Bundle := named_bundle% "RealMapCertificates/relations/basis9818.json"
theorem reductionProof9818 : EqualModuloRelations reduction9818.relations reduction9818.input reduction9818.output := by lin_cert using reduction9818.terms
theorem substitutionProof9818 : IsMapEvaluation generatorImages reduction9818.relations [0,1180] reduction9818.output := by lin_cert using reduction9818.terms
def map_41_203 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image10108 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10108 : InImage map_41_203 image10108 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10108 : Bundle := named_bundle% "RealMapCertificates/relations/basis10108.json"
theorem reductionProof10108 : EqualModuloRelations reduction10108.relations reduction10108.input reduction10108.output := by lin_cert using reduction10108.terms
theorem substitutionProof10108 : IsMapEvaluation generatorImages reduction10108.relations [138,244] reduction10108.output := by lin_cert using reduction10108.terms
def image10109 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10109 : InImage map_41_203 image10109 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10109 : Bundle := named_bundle% "RealMapCertificates/relations/basis10109.json"
theorem reductionProof10109 : EqualModuloRelations reduction10109.relations reduction10109.input reduction10109.output := by lin_cert using reduction10109.terms
theorem substitutionProof10109 : IsMapEvaluation generatorImages reduction10109.relations [16,17,491] reduction10109.output := by lin_cert using reduction10109.terms
def image10110 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10110 : InImage map_41_203 image10110 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10110 : Bundle := named_bundle% "RealMapCertificates/relations/basis10110.json"
theorem reductionProof10110 : EqualModuloRelations reduction10110.relations reduction10110.input reduction10110.output := by lin_cert using reduction10110.terms
theorem substitutionProof10110 : IsMapEvaluation generatorImages reduction10110.relations [8,8,8,8,345] reduction10110.output := by lin_cert using reduction10110.terms
def map_41_204 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10309 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10309 : InImage map_41_204 image10309 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10309 : Bundle := named_bundle% "RealMapCertificates/relations/basis10309.json"
theorem reductionProof10309 : EqualModuloRelations reduction10309.relations reduction10309.input reduction10309.output := by lin_cert using reduction10309.terms
theorem substitutionProof10309 : IsMapEvaluation generatorImages reduction10309.relations [8,955] reduction10309.output := by lin_cert using reduction10309.terms
def image10310 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10310 : InImage map_41_204 image10310 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10310 : Bundle := named_bundle% "RealMapCertificates/relations/basis10310.json"
theorem reductionProof10310 : EqualModuloRelations reduction10310.relations reduction10310.input reduction10310.output := by lin_cert using reduction10310.terms
theorem substitutionProof10310 : IsMapEvaluation generatorImages reduction10310.relations [8,8,8,8,8,8,8,113] reduction10310.output := by lin_cert using reduction10310.terms
def image10311 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10311 : InImage map_41_204 image10311 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10311 : Bundle := named_bundle% "RealMapCertificates/relations/basis10311.json"
theorem reductionProof10311 : EqualModuloRelations reduction10311.relations reduction10311.input reduction10311.output := by lin_cert using reduction10311.terms
theorem substitutionProof10311 : IsMapEvaluation generatorImages reduction10311.relations [8,8,8,8,8,8,8,13,51] reduction10311.output := by lin_cert using reduction10311.terms
def image10312 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10312 : InImage map_41_204 image10312 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10312 : Bundle := named_bundle% "RealMapCertificates/relations/basis10312.json"
theorem reductionProof10312 : EqualModuloRelations reduction10312.relations reduction10312.input reduction10312.output := by lin_cert using reduction10312.terms
theorem substitutionProof10312 : IsMapEvaluation generatorImages reduction10312.relations [0,17,17,491] reduction10312.output := by lin_cert using reduction10312.terms
def map_41_205 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image10489 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10489 : InImage map_41_205 image10489 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10489 : Bundle := named_bundle% "RealMapCertificates/relations/basis10489.json"
theorem reductionProof10489 : EqualModuloRelations reduction10489.relations reduction10489.input reduction10489.output := by lin_cert using reduction10489.terms
theorem substitutionProof10489 : IsMapEvaluation generatorImages reduction10489.relations [0,0,137,246] reduction10489.output := by lin_cert using reduction10489.terms
def image10490 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10490 : InImage map_41_205 image10490 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10490 : Bundle := named_bundle% "RealMapCertificates/relations/basis10490.json"
theorem reductionProof10490 : EqualModuloRelations reduction10490.relations reduction10490.input reduction10490.output := by lin_cert using reduction10490.terms
theorem substitutionProof10490 : IsMapEvaluation generatorImages reduction10490.relations [0,0,59,491] reduction10490.output := by lin_cert using reduction10490.terms
def map_41_206 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image10637 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10637 : InImage map_41_206 image10637 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10637 : Bundle := named_bundle% "RealMapCertificates/relations/basis10637.json"
theorem reductionProof10637 : EqualModuloRelations reduction10637.relations reduction10637.input reduction10637.output := by lin_cert using reduction10637.terms
theorem substitutionProof10637 : IsMapEvaluation generatorImages reduction10637.relations [138,257] reduction10637.output := by lin_cert using reduction10637.terms
def image10638 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10638 : InImage map_41_206 image10638 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10638 : Bundle := named_bundle% "RealMapCertificates/relations/basis10638.json"
theorem reductionProof10638 : EqualModuloRelations reduction10638.relations reduction10638.input reduction10638.output := by lin_cert using reduction10638.terms
theorem substitutionProof10638 : IsMapEvaluation generatorImages reduction10638.relations [8,17,623] reduction10638.output := by lin_cert using reduction10638.terms
def image10639 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10639 : InImage map_41_206 image10639 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10639 : Bundle := named_bundle% "RealMapCertificates/relations/basis10639.json"
theorem reductionProof10639 : EqualModuloRelations reduction10639.relations reduction10639.input reduction10639.output := by lin_cert using reduction10639.terms
theorem substitutionProof10639 : IsMapEvaluation generatorImages reduction10639.relations [8,8,8,8,8,247] reduction10639.output := by lin_cert using reduction10639.terms
def image10640 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10640 : InImage map_41_206 image10640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10640 : Bundle := named_bundle% "RealMapCertificates/relations/basis10640.json"
theorem reductionProof10640 : EqualModuloRelations reduction10640.relations reduction10640.input reduction10640.output := by lin_cert using reduction10640.terms
theorem substitutionProof10640 : IsMapEvaluation generatorImages reduction10640.relations [0,0,0,0,1218] reduction10640.output := by lin_cert using reduction10640.terms
def map_41_207 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image10865 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10865 : InImage map_41_207 image10865 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10865 : Bundle := named_bundle% "RealMapCertificates/relations/basis10865.json"
theorem reductionProof10865 : EqualModuloRelations reduction10865.relations reduction10865.input reduction10865.output := by lin_cert using reduction10865.terms
theorem substitutionProof10865 : IsMapEvaluation generatorImages reduction10865.relations [8,17,637] reduction10865.output := by lin_cert using reduction10865.terms
def image10866 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10866 : InImage map_41_207 image10866 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10866 : Bundle := named_bundle% "RealMapCertificates/relations/basis10866.json"
theorem reductionProof10866 : EqualModuloRelations reduction10866.relations reduction10866.input reduction10866.output := by lin_cert using reduction10866.terms
theorem substitutionProof10866 : IsMapEvaluation generatorImages reduction10866.relations [8,8,8,8,8,8,9,13,51] reduction10866.output := by lin_cert using reduction10866.terms
def image10867 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10867 : InImage map_41_207 image10867 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10867 : Bundle := named_bundle% "RealMapCertificates/relations/basis10867.json"
theorem reductionProof10867 : EqualModuloRelations reduction10867.relations reduction10867.input reduction10867.output := by lin_cert using reduction10867.terms
theorem substitutionProof10867 : IsMapEvaluation generatorImages reduction10867.relations [8,8,8,8,8,8,8,118] reduction10867.output := by lin_cert using reduction10867.terms
def image10868 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10868 : InImage map_41_207 image10868 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10868 : Bundle := named_bundle% "RealMapCertificates/relations/basis10868.json"
theorem reductionProof10868 : EqualModuloRelations reduction10868.relations reduction10868.input reduction10868.output := by lin_cert using reduction10868.terms
theorem substitutionProof10868 : IsMapEvaluation generatorImages reduction10868.relations [0,17,17,516] reduction10868.output := by lin_cert using reduction10868.terms
def map_41_209 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11167 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11167 : InImage map_41_209 image11167 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11167 : Bundle := named_bundle% "RealMapCertificates/relations/basis11167.json"
theorem reductionProof11167 : EqualModuloRelations reduction11167.relations reduction11167.input reduction11167.output := by lin_cert using reduction11167.terms
theorem substitutionProof11167 : IsMapEvaluation generatorImages reduction11167.relations [16,138,149] reduction11167.output := by lin_cert using reduction11167.terms
def image11168 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11168 : InImage map_41_209 image11168 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11168 : Bundle := named_bundle% "RealMapCertificates/relations/basis11168.json"
theorem reductionProof11168 : EqualModuloRelations reduction11168.relations reduction11168.input reduction11168.output := by lin_cert using reduction11168.terms
theorem substitutionProof11168 : IsMapEvaluation generatorImages reduction11168.relations [8,8,17,491] reduction11168.output := by lin_cert using reduction11168.terms
def image11169 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation11169 : InImage map_41_209 image11169 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11169 : Bundle := named_bundle% "RealMapCertificates/relations/basis11169.json"
theorem reductionProof11169 : EqualModuloRelations reduction11169.relations reduction11169.input reduction11169.output := by lin_cert using reduction11169.terms
theorem substitutionProof11169 : IsMapEvaluation generatorImages reduction11169.relations [8,8,8,8,8,259] reduction11169.output := by lin_cert using reduction11169.terms
def image11170 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11170 : InImage map_41_209 image11170 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11170 : Bundle := named_bundle% "RealMapCertificates/relations/basis11170.json"
theorem reductionProof11170 : EqualModuloRelations reduction11170.relations reduction11170.input reduction11170.output := by lin_cert using reduction11170.terms
theorem substitutionProof11170 : IsMapEvaluation generatorImages reduction11170.relations [0,149,244] reduction11170.output := by lin_cert using reduction11170.terms
def map_41_210 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image11367 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11367 : InImage map_41_210 image11367 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11367 : Bundle := named_bundle% "RealMapCertificates/relations/basis11367.json"
theorem reductionProof11367 : EqualModuloRelations reduction11367.relations reduction11367.input reduction11367.output := by lin_cert using reduction11367.terms
theorem substitutionProof11367 : IsMapEvaluation generatorImages reduction11367.relations [8,8,808] reduction11367.output := by lin_cert using reduction11367.terms
def image11368 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11368 : InImage map_41_210 image11368 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11368 : Bundle := named_bundle% "RealMapCertificates/relations/basis11368.json"
theorem reductionProof11368 : EqualModuloRelations reduction11368.relations reduction11368.input reduction11368.output := by lin_cert using reduction11368.terms
theorem substitutionProof11368 : IsMapEvaluation generatorImages reduction11368.relations [8,8,8,8,8,8,13,13,51] reduction11368.output := by lin_cert using reduction11368.terms
def image11369 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11369 : InImage map_41_210 image11369 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11369 : Bundle := named_bundle% "RealMapCertificates/relations/basis11369.json"
theorem reductionProof11369 : EqualModuloRelations reduction11369.relations reduction11369.input reduction11369.output := by lin_cert using reduction11369.terms
theorem substitutionProof11369 : IsMapEvaluation generatorImages reduction11369.relations [8,8,8,8,8,8,8,127] reduction11369.output := by lin_cert using reduction11369.terms
def image11370 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11370 : InImage map_41_210 image11370 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11370 : Bundle := named_bundle% "RealMapCertificates/relations/basis11370.json"
theorem reductionProof11370 : EqualModuloRelations reduction11370.relations reduction11370.input reduction11370.output := by lin_cert using reduction11370.terms
theorem substitutionProof11370 : IsMapEvaluation generatorImages reduction11370.relations [1,149,244] reduction11370.output := by lin_cert using reduction11370.terms
def image11371 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11371 : InImage map_41_210 image11371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11371 : Bundle := named_bundle% "RealMapCertificates/relations/basis11371.json"
theorem reductionProof11371 : EqualModuloRelations reduction11371.relations reduction11371.input reduction11371.output := by lin_cert using reduction11371.terms
theorem substitutionProof11371 : IsMapEvaluation generatorImages reduction11371.relations [0,0,1335] reduction11371.output := by lin_cert using reduction11371.terms
def map_41_211 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11552 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11552 : InImage map_41_211 image11552 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11552 : Bundle := named_bundle% "RealMapCertificates/relations/basis11552.json"
theorem reductionProof11552 : EqualModuloRelations reduction11552.relations reduction11552.input reduction11552.output := by lin_cert using reduction11552.terms
theorem substitutionProof11552 : IsMapEvaluation generatorImages reduction11552.relations [0,0,0,0,0,64,491] reduction11552.output := by lin_cert using reduction11552.terms
def map_41_212 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image11702 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11702 : InImage map_41_212 image11702 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11702 : Bundle := named_bundle% "RealMapCertificates/relations/basis11702.json"
theorem reductionProof11702 : EqualModuloRelations reduction11702.relations reduction11702.input reduction11702.output := by lin_cert using reduction11702.terms
theorem substitutionProof11702 : IsMapEvaluation generatorImages reduction11702.relations [8,113,244] reduction11702.output := by lin_cert using reduction11702.terms
def image11703 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11703 : InImage map_41_212 image11703 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11703 : Bundle := named_bundle% "RealMapCertificates/relations/basis11703.json"
theorem reductionProof11703 : EqualModuloRelations reduction11703.relations reduction11703.input reduction11703.output := by lin_cert using reduction11703.terms
theorem substitutionProof11703 : IsMapEvaluation generatorImages reduction11703.relations [8,8,17,516] reduction11703.output := by lin_cert using reduction11703.terms
def image11704 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11704 : InImage map_41_212 image11704 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11704 : Bundle := named_bundle% "RealMapCertificates/relations/basis11704.json"
theorem reductionProof11704 : EqualModuloRelations reduction11704.relations reduction11704.input reduction11704.output := by lin_cert using reduction11704.terms
theorem substitutionProof11704 : IsMapEvaluation generatorImages reduction11704.relations [8,8,8,8,8,8,193] reduction11704.output := by lin_cert using reduction11704.terms
def image11705 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11705 : InImage map_41_212 image11705 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11705 : Bundle := named_bundle% "RealMapCertificates/relations/basis11705.json"
theorem reductionProof11705 : EqualModuloRelations reduction11705.relations reduction11705.input reduction11705.output := by lin_cert using reduction11705.terms
theorem substitutionProof11705 : IsMapEvaluation generatorImages reduction11705.relations [0,0,0,0,64,509] reduction11705.output := by lin_cert using reduction11705.terms
def image11706 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11706 : InImage map_41_212 image11706 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11706 : Bundle := named_bundle% "RealMapCertificates/relations/basis11706.json"
theorem reductionProof11706 : EqualModuloRelations reduction11706.relations reduction11706.input reduction11706.output := by lin_cert using reduction11706.terms
theorem substitutionProof11706 : IsMapEvaluation generatorImages reduction11706.relations [0,0,0,0,0,0,138,260] reduction11706.output := by lin_cert using reduction11706.terms
def map_41_213 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11951 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11951 : InImage map_41_213 image11951 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11951 : Bundle := named_bundle% "RealMapCertificates/relations/basis11951.json"
theorem reductionProof11951 : EqualModuloRelations reduction11951.relations reduction11951.input reduction11951.output := by lin_cert using reduction11951.terms
theorem substitutionProof11951 : IsMapEvaluation generatorImages reduction11951.relations [8,8,17,529] reduction11951.output := by lin_cert using reduction11951.terms
def image11952 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11952 : InImage map_41_213 image11952 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11952 : Bundle := named_bundle% "RealMapCertificates/relations/basis11952.json"
theorem reductionProof11952 : EqualModuloRelations reduction11952.relations reduction11952.input reduction11952.output := by lin_cert using reduction11952.terms
theorem substitutionProof11952 : IsMapEvaluation generatorImages reduction11952.relations [8,8,8,8,8,9,13,13,51] reduction11952.output := by lin_cert using reduction11952.terms
def image11953 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11953 : InImage map_41_213 image11953 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11953 : Bundle := named_bundle% "RealMapCertificates/relations/basis11953.json"
theorem reductionProof11953 : EqualModuloRelations reduction11953.relations reduction11953.input reduction11953.output := by lin_cert using reduction11953.terms
theorem substitutionProof11953 : IsMapEvaluation generatorImages reduction11953.relations [8,8,8,8,8,8,8,8,80] reduction11953.output := by lin_cert using reduction11953.terms
def image11954 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11954 : InImage map_41_213 image11954 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11954 : Bundle := named_bundle% "RealMapCertificates/relations/basis11954.json"
theorem reductionProof11954 : EqualModuloRelations reduction11954.relations reduction11954.input reduction11954.output := by lin_cert using reduction11954.terms
theorem substitutionProof11954 : IsMapEvaluation generatorImages reduction11954.relations [0,0,0,0,0,0,1315] reduction11954.output := by lin_cert using reduction11954.terms
def map_41_214 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12132 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12132 : InImage map_41_214 image12132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12132 : Bundle := named_bundle% "RealMapCertificates/relations/basis12132.json"
theorem reductionProof12132 : EqualModuloRelations reduction12132.relations reduction12132.input reduction12132.output := by lin_cert using reduction12132.terms
theorem substitutionProof12132 : IsMapEvaluation generatorImages reduction12132.relations [1438] reduction12132.output := by lin_cert using reduction12132.terms
def map_41_215 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12303 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12303 : InImage map_41_215 image12303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12303 : Bundle := named_bundle% "RealMapCertificates/relations/basis12303.json"
theorem reductionProof12303 : EqualModuloRelations reduction12303.relations reduction12303.input reduction12303.output := by lin_cert using reduction12303.terms
theorem substitutionProof12303 : IsMapEvaluation generatorImages reduction12303.relations [8,8,138,149] reduction12303.output := by lin_cert using reduction12303.terms
def image12304 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12304 : InImage map_41_215 image12304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12304 : Bundle := named_bundle% "RealMapCertificates/relations/basis12304.json"
theorem reductionProof12304 : EqualModuloRelations reduction12304.relations reduction12304.input reduction12304.output := by lin_cert using reduction12304.terms
theorem substitutionProof12304 : IsMapEvaluation generatorImages reduction12304.relations [8,8,16,17,260] reduction12304.output := by lin_cert using reduction12304.terms
def image12305 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12305 : InImage map_41_215 image12305 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12305 : Bundle := named_bundle% "RealMapCertificates/relations/basis12305.json"
theorem reductionProof12305 : EqualModuloRelations reduction12305.relations reduction12305.input reduction12305.output := by lin_cert using reduction12305.terms
theorem substitutionProof12305 : IsMapEvaluation generatorImages reduction12305.relations [8,8,8,8,8,8,208] reduction12305.output := by lin_cert using reduction12305.terms
def map_41_216 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image12513 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12513 : InImage map_41_216 image12513 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12513 : Bundle := named_bundle% "RealMapCertificates/relations/basis12513.json"
theorem reductionProof12513 : EqualModuloRelations reduction12513.relations reduction12513.input reduction12513.output := by lin_cert using reduction12513.terms
theorem substitutionProof12513 : IsMapEvaluation generatorImages reduction12513.relations [8,8,8,665] reduction12513.output := by lin_cert using reduction12513.terms
def image12514 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12514 : InImage map_41_216 image12514 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12514 : Bundle := named_bundle% "RealMapCertificates/relations/basis12514.json"
theorem reductionProof12514 : EqualModuloRelations reduction12514.relations reduction12514.input reduction12514.output := by lin_cert using reduction12514.terms
theorem substitutionProof12514 : IsMapEvaluation generatorImages reduction12514.relations [8,8,8,8,8,13,13,13,51] reduction12514.output := by lin_cert using reduction12514.terms
def image12515 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12515 : InImage map_41_216 image12515 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12515 : Bundle := named_bundle% "RealMapCertificates/relations/basis12515.json"
theorem reductionProof12515 : EqualModuloRelations reduction12515.relations reduction12515.input reduction12515.output := by lin_cert using reduction12515.terms
theorem substitutionProof12515 : IsMapEvaluation generatorImages reduction12515.relations [8,8,8,8,8,8,8,9,80] reduction12515.output := by lin_cert using reduction12515.terms
def image12516 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12516 : InImage map_41_216 image12516 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12516 : Bundle := named_bundle% "RealMapCertificates/relations/basis12516.json"
theorem reductionProof12516 : EqualModuloRelations reduction12516.relations reduction12516.input reduction12516.output := by lin_cert using reduction12516.terms
theorem substitutionProof12516 : IsMapEvaluation generatorImages reduction12516.relations [0,0,0,64,64,137] reduction12516.output := by lin_cert using reduction12516.terms
def map_41_217 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12701 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12701 : InImage map_41_217 image12701 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12701 : Bundle := named_bundle% "RealMapCertificates/relations/basis12701.json"
theorem reductionProof12701 : EqualModuloRelations reduction12701.relations reduction12701.input reduction12701.output := by lin_cert using reduction12701.terms
theorem substitutionProof12701 : IsMapEvaluation generatorImages reduction12701.relations [1501] reduction12701.output := by lin_cert using reduction12701.terms
def image12702 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12702 : InImage map_41_217 image12702 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12702 : Bundle := named_bundle% "RealMapCertificates/relations/basis12702.json"
theorem reductionProof12702 : EqualModuloRelations reduction12702.relations reduction12702.input reduction12702.output := by lin_cert using reduction12702.terms
theorem substitutionProof12702 : IsMapEvaluation generatorImages reduction12702.relations [0,0,0,0,64,64,138] reduction12702.output := by lin_cert using reduction12702.terms
def map_41_218 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image12858 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12858 : InImage map_41_218 image12858 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12858 : Bundle := named_bundle% "RealMapCertificates/relations/basis12858.json"
theorem reductionProof12858 : EqualModuloRelations reduction12858.relations reduction12858.input reduction12858.output := by lin_cert using reduction12858.terms
theorem substitutionProof12858 : IsMapEvaluation generatorImages reduction12858.relations [8,8,138,160] reduction12858.output := by lin_cert using reduction12858.terms
def image12859 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12859 : InImage map_41_218 image12859 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12859 : Bundle := named_bundle% "RealMapCertificates/relations/basis12859.json"
theorem reductionProof12859 : EqualModuloRelations reduction12859.relations reduction12859.input reduction12859.output := by lin_cert using reduction12859.terms
theorem substitutionProof12859 : IsMapEvaluation generatorImages reduction12859.relations [8,8,8,17,380] reduction12859.output := by lin_cert using reduction12859.terms
def image12860 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12860 : InImage map_41_218 image12860 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12860 : Bundle := named_bundle% "RealMapCertificates/relations/basis12860.json"
theorem reductionProof12860 : EqualModuloRelations reduction12860.relations reduction12860.input reduction12860.output := by lin_cert using reduction12860.terms
theorem substitutionProof12860 : IsMapEvaluation generatorImages reduction12860.relations [8,8,8,8,8,8,219] reduction12860.output := by lin_cert using reduction12860.terms
def map_41_219 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image13102 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13102 : InImage map_41_219 image13102 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13102 : Bundle := named_bundle% "RealMapCertificates/relations/basis13102.json"
theorem reductionProof13102 : EqualModuloRelations reduction13102.relations reduction13102.input reduction13102.output := by lin_cert using reduction13102.terms
theorem substitutionProof13102 : IsMapEvaluation generatorImages reduction13102.relations [8,8,8,17,404] reduction13102.output := by lin_cert using reduction13102.terms
def image13103 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13103 : InImage map_41_219 image13103 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13103 : Bundle := named_bundle% "RealMapCertificates/relations/basis13103.json"
theorem reductionProof13103 : EqualModuloRelations reduction13103.relations reduction13103.input reduction13103.output := by lin_cert using reduction13103.terms
theorem substitutionProof13103 : IsMapEvaluation generatorImages reduction13103.relations [8,8,8,8,9,13,13,13,51] reduction13103.output := by lin_cert using reduction13103.terms
def image13104 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13104 : InImage map_41_219 image13104 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13104 : Bundle := named_bundle% "RealMapCertificates/relations/basis13104.json"
theorem reductionProof13104 : EqualModuloRelations reduction13104.relations reduction13104.input reduction13104.output := by lin_cert using reduction13104.terms
theorem substitutionProof13104 : IsMapEvaluation generatorImages reduction13104.relations [8,8,8,8,8,8,8,13,80] reduction13104.output := by lin_cert using reduction13104.terms
def image13105 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13105 : InImage map_41_219 image13105 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13105 : Bundle := named_bundle% "RealMapCertificates/relations/basis13105.json"
theorem reductionProof13105 : EqualModuloRelations reduction13105.relations reduction13105.input reduction13105.output := by lin_cert using reduction13105.terms
theorem substitutionProof13105 : IsMapEvaluation generatorImages reduction13105.relations [0,0,0,0,0,0,64,558] reduction13105.output := by lin_cert using reduction13105.terms
def map_41_220 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13253 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13253 : InImage map_41_220 image13253 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13253 : Bundle := named_bundle% "RealMapCertificates/relations/basis13253.json"
theorem reductionProof13253 : EqualModuloRelations reduction13253.relations reduction13253.input reduction13253.output := by lin_cert using reduction13253.terms
theorem substitutionProof13253 : IsMapEvaluation generatorImages reduction13253.relations [8,1219] reduction13253.output := by lin_cert using reduction13253.terms
def image13254 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13254 : InImage map_41_220 image13254 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13254 : Bundle := named_bundle% "RealMapCertificates/relations/basis13254.json"
theorem reductionProof13254 : EqualModuloRelations reduction13254.relations reduction13254.input reduction13254.output := by lin_cert using reduction13254.terms
theorem substitutionProof13254 : IsMapEvaluation generatorImages reduction13254.relations [5,64,491] reduction13254.output := by lin_cert using reduction13254.terms
end RealMapCertificates
