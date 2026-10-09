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
  | 20 => [[5,6]]
  | 51 => [[7,7,7]]
  | 59 => []
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 185 => [[0,4,4,8,12]]
  | 219 => [[7,7,7,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 260 => []
  | 267 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 347 => []
  | 380 => []
  | 383 => []
  | 435 => [[1,9,12,12]]
  | 454 => []
  | 491 => []
  | 516 => []
  | 518 => []
  | 530 => []
  | 550 => []
  | 559 => [[0,0,5,8,12,12]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 623 => []
  | 624 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 653 => []
  | 715 => [[7,7,7,12,12]]
  | 795 => []
  | 796 => []
  | 831 => []
  | 862 => []
  | 863 => [[4,7,7,7,12,12]]
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1061 => [[4,5,5,5,9,12,12]]
  | 1288 => [[4,4,5,5,5,9,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 1772 => [[0,4,4,5,9,12,12,12]]
  | 1831 => [[4,4,6,9,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | 1855 => []
  | 1856 => []
  | 1990 => [[4,4,5,5,7,12,12,12]]
  | 2093 => [[4,4,5,7,7,12,12,12]]
  | _ => []
def map_41_221 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13428 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13428 : InImage map_41_221 image13428 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13428 : Bundle := named_bundle% "RealMapCertificates/relations/basis13428.json"
theorem reductionProof13428 : EqualModuloRelations reduction13428.relations reduction13428.input reduction13428.output := by lin_cert using reduction13428.terms
theorem substitutionProof13428 : IsMapEvaluation generatorImages reduction13428.relations [8,8,16,598] reduction13428.output := by lin_cert using reduction13428.terms
def image13429 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13429 : InImage map_41_221 image13429 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13429 : Bundle := named_bundle% "RealMapCertificates/relations/basis13429.json"
theorem reductionProof13429 : EqualModuloRelations reduction13429.relations reduction13429.input reduction13429.output := by lin_cert using reduction13429.terms
theorem substitutionProof13429 : IsMapEvaluation generatorImages reduction13429.relations [8,8,8,8,17,260] reduction13429.output := by lin_cert using reduction13429.terms
def image13430 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13430 : InImage map_41_221 image13430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13430 : Bundle := named_bundle% "RealMapCertificates/relations/basis13430.json"
theorem reductionProof13430 : EqualModuloRelations reduction13430.relations reduction13430.input reduction13430.output := by lin_cert using reduction13430.terms
theorem substitutionProof13430 : IsMapEvaluation generatorImages reduction13430.relations [8,8,8,8,8,9,219] reduction13430.output := by lin_cert using reduction13430.terms
def map_41_222 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image13653 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13653 : InImage map_41_222 image13653 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13653 : Bundle := named_bundle% "RealMapCertificates/relations/basis13653.json"
theorem reductionProof13653 : EqualModuloRelations reduction13653.relations reduction13653.input reduction13653.output := by lin_cert using reduction13653.terms
theorem substitutionProof13653 : IsMapEvaluation generatorImages reduction13653.relations [8,8,8,8,559] reduction13653.output := by lin_cert using reduction13653.terms
def image13654 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13654 : InImage map_41_222 image13654 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13654 : Bundle := named_bundle% "RealMapCertificates/relations/basis13654.json"
theorem reductionProof13654 : EqualModuloRelations reduction13654.relations reduction13654.input reduction13654.output := by lin_cert using reduction13654.terms
theorem substitutionProof13654 : IsMapEvaluation generatorImages reduction13654.relations [8,8,8,8,13,13,13,13,51] reduction13654.output := by lin_cert using reduction13654.terms
def image13655 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13655 : InImage map_41_222 image13655 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13655 : Bundle := named_bundle% "RealMapCertificates/relations/basis13655.json"
theorem reductionProof13655 : EqualModuloRelations reduction13655.relations reduction13655.input reduction13655.output := by lin_cert using reduction13655.terms
theorem substitutionProof13655 : IsMapEvaluation generatorImages reduction13655.relations [8,8,8,8,8,8,9,13,80] reduction13655.output := by lin_cert using reduction13655.terms
def image13656 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13656 : InImage map_41_222 image13656 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13656 : Bundle := named_bundle% "RealMapCertificates/relations/basis13656.json"
theorem reductionProof13656 : EqualModuloRelations reduction13656.relations reduction13656.input reduction13656.output := by lin_cert using reduction13656.terms
theorem substitutionProof13656 : IsMapEvaluation generatorImages reduction13656.relations [0,64,623] reduction13656.output := by lin_cert using reduction13656.terms
def map_41_223 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13828 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13828 : InImage map_41_223 image13828 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13828 : Bundle := named_bundle% "RealMapCertificates/relations/basis13828.json"
theorem reductionProof13828 : EqualModuloRelations reduction13828.relations reduction13828.input reduction13828.output := by lin_cert using reduction13828.terms
theorem substitutionProof13828 : IsMapEvaluation generatorImages reduction13828.relations [8,1288] reduction13828.output := by lin_cert using reduction13828.terms
def image13829 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13829 : InImage map_41_223 image13829 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13829 : Bundle := named_bundle% "RealMapCertificates/relations/basis13829.json"
theorem reductionProof13829 : EqualModuloRelations reduction13829.relations reduction13829.input reduction13829.output := by lin_cert using reduction13829.terms
theorem substitutionProof13829 : IsMapEvaluation generatorImages reduction13829.relations [0,64,637] reduction13829.output := by lin_cert using reduction13829.terms
def image13830 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13830 : InImage map_41_223 image13830 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13830 : Bundle := named_bundle% "RealMapCertificates/relations/basis13830.json"
theorem reductionProof13830 : EqualModuloRelations reduction13830.relations reduction13830.input reduction13830.output := by lin_cert using reduction13830.terms
theorem substitutionProof13830 : IsMapEvaluation generatorImages reduction13830.relations [0,0,113,491] reduction13830.output := by lin_cert using reduction13830.terms
def image13831 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13831 : InImage map_41_223 image13831 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13831 : Bundle := named_bundle% "RealMapCertificates/relations/basis13831.json"
theorem reductionProof13831 : EqualModuloRelations reduction13831.relations reduction13831.input reduction13831.output := by lin_cert using reduction13831.terms
theorem substitutionProof13831 : IsMapEvaluation generatorImages reduction13831.relations [0,0,0,0,0,64,64,149] reduction13831.output := by lin_cert using reduction13831.terms
def map_41_224 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13983 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13983 : InImage map_41_224 image13983 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13983 : Bundle := named_bundle% "RealMapCertificates/relations/basis13983.json"
theorem reductionProof13983 : EqualModuloRelations reduction13983.relations reduction13983.input reduction13983.output := by lin_cert using reduction13983.terms
theorem substitutionProof13983 : IsMapEvaluation generatorImages reduction13983.relations [8,8,8,113,149] reduction13983.output := by lin_cert using reduction13983.terms
def image13984 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13984 : InImage map_41_224 image13984 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13984 : Bundle := named_bundle% "RealMapCertificates/relations/basis13984.json"
theorem reductionProof13984 : EqualModuloRelations reduction13984.relations reduction13984.input reduction13984.output := by lin_cert using reduction13984.terms
theorem substitutionProof13984 : IsMapEvaluation generatorImages reduction13984.relations [8,8,8,8,17,278] reduction13984.output := by lin_cert using reduction13984.terms
def image13985 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13985 : InImage map_41_224 image13985 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13985 : Bundle := named_bundle% "RealMapCertificates/relations/basis13985.json"
theorem reductionProof13985 : EqualModuloRelations reduction13985.relations reduction13985.input reduction13985.output := by lin_cert using reduction13985.terms
theorem substitutionProof13985 : IsMapEvaluation generatorImages reduction13985.relations [8,8,8,8,8,13,219] reduction13985.output := by lin_cert using reduction13985.terms
def image13986 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13986 : InImage map_41_224 image13986 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13986 : Bundle := named_bundle% "RealMapCertificates/relations/basis13986.json"
theorem reductionProof13986 : EqualModuloRelations reduction13986.relations reduction13986.input reduction13986.output := by lin_cert using reduction13986.terms
theorem substitutionProof13986 : IsMapEvaluation generatorImages reduction13986.relations [0,0,0,0,0,0,64,598] reduction13986.output := by lin_cert using reduction13986.terms
def map_41_225 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14222 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14222 : InImage map_41_225 image14222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14222 : Bundle := named_bundle% "RealMapCertificates/relations/basis14222.json"
theorem reductionProof14222 : EqualModuloRelations reduction14222.relations reduction14222.input reduction14222.output := by lin_cert using reduction14222.terms
theorem substitutionProof14222 : IsMapEvaluation generatorImages reduction14222.relations [8,8,8,9,13,13,13,13,51] reduction14222.output := by lin_cert using reduction14222.terms
def image14223 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14223 : InImage map_41_225 image14223 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14223 : Bundle := named_bundle% "RealMapCertificates/relations/basis14223.json"
theorem reductionProof14223 : EqualModuloRelations reduction14223.relations reduction14223.input reduction14223.output := by lin_cert using reduction14223.terms
theorem substitutionProof14223 : IsMapEvaluation generatorImages reduction14223.relations [8,8,8,8,580] reduction14223.output := by lin_cert using reduction14223.terms
def image14224 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14224 : InImage map_41_225 image14224 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14224 : Bundle := named_bundle% "RealMapCertificates/relations/basis14224.json"
theorem reductionProof14224 : EqualModuloRelations reduction14224.relations reduction14224.input reduction14224.output := by lin_cert using reduction14224.terms
theorem substitutionProof14224 : IsMapEvaluation generatorImages reduction14224.relations [8,8,8,8,8,8,13,13,80] reduction14224.output := by lin_cert using reduction14224.terms
def image14225 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14225 : InImage map_41_225 image14225 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14225 : Bundle := named_bundle% "RealMapCertificates/relations/basis14225.json"
theorem reductionProof14225 : EqualModuloRelations reduction14225.relations reduction14225.input reduction14225.output := by lin_cert using reduction14225.terms
theorem substitutionProof14225 : IsMapEvaluation generatorImages reduction14225.relations [0,8,64,491] reduction14225.output := by lin_cert using reduction14225.terms
def map_41_226 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image14381 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14381 : InImage map_41_226 image14381 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14381 : Bundle := named_bundle% "RealMapCertificates/relations/basis14381.json"
theorem reductionProof14381 : EqualModuloRelations reduction14381.relations reduction14381.input reduction14381.output := by lin_cert using reduction14381.terms
theorem substitutionProof14381 : IsMapEvaluation generatorImages reduction14381.relations [8,8,1009] reduction14381.output := by lin_cert using reduction14381.terms
def image14382 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14382 : InImage map_41_226 image14382 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14382 : Bundle := named_bundle% "RealMapCertificates/relations/basis14382.json"
theorem reductionProof14382 : EqualModuloRelations reduction14382.relations reduction14382.input reduction14382.output := by lin_cert using reduction14382.terms
theorem substitutionProof14382 : IsMapEvaluation generatorImages reduction14382.relations [0,0,8,138,260] reduction14382.output := by lin_cert using reduction14382.terms
def map_41_227 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image14558 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14558 : InImage map_41_227 image14558 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14558 : Bundle := named_bundle% "RealMapCertificates/relations/basis14558.json"
theorem reductionProof14558 : EqualModuloRelations reduction14558.relations reduction14558.input reduction14558.output := by lin_cert using reduction14558.terms
theorem substitutionProof14558 : IsMapEvaluation generatorImages reduction14558.relations [8,8,8,8,598] reduction14558.output := by lin_cert using reduction14558.terms
def image14559 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14559 : InImage map_41_227 image14559 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14559 : Bundle := named_bundle% "RealMapCertificates/relations/basis14559.json"
theorem reductionProof14559 : EqualModuloRelations reduction14559.relations reduction14559.input reduction14559.output := by lin_cert using reduction14559.terms
theorem substitutionProof14559 : IsMapEvaluation generatorImages reduction14559.relations [8,8,8,8,16,292] reduction14559.output := by lin_cert using reduction14559.terms
def image14560 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14560 : InImage map_41_227 image14560 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14560 : Bundle := named_bundle% "RealMapCertificates/relations/basis14560.json"
theorem reductionProof14560 : EqualModuloRelations reduction14560.relations reduction14560.input reduction14560.output := by lin_cert using reduction14560.terms
theorem substitutionProof14560 : IsMapEvaluation generatorImages reduction14560.relations [8,8,8,8,9,13,219] reduction14560.output := by lin_cert using reduction14560.terms
def map_41_228 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image14791 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14791 : InImage map_41_228 image14791 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14791 : Bundle := named_bundle% "RealMapCertificates/relations/basis14791.json"
theorem reductionProof14791 : EqualModuloRelations reduction14791.relations reduction14791.input reduction14791.output := by lin_cert using reduction14791.terms
theorem substitutionProof14791 : IsMapEvaluation generatorImages reduction14791.relations [64,64,185] reduction14791.output := by lin_cert using reduction14791.terms
def image14792 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14792 : InImage map_41_228 image14792 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14792 : Bundle := named_bundle% "RealMapCertificates/relations/basis14792.json"
theorem reductionProof14792 : EqualModuloRelations reduction14792.relations reduction14792.input reduction14792.output := by lin_cert using reduction14792.terms
theorem substitutionProof14792 : IsMapEvaluation generatorImages reduction14792.relations [8,8,8,13,13,13,13,13,51] reduction14792.output := by lin_cert using reduction14792.terms
def image14793 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14793 : InImage map_41_228 image14793 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14793 : Bundle := named_bundle% "RealMapCertificates/relations/basis14793.json"
theorem reductionProof14793 : EqualModuloRelations reduction14793.relations reduction14793.input reduction14793.output := by lin_cert using reduction14793.terms
theorem substitutionProof14793 : IsMapEvaluation generatorImages reduction14793.relations [8,8,8,8,8,435] reduction14793.output := by lin_cert using reduction14793.terms
def image14794 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14794 : InImage map_41_228 image14794 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14794 : Bundle := named_bundle% "RealMapCertificates/relations/basis14794.json"
theorem reductionProof14794 : EqualModuloRelations reduction14794.relations reduction14794.input reduction14794.output := by lin_cert using reduction14794.terms
theorem substitutionProof14794 : IsMapEvaluation generatorImages reduction14794.relations [8,8,8,8,8,9,13,13,80] reduction14794.output := by lin_cert using reduction14794.terms
def image14795 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14795 : InImage map_41_228 image14795 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14795 : Bundle := named_bundle% "RealMapCertificates/relations/basis14795.json"
theorem reductionProof14795 : EqualModuloRelations reduction14795.relations reduction14795.input reduction14795.output := by lin_cert using reduction14795.terms
theorem substitutionProof14795 : IsMapEvaluation generatorImages reduction14795.relations [0,8,64,516] reduction14795.output := by lin_cert using reduction14795.terms
def map_41_229 : Matrix 3 3 := fun i j => ([true,false,false,false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14983 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14983 : InImage map_41_229 image14983 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14983 : Bundle := named_bundle% "RealMapCertificates/relations/basis14983.json"
theorem reductionProof14983 : EqualModuloRelations reduction14983.relations reduction14983.input reduction14983.output := by lin_cert using reduction14983.terms
theorem substitutionProof14983 : IsMapEvaluation generatorImages reduction14983.relations [8,8,1061] reduction14983.output := by lin_cert using reduction14983.terms
def image14984 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation14984 : InImage map_41_229 image14984 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14984 : Bundle := named_bundle% "RealMapCertificates/relations/basis14984.json"
theorem reductionProof14984 : EqualModuloRelations reduction14984.relations reduction14984.input reduction14984.output := by lin_cert using reduction14984.terms
theorem substitutionProof14984 : IsMapEvaluation generatorImages reduction14984.relations [0,1686] reduction14984.output := by lin_cert using reduction14984.terms
def image14985 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14985 : InImage map_41_229 image14985 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14985 : Bundle := named_bundle% "RealMapCertificates/relations/basis14985.json"
theorem reductionProof14985 : EqualModuloRelations reduction14985.relations reduction14985.input reduction14985.output := by lin_cert using reduction14985.terms
theorem substitutionProof14985 : IsMapEvaluation generatorImages reduction14985.relations [0,0,8,138,278] reduction14985.output := by lin_cert using reduction14985.terms
def map_41_230 : Matrix 2 5 := fun i j => ([false,false,true,false,false,true,false,false,false,true] : List Bool)[i.val*5+j.val]!
def image15153 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15153 : InImage map_41_230 image15153 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15153 : Bundle := named_bundle% "RealMapCertificates/relations/basis15153.json"
theorem reductionProof15153 : EqualModuloRelations reduction15153.relations reduction15153.input reduction15153.output := by lin_cert using reduction15153.terms
theorem substitutionProof15153 : IsMapEvaluation generatorImages reduction15153.relations [1735] reduction15153.output := by lin_cert using reduction15153.terms
def image15154 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15154 : InImage map_41_230 image15154 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15154 : Bundle := named_bundle% "RealMapCertificates/relations/basis15154.json"
theorem reductionProof15154 : EqualModuloRelations reduction15154.relations reduction15154.input reduction15154.output := by lin_cert using reduction15154.terms
theorem substitutionProof15154 : IsMapEvaluation generatorImages reduction15154.relations [8,8,8,8,624] reduction15154.output := by lin_cert using reduction15154.terms
def image15155 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15155 : InImage map_41_230 image15155 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15155 : Bundle := named_bundle% "RealMapCertificates/relations/basis15155.json"
theorem reductionProof15155 : EqualModuloRelations reduction15155.relations reduction15155.input reduction15155.output := by lin_cert using reduction15155.terms
theorem substitutionProof15155 : IsMapEvaluation generatorImages reduction15155.relations [8,8,8,8,13,13,219] reduction15155.output := by lin_cert using reduction15155.terms
def image15156 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15156 : InImage map_41_230 image15156 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15156 : Bundle := named_bundle% "RealMapCertificates/relations/basis15156.json"
theorem reductionProof15156 : EqualModuloRelations reduction15156.relations reduction15156.input reduction15156.output := by lin_cert using reduction15156.terms
theorem substitutionProof15156 : IsMapEvaluation generatorImages reduction15156.relations [8,8,8,8,8,454] reduction15156.output := by lin_cert using reduction15156.terms
def image15157 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15157 : InImage map_41_230 image15157 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15157 : Bundle := named_bundle% "RealMapCertificates/relations/basis15157.json"
theorem reductionProof15157 : EqualModuloRelations reduction15157.relations reduction15157.input reduction15157.output := by lin_cert using reduction15157.terms
theorem substitutionProof15157 : IsMapEvaluation generatorImages reduction15157.relations [1,1686] reduction15157.output := by lin_cert using reduction15157.terms
def map_41_231 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image15417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15417 : InImage map_41_231 image15417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15417 : Bundle := named_bundle% "RealMapCertificates/relations/basis15417.json"
theorem reductionProof15417 : EqualModuloRelations reduction15417.relations reduction15417.input reduction15417.output := by lin_cert using reduction15417.terms
theorem substitutionProof15417 : IsMapEvaluation generatorImages reduction15417.relations [8,64,64,138] reduction15417.output := by lin_cert using reduction15417.terms
def image15418 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15418 : InImage map_41_231 image15418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15418 : Bundle := named_bundle% "RealMapCertificates/relations/basis15418.json"
theorem reductionProof15418 : EqualModuloRelations reduction15418.relations reduction15418.input reduction15418.output := by lin_cert using reduction15418.terms
theorem substitutionProof15418 : IsMapEvaluation generatorImages reduction15418.relations [8,8,9,13,13,13,13,13,51] reduction15418.output := by lin_cert using reduction15418.terms
def image15419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15419 : InImage map_41_231 image15419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15419 : Bundle := named_bundle% "RealMapCertificates/relations/basis15419.json"
theorem reductionProof15419 : EqualModuloRelations reduction15419.relations reduction15419.input reduction15419.output := by lin_cert using reduction15419.terms
theorem substitutionProof15419 : IsMapEvaluation generatorImages reduction15419.relations [8,8,8,8,9,435] reduction15419.output := by lin_cert using reduction15419.terms
def image15420 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15420 : InImage map_41_231 image15420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15420 : Bundle := named_bundle% "RealMapCertificates/relations/basis15420.json"
theorem reductionProof15420 : EqualModuloRelations reduction15420.relations reduction15420.input reduction15420.output := by lin_cert using reduction15420.terms
theorem substitutionProof15420 : IsMapEvaluation generatorImages reduction15420.relations [8,8,8,8,8,13,13,13,80] reduction15420.output := by lin_cert using reduction15420.terms
def image15421 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15421 : InImage map_41_231 image15421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15421 : Bundle := named_bundle% "RealMapCertificates/relations/basis15421.json"
theorem reductionProof15421 : EqualModuloRelations reduction15421.relations reduction15421.input reduction15421.output := by lin_cert using reduction15421.terms
theorem substitutionProof15421 : IsMapEvaluation generatorImages reduction15421.relations [0,1736] reduction15421.output := by lin_cert using reduction15421.terms
def image15422 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15422 : InImage map_41_231 image15422 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15422 : Bundle := named_bundle% "RealMapCertificates/relations/basis15422.json"
theorem reductionProof15422 : EqualModuloRelations reduction15422.relations reduction15422.input reduction15422.output := by lin_cert using reduction15422.terms
theorem substitutionProof15422 : IsMapEvaluation generatorImages reduction15422.relations [0,8,16,64,260] reduction15422.output := by lin_cert using reduction15422.terms
def map_41_232 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15606 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15606 : InImage map_41_232 image15606 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15606 : Bundle := named_bundle% "RealMapCertificates/relations/basis15606.json"
theorem reductionProof15606 : EqualModuloRelations reduction15606.relations reduction15606.input reduction15606.output := by lin_cert using reduction15606.terms
theorem substitutionProof15606 : IsMapEvaluation generatorImages reduction15606.relations [8,8,8,863] reduction15606.output := by lin_cert using reduction15606.terms
def image15607 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15607 : InImage map_41_232 image15607 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15607 : Bundle := named_bundle% "RealMapCertificates/relations/basis15607.json"
theorem reductionProof15607 : EqualModuloRelations reduction15607.relations reduction15607.input reduction15607.output := by lin_cert using reduction15607.terms
theorem substitutionProof15607 : IsMapEvaluation generatorImages reduction15607.relations [1,1736] reduction15607.output := by lin_cert using reduction15607.terms
def image15608 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15608 : InImage map_41_232 image15608 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15608 : Bundle := named_bundle% "RealMapCertificates/relations/basis15608.json"
theorem reductionProof15608 : EqualModuloRelations reduction15608.relations reduction15608.input reduction15608.output := by lin_cert using reduction15608.terms
theorem substitutionProof15608 : IsMapEvaluation generatorImages reduction15608.relations [0,1752] reduction15608.output := by lin_cert using reduction15608.terms
def image15609 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15609 : InImage map_41_232 image15609 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15609 : Bundle := named_bundle% "RealMapCertificates/relations/basis15609.json"
theorem reductionProof15609 : EqualModuloRelations reduction15609.relations reduction15609.input reduction15609.output := by lin_cert using reduction15609.terms
theorem substitutionProof15609 : IsMapEvaluation generatorImages reduction15609.relations [0,0,1737] reduction15609.output := by lin_cert using reduction15609.terms
def image15610 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15610 : InImage map_41_232 image15610 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15610 : Bundle := named_bundle% "RealMapCertificates/relations/basis15610.json"
theorem reductionProof15610 : EqualModuloRelations reduction15610.relations reduction15610.input reduction15610.output := by lin_cert using reduction15610.terms
theorem substitutionProof15610 : IsMapEvaluation generatorImages reduction15610.relations [0,0,8,16,897] reduction15610.output := by lin_cert using reduction15610.terms
def map_41_233 : Matrix 3 4 := fun i j => ([true,false,false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image15814 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15814 : InImage map_41_233 image15814 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15814 : Bundle := named_bundle% "RealMapCertificates/relations/basis15814.json"
theorem reductionProof15814 : EqualModuloRelations reduction15814.relations reduction15814.input reduction15814.output := by lin_cert using reduction15814.terms
theorem substitutionProof15814 : IsMapEvaluation generatorImages reduction15814.relations [8,8,8,9,13,13,219] reduction15814.output := by lin_cert using reduction15814.terms
def image15815 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15815 : InImage map_41_233 image15815 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15815 : Bundle := named_bundle% "RealMapCertificates/relations/basis15815.json"
theorem reductionProof15815 : EqualModuloRelations reduction15815.relations reduction15815.input reduction15815.output := by lin_cert using reduction15815.terms
theorem substitutionProof15815 : IsMapEvaluation generatorImages reduction15815.relations [8,8,8,8,17,347] reduction15815.output := by lin_cert using reduction15815.terms
def image15816 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15816 : InImage map_41_233 image15816 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15816 : Bundle := named_bundle% "RealMapCertificates/relations/basis15816.json"
theorem reductionProof15816 : EqualModuloRelations reduction15816.relations reduction15816.input reduction15816.output := by lin_cert using reduction15816.terms
theorem substitutionProof15816 : IsMapEvaluation generatorImages reduction15816.relations [8,8,8,8,8,8,292] reduction15816.output := by lin_cert using reduction15816.terms
def image15817 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation15817 : InImage map_41_233 image15817 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15817 : Bundle := named_bundle% "RealMapCertificates/relations/basis15817.json"
theorem reductionProof15817 : EqualModuloRelations reduction15817.relations reduction15817.input reduction15817.output := by lin_cert using reduction15817.terms
theorem substitutionProof15817 : IsMapEvaluation generatorImages reduction15817.relations [0,1772] reduction15817.output := by lin_cert using reduction15817.terms
def map_41_234 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16067 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16067 : InImage map_41_234 image16067 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16067 : Bundle := named_bundle% "RealMapCertificates/relations/basis16067.json"
theorem reductionProof16067 : EqualModuloRelations reduction16067.relations reduction16067.input reduction16067.output := by lin_cert using reduction16067.terms
theorem substitutionProof16067 : IsMapEvaluation generatorImages reduction16067.relations [8,64,64,147] reduction16067.output := by lin_cert using reduction16067.terms
def image16068 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16068 : InImage map_41_234 image16068 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16068 : Bundle := named_bundle% "RealMapCertificates/relations/basis16068.json"
theorem reductionProof16068 : EqualModuloRelations reduction16068.relations reduction16068.input reduction16068.output := by lin_cert using reduction16068.terms
theorem substitutionProof16068 : IsMapEvaluation generatorImages reduction16068.relations [8,8,13,13,13,13,13,13,51] reduction16068.output := by lin_cert using reduction16068.terms
def image16069 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16069 : InImage map_41_234 image16069 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16069 : Bundle := named_bundle% "RealMapCertificates/relations/basis16069.json"
theorem reductionProof16069 : EqualModuloRelations reduction16069.relations reduction16069.input reduction16069.output := by lin_cert using reduction16069.terms
theorem substitutionProof16069 : IsMapEvaluation generatorImages reduction16069.relations [8,8,8,8,13,435] reduction16069.output := by lin_cert using reduction16069.terms
def image16070 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16070 : InImage map_41_234 image16070 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16070 : Bundle := named_bundle% "RealMapCertificates/relations/basis16070.json"
theorem reductionProof16070 : EqualModuloRelations reduction16070.relations reduction16070.input reduction16070.output := by lin_cert using reduction16070.terms
theorem substitutionProof16070 : IsMapEvaluation generatorImages reduction16070.relations [8,8,8,8,9,13,13,13,80] reduction16070.output := by lin_cert using reduction16070.terms
def image16071 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16071 : InImage map_41_234 image16071 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16071 : Bundle := named_bundle% "RealMapCertificates/relations/basis16071.json"
theorem reductionProof16071 : EqualModuloRelations reduction16071.relations reduction16071.input reduction16071.output := by lin_cert using reduction16071.terms
theorem substitutionProof16071 : IsMapEvaluation generatorImages reduction16071.relations [0,8,8,64,380] reduction16071.output := by lin_cert using reduction16071.terms
def map_41_235 : Matrix 2 3 := fun i j => ([true,false,false,false,true,false] : List Bool)[i.val*3+j.val]!
def image16271 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16271 : InImage map_41_235 image16271 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16271 : Bundle := named_bundle% "RealMapCertificates/relations/basis16271.json"
theorem reductionProof16271 : EqualModuloRelations reduction16271.relations reduction16271.input reduction16271.output := by lin_cert using reduction16271.terms
theorem substitutionProof16271 : IsMapEvaluation generatorImages reduction16271.relations [8,8,8,890] reduction16271.output := by lin_cert using reduction16271.terms
def image16272 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16272 : InImage map_41_235 image16272 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16272 : Bundle := named_bundle% "RealMapCertificates/relations/basis16272.json"
theorem reductionProof16272 : EqualModuloRelations reduction16272.relations reduction16272.input reduction16272.output := by lin_cert using reduction16272.terms
theorem substitutionProof16272 : IsMapEvaluation generatorImages reduction16272.relations [0,1831] reduction16272.output := by lin_cert using reduction16272.terms
def image16273 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16273 : InImage map_41_235 image16273 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16273 : Bundle := named_bundle% "RealMapCertificates/relations/basis16273.json"
theorem reductionProof16273 : EqualModuloRelations reduction16273.relations reduction16273.input reduction16273.output := by lin_cert using reduction16273.terms
theorem substitutionProof16273 : IsMapEvaluation generatorImages reduction16273.relations [0,0,8,8,113,260] reduction16273.output := by lin_cert using reduction16273.terms
def map_41_236 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image16479 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16479 : InImage map_41_236 image16479 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16479 : Bundle := named_bundle% "RealMapCertificates/relations/basis16479.json"
theorem reductionProof16479 : EqualModuloRelations reduction16479.relations reduction16479.input reduction16479.output := by lin_cert using reduction16479.terms
theorem substitutionProof16479 : IsMapEvaluation generatorImages reduction16479.relations [64,796] reduction16479.output := by lin_cert using reduction16479.terms
def image16480 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16480 : InImage map_41_236 image16480 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16480 : Bundle := named_bundle% "RealMapCertificates/relations/basis16480.json"
theorem reductionProof16480 : EqualModuloRelations reduction16480.relations reduction16480.input reduction16480.output := by lin_cert using reduction16480.terms
theorem substitutionProof16480 : IsMapEvaluation generatorImages reduction16480.relations [64,795] reduction16480.output := by lin_cert using reduction16480.terms
def image16481 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16481 : InImage map_41_236 image16481 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16481 : Bundle := named_bundle% "RealMapCertificates/relations/basis16481.json"
theorem reductionProof16481 : EqualModuloRelations reduction16481.relations reduction16481.input reduction16481.output := by lin_cert using reduction16481.terms
theorem substitutionProof16481 : IsMapEvaluation generatorImages reduction16481.relations [8,8,8,13,13,13,219] reduction16481.output := by lin_cert using reduction16481.terms
def image16482 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16482 : InImage map_41_236 image16482 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16482 : Bundle := named_bundle% "RealMapCertificates/relations/basis16482.json"
theorem reductionProof16482 : EqualModuloRelations reduction16482.relations reduction16482.input reduction16482.output := by lin_cert using reduction16482.terms
theorem substitutionProof16482 : IsMapEvaluation generatorImages reduction16482.relations [8,8,8,8,8,518] reduction16482.output := by lin_cert using reduction16482.terms
def image16483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16483 : InImage map_41_236 image16483 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16483 : Bundle := named_bundle% "RealMapCertificates/relations/basis16483.json"
theorem reductionProof16483 : EqualModuloRelations reduction16483.relations reduction16483.input reduction16483.output := by lin_cert using reduction16483.terms
theorem substitutionProof16483 : IsMapEvaluation generatorImages reduction16483.relations [8,8,8,8,8,9,292] reduction16483.output := by lin_cert using reduction16483.terms
def image16484 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16484 : InImage map_41_236 image16484 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16484 : Bundle := named_bundle% "RealMapCertificates/relations/basis16484.json"
theorem reductionProof16484 : EqualModuloRelations reduction16484.relations reduction16484.input reduction16484.output := by lin_cert using reduction16484.terms
theorem substitutionProof16484 : IsMapEvaluation generatorImages reduction16484.relations [0,245,260] reduction16484.output := by lin_cert using reduction16484.terms
def image16485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16485 : InImage map_41_236 image16485 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16485 : Bundle := named_bundle% "RealMapCertificates/relations/basis16485.json"
theorem reductionProof16485 : EqualModuloRelations reduction16485.relations reduction16485.input reduction16485.output := by lin_cert using reduction16485.terms
theorem substitutionProof16485 : IsMapEvaluation generatorImages reduction16485.relations [0,0,1832] reduction16485.output := by lin_cert using reduction16485.terms
def map_41_237 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16743 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16743 : InImage map_41_237 image16743 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16743 : Bundle := named_bundle% "RealMapCertificates/relations/basis16743.json"
theorem reductionProof16743 : EqualModuloRelations reduction16743.relations reduction16743.input reduction16743.output := by lin_cert using reduction16743.terms
theorem substitutionProof16743 : IsMapEvaluation generatorImages reduction16743.relations [8,16,64,299] reduction16743.output := by lin_cert using reduction16743.terms
def image16744 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16744 : InImage map_41_237 image16744 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16744 : Bundle := named_bundle% "RealMapCertificates/relations/basis16744.json"
theorem reductionProof16744 : EqualModuloRelations reduction16744.relations reduction16744.input reduction16744.output := by lin_cert using reduction16744.terms
theorem substitutionProof16744 : IsMapEvaluation generatorImages reduction16744.relations [8,9,13,13,13,13,13,13,51] reduction16744.output := by lin_cert using reduction16744.terms
def image16745 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16745 : InImage map_41_237 image16745 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16745 : Bundle := named_bundle% "RealMapCertificates/relations/basis16745.json"
theorem reductionProof16745 : EqualModuloRelations reduction16745.relations reduction16745.input reduction16745.output := by lin_cert using reduction16745.terms
theorem substitutionProof16745 : IsMapEvaluation generatorImages reduction16745.relations [8,8,8,8,13,13,13,13,80] reduction16745.output := by lin_cert using reduction16745.terms
def image16746 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16746 : InImage map_41_237 image16746 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16746 : Bundle := named_bundle% "RealMapCertificates/relations/basis16746.json"
theorem reductionProof16746 : EqualModuloRelations reduction16746.relations reduction16746.input reduction16746.output := by lin_cert using reduction16746.terms
theorem substitutionProof16746 : IsMapEvaluation generatorImages reduction16746.relations [8,8,8,8,8,530] reduction16746.output := by lin_cert using reduction16746.terms
def image16747 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16747 : InImage map_41_237 image16747 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16747 : Bundle := named_bundle% "RealMapCertificates/relations/basis16747.json"
theorem reductionProof16747 : EqualModuloRelations reduction16747.relations reduction16747.input reduction16747.output := by lin_cert using reduction16747.terms
theorem substitutionProof16747 : IsMapEvaluation generatorImages reduction16747.relations [0,8,8,8,64,260] reduction16747.output := by lin_cert using reduction16747.terms
def image16748 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16748 : InImage map_41_237 image16748 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16748 : Bundle := named_bundle% "RealMapCertificates/relations/basis16748.json"
theorem reductionProof16748 : EqualModuloRelations reduction16748.relations reduction16748.input reduction16748.output := by lin_cert using reduction16748.terms
theorem substitutionProof16748 : IsMapEvaluation generatorImages reduction16748.relations [0,0,246,260] reduction16748.output := by lin_cert using reduction16748.terms
def map_41_238 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16938 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16938 : InImage map_41_238 image16938 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16938 : Bundle := named_bundle% "RealMapCertificates/relations/basis16938.json"
theorem reductionProof16938 : EqualModuloRelations reduction16938.relations reduction16938.input reduction16938.output := by lin_cert using reduction16938.terms
theorem substitutionProof16938 : IsMapEvaluation generatorImages reduction16938.relations [8,8,8,8,715] reduction16938.output := by lin_cert using reduction16938.terms
def image16939 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16939 : InImage map_41_238 image16939 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16939 : Bundle := named_bundle% "RealMapCertificates/relations/basis16939.json"
theorem reductionProof16939 : EqualModuloRelations reduction16939.relations reduction16939.input reduction16939.output := by lin_cert using reduction16939.terms
theorem substitutionProof16939 : IsMapEvaluation generatorImages reduction16939.relations [0,0,8,8,8,897] reduction16939.output := by lin_cert using reduction16939.terms
def image16940 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16940 : InImage map_41_238 image16940 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16940 : Bundle := named_bundle% "RealMapCertificates/relations/basis16940.json"
theorem reductionProof16940 : EqualModuloRelations reduction16940.relations reduction16940.input reduction16940.output := by lin_cert using reduction16940.terms
theorem substitutionProof16940 : IsMapEvaluation generatorImages reduction16940.relations [0,0,0,1855] reduction16940.output := by lin_cert using reduction16940.terms
def map_41_239 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17173 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17173 : InImage map_41_239 image17173 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17173 : Bundle := named_bundle% "RealMapCertificates/relations/basis17173.json"
theorem reductionProof17173 : EqualModuloRelations reduction17173.relations reduction17173.input reduction17173.output := by lin_cert using reduction17173.terms
theorem substitutionProof17173 : IsMapEvaluation generatorImages reduction17173.relations [64,831] reduction17173.output := by lin_cert using reduction17173.terms
def image17174 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17174 : InImage map_41_239 image17174 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17174 : Bundle := named_bundle% "RealMapCertificates/relations/basis17174.json"
theorem reductionProof17174 : EqualModuloRelations reduction17174.relations reduction17174.input reduction17174.output := by lin_cert using reduction17174.terms
theorem substitutionProof17174 : IsMapEvaluation generatorImages reduction17174.relations [8,8,9,13,13,13,219] reduction17174.output := by lin_cert using reduction17174.terms
def image17175 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17175 : InImage map_41_239 image17175 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17175 : Bundle := named_bundle% "RealMapCertificates/relations/basis17175.json"
theorem reductionProof17175 : EqualModuloRelations reduction17175.relations reduction17175.input reduction17175.output := by lin_cert using reduction17175.terms
theorem substitutionProof17175 : IsMapEvaluation generatorImages reduction17175.relations [8,8,8,8,8,550] reduction17175.output := by lin_cert using reduction17175.terms
def image17176 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17176 : InImage map_41_239 image17176 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17176 : Bundle := named_bundle% "RealMapCertificates/relations/basis17176.json"
theorem reductionProof17176 : EqualModuloRelations reduction17176.relations reduction17176.input reduction17176.output := by lin_cert using reduction17176.terms
theorem substitutionProof17176 : IsMapEvaluation generatorImages reduction17176.relations [8,8,8,8,8,13,292] reduction17176.output := by lin_cert using reduction17176.terms
def image17177 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17177 : InImage map_41_239 image17177 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17177 : Bundle := named_bundle% "RealMapCertificates/relations/basis17177.json"
theorem reductionProof17177 : EqualModuloRelations reduction17177.relations reduction17177.input reduction17177.output := by lin_cert using reduction17177.terms
theorem substitutionProof17177 : IsMapEvaluation generatorImages reduction17177.relations [0,8,1552] reduction17177.output := by lin_cert using reduction17177.terms
def image17178 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17178 : InImage map_41_239 image17178 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17178 : Bundle := named_bundle% "RealMapCertificates/relations/basis17178.json"
theorem reductionProof17178 : EqualModuloRelations reduction17178.relations reduction17178.input reduction17178.output := by lin_cert using reduction17178.terms
theorem substitutionProof17178 : IsMapEvaluation generatorImages reduction17178.relations [0,0,0,0,1856] reduction17178.output := by lin_cert using reduction17178.terms
def map_41_240 : Matrix 2 5 := fun i j => ([false,true,false,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17441 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation17441 : InImage map_41_240 image17441 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17441 : Bundle := named_bundle% "RealMapCertificates/relations/basis17441.json"
theorem reductionProof17441 : EqualModuloRelations reduction17441.relations reduction17441.input reduction17441.output := by lin_cert using reduction17441.terms
theorem substitutionProof17441 : IsMapEvaluation generatorImages reduction17441.relations [1990] reduction17441.output := by lin_cert using reduction17441.terms
def image17442 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17442 : InImage map_41_240 image17442 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17442 : Bundle := named_bundle% "RealMapCertificates/relations/basis17442.json"
theorem reductionProof17442 : EqualModuloRelations reduction17442.relations reduction17442.input reduction17442.output := by lin_cert using reduction17442.terms
theorem substitutionProof17442 : IsMapEvaluation generatorImages reduction17442.relations [8,13,13,13,13,13,13,13,51] reduction17442.output := by lin_cert using reduction17442.terms
def image17443 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17443 : InImage map_41_240 image17443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17443 : Bundle := named_bundle% "RealMapCertificates/relations/basis17443.json"
theorem reductionProof17443 : EqualModuloRelations reduction17443.relations reduction17443.input reduction17443.output := by lin_cert using reduction17443.terms
theorem substitutionProof17443 : IsMapEvaluation generatorImages reduction17443.relations [8,8,64,64,113] reduction17443.output := by lin_cert using reduction17443.terms
def image17444 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17444 : InImage map_41_240 image17444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17444 : Bundle := named_bundle% "RealMapCertificates/relations/basis17444.json"
theorem reductionProof17444 : EqualModuloRelations reduction17444.relations reduction17444.input reduction17444.output := by lin_cert using reduction17444.terms
theorem substitutionProof17444 : IsMapEvaluation generatorImages reduction17444.relations [8,8,8,9,13,13,13,13,80] reduction17444.output := by lin_cert using reduction17444.terms
def image17445 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17445 : InImage map_41_240 image17445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17445 : Bundle := named_bundle% "RealMapCertificates/relations/basis17445.json"
theorem reductionProof17445 : EqualModuloRelations reduction17445.relations reduction17445.input reduction17445.output := by lin_cert using reduction17445.terms
theorem substitutionProof17445 : IsMapEvaluation generatorImages reduction17445.relations [8,8,8,8,8,17,267] reduction17445.output := by lin_cert using reduction17445.terms
def map_41_241 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image17697 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17697 : InImage map_41_241 image17697 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17697 : Bundle := named_bundle% "RealMapCertificates/relations/basis17697.json"
theorem reductionProof17697 : EqualModuloRelations reduction17697.relations reduction17697.input reduction17697.output := by lin_cert using reduction17697.terms
theorem substitutionProof17697 : IsMapEvaluation generatorImages reduction17697.relations [17,149,260] reduction17697.output := by lin_cert using reduction17697.terms
def image17698 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17698 : InImage map_41_241 image17698 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17698 : Bundle := named_bundle% "RealMapCertificates/relations/basis17698.json"
theorem reductionProof17698 : EqualModuloRelations reduction17698.relations reduction17698.input reduction17698.output := by lin_cert using reduction17698.terms
theorem substitutionProof17698 : IsMapEvaluation generatorImages reduction17698.relations [8,8,8,9,715] reduction17698.output := by lin_cert using reduction17698.terms
def map_41_242 : Matrix 1 7 := fun i j => ([false,false,false,false,true,false,false] : List Bool)[i.val*7+j.val]!
def image17936 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17936 : InImage map_41_242 image17936 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17936 : Bundle := named_bundle% "RealMapCertificates/relations/basis17936.json"
theorem reductionProof17936 : EqualModuloRelations reduction17936.relations reduction17936.input reduction17936.output := by lin_cert using reduction17936.terms
theorem substitutionProof17936 : IsMapEvaluation generatorImages reduction17936.relations [64,64,246] reduction17936.output := by lin_cert using reduction17936.terms
def image17937 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17937 : InImage map_41_242 image17937 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17937 : Bundle := named_bundle% "RealMapCertificates/relations/basis17937.json"
theorem reductionProof17937 : EqualModuloRelations reduction17937.relations reduction17937.input reduction17937.output := by lin_cert using reduction17937.terms
theorem substitutionProof17937 : IsMapEvaluation generatorImages reduction17937.relations [59,64,260] reduction17937.output := by lin_cert using reduction17937.terms
def image17938 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17938 : InImage map_41_242 image17938 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17938 : Bundle := named_bundle% "RealMapCertificates/relations/basis17938.json"
theorem reductionProof17938 : EqualModuloRelations reduction17938.relations reduction17938.input reduction17938.output := by lin_cert using reduction17938.terms
theorem substitutionProof17938 : IsMapEvaluation generatorImages reduction17938.relations [17,17,897] reduction17938.output := by lin_cert using reduction17938.terms
def image17939 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17939 : InImage map_41_242 image17939 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17939 : Bundle := named_bundle% "RealMapCertificates/relations/basis17939.json"
theorem reductionProof17939 : EqualModuloRelations reduction17939.relations reduction17939.input reduction17939.output := by lin_cert using reduction17939.terms
theorem substitutionProof17939 : IsMapEvaluation generatorImages reduction17939.relations [8,64,653] reduction17939.output := by lin_cert using reduction17939.terms
def image17940 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17940 : InImage map_41_242 image17940 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17940 : Bundle := named_bundle% "RealMapCertificates/relations/basis17940.json"
theorem reductionProof17940 : EqualModuloRelations reduction17940.relations reduction17940.input reduction17940.output := by lin_cert using reduction17940.terms
theorem substitutionProof17940 : IsMapEvaluation generatorImages reduction17940.relations [8,8,13,13,13,13,219] reduction17940.output := by lin_cert using reduction17940.terms
def image17941 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17941 : InImage map_41_242 image17941 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17941 : Bundle := named_bundle% "RealMapCertificates/relations/basis17941.json"
theorem reductionProof17941 : EqualModuloRelations reduction17941.relations reduction17941.input reduction17941.output := by lin_cert using reduction17941.terms
theorem substitutionProof17941 : IsMapEvaluation generatorImages reduction17941.relations [8,8,8,8,9,13,292] reduction17941.output := by lin_cert using reduction17941.terms
def image17942 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17942 : InImage map_41_242 image17942 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17942 : Bundle := named_bundle% "RealMapCertificates/relations/basis17942.json"
theorem reductionProof17942 : EqualModuloRelations reduction17942.relations reduction17942.input reduction17942.output := by lin_cert using reduction17942.terms
theorem substitutionProof17942 : IsMapEvaluation generatorImages reduction17942.relations [8,8,8,8,8,8,383] reduction17942.output := by lin_cert using reduction17942.terms
def map_41_243 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18227 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18227 : InImage map_41_243 image18227 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18227 : Bundle := named_bundle% "RealMapCertificates/relations/basis18227.json"
theorem reductionProof18227 : EqualModuloRelations reduction18227.relations reduction18227.input reduction18227.output := by lin_cert using reduction18227.terms
theorem substitutionProof18227 : IsMapEvaluation generatorImages reduction18227.relations [2093] reduction18227.output := by lin_cert using reduction18227.terms
def image18228 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18228 : InImage map_41_243 image18228 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18228 : Bundle := named_bundle% "RealMapCertificates/relations/basis18228.json"
theorem reductionProof18228 : EqualModuloRelations reduction18228.relations reduction18228.input reduction18228.output := by lin_cert using reduction18228.terms
theorem substitutionProof18228 : IsMapEvaluation generatorImages reduction18228.relations [9,13,13,13,13,13,13,13,51] reduction18228.output := by lin_cert using reduction18228.terms
def image18229 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18229 : InImage map_41_243 image18229 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18229 : Bundle := named_bundle% "RealMapCertificates/relations/basis18229.json"
theorem reductionProof18229 : EqualModuloRelations reduction18229.relations reduction18229.input reduction18229.output := by lin_cert using reduction18229.terms
theorem substitutionProof18229 : IsMapEvaluation generatorImages reduction18229.relations [8,8,8,64,299] reduction18229.output := by lin_cert using reduction18229.terms
def image18230 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18230 : InImage map_41_243 image18230 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18230 : Bundle := named_bundle% "RealMapCertificates/relations/basis18230.json"
theorem reductionProof18230 : EqualModuloRelations reduction18230.relations reduction18230.input reduction18230.output := by lin_cert using reduction18230.terms
theorem substitutionProof18230 : IsMapEvaluation generatorImages reduction18230.relations [8,8,8,13,13,13,13,13,80] reduction18230.output := by lin_cert using reduction18230.terms
def image18231 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18231 : InImage map_41_243 image18231 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18231 : Bundle := named_bundle% "RealMapCertificates/relations/basis18231.json"
theorem reductionProof18231 : EqualModuloRelations reduction18231.relations reduction18231.input reduction18231.output := by lin_cert using reduction18231.terms
theorem substitutionProof18231 : IsMapEvaluation generatorImages reduction18231.relations [8,8,8,8,8,20,267] reduction18231.output := by lin_cert using reduction18231.terms
def image18232 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18232 : InImage map_41_243 image18232 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18232 : Bundle := named_bundle% "RealMapCertificates/relations/basis18232.json"
theorem reductionProof18232 : EqualModuloRelations reduction18232.relations reduction18232.input reduction18232.output := by lin_cert using reduction18232.terms
theorem substitutionProof18232 : IsMapEvaluation generatorImages reduction18232.relations [0,0,64,862] reduction18232.output := by lin_cert using reduction18232.terms
def image18233 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18233 : InImage map_41_243 image18233 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18233 : Bundle := named_bundle% "RealMapCertificates/relations/basis18233.json"
theorem reductionProof18233 : EqualModuloRelations reduction18233.relations reduction18233.input reduction18233.output := by lin_cert using reduction18233.terms
theorem substitutionProof18233 : IsMapEvaluation generatorImages reduction18233.relations [0,0,0,0,0,260,260] reduction18233.output := by lin_cert using reduction18233.terms
end RealMapCertificates
