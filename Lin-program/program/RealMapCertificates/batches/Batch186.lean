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
  | 79 => []
  | 89 => []
  | 101 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 184 => []
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 233 => [[5,7,9,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 248 => [[7,7,9,12]]
  | 255 => []
  | 257 => [[4,4,6,8,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 278 => []
  | 291 => []
  | 316 => []
  | 343 => [[4,4,4,6,8,12]]
  | 347 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 434 => [[0,0,9,12,12]]
  | 471 => []
  | 491 => []
  | 499 => []
  | 509 => []
  | 516 => []
  | 517 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 889 => [[4,5,7,9,12,12]]
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1102 => [[4,4,7,7,9,12,12]]
  | 1218 => []
  | 1287 => [[4,4,4,5,7,9,12,12]]
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1438 => [[4,4,4,4,7,7,7,12,12]]
  | 1500 => [[4,4,4,4,5,7,9,12,12]]
  | 1551 => [[4,4,4,4,7,7,9,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 1831 => [[4,4,6,9,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | _ => []
def map_42_207 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image10860 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10860 : InImage map_42_207 image10860 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10860 : Bundle := named_bundle% "RealMapCertificates/relations/basis10860.json"
theorem reductionProof10860 : EqualModuloRelations reduction10860.relations reduction10860.input reduction10860.output := by lin_cert using reduction10860.terms
theorem substitutionProof10860 : IsMapEvaluation generatorImages reduction10860.relations [8,8,778] reduction10860.output := by lin_cert using reduction10860.terms
def image10861 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10861 : InImage map_42_207 image10861 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10861 : Bundle := named_bundle% "RealMapCertificates/relations/basis10861.json"
theorem reductionProof10861 : EqualModuloRelations reduction10861.relations reduction10861.input reduction10861.output := by lin_cert using reduction10861.terms
theorem substitutionProof10861 : IsMapEvaluation generatorImages reduction10861.relations [8,8,8,8,8,8,8,9,13,23] reduction10861.output := by lin_cert using reduction10861.terms
def image10862 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10862 : InImage map_42_207 image10862 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10862 : Bundle := named_bundle% "RealMapCertificates/relations/basis10862.json"
theorem reductionProof10862 : EqualModuloRelations reduction10862.relations reduction10862.input reduction10862.output := by lin_cert using reduction10862.terms
theorem substitutionProof10862 : IsMapEvaluation generatorImages reduction10862.relations [8,8,8,8,8,8,8,8,64] reduction10862.output := by lin_cert using reduction10862.terms
def image10863 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10863 : InImage map_42_207 image10863 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10863 : Bundle := named_bundle% "RealMapCertificates/relations/basis10863.json"
theorem reductionProof10863 : EqualModuloRelations reduction10863.relations reduction10863.input reduction10863.output := by lin_cert using reduction10863.terms
theorem substitutionProof10863 : IsMapEvaluation generatorImages reduction10863.relations [0,8,17,623] reduction10863.output := by lin_cert using reduction10863.terms
def image10864 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10864 : InImage map_42_207 image10864 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10864 : Bundle := named_bundle% "RealMapCertificates/relations/basis10864.json"
theorem reductionProof10864 : EqualModuloRelations reduction10864.relations reduction10864.input reduction10864.output := by lin_cert using reduction10864.terms
theorem substitutionProof10864 : IsMapEvaluation generatorImages reduction10864.relations [0,0,0,0,0,1218] reduction10864.output := by lin_cert using reduction10864.terms
def map_42_209 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image11164 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11164 : InImage map_42_209 image11164 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11164 : Bundle := named_bundle% "RealMapCertificates/relations/basis11164.json"
theorem reductionProof11164 : EqualModuloRelations reduction11164.relations reduction11164.input reduction11164.output := by lin_cert using reduction11164.terms
theorem substitutionProof11164 : IsMapEvaluation generatorImages reduction11164.relations [16,64,244] reduction11164.output := by lin_cert using reduction11164.terms
def image11165 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11165 : InImage map_42_209 image11165 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11165 : Bundle := named_bundle% "RealMapCertificates/relations/basis11165.json"
theorem reductionProof11165 : EqualModuloRelations reduction11165.relations reduction11165.input reduction11165.output := by lin_cert using reduction11165.terms
theorem substitutionProof11165 : IsMapEvaluation generatorImages reduction11165.relations [8,8,16,491] reduction11165.output := by lin_cert using reduction11165.terms
def image11166 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11166 : InImage map_42_209 image11166 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11166 : Bundle := named_bundle% "RealMapCertificates/relations/basis11166.json"
theorem reductionProof11166 : EqualModuloRelations reduction11166.relations reduction11166.input reduction11166.output := by lin_cert using reduction11166.terms
theorem substitutionProof11166 : IsMapEvaluation generatorImages reduction11166.relations [8,8,8,8,8,258] reduction11166.output := by lin_cert using reduction11166.terms
def map_42_210 : Matrix 3 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11362 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11362 : InImage map_42_210 image11362 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11362 : Bundle := named_bundle% "RealMapCertificates/relations/basis11362.json"
theorem reductionProof11362 : EqualModuloRelations reduction11362.relations reduction11362.input reduction11362.output := by lin_cert using reduction11362.terms
theorem substitutionProof11362 : IsMapEvaluation generatorImages reduction11362.relations [8,8,138,138] reduction11362.output := by lin_cert using reduction11362.terms
def image11363 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation11363 : InImage map_42_210 image11363 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11363 : Bundle := named_bundle% "RealMapCertificates/relations/basis11363.json"
theorem reductionProof11363 : EqualModuloRelations reduction11363.relations reduction11363.input reduction11363.output := by lin_cert using reduction11363.terms
theorem substitutionProof11363 : IsMapEvaluation generatorImages reduction11363.relations [8,8,8,8,8,8,8,13,13,23] reduction11363.output := by lin_cert using reduction11363.terms
def image11364 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11364 : InImage map_42_210 image11364 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11364 : Bundle := named_bundle% "RealMapCertificates/relations/basis11364.json"
theorem reductionProof11364 : EqualModuloRelations reduction11364.relations reduction11364.input reduction11364.output := by lin_cert using reduction11364.terms
theorem substitutionProof11364 : IsMapEvaluation generatorImages reduction11364.relations [8,8,8,8,8,8,8,8,72] reduction11364.output := by lin_cert using reduction11364.terms
def image11365 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11365 : InImage map_42_210 image11365 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11365 : Bundle := named_bundle% "RealMapCertificates/relations/basis11365.json"
theorem reductionProof11365 : EqualModuloRelations reduction11365.relations reduction11365.input reduction11365.output := by lin_cert using reduction11365.terms
theorem substitutionProof11365 : IsMapEvaluation generatorImages reduction11365.relations [0,8,8,17,491] reduction11365.output := by lin_cert using reduction11365.terms
def image11366 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11366 : InImage map_42_210 image11366 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11366 : Bundle := named_bundle% "RealMapCertificates/relations/basis11366.json"
theorem reductionProof11366 : EqualModuloRelations reduction11366.relations reduction11366.input reduction11366.output := by lin_cert using reduction11366.terms
theorem substitutionProof11366 : IsMapEvaluation generatorImages reduction11366.relations [0,0,149,244] reduction11366.output := by lin_cert using reduction11366.terms
def map_42_211 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11551 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11551 : InImage map_42_211 image11551 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11551 : Bundle := named_bundle% "RealMapCertificates/relations/basis11551.json"
theorem reductionProof11551 : EqualModuloRelations reduction11551.relations reduction11551.input reduction11551.output := by lin_cert using reduction11551.terms
theorem substitutionProof11551 : IsMapEvaluation generatorImages reduction11551.relations [0,0,0,1335] reduction11551.output := by lin_cert using reduction11551.terms
def map_42_212 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image11697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11697 : InImage map_42_212 image11697 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11697 : Bundle := named_bundle% "RealMapCertificates/relations/basis11697.json"
theorem reductionProof11697 : EqualModuloRelations reduction11697.relations reduction11697.input reduction11697.output := by lin_cert using reduction11697.terms
theorem substitutionProof11697 : IsMapEvaluation generatorImages reduction11697.relations [8,64,343] reduction11697.output := by lin_cert using reduction11697.terms
def image11698 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11698 : InImage map_42_212 image11698 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11698 : Bundle := named_bundle% "RealMapCertificates/relations/basis11698.json"
theorem reductionProof11698 : EqualModuloRelations reduction11698.relations reduction11698.input reduction11698.output := by lin_cert using reduction11698.terms
theorem substitutionProof11698 : IsMapEvaluation generatorImages reduction11698.relations [8,8,8,623] reduction11698.output := by lin_cert using reduction11698.terms
def image11699 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11699 : InImage map_42_212 image11699 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11699 : Bundle := named_bundle% "RealMapCertificates/relations/basis11699.json"
theorem reductionProof11699 : EqualModuloRelations reduction11699.relations reduction11699.input reduction11699.output := by lin_cert using reduction11699.terms
theorem substitutionProof11699 : IsMapEvaluation generatorImages reduction11699.relations [8,8,8,8,8,277] reduction11699.output := by lin_cert using reduction11699.terms
def image11700 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11700 : InImage map_42_212 image11700 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11700 : Bundle := named_bundle% "RealMapCertificates/relations/basis11700.json"
theorem reductionProof11700 : EqualModuloRelations reduction11700.relations reduction11700.input reduction11700.output := by lin_cert using reduction11700.terms
theorem substitutionProof11700 : IsMapEvaluation generatorImages reduction11700.relations [1,1,149,244] reduction11700.output := by lin_cert using reduction11700.terms
def image11701 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11701 : InImage map_42_212 image11701 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11701 : Bundle := named_bundle% "RealMapCertificates/relations/basis11701.json"
theorem reductionProof11701 : EqualModuloRelations reduction11701.relations reduction11701.input reduction11701.output := by lin_cert using reduction11701.terms
theorem substitutionProof11701 : IsMapEvaluation generatorImages reduction11701.relations [0,0,0,0,0,0,64,491] reduction11701.output := by lin_cert using reduction11701.terms
def map_42_213 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image11946 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11946 : InImage map_42_213 image11946 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11946 : Bundle := named_bundle% "RealMapCertificates/relations/basis11946.json"
theorem reductionProof11946 : EqualModuloRelations reduction11946.relations reduction11946.input reduction11946.output := by lin_cert using reduction11946.terms
theorem substitutionProof11946 : IsMapEvaluation generatorImages reduction11946.relations [8,8,8,637] reduction11946.output := by lin_cert using reduction11946.terms
def image11947 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11947 : InImage map_42_213 image11947 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11947 : Bundle := named_bundle% "RealMapCertificates/relations/basis11947.json"
theorem reductionProof11947 : EqualModuloRelations reduction11947.relations reduction11947.input reduction11947.output := by lin_cert using reduction11947.terms
theorem substitutionProof11947 : IsMapEvaluation generatorImages reduction11947.relations [8,8,8,8,8,8,9,13,13,23] reduction11947.output := by lin_cert using reduction11947.terms
def image11948 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11948 : InImage map_42_213 image11948 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11948 : Bundle := named_bundle% "RealMapCertificates/relations/basis11948.json"
theorem reductionProof11948 : EqualModuloRelations reduction11948.relations reduction11948.input reduction11948.output := by lin_cert using reduction11948.terms
theorem substitutionProof11948 : IsMapEvaluation generatorImages reduction11948.relations [8,8,8,8,8,8,8,8,79] reduction11948.output := by lin_cert using reduction11948.terms
def image11949 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11949 : InImage map_42_213 image11949 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11949 : Bundle := named_bundle% "RealMapCertificates/relations/basis11949.json"
theorem reductionProof11949 : EqualModuloRelations reduction11949.relations reduction11949.input reduction11949.output := by lin_cert using reduction11949.terms
theorem substitutionProof11949 : IsMapEvaluation generatorImages reduction11949.relations [0,0,0,0,0,64,509] reduction11949.output := by lin_cert using reduction11949.terms
def image11950 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11950 : InImage map_42_213 image11950 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11950 : Bundle := named_bundle% "RealMapCertificates/relations/basis11950.json"
theorem reductionProof11950 : EqualModuloRelations reduction11950.relations reduction11950.input reduction11950.output := by lin_cert using reduction11950.terms
theorem substitutionProof11950 : IsMapEvaluation generatorImages reduction11950.relations [0,0,0,0,0,0,0,138,260] reduction11950.output := by lin_cert using reduction11950.terms
def map_42_215 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12300 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12300 : InImage map_42_215 image12300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12300 : Bundle := named_bundle% "RealMapCertificates/relations/basis12300.json"
theorem reductionProof12300 : EqualModuloRelations reduction12300.relations reduction12300.input reduction12300.output := by lin_cert using reduction12300.terms
theorem substitutionProof12300 : IsMapEvaluation generatorImages reduction12300.relations [8,8,64,244] reduction12300.output := by lin_cert using reduction12300.terms
def image12301 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12301 : InImage map_42_215 image12301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12301 : Bundle := named_bundle% "RealMapCertificates/relations/basis12301.json"
theorem reductionProof12301 : EqualModuloRelations reduction12301.relations reduction12301.input reduction12301.output := by lin_cert using reduction12301.terms
theorem substitutionProof12301 : IsMapEvaluation generatorImages reduction12301.relations [8,8,8,8,491] reduction12301.output := by lin_cert using reduction12301.terms
def image12302 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12302 : InImage map_42_215 image12302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12302 : Bundle := named_bundle% "RealMapCertificates/relations/basis12302.json"
theorem reductionProof12302 : EqualModuloRelations reduction12302.relations reduction12302.input reduction12302.output := by lin_cert using reduction12302.terms
theorem substitutionProof12302 : IsMapEvaluation generatorImages reduction12302.relations [8,8,8,8,8,8,207] reduction12302.output := by lin_cert using reduction12302.terms
def map_42_216 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image12509 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12509 : InImage map_42_216 image12509 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12509 : Bundle := named_bundle% "RealMapCertificates/relations/basis12509.json"
theorem reductionProof12509 : EqualModuloRelations reduction12509.relations reduction12509.input reduction12509.output := by lin_cert using reduction12509.terms
theorem substitutionProof12509 : IsMapEvaluation generatorImages reduction12509.relations [8,8,8,664] reduction12509.output := by lin_cert using reduction12509.terms
def image12510 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12510 : InImage map_42_216 image12510 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12510 : Bundle := named_bundle% "RealMapCertificates/relations/basis12510.json"
theorem reductionProof12510 : EqualModuloRelations reduction12510.relations reduction12510.input reduction12510.output := by lin_cert using reduction12510.terms
theorem substitutionProof12510 : IsMapEvaluation generatorImages reduction12510.relations [8,8,8,8,8,8,13,13,13,23] reduction12510.output := by lin_cert using reduction12510.terms
def image12511 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12511 : InImage map_42_216 image12511 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12511 : Bundle := named_bundle% "RealMapCertificates/relations/basis12511.json"
theorem reductionProof12511 : EqualModuloRelations reduction12511.relations reduction12511.input reduction12511.output := by lin_cert using reduction12511.terms
theorem substitutionProof12511 : IsMapEvaluation generatorImages reduction12511.relations [8,8,8,8,8,8,8,8,89] reduction12511.output := by lin_cert using reduction12511.terms
def image12512 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12512 : InImage map_42_216 image12512 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12512 : Bundle := named_bundle% "RealMapCertificates/relations/basis12512.json"
theorem reductionProof12512 : EqualModuloRelations reduction12512.relations reduction12512.input reduction12512.output := by lin_cert using reduction12512.terms
theorem substitutionProof12512 : IsMapEvaluation generatorImages reduction12512.relations [1,1438] reduction12512.output := by lin_cert using reduction12512.terms
def map_42_217 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12699 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12699 : InImage map_42_217 image12699 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12699 : Bundle := named_bundle% "RealMapCertificates/relations/basis12699.json"
theorem reductionProof12699 : EqualModuloRelations reduction12699.relations reduction12699.input reduction12699.output := by lin_cert using reduction12699.terms
theorem substitutionProof12699 : IsMapEvaluation generatorImages reduction12699.relations [1500] reduction12699.output := by lin_cert using reduction12699.terms
def image12700 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12700 : InImage map_42_217 image12700 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12700 : Bundle := named_bundle% "RealMapCertificates/relations/basis12700.json"
theorem reductionProof12700 : EqualModuloRelations reduction12700.relations reduction12700.input reduction12700.output := by lin_cert using reduction12700.terms
theorem substitutionProof12700 : IsMapEvaluation generatorImages reduction12700.relations [0,0,0,0,64,64,137] reduction12700.output := by lin_cert using reduction12700.terms
def map_42_218 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image12854 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12854 : InImage map_42_218 image12854 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12854 : Bundle := named_bundle% "RealMapCertificates/relations/basis12854.json"
theorem reductionProof12854 : EqualModuloRelations reduction12854.relations reduction12854.input reduction12854.output := by lin_cert using reduction12854.terms
theorem substitutionProof12854 : IsMapEvaluation generatorImages reduction12854.relations [8,8,64,257] reduction12854.output := by lin_cert using reduction12854.terms
def image12855 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12855 : InImage map_42_218 image12855 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12855 : Bundle := named_bundle% "RealMapCertificates/relations/basis12855.json"
theorem reductionProof12855 : EqualModuloRelations reduction12855.relations reduction12855.input reduction12855.output := by lin_cert using reduction12855.terms
theorem substitutionProof12855 : IsMapEvaluation generatorImages reduction12855.relations [8,8,8,8,516] reduction12855.output := by lin_cert using reduction12855.terms
def image12856 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12856 : InImage map_42_218 image12856 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12856 : Bundle := named_bundle% "RealMapCertificates/relations/basis12856.json"
theorem reductionProof12856 : EqualModuloRelations reduction12856.relations reduction12856.input reduction12856.output := by lin_cert using reduction12856.terms
theorem substitutionProof12856 : IsMapEvaluation generatorImages reduction12856.relations [8,8,8,8,8,8,218] reduction12856.output := by lin_cert using reduction12856.terms
def image12857 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12857 : InImage map_42_218 image12857 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12857 : Bundle := named_bundle% "RealMapCertificates/relations/basis12857.json"
theorem reductionProof12857 : EqualModuloRelations reduction12857.relations reduction12857.input reduction12857.output := by lin_cert using reduction12857.terms
theorem substitutionProof12857 : IsMapEvaluation generatorImages reduction12857.relations [0,0,0,0,0,64,64,138] reduction12857.output := by lin_cert using reduction12857.terms
def map_42_219 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13099 : InImage map_42_219 image13099 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13099 : Bundle := named_bundle% "RealMapCertificates/relations/basis13099.json"
theorem reductionProof13099 : EqualModuloRelations reduction13099.relations reduction13099.input reduction13099.output := by lin_cert using reduction13099.terms
theorem substitutionProof13099 : IsMapEvaluation generatorImages reduction13099.relations [8,8,8,8,529] reduction13099.output := by lin_cert using reduction13099.terms
def image13100 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13100 : InImage map_42_219 image13100 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13100 : Bundle := named_bundle% "RealMapCertificates/relations/basis13100.json"
theorem reductionProof13100 : EqualModuloRelations reduction13100.relations reduction13100.input reduction13100.output := by lin_cert using reduction13100.terms
theorem substitutionProof13100 : IsMapEvaluation generatorImages reduction13100.relations [8,8,8,8,8,9,13,13,13,23] reduction13100.output := by lin_cert using reduction13100.terms
def image13101 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13101 : InImage map_42_219 image13101 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13101 : Bundle := named_bundle% "RealMapCertificates/relations/basis13101.json"
theorem reductionProof13101 : EqualModuloRelations reduction13101.relations reduction13101.input reduction13101.output := by lin_cert using reduction13101.terms
theorem substitutionProof13101 : IsMapEvaluation generatorImages reduction13101.relations [8,8,8,8,8,8,8,8,101] reduction13101.output := by lin_cert using reduction13101.terms
def map_42_220 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image13252 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13252 : InImage map_42_220 image13252 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13252 : Bundle := named_bundle% "RealMapCertificates/relations/basis13252.json"
theorem reductionProof13252 : EqualModuloRelations reduction13252.relations reduction13252.input reduction13252.output := by lin_cert using reduction13252.terms
theorem substitutionProof13252 : IsMapEvaluation generatorImages reduction13252.relations [1551] reduction13252.output := by lin_cert using reduction13252.terms
def map_42_221 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image13425 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13425 : InImage map_42_221 image13425 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13425 : Bundle := named_bundle% "RealMapCertificates/relations/basis13425.json"
theorem reductionProof13425 : EqualModuloRelations reduction13425.relations reduction13425.input reduction13425.output := by lin_cert using reduction13425.terms
theorem substitutionProof13425 : IsMapEvaluation generatorImages reduction13425.relations [8,8,16,64,149] reduction13425.output := by lin_cert using reduction13425.terms
def image13426 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13426 : InImage map_42_221 image13426 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13426 : Bundle := named_bundle% "RealMapCertificates/relations/basis13426.json"
theorem reductionProof13426 : EqualModuloRelations reduction13426.relations reduction13426.input reduction13426.output := by lin_cert using reduction13426.terms
theorem substitutionProof13426 : IsMapEvaluation generatorImages reduction13426.relations [8,8,8,8,16,260] reduction13426.output := by lin_cert using reduction13426.terms
def image13427 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13427 : InImage map_42_221 image13427 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13427 : Bundle := named_bundle% "RealMapCertificates/relations/basis13427.json"
theorem reductionProof13427 : EqualModuloRelations reduction13427.relations reduction13427.input reduction13427.output := by lin_cert using reduction13427.terms
theorem substitutionProof13427 : IsMapEvaluation generatorImages reduction13427.relations [8,8,8,8,8,8,233] reduction13427.output := by lin_cert using reduction13427.terms
def map_42_222 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13649 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13649 : InImage map_42_222 image13649 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13649 : Bundle := named_bundle% "RealMapCertificates/relations/basis13649.json"
theorem reductionProof13649 : EqualModuloRelations reduction13649.relations reduction13649.input reduction13649.output := by lin_cert using reduction13649.terms
theorem substitutionProof13649 : IsMapEvaluation generatorImages reduction13649.relations [8,8,8,8,557] reduction13649.output := by lin_cert using reduction13649.terms
def image13650 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13650 : InImage map_42_222 image13650 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13650 : Bundle := named_bundle% "RealMapCertificates/relations/basis13650.json"
theorem reductionProof13650 : EqualModuloRelations reduction13650.relations reduction13650.input reduction13650.output := by lin_cert using reduction13650.terms
theorem substitutionProof13650 : IsMapEvaluation generatorImages reduction13650.relations [8,8,8,8,8,13,13,13,13,23] reduction13650.output := by lin_cert using reduction13650.terms
def image13651 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13651 : InImage map_42_222 image13651 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13651 : Bundle := named_bundle% "RealMapCertificates/relations/basis13651.json"
theorem reductionProof13651 : EqualModuloRelations reduction13651.relations reduction13651.input reduction13651.output := by lin_cert using reduction13651.terms
theorem substitutionProof13651 : IsMapEvaluation generatorImages reduction13651.relations [8,8,8,8,8,8,8,9,101] reduction13651.output := by lin_cert using reduction13651.terms
def image13652 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13652 : InImage map_42_222 image13652 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13652 : Bundle := named_bundle% "RealMapCertificates/relations/basis13652.json"
theorem reductionProof13652 : EqualModuloRelations reduction13652.relations reduction13652.input reduction13652.output := by lin_cert using reduction13652.terms
theorem substitutionProof13652 : IsMapEvaluation generatorImages reduction13652.relations [1,5,64,491] reduction13652.output := by lin_cert using reduction13652.terms
def map_42_223 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image13826 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13826 : InImage map_42_223 image13826 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13826 : Bundle := named_bundle% "RealMapCertificates/relations/basis13826.json"
theorem reductionProof13826 : EqualModuloRelations reduction13826.relations reduction13826.input reduction13826.output := by lin_cert using reduction13826.terms
theorem substitutionProof13826 : IsMapEvaluation generatorImages reduction13826.relations [8,1287] reduction13826.output := by lin_cert using reduction13826.terms
def image13827 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13827 : InImage map_42_223 image13827 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13827 : Bundle := named_bundle% "RealMapCertificates/relations/basis13827.json"
theorem reductionProof13827 : EqualModuloRelations reduction13827.relations reduction13827.input reduction13827.output := by lin_cert using reduction13827.terms
theorem substitutionProof13827 : IsMapEvaluation generatorImages reduction13827.relations [0,0,64,623] reduction13827.output := by lin_cert using reduction13827.terms
def map_42_224 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13979 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13979 : InImage map_42_224 image13979 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13979 : Bundle := named_bundle% "RealMapCertificates/relations/basis13979.json"
theorem reductionProof13979 : EqualModuloRelations reduction13979.relations reduction13979.input reduction13979.output := by lin_cert using reduction13979.terms
theorem substitutionProof13979 : IsMapEvaluation generatorImages reduction13979.relations [8,8,8,64,206] reduction13979.output := by lin_cert using reduction13979.terms
def image13980 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13980 : InImage map_42_224 image13980 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13980 : Bundle := named_bundle% "RealMapCertificates/relations/basis13980.json"
theorem reductionProof13980 : EqualModuloRelations reduction13980.relations reduction13980.input reduction13980.output := by lin_cert using reduction13980.terms
theorem substitutionProof13980 : IsMapEvaluation generatorImages reduction13980.relations [8,8,8,8,8,380] reduction13980.output := by lin_cert using reduction13980.terms
def image13981 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13981 : InImage map_42_224 image13981 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13981 : Bundle := named_bundle% "RealMapCertificates/relations/basis13981.json"
theorem reductionProof13981 : EqualModuloRelations reduction13981.relations reduction13981.input reduction13981.output := by lin_cert using reduction13981.terms
theorem substitutionProof13981 : IsMapEvaluation generatorImages reduction13981.relations [8,8,8,8,8,8,248] reduction13981.output := by lin_cert using reduction13981.terms
def image13982 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13982 : InImage map_42_224 image13982 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13982 : Bundle := named_bundle% "RealMapCertificates/relations/basis13982.json"
theorem reductionProof13982 : EqualModuloRelations reduction13982.relations reduction13982.input reduction13982.output := by lin_cert using reduction13982.terms
theorem substitutionProof13982 : IsMapEvaluation generatorImages reduction13982.relations [0,0,0,0,0,0,64,64,149] reduction13982.output := by lin_cert using reduction13982.terms
def map_42_225 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image14219 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14219 : InImage map_42_225 image14219 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14219 : Bundle := named_bundle% "RealMapCertificates/relations/basis14219.json"
theorem reductionProof14219 : EqualModuloRelations reduction14219.relations reduction14219.input reduction14219.output := by lin_cert using reduction14219.terms
theorem substitutionProof14219 : IsMapEvaluation generatorImages reduction14219.relations [8,8,8,8,9,13,13,13,13,23] reduction14219.output := by lin_cert using reduction14219.terms
def image14220 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14220 : InImage map_42_225 image14220 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14220 : Bundle := named_bundle% "RealMapCertificates/relations/basis14220.json"
theorem reductionProof14220 : EqualModuloRelations reduction14220.relations reduction14220.input reduction14220.output := by lin_cert using reduction14220.terms
theorem substitutionProof14220 : IsMapEvaluation generatorImages reduction14220.relations [8,8,8,8,8,404] reduction14220.output := by lin_cert using reduction14220.terms
def image14221 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14221 : InImage map_42_225 image14221 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14221 : Bundle := named_bundle% "RealMapCertificates/relations/basis14221.json"
theorem reductionProof14221 : EqualModuloRelations reduction14221.relations reduction14221.input reduction14221.output := by lin_cert using reduction14221.terms
theorem substitutionProof14221 : IsMapEvaluation generatorImages reduction14221.relations [8,8,8,8,8,8,8,13,101] reduction14221.output := by lin_cert using reduction14221.terms
def map_42_226 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image14379 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14379 : InImage map_42_226 image14379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14379 : Bundle := named_bundle% "RealMapCertificates/relations/basis14379.json"
theorem reductionProof14379 : EqualModuloRelations reduction14379.relations reduction14379.input reduction14379.output := by lin_cert using reduction14379.terms
theorem substitutionProof14379 : IsMapEvaluation generatorImages reduction14379.relations [8,149,245] reduction14379.output := by lin_cert using reduction14379.terms
def image14380 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14380 : InImage map_42_226 image14380 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14380 : Bundle := named_bundle% "RealMapCertificates/relations/basis14380.json"
theorem reductionProof14380 : EqualModuloRelations reduction14380.relations reduction14380.input reduction14380.output := by lin_cert using reduction14380.terms
theorem substitutionProof14380 : IsMapEvaluation generatorImages reduction14380.relations [0,0,8,64,491] reduction14380.output := by lin_cert using reduction14380.terms
def map_42_227 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14555 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14555 : InImage map_42_227 image14555 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14555 : Bundle := named_bundle% "RealMapCertificates/relations/basis14555.json"
theorem reductionProof14555 : EqualModuloRelations reduction14555.relations reduction14555.input reduction14555.output := by lin_cert using reduction14555.terms
theorem substitutionProof14555 : IsMapEvaluation generatorImages reduction14555.relations [8,8,8,8,64,149] reduction14555.output := by lin_cert using reduction14555.terms
def image14556 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14556 : InImage map_42_227 image14556 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14556 : Bundle := named_bundle% "RealMapCertificates/relations/basis14556.json"
theorem reductionProof14556 : EqualModuloRelations reduction14556.relations reduction14556.input reduction14556.output := by lin_cert using reduction14556.terms
theorem substitutionProof14556 : IsMapEvaluation generatorImages reduction14556.relations [8,8,8,8,8,9,248] reduction14556.output := by lin_cert using reduction14556.terms
def image14557 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14557 : InImage map_42_227 image14557 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14557 : Bundle := named_bundle% "RealMapCertificates/relations/basis14557.json"
theorem reductionProof14557 : EqualModuloRelations reduction14557.relations reduction14557.input reduction14557.output := by lin_cert using reduction14557.terms
theorem substitutionProof14557 : IsMapEvaluation generatorImages reduction14557.relations [8,8,8,8,8,8,260] reduction14557.output := by lin_cert using reduction14557.terms
def map_42_228 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image14787 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14787 : InImage map_42_228 image14787 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14787 : Bundle := named_bundle% "RealMapCertificates/relations/basis14787.json"
theorem reductionProof14787 : EqualModuloRelations reduction14787.relations reduction14787.input reduction14787.output := by lin_cert using reduction14787.terms
theorem substitutionProof14787 : IsMapEvaluation generatorImages reduction14787.relations [64,64,184] reduction14787.output := by lin_cert using reduction14787.terms
def image14788 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14788 : InImage map_42_228 image14788 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14788 : Bundle := named_bundle% "RealMapCertificates/relations/basis14788.json"
theorem reductionProof14788 : EqualModuloRelations reduction14788.relations reduction14788.input reduction14788.output := by lin_cert using reduction14788.terms
theorem substitutionProof14788 : IsMapEvaluation generatorImages reduction14788.relations [8,8,8,8,13,13,13,13,13,23] reduction14788.output := by lin_cert using reduction14788.terms
def image14789 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14789 : InImage map_42_228 image14789 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14789 : Bundle := named_bundle% "RealMapCertificates/relations/basis14789.json"
theorem reductionProof14789 : EqualModuloRelations reduction14789.relations reduction14789.input reduction14789.output := by lin_cert using reduction14789.terms
theorem substitutionProof14789 : IsMapEvaluation generatorImages reduction14789.relations [8,8,8,8,8,434] reduction14789.output := by lin_cert using reduction14789.terms
def image14790 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14790 : InImage map_42_228 image14790 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14790 : Bundle := named_bundle% "RealMapCertificates/relations/basis14790.json"
theorem reductionProof14790 : EqualModuloRelations reduction14790.relations reduction14790.input reduction14790.output := by lin_cert using reduction14790.terms
theorem substitutionProof14790 : IsMapEvaluation generatorImages reduction14790.relations [8,8,8,8,8,8,9,13,101] reduction14790.output := by lin_cert using reduction14790.terms
def map_42_229 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14981 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14981 : InImage map_42_229 image14981 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14981 : Bundle := named_bundle% "RealMapCertificates/relations/basis14981.json"
theorem reductionProof14981 : EqualModuloRelations reduction14981.relations reduction14981.input reduction14981.output := by lin_cert using reduction14981.terms
theorem substitutionProof14981 : IsMapEvaluation generatorImages reduction14981.relations [8,8,1060] reduction14981.output := by lin_cert using reduction14981.terms
def image14982 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14982 : InImage map_42_229 image14982 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14982 : Bundle := named_bundle% "RealMapCertificates/relations/basis14982.json"
theorem reductionProof14982 : EqualModuloRelations reduction14982.relations reduction14982.input reduction14982.output := by lin_cert using reduction14982.terms
theorem substitutionProof14982 : IsMapEvaluation generatorImages reduction14982.relations [0,0,8,64,516] reduction14982.output := by lin_cert using reduction14982.terms
def map_42_230 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image15149 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15149 : InImage map_42_230 image15149 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15149 : Bundle := named_bundle% "RealMapCertificates/relations/basis15149.json"
theorem reductionProof15149 : EqualModuloRelations reduction15149.relations reduction15149.input reduction15149.output := by lin_cert using reduction15149.terms
theorem substitutionProof15149 : IsMapEvaluation generatorImages reduction15149.relations [8,8,8,8,64,160] reduction15149.output := by lin_cert using reduction15149.terms
def image15150 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15150 : InImage map_42_230 image15150 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15150 : Bundle := named_bundle% "RealMapCertificates/relations/basis15150.json"
theorem reductionProof15150 : EqualModuloRelations reduction15150.relations reduction15150.input reduction15150.output := by lin_cert using reduction15150.terms
theorem substitutionProof15150 : IsMapEvaluation generatorImages reduction15150.relations [8,8,8,8,8,13,248] reduction15150.output := by lin_cert using reduction15150.terms
def image15151 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15151 : InImage map_42_230 image15151 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15151 : Bundle := named_bundle% "RealMapCertificates/relations/basis15151.json"
theorem reductionProof15151 : EqualModuloRelations reduction15151.relations reduction15151.input reduction15151.output := by lin_cert using reduction15151.terms
theorem substitutionProof15151 : IsMapEvaluation generatorImages reduction15151.relations [8,8,8,8,8,8,278] reduction15151.output := by lin_cert using reduction15151.terms
def image15152 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation15152 : InImage map_42_230 image15152 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15152 : Bundle := named_bundle% "RealMapCertificates/relations/basis15152.json"
theorem reductionProof15152 : EqualModuloRelations reduction15152.relations reduction15152.input reduction15152.output := by lin_cert using reduction15152.terms
theorem substitutionProof15152 : IsMapEvaluation generatorImages reduction15152.relations [0,0,1686] reduction15152.output := by lin_cert using reduction15152.terms
def map_42_231 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image15412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15412 : InImage map_42_231 image15412 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15412 : Bundle := named_bundle% "RealMapCertificates/relations/basis15412.json"
theorem reductionProof15412 : EqualModuloRelations reduction15412.relations reduction15412.input reduction15412.output := by lin_cert using reduction15412.terms
theorem substitutionProof15412 : IsMapEvaluation generatorImages reduction15412.relations [8,64,64,137] reduction15412.output := by lin_cert using reduction15412.terms
def image15413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15413 : InImage map_42_231 image15413 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15413 : Bundle := named_bundle% "RealMapCertificates/relations/basis15413.json"
theorem reductionProof15413 : EqualModuloRelations reduction15413.relations reduction15413.input reduction15413.output := by lin_cert using reduction15413.terms
theorem substitutionProof15413 : IsMapEvaluation generatorImages reduction15413.relations [8,8,8,9,13,13,13,13,13,23] reduction15413.output := by lin_cert using reduction15413.terms
def image15414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15414 : InImage map_42_231 image15414 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15414 : Bundle := named_bundle% "RealMapCertificates/relations/basis15414.json"
theorem reductionProof15414 : EqualModuloRelations reduction15414.relations reduction15414.input reduction15414.output := by lin_cert using reduction15414.terms
theorem substitutionProof15414 : IsMapEvaluation generatorImages reduction15414.relations [8,8,8,8,8,471] reduction15414.output := by lin_cert using reduction15414.terms
def image15415 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15415 : InImage map_42_231 image15415 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15415 : Bundle := named_bundle% "RealMapCertificates/relations/basis15415.json"
theorem reductionProof15415 : EqualModuloRelations reduction15415.relations reduction15415.input reduction15415.output := by lin_cert using reduction15415.terms
theorem substitutionProof15415 : IsMapEvaluation generatorImages reduction15415.relations [8,8,8,8,8,8,13,13,101] reduction15415.output := by lin_cert using reduction15415.terms
def image15416 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15416 : InImage map_42_231 image15416 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15416 : Bundle := named_bundle% "RealMapCertificates/relations/basis15416.json"
theorem reductionProof15416 : EqualModuloRelations reduction15416.relations reduction15416.input reduction15416.output := by lin_cert using reduction15416.terms
theorem substitutionProof15416 : IsMapEvaluation generatorImages reduction15416.relations [0,1735] reduction15416.output := by lin_cert using reduction15416.terms
def map_42_232 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image15602 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15602 : InImage map_42_232 image15602 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15602 : Bundle := named_bundle% "RealMapCertificates/relations/basis15602.json"
theorem reductionProof15602 : EqualModuloRelations reduction15602.relations reduction15602.input reduction15602.output := by lin_cert using reduction15602.terms
theorem substitutionProof15602 : IsMapEvaluation generatorImages reduction15602.relations [8,8,1102] reduction15602.output := by lin_cert using reduction15602.terms
def image15603 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15603 : InImage map_42_232 image15603 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15603 : Bundle := named_bundle% "RealMapCertificates/relations/basis15603.json"
theorem reductionProof15603 : EqualModuloRelations reduction15603.relations reduction15603.input reduction15603.output := by lin_cert using reduction15603.terms
theorem substitutionProof15603 : IsMapEvaluation generatorImages reduction15603.relations [1,1,1686] reduction15603.output := by lin_cert using reduction15603.terms
def image15604 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15604 : InImage map_42_232 image15604 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15604 : Bundle := named_bundle% "RealMapCertificates/relations/basis15604.json"
theorem reductionProof15604 : EqualModuloRelations reduction15604.relations reduction15604.input reduction15604.output := by lin_cert using reduction15604.terms
theorem substitutionProof15604 : IsMapEvaluation generatorImages reduction15604.relations [0,0,1736] reduction15604.output := by lin_cert using reduction15604.terms
def image15605 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15605 : InImage map_42_232 image15605 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15605 : Bundle := named_bundle% "RealMapCertificates/relations/basis15605.json"
theorem reductionProof15605 : EqualModuloRelations reduction15605.relations reduction15605.input reduction15605.output := by lin_cert using reduction15605.terms
theorem substitutionProof15605 : IsMapEvaluation generatorImages reduction15605.relations [0,0,8,16,64,260] reduction15605.output := by lin_cert using reduction15605.terms
def map_42_233 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image15809 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15809 : InImage map_42_233 image15809 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15809 : Bundle := named_bundle% "RealMapCertificates/relations/basis15809.json"
theorem reductionProof15809 : EqualModuloRelations reduction15809.relations reduction15809.input reduction15809.output := by lin_cert using reduction15809.terms
theorem substitutionProof15809 : IsMapEvaluation generatorImages reduction15809.relations [8,8,8,8,16,347] reduction15809.output := by lin_cert using reduction15809.terms
def image15810 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15810 : InImage map_42_233 image15810 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15810 : Bundle := named_bundle% "RealMapCertificates/relations/basis15810.json"
theorem reductionProof15810 : EqualModuloRelations reduction15810.relations reduction15810.input reduction15810.output := by lin_cert using reduction15810.terms
theorem substitutionProof15810 : IsMapEvaluation generatorImages reduction15810.relations [8,8,8,8,9,13,248] reduction15810.output := by lin_cert using reduction15810.terms
def image15811 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15811 : InImage map_42_233 image15811 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15811 : Bundle := named_bundle% "RealMapCertificates/relations/basis15811.json"
theorem reductionProof15811 : EqualModuloRelations reduction15811.relations reduction15811.input reduction15811.output := by lin_cert using reduction15811.terms
theorem substitutionProof15811 : IsMapEvaluation generatorImages reduction15811.relations [8,8,8,8,8,8,291] reduction15811.output := by lin_cert using reduction15811.terms
def image15812 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15812 : InImage map_42_233 image15812 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15812 : Bundle := named_bundle% "RealMapCertificates/relations/basis15812.json"
theorem reductionProof15812 : EqualModuloRelations reduction15812.relations reduction15812.input reduction15812.output := by lin_cert using reduction15812.terms
theorem substitutionProof15812 : IsMapEvaluation generatorImages reduction15812.relations [0,0,1752] reduction15812.output := by lin_cert using reduction15812.terms
def image15813 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15813 : InImage map_42_233 image15813 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15813 : Bundle := named_bundle% "RealMapCertificates/relations/basis15813.json"
theorem reductionProof15813 : EqualModuloRelations reduction15813.relations reduction15813.input reduction15813.output := by lin_cert using reduction15813.terms
theorem substitutionProof15813 : IsMapEvaluation generatorImages reduction15813.relations [0,0,0,1737] reduction15813.output := by lin_cert using reduction15813.terms
def map_42_234 : Matrix 3 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16062 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16062 : InImage map_42_234 image16062 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16062 : Bundle := named_bundle% "RealMapCertificates/relations/basis16062.json"
theorem reductionProof16062 : EqualModuloRelations reduction16062.relations reduction16062.input reduction16062.output := by lin_cert using reduction16062.terms
theorem substitutionProof16062 : IsMapEvaluation generatorImages reduction16062.relations [8,64,64,146] reduction16062.output := by lin_cert using reduction16062.terms
def image16063 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16063 : InImage map_42_234 image16063 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16063 : Bundle := named_bundle% "RealMapCertificates/relations/basis16063.json"
theorem reductionProof16063 : EqualModuloRelations reduction16063.relations reduction16063.input reduction16063.output := by lin_cert using reduction16063.terms
theorem substitutionProof16063 : IsMapEvaluation generatorImages reduction16063.relations [8,8,8,13,13,13,13,13,13,23] reduction16063.output := by lin_cert using reduction16063.terms
def image16064 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16064 : InImage map_42_234 image16064 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16064 : Bundle := named_bundle% "RealMapCertificates/relations/basis16064.json"
theorem reductionProof16064 : EqualModuloRelations reduction16064.relations reduction16064.input reduction16064.output := by lin_cert using reduction16064.terms
theorem substitutionProof16064 : IsMapEvaluation generatorImages reduction16064.relations [8,8,8,8,8,499] reduction16064.output := by lin_cert using reduction16064.terms
def image16065 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16065 : InImage map_42_234 image16065 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16065 : Bundle := named_bundle% "RealMapCertificates/relations/basis16065.json"
theorem reductionProof16065 : EqualModuloRelations reduction16065.relations reduction16065.input reduction16065.output := by lin_cert using reduction16065.terms
theorem substitutionProof16065 : IsMapEvaluation generatorImages reduction16065.relations [8,8,8,8,8,9,13,13,101] reduction16065.output := by lin_cert using reduction16065.terms
def image16066 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16066 : InImage map_42_234 image16066 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16066 : Bundle := named_bundle% "RealMapCertificates/relations/basis16066.json"
theorem reductionProof16066 : EqualModuloRelations reduction16066.relations reduction16066.input reduction16066.output := by lin_cert using reduction16066.terms
theorem substitutionProof16066 : IsMapEvaluation generatorImages reduction16066.relations [1,1,1736] reduction16066.output := by lin_cert using reduction16066.terms
def map_42_235 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16269 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16269 : InImage map_42_235 image16269 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16269 : Bundle := named_bundle% "RealMapCertificates/relations/basis16269.json"
theorem reductionProof16269 : EqualModuloRelations reduction16269.relations reduction16269.input reduction16269.output := by lin_cert using reduction16269.terms
theorem substitutionProof16269 : IsMapEvaluation generatorImages reduction16269.relations [149,491] reduction16269.output := by lin_cert using reduction16269.terms
def image16270 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16270 : InImage map_42_235 image16270 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16270 : Bundle := named_bundle% "RealMapCertificates/relations/basis16270.json"
theorem reductionProof16270 : EqualModuloRelations reduction16270.relations reduction16270.input reduction16270.output := by lin_cert using reduction16270.terms
theorem substitutionProof16270 : IsMapEvaluation generatorImages reduction16270.relations [8,8,8,889] reduction16270.output := by lin_cert using reduction16270.terms
def map_42_236 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16474 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16474 : InImage map_42_236 image16474 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16474 : Bundle := named_bundle% "RealMapCertificates/relations/basis16474.json"
theorem reductionProof16474 : EqualModuloRelations reduction16474.relations reduction16474.input reduction16474.output := by lin_cert using reduction16474.terms
theorem substitutionProof16474 : IsMapEvaluation generatorImages reduction16474.relations [17,138,260] reduction16474.output := by lin_cert using reduction16474.terms
def image16475 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16475 : InImage map_42_236 image16475 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16475 : Bundle := named_bundle% "RealMapCertificates/relations/basis16475.json"
theorem reductionProof16475 : EqualModuloRelations reduction16475.relations reduction16475.input reduction16475.output := by lin_cert using reduction16475.terms
theorem substitutionProof16475 : IsMapEvaluation generatorImages reduction16475.relations [8,8,8,8,13,13,248] reduction16475.output := by lin_cert using reduction16475.terms
def image16476 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16476 : InImage map_42_236 image16476 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16476 : Bundle := named_bundle% "RealMapCertificates/relations/basis16476.json"
theorem reductionProof16476 : EqualModuloRelations reduction16476.relations reduction16476.input reduction16476.output := by lin_cert using reduction16476.terms
theorem substitutionProof16476 : IsMapEvaluation generatorImages reduction16476.relations [8,8,8,8,8,517] reduction16476.output := by lin_cert using reduction16476.terms
def image16477 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16477 : InImage map_42_236 image16477 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16477 : Bundle := named_bundle% "RealMapCertificates/relations/basis16477.json"
theorem reductionProof16477 : EqualModuloRelations reduction16477.relations reduction16477.input reduction16477.output := by lin_cert using reduction16477.terms
theorem substitutionProof16477 : IsMapEvaluation generatorImages reduction16477.relations [8,8,8,8,8,8,316] reduction16477.output := by lin_cert using reduction16477.terms
def image16478 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16478 : InImage map_42_236 image16478 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16478 : Bundle := named_bundle% "RealMapCertificates/relations/basis16478.json"
theorem reductionProof16478 : EqualModuloRelations reduction16478.relations reduction16478.input reduction16478.output := by lin_cert using reduction16478.terms
theorem substitutionProof16478 : IsMapEvaluation generatorImages reduction16478.relations [0,0,1831] reduction16478.output := by lin_cert using reduction16478.terms
def map_42_237 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16737 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16737 : InImage map_42_237 image16737 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16737 : Bundle := named_bundle% "RealMapCertificates/relations/basis16737.json"
theorem reductionProof16737 : EqualModuloRelations reduction16737.relations reduction16737.input reduction16737.output := by lin_cert using reduction16737.terms
theorem substitutionProof16737 : IsMapEvaluation generatorImages reduction16737.relations [8,16,64,64,64] reduction16737.output := by lin_cert using reduction16737.terms
def image16738 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16738 : InImage map_42_237 image16738 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16738 : Bundle := named_bundle% "RealMapCertificates/relations/basis16738.json"
theorem reductionProof16738 : EqualModuloRelations reduction16738.relations reduction16738.input reduction16738.output := by lin_cert using reduction16738.terms
theorem substitutionProof16738 : IsMapEvaluation generatorImages reduction16738.relations [8,8,9,13,13,13,13,13,13,23] reduction16738.output := by lin_cert using reduction16738.terms
def image16739 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16739 : InImage map_42_237 image16739 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16739 : Bundle := named_bundle% "RealMapCertificates/relations/basis16739.json"
theorem reductionProof16739 : EqualModuloRelations reduction16739.relations reduction16739.input reduction16739.output := by lin_cert using reduction16739.terms
theorem substitutionProof16739 : IsMapEvaluation generatorImages reduction16739.relations [8,8,8,8,8,17,255] reduction16739.output := by lin_cert using reduction16739.terms
def image16740 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16740 : InImage map_42_237 image16740 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16740 : Bundle := named_bundle% "RealMapCertificates/relations/basis16740.json"
theorem reductionProof16740 : EqualModuloRelations reduction16740.relations reduction16740.input reduction16740.output := by lin_cert using reduction16740.terms
theorem substitutionProof16740 : IsMapEvaluation generatorImages reduction16740.relations [8,8,8,8,8,13,13,13,101] reduction16740.output := by lin_cert using reduction16740.terms
def image16741 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16741 : InImage map_42_237 image16741 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16741 : Bundle := named_bundle% "RealMapCertificates/relations/basis16741.json"
theorem reductionProof16741 : EqualModuloRelations reduction16741.relations reduction16741.input reduction16741.output := by lin_cert using reduction16741.terms
theorem substitutionProof16741 : IsMapEvaluation generatorImages reduction16741.relations [0,64,795] reduction16741.output := by lin_cert using reduction16741.terms
def image16742 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16742 : InImage map_42_237 image16742 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16742 : Bundle := named_bundle% "RealMapCertificates/relations/basis16742.json"
theorem reductionProof16742 : EqualModuloRelations reduction16742.relations reduction16742.input reduction16742.output := by lin_cert using reduction16742.terms
theorem substitutionProof16742 : IsMapEvaluation generatorImages reduction16742.relations [0,0,0,1832] reduction16742.output := by lin_cert using reduction16742.terms
end RealMapCertificates
