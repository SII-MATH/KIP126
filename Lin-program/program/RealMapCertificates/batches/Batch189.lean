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
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 185 => [[0,4,4,8,12]]
  | 186 => []
  | 206 => [[4,6,8,12]]
  | 225 => [[0,4,4,4,6,12]]
  | 232 => [[5,6,9,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 299 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 491 => []
  | 509 => []
  | 516 => []
  | 623 => []
  | 653 => []
  | 725 => []
  | 759 => []
  | 796 => []
  | 831 => []
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 972 => []
  | 1121 => []
  | 1143 => []
  | 1181 => []
  | 1218 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1349 => []
  | 1381 => [[4,4,4,5,7,10,12,12]]
  | 1400 => []
  | 1500 => [[4,4,4,4,5,7,9,12,12]]
  | 1604 => [[4,4,4,4,5,7,10,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1750 => []
  | 1751 => []
  | _ => []
def map_43_199 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9486 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9486 : InImage map_43_199 image9486 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9486 : Bundle := named_bundle% "RealMapCertificates/relations/basis9486.json"
theorem reductionProof9486 : EqualModuloRelations reduction9486.relations reduction9486.input reduction9486.output := by lin_cert using reduction9486.terms
theorem substitutionProof9486 : IsMapEvaluation generatorImages reduction9486.relations [0,138,225] reduction9486.output := by lin_cert using reduction9486.terms
def image9487 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9487 : InImage map_43_199 image9487 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9487 : Bundle := named_bundle% "RealMapCertificates/relations/basis9487.json"
theorem reductionProof9487 : EqualModuloRelations reduction9487.relations reduction9487.input reduction9487.output := by lin_cert using reduction9487.terms
theorem substitutionProof9487 : IsMapEvaluation generatorImages reduction9487.relations [0,0,17,725] reduction9487.output := by lin_cert using reduction9487.terms
def map_43_200 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image9610 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9610 : InImage map_43_200 image9610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9610 : Bundle := named_bundle% "RealMapCertificates/relations/basis9610.json"
theorem reductionProof9610 : EqualModuloRelations reduction9610.relations reduction9610.input reduction9610.output := by lin_cert using reduction9610.terms
theorem substitutionProof9610 : IsMapEvaluation generatorImages reduction9610.relations [8,8,8,17,244] reduction9610.output := by lin_cert using reduction9610.terms
def image9611 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9611 : InImage map_43_200 image9611 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9611 : Bundle := named_bundle% "RealMapCertificates/relations/basis9611.json"
theorem reductionProof9611 : EqualModuloRelations reduction9611.relations reduction9611.input reduction9611.output := by lin_cert using reduction9611.terms
theorem substitutionProof9611 : IsMapEvaluation generatorImages reduction9611.relations [0,0,1143] reduction9611.output := by lin_cert using reduction9611.terms
def map_43_201 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9807 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9807 : InImage map_43_201 image9807 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9807 : Bundle := named_bundle% "RealMapCertificates/relations/basis9807.json"
theorem reductionProof9807 : EqualModuloRelations reduction9807.relations reduction9807.input reduction9807.output := by lin_cert using reduction9807.terms
theorem substitutionProof9807 : IsMapEvaluation generatorImages reduction9807.relations [64,433] reduction9807.output := by lin_cert using reduction9807.terms
def image9808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9808 : InImage map_43_201 image9808 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9808 : Bundle := named_bundle% "RealMapCertificates/relations/basis9808.json"
theorem reductionProof9808 : EqualModuloRelations reduction9808.relations reduction9808.input reduction9808.output := by lin_cert using reduction9808.terms
theorem substitutionProof9808 : IsMapEvaluation generatorImages reduction9808.relations [8,8,8,17,17,138] reduction9808.output := by lin_cert using reduction9808.terms
def image9809 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9809 : InImage map_43_201 image9809 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9809 : Bundle := named_bundle% "RealMapCertificates/relations/basis9809.json"
theorem reductionProof9809 : EqualModuloRelations reduction9809.relations reduction9809.input reduction9809.output := by lin_cert using reduction9809.terms
theorem substitutionProof9809 : IsMapEvaluation generatorImages reduction9809.relations [8,8,8,8,8,8,8,8,8,29] reduction9809.output := by lin_cert using reduction9809.terms
def image9810 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9810 : InImage map_43_201 image9810 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9810 : Bundle := named_bundle% "RealMapCertificates/relations/basis9810.json"
theorem reductionProof9810 : EqualModuloRelations reduction9810.relations reduction9810.input reduction9810.output := by lin_cert using reduction9810.terms
theorem substitutionProof9810 : IsMapEvaluation generatorImages reduction9810.relations [0,8,896] reduction9810.output := by lin_cert using reduction9810.terms
def map_43_202 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image9963 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9963 : InImage map_43_202 image9963 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9963 : Bundle := named_bundle% "RealMapCertificates/relations/basis9963.json"
theorem reductionProof9963 : EqualModuloRelations reduction9963.relations reduction9963.input reduction9963.output := by lin_cert using reduction9963.terms
theorem substitutionProof9963 : IsMapEvaluation generatorImages reduction9963.relations [0,8,918] reduction9963.output := by lin_cert using reduction9963.terms
def image9964 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9964 : InImage map_43_202 image9964 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9964 : Bundle := named_bundle% "RealMapCertificates/relations/basis9964.json"
theorem reductionProof9964 : EqualModuloRelations reduction9964.relations reduction9964.input reduction9964.output := by lin_cert using reduction9964.terms
theorem substitutionProof9964 : IsMapEvaluation generatorImages reduction9964.relations [0,0,17,759] reduction9964.output := by lin_cert using reduction9964.terms
def map_43_203 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image10104 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10104 : InImage map_43_203 image10104 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10104 : Bundle := named_bundle% "RealMapCertificates/relations/basis10104.json"
theorem reductionProof10104 : EqualModuloRelations reduction10104.relations reduction10104.input reduction10104.output := by lin_cert using reduction10104.terms
theorem substitutionProof10104 : IsMapEvaluation generatorImages reduction10104.relations [8,8,8,17,257] reduction10104.output := by lin_cert using reduction10104.terms
def map_43_204 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image10299 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10299 : InImage map_43_204 image10299 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10299 : Bundle := named_bundle% "RealMapCertificates/relations/basis10299.json"
theorem reductionProof10299 : EqualModuloRelations reduction10299.relations reduction10299.input reduction10299.output := by lin_cert using reduction10299.terms
theorem substitutionProof10299 : IsMapEvaluation generatorImages reduction10299.relations [16,64,225] reduction10299.output := by lin_cert using reduction10299.terms
def image10300 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10300 : InImage map_43_204 image10300 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10300 : Bundle := named_bundle% "RealMapCertificates/relations/basis10300.json"
theorem reductionProof10300 : EqualModuloRelations reduction10300.relations reduction10300.input reduction10300.output := by lin_cert using reduction10300.terms
theorem substitutionProof10300 : IsMapEvaluation generatorImages reduction10300.relations [8,8,8,17,17,147] reduction10300.output := by lin_cert using reduction10300.terms
def image10301 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10301 : InImage map_43_204 image10301 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10301 : Bundle := named_bundle% "RealMapCertificates/relations/basis10301.json"
theorem reductionProof10301 : EqualModuloRelations reduction10301.relations reduction10301.input reduction10301.output := by lin_cert using reduction10301.terms
theorem substitutionProof10301 : IsMapEvaluation generatorImages reduction10301.relations [8,8,8,8,8,8,8,8,8,32] reduction10301.output := by lin_cert using reduction10301.terms
def image10302 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10302 : InImage map_43_204 image10302 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10302 : Bundle := named_bundle% "RealMapCertificates/relations/basis10302.json"
theorem reductionProof10302 : EqualModuloRelations reduction10302.relations reduction10302.input reduction10302.output := by lin_cert using reduction10302.terms
theorem substitutionProof10302 : IsMapEvaluation generatorImages reduction10302.relations [0,64,452] reduction10302.output := by lin_cert using reduction10302.terms
def image10303 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10303 : InImage map_43_204 image10303 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10303 : Bundle := named_bundle% "RealMapCertificates/relations/basis10303.json"
theorem reductionProof10303 : EqualModuloRelations reduction10303.relations reduction10303.input reduction10303.output := by lin_cert using reduction10303.terms
theorem substitutionProof10303 : IsMapEvaluation generatorImages reduction10303.relations [0,8,8,725] reduction10303.output := by lin_cert using reduction10303.terms
def map_43_205 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image10485 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10485 : InImage map_43_205 image10485 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10485 : Bundle := named_bundle% "RealMapCertificates/relations/basis10485.json"
theorem reductionProof10485 : EqualModuloRelations reduction10485.relations reduction10485.input reduction10485.output := by lin_cert using reduction10485.terms
theorem substitutionProof10485 : IsMapEvaluation generatorImages reduction10485.relations [1,64,452] reduction10485.output := by lin_cert using reduction10485.terms
def image10486 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10486 : InImage map_43_205 image10486 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10486 : Bundle := named_bundle% "RealMapCertificates/relations/basis10486.json"
theorem reductionProof10486 : EqualModuloRelations reduction10486.relations reduction10486.input reduction10486.output := by lin_cert using reduction10486.terms
theorem substitutionProof10486 : IsMapEvaluation generatorImages reduction10486.relations [0,0,138,244] reduction10486.output := by lin_cert using reduction10486.terms
def image10487 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10487 : InImage map_43_205 image10487 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10487 : Bundle := named_bundle% "RealMapCertificates/relations/basis10487.json"
theorem reductionProof10487 : EqualModuloRelations reduction10487.relations reduction10487.input reduction10487.output := by lin_cert using reduction10487.terms
theorem substitutionProof10487 : IsMapEvaluation generatorImages reduction10487.relations [0,0,16,17,491] reduction10487.output := by lin_cert using reduction10487.terms
def map_43_206 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image10630 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10630 : InImage map_43_206 image10630 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10630 : Bundle := named_bundle% "RealMapCertificates/relations/basis10630.json"
theorem reductionProof10630 : EqualModuloRelations reduction10630.relations reduction10630.input reduction10630.output := by lin_cert using reduction10630.terms
theorem substitutionProof10630 : IsMapEvaluation generatorImages reduction10630.relations [8,8,8,16,17,149] reduction10630.output := by lin_cert using reduction10630.terms
def image10631 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10631 : InImage map_43_206 image10631 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10631 : Bundle := named_bundle% "RealMapCertificates/relations/basis10631.json"
theorem reductionProof10631 : EqualModuloRelations reduction10631.relations reduction10631.input reduction10631.output := by lin_cert using reduction10631.terms
theorem substitutionProof10631 : IsMapEvaluation generatorImages reduction10631.relations [0,0,0,17,17,491] reduction10631.output := by lin_cert using reduction10631.terms
def map_43_207 : Matrix 3 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image10854 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10854 : InImage map_43_207 image10854 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction10854 : Bundle := named_bundle% "RealMapCertificates/relations/basis10854.json"
theorem reductionProof10854 : EqualModuloRelations reduction10854.relations reduction10854.input reduction10854.output := by lin_cert using reduction10854.terms
theorem substitutionProof10854 : IsMapEvaluation generatorImages reduction10854.relations [8,64,298] reduction10854.output := by lin_cert using reduction10854.terms
def image10855 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10855 : InImage map_43_207 image10855 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction10855 : Bundle := named_bundle% "RealMapCertificates/relations/basis10855.json"
theorem reductionProof10855 : EqualModuloRelations reduction10855.relations reduction10855.input reduction10855.output := by lin_cert using reduction10855.terms
theorem substitutionProof10855 : IsMapEvaluation generatorImages reduction10855.relations [8,8,8,8,42,137] reduction10855.output := by lin_cert using reduction10855.terms
def image10856 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10856 : InImage map_43_207 image10856 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction10856 : Bundle := named_bundle% "RealMapCertificates/relations/basis10856.json"
theorem reductionProof10856 : EqualModuloRelations reduction10856.relations reduction10856.input reduction10856.output := by lin_cert using reduction10856.terms
theorem substitutionProof10856 : IsMapEvaluation generatorImages reduction10856.relations [8,8,8,8,8,8,8,8,9,32] reduction10856.output := by lin_cert using reduction10856.terms
def image10857 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10857 : InImage map_43_207 image10857 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction10857 : Bundle := named_bundle% "RealMapCertificates/relations/basis10857.json"
theorem reductionProof10857 : EqualModuloRelations reduction10857.relations reduction10857.input reduction10857.output := by lin_cert using reduction10857.terms
theorem substitutionProof10857 : IsMapEvaluation generatorImages reduction10857.relations [0,8,8,759] reduction10857.output := by lin_cert using reduction10857.terms
def image10858 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10858 : InImage map_43_207 image10858 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction10858 : Bundle := named_bundle% "RealMapCertificates/relations/basis10858.json"
theorem reductionProof10858 : EqualModuloRelations reduction10858.relations reduction10858.input reduction10858.output := by lin_cert using reduction10858.terms
theorem substitutionProof10858 : IsMapEvaluation generatorImages reduction10858.relations [0,0,0,0,137,246] reduction10858.output := by lin_cert using reduction10858.terms
def image10859 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10859 : InImage map_43_207 image10859 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction10859 : Bundle := named_bundle% "RealMapCertificates/relations/basis10859.json"
theorem reductionProof10859 : EqualModuloRelations reduction10859.relations reduction10859.input reduction10859.output := by lin_cert using reduction10859.terms
theorem substitutionProof10859 : IsMapEvaluation generatorImages reduction10859.relations [0,0,0,0,59,491] reduction10859.output := by lin_cert using reduction10859.terms
def map_43_208 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image11006 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11006 : InImage map_43_208 image11006 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11006 : Bundle := named_bundle% "RealMapCertificates/relations/basis11006.json"
theorem reductionProof11006 : EqualModuloRelations reduction11006.relations reduction11006.input reduction11006.output := by lin_cert using reduction11006.terms
theorem substitutionProof11006 : IsMapEvaluation generatorImages reduction11006.relations [0,0,8,17,623] reduction11006.output := by lin_cert using reduction11006.terms
def image11007 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11007 : InImage map_43_208 image11007 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11007 : Bundle := named_bundle% "RealMapCertificates/relations/basis11007.json"
theorem reductionProof11007 : EqualModuloRelations reduction11007.relations reduction11007.input reduction11007.output := by lin_cert using reduction11007.terms
theorem substitutionProof11007 : IsMapEvaluation generatorImages reduction11007.relations [0,0,0,0,0,0,1218] reduction11007.output := by lin_cert using reduction11007.terms
def map_43_209 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11162 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11162 : InImage map_43_209 image11162 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11162 : Bundle := named_bundle% "RealMapCertificates/relations/basis11162.json"
theorem reductionProof11162 : EqualModuloRelations reduction11162.relations reduction11162.input reduction11162.output := by lin_cert using reduction11162.terms
theorem substitutionProof11162 : IsMapEvaluation generatorImages reduction11162.relations [1349] reduction11162.output := by lin_cert using reduction11162.terms
def image11163 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11163 : InImage map_43_209 image11163 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11163 : Bundle := named_bundle% "RealMapCertificates/relations/basis11163.json"
theorem reductionProof11163 : EqualModuloRelations reduction11163.relations reduction11163.input reduction11163.output := by lin_cert using reduction11163.terms
theorem substitutionProof11163 : IsMapEvaluation generatorImages reduction11163.relations [8,8,8,8,17,206] reduction11163.output := by lin_cert using reduction11163.terms
def map_43_210 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11358 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11358 : InImage map_43_210 image11358 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11358 : Bundle := named_bundle% "RealMapCertificates/relations/basis11358.json"
theorem reductionProof11358 : EqualModuloRelations reduction11358.relations reduction11358.input reduction11358.output := by lin_cert using reduction11358.terms
theorem substitutionProof11358 : IsMapEvaluation generatorImages reduction11358.relations [8,8,64,225] reduction11358.output := by lin_cert using reduction11358.terms
def image11359 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11359 : InImage map_43_210 image11359 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11359 : Bundle := named_bundle% "RealMapCertificates/relations/basis11359.json"
theorem reductionProof11359 : EqualModuloRelations reduction11359.relations reduction11359.input reduction11359.output := by lin_cert using reduction11359.terms
theorem substitutionProof11359 : IsMapEvaluation generatorImages reduction11359.relations [8,8,8,8,17,17,113] reduction11359.output := by lin_cert using reduction11359.terms
def image11360 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11360 : InImage map_43_210 image11360 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11360 : Bundle := named_bundle% "RealMapCertificates/relations/basis11360.json"
theorem reductionProof11360 : EqualModuloRelations reduction11360.relations reduction11360.input reduction11360.output := by lin_cert using reduction11360.terms
theorem substitutionProof11360 : IsMapEvaluation generatorImages reduction11360.relations [8,8,8,8,8,8,8,8,13,32] reduction11360.output := by lin_cert using reduction11360.terms
def image11361 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11361 : InImage map_43_210 image11361 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11361 : Bundle := named_bundle% "RealMapCertificates/relations/basis11361.json"
theorem reductionProof11361 : EqualModuloRelations reduction11361.relations reduction11361.input reduction11361.output := by lin_cert using reduction11361.terms
theorem substitutionProof11361 : IsMapEvaluation generatorImages reduction11361.relations [0,8,8,16,491] reduction11361.output := by lin_cert using reduction11361.terms
def map_43_211 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11549 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11549 : InImage map_43_211 image11549 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11549 : Bundle := named_bundle% "RealMapCertificates/relations/basis11549.json"
theorem reductionProof11549 : EqualModuloRelations reduction11549.relations reduction11549.input reduction11549.output := by lin_cert using reduction11549.terms
theorem substitutionProof11549 : IsMapEvaluation generatorImages reduction11549.relations [0,0,8,8,17,491] reduction11549.output := by lin_cert using reduction11549.terms
def image11550 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11550 : InImage map_43_211 image11550 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11550 : Bundle := named_bundle% "RealMapCertificates/relations/basis11550.json"
theorem reductionProof11550 : EqualModuloRelations reduction11550.relations reduction11550.input reduction11550.output := by lin_cert using reduction11550.terms
theorem substitutionProof11550 : IsMapEvaluation generatorImages reduction11550.relations [0,0,0,149,244] reduction11550.output := by lin_cert using reduction11550.terms
def map_43_212 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image11694 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11694 : InImage map_43_212 image11694 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11694 : Bundle := named_bundle% "RealMapCertificates/relations/basis11694.json"
theorem reductionProof11694 : EqualModuloRelations reduction11694.relations reduction11694.input reduction11694.output := by lin_cert using reduction11694.terms
theorem substitutionProof11694 : IsMapEvaluation generatorImages reduction11694.relations [1400] reduction11694.output := by lin_cert using reduction11694.terms
def image11695 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11695 : InImage map_43_212 image11695 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11695 : Bundle := named_bundle% "RealMapCertificates/relations/basis11695.json"
theorem reductionProof11695 : EqualModuloRelations reduction11695.relations reduction11695.input reduction11695.output := by lin_cert using reduction11695.terms
theorem substitutionProof11695 : IsMapEvaluation generatorImages reduction11695.relations [8,8,8,8,8,17,149] reduction11695.output := by lin_cert using reduction11695.terms
def image11696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11696 : InImage map_43_212 image11696 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11696 : Bundle := named_bundle% "RealMapCertificates/relations/basis11696.json"
theorem reductionProof11696 : EqualModuloRelations reduction11696.relations reduction11696.input reduction11696.output := by lin_cert using reduction11696.terms
theorem substitutionProof11696 : IsMapEvaluation generatorImages reduction11696.relations [0,0,0,0,1335] reduction11696.output := by lin_cert using reduction11696.terms
def map_43_213 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11942 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11942 : InImage map_43_213 image11942 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11942 : Bundle := named_bundle% "RealMapCertificates/relations/basis11942.json"
theorem reductionProof11942 : EqualModuloRelations reduction11942.relations reduction11942.input reduction11942.output := by lin_cert using reduction11942.terms
theorem substitutionProof11942 : IsMapEvaluation generatorImages reduction11942.relations [8,8,64,238] reduction11942.output := by lin_cert using reduction11942.terms
def image11943 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11943 : InImage map_43_213 image11943 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11943 : Bundle := named_bundle% "RealMapCertificates/relations/basis11943.json"
theorem reductionProof11943 : EqualModuloRelations reduction11943.relations reduction11943.input reduction11943.output := by lin_cert using reduction11943.terms
theorem substitutionProof11943 : IsMapEvaluation generatorImages reduction11943.relations [8,8,8,8,8,17,154] reduction11943.output := by lin_cert using reduction11943.terms
def image11944 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11944 : InImage map_43_213 image11944 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11944 : Bundle := named_bundle% "RealMapCertificates/relations/basis11944.json"
theorem reductionProof11944 : EqualModuloRelations reduction11944.relations reduction11944.input reduction11944.output := by lin_cert using reduction11944.terms
theorem substitutionProof11944 : IsMapEvaluation generatorImages reduction11944.relations [8,8,8,8,8,8,8,9,13,32] reduction11944.output := by lin_cert using reduction11944.terms
def image11945 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11945 : InImage map_43_213 image11945 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11945 : Bundle := named_bundle% "RealMapCertificates/relations/basis11945.json"
theorem reductionProof11945 : EqualModuloRelations reduction11945.relations reduction11945.input reduction11945.output := by lin_cert using reduction11945.terms
theorem substitutionProof11945 : IsMapEvaluation generatorImages reduction11945.relations [0,0,0,0,0,0,0,64,491] reduction11945.output := by lin_cert using reduction11945.terms
def map_43_214 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12130 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12130 : InImage map_43_214 image12130 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12130 : Bundle := named_bundle% "RealMapCertificates/relations/basis12130.json"
theorem reductionProof12130 : EqualModuloRelations reduction12130.relations reduction12130.input reduction12130.output := by lin_cert using reduction12130.terms
theorem substitutionProof12130 : IsMapEvaluation generatorImages reduction12130.relations [0,0,0,0,0,0,64,509] reduction12130.output := by lin_cert using reduction12130.terms
def image12131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12131 : InImage map_43_214 image12131 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12131 : Bundle := named_bundle% "RealMapCertificates/relations/basis12131.json"
theorem reductionProof12131 : EqualModuloRelations reduction12131.relations reduction12131.input reduction12131.output := by lin_cert using reduction12131.terms
theorem substitutionProof12131 : IsMapEvaluation generatorImages reduction12131.relations [0,0,0,0,0,0,0,0,138,260] reduction12131.output := by lin_cert using reduction12131.terms
def map_43_215 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image12297 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12297 : InImage map_43_215 image12297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12297 : Bundle := named_bundle% "RealMapCertificates/relations/basis12297.json"
theorem reductionProof12297 : EqualModuloRelations reduction12297.relations reduction12297.input reduction12297.output := by lin_cert using reduction12297.terms
theorem substitutionProof12297 : IsMapEvaluation generatorImages reduction12297.relations [42,725] reduction12297.output := by lin_cert using reduction12297.terms
def image12298 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12298 : InImage map_43_215 image12298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12298 : Bundle := named_bundle% "RealMapCertificates/relations/basis12298.json"
theorem reductionProof12298 : EqualModuloRelations reduction12298.relations reduction12298.input reduction12298.output := by lin_cert using reduction12298.terms
theorem substitutionProof12298 : IsMapEvaluation generatorImages reduction12298.relations [8,1121] reduction12298.output := by lin_cert using reduction12298.terms
def image12299 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12299 : InImage map_43_215 image12299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12299 : Bundle := named_bundle% "RealMapCertificates/relations/basis12299.json"
theorem reductionProof12299 : EqualModuloRelations reduction12299.relations reduction12299.input reduction12299.output := by lin_cert using reduction12299.terms
theorem substitutionProof12299 : IsMapEvaluation generatorImages reduction12299.relations [8,8,8,8,8,17,160] reduction12299.output := by lin_cert using reduction12299.terms
def map_43_216 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12506 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12506 : InImage map_43_216 image12506 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12506 : Bundle := named_bundle% "RealMapCertificates/relations/basis12506.json"
theorem reductionProof12506 : EqualModuloRelations reduction12506.relations reduction12506.input reduction12506.output := by lin_cert using reduction12506.terms
theorem substitutionProof12506 : IsMapEvaluation generatorImages reduction12506.relations [8,8,16,64,138] reduction12506.output := by lin_cert using reduction12506.terms
def image12507 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12507 : InImage map_43_216 image12507 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12507 : Bundle := named_bundle% "RealMapCertificates/relations/basis12507.json"
theorem reductionProof12507 : EqualModuloRelations reduction12507.relations reduction12507.input reduction12507.output := by lin_cert using reduction12507.terms
theorem substitutionProof12507 : IsMapEvaluation generatorImages reduction12507.relations [8,8,8,8,8,17,162] reduction12507.output := by lin_cert using reduction12507.terms
def image12508 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12508 : InImage map_43_216 image12508 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12508 : Bundle := named_bundle% "RealMapCertificates/relations/basis12508.json"
theorem reductionProof12508 : EqualModuloRelations reduction12508.relations reduction12508.input reduction12508.output := by lin_cert using reduction12508.terms
theorem substitutionProof12508 : IsMapEvaluation generatorImages reduction12508.relations [8,8,8,8,8,8,8,13,13,32] reduction12508.output := by lin_cert using reduction12508.terms
def map_43_218 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image12849 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12849 : InImage map_43_218 image12849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction12849 : Bundle := named_bundle% "RealMapCertificates/relations/basis12849.json"
theorem reductionProof12849 : EqualModuloRelations reduction12849.relations reduction12849.input reduction12849.output := by lin_cert using reduction12849.terms
theorem substitutionProof12849 : IsMapEvaluation generatorImages reduction12849.relations [42,759] reduction12849.output := by lin_cert using reduction12849.terms
def image12850 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12850 : InImage map_43_218 image12850 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction12850 : Bundle := named_bundle% "RealMapCertificates/relations/basis12850.json"
theorem reductionProof12850 : EqualModuloRelations reduction12850.relations reduction12850.input reduction12850.output := by lin_cert using reduction12850.terms
theorem substitutionProof12850 : IsMapEvaluation generatorImages reduction12850.relations [8,1181] reduction12850.output := by lin_cert using reduction12850.terms
def image12851 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12851 : InImage map_43_218 image12851 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction12851 : Bundle := named_bundle% "RealMapCertificates/relations/basis12851.json"
theorem reductionProof12851 : EqualModuloRelations reduction12851.relations reduction12851.input reduction12851.output := by lin_cert using reduction12851.terms
theorem substitutionProof12851 : IsMapEvaluation generatorImages reduction12851.relations [8,8,8,8,8,16,167] reduction12851.output := by lin_cert using reduction12851.terms
def image12852 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12852 : InImage map_43_218 image12852 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction12852 : Bundle := named_bundle% "RealMapCertificates/relations/basis12852.json"
theorem reductionProof12852 : EqualModuloRelations reduction12852.relations reduction12852.input reduction12852.output := by lin_cert using reduction12852.terms
theorem substitutionProof12852 : IsMapEvaluation generatorImages reduction12852.relations [0,1500] reduction12852.output := by lin_cert using reduction12852.terms
def image12853 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12853 : InImage map_43_218 image12853 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction12853 : Bundle := named_bundle% "RealMapCertificates/relations/basis12853.json"
theorem reductionProof12853 : EqualModuloRelations reduction12853.relations reduction12853.input reduction12853.output := by lin_cert using reduction12853.terms
theorem substitutionProof12853 : IsMapEvaluation generatorImages reduction12853.relations [0,0,0,0,0,64,64,137] reduction12853.output := by lin_cert using reduction12853.terms
def map_43_219 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13095 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13095 : InImage map_43_219 image13095 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13095 : Bundle := named_bundle% "RealMapCertificates/relations/basis13095.json"
theorem reductionProof13095 : EqualModuloRelations reduction13095.relations reduction13095.input reduction13095.output := by lin_cert using reduction13095.terms
theorem substitutionProof13095 : IsMapEvaluation generatorImages reduction13095.relations [8,8,8,64,185] reduction13095.output := by lin_cert using reduction13095.terms
def image13096 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13096 : InImage map_43_219 image13096 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13096 : Bundle := named_bundle% "RealMapCertificates/relations/basis13096.json"
theorem reductionProof13096 : EqualModuloRelations reduction13096.relations reduction13096.input reduction13096.output := by lin_cert using reduction13096.terms
theorem substitutionProof13096 : IsMapEvaluation generatorImages reduction13096.relations [8,8,8,8,8,8,42,64] reduction13096.output := by lin_cert using reduction13096.terms
def image13097 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13097 : InImage map_43_219 image13097 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13097 : Bundle := named_bundle% "RealMapCertificates/relations/basis13097.json"
theorem reductionProof13097 : EqualModuloRelations reduction13097.relations reduction13097.input reduction13097.output := by lin_cert using reduction13097.terms
theorem substitutionProof13097 : IsMapEvaluation generatorImages reduction13097.relations [8,8,8,8,8,8,9,13,13,32] reduction13097.output := by lin_cert using reduction13097.terms
def image13098 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13098 : InImage map_43_219 image13098 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13098 : Bundle := named_bundle% "RealMapCertificates/relations/basis13098.json"
theorem reductionProof13098 : EqualModuloRelations reduction13098.relations reduction13098.input reduction13098.output := by lin_cert using reduction13098.terms
theorem substitutionProof13098 : IsMapEvaluation generatorImages reduction13098.relations [0,0,0,0,0,0,64,64,138] reduction13098.output := by lin_cert using reduction13098.terms
def map_43_221 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13422 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13422 : InImage map_43_221 image13422 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13422 : Bundle := named_bundle% "RealMapCertificates/relations/basis13422.json"
theorem reductionProof13422 : EqualModuloRelations reduction13422.relations reduction13422.input reduction13422.output := by lin_cert using reduction13422.terms
theorem substitutionProof13422 : IsMapEvaluation generatorImages reduction13422.relations [8,60,491] reduction13422.output := by lin_cert using reduction13422.terms
def image13423 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13423 : InImage map_43_221 image13423 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13423 : Bundle := named_bundle% "RealMapCertificates/relations/basis13423.json"
theorem reductionProof13423 : EqualModuloRelations reduction13423.relations reduction13423.input reduction13423.output := by lin_cert using reduction13423.terms
theorem substitutionProof13423 : IsMapEvaluation generatorImages reduction13423.relations [8,8,939] reduction13423.output := by lin_cert using reduction13423.terms
def image13424 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13424 : InImage map_43_221 image13424 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13424 : Bundle := named_bundle% "RealMapCertificates/relations/basis13424.json"
theorem reductionProof13424 : EqualModuloRelations reduction13424.relations reduction13424.input reduction13424.output := by lin_cert using reduction13424.terms
theorem substitutionProof13424 : IsMapEvaluation generatorImages reduction13424.relations [8,8,8,8,8,8,232] reduction13424.output := by lin_cert using reduction13424.terms
def map_43_222 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image13646 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13646 : InImage map_43_222 image13646 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13646 : Bundle := named_bundle% "RealMapCertificates/relations/basis13646.json"
theorem reductionProof13646 : EqualModuloRelations reduction13646.relations reduction13646.input reduction13646.output := by lin_cert using reduction13646.terms
theorem substitutionProof13646 : IsMapEvaluation generatorImages reduction13646.relations [8,8,8,8,64,138] reduction13646.output := by lin_cert using reduction13646.terms
def image13647 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13647 : InImage map_43_222 image13647 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13647 : Bundle := named_bundle% "RealMapCertificates/relations/basis13647.json"
theorem reductionProof13647 : EqualModuloRelations reduction13647.relations reduction13647.input reduction13647.output := by lin_cert using reduction13647.terms
theorem substitutionProof13647 : IsMapEvaluation generatorImages reduction13647.relations [8,8,8,8,8,8,23,113] reduction13647.output := by lin_cert using reduction13647.terms
def image13648 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13648 : InImage map_43_222 image13648 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13648 : Bundle := named_bundle% "RealMapCertificates/relations/basis13648.json"
theorem reductionProof13648 : EqualModuloRelations reduction13648.relations reduction13648.input reduction13648.output := by lin_cert using reduction13648.terms
theorem substitutionProof13648 : IsMapEvaluation generatorImages reduction13648.relations [8,8,8,8,8,8,13,13,13,32] reduction13648.output := by lin_cert using reduction13648.terms
def map_43_223 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image13825 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13825 : InImage map_43_223 image13825 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13825 : Bundle := named_bundle% "RealMapCertificates/relations/basis13825.json"
theorem reductionProof13825 : EqualModuloRelations reduction13825.relations reduction13825.input reduction13825.output := by lin_cert using reduction13825.terms
theorem substitutionProof13825 : IsMapEvaluation generatorImages reduction13825.relations [1604] reduction13825.output := by lin_cert using reduction13825.terms
def map_43_224 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13975 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13975 : InImage map_43_224 image13975 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13975 : Bundle := named_bundle% "RealMapCertificates/relations/basis13975.json"
theorem reductionProof13975 : EqualModuloRelations reduction13975.relations reduction13975.input reduction13975.output := by lin_cert using reduction13975.terms
theorem substitutionProof13975 : IsMapEvaluation generatorImages reduction13975.relations [8,42,623] reduction13975.output := by lin_cert using reduction13975.terms
def image13976 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13976 : InImage map_43_224 image13976 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13976 : Bundle := named_bundle% "RealMapCertificates/relations/basis13976.json"
theorem reductionProof13976 : EqualModuloRelations reduction13976.relations reduction13976.input reduction13976.output := by lin_cert using reduction13976.terms
theorem substitutionProof13976 : IsMapEvaluation generatorImages reduction13976.relations [8,8,972] reduction13976.output := by lin_cert using reduction13976.terms
def image13977 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13977 : InImage map_43_224 image13977 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13977 : Bundle := named_bundle% "RealMapCertificates/relations/basis13977.json"
theorem reductionProof13977 : EqualModuloRelations reduction13977.relations reduction13977.input reduction13977.output := by lin_cert using reduction13977.terms
theorem substitutionProof13977 : IsMapEvaluation generatorImages reduction13977.relations [8,8,8,8,8,8,8,167] reduction13977.output := by lin_cert using reduction13977.terms
def image13978 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13978 : InImage map_43_224 image13978 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13978 : Bundle := named_bundle% "RealMapCertificates/relations/basis13978.json"
theorem reductionProof13978 : EqualModuloRelations reduction13978.relations reduction13978.input reduction13978.output := by lin_cert using reduction13978.terms
theorem substitutionProof13978 : IsMapEvaluation generatorImages reduction13978.relations [0,0,0,64,623] reduction13978.output := by lin_cert using reduction13978.terms
def map_43_225 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14216 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14216 : InImage map_43_225 image14216 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14216 : Bundle := named_bundle% "RealMapCertificates/relations/basis14216.json"
theorem reductionProof14216 : EqualModuloRelations reduction14216.relations reduction14216.input reduction14216.output := by lin_cert using reduction14216.terms
theorem substitutionProof14216 : IsMapEvaluation generatorImages reduction14216.relations [8,8,8,8,64,147] reduction14216.output := by lin_cert using reduction14216.terms
def image14217 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14217 : InImage map_43_225 image14217 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14217 : Bundle := named_bundle% "RealMapCertificates/relations/basis14217.json"
theorem reductionProof14217 : EqualModuloRelations reduction14217.relations reduction14217.input reduction14217.output := by lin_cert using reduction14217.terms
theorem substitutionProof14217 : IsMapEvaluation generatorImages reduction14217.relations [8,8,8,8,8,9,13,13,13,32] reduction14217.output := by lin_cert using reduction14217.terms
def image14218 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14218 : InImage map_43_225 image14218 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14218 : Bundle := named_bundle% "RealMapCertificates/relations/basis14218.json"
theorem reductionProof14218 : EqualModuloRelations reduction14218.relations reduction14218.input reduction14218.output := by lin_cert using reduction14218.terms
theorem substitutionProof14218 : IsMapEvaluation generatorImages reduction14218.relations [8,8,8,8,8,8,8,173] reduction14218.output := by lin_cert using reduction14218.terms
def map_43_226 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14378 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14378 : InImage map_43_226 image14378 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14378 : Bundle := named_bundle% "RealMapCertificates/relations/basis14378.json"
theorem reductionProof14378 : EqualModuloRelations reduction14378.relations reduction14378.input reduction14378.output := by lin_cert using reduction14378.terms
theorem substitutionProof14378 : IsMapEvaluation generatorImages reduction14378.relations [8,1335] reduction14378.output := by lin_cert using reduction14378.terms
def map_43_227 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14551 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14551 : InImage map_43_227 image14551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14551 : Bundle := named_bundle% "RealMapCertificates/relations/basis14551.json"
theorem reductionProof14551 : EqualModuloRelations reduction14551.relations reduction14551.input reduction14551.output := by lin_cert using reduction14551.terms
theorem substitutionProof14551 : IsMapEvaluation generatorImages reduction14551.relations [8,8,42,491] reduction14551.output := by lin_cert using reduction14551.terms
def image14552 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14552 : InImage map_43_227 image14552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14552 : Bundle := named_bundle% "RealMapCertificates/relations/basis14552.json"
theorem reductionProof14552 : EqualModuloRelations reduction14552.relations reduction14552.input reduction14552.output := by lin_cert using reduction14552.terms
theorem substitutionProof14552 : IsMapEvaluation generatorImages reduction14552.relations [8,8,8,796] reduction14552.output := by lin_cert using reduction14552.terms
def image14553 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14553 : InImage map_43_227 image14553 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14553 : Bundle := named_bundle% "RealMapCertificates/relations/basis14553.json"
theorem reductionProof14553 : EqualModuloRelations reduction14553.relations reduction14553.input reduction14553.output := by lin_cert using reduction14553.terms
theorem substitutionProof14553 : IsMapEvaluation generatorImages reduction14553.relations [8,8,8,8,8,8,9,167] reduction14553.output := by lin_cert using reduction14553.terms
def image14554 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14554 : InImage map_43_227 image14554 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14554 : Bundle := named_bundle% "RealMapCertificates/relations/basis14554.json"
theorem reductionProof14554 : EqualModuloRelations reduction14554.relations reduction14554.input reduction14554.output := by lin_cert using reduction14554.terms
theorem substitutionProof14554 : IsMapEvaluation generatorImages reduction14554.relations [5,64,64,137] reduction14554.output := by lin_cert using reduction14554.terms
def map_43_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14784 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14784 : InImage map_43_228 image14784 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14784 : Bundle := named_bundle% "RealMapCertificates/relations/basis14784.json"
theorem reductionProof14784 : EqualModuloRelations reduction14784.relations reduction14784.input reduction14784.output := by lin_cert using reduction14784.terms
theorem substitutionProof14784 : IsMapEvaluation generatorImages reduction14784.relations [8,8,8,8,16,299] reduction14784.output := by lin_cert using reduction14784.terms
def image14785 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14785 : InImage map_43_228 image14785 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14785 : Bundle := named_bundle% "RealMapCertificates/relations/basis14785.json"
theorem reductionProof14785 : EqualModuloRelations reduction14785.relations reduction14785.input reduction14785.output := by lin_cert using reduction14785.terms
theorem substitutionProof14785 : IsMapEvaluation generatorImages reduction14785.relations [8,8,8,8,8,13,13,13,13,32] reduction14785.output := by lin_cert using reduction14785.terms
def image14786 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14786 : InImage map_43_228 image14786 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14786 : Bundle := named_bundle% "RealMapCertificates/relations/basis14786.json"
theorem reductionProof14786 : EqualModuloRelations reduction14786.relations reduction14786.input reduction14786.output := by lin_cert using reduction14786.terms
theorem substitutionProof14786 : IsMapEvaluation generatorImages reduction14786.relations [8,8,8,8,8,8,8,186] reduction14786.output := by lin_cert using reduction14786.terms
def map_43_229 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14980 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14980 : InImage map_43_229 image14980 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14980 : Bundle := named_bundle% "RealMapCertificates/relations/basis14980.json"
theorem reductionProof14980 : EqualModuloRelations reduction14980.relations reduction14980.input reduction14980.output := by lin_cert using reduction14980.terms
theorem substitutionProof14980 : IsMapEvaluation generatorImages reduction14980.relations [8,1381] reduction14980.output := by lin_cert using reduction14980.terms
def map_43_230 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image15145 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15145 : InImage map_43_230 image15145 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15145 : Bundle := named_bundle% "RealMapCertificates/relations/basis15145.json"
theorem reductionProof15145 : EqualModuloRelations reduction15145.relations reduction15145.input reduction15145.output := by lin_cert using reduction15145.terms
theorem substitutionProof15145 : IsMapEvaluation generatorImages reduction15145.relations [138,491] reduction15145.output := by lin_cert using reduction15145.terms
def image15146 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15146 : InImage map_43_230 image15146 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15146 : Bundle := named_bundle% "RealMapCertificates/relations/basis15146.json"
theorem reductionProof15146 : EqualModuloRelations reduction15146.relations reduction15146.input reduction15146.output := by lin_cert using reduction15146.terms
theorem substitutionProof15146 : IsMapEvaluation generatorImages reduction15146.relations [8,8,42,516] reduction15146.output := by lin_cert using reduction15146.terms
def image15147 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15147 : InImage map_43_230 image15147 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15147 : Bundle := named_bundle% "RealMapCertificates/relations/basis15147.json"
theorem reductionProof15147 : EqualModuloRelations reduction15147.relations reduction15147.input reduction15147.output := by lin_cert using reduction15147.terms
theorem substitutionProof15147 : IsMapEvaluation generatorImages reduction15147.relations [8,8,8,831] reduction15147.output := by lin_cert using reduction15147.terms
def image15148 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15148 : InImage map_43_230 image15148 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15148 : Bundle := named_bundle% "RealMapCertificates/relations/basis15148.json"
theorem reductionProof15148 : EqualModuloRelations reduction15148.relations reduction15148.input reduction15148.output := by lin_cert using reduction15148.terms
theorem substitutionProof15148 : IsMapEvaluation generatorImages reduction15148.relations [8,8,8,8,8,8,13,167] reduction15148.output := by lin_cert using reduction15148.terms
def map_43_231 : Matrix 3 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image15406 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15406 : InImage map_43_231 image15406 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15406 : Bundle := named_bundle% "RealMapCertificates/relations/basis15406.json"
theorem reductionProof15406 : EqualModuloRelations reduction15406.relations reduction15406.input reduction15406.output := by lin_cert using reduction15406.terms
theorem substitutionProof15406 : IsMapEvaluation generatorImages reduction15406.relations [1751] reduction15406.output := by lin_cert using reduction15406.terms
def image15407 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15407 : InImage map_43_231 image15407 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15407 : Bundle := named_bundle% "RealMapCertificates/relations/basis15407.json"
theorem reductionProof15407 : EqualModuloRelations reduction15407.relations reduction15407.input reduction15407.output := by lin_cert using reduction15407.terms
theorem substitutionProof15407 : IsMapEvaluation generatorImages reduction15407.relations [1750] reduction15407.output := by lin_cert using reduction15407.terms
def image15408 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15408 : InImage map_43_231 image15408 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15408 : Bundle := named_bundle% "RealMapCertificates/relations/basis15408.json"
theorem reductionProof15408 : EqualModuloRelations reduction15408.relations reduction15408.input reduction15408.output := by lin_cert using reduction15408.terms
theorem substitutionProof15408 : IsMapEvaluation generatorImages reduction15408.relations [8,8,8,8,9,13,13,13,13,32] reduction15408.output := by lin_cert using reduction15408.terms
def image15409 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15409 : InImage map_43_231 image15409 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15409 : Bundle := named_bundle% "RealMapCertificates/relations/basis15409.json"
theorem reductionProof15409 : EqualModuloRelations reduction15409.relations reduction15409.input reduction15409.output := by lin_cert using reduction15409.terms
theorem substitutionProof15409 : IsMapEvaluation generatorImages reduction15409.relations [8,8,8,8,8,64,113] reduction15409.output := by lin_cert using reduction15409.terms
def image15410 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15410 : InImage map_43_231 image15410 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15410 : Bundle := named_bundle% "RealMapCertificates/relations/basis15410.json"
theorem reductionProof15410 : EqualModuloRelations reduction15410.relations reduction15410.input reduction15410.output := by lin_cert using reduction15410.terms
theorem substitutionProof15410 : IsMapEvaluation generatorImages reduction15410.relations [8,8,8,8,8,8,8,23,80] reduction15410.output := by lin_cert using reduction15410.terms
def image15411 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15411 : InImage map_43_231 image15411 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15411 : Bundle := named_bundle% "RealMapCertificates/relations/basis15411.json"
theorem reductionProof15411 : EqualModuloRelations reduction15411.relations reduction15411.input reduction15411.output := by lin_cert using reduction15411.terms
theorem substitutionProof15411 : IsMapEvaluation generatorImages reduction15411.relations [0,0,0,1686] reduction15411.output := by lin_cert using reduction15411.terms
def map_43_232 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15600 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15600 : InImage map_43_232 image15600 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15600 : Bundle := named_bundle% "RealMapCertificates/relations/basis15600.json"
theorem reductionProof15600 : EqualModuloRelations reduction15600.relations reduction15600.input reduction15600.output := by lin_cert using reduction15600.terms
theorem substitutionProof15600 : IsMapEvaluation generatorImages reduction15600.relations [8,16,927] reduction15600.output := by lin_cert using reduction15600.terms
def image15601 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15601 : InImage map_43_232 image15601 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15601 : Bundle := named_bundle% "RealMapCertificates/relations/basis15601.json"
theorem reductionProof15601 : EqualModuloRelations reduction15601.relations reduction15601.input reduction15601.output := by lin_cert using reduction15601.terms
theorem substitutionProof15601 : IsMapEvaluation generatorImages reduction15601.relations [0,0,1735] reduction15601.output := by lin_cert using reduction15601.terms
def map_43_233 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image15804 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15804 : InImage map_43_233 image15804 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15804 : Bundle := named_bundle% "RealMapCertificates/relations/basis15804.json"
theorem reductionProof15804 : EqualModuloRelations reduction15804.relations reduction15804.input reduction15804.output := by lin_cert using reduction15804.terms
theorem substitutionProof15804 : IsMapEvaluation generatorImages reduction15804.relations [138,516] reduction15804.output := by lin_cert using reduction15804.terms
def image15805 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15805 : InImage map_43_233 image15805 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15805 : Bundle := named_bundle% "RealMapCertificates/relations/basis15805.json"
theorem reductionProof15805 : EqualModuloRelations reduction15805.relations reduction15805.input reduction15805.output := by lin_cert using reduction15805.terms
theorem substitutionProof15805 : IsMapEvaluation generatorImages reduction15805.relations [8,8,8,60,260] reduction15805.output := by lin_cert using reduction15805.terms
def image15806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15806 : InImage map_43_233 image15806 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15806 : Bundle := named_bundle% "RealMapCertificates/relations/basis15806.json"
theorem reductionProof15806 : EqualModuloRelations reduction15806.relations reduction15806.input reduction15806.output := by lin_cert using reduction15806.terms
theorem substitutionProof15806 : IsMapEvaluation generatorImages reduction15806.relations [8,8,8,8,653] reduction15806.output := by lin_cert using reduction15806.terms
def image15807 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15807 : InImage map_43_233 image15807 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15807 : Bundle := named_bundle% "RealMapCertificates/relations/basis15807.json"
theorem reductionProof15807 : EqualModuloRelations reduction15807.relations reduction15807.input reduction15807.output := by lin_cert using reduction15807.terms
theorem substitutionProof15807 : IsMapEvaluation generatorImages reduction15807.relations [8,8,8,8,8,9,13,167] reduction15807.output := by lin_cert using reduction15807.terms
def image15808 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15808 : InImage map_43_233 image15808 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15808 : Bundle := named_bundle% "RealMapCertificates/relations/basis15808.json"
theorem reductionProof15808 : EqualModuloRelations reduction15808.relations reduction15808.input reduction15808.output := by lin_cert using reduction15808.terms
theorem substitutionProof15808 : IsMapEvaluation generatorImages reduction15808.relations [0,0,0,1736] reduction15808.output := by lin_cert using reduction15808.terms
end RealMapCertificates
