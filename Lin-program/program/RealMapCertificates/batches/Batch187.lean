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
  | 59 => []
  | 64 => []
  | 72 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 187 => []
  | 188 => []
  | 209 => []
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 254 => []
  | 260 => []
  | 267 => []
  | 274 => []
  | 278 => []
  | 279 => []
  | 299 => []
  | 346 => []
  | 347 => []
  | 380 => []
  | 382 => []
  | 516 => []
  | 573 => []
  | 599 => []
  | 688 => []
  | 726 => []
  | 753 => [[5,7,9,12,12]]
  | 784 => [[7,7,9,12,12]]
  | 795 => []
  | 820 => [[5,5,5,7,12,12]]
  | 830 => []
  | 862 => []
  | 897 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 928 => [[4,7,7,9,12,12]]
  | 940 => []
  | 963 => []
  | 974 => []
  | 1220 => []
  | 1537 => [[5,5,8,12,12,12]]
  | 1753 => [[4,5,5,8,12,12,12]]
  | 1833 => [[4,5,5,9,12,12,12]]
  | 1855 => []
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1990 => [[4,4,5,5,7,12,12,12]]
  | 1994 => []
  | 2092 => [[4,4,5,5,8,12,12,12]]
  | 2195 => [[4,4,5,5,9,12,12,12]]
  | 2196 => []
  | _ => []
