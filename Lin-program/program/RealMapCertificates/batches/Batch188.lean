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
  | 22 => [[5,8]]
  | 33 => []
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 101 => []
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 117 => [[4,4,4,4,5,6]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 185 => [[0,4,4,8,12]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 201 => []
  | 209 => []
  | 212 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 267 => []
  | 290 => [[2,4,4,4,4,4,4,4,4,4,4]]
  | 292 => []
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 301 => []
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 342 => [[3,4,4,4,4,4,4,4,4,4,4]]
  | 343 => [[4,4,4,6,8,12]]
  | 346 => []
  | 380 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 404 => [[0,0,8,12,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 455 => []
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 492 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 642 => [[7,10,12,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 784 => [[7,7,9,12,12]]
  | 795 => []
  | 807 => []
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 963 => []
  | 974 => []
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1094 => []
  | 1593 => [[5,5,9,12,12,12]]
  | 1639 => [[5,7,9,12,12,12]]
  | 2307 => []
  | 2340 => []
  | 2742 => [[0,0,4,8,12,12,12,12]]
  | 2861 => []
  | _ => []
def map_42_257 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22068 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22068 : InImage map_42_257 image22068 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22068 : Bundle := named_bundle% "RealMapCertificates/relations/basis22068.json"
theorem reductionProof22068 : EqualModuloRelations reduction22068.relations reduction22068.input reduction22068.output := by lin_cert using reduction22068.terms
theorem substitutionProof22068 : IsMapEvaluation generatorImages reduction22068.relations [9,13,13,13,13,13,248] reduction22068.output := by lin_cert using reduction22068.terms
def image22069 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22069 : InImage map_42_257 image22069 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22069 : Bundle := named_bundle% "RealMapCertificates/relations/basis22069.json"
theorem reductionProof22069 : EqualModuloRelations reduction22069.relations reduction22069.input reduction22069.output := by lin_cert using reduction22069.terms
theorem substitutionProof22069 : IsMapEvaluation generatorImages reduction22069.relations [8,8,8,113,292] reduction22069.output := by lin_cert using reduction22069.terms
def image22070 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22070 : InImage map_42_257 image22070 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22070 : Bundle := named_bundle% "RealMapCertificates/relations/basis22070.json"
theorem reductionProof22070 : EqualModuloRelations reduction22070.relations reduction22070.input reduction22070.output := by lin_cert using reduction22070.terms
theorem substitutionProof22070 : IsMapEvaluation generatorImages reduction22070.relations [8,8,8,64,455] reduction22070.output := by lin_cert using reduction22070.terms
def image22071 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22071 : InImage map_42_257 image22071 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22071 : Bundle := named_bundle% "RealMapCertificates/relations/basis22071.json"
theorem reductionProof22071 : EqualModuloRelations reduction22071.relations reduction22071.input reduction22071.output := by lin_cert using reduction22071.terms
theorem substitutionProof22071 : IsMapEvaluation generatorImages reduction22071.relations [8,8,8,13,13,13,346] reduction22071.output := by lin_cert using reduction22071.terms
def image22072 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22072 : InImage map_42_257 image22072 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22072 : Bundle := named_bundle% "RealMapCertificates/relations/basis22072.json"
theorem reductionProof22072 : EqualModuloRelations reduction22072.relations reduction22072.input reduction22072.output := by lin_cert using reduction22072.terms
theorem substitutionProof22072 : IsMapEvaluation generatorImages reduction22072.relations [8,8,8,8,8,8,8,13,209] reduction22072.output := by lin_cert using reduction22072.terms
def image22073 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22073 : InImage map_42_257 image22073 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22073 : Bundle := named_bundle% "RealMapCertificates/relations/basis22073.json"
theorem reductionProof22073 : EqualModuloRelations reduction22073.relations reduction22073.input reduction22073.output := by lin_cert using reduction22073.terms
theorem substitutionProof22073 : IsMapEvaluation generatorImages reduction22073.relations [0,0,0,0,0,64,64,301] reduction22073.output := by lin_cert using reduction22073.terms
def map_42_258 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22428 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22428 : InImage map_42_258 image22428 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22428 : Bundle := named_bundle% "RealMapCertificates/relations/basis22428.json"
theorem reductionProof22428 : EqualModuloRelations reduction22428.relations reduction22428.input reduction22428.output := by lin_cert using reduction22428.terms
theorem substitutionProof22428 : IsMapEvaluation generatorImages reduction22428.relations [13,13,13,13,13,13,13,13,13,33] reduction22428.output := by lin_cert using reduction22428.terms
def image22429 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22429 : InImage map_42_258 image22429 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22429 : Bundle := named_bundle% "RealMapCertificates/relations/basis22429.json"
theorem reductionProof22429 : EqualModuloRelations reduction22429.relations reduction22429.input reduction22429.output := by lin_cert using reduction22429.terms
theorem substitutionProof22429 : IsMapEvaluation generatorImages reduction22429.relations [8,9,13,13,13,13,13,13,101] reduction22429.output := by lin_cert using reduction22429.terms
def image22430 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22430 : InImage map_42_258 image22430 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22430 : Bundle := named_bundle% "RealMapCertificates/relations/basis22430.json"
theorem reductionProof22430 : EqualModuloRelations reduction22430.relations reduction22430.input reduction22430.output := by lin_cert using reduction22430.terms
theorem substitutionProof22430 : IsMapEvaluation generatorImages reduction22430.relations [8,8,1593] reduction22430.output := by lin_cert using reduction22430.terms
def image22431 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22431 : InImage map_42_258 image22431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22431 : Bundle := named_bundle% "RealMapCertificates/relations/basis22431.json"
theorem reductionProof22431 : EqualModuloRelations reduction22431.relations reduction22431.input reduction22431.output := by lin_cert using reduction22431.terms
theorem substitutionProof22431 : IsMapEvaluation generatorImages reduction22431.relations [8,8,8,8,8,64,201] reduction22431.output := by lin_cert using reduction22431.terms
def image22432 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22432 : InImage map_42_258 image22432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22432 : Bundle := named_bundle% "RealMapCertificates/relations/basis22432.json"
theorem reductionProof22432 : EqualModuloRelations reduction22432.relations reduction22432.input reduction22432.output := by lin_cert using reduction22432.terms
theorem substitutionProof22432 : IsMapEvaluation generatorImages reduction22432.relations [8,8,8,8,8,13,13,267] reduction22432.output := by lin_cert using reduction22432.terms
def map_42_259 : Matrix 2 4 := fun i j => ([false,true,false,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image22740 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22740 : InImage map_42_259 image22740 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22740 : Bundle := named_bundle% "RealMapCertificates/relations/basis22740.json"
theorem reductionProof22740 : EqualModuloRelations reduction22740.relations reduction22740.input reduction22740.output := by lin_cert using reduction22740.terms
theorem substitutionProof22740 : IsMapEvaluation generatorImages reduction22740.relations [2742] reduction22740.output := by lin_cert using reduction22740.terms
def image22741 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22741 : InImage map_42_259 image22741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22741 : Bundle := named_bundle% "RealMapCertificates/relations/basis22741.json"
theorem reductionProof22741 : EqualModuloRelations reduction22741.relations reduction22741.input reduction22741.output := by lin_cert using reduction22741.terms
theorem substitutionProof22741 : IsMapEvaluation generatorImages reduction22741.relations [8,9,13,13,784] reduction22741.output := by lin_cert using reduction22741.terms
def image22742 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22742 : InImage map_42_259 image22742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22742 : Bundle := named_bundle% "RealMapCertificates/relations/basis22742.json"
theorem reductionProof22742 : EqualModuloRelations reduction22742.relations reduction22742.input reduction22742.output := by lin_cert using reduction22742.terms
theorem substitutionProof22742 : IsMapEvaluation generatorImages reduction22742.relations [8,8,64,642] reduction22742.output := by lin_cert using reduction22742.terms
def image22743 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22743 : InImage map_42_259 image22743 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22743 : Bundle := named_bundle% "RealMapCertificates/relations/basis22743.json"
theorem reductionProof22743 : EqualModuloRelations reduction22743.relations reduction22743.input reduction22743.output := by lin_cert using reduction22743.terms
theorem substitutionProof22743 : IsMapEvaluation generatorImages reduction22743.relations [8,8,8,8,963] reduction22743.output := by lin_cert using reduction22743.terms
def map_42_260 : Matrix 1 8 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image23103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23103 : InImage map_42_260 image23103 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23103 : Bundle := named_bundle% "RealMapCertificates/relations/basis23103.json"
theorem reductionProof23103 : EqualModuloRelations reduction23103.relations reduction23103.input reduction23103.output := by lin_cert using reduction23103.terms
theorem substitutionProof23103 : IsMapEvaluation generatorImages reduction23103.relations [64,64,380] reduction23103.output := by lin_cert using reduction23103.terms
def image23104 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23104 : InImage map_42_260 image23104 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23104 : Bundle := named_bundle% "RealMapCertificates/relations/basis23104.json"
theorem reductionProof23104 : EqualModuloRelations reduction23104.relations reduction23104.input reduction23104.output := by lin_cert using reduction23104.terms
theorem substitutionProof23104 : IsMapEvaluation generatorImages reduction23104.relations [13,13,13,13,13,13,248] reduction23104.output := by lin_cert using reduction23104.terms
def image23105 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23105 : InImage map_42_260 image23105 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23105 : Bundle := named_bundle% "RealMapCertificates/relations/basis23105.json"
theorem reductionProof23105 : EqualModuloRelations reduction23105.relations reduction23105.input reduction23105.output := by lin_cert using reduction23105.terms
theorem substitutionProof23105 : IsMapEvaluation generatorImages reduction23105.relations [8,8,9,13,13,13,346] reduction23105.output := by lin_cert using reduction23105.terms
def image23106 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23106 : InImage map_42_260 image23106 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23106 : Bundle := named_bundle% "RealMapCertificates/relations/basis23106.json"
theorem reductionProof23106 : EqualModuloRelations reduction23106.relations reduction23106.input reduction23106.output := by lin_cert using reduction23106.terms
theorem substitutionProof23106 : IsMapEvaluation generatorImages reduction23106.relations [8,8,8,64,492] reduction23106.output := by lin_cert using reduction23106.terms
def image23107 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23107 : InImage map_42_260 image23107 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23107 : Bundle := named_bundle% "RealMapCertificates/relations/basis23107.json"
theorem reductionProof23107 : EqualModuloRelations reduction23107.relations reduction23107.input reduction23107.output := by lin_cert using reduction23107.terms
theorem substitutionProof23107 : IsMapEvaluation generatorImages reduction23107.relations [8,8,8,8,974] reduction23107.output := by lin_cert using reduction23107.terms
def image23108 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23108 : InImage map_42_260 image23108 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23108 : Bundle := named_bundle% "RealMapCertificates/relations/basis23108.json"
theorem reductionProof23108 : EqualModuloRelations reduction23108.relations reduction23108.input reduction23108.output := by lin_cert using reduction23108.terms
theorem substitutionProof23108 : IsMapEvaluation generatorImages reduction23108.relations [8,8,8,8,8,8,9,13,209] reduction23108.output := by lin_cert using reduction23108.terms
def image23109 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23109 : InImage map_42_260 image23109 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23109 : Bundle := named_bundle% "RealMapCertificates/relations/basis23109.json"
theorem reductionProof23109 : EqualModuloRelations reduction23109.relations reduction23109.input reduction23109.output := by lin_cert using reduction23109.terms
theorem substitutionProof23109 : IsMapEvaluation generatorImages reduction23109.relations [1,64,1094] reduction23109.output := by lin_cert using reduction23109.terms
def image23110 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23110 : InImage map_42_260 image23110 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23110 : Bundle := named_bundle% "RealMapCertificates/relations/basis23110.json"
theorem reductionProof23110 : EqualModuloRelations reduction23110.relations reduction23110.input reduction23110.output := by lin_cert using reduction23110.terms
theorem substitutionProof23110 : IsMapEvaluation generatorImages reduction23110.relations [0,0,0,0,0,0,0,0,0,0,0,2307] reduction23110.output := by lin_cert using reduction23110.terms
def map_42_261 : Matrix 1 7 := fun i j => ([false,false,false,true,false,false,false] : List Bool)[i.val*7+j.val]!
def image23551 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23551 : InImage map_42_261 image23551 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23551 : Bundle := named_bundle% "RealMapCertificates/relations/basis23551.json"
theorem reductionProof23551 : EqualModuloRelations reduction23551.relations reduction23551.input reduction23551.output := by lin_cert using reduction23551.terms
theorem substitutionProof23551 : IsMapEvaluation generatorImages reduction23551.relations [2861] reduction23551.output := by lin_cert using reduction23551.terms
def image23552 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23552 : InImage map_42_261 image23552 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23552 : Bundle := named_bundle% "RealMapCertificates/relations/basis23552.json"
theorem reductionProof23552 : EqualModuloRelations reduction23552.relations reduction23552.input reduction23552.output := by lin_cert using reduction23552.terms
theorem substitutionProof23552 : IsMapEvaluation generatorImages reduction23552.relations [64,64,404] reduction23552.output := by lin_cert using reduction23552.terms
def image23553 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23553 : InImage map_42_261 image23553 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23553 : Bundle := named_bundle% "RealMapCertificates/relations/basis23553.json"
theorem reductionProof23553 : EqualModuloRelations reduction23553.relations reduction23553.input reduction23553.output := by lin_cert using reduction23553.terms
theorem substitutionProof23553 : IsMapEvaluation generatorImages reduction23553.relations [8,13,13,13,13,13,13,13,101] reduction23553.output := by lin_cert using reduction23553.terms
def image23554 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23554 : InImage map_42_261 image23554 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23554 : Bundle := named_bundle% "RealMapCertificates/relations/basis23554.json"
theorem reductionProof23554 : EqualModuloRelations reduction23554.relations reduction23554.input reduction23554.output := by lin_cert using reduction23554.terms
theorem substitutionProof23554 : IsMapEvaluation generatorImages reduction23554.relations [8,8,1639] reduction23554.output := by lin_cert using reduction23554.terms
def image23555 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23555 : InImage map_42_261 image23555 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23555 : Bundle := named_bundle% "RealMapCertificates/relations/basis23555.json"
theorem reductionProof23555 : EqualModuloRelations reduction23555.relations reduction23555.input reduction23555.output := by lin_cert using reduction23555.terms
theorem substitutionProof23555 : IsMapEvaluation generatorImages reduction23555.relations [8,8,8,8,9,13,13,267] reduction23555.output := by lin_cert using reduction23555.terms
def image23556 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23556 : InImage map_42_261 image23556 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23556 : Bundle := named_bundle% "RealMapCertificates/relations/basis23556.json"
theorem reductionProof23556 : EqualModuloRelations reduction23556.relations reduction23556.input reduction23556.output := by lin_cert using reduction23556.terms
theorem substitutionProof23556 : IsMapEvaluation generatorImages reduction23556.relations [8,8,8,8,8,64,212] reduction23556.output := by lin_cert using reduction23556.terms
def image23557 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23557 : InImage map_42_261 image23557 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23557 : Bundle := named_bundle% "RealMapCertificates/relations/basis23557.json"
theorem reductionProof23557 : EqualModuloRelations reduction23557.relations reduction23557.input reduction23557.output := by lin_cert using reduction23557.terms
theorem substitutionProof23557 : IsMapEvaluation generatorImages reduction23557.relations [0,0,0,0,0,0,0,0,0,0,0,2340] reduction23557.output := by lin_cert using reduction23557.terms
def map_43_43 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image190 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation190 : InImage map_43_43 image190 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction190 : Bundle := named_bundle% "RealMapCertificates/relations/basis190.json"
theorem reductionProof190 : EqualModuloRelations reduction190.relations reduction190.input reduction190.output := by lin_cert using reduction190.terms
theorem substitutionProof190 : IsMapEvaluation generatorImages reduction190.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction190.output := by lin_cert using reduction190.terms
def map_43_126 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2161 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2161 : InImage map_43_126 image2161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2161 : Bundle := named_bundle% "RealMapCertificates/relations/basis2161.json"
theorem reductionProof2161 : EqualModuloRelations reduction2161.relations reduction2161.input reduction2161.output := by lin_cert using reduction2161.terms
theorem substitutionProof2161 : IsMapEvaluation generatorImages reduction2161.relations [0,0,290] reduction2161.output := by lin_cert using reduction2161.terms
def map_43_130 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2383 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2383 : InImage map_43_130 image2383 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2383 : Bundle := named_bundle% "RealMapCertificates/relations/basis2383.json"
theorem reductionProof2383 : EqualModuloRelations reduction2383.relations reduction2383.input reduction2383.output := by lin_cert using reduction2383.terms
theorem substitutionProof2383 : IsMapEvaluation generatorImages reduction2383.relations [0,0,0,0,296] reduction2383.output := by lin_cert using reduction2383.terms
def map_43_131 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image2443 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation2443 : InImage map_43_131 image2443 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2443 : Bundle := named_bundle% "RealMapCertificates/relations/basis2443.json"
theorem reductionProof2443 : EqualModuloRelations reduction2443.relations reduction2443.input reduction2443.output := by lin_cert using reduction2443.terms
theorem substitutionProof2443 : IsMapEvaluation generatorImages reduction2443.relations [342] reduction2443.output := by lin_cert using reduction2443.terms
def map_43_132 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2497 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2497 : InImage map_43_132 image2497 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2497 : Bundle := named_bundle% "RealMapCertificates/relations/basis2497.json"
theorem reductionProof2497 : EqualModuloRelations reduction2497.relations reduction2497.input reduction2497.output := by lin_cert using reduction2497.terms
theorem substitutionProof2497 : IsMapEvaluation generatorImages reduction2497.relations [0,0,0,325] reduction2497.output := by lin_cert using reduction2497.terms
def map_43_137 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2874 : InImage map_43_137 image2874 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2874 : Bundle := named_bundle% "RealMapCertificates/relations/basis2874.json"
theorem reductionProof2874 : EqualModuloRelations reduction2874.relations reduction2874.input reduction2874.output := by lin_cert using reduction2874.terms
theorem substitutionProof2874 : IsMapEvaluation generatorImages reduction2874.relations [0,0,0,0,0,17,183] reduction2874.output := by lin_cert using reduction2874.terms
def map_43_138 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image2946 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation2946 : InImage map_43_138 image2946 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2946 : Bundle := named_bundle% "RealMapCertificates/relations/basis2946.json"
theorem reductionProof2946 : EqualModuloRelations reduction2946.relations reduction2946.input reduction2946.output := by lin_cert using reduction2946.terms
theorem substitutionProof2946 : IsMapEvaluation generatorImages reduction2946.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction2946.output := by lin_cert using reduction2946.terms
def map_43_141 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3199 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3199 : InImage map_43_141 image3199 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3199 : Bundle := named_bundle% "RealMapCertificates/relations/basis3199.json"
theorem reductionProof3199 : EqualModuloRelations reduction3199.relations reduction3199.input reduction3199.output := by lin_cert using reduction3199.terms
theorem substitutionProof3199 : IsMapEvaluation generatorImages reduction3199.relations [470] reduction3199.output := by lin_cert using reduction3199.terms
def map_43_144 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3441 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3441 : InImage map_43_144 image3441 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3441 : Bundle := named_bundle% "RealMapCertificates/relations/basis3441.json"
theorem reductionProof3441 : EqualModuloRelations reduction3441.relations reduction3441.input reduction3441.output := by lin_cert using reduction3441.terms
theorem substitutionProof3441 : IsMapEvaluation generatorImages reduction3441.relations [8,296] reduction3441.output := by lin_cert using reduction3441.terms
def map_43_147 : Matrix 5 1 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3700 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation3700 : InImage map_43_147 image3700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3700 : Bundle := named_bundle% "RealMapCertificates/relations/basis3700.json"
theorem reductionProof3700 : EqualModuloRelations reduction3700.relations reduction3700.input reduction3700.output := by lin_cert using reduction3700.terms
theorem substitutionProof3700 : IsMapEvaluation generatorImages reduction3700.relations [8,326] reduction3700.output := by lin_cert using reduction3700.terms
def map_43_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3799 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3799 : InImage map_43_148 image3799 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3799 : Bundle := named_bundle% "RealMapCertificates/relations/basis3799.json"
theorem reductionProof3799 : EqualModuloRelations reduction3799.relations reduction3799.input reduction3799.output := by lin_cert using reduction3799.terms
theorem substitutionProof3799 : IsMapEvaluation generatorImages reduction3799.relations [0,17,253] reduction3799.output := by lin_cert using reduction3799.terms
def map_43_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3954 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3954 : InImage map_43_150 image3954 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3954 : Bundle := named_bundle% "RealMapCertificates/relations/basis3954.json"
theorem reductionProof3954 : EqualModuloRelations reduction3954.relations reduction3954.input reduction3954.output := by lin_cert using reduction3954.terms
theorem substitutionProof3954 : IsMapEvaluation generatorImages reduction3954.relations [8,16,183] reduction3954.output := by lin_cert using reduction3954.terms
def map_43_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4236 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4236 : InImage map_43_153 image4236 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4236 : Bundle := named_bundle% "RealMapCertificates/relations/basis4236.json"
theorem reductionProof4236 : EqualModuloRelations reduction4236.relations reduction4236.input reduction4236.output := by lin_cert using reduction4236.terms
theorem substitutionProof4236 : IsMapEvaluation generatorImages reduction4236.relations [8,8,253] reduction4236.output := by lin_cert using reduction4236.terms
def map_43_156 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4478 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4478 : InImage map_43_156 image4478 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4478 : Bundle := named_bundle% "RealMapCertificates/relations/basis4478.json"
theorem reductionProof4478 : EqualModuloRelations reduction4478.relations reduction4478.input reduction4478.output := by lin_cert using reduction4478.terms
theorem substitutionProof4478 : IsMapEvaluation generatorImages reduction4478.relations [8,8,8,183] reduction4478.output := by lin_cert using reduction4478.terms
def map_43_159 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4747 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4747 : InImage map_43_159 image4747 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4747 : Bundle := named_bundle% "RealMapCertificates/relations/basis4747.json"
theorem reductionProof4747 : EqualModuloRelations reduction4747.relations reduction4747.input reduction4747.output := by lin_cert using reduction4747.terms
theorem substitutionProof4747 : IsMapEvaluation generatorImages reduction4747.relations [8,8,8,200] reduction4747.output := by lin_cert using reduction4747.terms
def map_43_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4846 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4846 : InImage map_43_160 image4846 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4846 : Bundle := named_bundle% "RealMapCertificates/relations/basis4846.json"
theorem reductionProof4846 : EqualModuloRelations reduction4846.relations reduction4846.input reduction4846.output := by lin_cert using reduction4846.terms
theorem substitutionProof4846 : IsMapEvaluation generatorImages reduction4846.relations [0,635] reduction4846.output := by lin_cert using reduction4846.terms
def map_43_161 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4925 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4925 : InImage map_43_161 image4925 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4925 : Bundle := named_bundle% "RealMapCertificates/relations/basis4925.json"
theorem reductionProof4925 : EqualModuloRelations reduction4925.relations reduction4925.input reduction4925.output := by lin_cert using reduction4925.terms
theorem substitutionProof4925 : IsMapEvaluation generatorImages reduction4925.relations [1,635] reduction4925.output := by lin_cert using reduction4925.terms
def image4926 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4926 : InImage map_43_161 image4926 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4926 : Bundle := named_bundle% "RealMapCertificates/relations/basis4926.json"
theorem reductionProof4926 : EqualModuloRelations reduction4926.relations reduction4926.input reduction4926.output := by lin_cert using reduction4926.terms
theorem substitutionProof4926 : IsMapEvaluation generatorImages reduction4926.relations [0,0,636] reduction4926.output := by lin_cert using reduction4926.terms
def map_43_162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5018 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5018 : InImage map_43_162 image5018 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5018 : Bundle := named_bundle% "RealMapCertificates/relations/basis5018.json"
theorem reductionProof5018 : EqualModuloRelations reduction5018.relations reduction5018.input reduction5018.output := by lin_cert using reduction5018.terms
theorem substitutionProof5018 : IsMapEvaluation generatorImages reduction5018.relations [8,8,8,16,111] reduction5018.output := by lin_cert using reduction5018.terms
def map_43_163 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5140 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5140 : InImage map_43_163 image5140 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5140 : Bundle := named_bundle% "RealMapCertificates/relations/basis5140.json"
theorem reductionProof5140 : EqualModuloRelations reduction5140.relations reduction5140.input reduction5140.output := by lin_cert using reduction5140.terms
theorem substitutionProof5140 : IsMapEvaluation generatorImages reduction5140.relations [0,662] reduction5140.output := by lin_cert using reduction5140.terms
def map_43_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5215 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5215 : InImage map_43_164 image5215 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5215 : Bundle := named_bundle% "RealMapCertificates/relations/basis5215.json"
theorem reductionProof5215 : EqualModuloRelations reduction5215.relations reduction5215.input reduction5215.output := by lin_cert using reduction5215.terms
theorem substitutionProof5215 : IsMapEvaluation generatorImages reduction5215.relations [0,0,663] reduction5215.output := by lin_cert using reduction5215.terms
def map_43_165 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5320 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5320 : InImage map_43_165 image5320 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5320 : Bundle := named_bundle% "RealMapCertificates/relations/basis5320.json"
theorem reductionProof5320 : EqualModuloRelations reduction5320.relations reduction5320.input reduction5320.output := by lin_cert using reduction5320.terms
theorem substitutionProof5320 : IsMapEvaluation generatorImages reduction5320.relations [8,8,8,8,153] reduction5320.output := by lin_cert using reduction5320.terms
def map_43_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5438 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5438 : InImage map_43_166 image5438 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5438 : Bundle := named_bundle% "RealMapCertificates/relations/basis5438.json"
theorem reductionProof5438 : EqualModuloRelations reduction5438.relations reduction5438.input reduction5438.output := by lin_cert using reduction5438.terms
theorem substitutionProof5438 : IsMapEvaluation generatorImages reduction5438.relations [0,16,402] reduction5438.output := by lin_cert using reduction5438.terms
def map_43_167 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5538 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5538 : InImage map_43_167 image5538 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5538 : Bundle := named_bundle% "RealMapCertificates/relations/basis5538.json"
theorem reductionProof5538 : EqualModuloRelations reduction5538.relations reduction5538.input reduction5538.output := by lin_cert using reduction5538.terms
theorem substitutionProof5538 : IsMapEvaluation generatorImages reduction5538.relations [0,0,16,403] reduction5538.output := by lin_cert using reduction5538.terms
def image5539 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5539 : InImage map_43_167 image5539 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5539 : Bundle := named_bundle% "RealMapCertificates/relations/basis5539.json"
theorem reductionProof5539 : EqualModuloRelations reduction5539.relations reduction5539.input reduction5539.output := by lin_cert using reduction5539.terms
theorem substitutionProof5539 : IsMapEvaluation generatorImages reduction5539.relations [0,0,0,685] reduction5539.output := by lin_cert using reduction5539.terms
def map_43_168 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5635 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5635 : InImage map_43_168 image5635 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5635 : Bundle := named_bundle% "RealMapCertificates/relations/basis5635.json"
theorem reductionProof5635 : EqualModuloRelations reduction5635.relations reduction5635.input reduction5635.output := by lin_cert using reduction5635.terms
theorem substitutionProof5635 : IsMapEvaluation generatorImages reduction5635.relations [8,8,8,8,8,111] reduction5635.output := by lin_cert using reduction5635.terms
def image5636 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5636 : InImage map_43_168 image5636 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5636 : Bundle := named_bundle% "RealMapCertificates/relations/basis5636.json"
theorem reductionProof5636 : EqualModuloRelations reduction5636.relations reduction5636.input reduction5636.output := by lin_cert using reduction5636.terms
theorem substitutionProof5636 : IsMapEvaluation generatorImages reduction5636.relations [0,0,0,17,403] reduction5636.output := by lin_cert using reduction5636.terms
def map_43_169 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image5773 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5773 : InImage map_43_169 image5773 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5773 : Bundle := named_bundle% "RealMapCertificates/relations/basis5773.json"
theorem reductionProof5773 : EqualModuloRelations reduction5773.relations reduction5773.input reduction5773.output := by lin_cert using reduction5773.terms
theorem substitutionProof5773 : IsMapEvaluation generatorImages reduction5773.relations [0,8,555] reduction5773.output := by lin_cert using reduction5773.terms
def image5774 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5774 : InImage map_43_169 image5774 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5774 : Bundle := named_bundle% "RealMapCertificates/relations/basis5774.json"
theorem reductionProof5774 : EqualModuloRelations reduction5774.relations reduction5774.input reduction5774.output := by lin_cert using reduction5774.terms
theorem substitutionProof5774 : IsMapEvaluation generatorImages reduction5774.relations [0,0,0,0,0,686] reduction5774.output := by lin_cert using reduction5774.terms
def map_43_170 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image5865 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5865 : InImage map_43_170 image5865 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction5865 : Bundle := named_bundle% "RealMapCertificates/relations/basis5865.json"
theorem reductionProof5865 : EqualModuloRelations reduction5865.relations reduction5865.input reduction5865.output := by lin_cert using reduction5865.terms
theorem substitutionProof5865 : IsMapEvaluation generatorImages reduction5865.relations [0,0,8,556] reduction5865.output := by lin_cert using reduction5865.terms
def image5866 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5866 : InImage map_43_170 image5866 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction5866 : Bundle := named_bundle% "RealMapCertificates/relations/basis5866.json"
theorem reductionProof5866 : EqualModuloRelations reduction5866.relations reduction5866.input reduction5866.output := by lin_cert using reduction5866.terms
theorem substitutionProof5866 : IsMapEvaluation generatorImages reduction5866.relations [0,0,0,722] reduction5866.output := by lin_cert using reduction5866.terms
def image5867 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5867 : InImage map_43_170 image5867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction5867 : Bundle := named_bundle% "RealMapCertificates/relations/basis5867.json"
theorem reductionProof5867 : EqualModuloRelations reduction5867.relations reduction5867.input reduction5867.output := by lin_cert using reduction5867.terms
theorem substitutionProof5867 : IsMapEvaluation generatorImages reduction5867.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5867.output := by lin_cert using reduction5867.terms
def map_43_171 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image5982 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5982 : InImage map_43_171 image5982 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5982 : Bundle := named_bundle% "RealMapCertificates/relations/basis5982.json"
theorem reductionProof5982 : EqualModuloRelations reduction5982.relations reduction5982.input reduction5982.output := by lin_cert using reduction5982.terms
theorem substitutionProof5982 : IsMapEvaluation generatorImages reduction5982.relations [8,8,8,8,8,117] reduction5982.output := by lin_cert using reduction5982.terms
def map_43_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6112 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6112 : InImage map_43_172 image6112 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6112 : Bundle := named_bundle% "RealMapCertificates/relations/basis6112.json"
theorem reductionProof6112 : EqualModuloRelations reduction6112.relations reduction6112.input reduction6112.output := by lin_cert using reduction6112.terms
theorem substitutionProof6112 : IsMapEvaluation generatorImages reduction6112.relations [0,8,8,402] reduction6112.output := by lin_cert using reduction6112.terms
def map_43_173 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6202 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6202 : InImage map_43_173 image6202 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6202 : Bundle := named_bundle% "RealMapCertificates/relations/basis6202.json"
theorem reductionProof6202 : EqualModuloRelations reduction6202.relations reduction6202.input reduction6202.output := by lin_cert using reduction6202.terms
theorem substitutionProof6202 : IsMapEvaluation generatorImages reduction6202.relations [0,0,8,8,403] reduction6202.output := by lin_cert using reduction6202.terms
def map_43_174 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image6306 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6306 : InImage map_43_174 image6306 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6306 : Bundle := named_bundle% "RealMapCertificates/relations/basis6306.json"
theorem reductionProof6306 : EqualModuloRelations reduction6306.relations reduction6306.input reduction6306.output := by lin_cert using reduction6306.terms
theorem substitutionProof6306 : IsMapEvaluation generatorImages reduction6306.relations [8,8,8,8,8,16,50] reduction6306.output := by lin_cert using reduction6306.terms
def image6307 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation6307 : InImage map_43_174 image6307 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6307 : Bundle := named_bundle% "RealMapCertificates/relations/basis6307.json"
theorem reductionProof6307 : EqualModuloRelations reduction6307.relations reduction6307.input reduction6307.output := by lin_cert using reduction6307.terms
theorem substitutionProof6307 : IsMapEvaluation generatorImages reduction6307.relations [0,0,0,0,17,452] reduction6307.output := by lin_cert using reduction6307.terms
def map_43_175 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6451 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6451 : InImage map_43_175 image6451 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6451 : Bundle := named_bundle% "RealMapCertificates/relations/basis6451.json"
theorem reductionProof6451 : EqualModuloRelations reduction6451.relations reduction6451.input reduction6451.output := by lin_cert using reduction6451.terms
theorem substitutionProof6451 : IsMapEvaluation generatorImages reduction6451.relations [0,8,8,432] reduction6451.output := by lin_cert using reduction6451.terms
def image6452 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation6452 : InImage map_43_175 image6452 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6452 : Bundle := named_bundle% "RealMapCertificates/relations/basis6452.json"
theorem reductionProof6452 : EqualModuloRelations reduction6452.relations reduction6452.input reduction6452.output := by lin_cert using reduction6452.terms
theorem substitutionProof6452 : IsMapEvaluation generatorImages reduction6452.relations [0,0,0,0,17,17,225] reduction6452.output := by lin_cert using reduction6452.terms
def map_43_176 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6539 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6539 : InImage map_43_176 image6539 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6539 : Bundle := named_bundle% "RealMapCertificates/relations/basis6539.json"
theorem reductionProof6539 : EqualModuloRelations reduction6539.relations reduction6539.input reduction6539.output := by lin_cert using reduction6539.terms
theorem substitutionProof6539 : IsMapEvaluation generatorImages reduction6539.relations [0,0,8,8,433] reduction6539.output := by lin_cert using reduction6539.terms
def map_43_177 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6665 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6665 : InImage map_43_177 image6665 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6665 : Bundle := named_bundle% "RealMapCertificates/relations/basis6665.json"
theorem reductionProof6665 : EqualModuloRelations reduction6665.relations reduction6665.input reduction6665.output := by lin_cert using reduction6665.terms
theorem substitutionProof6665 : IsMapEvaluation generatorImages reduction6665.relations [8,8,8,8,8,8,78] reduction6665.output := by lin_cert using reduction6665.terms
def map_43_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6792 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6792 : InImage map_43_178 image6792 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6792 : Bundle := named_bundle% "RealMapCertificates/relations/basis6792.json"
theorem reductionProof6792 : EqualModuloRelations reduction6792.relations reduction6792.input reduction6792.output := by lin_cert using reduction6792.terms
theorem substitutionProof6792 : IsMapEvaluation generatorImages reduction6792.relations [0,8,8,16,224] reduction6792.output := by lin_cert using reduction6792.terms
def map_43_179 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6898 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6898 : InImage map_43_179 image6898 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6898 : Bundle := named_bundle% "RealMapCertificates/relations/basis6898.json"
theorem reductionProof6898 : EqualModuloRelations reduction6898.relations reduction6898.input reduction6898.output := by lin_cert using reduction6898.terms
theorem substitutionProof6898 : IsMapEvaluation generatorImages reduction6898.relations [0,0,8,8,16,225] reduction6898.output := by lin_cert using reduction6898.terms
def map_43_180 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7025 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7025 : InImage map_43_180 image7025 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7025 : Bundle := named_bundle% "RealMapCertificates/relations/basis7025.json"
theorem reductionProof7025 : EqualModuloRelations reduction7025.relations reduction7025.input reduction7025.output := by lin_cert using reduction7025.terms
theorem substitutionProof7025 : IsMapEvaluation generatorImages reduction7025.relations [8,8,8,8,8,8,8,50] reduction7025.output := by lin_cert using reduction7025.terms
def image7026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7026 : InImage map_43_180 image7026 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7026 : Bundle := named_bundle% "RealMapCertificates/relations/basis7026.json"
theorem reductionProof7026 : EqualModuloRelations reduction7026.relations reduction7026.input reduction7026.output := by lin_cert using reduction7026.terms
theorem substitutionProof7026 : IsMapEvaluation generatorImages reduction7026.relations [0,872] reduction7026.output := by lin_cert using reduction7026.terms
def map_43_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7169 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7169 : InImage map_43_181 image7169 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7169 : Bundle := named_bundle% "RealMapCertificates/relations/basis7169.json"
theorem reductionProof7169 : EqualModuloRelations reduction7169.relations reduction7169.input reduction7169.output := by lin_cert using reduction7169.terms
theorem substitutionProof7169 : IsMapEvaluation generatorImages reduction7169.relations [0,0,0,0,0,0,0,64,224] reduction7169.output := by lin_cert using reduction7169.terms
def map_43_182 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7255 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7255 : InImage map_43_182 image7255 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7255 : Bundle := named_bundle% "RealMapCertificates/relations/basis7255.json"
theorem reductionProof7255 : EqualModuloRelations reduction7255.relations reduction7255.input reduction7255.output := by lin_cert using reduction7255.terms
theorem substitutionProof7255 : IsMapEvaluation generatorImages reduction7255.relations [0,0,0,0,0,0,0,0,64,225] reduction7255.output := by lin_cert using reduction7255.terms
def map_43_183 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7390 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7390 : InImage map_43_183 image7390 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7390 : Bundle := named_bundle% "RealMapCertificates/relations/basis7390.json"
theorem reductionProof7390 : EqualModuloRelations reduction7390.relations reduction7390.input reduction7390.output := by lin_cert using reduction7390.terms
theorem substitutionProof7390 : IsMapEvaluation generatorImages reduction7390.relations [42,402] reduction7390.output := by lin_cert using reduction7390.terms
def image7391 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7391 : InImage map_43_183 image7391 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7391 : Bundle := named_bundle% "RealMapCertificates/relations/basis7391.json"
theorem reductionProof7391 : EqualModuloRelations reduction7391.relations reduction7391.input reduction7391.output := by lin_cert using reduction7391.terms
theorem substitutionProof7391 : IsMapEvaluation generatorImages reduction7391.relations [8,8,8,8,8,8,8,56] reduction7391.output := by lin_cert using reduction7391.terms
def map_43_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7523 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7523 : InImage map_43_184 image7523 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7523 : Bundle := named_bundle% "RealMapCertificates/relations/basis7523.json"
theorem reductionProof7523 : EqualModuloRelations reduction7523.relations reduction7523.input reduction7523.output := by lin_cert using reduction7523.terms
theorem substitutionProof7523 : IsMapEvaluation generatorImages reduction7523.relations [0,0,0,0,0,0,0,0,0,0,807] reduction7523.output := by lin_cert using reduction7523.terms
def map_43_185 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7620 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7620 : InImage map_43_185 image7620 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7620 : Bundle := named_bundle% "RealMapCertificates/relations/basis7620.json"
theorem reductionProof7620 : EqualModuloRelations reduction7620.relations reduction7620.input reduction7620.output := by lin_cert using reduction7620.terms
theorem substitutionProof7620 : IsMapEvaluation generatorImages reduction7620.relations [17,595] reduction7620.output := by lin_cert using reduction7620.terms
def image7621 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7621 : InImage map_43_185 image7621 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7621 : Bundle := named_bundle% "RealMapCertificates/relations/basis7621.json"
theorem reductionProof7621 : EqualModuloRelations reduction7621.relations reduction7621.input reduction7621.output := by lin_cert using reduction7621.terms
theorem substitutionProof7621 : IsMapEvaluation generatorImages reduction7621.relations [0,0,0,0,0,0,0,0,0,0,0,0,795] reduction7621.output := by lin_cert using reduction7621.terms
def map_43_186 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7752 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7752 : InImage map_43_186 image7752 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7752 : Bundle := named_bundle% "RealMapCertificates/relations/basis7752.json"
theorem reductionProof7752 : EqualModuloRelations reduction7752.relations reduction7752.input reduction7752.output := by lin_cert using reduction7752.terms
theorem substitutionProof7752 : IsMapEvaluation generatorImages reduction7752.relations [17,17,298] reduction7752.output := by lin_cert using reduction7752.terms
def image7753 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7753 : InImage map_43_186 image7753 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7753 : Bundle := named_bundle% "RealMapCertificates/relations/basis7753.json"
theorem reductionProof7753 : EqualModuloRelations reduction7753.relations reduction7753.input reduction7753.output := by lin_cert using reduction7753.terms
theorem substitutionProof7753 : IsMapEvaluation generatorImages reduction7753.relations [8,8,8,8,8,8,8,16,17] reduction7753.output := by lin_cert using reduction7753.terms
def map_43_188 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7960 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7960 : InImage map_43_188 image7960 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7960 : Bundle := named_bundle% "RealMapCertificates/relations/basis7960.json"
theorem reductionProof7960 : EqualModuloRelations reduction7960.relations reduction7960.input reduction7960.output := by lin_cert using reduction7960.terms
theorem substitutionProof7960 : IsMapEvaluation generatorImages reduction7960.relations [8,17,452] reduction7960.output := by lin_cert using reduction7960.terms
def map_43_189 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8103 : InImage map_43_189 image8103 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8103 : Bundle := named_bundle% "RealMapCertificates/relations/basis8103.json"
theorem reductionProof8103 : EqualModuloRelations reduction8103.relations reduction8103.input reduction8103.output := by lin_cert using reduction8103.terms
theorem substitutionProof8103 : IsMapEvaluation generatorImages reduction8103.relations [8,17,17,225] reduction8103.output := by lin_cert using reduction8103.terms
def image8104 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8104 : InImage map_43_189 image8104 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8104 : Bundle := named_bundle% "RealMapCertificates/relations/basis8104.json"
theorem reductionProof8104 : EqualModuloRelations reduction8104.relations reduction8104.input reduction8104.output := by lin_cert using reduction8104.terms
theorem substitutionProof8104 : IsMapEvaluation generatorImages reduction8104.relations [8,8,8,8,8,8,8,8,40] reduction8104.output := by lin_cert using reduction8104.terms
def map_43_191 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image8343 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8343 : InImage map_43_191 image8343 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8343 : Bundle := named_bundle% "RealMapCertificates/relations/basis8343.json"
theorem reductionProof8343 : EqualModuloRelations reduction8343.relations reduction8343.input reduction8343.output := by lin_cert using reduction8343.terms
theorem substitutionProof8343 : IsMapEvaluation generatorImages reduction8343.relations [8,17,488] reduction8343.output := by lin_cert using reduction8343.terms
def map_43_192 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8475 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8475 : InImage map_43_192 image8475 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8475 : Bundle := named_bundle% "RealMapCertificates/relations/basis8475.json"
theorem reductionProof8475 : EqualModuloRelations reduction8475.relations reduction8475.input reduction8475.output := by lin_cert using reduction8475.terms
theorem substitutionProof8475 : IsMapEvaluation generatorImages reduction8475.relations [8,17,17,238] reduction8475.output := by lin_cert using reduction8475.terms
def image8476 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8476 : InImage map_43_192 image8476 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8476 : Bundle := named_bundle% "RealMapCertificates/relations/basis8476.json"
theorem reductionProof8476 : EqualModuloRelations reduction8476.relations reduction8476.input reduction8476.output := by lin_cert using reduction8476.terms
theorem substitutionProof8476 : IsMapEvaluation generatorImages reduction8476.relations [8,8,8,8,8,8,8,8,8,17] reduction8476.output := by lin_cert using reduction8476.terms
def image8477 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8477 : InImage map_43_192 image8477 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8477 : Bundle := named_bundle% "RealMapCertificates/relations/basis8477.json"
theorem reductionProof8477 : EqualModuloRelations reduction8477.relations reduction8477.input reduction8477.output := by lin_cert using reduction8477.terms
theorem substitutionProof8477 : IsMapEvaluation generatorImages reduction8477.relations [0,1033] reduction8477.output := by lin_cert using reduction8477.terms
def map_43_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8613 : InImage map_43_193 image8613 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8613 : Bundle := named_bundle% "RealMapCertificates/relations/basis8613.json"
theorem reductionProof8613 : EqualModuloRelations reduction8613.relations reduction8613.input reduction8613.output := by lin_cert using reduction8613.terms
theorem substitutionProof8613 : IsMapEvaluation generatorImages reduction8613.relations [1059] reduction8613.output := by lin_cert using reduction8613.terms
def image8614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8614 : InImage map_43_193 image8614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8614 : Bundle := named_bundle% "RealMapCertificates/relations/basis8614.json"
theorem reductionProof8614 : EqualModuloRelations reduction8614.relations reduction8614.input reduction8614.output := by lin_cert using reduction8614.terms
theorem substitutionProof8614 : IsMapEvaluation generatorImages reduction8614.relations [1,1033] reduction8614.output := by lin_cert using reduction8614.terms
def map_43_194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8718 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8718 : InImage map_43_194 image8718 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8718 : Bundle := named_bundle% "RealMapCertificates/relations/basis8718.json"
theorem reductionProof8718 : EqualModuloRelations reduction8718.relations reduction8718.input reduction8718.output := by lin_cert using reduction8718.terms
theorem substitutionProof8718 : IsMapEvaluation generatorImages reduction8718.relations [8,16,17,244] reduction8718.output := by lin_cert using reduction8718.terms
def map_43_195 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8879 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8879 : InImage map_43_195 image8879 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8879 : Bundle := named_bundle% "RealMapCertificates/relations/basis8879.json"
theorem reductionProof8879 : EqualModuloRelations reduction8879.relations reduction8879.input reduction8879.output := by lin_cert using reduction8879.terms
theorem substitutionProof8879 : IsMapEvaluation generatorImages reduction8879.relations [8,8,42,224] reduction8879.output := by lin_cert using reduction8879.terms
def image8880 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation8880 : InImage map_43_195 image8880 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8880 : Bundle := named_bundle% "RealMapCertificates/relations/basis8880.json"
theorem reductionProof8880 : EqualModuloRelations reduction8880.relations reduction8880.input reduction8880.output := by lin_cert using reduction8880.terms
theorem substitutionProof8880 : IsMapEvaluation generatorImages reduction8880.relations [8,8,8,8,8,8,8,8,8,20] reduction8880.output := by lin_cert using reduction8880.terms
def image8881 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8881 : InImage map_43_195 image8881 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8881 : Bundle := named_bundle% "RealMapCertificates/relations/basis8881.json"
theorem reductionProof8881 : EqualModuloRelations reduction8881.relations reduction8881.input reduction8881.output := by lin_cert using reduction8881.terms
theorem substitutionProof8881 : IsMapEvaluation generatorImages reduction8881.relations [0,1076] reduction8881.output := by lin_cert using reduction8881.terms
def map_43_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9019 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9019 : InImage map_43_196 image9019 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9019 : Bundle := named_bundle% "RealMapCertificates/relations/basis9019.json"
theorem reductionProof9019 : EqualModuloRelations reduction9019.relations reduction9019.input reduction9019.output := by lin_cert using reduction9019.terms
theorem substitutionProof9019 : IsMapEvaluation generatorImages reduction9019.relations [0,1093] reduction9019.output := by lin_cert using reduction9019.terms
def map_43_197 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9146 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9146 : InImage map_43_197 image9146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9146 : Bundle := named_bundle% "RealMapCertificates/relations/basis9146.json"
theorem reductionProof9146 : EqualModuloRelations reduction9146.relations reduction9146.input reduction9146.output := by lin_cert using reduction9146.terms
theorem substitutionProof9146 : IsMapEvaluation generatorImages reduction9146.relations [8,8,17,343] reduction9146.output := by lin_cert using reduction9146.terms
def map_43_198 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9316 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9316 : InImage map_43_198 image9316 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9316 : Bundle := named_bundle% "RealMapCertificates/relations/basis9316.json"
theorem reductionProof9316 : EqualModuloRelations reduction9316.relations reduction9316.input reduction9316.output := by lin_cert using reduction9316.terms
theorem substitutionProof9316 : IsMapEvaluation generatorImages reduction9316.relations [64,403] reduction9316.output := by lin_cert using reduction9316.terms
def image9317 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9317 : InImage map_43_198 image9317 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9317 : Bundle := named_bundle% "RealMapCertificates/relations/basis9317.json"
theorem reductionProof9317 : EqualModuloRelations reduction9317.relations reduction9317.input reduction9317.output := by lin_cert using reduction9317.terms
theorem substitutionProof9317 : IsMapEvaluation generatorImages reduction9317.relations [8,8,17,17,185] reduction9317.output := by lin_cert using reduction9317.terms
def image9318 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9318 : InImage map_43_198 image9318 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9318 : Bundle := named_bundle% "RealMapCertificates/relations/basis9318.json"
theorem reductionProof9318 : EqualModuloRelations reduction9318.relations reduction9318.input reduction9318.output := by lin_cert using reduction9318.terms
theorem substitutionProof9318 : IsMapEvaluation generatorImages reduction9318.relations [8,8,8,8,8,8,8,8,8,22] reduction9318.output := by lin_cert using reduction9318.terms
def image9319 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9319 : InImage map_43_198 image9319 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9319 : Bundle := named_bundle% "RealMapCertificates/relations/basis9319.json"
theorem reductionProof9319 : EqualModuloRelations reduction9319.relations reduction9319.input reduction9319.output := by lin_cert using reduction9319.terms
theorem substitutionProof9319 : IsMapEvaluation generatorImages reduction9319.relations [0,16,725] reduction9319.output := by lin_cert using reduction9319.terms
end RealMapCertificates
