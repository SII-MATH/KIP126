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
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 153 => [[4,4,4,4,4,5,6]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 276 => [[1,4,4,4,4,4,4,4,4,4,4]]
  | 290 => [[2,4,4,4,4,4,4,4,4,4,4]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 297 => []
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 344 => [[4,4,5,5,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 725 => []
  | 759 => []
  | 795 => []
  | 807 => []
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 1033 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1143 => []
  | _ => []
def map_42_42 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image179 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation179 : InImage map_42_42 image179 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction179 : Bundle := named_bundle% "RealMapCertificates/relations/basis179.json"
theorem reductionProof179 : EqualModuloRelations reduction179.relations reduction179.input reduction179.output := by lin_cert using reduction179.terms
theorem substitutionProof179 : IsMapEvaluation generatorImages reduction179.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction179.output := by lin_cert using reduction179.terms
def map_42_124 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2089 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2089 : InImage map_42_124 image2089 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2089 : Bundle := named_bundle% "RealMapCertificates/relations/basis2089.json"
theorem reductionProof2089 : EqualModuloRelations reduction2089.relations reduction2089.input reduction2089.output := by lin_cert using reduction2089.terms
theorem substitutionProof2089 : IsMapEvaluation generatorImages reduction2089.relations [1,276] reduction2089.output := by lin_cert using reduction2089.terms
def map_42_125 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2127 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2127 : InImage map_42_125 image2127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2127 : Bundle := named_bundle% "RealMapCertificates/relations/basis2127.json"
theorem reductionProof2127 : EqualModuloRelations reduction2127.relations reduction2127.input reduction2127.output := by lin_cert using reduction2127.terms
theorem substitutionProof2127 : IsMapEvaluation generatorImages reduction2127.relations [0,290] reduction2127.output := by lin_cert using reduction2127.terms
def map_42_128 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2260 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2260 : InImage map_42_128 image2260 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2260 : Bundle := named_bundle% "RealMapCertificates/relations/basis2260.json"
theorem reductionProof2260 : EqualModuloRelations reduction2260.relations reduction2260.input reduction2260.output := by lin_cert using reduction2260.terms
theorem substitutionProof2260 : IsMapEvaluation generatorImages reduction2260.relations [0,0,295] reduction2260.output := by lin_cert using reduction2260.terms
def map_42_129 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2317 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2317 : InImage map_42_129 image2317 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2317 : Bundle := named_bundle% "RealMapCertificates/relations/basis2317.json"
theorem reductionProof2317 : EqualModuloRelations reduction2317.relations reduction2317.input reduction2317.output := by lin_cert using reduction2317.terms
theorem substitutionProof2317 : IsMapEvaluation generatorImages reduction2317.relations [0,0,0,296] reduction2317.output := by lin_cert using reduction2317.terms
def map_42_130 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image2384 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation2384 : InImage map_42_130 image2384 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2384 : Bundle := named_bundle% "RealMapCertificates/relations/basis2384.json"
theorem reductionProof2384 : EqualModuloRelations reduction2384.relations reduction2384.input reduction2384.output := by lin_cert using reduction2384.terms
theorem substitutionProof2384 : IsMapEvaluation generatorImages reduction2384.relations [1,1,295] reduction2384.output := by lin_cert using reduction2384.terms
def map_42_131 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2444 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2444 : InImage map_42_131 image2444 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2444 : Bundle := named_bundle% "RealMapCertificates/relations/basis2444.json"
theorem reductionProof2444 : EqualModuloRelations reduction2444.relations reduction2444.input reduction2444.output := by lin_cert using reduction2444.terms
theorem substitutionProof2444 : IsMapEvaluation generatorImages reduction2444.relations [0,0,325] reduction2444.output := by lin_cert using reduction2444.terms
def map_42_134 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2640 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2640 : InImage map_42_134 image2640 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2640 : Bundle := named_bundle% "RealMapCertificates/relations/basis2640.json"
theorem reductionProof2640 : EqualModuloRelations reduction2640.relations reduction2640.input reduction2640.output := by lin_cert using reduction2640.terms
theorem substitutionProof2640 : IsMapEvaluation generatorImages reduction2640.relations [0,0,8,236] reduction2640.output := by lin_cert using reduction2640.terms
def map_42_136 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2807 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2807 : InImage map_42_136 image2807 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2807 : Bundle := named_bundle% "RealMapCertificates/relations/basis2807.json"
theorem reductionProof2807 : EqualModuloRelations reduction2807.relations reduction2807.input reduction2807.output := by lin_cert using reduction2807.terms
theorem substitutionProof2807 : IsMapEvaluation generatorImages reduction2807.relations [0,0,0,0,17,183] reduction2807.output := by lin_cert using reduction2807.terms
def map_42_137 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image2875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2875 : InImage map_42_137 image2875 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction2875 : Bundle := named_bundle% "RealMapCertificates/relations/basis2875.json"
theorem reductionProof2875 : EqualModuloRelations reduction2875.relations reduction2875.input reduction2875.output := by lin_cert using reduction2875.terms
theorem substitutionProof2875 : IsMapEvaluation generatorImages reduction2875.relations [0,0,8,252] reduction2875.output := by lin_cert using reduction2875.terms
def image2876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2876 : InImage map_42_137 image2876 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction2876 : Bundle := named_bundle% "RealMapCertificates/relations/basis2876.json"
theorem reductionProof2876 : EqualModuloRelations reduction2876.relations reduction2876.input reduction2876.output := by lin_cert using reduction2876.terms
theorem substitutionProof2876 : IsMapEvaluation generatorImages reduction2876.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2876.output := by lin_cert using reduction2876.terms
def map_42_140 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3112 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3112 : InImage map_42_140 image3112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3112 : Bundle := named_bundle% "RealMapCertificates/relations/basis3112.json"
theorem reductionProof3112 : EqualModuloRelations reduction3112.relations reduction3112.input reduction3112.output := by lin_cert using reduction3112.terms
theorem substitutionProof3112 : IsMapEvaluation generatorImages reduction3112.relations [0,0,8,8,182] reduction3112.output := by lin_cert using reduction3112.terms
def map_42_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3366 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3366 : InImage map_42_143 image3366 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3366 : Bundle := named_bundle% "RealMapCertificates/relations/basis3366.json"
theorem reductionProof3366 : EqualModuloRelations reduction3366.relations reduction3366.input reduction3366.output := by lin_cert using reduction3366.terms
theorem substitutionProof3366 : IsMapEvaluation generatorImages reduction3366.relations [0,0,0,0,0,0,0,0,402] reduction3366.output := by lin_cert using reduction3366.terms
def map_42_146 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image3605 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation3605 : InImage map_42_146 image3605 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3605 : Bundle := named_bundle% "RealMapCertificates/relations/basis3605.json"
theorem reductionProof3605 : EqualModuloRelations reduction3605.relations reduction3605.input reduction3605.output := by lin_cert using reduction3605.terms
theorem substitutionProof3605 : IsMapEvaluation generatorImages reduction3605.relations [1,498] reduction3605.output := by lin_cert using reduction3605.terms
def map_42_147 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3701 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3701 : InImage map_42_147 image3701 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3701 : Bundle := named_bundle% "RealMapCertificates/relations/basis3701.json"
theorem reductionProof3701 : EqualModuloRelations reduction3701.relations reduction3701.input reduction3701.output := by lin_cert using reduction3701.terms
theorem substitutionProof3701 : IsMapEvaluation generatorImages reduction3701.relations [17,253] reduction3701.output := by lin_cert using reduction3701.terms
def map_42_150 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3955 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3955 : InImage map_42_150 image3955 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3955 : Bundle := named_bundle% "RealMapCertificates/relations/basis3955.json"
theorem reductionProof3955 : EqualModuloRelations reduction3955.relations reduction3955.input reduction3955.output := by lin_cert using reduction3955.terms
theorem substitutionProof3955 : IsMapEvaluation generatorImages reduction3955.relations [8,17,183] reduction3955.output := by lin_cert using reduction3955.terms
def map_42_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4237 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4237 : InImage map_42_153 image4237 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4237 : Bundle := named_bundle% "RealMapCertificates/relations/basis4237.json"
theorem reductionProof4237 : EqualModuloRelations reduction4237.relations reduction4237.input reduction4237.output := by lin_cert using reduction4237.terms
theorem substitutionProof4237 : IsMapEvaluation generatorImages reduction4237.relations [8,17,200] reduction4237.output := by lin_cert using reduction4237.terms
def map_42_156 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image4479 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation4479 : InImage map_42_156 image4479 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4479 : Bundle := named_bundle% "RealMapCertificates/relations/basis4479.json"
theorem reductionProof4479 : EqualModuloRelations reduction4479.relations reduction4479.input reduction4479.output := by lin_cert using reduction4479.terms
theorem substitutionProof4479 : IsMapEvaluation generatorImages reduction4479.relations [8,16,17,111] reduction4479.output := by lin_cert using reduction4479.terms
def map_42_159 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image4748 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4748 : InImage map_42_159 image4748 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4748 : Bundle := named_bundle% "RealMapCertificates/relations/basis4748.json"
theorem reductionProof4748 : EqualModuloRelations reduction4748.relations reduction4748.input reduction4748.output := by lin_cert using reduction4748.terms
theorem substitutionProof4748 : IsMapEvaluation generatorImages reduction4748.relations [635] reduction4748.output := by lin_cert using reduction4748.terms
def image4749 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4749 : InImage map_42_159 image4749 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4749 : Bundle := named_bundle% "RealMapCertificates/relations/basis4749.json"
theorem reductionProof4749 : EqualModuloRelations reduction4749.relations reduction4749.input reduction4749.output := by lin_cert using reduction4749.terms
theorem substitutionProof4749 : IsMapEvaluation generatorImages reduction4749.relations [8,8,17,153] reduction4749.output := by lin_cert using reduction4749.terms
def map_42_160 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4847 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4847 : InImage map_42_160 image4847 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4847 : Bundle := named_bundle% "RealMapCertificates/relations/basis4847.json"
theorem reductionProof4847 : EqualModuloRelations reduction4847.relations reduction4847.input reduction4847.output := by lin_cert using reduction4847.terms
theorem substitutionProof4847 : IsMapEvaluation generatorImages reduction4847.relations [0,636] reduction4847.output := by lin_cert using reduction4847.terms
def map_42_162 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5019 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5019 : InImage map_42_162 image5019 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5019 : Bundle := named_bundle% "RealMapCertificates/relations/basis5019.json"
theorem reductionProof5019 : EqualModuloRelations reduction5019.relations reduction5019.input reduction5019.output := by lin_cert using reduction5019.terms
theorem substitutionProof5019 : IsMapEvaluation generatorImages reduction5019.relations [662] reduction5019.output := by lin_cert using reduction5019.terms
def image5020 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5020 : InImage map_42_162 image5020 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5020 : Bundle := named_bundle% "RealMapCertificates/relations/basis5020.json"
theorem reductionProof5020 : EqualModuloRelations reduction5020.relations reduction5020.input reduction5020.output := by lin_cert using reduction5020.terms
theorem substitutionProof5020 : IsMapEvaluation generatorImages reduction5020.relations [8,8,8,17,111] reduction5020.output := by lin_cert using reduction5020.terms
def map_42_163 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5141 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5141 : InImage map_42_163 image5141 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5141 : Bundle := named_bundle% "RealMapCertificates/relations/basis5141.json"
theorem reductionProof5141 : EqualModuloRelations reduction5141.relations reduction5141.input reduction5141.output := by lin_cert using reduction5141.terms
theorem substitutionProof5141 : IsMapEvaluation generatorImages reduction5141.relations [0,663] reduction5141.output := by lin_cert using reduction5141.terms
def map_42_165 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5321 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5321 : InImage map_42_165 image5321 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5321 : Bundle := named_bundle% "RealMapCertificates/relations/basis5321.json"
theorem reductionProof5321 : EqualModuloRelations reduction5321.relations reduction5321.input reduction5321.output := by lin_cert using reduction5321.terms
theorem substitutionProof5321 : IsMapEvaluation generatorImages reduction5321.relations [16,402] reduction5321.output := by lin_cert using reduction5321.terms
def image5322 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5322 : InImage map_42_165 image5322 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5322 : Bundle := named_bundle% "RealMapCertificates/relations/basis5322.json"
theorem reductionProof5322 : EqualModuloRelations reduction5322.relations reduction5322.input reduction5322.output := by lin_cert using reduction5322.terms
theorem substitutionProof5322 : IsMapEvaluation generatorImages reduction5322.relations [8,8,8,17,117] reduction5322.output := by lin_cert using reduction5322.terms
def map_42_166 : Matrix 3 2 := fun i j => ([true,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5439 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5439 : InImage map_42_166 image5439 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5439 : Bundle := named_bundle% "RealMapCertificates/relations/basis5439.json"
theorem reductionProof5439 : EqualModuloRelations reduction5439.relations reduction5439.input reduction5439.output := by lin_cert using reduction5439.terms
theorem substitutionProof5439 : IsMapEvaluation generatorImages reduction5439.relations [0,16,403] reduction5439.output := by lin_cert using reduction5439.terms
def image5440 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation5440 : InImage map_42_166 image5440 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5440 : Bundle := named_bundle% "RealMapCertificates/relations/basis5440.json"
theorem reductionProof5440 : EqualModuloRelations reduction5440.relations reduction5440.input reduction5440.output := by lin_cert using reduction5440.terms
theorem substitutionProof5440 : IsMapEvaluation generatorImages reduction5440.relations [0,0,685] reduction5440.output := by lin_cert using reduction5440.terms
def map_42_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5540 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5540 : InImage map_42_167 image5540 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5540 : Bundle := named_bundle% "RealMapCertificates/relations/basis5540.json"
theorem reductionProof5540 : EqualModuloRelations reduction5540.relations reduction5540.input reduction5540.output := by lin_cert using reduction5540.terms
theorem substitutionProof5540 : IsMapEvaluation generatorImages reduction5540.relations [0,0,17,403] reduction5540.output := by lin_cert using reduction5540.terms
def map_42_168 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image5637 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5637 : InImage map_42_168 image5637 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction5637 : Bundle := named_bundle% "RealMapCertificates/relations/basis5637.json"
theorem reductionProof5637 : EqualModuloRelations reduction5637.relations reduction5637.input reduction5637.output := by lin_cert using reduction5637.terms
theorem substitutionProof5637 : IsMapEvaluation generatorImages reduction5637.relations [8,555] reduction5637.output := by lin_cert using reduction5637.terms
def image5638 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5638 : InImage map_42_168 image5638 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction5638 : Bundle := named_bundle% "RealMapCertificates/relations/basis5638.json"
theorem reductionProof5638 : EqualModuloRelations reduction5638.relations reduction5638.input reduction5638.output := by lin_cert using reduction5638.terms
theorem substitutionProof5638 : IsMapEvaluation generatorImages reduction5638.relations [8,8,8,16,17,50] reduction5638.output := by lin_cert using reduction5638.terms
def image5639 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5639 : InImage map_42_168 image5639 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction5639 : Bundle := named_bundle% "RealMapCertificates/relations/basis5639.json"
theorem reductionProof5639 : EqualModuloRelations reduction5639.relations reduction5639.input reduction5639.output := by lin_cert using reduction5639.terms
theorem substitutionProof5639 : IsMapEvaluation generatorImages reduction5639.relations [1,1,685] reduction5639.output := by lin_cert using reduction5639.terms
def image5640 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5640 : InImage map_42_168 image5640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction5640 : Bundle := named_bundle% "RealMapCertificates/relations/basis5640.json"
theorem reductionProof5640 : EqualModuloRelations reduction5640.relations reduction5640.input reduction5640.output := by lin_cert using reduction5640.terms
theorem substitutionProof5640 : IsMapEvaluation generatorImages reduction5640.relations [0,0,0,0,686] reduction5640.output := by lin_cert using reduction5640.terms
def map_42_169 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image5775 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5775 : InImage map_42_169 image5775 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5775 : Bundle := named_bundle% "RealMapCertificates/relations/basis5775.json"
theorem reductionProof5775 : EqualModuloRelations reduction5775.relations reduction5775.input reduction5775.output := by lin_cert using reduction5775.terms
theorem substitutionProof5775 : IsMapEvaluation generatorImages reduction5775.relations [0,8,556] reduction5775.output := by lin_cert using reduction5775.terms
def image5776 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5776 : InImage map_42_169 image5776 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5776 : Bundle := named_bundle% "RealMapCertificates/relations/basis5776.json"
theorem reductionProof5776 : EqualModuloRelations reduction5776.relations reduction5776.input reduction5776.output := by lin_cert using reduction5776.terms
theorem substitutionProof5776 : IsMapEvaluation generatorImages reduction5776.relations [0,0,722] reduction5776.output := by lin_cert using reduction5776.terms
def image5777 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5777 : InImage map_42_169 image5777 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5777 : Bundle := named_bundle% "RealMapCertificates/relations/basis5777.json"
theorem reductionProof5777 : EqualModuloRelations reduction5777.relations reduction5777.input reduction5777.output := by lin_cert using reduction5777.terms
theorem substitutionProof5777 : IsMapEvaluation generatorImages reduction5777.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5777.output := by lin_cert using reduction5777.terms
def map_42_171 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image5983 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5983 : InImage map_42_171 image5983 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5983 : Bundle := named_bundle% "RealMapCertificates/relations/basis5983.json"
theorem reductionProof5983 : EqualModuloRelations reduction5983.relations reduction5983.input reduction5983.output := by lin_cert using reduction5983.terms
theorem substitutionProof5983 : IsMapEvaluation generatorImages reduction5983.relations [8,8,402] reduction5983.output := by lin_cert using reduction5983.terms
def image5984 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5984 : InImage map_42_171 image5984 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5984 : Bundle := named_bundle% "RealMapCertificates/relations/basis5984.json"
theorem reductionProof5984 : EqualModuloRelations reduction5984.relations reduction5984.input reduction5984.output := by lin_cert using reduction5984.terms
theorem substitutionProof5984 : IsMapEvaluation generatorImages reduction5984.relations [8,8,8,8,17,78] reduction5984.output := by lin_cert using reduction5984.terms
def map_42_172 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image6113 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6113 : InImage map_42_172 image6113 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6113 : Bundle := named_bundle% "RealMapCertificates/relations/basis6113.json"
theorem reductionProof6113 : EqualModuloRelations reduction6113.relations reduction6113.input reduction6113.output := by lin_cert using reduction6113.terms
theorem substitutionProof6113 : IsMapEvaluation generatorImages reduction6113.relations [0,8,8,403] reduction6113.output := by lin_cert using reduction6113.terms
def image6114 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6114 : InImage map_42_172 image6114 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6114 : Bundle := named_bundle% "RealMapCertificates/relations/basis6114.json"
theorem reductionProof6114 : EqualModuloRelations reduction6114.relations reduction6114.input reduction6114.output := by lin_cert using reduction6114.terms
theorem substitutionProof6114 : IsMapEvaluation generatorImages reduction6114.relations [0,0,16,452] reduction6114.output := by lin_cert using reduction6114.terms
def map_42_173 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6203 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6203 : InImage map_42_173 image6203 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6203 : Bundle := named_bundle% "RealMapCertificates/relations/basis6203.json"
theorem reductionProof6203 : EqualModuloRelations reduction6203.relations reduction6203.input reduction6203.output := by lin_cert using reduction6203.terms
theorem substitutionProof6203 : IsMapEvaluation generatorImages reduction6203.relations [0,0,0,17,452] reduction6203.output := by lin_cert using reduction6203.terms
def map_42_174 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image6308 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6308 : InImage map_42_174 image6308 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction6308 : Bundle := named_bundle% "RealMapCertificates/relations/basis6308.json"
theorem reductionProof6308 : EqualModuloRelations reduction6308.relations reduction6308.input reduction6308.output := by lin_cert using reduction6308.terms
theorem substitutionProof6308 : IsMapEvaluation generatorImages reduction6308.relations [8,8,432] reduction6308.output := by lin_cert using reduction6308.terms
def image6309 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation6309 : InImage map_42_174 image6309 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction6309 : Bundle := named_bundle% "RealMapCertificates/relations/basis6309.json"
theorem reductionProof6309 : EqualModuloRelations reduction6309.relations reduction6309.input reduction6309.output := by lin_cert using reduction6309.terms
theorem substitutionProof6309 : IsMapEvaluation generatorImages reduction6309.relations [8,8,8,8,8,17,50] reduction6309.output := by lin_cert using reduction6309.terms
def image6310 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6310 : InImage map_42_174 image6310 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction6310 : Bundle := named_bundle% "RealMapCertificates/relations/basis6310.json"
theorem reductionProof6310 : EqualModuloRelations reduction6310.relations reduction6310.input reduction6310.output := by lin_cert using reduction6310.terms
theorem substitutionProof6310 : IsMapEvaluation generatorImages reduction6310.relations [0,0,0,17,17,225] reduction6310.output := by lin_cert using reduction6310.terms
def map_42_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6453 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6453 : InImage map_42_175 image6453 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6453 : Bundle := named_bundle% "RealMapCertificates/relations/basis6453.json"
theorem reductionProof6453 : EqualModuloRelations reduction6453.relations reduction6453.input reduction6453.output := by lin_cert using reduction6453.terms
theorem substitutionProof6453 : IsMapEvaluation generatorImages reduction6453.relations [0,8,8,433] reduction6453.output := by lin_cert using reduction6453.terms
def image6454 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6454 : InImage map_42_175 image6454 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6454 : Bundle := named_bundle% "RealMapCertificates/relations/basis6454.json"
theorem reductionProof6454 : EqualModuloRelations reduction6454.relations reduction6454.input reduction6454.output := by lin_cert using reduction6454.terms
theorem substitutionProof6454 : IsMapEvaluation generatorImages reduction6454.relations [0,0,0,0,0,0,0,0,725] reduction6454.output := by lin_cert using reduction6454.terms
def map_42_177 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6666 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6666 : InImage map_42_177 image6666 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6666 : Bundle := named_bundle% "RealMapCertificates/relations/basis6666.json"
theorem reductionProof6666 : EqualModuloRelations reduction6666.relations reduction6666.input reduction6666.output := by lin_cert using reduction6666.terms
theorem substitutionProof6666 : IsMapEvaluation generatorImages reduction6666.relations [8,8,16,224] reduction6666.output := by lin_cert using reduction6666.terms
def image6667 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6667 : InImage map_42_177 image6667 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6667 : Bundle := named_bundle% "RealMapCertificates/relations/basis6667.json"
theorem reductionProof6667 : EqualModuloRelations reduction6667.relations reduction6667.input reduction6667.output := by lin_cert using reduction6667.terms
theorem substitutionProof6667 : IsMapEvaluation generatorImages reduction6667.relations [8,8,8,8,8,17,56] reduction6667.output := by lin_cert using reduction6667.terms
def map_42_178 : Matrix 2 2 := fun i j => ([false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6793 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6793 : InImage map_42_178 image6793 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6793 : Bundle := named_bundle% "RealMapCertificates/relations/basis6793.json"
theorem reductionProof6793 : EqualModuloRelations reduction6793.relations reduction6793.input reduction6793.output := by lin_cert using reduction6793.terms
theorem substitutionProof6793 : IsMapEvaluation generatorImages reduction6793.relations [1,829] reduction6793.output := by lin_cert using reduction6793.terms
def image6794 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6794 : InImage map_42_178 image6794 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6794 : Bundle := named_bundle% "RealMapCertificates/relations/basis6794.json"
theorem reductionProof6794 : EqualModuloRelations reduction6794.relations reduction6794.input reduction6794.output := by lin_cert using reduction6794.terms
theorem substitutionProof6794 : IsMapEvaluation generatorImages reduction6794.relations [0,8,8,16,225] reduction6794.output := by lin_cert using reduction6794.terms
def map_42_179 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6899 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6899 : InImage map_42_179 image6899 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6899 : Bundle := named_bundle% "RealMapCertificates/relations/basis6899.json"
theorem reductionProof6899 : EqualModuloRelations reduction6899.relations reduction6899.input reduction6899.output := by lin_cert using reduction6899.terms
theorem substitutionProof6899 : IsMapEvaluation generatorImages reduction6899.relations [872] reduction6899.output := by lin_cert using reduction6899.terms
def map_42_180 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7027 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7027 : InImage map_42_180 image7027 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7027 : Bundle := named_bundle% "RealMapCertificates/relations/basis7027.json"
theorem reductionProof7027 : EqualModuloRelations reduction7027.relations reduction7027.input reduction7027.output := by lin_cert using reduction7027.terms
theorem substitutionProof7027 : IsMapEvaluation generatorImages reduction7027.relations [8,8,8,297] reduction7027.output := by lin_cert using reduction7027.terms
def image7028 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7028 : InImage map_42_180 image7028 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7028 : Bundle := named_bundle% "RealMapCertificates/relations/basis7028.json"
theorem reductionProof7028 : EqualModuloRelations reduction7028.relations reduction7028.input reduction7028.output := by lin_cert using reduction7028.terms
theorem substitutionProof7028 : IsMapEvaluation generatorImages reduction7028.relations [8,8,8,8,8,16,17,17] reduction7028.output := by lin_cert using reduction7028.terms
def image7029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7029 : InImage map_42_180 image7029 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7029 : Bundle := named_bundle% "RealMapCertificates/relations/basis7029.json"
theorem reductionProof7029 : EqualModuloRelations reduction7029.relations reduction7029.input reduction7029.output := by lin_cert using reduction7029.terms
theorem substitutionProof7029 : IsMapEvaluation generatorImages reduction7029.relations [0,0,0,0,0,0,64,224] reduction7029.output := by lin_cert using reduction7029.terms
def map_42_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7170 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7170 : InImage map_42_181 image7170 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7170 : Bundle := named_bundle% "RealMapCertificates/relations/basis7170.json"
theorem reductionProof7170 : EqualModuloRelations reduction7170.relations reduction7170.input reduction7170.output := by lin_cert using reduction7170.terms
theorem substitutionProof7170 : IsMapEvaluation generatorImages reduction7170.relations [0,0,0,0,0,0,0,64,225] reduction7170.output := by lin_cert using reduction7170.terms
def map_42_182 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image7256 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7256 : InImage map_42_182 image7256 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7256 : Bundle := named_bundle% "RealMapCertificates/relations/basis7256.json"
theorem reductionProof7256 : EqualModuloRelations reduction7256.relations reduction7256.input reduction7256.output := by lin_cert using reduction7256.terms
theorem substitutionProof7256 : IsMapEvaluation generatorImages reduction7256.relations [8,686] reduction7256.output := by lin_cert using reduction7256.terms
def map_42_183 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7392 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7392 : InImage map_42_183 image7392 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7392 : Bundle := named_bundle% "RealMapCertificates/relations/basis7392.json"
theorem reductionProof7392 : EqualModuloRelations reduction7392.relations reduction7392.input reduction7392.output := by lin_cert using reduction7392.terms
theorem substitutionProof7392 : IsMapEvaluation generatorImages reduction7392.relations [8,8,8,8,224] reduction7392.output := by lin_cert using reduction7392.terms
def image7393 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7393 : InImage map_42_183 image7393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7393 : Bundle := named_bundle% "RealMapCertificates/relations/basis7393.json"
theorem reductionProof7393 : EqualModuloRelations reduction7393.relations reduction7393.input reduction7393.output := by lin_cert using reduction7393.terms
theorem substitutionProof7393 : IsMapEvaluation generatorImages reduction7393.relations [8,8,8,8,8,8,17,40] reduction7393.output := by lin_cert using reduction7393.terms
def image7394 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7394 : InImage map_42_183 image7394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7394 : Bundle := named_bundle% "RealMapCertificates/relations/basis7394.json"
theorem reductionProof7394 : EqualModuloRelations reduction7394.relations reduction7394.input reduction7394.output := by lin_cert using reduction7394.terms
theorem substitutionProof7394 : IsMapEvaluation generatorImages reduction7394.relations [0,0,0,0,0,0,0,0,0,807] reduction7394.output := by lin_cert using reduction7394.terms
def map_42_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7524 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7524 : InImage map_42_184 image7524 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7524 : Bundle := named_bundle% "RealMapCertificates/relations/basis7524.json"
theorem reductionProof7524 : EqualModuloRelations reduction7524.relations reduction7524.input reduction7524.output := by lin_cert using reduction7524.terms
theorem substitutionProof7524 : IsMapEvaluation generatorImages reduction7524.relations [0,0,0,0,0,0,0,0,0,0,0,795] reduction7524.output := by lin_cert using reduction7524.terms
def map_42_185 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7622 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7622 : InImage map_42_185 image7622 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7622 : Bundle := named_bundle% "RealMapCertificates/relations/basis7622.json"
theorem reductionProof7622 : EqualModuloRelations reduction7622.relations reduction7622.input reduction7622.output := by lin_cert using reduction7622.terms
theorem substitutionProof7622 : IsMapEvaluation generatorImages reduction7622.relations [8,723] reduction7622.output := by lin_cert using reduction7622.terms
def map_42_186 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7754 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7754 : InImage map_42_186 image7754 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7754 : Bundle := named_bundle% "RealMapCertificates/relations/basis7754.json"
theorem reductionProof7754 : EqualModuloRelations reduction7754.relations reduction7754.input reduction7754.output := by lin_cert using reduction7754.terms
theorem substitutionProof7754 : IsMapEvaluation generatorImages reduction7754.relations [8,8,8,8,237] reduction7754.output := by lin_cert using reduction7754.terms
def image7755 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7755 : InImage map_42_186 image7755 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7755 : Bundle := named_bundle% "RealMapCertificates/relations/basis7755.json"
theorem reductionProof7755 : EqualModuloRelations reduction7755.relations reduction7755.input reduction7755.output := by lin_cert using reduction7755.terms
theorem substitutionProof7755 : IsMapEvaluation generatorImages reduction7755.relations [8,8,8,8,8,8,8,17,17] reduction7755.output := by lin_cert using reduction7755.terms
def map_42_188 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7961 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7961 : InImage map_42_188 image7961 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7961 : Bundle := named_bundle% "RealMapCertificates/relations/basis7961.json"
theorem reductionProof7961 : EqualModuloRelations reduction7961.relations reduction7961.input reduction7961.output := by lin_cert using reduction7961.terms
theorem substitutionProof7961 : IsMapEvaluation generatorImages reduction7961.relations [8,49,245] reduction7961.output := by lin_cert using reduction7961.terms
def map_42_189 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image8105 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8105 : InImage map_42_189 image8105 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8105 : Bundle := named_bundle% "RealMapCertificates/relations/basis8105.json"
theorem reductionProof8105 : EqualModuloRelations reduction8105.relations reduction8105.input reduction8105.output := by lin_cert using reduction8105.terms
theorem substitutionProof8105 : IsMapEvaluation generatorImages reduction8105.relations [8,8,8,8,16,137] reduction8105.output := by lin_cert using reduction8105.terms
def image8106 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8106 : InImage map_42_189 image8106 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8106 : Bundle := named_bundle% "RealMapCertificates/relations/basis8106.json"
theorem reductionProof8106 : EqualModuloRelations reduction8106.relations reduction8106.input reduction8106.output := by lin_cert using reduction8106.terms
theorem substitutionProof8106 : IsMapEvaluation generatorImages reduction8106.relations [8,8,8,8,8,8,8,17,20] reduction8106.output := by lin_cert using reduction8106.terms
def map_42_190 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image8233 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8233 : InImage map_42_190 image8233 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8233 : Bundle := named_bundle% "RealMapCertificates/relations/basis8233.json"
theorem reductionProof8233 : EqualModuloRelations reduction8233.relations reduction8233.input reduction8233.output := by lin_cert using reduction8233.terms
theorem substitutionProof8233 : IsMapEvaluation generatorImages reduction8233.relations [1,5,64,224] reduction8233.output := by lin_cert using reduction8233.terms
def map_42_191 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8344 : InImage map_42_191 image8344 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8344 : Bundle := named_bundle% "RealMapCertificates/relations/basis8344.json"
theorem reductionProof8344 : EqualModuloRelations reduction8344.relations reduction8344.input reduction8344.output := by lin_cert using reduction8344.terms
theorem substitutionProof8344 : IsMapEvaluation generatorImages reduction8344.relations [1033] reduction8344.output := by lin_cert using reduction8344.terms
def image8345 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8345 : InImage map_42_191 image8345 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8345 : Bundle := named_bundle% "RealMapCertificates/relations/basis8345.json"
theorem reductionProof8345 : EqualModuloRelations reduction8345.relations reduction8345.input reduction8345.output := by lin_cert using reduction8345.terms
theorem substitutionProof8345 : IsMapEvaluation generatorImages reduction8345.relations [8,8,596] reduction8345.output := by lin_cert using reduction8345.terms
def map_42_192 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image8478 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8478 : InImage map_42_192 image8478 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8478 : Bundle := named_bundle% "RealMapCertificates/relations/basis8478.json"
theorem reductionProof8478 : EqualModuloRelations reduction8478.relations reduction8478.input reduction8478.output := by lin_cert using reduction8478.terms
theorem substitutionProof8478 : IsMapEvaluation generatorImages reduction8478.relations [8,8,8,8,8,184] reduction8478.output := by lin_cert using reduction8478.terms
def image8479 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8479 : InImage map_42_192 image8479 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8479 : Bundle := named_bundle% "RealMapCertificates/relations/basis8479.json"
theorem reductionProof8479 : EqualModuloRelations reduction8479.relations reduction8479.input reduction8479.output := by lin_cert using reduction8479.terms
theorem substitutionProof8479 : IsMapEvaluation generatorImages reduction8479.relations [8,8,8,8,8,8,8,16,23] reduction8479.output := by lin_cert using reduction8479.terms
def map_42_194 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8719 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8719 : InImage map_42_194 image8719 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8719 : Bundle := named_bundle% "RealMapCertificates/relations/basis8719.json"
theorem reductionProof8719 : EqualModuloRelations reduction8719.relations reduction8719.input reduction8719.output := by lin_cert using reduction8719.terms
theorem substitutionProof8719 : IsMapEvaluation generatorImages reduction8719.relations [1076] reduction8719.output := by lin_cert using reduction8719.terms
def image8720 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8720 : InImage map_42_194 image8720 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8720 : Bundle := named_bundle% "RealMapCertificates/relations/basis8720.json"
theorem reductionProof8720 : EqualModuloRelations reduction8720.relations reduction8720.input reduction8720.output := by lin_cert using reduction8720.terms
theorem substitutionProof8720 : IsMapEvaluation generatorImages reduction8720.relations [8,8,31,245] reduction8720.output := by lin_cert using reduction8720.terms
def map_42_195 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image8882 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation8882 : InImage map_42_195 image8882 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8882 : Bundle := named_bundle% "RealMapCertificates/relations/basis8882.json"
theorem reductionProof8882 : EqualModuloRelations reduction8882.relations reduction8882.input reduction8882.output := by lin_cert using reduction8882.terms
theorem substitutionProof8882 : IsMapEvaluation generatorImages reduction8882.relations [1093] reduction8882.output := by lin_cert using reduction8882.terms
def image8883 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation8883 : InImage map_42_195 image8883 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8883 : Bundle := named_bundle% "RealMapCertificates/relations/basis8883.json"
theorem reductionProof8883 : EqualModuloRelations reduction8883.relations reduction8883.input reduction8883.output := by lin_cert using reduction8883.terms
theorem substitutionProof8883 : IsMapEvaluation generatorImages reduction8883.relations [8,8,8,8,8,8,137] reduction8883.output := by lin_cert using reduction8883.terms
def image8884 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8884 : InImage map_42_195 image8884 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8884 : Bundle := named_bundle% "RealMapCertificates/relations/basis8884.json"
theorem reductionProof8884 : EqualModuloRelations reduction8884.relations reduction8884.input reduction8884.output := by lin_cert using reduction8884.terms
theorem substitutionProof8884 : IsMapEvaluation generatorImages reduction8884.relations [8,8,8,8,8,8,8,8,45] reduction8884.output := by lin_cert using reduction8884.terms
def map_42_197 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9147 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9147 : InImage map_42_197 image9147 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9147 : Bundle := named_bundle% "RealMapCertificates/relations/basis9147.json"
theorem reductionProof9147 : EqualModuloRelations reduction9147.relations reduction9147.input reduction9147.output := by lin_cert using reduction9147.terms
theorem substitutionProof9147 : IsMapEvaluation generatorImages reduction9147.relations [16,725] reduction9147.output := by lin_cert using reduction9147.terms
def image9148 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9148 : InImage map_42_197 image9148 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9148 : Bundle := named_bundle% "RealMapCertificates/relations/basis9148.json"
theorem reductionProof9148 : EqualModuloRelations reduction9148.relations reduction9148.input reduction9148.output := by lin_cert using reduction9148.terms
theorem substitutionProof9148 : IsMapEvaluation generatorImages reduction9148.relations [8,8,8,489] reduction9148.output := by lin_cert using reduction9148.terms
def map_42_198 : Matrix 4 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image9320 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation9320 : InImage map_42_198 image9320 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9320 : Bundle := named_bundle% "RealMapCertificates/relations/basis9320.json"
theorem reductionProof9320 : EqualModuloRelations reduction9320.relations reduction9320.input reduction9320.output := by lin_cert using reduction9320.terms
theorem substitutionProof9320 : IsMapEvaluation generatorImages reduction9320.relations [138,225] reduction9320.output := by lin_cert using reduction9320.terms
def image9321 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9321 : InImage map_42_198 image9321 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9321 : Bundle := named_bundle% "RealMapCertificates/relations/basis9321.json"
theorem reductionProof9321 : EqualModuloRelations reduction9321.relations reduction9321.input reduction9321.output := by lin_cert using reduction9321.terms
theorem substitutionProof9321 : IsMapEvaluation generatorImages reduction9321.relations [8,8,8,8,8,8,146] reduction9321.output := by lin_cert using reduction9321.terms
def image9322 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9322 : InImage map_42_198 image9322 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9322 : Bundle := named_bundle% "RealMapCertificates/relations/basis9322.json"
theorem reductionProof9322 : EqualModuloRelations reduction9322.relations reduction9322.input reduction9322.output := by lin_cert using reduction9322.terms
theorem substitutionProof9322 : IsMapEvaluation generatorImages reduction9322.relations [8,8,8,8,8,8,8,8,8,23] reduction9322.output := by lin_cert using reduction9322.terms
def image9323 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9323 : InImage map_42_198 image9323 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9323 : Bundle := named_bundle% "RealMapCertificates/relations/basis9323.json"
theorem reductionProof9323 : EqualModuloRelations reduction9323.relations reduction9323.input reduction9323.output := by lin_cert using reduction9323.terms
theorem substitutionProof9323 : IsMapEvaluation generatorImages reduction9323.relations [0,17,725] reduction9323.output := by lin_cert using reduction9323.terms
def map_42_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9488 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9488 : InImage map_42_199 image9488 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9488 : Bundle := named_bundle% "RealMapCertificates/relations/basis9488.json"
theorem reductionProof9488 : EqualModuloRelations reduction9488.relations reduction9488.input reduction9488.output := by lin_cert using reduction9488.terms
theorem substitutionProof9488 : IsMapEvaluation generatorImages reduction9488.relations [0,1143] reduction9488.output := by lin_cert using reduction9488.terms
def map_42_200 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image9612 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9612 : InImage map_42_200 image9612 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9612 : Bundle := named_bundle% "RealMapCertificates/relations/basis9612.json"
theorem reductionProof9612 : EqualModuloRelations reduction9612.relations reduction9612.input reduction9612.output := by lin_cert using reduction9612.terms
theorem substitutionProof9612 : IsMapEvaluation generatorImages reduction9612.relations [8,896] reduction9612.output := by lin_cert using reduction9612.terms
def image9613 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9613 : InImage map_42_200 image9613 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9613 : Bundle := named_bundle% "RealMapCertificates/relations/basis9613.json"
theorem reductionProof9613 : EqualModuloRelations reduction9613.relations reduction9613.input reduction9613.output := by lin_cert using reduction9613.terms
theorem substitutionProof9613 : IsMapEvaluation generatorImages reduction9613.relations [8,8,8,16,245] reduction9613.output := by lin_cert using reduction9613.terms
def image9614 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9614 : InImage map_42_200 image9614 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9614 : Bundle := named_bundle% "RealMapCertificates/relations/basis9614.json"
theorem reductionProof9614 : EqualModuloRelations reduction9614.relations reduction9614.input reduction9614.output := by lin_cert using reduction9614.terms
theorem substitutionProof9614 : IsMapEvaluation generatorImages reduction9614.relations [1,1143] reduction9614.output := by lin_cert using reduction9614.terms
def map_42_201 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9811 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9811 : InImage map_42_201 image9811 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9811 : Bundle := named_bundle% "RealMapCertificates/relations/basis9811.json"
theorem reductionProof9811 : EqualModuloRelations reduction9811.relations reduction9811.input reduction9811.output := by lin_cert using reduction9811.terms
theorem substitutionProof9811 : IsMapEvaluation generatorImages reduction9811.relations [8,918] reduction9811.output := by lin_cert using reduction9811.terms
def image9812 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9812 : InImage map_42_201 image9812 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9812 : Bundle := named_bundle% "RealMapCertificates/relations/basis9812.json"
theorem reductionProof9812 : EqualModuloRelations reduction9812.relations reduction9812.input reduction9812.output := by lin_cert using reduction9812.terms
theorem substitutionProof9812 : IsMapEvaluation generatorImages reduction9812.relations [8,8,8,8,8,8,16,64] reduction9812.output := by lin_cert using reduction9812.terms
def image9813 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9813 : InImage map_42_201 image9813 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9813 : Bundle := named_bundle% "RealMapCertificates/relations/basis9813.json"
theorem reductionProof9813 : EqualModuloRelations reduction9813.relations reduction9813.input reduction9813.output := by lin_cert using reduction9813.terms
theorem substitutionProof9813 : IsMapEvaluation generatorImages reduction9813.relations [8,8,8,8,8,8,8,8,9,23] reduction9813.output := by lin_cert using reduction9813.terms
def image9814 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9814 : InImage map_42_201 image9814 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9814 : Bundle := named_bundle% "RealMapCertificates/relations/basis9814.json"
theorem reductionProof9814 : EqualModuloRelations reduction9814.relations reduction9814.input reduction9814.output := by lin_cert using reduction9814.terms
theorem substitutionProof9814 : IsMapEvaluation generatorImages reduction9814.relations [0,17,759] reduction9814.output := by lin_cert using reduction9814.terms
def map_42_203 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image10105 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10105 : InImage map_42_203 image10105 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10105 : Bundle := named_bundle% "RealMapCertificates/relations/basis10105.json"
theorem reductionProof10105 : EqualModuloRelations reduction10105.relations reduction10105.input reduction10105.output := by lin_cert using reduction10105.terms
theorem substitutionProof10105 : IsMapEvaluation generatorImages reduction10105.relations [64,452] reduction10105.output := by lin_cert using reduction10105.terms
def image10106 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10106 : InImage map_42_203 image10106 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10106 : Bundle := named_bundle% "RealMapCertificates/relations/basis10106.json"
theorem reductionProof10106 : EqualModuloRelations reduction10106.relations reduction10106.input reduction10106.output := by lin_cert using reduction10106.terms
theorem substitutionProof10106 : IsMapEvaluation generatorImages reduction10106.relations [8,8,725] reduction10106.output := by lin_cert using reduction10106.terms
def image10107 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10107 : InImage map_42_203 image10107 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10107 : Bundle := named_bundle% "RealMapCertificates/relations/basis10107.json"
theorem reductionProof10107 : EqualModuloRelations reduction10107.relations reduction10107.input reduction10107.output := by lin_cert using reduction10107.terms
theorem substitutionProof10107 : IsMapEvaluation generatorImages reduction10107.relations [8,8,8,8,344] reduction10107.output := by lin_cert using reduction10107.terms
def map_42_204 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10304 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10304 : InImage map_42_204 image10304 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10304 : Bundle := named_bundle% "RealMapCertificates/relations/basis10304.json"
theorem reductionProof10304 : EqualModuloRelations reduction10304.relations reduction10304.input reduction10304.output := by lin_cert using reduction10304.terms
theorem substitutionProof10304 : IsMapEvaluation generatorImages reduction10304.relations [8,954] reduction10304.output := by lin_cert using reduction10304.terms
def image10305 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10305 : InImage map_42_204 image10305 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10305 : Bundle := named_bundle% "RealMapCertificates/relations/basis10305.json"
theorem reductionProof10305 : EqualModuloRelations reduction10305.relations reduction10305.input reduction10305.output := by lin_cert using reduction10305.terms
theorem substitutionProof10305 : IsMapEvaluation generatorImages reduction10305.relations [8,8,8,8,8,8,8,112] reduction10305.output := by lin_cert using reduction10305.terms
def image10306 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10306 : InImage map_42_204 image10306 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10306 : Bundle := named_bundle% "RealMapCertificates/relations/basis10306.json"
theorem reductionProof10306 : EqualModuloRelations reduction10306.relations reduction10306.input reduction10306.output := by lin_cert using reduction10306.terms
theorem substitutionProof10306 : IsMapEvaluation generatorImages reduction10306.relations [8,8,8,8,8,8,8,8,13,23] reduction10306.output := by lin_cert using reduction10306.terms
def image10307 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10307 : InImage map_42_204 image10307 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10307 : Bundle := named_bundle% "RealMapCertificates/relations/basis10307.json"
theorem reductionProof10307 : EqualModuloRelations reduction10307.relations reduction10307.input reduction10307.output := by lin_cert using reduction10307.terms
theorem substitutionProof10307 : IsMapEvaluation generatorImages reduction10307.relations [0,138,244] reduction10307.output := by lin_cert using reduction10307.terms
def image10308 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10308 : InImage map_42_204 image10308 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10308 : Bundle := named_bundle% "RealMapCertificates/relations/basis10308.json"
theorem reductionProof10308 : EqualModuloRelations reduction10308.relations reduction10308.input reduction10308.output := by lin_cert using reduction10308.terms
theorem substitutionProof10308 : IsMapEvaluation generatorImages reduction10308.relations [0,16,17,491] reduction10308.output := by lin_cert using reduction10308.terms
def map_42_205 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image10488 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10488 : InImage map_42_205 image10488 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10488 : Bundle := named_bundle% "RealMapCertificates/relations/basis10488.json"
theorem reductionProof10488 : EqualModuloRelations reduction10488.relations reduction10488.input reduction10488.output := by lin_cert using reduction10488.terms
theorem substitutionProof10488 : IsMapEvaluation generatorImages reduction10488.relations [0,0,17,17,491] reduction10488.output := by lin_cert using reduction10488.terms
def map_42_206 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image10632 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10632 : InImage map_42_206 image10632 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10632 : Bundle := named_bundle% "RealMapCertificates/relations/basis10632.json"
theorem reductionProof10632 : EqualModuloRelations reduction10632.relations reduction10632.input reduction10632.output := by lin_cert using reduction10632.terms
theorem substitutionProof10632 : IsMapEvaluation generatorImages reduction10632.relations [64,488] reduction10632.output := by lin_cert using reduction10632.terms
def image10633 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10633 : InImage map_42_206 image10633 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10633 : Bundle := named_bundle% "RealMapCertificates/relations/basis10633.json"
theorem reductionProof10633 : EqualModuloRelations reduction10633.relations reduction10633.input reduction10633.output := by lin_cert using reduction10633.terms
theorem substitutionProof10633 : IsMapEvaluation generatorImages reduction10633.relations [8,8,759] reduction10633.output := by lin_cert using reduction10633.terms
def image10634 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10634 : InImage map_42_206 image10634 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10634 : Bundle := named_bundle% "RealMapCertificates/relations/basis10634.json"
theorem reductionProof10634 : EqualModuloRelations reduction10634.relations reduction10634.input reduction10634.output := by lin_cert using reduction10634.terms
theorem substitutionProof10634 : IsMapEvaluation generatorImages reduction10634.relations [8,8,8,8,8,245] reduction10634.output := by lin_cert using reduction10634.terms
def image10635 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10635 : InImage map_42_206 image10635 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10635 : Bundle := named_bundle% "RealMapCertificates/relations/basis10635.json"
theorem reductionProof10635 : EqualModuloRelations reduction10635.relations reduction10635.input reduction10635.output := by lin_cert using reduction10635.terms
theorem substitutionProof10635 : IsMapEvaluation generatorImages reduction10635.relations [0,0,0,137,246] reduction10635.output := by lin_cert using reduction10635.terms
def image10636 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10636 : InImage map_42_206 image10636 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10636 : Bundle := named_bundle% "RealMapCertificates/relations/basis10636.json"
theorem reductionProof10636 : EqualModuloRelations reduction10636.relations reduction10636.input reduction10636.output := by lin_cert using reduction10636.terms
theorem substitutionProof10636 : IsMapEvaluation generatorImages reduction10636.relations [0,0,0,59,491] reduction10636.output := by lin_cert using reduction10636.terms
end RealMapCertificates