def map_42_238 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16934 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16934 : InImage map_42_238 image16934 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16934 : Bundle := named_bundle% "RealMapCertificates/relations/basis16934.json"
theorem reductionProof16934 : EqualModuloRelations reduction16934.relations reduction16934.input reduction16934.output := by lin_cert using reduction16934.terms
theorem substitutionProof16934 : IsMapEvaluation generatorImages reduction16934.relations [149,516] reduction16934.output := by lin_cert using reduction16934.terms
def image16935 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16935 : InImage map_42_238 image16935 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16935 : Bundle := named_bundle% "RealMapCertificates/relations/basis16935.json"
theorem reductionProof16935 : EqualModuloRelations reduction16935.relations reduction16935.input reduction16935.output := by lin_cert using reduction16935.terms
theorem substitutionProof16935 : IsMapEvaluation generatorImages reduction16935.relations [8,8,8,928] reduction16935.output := by lin_cert using reduction16935.terms
def image16936 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16936 : InImage map_42_238 image16936 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16936 : Bundle := named_bundle% "RealMapCertificates/relations/basis16936.json"
theorem reductionProof16936 : EqualModuloRelations reduction16936.relations reduction16936.input reduction16936.output := by lin_cert using reduction16936.terms
theorem substitutionProof16936 : IsMapEvaluation generatorImages reduction16936.relations [1,64,795] reduction16936.output := by lin_cert using reduction16936.terms
def image16937 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16937 : InImage map_42_238 image16937 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16937 : Bundle := named_bundle% "RealMapCertificates/relations/basis16937.json"
theorem reductionProof16937 : EqualModuloRelations reduction16937.relations reduction16937.input reduction16937.output := by lin_cert using reduction16937.terms
theorem substitutionProof16937 : IsMapEvaluation generatorImages reduction16937.relations [0,0,0,246,260] reduction16937.output := by lin_cert using reduction16937.terms
def map_42_239 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image17167 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17167 : InImage map_42_239 image17167 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17167 : Bundle := named_bundle% "RealMapCertificates/relations/basis17167.json"
theorem reductionProof17167 : EqualModuloRelations reduction17167.relations reduction17167.input reduction17167.output := by lin_cert using reduction17167.terms
theorem substitutionProof17167 : IsMapEvaluation generatorImages reduction17167.relations [64,830] reduction17167.output := by lin_cert using reduction17167.terms
def image17168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17168 : InImage map_42_239 image17168 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17168 : Bundle := named_bundle% "RealMapCertificates/relations/basis17168.json"
theorem reductionProof17168 : EqualModuloRelations reduction17168.relations reduction17168.input reduction17168.output := by lin_cert using reduction17168.terms
theorem substitutionProof17168 : IsMapEvaluation generatorImages reduction17168.relations [17,138,278] reduction17168.output := by lin_cert using reduction17168.terms
def image17169 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17169 : InImage map_42_239 image17169 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17169 : Bundle := named_bundle% "RealMapCertificates/relations/basis17169.json"
theorem reductionProof17169 : EqualModuloRelations reduction17169.relations reduction17169.input reduction17169.output := by lin_cert using reduction17169.terms
theorem substitutionProof17169 : IsMapEvaluation generatorImages reduction17169.relations [8,8,8,9,13,13,248] reduction17169.output := by lin_cert using reduction17169.terms
def image17170 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17170 : InImage map_42_239 image17170 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17170 : Bundle := named_bundle% "RealMapCertificates/relations/basis17170.json"
theorem reductionProof17170 : EqualModuloRelations reduction17170.relations reduction17170.input reduction17170.output := by lin_cert using reduction17170.terms
theorem substitutionProof17170 : IsMapEvaluation generatorImages reduction17170.relations [8,8,8,8,8,8,347] reduction17170.output := by lin_cert using reduction17170.terms
def image17171 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17171 : InImage map_42_239 image17171 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17171 : Bundle := named_bundle% "RealMapCertificates/relations/basis17171.json"
theorem reductionProof17171 : EqualModuloRelations reduction17171.relations reduction17171.input reduction17171.output := by lin_cert using reduction17171.terms
theorem substitutionProof17171 : IsMapEvaluation generatorImages reduction17171.relations [8,8,8,8,8,8,346] reduction17171.output := by lin_cert using reduction17171.terms
def image17172 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17172 : InImage map_42_239 image17172 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17172 : Bundle := named_bundle% "RealMapCertificates/relations/basis17172.json"
theorem reductionProof17172 : EqualModuloRelations reduction17172.relations reduction17172.input reduction17172.output := by lin_cert using reduction17172.terms
theorem substitutionProof17172 : IsMapEvaluation generatorImages reduction17172.relations [0,0,0,0,1855] reduction17172.output := by lin_cert using reduction17172.terms
def map_42_240 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17437 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17437 : InImage map_42_240 image17437 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17437 : Bundle := named_bundle% "RealMapCertificates/relations/basis17437.json"
theorem reductionProof17437 : EqualModuloRelations reduction17437.relations reduction17437.input reduction17437.output := by lin_cert using reduction17437.terms
theorem substitutionProof17437 : IsMapEvaluation generatorImages reduction17437.relations [8,8,64,64,112] reduction17437.output := by lin_cert using reduction17437.terms
def image17438 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17438 : InImage map_42_240 image17438 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17438 : Bundle := named_bundle% "RealMapCertificates/relations/basis17438.json"
theorem reductionProof17438 : EqualModuloRelations reduction17438.relations reduction17438.input reduction17438.output := by lin_cert using reduction17438.terms
theorem substitutionProof17438 : IsMapEvaluation generatorImages reduction17438.relations [8,8,13,13,13,13,13,13,13,23] reduction17438.output := by lin_cert using reduction17438.terms
def image17439 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17439 : InImage map_42_240 image17439 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17439 : Bundle := named_bundle% "RealMapCertificates/relations/basis17439.json"
theorem reductionProof17439 : EqualModuloRelations reduction17439.relations reduction17439.input reduction17439.output := by lin_cert using reduction17439.terms
theorem substitutionProof17439 : IsMapEvaluation generatorImages reduction17439.relations [8,8,8,8,9,13,13,13,101] reduction17439.output := by lin_cert using reduction17439.terms
def image17440 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17440 : InImage map_42_240 image17440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17440 : Bundle := named_bundle% "RealMapCertificates/relations/basis17440.json"
theorem reductionProof17440 : EqualModuloRelations reduction17440.relations reduction17440.input reduction17440.output := by lin_cert using reduction17440.terms
theorem substitutionProof17440 : IsMapEvaluation generatorImages reduction17440.relations [8,8,8,8,8,8,17,188] reduction17440.output := by lin_cert using reduction17440.terms
def map_42_241 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17695 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17695 : InImage map_42_241 image17695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17695 : Bundle := named_bundle% "RealMapCertificates/relations/basis17695.json"
theorem reductionProof17695 : EqualModuloRelations reduction17695.relations reduction17695.input reduction17695.output := by lin_cert using reduction17695.terms
theorem substitutionProof17695 : IsMapEvaluation generatorImages reduction17695.relations [16,149,260] reduction17695.output := by lin_cert using reduction17695.terms
def image17696 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17696 : InImage map_42_241 image17696 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17696 : Bundle := named_bundle% "RealMapCertificates/relations/basis17696.json"
theorem reductionProof17696 : EqualModuloRelations reduction17696.relations reduction17696.input reduction17696.output := by lin_cert using reduction17696.terms
theorem substitutionProof17696 : IsMapEvaluation generatorImages reduction17696.relations [8,8,8,8,753] reduction17696.output := by lin_cert using reduction17696.terms
def map_42_242 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image17929 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17929 : InImage map_42_242 image17929 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17929 : Bundle := named_bundle% "RealMapCertificates/relations/basis17929.json"
theorem reductionProof17929 : EqualModuloRelations reduction17929.relations reduction17929.input reduction17929.output := by lin_cert using reduction17929.terms
theorem substitutionProof17929 : IsMapEvaluation generatorImages reduction17929.relations [64,64,245] reduction17929.output := by lin_cert using reduction17929.terms
def image17930 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17930 : InImage map_42_242 image17930 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17930 : Bundle := named_bundle% "RealMapCertificates/relations/basis17930.json"
theorem reductionProof17930 : EqualModuloRelations reduction17930.relations reduction17930.input reduction17930.output := by lin_cert using reduction17930.terms
theorem substitutionProof17930 : IsMapEvaluation generatorImages reduction17930.relations [16,17,897] reduction17930.output := by lin_cert using reduction17930.terms
def image17931 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17931 : InImage map_42_242 image17931 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17931 : Bundle := named_bundle% "RealMapCertificates/relations/basis17931.json"
theorem reductionProof17931 : EqualModuloRelations reduction17931.relations reduction17931.input reduction17931.output := by lin_cert using reduction17931.terms
theorem substitutionProof17931 : IsMapEvaluation generatorImages reduction17931.relations [8,8,8,13,13,13,248] reduction17931.output := by lin_cert using reduction17931.terms
def image17932 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17932 : InImage map_42_242 image17932 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17932 : Bundle := named_bundle% "RealMapCertificates/relations/basis17932.json"
theorem reductionProof17932 : EqualModuloRelations reduction17932.relations reduction17932.input reduction17932.output := by lin_cert using reduction17932.terms
theorem substitutionProof17932 : IsMapEvaluation generatorImages reduction17932.relations [8,8,8,8,8,9,346] reduction17932.output := by lin_cert using reduction17932.terms
def image17933 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17933 : InImage map_42_242 image17933 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17933 : Bundle := named_bundle% "RealMapCertificates/relations/basis17933.json"
theorem reductionProof17933 : EqualModuloRelations reduction17933.relations reduction17933.input reduction17933.output := by lin_cert using reduction17933.terms
theorem substitutionProof17933 : IsMapEvaluation generatorImages reduction17933.relations [8,8,8,8,8,8,382] reduction17933.output := by lin_cert using reduction17933.terms
def image17934 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17934 : InImage map_42_242 image17934 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17934 : Bundle := named_bundle% "RealMapCertificates/relations/basis17934.json"
theorem reductionProof17934 : EqualModuloRelations reduction17934.relations reduction17934.input reduction17934.output := by lin_cert using reduction17934.terms
theorem substitutionProof17934 : IsMapEvaluation generatorImages reduction17934.relations [1,1990] reduction17934.output := by lin_cert using reduction17934.terms
def image17935 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17935 : InImage map_42_242 image17935 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17935 : Bundle := named_bundle% "RealMapCertificates/relations/basis17935.json"
theorem reductionProof17935 : EqualModuloRelations reduction17935.relations reduction17935.input reduction17935.output := by lin_cert using reduction17935.terms
theorem substitutionProof17935 : IsMapEvaluation generatorImages reduction17935.relations [0,17,149,260] reduction17935.output := by lin_cert using reduction17935.terms
def map_42_243 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18220 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18220 : InImage map_42_243 image18220 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18220 : Bundle := named_bundle% "RealMapCertificates/relations/basis18220.json"
theorem reductionProof18220 : EqualModuloRelations reduction18220.relations reduction18220.input reduction18220.output := by lin_cert using reduction18220.terms
theorem substitutionProof18220 : IsMapEvaluation generatorImages reduction18220.relations [2092] reduction18220.output := by lin_cert using reduction18220.terms
def image18221 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18221 : InImage map_42_243 image18221 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18221 : Bundle := named_bundle% "RealMapCertificates/relations/basis18221.json"
theorem reductionProof18221 : EqualModuloRelations reduction18221.relations reduction18221.input reduction18221.output := by lin_cert using reduction18221.terms
theorem substitutionProof18221 : IsMapEvaluation generatorImages reduction18221.relations [8,9,13,13,13,13,13,13,13,23] reduction18221.output := by lin_cert using reduction18221.terms
def image18222 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18222 : InImage map_42_243 image18222 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18222 : Bundle := named_bundle% "RealMapCertificates/relations/basis18222.json"
theorem reductionProof18222 : EqualModuloRelations reduction18222.relations reduction18222.input reduction18222.output := by lin_cert using reduction18222.terms
theorem substitutionProof18222 : IsMapEvaluation generatorImages reduction18222.relations [8,8,8,64,64,64] reduction18222.output := by lin_cert using reduction18222.terms
def image18223 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18223 : InImage map_42_243 image18223 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18223 : Bundle := named_bundle% "RealMapCertificates/relations/basis18223.json"
theorem reductionProof18223 : EqualModuloRelations reduction18223.relations reduction18223.input reduction18223.output := by lin_cert using reduction18223.terms
theorem substitutionProof18223 : IsMapEvaluation generatorImages reduction18223.relations [8,8,8,8,13,13,13,13,101] reduction18223.output := by lin_cert using reduction18223.terms
def image18224 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18224 : InImage map_42_243 image18224 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18224 : Bundle := named_bundle% "RealMapCertificates/relations/basis18224.json"
theorem reductionProof18224 : EqualModuloRelations reduction18224.relations reduction18224.input reduction18224.output := by lin_cert using reduction18224.terms
theorem substitutionProof18224 : IsMapEvaluation generatorImages reduction18224.relations [8,8,8,8,8,8,20,188] reduction18224.output := by lin_cert using reduction18224.terms
def image18225 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18225 : InImage map_42_243 image18225 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18225 : Bundle := named_bundle% "RealMapCertificates/relations/basis18225.json"
theorem reductionProof18225 : EqualModuloRelations reduction18225.relations reduction18225.input reduction18225.output := by lin_cert using reduction18225.terms
theorem substitutionProof18225 : IsMapEvaluation generatorImages reduction18225.relations [0,64,64,246] reduction18225.output := by lin_cert using reduction18225.terms
def image18226 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18226 : InImage map_42_243 image18226 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18226 : Bundle := named_bundle% "RealMapCertificates/relations/basis18226.json"
theorem reductionProof18226 : EqualModuloRelations reduction18226.relations reduction18226.input reduction18226.output := by lin_cert using reduction18226.terms
theorem substitutionProof18226 : IsMapEvaluation generatorImages reduction18226.relations [0,17,17,897] reduction18226.output := by lin_cert using reduction18226.terms
def map_42_244 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image18430 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18430 : InImage map_42_244 image18430 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18430 : Bundle := named_bundle% "RealMapCertificates/relations/basis18430.json"
theorem reductionProof18430 : EqualModuloRelations reduction18430.relations reduction18430.input reduction18430.output := by lin_cert using reduction18430.terms
theorem substitutionProof18430 : IsMapEvaluation generatorImages reduction18430.relations [8,149,380] reduction18430.output := by lin_cert using reduction18430.terms
def image18431 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18431 : InImage map_42_244 image18431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18431 : Bundle := named_bundle% "RealMapCertificates/relations/basis18431.json"
theorem reductionProof18431 : EqualModuloRelations reduction18431.relations reduction18431.input reduction18431.output := by lin_cert using reduction18431.terms
theorem substitutionProof18431 : IsMapEvaluation generatorImages reduction18431.relations [8,8,8,8,784] reduction18431.output := by lin_cert using reduction18431.terms
def image18432 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18432 : InImage map_42_244 image18432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18432 : Bundle := named_bundle% "RealMapCertificates/relations/basis18432.json"
theorem reductionProof18432 : EqualModuloRelations reduction18432.relations reduction18432.input reduction18432.output := by lin_cert using reduction18432.terms
theorem substitutionProof18432 : IsMapEvaluation generatorImages reduction18432.relations [1,59,64,260] reduction18432.output := by lin_cert using reduction18432.terms
def image18433 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18433 : InImage map_42_244 image18433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18433 : Bundle := named_bundle% "RealMapCertificates/relations/basis18433.json"
theorem reductionProof18433 : EqualModuloRelations reduction18433.relations reduction18433.input reduction18433.output := by lin_cert using reduction18433.terms
theorem substitutionProof18433 : IsMapEvaluation generatorImages reduction18433.relations [0,0,0,64,862] reduction18433.output := by lin_cert using reduction18433.terms
def image18434 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18434 : InImage map_42_244 image18434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18434 : Bundle := named_bundle% "RealMapCertificates/relations/basis18434.json"
theorem reductionProof18434 : EqualModuloRelations reduction18434.relations reduction18434.input reduction18434.output := by lin_cert using reduction18434.terms
theorem substitutionProof18434 : IsMapEvaluation generatorImages reduction18434.relations [0,0,0,0,0,0,260,260] reduction18434.output := by lin_cert using reduction18434.terms
def map_42_245 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18679 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18679 : InImage map_42_245 image18679 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18679 : Bundle := named_bundle% "RealMapCertificates/relations/basis18679.json"
theorem reductionProof18679 : EqualModuloRelations reduction18679.relations reduction18679.input reduction18679.output := by lin_cert using reduction18679.terms
theorem substitutionProof18679 : IsMapEvaluation generatorImages reduction18679.relations [8,64,688] reduction18679.output := by lin_cert using reduction18679.terms
def image18680 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18680 : InImage map_42_245 image18680 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18680 : Bundle := named_bundle% "RealMapCertificates/relations/basis18680.json"
theorem reductionProof18680 : EqualModuloRelations reduction18680.relations reduction18680.input reduction18680.output := by lin_cert using reduction18680.terms
theorem substitutionProof18680 : IsMapEvaluation generatorImages reduction18680.relations [8,17,113,260] reduction18680.output := by lin_cert using reduction18680.terms
def image18681 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18681 : InImage map_42_245 image18681 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18681 : Bundle := named_bundle% "RealMapCertificates/relations/basis18681.json"
theorem reductionProof18681 : EqualModuloRelations reduction18681.relations reduction18681.input reduction18681.output := by lin_cert using reduction18681.terms
theorem substitutionProof18681 : IsMapEvaluation generatorImages reduction18681.relations [8,8,9,13,13,13,248] reduction18681.output := by lin_cert using reduction18681.terms
def image18682 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18682 : InImage map_42_245 image18682 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18682 : Bundle := named_bundle% "RealMapCertificates/relations/basis18682.json"
theorem reductionProof18682 : EqualModuloRelations reduction18682.relations reduction18682.input reduction18682.output := by lin_cert using reduction18682.terms
theorem substitutionProof18682 : IsMapEvaluation generatorImages reduction18682.relations [8,8,8,8,8,13,346] reduction18682.output := by lin_cert using reduction18682.terms
def image18683 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18683 : InImage map_42_245 image18683 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18683 : Bundle := named_bundle% "RealMapCertificates/relations/basis18683.json"
theorem reductionProof18683 : EqualModuloRelations reduction18683.relations reduction18683.input reduction18683.output := by lin_cert using reduction18683.terms
theorem substitutionProof18683 : IsMapEvaluation generatorImages reduction18683.relations [8,8,8,8,8,8,16,209] reduction18683.output := by lin_cert using reduction18683.terms
def image18684 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18684 : InImage map_42_245 image18684 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18684 : Bundle := named_bundle% "RealMapCertificates/relations/basis18684.json"
theorem reductionProof18684 : EqualModuloRelations reduction18684.relations reduction18684.input reduction18684.output := by lin_cert using reduction18684.terms
theorem substitutionProof18684 : IsMapEvaluation generatorImages reduction18684.relations [0,0,0,0,0,260,274] reduction18684.output := by lin_cert using reduction18684.terms
def image18685 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18685 : InImage map_42_245 image18685 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18685 : Bundle := named_bundle% "RealMapCertificates/relations/basis18685.json"
theorem reductionProof18685 : EqualModuloRelations reduction18685.relations reduction18685.input reduction18685.output := by lin_cert using reduction18685.terms
theorem substitutionProof18685 : IsMapEvaluation generatorImages reduction18685.relations [0,0,0,0,0,0,0,1926] reduction18685.output := by lin_cert using reduction18685.terms
def map_42_246 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18975 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation18975 : InImage map_42_246 image18975 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18975 : Bundle := named_bundle% "RealMapCertificates/relations/basis18975.json"
theorem reductionProof18975 : EqualModuloRelations reduction18975.relations reduction18975.input reduction18975.output := by lin_cert using reduction18975.terms
theorem substitutionProof18975 : IsMapEvaluation generatorImages reduction18975.relations [2195] reduction18975.output := by lin_cert using reduction18975.terms
def image18976 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18976 : InImage map_42_246 image18976 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18976 : Bundle := named_bundle% "RealMapCertificates/relations/basis18976.json"
theorem reductionProof18976 : EqualModuloRelations reduction18976.relations reduction18976.input reduction18976.output := by lin_cert using reduction18976.terms
theorem substitutionProof18976 : IsMapEvaluation generatorImages reduction18976.relations [8,13,13,13,13,13,13,13,13,23] reduction18976.output := by lin_cert using reduction18976.terms
def image18977 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18977 : InImage map_42_246 image18977 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18977 : Bundle := named_bundle% "RealMapCertificates/relations/basis18977.json"
theorem reductionProof18977 : EqualModuloRelations reduction18977.relations reduction18977.input reduction18977.output := by lin_cert using reduction18977.terms
theorem substitutionProof18977 : IsMapEvaluation generatorImages reduction18977.relations [8,8,8,64,64,72] reduction18977.output := by lin_cert using reduction18977.terms
def image18978 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18978 : InImage map_42_246 image18978 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18978 : Bundle := named_bundle% "RealMapCertificates/relations/basis18978.json"
theorem reductionProof18978 : EqualModuloRelations reduction18978.relations reduction18978.input reduction18978.output := by lin_cert using reduction18978.terms
theorem substitutionProof18978 : IsMapEvaluation generatorImages reduction18978.relations [8,8,8,9,13,13,13,13,101] reduction18978.output := by lin_cert using reduction18978.terms
def image18979 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18979 : InImage map_42_246 image18979 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18979 : Bundle := named_bundle% "RealMapCertificates/relations/basis18979.json"
theorem reductionProof18979 : EqualModuloRelations reduction18979.relations reduction18979.input reduction18979.output := by lin_cert using reduction18979.terms
theorem substitutionProof18979 : IsMapEvaluation generatorImages reduction18979.relations [8,8,8,8,8,8,8,267] reduction18979.output := by lin_cert using reduction18979.terms
def image18980 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18980 : InImage map_42_246 image18980 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18980 : Bundle := named_bundle% "RealMapCertificates/relations/basis18980.json"
theorem reductionProof18980 : EqualModuloRelations reduction18980.relations reduction18980.input reduction18980.output := by lin_cert using reduction18980.terms
theorem substitutionProof18980 : IsMapEvaluation generatorImages reduction18980.relations [0,0,0,0,0,0,0,1967] reduction18980.output := by lin_cert using reduction18980.terms
def map_42_247 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image19229 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19229 : InImage map_42_247 image19229 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19229 : Bundle := named_bundle% "RealMapCertificates/relations/basis19229.json"
theorem reductionProof19229 : EqualModuloRelations reduction19229.relations reduction19229.input reduction19229.output := by lin_cert using reduction19229.terms
theorem substitutionProof19229 : IsMapEvaluation generatorImages reduction19229.relations [64,149,149] reduction19229.output := by lin_cert using reduction19229.terms
def image19230 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19230 : InImage map_42_247 image19230 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19230 : Bundle := named_bundle% "RealMapCertificates/relations/basis19230.json"
theorem reductionProof19230 : EqualModuloRelations reduction19230.relations reduction19230.input reduction19230.output := by lin_cert using reduction19230.terms
theorem substitutionProof19230 : IsMapEvaluation generatorImages reduction19230.relations [8,8,149,260] reduction19230.output := by lin_cert using reduction19230.terms
def image19231 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19231 : InImage map_42_247 image19231 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19231 : Bundle := named_bundle% "RealMapCertificates/relations/basis19231.json"
theorem reductionProof19231 : EqualModuloRelations reduction19231.relations reduction19231.input reduction19231.output := by lin_cert using reduction19231.terms
theorem substitutionProof19231 : IsMapEvaluation generatorImages reduction19231.relations [8,8,8,9,784] reduction19231.output := by lin_cert using reduction19231.terms
def image19232 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19232 : InImage map_42_247 image19232 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19232 : Bundle := named_bundle% "RealMapCertificates/relations/basis19232.json"
theorem reductionProof19232 : EqualModuloRelations reduction19232.relations reduction19232.input reduction19232.output := by lin_cert using reduction19232.terms
theorem substitutionProof19232 : IsMapEvaluation generatorImages reduction19232.relations [0,0,0,0,0,0,0,0,0,1927] reduction19232.output := by lin_cert using reduction19232.terms
def map_42_248 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19479 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19479 : InImage map_42_248 image19479 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19479 : Bundle := named_bundle% "RealMapCertificates/relations/basis19479.json"
theorem reductionProof19479 : EqualModuloRelations reduction19479.relations reduction19479.input reduction19479.output := by lin_cert using reduction19479.terms
theorem substitutionProof19479 : IsMapEvaluation generatorImages reduction19479.relations [8,64,726] reduction19479.output := by lin_cert using reduction19479.terms
def image19480 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19480 : InImage map_42_248 image19480 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19480 : Bundle := named_bundle% "RealMapCertificates/relations/basis19480.json"
theorem reductionProof19480 : EqualModuloRelations reduction19480.relations reduction19480.input reduction19480.output := by lin_cert using reduction19480.terms
theorem substitutionProof19480 : IsMapEvaluation generatorImages reduction19480.relations [8,8,17,897] reduction19480.output := by lin_cert using reduction19480.terms
def image19481 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19481 : InImage map_42_248 image19481 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19481 : Bundle := named_bundle% "RealMapCertificates/relations/basis19481.json"
theorem reductionProof19481 : EqualModuloRelations reduction19481.relations reduction19481.input reduction19481.output := by lin_cert using reduction19481.terms
theorem substitutionProof19481 : IsMapEvaluation generatorImages reduction19481.relations [8,8,13,13,13,13,248] reduction19481.output := by lin_cert using reduction19481.terms
def image19482 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19482 : InImage map_42_248 image19482 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19482 : Bundle := named_bundle% "RealMapCertificates/relations/basis19482.json"
theorem reductionProof19482 : EqualModuloRelations reduction19482.relations reduction19482.input reduction19482.output := by lin_cert using reduction19482.terms
theorem substitutionProof19482 : IsMapEvaluation generatorImages reduction19482.relations [8,8,8,8,9,13,346] reduction19482.output := by lin_cert using reduction19482.terms
def image19483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19483 : InImage map_42_248 image19483 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19483 : Bundle := named_bundle% "RealMapCertificates/relations/basis19483.json"
theorem reductionProof19483 : EqualModuloRelations reduction19483.relations reduction19483.input reduction19483.output := by lin_cert using reduction19483.terms
theorem substitutionProof19483 : IsMapEvaluation generatorImages reduction19483.relations [8,8,8,8,8,8,8,279] reduction19483.output := by lin_cert using reduction19483.terms
def image19484 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19484 : InImage map_42_248 image19484 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19484 : Bundle := named_bundle% "RealMapCertificates/relations/basis19484.json"
theorem reductionProof19484 : EqualModuloRelations reduction19484.relations reduction19484.input reduction19484.output := by lin_cert using reduction19484.terms
theorem substitutionProof19484 : IsMapEvaluation generatorImages reduction19484.relations [0,64,927] reduction19484.output := by lin_cert using reduction19484.terms
def image19485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19485 : InImage map_42_248 image19485 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19485 : Bundle := named_bundle% "RealMapCertificates/relations/basis19485.json"
theorem reductionProof19485 : EqualModuloRelations reduction19485.relations reduction19485.input reduction19485.output := by lin_cert using reduction19485.terms
theorem substitutionProof19485 : IsMapEvaluation generatorImages reduction19485.relations [0,0,0,0,0,0,0,0,1994] reduction19485.output := by lin_cert using reduction19485.terms
def map_42_249 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19789 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19789 : InImage map_42_249 image19789 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19789 : Bundle := named_bundle% "RealMapCertificates/relations/basis19789.json"
theorem reductionProof19789 : EqualModuloRelations reduction19789.relations reduction19789.input reduction19789.output := by lin_cert using reduction19789.terms
theorem substitutionProof19789 : IsMapEvaluation generatorImages reduction19789.relations [9,13,13,13,13,13,13,13,13,23] reduction19789.output := by lin_cert using reduction19789.terms
def image19790 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation19790 : InImage map_42_249 image19790 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19790 : Bundle := named_bundle% "RealMapCertificates/relations/basis19790.json"
theorem reductionProof19790 : EqualModuloRelations reduction19790.relations reduction19790.input reduction19790.output := by lin_cert using reduction19790.terms
theorem substitutionProof19790 : IsMapEvaluation generatorImages reduction19790.relations [8,1753] reduction19790.output := by lin_cert using reduction19790.terms
def image19791 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19791 : InImage map_42_249 image19791 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19791 : Bundle := named_bundle% "RealMapCertificates/relations/basis19791.json"
theorem reductionProof19791 : EqualModuloRelations reduction19791.relations reduction19791.input reduction19791.output := by lin_cert using reduction19791.terms
theorem substitutionProof19791 : IsMapEvaluation generatorImages reduction19791.relations [8,8,8,16,64,187] reduction19791.output := by lin_cert using reduction19791.terms
def image19792 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19792 : InImage map_42_249 image19792 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19792 : Bundle := named_bundle% "RealMapCertificates/relations/basis19792.json"
theorem reductionProof19792 : EqualModuloRelations reduction19792.relations reduction19792.input reduction19792.output := by lin_cert using reduction19792.terms
theorem substitutionProof19792 : IsMapEvaluation generatorImages reduction19792.relations [8,8,8,13,13,13,13,13,101] reduction19792.output := by lin_cert using reduction19792.terms
def image19793 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19793 : InImage map_42_249 image19793 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19793 : Bundle := named_bundle% "RealMapCertificates/relations/basis19793.json"
theorem reductionProof19793 : EqualModuloRelations reduction19793.relations reduction19793.input reduction19793.output := by lin_cert using reduction19793.terms
theorem substitutionProof19793 : IsMapEvaluation generatorImages reduction19793.relations [8,8,8,8,8,8,9,267] reduction19793.output := by lin_cert using reduction19793.terms
def image19794 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19794 : InImage map_42_249 image19794 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19794 : Bundle := named_bundle% "RealMapCertificates/relations/basis19794.json"
theorem reductionProof19794 : EqualModuloRelations reduction19794.relations reduction19794.input reduction19794.output := by lin_cert using reduction19794.terms
theorem substitutionProof19794 : IsMapEvaluation generatorImages reduction19794.relations [0,0,0,0,64,64,260] reduction19794.output := by lin_cert using reduction19794.terms
def map_42_250 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20013 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20013 : InImage map_42_250 image20013 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20013 : Bundle := named_bundle% "RealMapCertificates/relations/basis20013.json"
theorem reductionProof20013 : EqualModuloRelations reduction20013.relations reduction20013.input reduction20013.output := by lin_cert using reduction20013.terms
theorem substitutionProof20013 : IsMapEvaluation generatorImages reduction20013.relations [64,149,160] reduction20013.output := by lin_cert using reduction20013.terms
def image20014 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20014 : InImage map_42_250 image20014 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20014 : Bundle := named_bundle% "RealMapCertificates/relations/basis20014.json"
theorem reductionProof20014 : EqualModuloRelations reduction20014.relations reduction20014.input reduction20014.output := by lin_cert using reduction20014.terms
theorem substitutionProof20014 : IsMapEvaluation generatorImages reduction20014.relations [8,8,149,278] reduction20014.output := by lin_cert using reduction20014.terms
def image20015 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20015 : InImage map_42_250 image20015 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20015 : Bundle := named_bundle% "RealMapCertificates/relations/basis20015.json"
theorem reductionProof20015 : EqualModuloRelations reduction20015.relations reduction20015.input reduction20015.output := by lin_cert using reduction20015.terms
theorem substitutionProof20015 : IsMapEvaluation generatorImages reduction20015.relations [8,8,8,13,784] reduction20015.output := by lin_cert using reduction20015.terms
def image20016 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20016 : InImage map_42_250 image20016 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20016 : Bundle := named_bundle% "RealMapCertificates/relations/basis20016.json"
theorem reductionProof20016 : EqualModuloRelations reduction20016.relations reduction20016.input reduction20016.output := by lin_cert using reduction20016.terms
theorem substitutionProof20016 : IsMapEvaluation generatorImages reduction20016.relations [0,0,0,0,2196] reduction20016.output := by lin_cert using reduction20016.terms
def image20017 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20017 : InImage map_42_250 image20017 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20017 : Bundle := named_bundle% "RealMapCertificates/relations/basis20017.json"
theorem reductionProof20017 : EqualModuloRelations reduction20017.relations reduction20017.input reduction20017.output := by lin_cert using reduction20017.terms
theorem substitutionProof20017 : IsMapEvaluation generatorImages reduction20017.relations [0,0,0,0,0,64,897] reduction20017.output := by lin_cert using reduction20017.terms
def map_42_251 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20295 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20295 : InImage map_42_251 image20295 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20295 : Bundle := named_bundle% "RealMapCertificates/relations/basis20295.json"
theorem reductionProof20295 : EqualModuloRelations reduction20295.relations reduction20295.input reduction20295.output := by lin_cert using reduction20295.terms
theorem substitutionProof20295 : IsMapEvaluation generatorImages reduction20295.relations [8,9,13,13,13,13,248] reduction20295.output := by lin_cert using reduction20295.terms
def image20296 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20296 : InImage map_42_251 image20296 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20296 : Bundle := named_bundle% "RealMapCertificates/relations/basis20296.json"
theorem reductionProof20296 : EqualModuloRelations reduction20296.relations reduction20296.input reduction20296.output := by lin_cert using reduction20296.terms
theorem substitutionProof20296 : IsMapEvaluation generatorImages reduction20296.relations [8,8,64,573] reduction20296.output := by lin_cert using reduction20296.terms
def image20297 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20297 : InImage map_42_251 image20297 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20297 : Bundle := named_bundle% "RealMapCertificates/relations/basis20297.json"
theorem reductionProof20297 : EqualModuloRelations reduction20297.relations reduction20297.input reduction20297.output := by lin_cert using reduction20297.terms
theorem substitutionProof20297 : IsMapEvaluation generatorImages reduction20297.relations [8,8,17,940] reduction20297.output := by lin_cert using reduction20297.terms
def image20298 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20298 : InImage map_42_251 image20298 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20298 : Bundle := named_bundle% "RealMapCertificates/relations/basis20298.json"
theorem reductionProof20298 : EqualModuloRelations reduction20298.relations reduction20298.input reduction20298.output := by lin_cert using reduction20298.terms
theorem substitutionProof20298 : IsMapEvaluation generatorImages reduction20298.relations [8,8,8,8,13,13,346] reduction20298.output := by lin_cert using reduction20298.terms
def image20299 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20299 : InImage map_42_251 image20299 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20299 : Bundle := named_bundle% "RealMapCertificates/relations/basis20299.json"
theorem reductionProof20299 : EqualModuloRelations reduction20299.relations reduction20299.input reduction20299.output := by lin_cert using reduction20299.terms
theorem substitutionProof20299 : IsMapEvaluation generatorImages reduction20299.relations [8,8,8,8,8,8,8,8,209] reduction20299.output := by lin_cert using reduction20299.terms
def image20300 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20300 : InImage map_42_251 image20300 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20300 : Bundle := named_bundle% "RealMapCertificates/relations/basis20300.json"
theorem reductionProof20300 : EqualModuloRelations reduction20300.relations reduction20300.input reduction20300.output := by lin_cert using reduction20300.terms
theorem substitutionProof20300 : IsMapEvaluation generatorImages reduction20300.relations [0,0,0,0,0,64,919] reduction20300.output := by lin_cert using reduction20300.terms
def map_42_252 : Matrix 3 5 := fun i j => ([true,false,false,false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20595 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation20595 : InImage map_42_252 image20595 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20595 : Bundle := named_bundle% "RealMapCertificates/relations/basis20595.json"
theorem reductionProof20595 : EqualModuloRelations reduction20595.relations reduction20595.input reduction20595.output := by lin_cert using reduction20595.terms
theorem substitutionProof20595 : IsMapEvaluation generatorImages reduction20595.relations [13,13,13,13,13,13,13,13,13,23] reduction20595.output := by lin_cert using reduction20595.terms
def image20596 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation20596 : InImage map_42_252 image20596 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20596 : Bundle := named_bundle% "RealMapCertificates/relations/basis20596.json"
theorem reductionProof20596 : EqualModuloRelations reduction20596.relations reduction20596.input reduction20596.output := by lin_cert using reduction20596.terms
theorem substitutionProof20596 : IsMapEvaluation generatorImages reduction20596.relations [8,1833] reduction20596.output := by lin_cert using reduction20596.terms
def image20597 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20597 : InImage map_42_252 image20597 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20597 : Bundle := named_bundle% "RealMapCertificates/relations/basis20597.json"
theorem reductionProof20597 : EqualModuloRelations reduction20597.relations reduction20597.input reduction20597.output := by lin_cert using reduction20597.terms
theorem substitutionProof20597 : IsMapEvaluation generatorImages reduction20597.relations [8,8,9,13,13,13,13,13,101] reduction20597.output := by lin_cert using reduction20597.terms
def image20598 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20598 : InImage map_42_252 image20598 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20598 : Bundle := named_bundle% "RealMapCertificates/relations/basis20598.json"
theorem reductionProof20598 : EqualModuloRelations reduction20598.relations reduction20598.input reduction20598.output := by lin_cert using reduction20598.terms
theorem substitutionProof20598 : IsMapEvaluation generatorImages reduction20598.relations [8,8,8,8,64,254] reduction20598.output := by lin_cert using reduction20598.terms
def image20599 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20599 : InImage map_42_252 image20599 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20599 : Bundle := named_bundle% "RealMapCertificates/relations/basis20599.json"
theorem reductionProof20599 : EqualModuloRelations reduction20599.relations reduction20599.input reduction20599.output := by lin_cert using reduction20599.terms
theorem substitutionProof20599 : IsMapEvaluation generatorImages reduction20599.relations [8,8,8,8,8,8,13,267] reduction20599.output := by lin_cert using reduction20599.terms
def map_42_253 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image20839 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20839 : InImage map_42_253 image20839 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20839 : Bundle := named_bundle% "RealMapCertificates/relations/basis20839.json"
theorem reductionProof20839 : EqualModuloRelations reduction20839.relations reduction20839.input reduction20839.output := by lin_cert using reduction20839.terms
theorem substitutionProof20839 : IsMapEvaluation generatorImages reduction20839.relations [8,1855] reduction20839.output := by lin_cert using reduction20839.terms
def image20840 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20840 : InImage map_42_253 image20840 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20840 : Bundle := named_bundle% "RealMapCertificates/relations/basis20840.json"
theorem reductionProof20840 : EqualModuloRelations reduction20840.relations reduction20840.input reduction20840.output := by lin_cert using reduction20840.terms
theorem substitutionProof20840 : IsMapEvaluation generatorImages reduction20840.relations [8,8,16,963] reduction20840.output := by lin_cert using reduction20840.terms
def image20841 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20841 : InImage map_42_253 image20841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20841 : Bundle := named_bundle% "RealMapCertificates/relations/basis20841.json"
theorem reductionProof20841 : EqualModuloRelations reduction20841.relations reduction20841.input reduction20841.output := by lin_cert using reduction20841.terms
theorem substitutionProof20841 : IsMapEvaluation generatorImages reduction20841.relations [8,8,9,13,784] reduction20841.output := by lin_cert using reduction20841.terms
def map_42_254 : Matrix 2 7 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image21114 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21114 : InImage map_42_254 image21114 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction21114 : Bundle := named_bundle% "RealMapCertificates/relations/basis21114.json"
theorem reductionProof21114 : EqualModuloRelations reduction21114.relations reduction21114.input reduction21114.output := by lin_cert using reduction21114.terms
theorem substitutionProof21114 : IsMapEvaluation generatorImages reduction21114.relations [8,13,13,13,13,13,248] reduction21114.output := by lin_cert using reduction21114.terms
def image21115 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21115 : InImage map_42_254 image21115 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction21115 : Bundle := named_bundle% "RealMapCertificates/relations/basis21115.json"
theorem reductionProof21115 : EqualModuloRelations reduction21115.relations reduction21115.input reduction21115.output := by lin_cert using reduction21115.terms
theorem substitutionProof21115 : IsMapEvaluation generatorImages reduction21115.relations [8,8,64,599] reduction21115.output := by lin_cert using reduction21115.terms
def image21116 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21116 : InImage map_42_254 image21116 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction21116 : Bundle := named_bundle% "RealMapCertificates/relations/basis21116.json"
theorem reductionProof21116 : EqualModuloRelations reduction21116.relations reduction21116.input reduction21116.output := by lin_cert using reduction21116.terms
theorem substitutionProof21116 : IsMapEvaluation generatorImages reduction21116.relations [8,8,16,974] reduction21116.output := by lin_cert using reduction21116.terms
def image21117 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21117 : InImage map_42_254 image21117 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction21117 : Bundle := named_bundle% "RealMapCertificates/relations/basis21117.json"
theorem reductionProof21117 : EqualModuloRelations reduction21117.relations reduction21117.input reduction21117.output := by lin_cert using reduction21117.terms
theorem substitutionProof21117 : IsMapEvaluation generatorImages reduction21117.relations [8,8,8,9,13,13,346] reduction21117.output := by lin_cert using reduction21117.terms
def image21118 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21118 : InImage map_42_254 image21118 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction21118 : Bundle := named_bundle% "RealMapCertificates/relations/basis21118.json"
theorem reductionProof21118 : EqualModuloRelations reduction21118.relations reduction21118.input reduction21118.output := by lin_cert using reduction21118.terms
theorem substitutionProof21118 : IsMapEvaluation generatorImages reduction21118.relations [8,8,8,8,8,8,8,9,209] reduction21118.output := by lin_cert using reduction21118.terms
def image21119 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21119 : InImage map_42_254 image21119 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction21119 : Bundle := named_bundle% "RealMapCertificates/relations/basis21119.json"
theorem reductionProof21119 : EqualModuloRelations reduction21119.relations reduction21119.input reduction21119.output := by lin_cert using reduction21119.terms
theorem substitutionProof21119 : IsMapEvaluation generatorImages reduction21119.relations [1,5,260,260] reduction21119.output := by lin_cert using reduction21119.terms
def image21120 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21120 : InImage map_42_254 image21120 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction21120 : Bundle := named_bundle% "RealMapCertificates/relations/basis21120.json"
theorem reductionProof21120 : EqualModuloRelations reduction21120.relations reduction21120.input reduction21120.output := by lin_cert using reduction21120.terms
theorem substitutionProof21120 : IsMapEvaluation generatorImages reduction21120.relations [0,0,64,64,64,64] reduction21120.output := by lin_cert using reduction21120.terms
def map_42_255 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21468 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21468 : InImage map_42_255 image21468 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21468 : Bundle := named_bundle% "RealMapCertificates/relations/basis21468.json"
theorem reductionProof21468 : EqualModuloRelations reduction21468.relations reduction21468.input reduction21468.output := by lin_cert using reduction21468.terms
theorem substitutionProof21468 : IsMapEvaluation generatorImages reduction21468.relations [8,8,1537] reduction21468.output := by lin_cert using reduction21468.terms
def image21469 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21469 : InImage map_42_255 image21469 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21469 : Bundle := named_bundle% "RealMapCertificates/relations/basis21469.json"
theorem reductionProof21469 : EqualModuloRelations reduction21469.relations reduction21469.input reduction21469.output := by lin_cert using reduction21469.terms
theorem substitutionProof21469 : IsMapEvaluation generatorImages reduction21469.relations [8,8,13,13,13,13,13,13,101] reduction21469.output := by lin_cert using reduction21469.terms
def image21470 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21470 : InImage map_42_255 image21470 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21470 : Bundle := named_bundle% "RealMapCertificates/relations/basis21470.json"
theorem reductionProof21470 : EqualModuloRelations reduction21470.relations reduction21470.input reduction21470.output := by lin_cert using reduction21470.terms
theorem substitutionProof21470 : IsMapEvaluation generatorImages reduction21470.relations [8,8,8,8,8,64,187] reduction21470.output := by lin_cert using reduction21470.terms
def image21471 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21471 : InImage map_42_255 image21471 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21471 : Bundle := named_bundle% "RealMapCertificates/relations/basis21471.json"
theorem reductionProof21471 : EqualModuloRelations reduction21471.relations reduction21471.input reduction21471.output := by lin_cert using reduction21471.terms
theorem substitutionProof21471 : IsMapEvaluation generatorImages reduction21471.relations [8,8,8,8,8,9,13,267] reduction21471.output := by lin_cert using reduction21471.terms
def image21472 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21472 : InImage map_42_255 image21472 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21472 : Bundle := named_bundle% "RealMapCertificates/relations/basis21472.json"
theorem reductionProof21472 : EqualModuloRelations reduction21472.relations reduction21472.input reduction21472.output := by lin_cert using reduction21472.terms
theorem substitutionProof21472 : IsMapEvaluation generatorImages reduction21472.relations [0,0,0,64,64,299] reduction21472.output := by lin_cert using reduction21472.terms
def map_42_256 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21733 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21733 : InImage map_42_256 image21733 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21733 : Bundle := named_bundle% "RealMapCertificates/relations/basis21733.json"
theorem reductionProof21733 : EqualModuloRelations reduction21733.relations reduction21733.input reduction21733.output := by lin_cert using reduction21733.terms
theorem substitutionProof21733 : IsMapEvaluation generatorImages reduction21733.relations [8,64,820] reduction21733.output := by lin_cert using reduction21733.terms
def image21734 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21734 : InImage map_42_256 image21734 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21734 : Bundle := named_bundle% "RealMapCertificates/relations/basis21734.json"
theorem reductionProof21734 : EqualModuloRelations reduction21734.relations reduction21734.input reduction21734.output := by lin_cert using reduction21734.terms
theorem substitutionProof21734 : IsMapEvaluation generatorImages reduction21734.relations [8,8,13,13,784] reduction21734.output := by lin_cert using reduction21734.terms
def image21735 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21735 : InImage map_42_256 image21735 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21735 : Bundle := named_bundle% "RealMapCertificates/relations/basis21735.json"
theorem reductionProof21735 : EqualModuloRelations reduction21735.relations reduction21735.input reduction21735.output := by lin_cert using reduction21735.terms
theorem substitutionProof21735 : IsMapEvaluation generatorImages reduction21735.relations [8,8,8,1220] reduction21735.output := by lin_cert using reduction21735.terms
def image21736 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21736 : InImage map_42_256 image21736 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21736 : Bundle := named_bundle% "RealMapCertificates/relations/basis21736.json"
theorem reductionProof21736 : EqualModuloRelations reduction21736.relations reduction21736.input reduction21736.output := by lin_cert using reduction21736.terms
theorem substitutionProof21736 : IsMapEvaluation generatorImages reduction21736.relations [1,1,64,64,64,64] reduction21736.output := by lin_cert using reduction21736.terms
def image21737 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21737 : InImage map_42_256 image21737 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21737 : Bundle := named_bundle% "RealMapCertificates/relations/basis21737.json"
theorem reductionProof21737 : EqualModuloRelations reduction21737.relations reduction21737.input reduction21737.output := by lin_cert using reduction21737.terms
theorem substitutionProof21737 : IsMapEvaluation generatorImages reduction21737.relations [0,0,0,0,0,0,64,963] reduction21737.output := by lin_cert using reduction21737.terms
end RealMapCertificates
