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
  | 24 => []
  | 42 => [[5,5,7]]
  | 51 => [[7,7,7]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 150 => []
  | 188 => []
  | 209 => []
  | 219 => [[7,7,7,12]]
  | 255 => []
  | 260 => []
  | 274 => []
  | 278 => []
  | 280 => []
  | 292 => []
  | 293 => []
  | 294 => []
  | 299 => []
  | 301 => []
  | 327 => []
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 420 => []
  | 549 => []
  | 574 => []
  | 627 => []
  | 689 => []
  | 715 => [[7,7,7,12,12]]
  | 821 => [[5,7,10,12,12]]
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 898 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 940 => []
  | 962 => [[4,5,7,10,12,12]]
  | 963 => []
  | 974 => []
  | 976 => []
  | 1035 => []
  | 1094 => []
  | 1145 => []
  | 1220 => []
  | 1481 => [[5,5,7,12,12,12]]
  | 1538 => [[5,7,7,12,12,12]]
  | 1594 => [[7,7,7,12,12,12]]
  | 1606 => []
  | 1687 => [[4,5,5,7,12,12,12]]
  | 1754 => [[4,5,7,7,12,12,12]]
  | 1856 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2196 => []
  | 2307 => []
  | 2334 => []
  | 2340 => []
  | 2342 => []
  | 2437 => []
  | _ => []
def map_41_244 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image18435 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18435 : InImage map_41_244 image18435 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18435 : Bundle := named_bundle% "RealMapCertificates/relations/basis18435.json"
theorem reductionProof18435 : EqualModuloRelations reduction18435.relations reduction18435.input reduction18435.output := by lin_cert using reduction18435.terms
theorem substitutionProof18435 : IsMapEvaluation generatorImages reduction18435.relations [17,149,278] reduction18435.output := by lin_cert using reduction18435.terms
def image18436 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18436 : InImage map_41_244 image18436 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18436 : Bundle := named_bundle% "RealMapCertificates/relations/basis18436.json"
theorem reductionProof18436 : EqualModuloRelations reduction18436.relations reduction18436.input reduction18436.output := by lin_cert using reduction18436.terms
theorem substitutionProof18436 : IsMapEvaluation generatorImages reduction18436.relations [8,8,8,13,715] reduction18436.output := by lin_cert using reduction18436.terms
def image18437 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18437 : InImage map_41_244 image18437 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18437 : Bundle := named_bundle% "RealMapCertificates/relations/basis18437.json"
theorem reductionProof18437 : EqualModuloRelations reduction18437.relations reduction18437.input reduction18437.output := by lin_cert using reduction18437.terms
theorem substitutionProof18437 : IsMapEvaluation generatorImages reduction18437.relations [0,0,0,0,260,274] reduction18437.output := by lin_cert using reduction18437.terms
def image18438 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18438 : InImage map_41_244 image18438 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18438 : Bundle := named_bundle% "RealMapCertificates/relations/basis18438.json"
theorem reductionProof18438 : EqualModuloRelations reduction18438.relations reduction18438.input reduction18438.output := by lin_cert using reduction18438.terms
theorem substitutionProof18438 : IsMapEvaluation generatorImages reduction18438.relations [0,0,0,0,0,0,1926] reduction18438.output := by lin_cert using reduction18438.terms
def map_41_245 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18686 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18686 : InImage map_41_245 image18686 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18686 : Bundle := named_bundle% "RealMapCertificates/relations/basis18686.json"
theorem reductionProof18686 : EqualModuloRelations reduction18686.relations reduction18686.input reduction18686.output := by lin_cert using reduction18686.terms
theorem substitutionProof18686 : IsMapEvaluation generatorImages reduction18686.relations [17,17,940] reduction18686.output := by lin_cert using reduction18686.terms
def image18687 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18687 : InImage map_41_245 image18687 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18687 : Bundle := named_bundle% "RealMapCertificates/relations/basis18687.json"
theorem reductionProof18687 : EqualModuloRelations reduction18687.relations reduction18687.input reduction18687.output := by lin_cert using reduction18687.terms
theorem substitutionProof18687 : IsMapEvaluation generatorImages reduction18687.relations [8,64,689] reduction18687.output := by lin_cert using reduction18687.terms
def image18688 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18688 : InImage map_41_245 image18688 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18688 : Bundle := named_bundle% "RealMapCertificates/relations/basis18688.json"
theorem reductionProof18688 : EqualModuloRelations reduction18688.relations reduction18688.input reduction18688.output := by lin_cert using reduction18688.terms
theorem substitutionProof18688 : IsMapEvaluation generatorImages reduction18688.relations [8,9,13,13,13,13,219] reduction18688.output := by lin_cert using reduction18688.terms
def image18689 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18689 : InImage map_41_245 image18689 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18689 : Bundle := named_bundle% "RealMapCertificates/relations/basis18689.json"
theorem reductionProof18689 : EqualModuloRelations reduction18689.relations reduction18689.input reduction18689.output := by lin_cert using reduction18689.terms
theorem substitutionProof18689 : IsMapEvaluation generatorImages reduction18689.relations [8,8,8,8,13,13,292] reduction18689.output := by lin_cert using reduction18689.terms
def image18690 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18690 : InImage map_41_245 image18690 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18690 : Bundle := named_bundle% "RealMapCertificates/relations/basis18690.json"
theorem reductionProof18690 : EqualModuloRelations reduction18690.relations reduction18690.input reduction18690.output := by lin_cert using reduction18690.terms
theorem substitutionProof18690 : IsMapEvaluation generatorImages reduction18690.relations [8,8,8,8,8,8,17,209] reduction18690.output := by lin_cert using reduction18690.terms
def image18691 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18691 : InImage map_41_245 image18691 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18691 : Bundle := named_bundle% "RealMapCertificates/relations/basis18691.json"
theorem reductionProof18691 : EqualModuloRelations reduction18691.relations reduction18691.input reduction18691.output := by lin_cert using reduction18691.terms
theorem substitutionProof18691 : IsMapEvaluation generatorImages reduction18691.relations [0,64,889] reduction18691.output := by lin_cert using reduction18691.terms
def image18692 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18692 : InImage map_41_245 image18692 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18692 : Bundle := named_bundle% "RealMapCertificates/relations/basis18692.json"
theorem reductionProof18692 : EqualModuloRelations reduction18692.relations reduction18692.input reduction18692.output := by lin_cert using reduction18692.terms
theorem substitutionProof18692 : IsMapEvaluation generatorImages reduction18692.relations [0,0,0,0,0,0,1967] reduction18692.output := by lin_cert using reduction18692.terms
def map_41_246 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18981 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18981 : InImage map_41_246 image18981 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18981 : Bundle := named_bundle% "RealMapCertificates/relations/basis18981.json"
theorem reductionProof18981 : EqualModuloRelations reduction18981.relations reduction18981.input reduction18981.output := by lin_cert using reduction18981.terms
theorem substitutionProof18981 : IsMapEvaluation generatorImages reduction18981.relations [13,13,13,13,13,13,13,13,51] reduction18981.output := by lin_cert using reduction18981.terms
def image18982 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18982 : InImage map_41_246 image18982 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18982 : Bundle := named_bundle% "RealMapCertificates/relations/basis18982.json"
theorem reductionProof18982 : EqualModuloRelations reduction18982.relations reduction18982.input reduction18982.output := by lin_cert using reduction18982.terms
theorem substitutionProof18982 : IsMapEvaluation generatorImages reduction18982.relations [8,1687] reduction18982.output := by lin_cert using reduction18982.terms
def image18983 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18983 : InImage map_41_246 image18983 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18983 : Bundle := named_bundle% "RealMapCertificates/relations/basis18983.json"
theorem reductionProof18983 : EqualModuloRelations reduction18983.relations reduction18983.input reduction18983.output := by lin_cert using reduction18983.terms
theorem substitutionProof18983 : IsMapEvaluation generatorImages reduction18983.relations [8,8,9,13,13,13,13,13,80] reduction18983.output := by lin_cert using reduction18983.terms
def image18984 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18984 : InImage map_41_246 image18984 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18984 : Bundle := named_bundle% "RealMapCertificates/relations/basis18984.json"
theorem reductionProof18984 : EqualModuloRelations reduction18984.relations reduction18984.input reduction18984.output := by lin_cert using reduction18984.terms
theorem substitutionProof18984 : IsMapEvaluation generatorImages reduction18984.relations [8,8,8,64,327] reduction18984.output := by lin_cert using reduction18984.terms
def image18985 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18985 : InImage map_41_246 image18985 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18985 : Bundle := named_bundle% "RealMapCertificates/relations/basis18985.json"
theorem reductionProof18985 : EqualModuloRelations reduction18985.relations reduction18985.input reduction18985.output := by lin_cert using reduction18985.terms
theorem substitutionProof18985 : IsMapEvaluation generatorImages reduction18985.relations [8,8,8,8,8,8,23,188] reduction18985.output := by lin_cert using reduction18985.terms
def image18986 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18986 : InImage map_41_246 image18986 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18986 : Bundle := named_bundle% "RealMapCertificates/relations/basis18986.json"
theorem reductionProof18986 : EqualModuloRelations reduction18986.relations reduction18986.input reduction18986.output := by lin_cert using reduction18986.terms
theorem substitutionProof18986 : IsMapEvaluation generatorImages reduction18986.relations [0,0,0,0,0,0,0,0,1927] reduction18986.output := by lin_cert using reduction18986.terms
def map_41_247 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image19233 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19233 : InImage map_41_247 image19233 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19233 : Bundle := named_bundle% "RealMapCertificates/relations/basis19233.json"
theorem reductionProof19233 : EqualModuloRelations reduction19233.relations reduction19233.input reduction19233.output := by lin_cert using reduction19233.terms
theorem substitutionProof19233 : IsMapEvaluation generatorImages reduction19233.relations [64,927] reduction19233.output := by lin_cert using reduction19233.terms
def image19234 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19234 : InImage map_41_247 image19234 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19234 : Bundle := named_bundle% "RealMapCertificates/relations/basis19234.json"
theorem reductionProof19234 : EqualModuloRelations reduction19234.relations reduction19234.input reduction19234.output := by lin_cert using reduction19234.terms
theorem substitutionProof19234 : IsMapEvaluation generatorImages reduction19234.relations [16,17,963] reduction19234.output := by lin_cert using reduction19234.terms
def image19235 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19235 : InImage map_41_247 image19235 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19235 : Bundle := named_bundle% "RealMapCertificates/relations/basis19235.json"
theorem reductionProof19235 : EqualModuloRelations reduction19235.relations reduction19235.input reduction19235.output := by lin_cert using reduction19235.terms
theorem substitutionProof19235 : IsMapEvaluation generatorImages reduction19235.relations [8,8,9,13,715] reduction19235.output := by lin_cert using reduction19235.terms
def image19236 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19236 : InImage map_41_247 image19236 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19236 : Bundle := named_bundle% "RealMapCertificates/relations/basis19236.json"
theorem reductionProof19236 : EqualModuloRelations reduction19236.relations reduction19236.input reduction19236.output := by lin_cert using reduction19236.terms
theorem substitutionProof19236 : IsMapEvaluation generatorImages reduction19236.relations [0,0,0,0,0,0,0,1994] reduction19236.output := by lin_cert using reduction19236.terms
def map_41_248 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19486 : InImage map_41_248 image19486 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19486 : Bundle := named_bundle% "RealMapCertificates/relations/basis19486.json"
theorem reductionProof19486 : EqualModuloRelations reduction19486.relations reduction19486.input reduction19486.output := by lin_cert using reduction19486.terms
theorem substitutionProof19486 : IsMapEvaluation generatorImages reduction19486.relations [8,42,64,260] reduction19486.output := by lin_cert using reduction19486.terms
def image19487 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19487 : InImage map_41_248 image19487 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19487 : Bundle := named_bundle% "RealMapCertificates/relations/basis19487.json"
theorem reductionProof19487 : EqualModuloRelations reduction19487.relations reduction19487.input reduction19487.output := by lin_cert using reduction19487.terms
theorem substitutionProof19487 : IsMapEvaluation generatorImages reduction19487.relations [8,13,13,13,13,13,219] reduction19487.output := by lin_cert using reduction19487.terms
def image19488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19488 : InImage map_41_248 image19488 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19488 : Bundle := named_bundle% "RealMapCertificates/relations/basis19488.json"
theorem reductionProof19488 : EqualModuloRelations reduction19488.relations reduction19488.input reduction19488.output := by lin_cert using reduction19488.terms
theorem substitutionProof19488 : IsMapEvaluation generatorImages reduction19488.relations [8,8,64,549] reduction19488.output := by lin_cert using reduction19488.terms
def image19489 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19489 : InImage map_41_248 image19489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19489 : Bundle := named_bundle% "RealMapCertificates/relations/basis19489.json"
theorem reductionProof19489 : EqualModuloRelations reduction19489.relations reduction19489.input reduction19489.output := by lin_cert using reduction19489.terms
theorem substitutionProof19489 : IsMapEvaluation generatorImages reduction19489.relations [8,8,8,9,13,13,292] reduction19489.output := by lin_cert using reduction19489.terms
def image19490 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19490 : InImage map_41_248 image19490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19490 : Bundle := named_bundle% "RealMapCertificates/relations/basis19490.json"
theorem reductionProof19490 : EqualModuloRelations reduction19490.relations reduction19490.input reduction19490.output := by lin_cert using reduction19490.terms
theorem substitutionProof19490 : IsMapEvaluation generatorImages reduction19490.relations [8,8,8,8,8,8,8,280] reduction19490.output := by lin_cert using reduction19490.terms
def image19491 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19491 : InImage map_41_248 image19491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19491 : Bundle := named_bundle% "RealMapCertificates/relations/basis19491.json"
theorem reductionProof19491 : EqualModuloRelations reduction19491.relations reduction19491.input reduction19491.output := by lin_cert using reduction19491.terms
theorem substitutionProof19491 : IsMapEvaluation generatorImages reduction19491.relations [0,0,0,64,64,260] reduction19491.output := by lin_cert using reduction19491.terms
def map_41_249 : Matrix 2 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19795 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19795 : InImage map_41_249 image19795 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19795 : Bundle := named_bundle% "RealMapCertificates/relations/basis19795.json"
theorem reductionProof19795 : EqualModuloRelations reduction19795.relations reduction19795.input reduction19795.output := by lin_cert using reduction19795.terms
theorem substitutionProof19795 : IsMapEvaluation generatorImages reduction19795.relations [8,1754] reduction19795.output := by lin_cert using reduction19795.terms
def image19796 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19796 : InImage map_41_249 image19796 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19796 : Bundle := named_bundle% "RealMapCertificates/relations/basis19796.json"
theorem reductionProof19796 : EqualModuloRelations reduction19796.relations reduction19796.input reduction19796.output := by lin_cert using reduction19796.terms
theorem substitutionProof19796 : IsMapEvaluation generatorImages reduction19796.relations [8,8,13,13,13,13,13,13,80] reduction19796.output := by lin_cert using reduction19796.terms
def image19797 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19797 : InImage map_41_249 image19797 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19797 : Bundle := named_bundle% "RealMapCertificates/relations/basis19797.json"
theorem reductionProof19797 : EqualModuloRelations reduction19797.relations reduction19797.input reduction19797.output := by lin_cert using reduction19797.terms
theorem substitutionProof19797 : IsMapEvaluation generatorImages reduction19797.relations [8,8,8,16,64,188] reduction19797.output := by lin_cert using reduction19797.terms
def image19798 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19798 : InImage map_41_249 image19798 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19798 : Bundle := named_bundle% "RealMapCertificates/relations/basis19798.json"
theorem reductionProof19798 : EqualModuloRelations reduction19798.relations reduction19798.input reduction19798.output := by lin_cert using reduction19798.terms
theorem substitutionProof19798 : IsMapEvaluation generatorImages reduction19798.relations [8,8,8,8,8,9,23,188] reduction19798.output := by lin_cert using reduction19798.terms
def image19799 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19799 : InImage map_41_249 image19799 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19799 : Bundle := named_bundle% "RealMapCertificates/relations/basis19799.json"
theorem reductionProof19799 : EqualModuloRelations reduction19799.relations reduction19799.input reduction19799.output := by lin_cert using reduction19799.terms
theorem substitutionProof19799 : IsMapEvaluation generatorImages reduction19799.relations [0,0,64,64,274] reduction19799.output := by lin_cert using reduction19799.terms
def image19800 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19800 : InImage map_41_249 image19800 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19800 : Bundle := named_bundle% "RealMapCertificates/relations/basis19800.json"
theorem reductionProof19800 : EqualModuloRelations reduction19800.relations reduction19800.input reduction19800.output := by lin_cert using reduction19800.terms
theorem substitutionProof19800 : IsMapEvaluation generatorImages reduction19800.relations [0,0,0,2196] reduction19800.output := by lin_cert using reduction19800.terms
def image19801 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19801 : InImage map_41_249 image19801 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19801 : Bundle := named_bundle% "RealMapCertificates/relations/basis19801.json"
theorem reductionProof19801 : EqualModuloRelations reduction19801.relations reduction19801.input reduction19801.output := by lin_cert using reduction19801.terms
theorem substitutionProof19801 : IsMapEvaluation generatorImages reduction19801.relations [0,0,0,0,64,897] reduction19801.output := by lin_cert using reduction19801.terms
def map_41_250 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image20018 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20018 : InImage map_41_250 image20018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20018 : Bundle := named_bundle% "RealMapCertificates/relations/basis20018.json"
theorem reductionProof20018 : EqualModuloRelations reduction20018.relations reduction20018.input reduction20018.output := by lin_cert using reduction20018.terms
theorem substitutionProof20018 : IsMapEvaluation generatorImages reduction20018.relations [64,962] reduction20018.output := by lin_cert using reduction20018.terms
def image20019 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20019 : InImage map_41_250 image20019 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20019 : Bundle := named_bundle% "RealMapCertificates/relations/basis20019.json"
theorem reductionProof20019 : EqualModuloRelations reduction20019.relations reduction20019.input reduction20019.output := by lin_cert using reduction20019.terms
theorem substitutionProof20019 : IsMapEvaluation generatorImages reduction20019.relations [8,17,1220] reduction20019.output := by lin_cert using reduction20019.terms
def image20020 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20020 : InImage map_41_250 image20020 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20020 : Bundle := named_bundle% "RealMapCertificates/relations/basis20020.json"
theorem reductionProof20020 : EqualModuloRelations reduction20020.relations reduction20020.input reduction20020.output := by lin_cert using reduction20020.terms
theorem substitutionProof20020 : IsMapEvaluation generatorImages reduction20020.relations [8,8,13,13,715] reduction20020.output := by lin_cert using reduction20020.terms
def image20021 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20021 : InImage map_41_250 image20021 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20021 : Bundle := named_bundle% "RealMapCertificates/relations/basis20021.json"
theorem reductionProof20021 : EqualModuloRelations reduction20021.relations reduction20021.input reduction20021.output := by lin_cert using reduction20021.terms
theorem substitutionProof20021 : IsMapEvaluation generatorImages reduction20021.relations [0,0,0,0,64,919] reduction20021.output := by lin_cert using reduction20021.terms
def map_41_251 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20301 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20301 : InImage map_41_251 image20301 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20301 : Bundle := named_bundle% "RealMapCertificates/relations/basis20301.json"
theorem reductionProof20301 : EqualModuloRelations reduction20301.relations reduction20301.input reduction20301.output := by lin_cert using reduction20301.terms
theorem substitutionProof20301 : IsMapEvaluation generatorImages reduction20301.relations [9,13,13,13,13,13,219] reduction20301.output := by lin_cert using reduction20301.terms
def image20302 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20302 : InImage map_41_251 image20302 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20302 : Bundle := named_bundle% "RealMapCertificates/relations/basis20302.json"
theorem reductionProof20302 : EqualModuloRelations reduction20302.relations reduction20302.input reduction20302.output := by lin_cert using reduction20302.terms
theorem substitutionProof20302 : IsMapEvaluation generatorImages reduction20302.relations [8,17,113,292] reduction20302.output := by lin_cert using reduction20302.terms
def image20303 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20303 : InImage map_41_251 image20303 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20303 : Bundle := named_bundle% "RealMapCertificates/relations/basis20303.json"
theorem reductionProof20303 : EqualModuloRelations reduction20303.relations reduction20303.input reduction20303.output := by lin_cert using reduction20303.terms
theorem substitutionProof20303 : IsMapEvaluation generatorImages reduction20303.relations [8,8,64,574] reduction20303.output := by lin_cert using reduction20303.terms
def image20304 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20304 : InImage map_41_251 image20304 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20304 : Bundle := named_bundle% "RealMapCertificates/relations/basis20304.json"
theorem reductionProof20304 : EqualModuloRelations reduction20304.relations reduction20304.input reduction20304.output := by lin_cert using reduction20304.terms
theorem substitutionProof20304 : IsMapEvaluation generatorImages reduction20304.relations [8,8,8,13,13,13,292] reduction20304.output := by lin_cert using reduction20304.terms
def image20305 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20305 : InImage map_41_251 image20305 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20305 : Bundle := named_bundle% "RealMapCertificates/relations/basis20305.json"
theorem reductionProof20305 : EqualModuloRelations reduction20305.relations reduction20305.input reduction20305.output := by lin_cert using reduction20305.terms
theorem substitutionProof20305 : IsMapEvaluation generatorImages reduction20305.relations [8,8,8,8,8,8,8,294] reduction20305.output := by lin_cert using reduction20305.terms
def image20306 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20306 : InImage map_41_251 image20306 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20306 : Bundle := named_bundle% "RealMapCertificates/relations/basis20306.json"
theorem reductionProof20306 : EqualModuloRelations reduction20306.relations reduction20306.input reduction20306.output := by lin_cert using reduction20306.terms
theorem substitutionProof20306 : IsMapEvaluation generatorImages reduction20306.relations [0,0,0,0,0,0,64,898] reduction20306.output := by lin_cert using reduction20306.terms
def map_41_252 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20600 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20600 : InImage map_41_252 image20600 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20600 : Bundle := named_bundle% "RealMapCertificates/relations/basis20600.json"
theorem reductionProof20600 : EqualModuloRelations reduction20600.relations reduction20600.input reduction20600.output := by lin_cert using reduction20600.terms
theorem substitutionProof20600 : IsMapEvaluation generatorImages reduction20600.relations [13,13,13,13,13,13,13,13,13,24] reduction20600.output := by lin_cert using reduction20600.terms
def image20601 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20601 : InImage map_41_252 image20601 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20601 : Bundle := named_bundle% "RealMapCertificates/relations/basis20601.json"
theorem reductionProof20601 : EqualModuloRelations reduction20601.relations reduction20601.input reduction20601.output := by lin_cert using reduction20601.terms
theorem substitutionProof20601 : IsMapEvaluation generatorImages reduction20601.relations [8,9,13,13,13,13,13,13,80] reduction20601.output := by lin_cert using reduction20601.terms
def image20602 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20602 : InImage map_41_252 image20602 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20602 : Bundle := named_bundle% "RealMapCertificates/relations/basis20602.json"
theorem reductionProof20602 : EqualModuloRelations reduction20602.relations reduction20602.input reduction20602.output := by lin_cert using reduction20602.terms
theorem substitutionProof20602 : IsMapEvaluation generatorImages reduction20602.relations [8,8,1481] reduction20602.output := by lin_cert using reduction20602.terms
def image20603 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20603 : InImage map_41_252 image20603 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20603 : Bundle := named_bundle% "RealMapCertificates/relations/basis20603.json"
theorem reductionProof20603 : EqualModuloRelations reduction20603.relations reduction20603.input reduction20603.output := by lin_cert using reduction20603.terms
theorem substitutionProof20603 : IsMapEvaluation generatorImages reduction20603.relations [8,8,8,8,64,255] reduction20603.output := by lin_cert using reduction20603.terms
def image20604 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20604 : InImage map_41_252 image20604 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20604 : Bundle := named_bundle% "RealMapCertificates/relations/basis20604.json"
theorem reductionProof20604 : EqualModuloRelations reduction20604.relations reduction20604.input reduction20604.output := by lin_cert using reduction20604.terms
theorem substitutionProof20604 : IsMapEvaluation generatorImages reduction20604.relations [8,8,8,8,8,13,23,188] reduction20604.output := by lin_cert using reduction20604.terms
def image20605 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20605 : InImage map_41_252 image20605 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20605 : Bundle := named_bundle% "RealMapCertificates/relations/basis20605.json"
theorem reductionProof20605 : EqualModuloRelations reduction20605.relations reduction20605.input reduction20605.output := by lin_cert using reduction20605.terms
theorem substitutionProof20605 : IsMapEvaluation generatorImages reduction20605.relations [5,260,260] reduction20605.output := by lin_cert using reduction20605.terms
def map_41_253 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image20842 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20842 : InImage map_41_253 image20842 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20842 : Bundle := named_bundle% "RealMapCertificates/relations/basis20842.json"
theorem reductionProof20842 : EqualModuloRelations reduction20842.relations reduction20842.input reduction20842.output := by lin_cert using reduction20842.terms
theorem substitutionProof20842 : IsMapEvaluation generatorImages reduction20842.relations [8,1856] reduction20842.output := by lin_cert using reduction20842.terms
def image20843 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20843 : InImage map_41_253 image20843 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20843 : Bundle := named_bundle% "RealMapCertificates/relations/basis20843.json"
theorem reductionProof20843 : EqualModuloRelations reduction20843.relations reduction20843.input reduction20843.output := by lin_cert using reduction20843.terms
theorem substitutionProof20843 : IsMapEvaluation generatorImages reduction20843.relations [8,9,13,13,715] reduction20843.output := by lin_cert using reduction20843.terms
def image20844 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20844 : InImage map_41_253 image20844 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20844 : Bundle := named_bundle% "RealMapCertificates/relations/basis20844.json"
theorem reductionProof20844 : EqualModuloRelations reduction20844.relations reduction20844.input reduction20844.output := by lin_cert using reduction20844.terms
theorem substitutionProof20844 : IsMapEvaluation generatorImages reduction20844.relations [8,8,17,963] reduction20844.output := by lin_cert using reduction20844.terms
def image20845 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20845 : InImage map_41_253 image20845 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20845 : Bundle := named_bundle% "RealMapCertificates/relations/basis20845.json"
theorem reductionProof20845 : EqualModuloRelations reduction20845.relations reduction20845.input reduction20845.output := by lin_cert using reduction20845.terms
theorem substitutionProof20845 : IsMapEvaluation generatorImages reduction20845.relations [0,64,64,64,64] reduction20845.output := by lin_cert using reduction20845.terms
def map_41_254 : Matrix 1 8 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image21121 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21121 : InImage map_41_254 image21121 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction21121 : Bundle := named_bundle% "RealMapCertificates/relations/basis21121.json"
theorem reductionProof21121 : EqualModuloRelations reduction21121.relations reduction21121.input reduction21121.output := by lin_cert using reduction21121.terms
theorem substitutionProof21121 : IsMapEvaluation generatorImages reduction21121.relations [13,13,13,13,13,13,219] reduction21121.output := by lin_cert using reduction21121.terms
def image21122 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21122 : InImage map_41_254 image21122 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction21122 : Bundle := named_bundle% "RealMapCertificates/relations/basis21122.json"
theorem reductionProof21122 : EqualModuloRelations reduction21122.relations reduction21122.input reduction21122.output := by lin_cert using reduction21122.terms
theorem substitutionProof21122 : IsMapEvaluation generatorImages reduction21122.relations [8,8,17,974] reduction21122.output := by lin_cert using reduction21122.terms
def image21123 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21123 : InImage map_41_254 image21123 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction21123 : Bundle := named_bundle% "RealMapCertificates/relations/basis21123.json"
theorem reductionProof21123 : EqualModuloRelations reduction21123.relations reduction21123.input reduction21123.output := by lin_cert using reduction21123.terms
theorem substitutionProof21123 : IsMapEvaluation generatorImages reduction21123.relations [8,8,9,13,13,13,292] reduction21123.output := by lin_cert using reduction21123.terms
def image21124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21124 : InImage map_41_254 image21124 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction21124 : Bundle := named_bundle% "RealMapCertificates/relations/basis21124.json"
theorem reductionProof21124 : EqualModuloRelations reduction21124.relations reduction21124.input reduction21124.output := by lin_cert using reduction21124.terms
theorem substitutionProof21124 : IsMapEvaluation generatorImages reduction21124.relations [8,8,8,64,420] reduction21124.output := by lin_cert using reduction21124.terms
def image21125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21125 : InImage map_41_254 image21125 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction21125 : Bundle := named_bundle% "RealMapCertificates/relations/basis21125.json"
theorem reductionProof21125 : EqualModuloRelations reduction21125.relations reduction21125.input reduction21125.output := by lin_cert using reduction21125.terms
theorem substitutionProof21125 : IsMapEvaluation generatorImages reduction21125.relations [8,8,8,8,8,8,9,294] reduction21125.output := by lin_cert using reduction21125.terms
def image21126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21126 : InImage map_41_254 image21126 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction21126 : Bundle := named_bundle% "RealMapCertificates/relations/basis21126.json"
theorem reductionProof21126 : EqualModuloRelations reduction21126.relations reduction21126.input reduction21126.output := by lin_cert using reduction21126.terms
theorem substitutionProof21126 : IsMapEvaluation generatorImages reduction21126.relations [1,64,64,64,64] reduction21126.output := by lin_cert using reduction21126.terms
def image21127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21127 : InImage map_41_254 image21127 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction21127 : Bundle := named_bundle% "RealMapCertificates/relations/basis21127.json"
theorem reductionProof21127 : EqualModuloRelations reduction21127.relations reduction21127.input reduction21127.output := by lin_cert using reduction21127.terms
theorem substitutionProof21127 : IsMapEvaluation generatorImages reduction21127.relations [0,260,380] reduction21127.output := by lin_cert using reduction21127.terms
def image21128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21128 : InImage map_41_254 image21128 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction21128 : Bundle := named_bundle% "RealMapCertificates/relations/basis21128.json"
theorem reductionProof21128 : EqualModuloRelations reduction21128.relations reduction21128.input reduction21128.output := by lin_cert using reduction21128.terms
theorem substitutionProof21128 : IsMapEvaluation generatorImages reduction21128.relations [0,0,64,64,299] reduction21128.output := by lin_cert using reduction21128.terms
def map_41_255 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image21473 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21473 : InImage map_41_255 image21473 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21473 : Bundle := named_bundle% "RealMapCertificates/relations/basis21473.json"
theorem reductionProof21473 : EqualModuloRelations reduction21473.relations reduction21473.input reduction21473.output := by lin_cert using reduction21473.terms
theorem substitutionProof21473 : IsMapEvaluation generatorImages reduction21473.relations [8,13,13,13,13,13,13,13,80] reduction21473.output := by lin_cert using reduction21473.terms
def image21474 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21474 : InImage map_41_255 image21474 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21474 : Bundle := named_bundle% "RealMapCertificates/relations/basis21474.json"
theorem reductionProof21474 : EqualModuloRelations reduction21474.relations reduction21474.input reduction21474.output := by lin_cert using reduction21474.terms
theorem substitutionProof21474 : IsMapEvaluation generatorImages reduction21474.relations [8,8,1538] reduction21474.output := by lin_cert using reduction21474.terms
def image21475 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21475 : InImage map_41_255 image21475 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21475 : Bundle := named_bundle% "RealMapCertificates/relations/basis21475.json"
theorem reductionProof21475 : EqualModuloRelations reduction21475.relations reduction21475.input reduction21475.output := by lin_cert using reduction21475.terms
theorem substitutionProof21475 : IsMapEvaluation generatorImages reduction21475.relations [8,8,8,8,9,13,23,188] reduction21475.output := by lin_cert using reduction21475.terms
def image21476 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21476 : InImage map_41_255 image21476 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21476 : Bundle := named_bundle% "RealMapCertificates/relations/basis21476.json"
theorem reductionProof21476 : EqualModuloRelations reduction21476.relations reduction21476.input reduction21476.output := by lin_cert using reduction21476.terms
theorem substitutionProof21476 : IsMapEvaluation generatorImages reduction21476.relations [8,8,8,8,8,64,188] reduction21476.output := by lin_cert using reduction21476.terms
def image21477 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21477 : InImage map_41_255 image21477 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21477 : Bundle := named_bundle% "RealMapCertificates/relations/basis21477.json"
theorem reductionProof21477 : EqualModuloRelations reduction21477.relations reduction21477.input reduction21477.output := by lin_cert using reduction21477.terms
theorem substitutionProof21477 : IsMapEvaluation generatorImages reduction21477.relations [0,260,404] reduction21477.output := by lin_cert using reduction21477.terms
def image21478 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21478 : InImage map_41_255 image21478 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21478 : Bundle := named_bundle% "RealMapCertificates/relations/basis21478.json"
theorem reductionProof21478 : EqualModuloRelations reduction21478.relations reduction21478.input reduction21478.output := by lin_cert using reduction21478.terms
theorem substitutionProof21478 : IsMapEvaluation generatorImages reduction21478.relations [0,0,2437] reduction21478.output := by lin_cert using reduction21478.terms
def image21479 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21479 : InImage map_41_255 image21479 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21479 : Bundle := named_bundle% "RealMapCertificates/relations/basis21479.json"
theorem reductionProof21479 : EqualModuloRelations reduction21479.relations reduction21479.input reduction21479.output := by lin_cert using reduction21479.terms
theorem substitutionProof21479 : IsMapEvaluation generatorImages reduction21479.relations [0,0,0,0,0,64,963] reduction21479.output := by lin_cert using reduction21479.terms
def map_41_256 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21738 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21738 : InImage map_41_256 image21738 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21738 : Bundle := named_bundle% "RealMapCertificates/relations/basis21738.json"
theorem reductionProof21738 : EqualModuloRelations reduction21738.relations reduction21738.input reduction21738.output := by lin_cert using reduction21738.terms
theorem substitutionProof21738 : IsMapEvaluation generatorImages reduction21738.relations [8,64,821] reduction21738.output := by lin_cert using reduction21738.terms
def image21739 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21739 : InImage map_41_256 image21739 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21739 : Bundle := named_bundle% "RealMapCertificates/relations/basis21739.json"
theorem reductionProof21739 : EqualModuloRelations reduction21739.relations reduction21739.input reduction21739.output := by lin_cert using reduction21739.terms
theorem substitutionProof21739 : IsMapEvaluation generatorImages reduction21739.relations [8,13,13,13,715] reduction21739.output := by lin_cert using reduction21739.terms
def image21740 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21740 : InImage map_41_256 image21740 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21740 : Bundle := named_bundle% "RealMapCertificates/relations/basis21740.json"
theorem reductionProof21740 : EqualModuloRelations reduction21740.relations reduction21740.input reduction21740.output := by lin_cert using reduction21740.terms
theorem substitutionProof21740 : IsMapEvaluation generatorImages reduction21740.relations [8,8,20,963] reduction21740.output := by lin_cert using reduction21740.terms
def image21741 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21741 : InImage map_41_256 image21741 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21741 : Bundle := named_bundle% "RealMapCertificates/relations/basis21741.json"
theorem reductionProof21741 : EqualModuloRelations reduction21741.relations reduction21741.input reduction21741.output := by lin_cert using reduction21741.terms
theorem substitutionProof21741 : IsMapEvaluation generatorImages reduction21741.relations [0,0,0,0,64,64,301] reduction21741.output := by lin_cert using reduction21741.terms
def image21742 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21742 : InImage map_41_256 image21742 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21742 : Bundle := named_bundle% "RealMapCertificates/relations/basis21742.json"
theorem reductionProof21742 : EqualModuloRelations reduction21742.relations reduction21742.input reduction21742.output := by lin_cert using reduction21742.terms
theorem substitutionProof21742 : IsMapEvaluation generatorImages reduction21742.relations [0,0,0,0,0,0,2334] reduction21742.output := by lin_cert using reduction21742.terms
def map_41_257 : Matrix 1 6 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22074 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22074 : InImage map_41_257 image22074 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22074 : Bundle := named_bundle% "RealMapCertificates/relations/basis22074.json"
theorem reductionProof22074 : EqualModuloRelations reduction22074.relations reduction22074.input reduction22074.output := by lin_cert using reduction22074.terms
theorem substitutionProof22074 : IsMapEvaluation generatorImages reduction22074.relations [8,8,17,1035] reduction22074.output := by lin_cert using reduction22074.terms
def image22075 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22075 : InImage map_41_257 image22075 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22075 : Bundle := named_bundle% "RealMapCertificates/relations/basis22075.json"
theorem reductionProof22075 : EqualModuloRelations reduction22075.relations reduction22075.input reduction22075.output := by lin_cert using reduction22075.terms
theorem substitutionProof22075 : IsMapEvaluation generatorImages reduction22075.relations [8,8,13,13,13,13,292] reduction22075.output := by lin_cert using reduction22075.terms
def image22076 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22076 : InImage map_41_257 image22076 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22076 : Bundle := named_bundle% "RealMapCertificates/relations/basis22076.json"
theorem reductionProof22076 : EqualModuloRelations reduction22076.relations reduction22076.input reduction22076.output := by lin_cert using reduction22076.terms
theorem substitutionProof22076 : IsMapEvaluation generatorImages reduction22076.relations [8,8,8,72,420] reduction22076.output := by lin_cert using reduction22076.terms
def image22077 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22077 : InImage map_41_257 image22077 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22077 : Bundle := named_bundle% "RealMapCertificates/relations/basis22077.json"
theorem reductionProof22077 : EqualModuloRelations reduction22077.relations reduction22077.input reduction22077.output := by lin_cert using reduction22077.terms
theorem substitutionProof22077 : IsMapEvaluation generatorImages reduction22077.relations [8,8,8,8,8,8,13,294] reduction22077.output := by lin_cert using reduction22077.terms
def image22078 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22078 : InImage map_41_257 image22078 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22078 : Bundle := named_bundle% "RealMapCertificates/relations/basis22078.json"
theorem reductionProof22078 : EqualModuloRelations reduction22078.relations reduction22078.input reduction22078.output := by lin_cert using reduction22078.terms
theorem substitutionProof22078 : IsMapEvaluation generatorImages reduction22078.relations [0,8,260,260] reduction22078.output := by lin_cert using reduction22078.terms
def image22079 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22079 : InImage map_41_257 image22079 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22079 : Bundle := named_bundle% "RealMapCertificates/relations/basis22079.json"
theorem reductionProof22079 : EqualModuloRelations reduction22079.relations reduction22079.input reduction22079.output := by lin_cert using reduction22079.terms
theorem substitutionProof22079 : IsMapEvaluation generatorImages reduction22079.relations [0,0,0,0,0,0,64,976] reduction22079.output := by lin_cert using reduction22079.terms
def map_41_258 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22433 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22433 : InImage map_41_258 image22433 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22433 : Bundle := named_bundle% "RealMapCertificates/relations/basis22433.json"
theorem reductionProof22433 : EqualModuloRelations reduction22433.relations reduction22433.input reduction22433.output := by lin_cert using reduction22433.terms
theorem substitutionProof22433 : IsMapEvaluation generatorImages reduction22433.relations [64,1094] reduction22433.output := by lin_cert using reduction22433.terms
def image22434 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22434 : InImage map_41_258 image22434 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22434 : Bundle := named_bundle% "RealMapCertificates/relations/basis22434.json"
theorem reductionProof22434 : EqualModuloRelations reduction22434.relations reduction22434.input reduction22434.output := by lin_cert using reduction22434.terms
theorem substitutionProof22434 : IsMapEvaluation generatorImages reduction22434.relations [9,13,13,13,13,13,13,13,80] reduction22434.output := by lin_cert using reduction22434.terms
def image22435 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22435 : InImage map_41_258 image22435 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22435 : Bundle := named_bundle% "RealMapCertificates/relations/basis22435.json"
theorem reductionProof22435 : EqualModuloRelations reduction22435.relations reduction22435.input reduction22435.output := by lin_cert using reduction22435.terms
theorem substitutionProof22435 : IsMapEvaluation generatorImages reduction22435.relations [8,8,1594] reduction22435.output := by lin_cert using reduction22435.terms
def image22436 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22436 : InImage map_41_258 image22436 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22436 : Bundle := named_bundle% "RealMapCertificates/relations/basis22436.json"
theorem reductionProof22436 : EqualModuloRelations reduction22436.relations reduction22436.input reduction22436.output := by lin_cert using reduction22436.terms
theorem substitutionProof22436 : IsMapEvaluation generatorImages reduction22436.relations [8,8,8,8,13,13,23,188] reduction22436.output := by lin_cert using reduction22436.terms
def image22437 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22437 : InImage map_41_258 image22437 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22437 : Bundle := named_bundle% "RealMapCertificates/relations/basis22437.json"
theorem reductionProof22437 : EqualModuloRelations reduction22437.relations reduction22437.input reduction22437.output := by lin_cert using reduction22437.terms
theorem substitutionProof22437 : IsMapEvaluation generatorImages reduction22437.relations [8,8,8,8,8,72,188] reduction22437.output := by lin_cert using reduction22437.terms
def image22438 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22438 : InImage map_41_258 image22438 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22438 : Bundle := named_bundle% "RealMapCertificates/relations/basis22438.json"
theorem reductionProof22438 : EqualModuloRelations reduction22438.relations reduction22438.input reduction22438.output := by lin_cert using reduction22438.terms
theorem substitutionProof22438 : IsMapEvaluation generatorImages reduction22438.relations [0,0,8,1926] reduction22438.output := by lin_cert using reduction22438.terms
def map_41_259 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image22744 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22744 : InImage map_41_259 image22744 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22744 : Bundle := named_bundle% "RealMapCertificates/relations/basis22744.json"
theorem reductionProof22744 : EqualModuloRelations reduction22744.relations reduction22744.input reduction22744.output := by lin_cert using reduction22744.terms
theorem substitutionProof22744 : IsMapEvaluation generatorImages reduction22744.relations [9,13,13,13,715] reduction22744.output := by lin_cert using reduction22744.terms
def image22745 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22745 : InImage map_41_259 image22745 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22745 : Bundle := named_bundle% "RealMapCertificates/relations/basis22745.json"
theorem reductionProof22745 : EqualModuloRelations reduction22745.relations reduction22745.input reduction22745.output := by lin_cert using reduction22745.terms
theorem substitutionProof22745 : IsMapEvaluation generatorImages reduction22745.relations [8,8,1606] reduction22745.output := by lin_cert using reduction22745.terms
def image22746 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22746 : InImage map_41_259 image22746 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22746 : Bundle := named_bundle% "RealMapCertificates/relations/basis22746.json"
theorem reductionProof22746 : EqualModuloRelations reduction22746.relations reduction22746.input reduction22746.output := by lin_cert using reduction22746.terms
theorem substitutionProof22746 : IsMapEvaluation generatorImages reduction22746.relations [8,8,22,963] reduction22746.output := by lin_cert using reduction22746.terms
def image22747 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22747 : InImage map_41_259 image22747 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22747 : Bundle := named_bundle% "RealMapCertificates/relations/basis22747.json"
theorem reductionProof22747 : EqualModuloRelations reduction22747.relations reduction22747.input reduction22747.output := by lin_cert using reduction22747.terms
theorem substitutionProof22747 : IsMapEvaluation generatorImages reduction22747.relations [0,0,0,0,0,0,0,0,0,0,2307] reduction22747.output := by lin_cert using reduction22747.terms
def map_41_260 : Matrix 0 8 := fun i j => ([] : List Bool)[i.val*8+j.val]!
def image23111 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23111 : InImage map_41_260 image23111 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23111 : Bundle := named_bundle% "RealMapCertificates/relations/basis23111.json"
theorem reductionProof23111 : EqualModuloRelations reduction23111.relations reduction23111.input reduction23111.output := by lin_cert using reduction23111.terms
theorem substitutionProof23111 : IsMapEvaluation generatorImages reduction23111.relations [64,113,260] reduction23111.output := by lin_cert using reduction23111.terms
def image23112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23112 : InImage map_41_260 image23112 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23112 : Bundle := named_bundle% "RealMapCertificates/relations/basis23112.json"
theorem reductionProof23112 : EqualModuloRelations reduction23112.relations reduction23112.input reduction23112.output := by lin_cert using reduction23112.terms
theorem substitutionProof23112 : IsMapEvaluation generatorImages reduction23112.relations [13,13,13,13,13,13,13,150] reduction23112.output := by lin_cert using reduction23112.terms
def image23113 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23113 : InImage map_41_260 image23113 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23113 : Bundle := named_bundle% "RealMapCertificates/relations/basis23113.json"
theorem reductionProof23113 : EqualModuloRelations reduction23113.relations reduction23113.input reduction23113.output := by lin_cert using reduction23113.terms
theorem substitutionProof23113 : IsMapEvaluation generatorImages reduction23113.relations [8,9,13,13,13,13,292] reduction23113.output := by lin_cert using reduction23113.terms
def image23114 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23114 : InImage map_41_260 image23114 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23114 : Bundle := named_bundle% "RealMapCertificates/relations/basis23114.json"
theorem reductionProof23114 : EqualModuloRelations reduction23114.relations reduction23114.input reduction23114.output := by lin_cert using reduction23114.terms
theorem substitutionProof23114 : IsMapEvaluation generatorImages reduction23114.relations [8,8,8,42,627] reduction23114.output := by lin_cert using reduction23114.terms
def image23115 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23115 : InImage map_41_260 image23115 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23115 : Bundle := named_bundle% "RealMapCertificates/relations/basis23115.json"
theorem reductionProof23115 : EqualModuloRelations reduction23115.relations reduction23115.input reduction23115.output := by lin_cert using reduction23115.terms
theorem substitutionProof23115 : IsMapEvaluation generatorImages reduction23115.relations [8,8,8,8,64,293] reduction23115.output := by lin_cert using reduction23115.terms
def image23116 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23116 : InImage map_41_260 image23116 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23116 : Bundle := named_bundle% "RealMapCertificates/relations/basis23116.json"
theorem reductionProof23116 : EqualModuloRelations reduction23116.relations reduction23116.input reduction23116.output := by lin_cert using reduction23116.terms
theorem substitutionProof23116 : IsMapEvaluation generatorImages reduction23116.relations [8,8,8,8,8,9,13,294] reduction23116.output := by lin_cert using reduction23116.terms
def image23117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23117 : InImage map_41_260 image23117 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23117 : Bundle := named_bundle% "RealMapCertificates/relations/basis23117.json"
theorem reductionProof23117 : EqualModuloRelations reduction23117.relations reduction23117.input reduction23117.output := by lin_cert using reduction23117.terms
theorem substitutionProof23117 : IsMapEvaluation generatorImages reduction23117.relations [0,0,0,64,64,347] reduction23117.output := by lin_cert using reduction23117.terms
def image23118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation23118 : InImage map_41_260 image23118 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23118 : Bundle := named_bundle% "RealMapCertificates/relations/basis23118.json"
theorem reductionProof23118 : EqualModuloRelations reduction23118.relations reduction23118.input reduction23118.output := by lin_cert using reduction23118.terms
theorem substitutionProof23118 : IsMapEvaluation generatorImages reduction23118.relations [0,0,0,0,0,0,0,0,0,0,2340] reduction23118.output := by lin_cert using reduction23118.terms
def map_41_261 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image23558 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23558 : InImage map_41_261 image23558 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23558 : Bundle := named_bundle% "RealMapCertificates/relations/basis23558.json"
theorem reductionProof23558 : EqualModuloRelations reduction23558.relations reduction23558.input reduction23558.output := by lin_cert using reduction23558.terms
theorem substitutionProof23558 : IsMapEvaluation generatorImages reduction23558.relations [64,1145] reduction23558.output := by lin_cert using reduction23558.terms
def image23559 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23559 : InImage map_41_261 image23559 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23559 : Bundle := named_bundle% "RealMapCertificates/relations/basis23559.json"
theorem reductionProof23559 : EqualModuloRelations reduction23559.relations reduction23559.input reduction23559.output := by lin_cert using reduction23559.terms
theorem substitutionProof23559 : IsMapEvaluation generatorImages reduction23559.relations [13,13,13,13,13,13,13,13,80] reduction23559.output := by lin_cert using reduction23559.terms
def image23560 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23560 : InImage map_41_261 image23560 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23560 : Bundle := named_bundle% "RealMapCertificates/relations/basis23560.json"
theorem reductionProof23560 : EqualModuloRelations reduction23560.relations reduction23560.input reduction23560.output := by lin_cert using reduction23560.terms
theorem substitutionProof23560 : IsMapEvaluation generatorImages reduction23560.relations [8,9,1594] reduction23560.output := by lin_cert using reduction23560.terms
def image23561 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23561 : InImage map_41_261 image23561 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23561 : Bundle := named_bundle% "RealMapCertificates/relations/basis23561.json"
theorem reductionProof23561 : EqualModuloRelations reduction23561.relations reduction23561.input reduction23561.output := by lin_cert using reduction23561.terms
theorem substitutionProof23561 : IsMapEvaluation generatorImages reduction23561.relations [8,8,8,9,13,13,23,188] reduction23561.output := by lin_cert using reduction23561.terms
def image23562 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23562 : InImage map_41_261 image23562 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23562 : Bundle := named_bundle% "RealMapCertificates/relations/basis23562.json"
theorem reductionProof23562 : EqualModuloRelations reduction23562.relations reduction23562.input reduction23562.output := by lin_cert using reduction23562.terms
theorem substitutionProof23562 : IsMapEvaluation generatorImages reduction23562.relations [8,8,8,8,8,79,188] reduction23562.output := by lin_cert using reduction23562.terms
def image23563 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23563 : InImage map_41_261 image23563 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23563 : Bundle := named_bundle% "RealMapCertificates/relations/basis23563.json"
theorem reductionProof23563 : EqualModuloRelations reduction23563.relations reduction23563.input reduction23563.output := by lin_cert using reduction23563.terms
theorem substitutionProof23563 : IsMapEvaluation generatorImages reduction23563.relations [0,0,0,0,64,138,209] reduction23563.output := by lin_cert using reduction23563.terms
def image23564 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23564 : InImage map_41_261 image23564 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23564 : Bundle := named_bundle% "RealMapCertificates/relations/basis23564.json"
theorem reductionProof23564 : EqualModuloRelations reduction23564.relations reduction23564.input reduction23564.output := by lin_cert using reduction23564.terms
theorem substitutionProof23564 : IsMapEvaluation generatorImages reduction23564.relations [0,0,0,0,0,0,0,0,0,0,0,2342] reduction23564.output := by lin_cert using reduction23564.terms
end RealMapCertificates
