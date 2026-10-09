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
  | 23 => [[7,7]]
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 167 => [[7,9,12]]
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 255 => []
  | 260 => []
  | 274 => []
  | 278 => []
  | 292 => []
  | 293 => []
  | 299 => []
  | 327 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 420 => []
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 549 => []
  | 574 => []
  | 602 => []
  | 625 => []
  | 642 => [[7,10,12,12]]
  | 689 => []
  | 795 => []
  | 809 => []
  | 821 => [[5,7,10,12,12]]
  | 830 => []
  | 862 => []
  | 864 => [[7,7,10,12,12]]
  | 897 => []
  | 919 => []
  | 927 => [[4,5,5,10,12,12]]
  | 962 => [[4,5,7,10,12,12]]
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1094 => []
  | 1145 => []
  | 1167 => [[4,4,5,7,10,12,12]]
  | 1316 => []
  | 1364 => []
  | 1535 => []
  | 1536 => [[4,6,8,12,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | 1737 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2092 => [[4,4,5,5,8,12,12,12]]
  | 2196 => []
  | _ => []
def map_43_234 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16056 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16056 : InImage map_43_234 image16056 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16056 : Bundle := named_bundle% "RealMapCertificates/relations/basis16056.json"
theorem reductionProof16056 : EqualModuloRelations reduction16056.relations reduction16056.input reduction16056.output := by lin_cert using reduction16056.terms
theorem substitutionProof16056 : IsMapEvaluation generatorImages reduction16056.relations [138,529] reduction16056.output := by lin_cert using reduction16056.terms
def image16057 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16057 : InImage map_43_234 image16057 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16057 : Bundle := named_bundle% "RealMapCertificates/relations/basis16057.json"
theorem reductionProof16057 : EqualModuloRelations reduction16057.relations reduction16057.input reduction16057.output := by lin_cert using reduction16057.terms
theorem substitutionProof16057 : IsMapEvaluation generatorImages reduction16057.relations [8,8,8,8,13,13,13,13,13,32] reduction16057.output := by lin_cert using reduction16057.terms
def image16058 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16058 : InImage map_43_234 image16058 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16058 : Bundle := named_bundle% "RealMapCertificates/relations/basis16058.json"
theorem reductionProof16058 : EqualModuloRelations reduction16058.relations reduction16058.input reduction16058.output := by lin_cert using reduction16058.terms
theorem substitutionProof16058 : IsMapEvaluation generatorImages reduction16058.relations [8,8,8,8,8,8,299] reduction16058.output := by lin_cert using reduction16058.terms
def image16059 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16059 : InImage map_43_234 image16059 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16059 : Bundle := named_bundle% "RealMapCertificates/relations/basis16059.json"
theorem reductionProof16059 : EqualModuloRelations reduction16059.relations reduction16059.input reduction16059.output := by lin_cert using reduction16059.terms
theorem substitutionProof16059 : IsMapEvaluation generatorImages reduction16059.relations [8,8,8,8,8,8,9,23,80] reduction16059.output := by lin_cert using reduction16059.terms
def image16060 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16060 : InImage map_43_234 image16060 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16060 : Bundle := named_bundle% "RealMapCertificates/relations/basis16060.json"
theorem reductionProof16060 : EqualModuloRelations reduction16060.relations reduction16060.input reduction16060.output := by lin_cert using reduction16060.terms
theorem substitutionProof16060 : IsMapEvaluation generatorImages reduction16060.relations [0,0,0,1752] reduction16060.output := by lin_cert using reduction16060.terms
def image16061 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16061 : InImage map_43_234 image16061 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16061 : Bundle := named_bundle% "RealMapCertificates/relations/basis16061.json"
theorem reductionProof16061 : EqualModuloRelations reduction16061.relations reduction16061.input reduction16061.output := by lin_cert using reduction16061.terms
theorem substitutionProof16061 : IsMapEvaluation generatorImages reduction16061.relations [0,0,0,0,1737] reduction16061.output := by lin_cert using reduction16061.terms
def map_43_235 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image16268 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16268 : InImage map_43_235 image16268 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16268 : Bundle := named_bundle% "RealMapCertificates/relations/basis16268.json"
theorem reductionProof16268 : EqualModuloRelations reduction16268.relations reduction16268.input reduction16268.output := by lin_cert using reduction16268.terms
theorem substitutionProof16268 : IsMapEvaluation generatorImages reduction16268.relations [8,8,1167] reduction16268.output := by lin_cert using reduction16268.terms
def map_43_236 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image16469 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16469 : InImage map_43_236 image16469 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16469 : Bundle := named_bundle% "RealMapCertificates/relations/basis16469.json"
theorem reductionProof16469 : EqualModuloRelations reduction16469.relations reduction16469.input reduction16469.output := by lin_cert using reduction16469.terms
theorem substitutionProof16469 : IsMapEvaluation generatorImages reduction16469.relations [16,138,260] reduction16469.output := by lin_cert using reduction16469.terms
def image16470 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16470 : InImage map_43_236 image16470 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16470 : Bundle := named_bundle% "RealMapCertificates/relations/basis16470.json"
theorem reductionProof16470 : EqualModuloRelations reduction16470.relations reduction16470.input reduction16470.output := by lin_cert using reduction16470.terms
theorem substitutionProof16470 : IsMapEvaluation generatorImages reduction16470.relations [8,8,8,42,380] reduction16470.output := by lin_cert using reduction16470.terms
def image16471 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16471 : InImage map_43_236 image16471 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16471 : Bundle := named_bundle% "RealMapCertificates/relations/basis16471.json"
theorem reductionProof16471 : EqualModuloRelations reduction16471.relations reduction16471.input reduction16471.output := by lin_cert using reduction16471.terms
theorem substitutionProof16471 : IsMapEvaluation generatorImages reduction16471.relations [8,8,8,8,689] reduction16471.output := by lin_cert using reduction16471.terms
def image16472 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16472 : InImage map_43_236 image16472 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16472 : Bundle := named_bundle% "RealMapCertificates/relations/basis16472.json"
theorem reductionProof16472 : EqualModuloRelations reduction16472.relations reduction16472.input reduction16472.output := by lin_cert using reduction16472.terms
theorem substitutionProof16472 : IsMapEvaluation generatorImages reduction16472.relations [8,8,8,8,8,13,13,167] reduction16472.output := by lin_cert using reduction16472.terms
def image16473 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16473 : InImage map_43_236 image16473 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16473 : Bundle := named_bundle% "RealMapCertificates/relations/basis16473.json"
theorem reductionProof16473 : EqualModuloRelations reduction16473.relations reduction16473.input reduction16473.output := by lin_cert using reduction16473.terms
theorem substitutionProof16473 : IsMapEvaluation generatorImages reduction16473.relations [0,149,491] reduction16473.output := by lin_cert using reduction16473.terms
def map_43_237 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image16730 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16730 : InImage map_43_237 image16730 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction16730 : Bundle := named_bundle% "RealMapCertificates/relations/basis16730.json"
theorem reductionProof16730 : EqualModuloRelations reduction16730.relations reduction16730.input reduction16730.output := by lin_cert using reduction16730.terms
theorem substitutionProof16730 : IsMapEvaluation generatorImages reduction16730.relations [64,809] reduction16730.output := by lin_cert using reduction16730.terms
def image16731 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16731 : InImage map_43_237 image16731 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction16731 : Bundle := named_bundle% "RealMapCertificates/relations/basis16731.json"
theorem reductionProof16731 : EqualModuloRelations reduction16731.relations reduction16731.input reduction16731.output := by lin_cert using reduction16731.terms
theorem substitutionProof16731 : IsMapEvaluation generatorImages reduction16731.relations [8,1535] reduction16731.output := by lin_cert using reduction16731.terms
def image16732 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16732 : InImage map_43_237 image16732 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction16732 : Bundle := named_bundle% "RealMapCertificates/relations/basis16732.json"
theorem reductionProof16732 : EqualModuloRelations reduction16732.relations reduction16732.input reduction16732.output := by lin_cert using reduction16732.terms
theorem substitutionProof16732 : IsMapEvaluation generatorImages reduction16732.relations [8,8,8,9,13,13,13,13,13,32] reduction16732.output := by lin_cert using reduction16732.terms
def image16733 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16733 : InImage map_43_237 image16733 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction16733 : Bundle := named_bundle% "RealMapCertificates/relations/basis16733.json"
theorem reductionProof16733 : EqualModuloRelations reduction16733.relations reduction16733.input reduction16733.output := by lin_cert using reduction16733.terms
theorem substitutionProof16733 : IsMapEvaluation generatorImages reduction16733.relations [8,8,8,8,8,8,327] reduction16733.output := by lin_cert using reduction16733.terms
def image16734 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16734 : InImage map_43_237 image16734 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction16734 : Bundle := named_bundle% "RealMapCertificates/relations/basis16734.json"
theorem reductionProof16734 : EqualModuloRelations reduction16734.relations reduction16734.input reduction16734.output := by lin_cert using reduction16734.terms
theorem substitutionProof16734 : IsMapEvaluation generatorImages reduction16734.relations [8,8,8,8,8,8,13,23,80] reduction16734.output := by lin_cert using reduction16734.terms
def image16735 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16735 : InImage map_43_237 image16735 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction16735 : Bundle := named_bundle% "RealMapCertificates/relations/basis16735.json"
theorem reductionProof16735 : EqualModuloRelations reduction16735.relations reduction16735.input reduction16735.output := by lin_cert using reduction16735.terms
theorem substitutionProof16735 : IsMapEvaluation generatorImages reduction16735.relations [1,149,491] reduction16735.output := by lin_cert using reduction16735.terms
def image16736 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16736 : InImage map_43_237 image16736 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction16736 : Bundle := named_bundle% "RealMapCertificates/relations/basis16736.json"
theorem reductionProof16736 : EqualModuloRelations reduction16736.relations reduction16736.input reduction16736.output := by lin_cert using reduction16736.terms
theorem substitutionProof16736 : IsMapEvaluation generatorImages reduction16736.relations [0,17,138,260] reduction16736.output := by lin_cert using reduction16736.terms
def map_43_238 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16931 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16931 : InImage map_43_238 image16931 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16931 : Bundle := named_bundle% "RealMapCertificates/relations/basis16931.json"
theorem reductionProof16931 : EqualModuloRelations reduction16931.relations reduction16931.input reduction16931.output := by lin_cert using reduction16931.terms
theorem substitutionProof16931 : IsMapEvaluation generatorImages reduction16931.relations [8,8,8,927] reduction16931.output := by lin_cert using reduction16931.terms
def image16932 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16932 : InImage map_43_238 image16932 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16932 : Bundle := named_bundle% "RealMapCertificates/relations/basis16932.json"
theorem reductionProof16932 : EqualModuloRelations reduction16932.relations reduction16932.input reduction16932.output := by lin_cert using reduction16932.terms
theorem substitutionProof16932 : IsMapEvaluation generatorImages reduction16932.relations [0,0,64,795] reduction16932.output := by lin_cert using reduction16932.terms
def image16933 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16933 : InImage map_43_238 image16933 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16933 : Bundle := named_bundle% "RealMapCertificates/relations/basis16933.json"
theorem reductionProof16933 : EqualModuloRelations reduction16933.relations reduction16933.input reduction16933.output := by lin_cert using reduction16933.terms
theorem substitutionProof16933 : IsMapEvaluation generatorImages reduction16933.relations [0,0,0,0,1832] reduction16933.output := by lin_cert using reduction16933.terms
def map_43_239 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17161 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17161 : InImage map_43_239 image17161 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17161 : Bundle := named_bundle% "RealMapCertificates/relations/basis17161.json"
theorem reductionProof17161 : EqualModuloRelations reduction17161.relations reduction17161.input reduction17161.output := by lin_cert using reduction17161.terms
theorem substitutionProof17161 : IsMapEvaluation generatorImages reduction17161.relations [8,113,491] reduction17161.output := by lin_cert using reduction17161.terms
def image17162 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17162 : InImage map_43_239 image17162 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17162 : Bundle := named_bundle% "RealMapCertificates/relations/basis17162.json"
theorem reductionProof17162 : EqualModuloRelations reduction17162.relations reduction17162.input reduction17162.output := by lin_cert using reduction17162.terms
theorem substitutionProof17162 : IsMapEvaluation generatorImages reduction17162.relations [8,8,8,8,42,260] reduction17162.output := by lin_cert using reduction17162.terms
def image17163 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17163 : InImage map_43_239 image17163 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17163 : Bundle := named_bundle% "RealMapCertificates/relations/basis17163.json"
theorem reductionProof17163 : EqualModuloRelations reduction17163.relations reduction17163.input reduction17163.output := by lin_cert using reduction17163.terms
theorem substitutionProof17163 : IsMapEvaluation generatorImages reduction17163.relations [8,8,8,8,9,13,13,167] reduction17163.output := by lin_cert using reduction17163.terms
def image17164 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17164 : InImage map_43_239 image17164 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17164 : Bundle := named_bundle% "RealMapCertificates/relations/basis17164.json"
theorem reductionProof17164 : EqualModuloRelations reduction17164.relations reduction17164.input reduction17164.output := by lin_cert using reduction17164.terms
theorem substitutionProof17164 : IsMapEvaluation generatorImages reduction17164.relations [8,8,8,8,8,549] reduction17164.output := by lin_cert using reduction17164.terms
def image17165 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17165 : InImage map_43_239 image17165 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17165 : Bundle := named_bundle% "RealMapCertificates/relations/basis17165.json"
theorem reductionProof17165 : EqualModuloRelations reduction17165.relations reduction17165.input reduction17165.output := by lin_cert using reduction17165.terms
theorem substitutionProof17165 : IsMapEvaluation generatorImages reduction17165.relations [0,149,516] reduction17165.output := by lin_cert using reduction17165.terms
def image17166 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17166 : InImage map_43_239 image17166 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17166 : Bundle := named_bundle% "RealMapCertificates/relations/basis17166.json"
theorem reductionProof17166 : EqualModuloRelations reduction17166.relations reduction17166.input reduction17166.output := by lin_cert using reduction17166.terms
theorem substitutionProof17166 : IsMapEvaluation generatorImages reduction17166.relations [0,0,0,0,246,260] reduction17166.output := by lin_cert using reduction17166.terms
def map_43_240 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17431 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17431 : InImage map_43_240 image17431 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17431 : Bundle := named_bundle% "RealMapCertificates/relations/basis17431.json"
theorem reductionProof17431 : EqualModuloRelations reduction17431.relations reduction17431.input reduction17431.output := by lin_cert using reduction17431.terms
theorem substitutionProof17431 : IsMapEvaluation generatorImages reduction17431.relations [8,138,404] reduction17431.output := by lin_cert using reduction17431.terms
def image17432 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17432 : InImage map_43_240 image17432 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17432 : Bundle := named_bundle% "RealMapCertificates/relations/basis17432.json"
theorem reductionProof17432 : EqualModuloRelations reduction17432.relations reduction17432.input reduction17432.output := by lin_cert using reduction17432.terms
theorem substitutionProof17432 : IsMapEvaluation generatorImages reduction17432.relations [8,8,8,13,13,13,13,13,13,32] reduction17432.output := by lin_cert using reduction17432.terms
def image17433 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17433 : InImage map_43_240 image17433 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17433 : Bundle := named_bundle% "RealMapCertificates/relations/basis17433.json"
theorem reductionProof17433 : EqualModuloRelations reduction17433.relations reduction17433.input reduction17433.output := by lin_cert using reduction17433.terms
theorem substitutionProof17433 : IsMapEvaluation generatorImages reduction17433.relations [8,8,8,8,8,9,13,23,80] reduction17433.output := by lin_cert using reduction17433.terms
def image17434 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17434 : InImage map_43_240 image17434 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17434 : Bundle := named_bundle% "RealMapCertificates/relations/basis17434.json"
theorem reductionProof17434 : EqualModuloRelations reduction17434.relations reduction17434.input reduction17434.output := by lin_cert using reduction17434.terms
theorem substitutionProof17434 : IsMapEvaluation generatorImages reduction17434.relations [8,8,8,8,8,8,16,188] reduction17434.output := by lin_cert using reduction17434.terms
def image17435 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17435 : InImage map_43_240 image17435 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17435 : Bundle := named_bundle% "RealMapCertificates/relations/basis17435.json"
theorem reductionProof17435 : EqualModuloRelations reduction17435.relations reduction17435.input reduction17435.output := by lin_cert using reduction17435.terms
theorem substitutionProof17435 : IsMapEvaluation generatorImages reduction17435.relations [0,64,830] reduction17435.output := by lin_cert using reduction17435.terms
def image17436 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17436 : InImage map_43_240 image17436 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17436 : Bundle := named_bundle% "RealMapCertificates/relations/basis17436.json"
theorem reductionProof17436 : EqualModuloRelations reduction17436.relations reduction17436.input reduction17436.output := by lin_cert using reduction17436.terms
theorem substitutionProof17436 : IsMapEvaluation generatorImages reduction17436.relations [0,17,138,278] reduction17436.output := by lin_cert using reduction17436.terms
def map_43_241 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image17694 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17694 : InImage map_43_241 image17694 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17694 : Bundle := named_bundle% "RealMapCertificates/relations/basis17694.json"
theorem reductionProof17694 : EqualModuloRelations reduction17694.relations reduction17694.input reduction17694.output := by lin_cert using reduction17694.terms
theorem substitutionProof17694 : IsMapEvaluation generatorImages reduction17694.relations [8,8,8,962] reduction17694.output := by lin_cert using reduction17694.terms
def map_43_242 : Matrix 1 6 := fun i j => ([false,false,false,true,false,false] : List Bool)[i.val*6+j.val]!
def image17923 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17923 : InImage map_43_242 image17923 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17923 : Bundle := named_bundle% "RealMapCertificates/relations/basis17923.json"
theorem reductionProof17923 : EqualModuloRelations reduction17923.relations reduction17923.input reduction17923.output := by lin_cert using reduction17923.terms
theorem substitutionProof17923 : IsMapEvaluation generatorImages reduction17923.relations [64,138,149] reduction17923.output := by lin_cert using reduction17923.terms
def image17924 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17924 : InImage map_43_242 image17924 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17924 : Bundle := named_bundle% "RealMapCertificates/relations/basis17924.json"
theorem reductionProof17924 : EqualModuloRelations reduction17924.relations reduction17924.input reduction17924.output := by lin_cert using reduction17924.terms
theorem substitutionProof17924 : IsMapEvaluation generatorImages reduction17924.relations [8,8,138,260] reduction17924.output := by lin_cert using reduction17924.terms
def image17925 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17925 : InImage map_43_242 image17925 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17925 : Bundle := named_bundle% "RealMapCertificates/relations/basis17925.json"
theorem reductionProof17925 : EqualModuloRelations reduction17925.relations reduction17925.input reduction17925.output := by lin_cert using reduction17925.terms
theorem substitutionProof17925 : IsMapEvaluation generatorImages reduction17925.relations [8,8,8,8,42,278] reduction17925.output := by lin_cert using reduction17925.terms
def image17926 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17926 : InImage map_43_242 image17926 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17926 : Bundle := named_bundle% "RealMapCertificates/relations/basis17926.json"
theorem reductionProof17926 : EqualModuloRelations reduction17926.relations reduction17926.input reduction17926.output := by lin_cert using reduction17926.terms
theorem substitutionProof17926 : IsMapEvaluation generatorImages reduction17926.relations [8,8,8,8,13,13,13,167] reduction17926.output := by lin_cert using reduction17926.terms
def image17927 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17927 : InImage map_43_242 image17927 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17927 : Bundle := named_bundle% "RealMapCertificates/relations/basis17927.json"
theorem reductionProof17927 : EqualModuloRelations reduction17927.relations reduction17927.input reduction17927.output := by lin_cert using reduction17927.terms
theorem substitutionProof17927 : IsMapEvaluation generatorImages reduction17927.relations [8,8,8,8,8,574] reduction17927.output := by lin_cert using reduction17927.terms
def image17928 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17928 : InImage map_43_242 image17928 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17928 : Bundle := named_bundle% "RealMapCertificates/relations/basis17928.json"
theorem reductionProof17928 : EqualModuloRelations reduction17928.relations reduction17928.input reduction17928.output := by lin_cert using reduction17928.terms
theorem substitutionProof17928 : IsMapEvaluation generatorImages reduction17928.relations [0,16,149,260] reduction17928.output := by lin_cert using reduction17928.terms
def map_43_243 : Matrix 4 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18214 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18214 : InImage map_43_243 image18214 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18214 : Bundle := named_bundle% "RealMapCertificates/relations/basis18214.json"
theorem reductionProof18214 : EqualModuloRelations reduction18214.relations reduction18214.input reduction18214.output := by lin_cert using reduction18214.terms
theorem substitutionProof18214 : IsMapEvaluation generatorImages reduction18214.relations [8,8,1316] reduction18214.output := by lin_cert using reduction18214.terms
def image18215 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation18215 : InImage map_43_243 image18215 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18215 : Bundle := named_bundle% "RealMapCertificates/relations/basis18215.json"
theorem reductionProof18215 : EqualModuloRelations reduction18215.relations reduction18215.input reduction18215.output := by lin_cert using reduction18215.terms
theorem substitutionProof18215 : IsMapEvaluation generatorImages reduction18215.relations [8,8,9,13,13,13,13,13,13,32] reduction18215.output := by lin_cert using reduction18215.terms
def image18216 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18216 : InImage map_43_243 image18216 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18216 : Bundle := named_bundle% "RealMapCertificates/relations/basis18216.json"
theorem reductionProof18216 : EqualModuloRelations reduction18216.relations reduction18216.input reduction18216.output := by lin_cert using reduction18216.terms
theorem substitutionProof18216 : IsMapEvaluation generatorImages reduction18216.relations [8,8,8,8,8,13,13,23,80] reduction18216.output := by lin_cert using reduction18216.terms
def image18217 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18217 : InImage map_43_243 image18217 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18217 : Bundle := named_bundle% "RealMapCertificates/relations/basis18217.json"
theorem reductionProof18217 : EqualModuloRelations reduction18217.relations reduction18217.input reduction18217.output := by lin_cert using reduction18217.terms
theorem substitutionProof18217 : IsMapEvaluation generatorImages reduction18217.relations [8,8,8,8,8,8,8,255] reduction18217.output := by lin_cert using reduction18217.terms
def image18218 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18218 : InImage map_43_243 image18218 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18218 : Bundle := named_bundle% "RealMapCertificates/relations/basis18218.json"
theorem reductionProof18218 : EqualModuloRelations reduction18218.relations reduction18218.input reduction18218.output := by lin_cert using reduction18218.terms
theorem substitutionProof18218 : IsMapEvaluation generatorImages reduction18218.relations [0,16,17,897] reduction18218.output := by lin_cert using reduction18218.terms
def image18219 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18219 : InImage map_43_243 image18219 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18219 : Bundle := named_bundle% "RealMapCertificates/relations/basis18219.json"
theorem reductionProof18219 : EqualModuloRelations reduction18219.relations reduction18219.input reduction18219.output := by lin_cert using reduction18219.terms
theorem substitutionProof18219 : IsMapEvaluation generatorImages reduction18219.relations [0,0,17,149,260] reduction18219.output := by lin_cert using reduction18219.terms
def map_43_244 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image18426 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18426 : InImage map_43_244 image18426 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18426 : Bundle := named_bundle% "RealMapCertificates/relations/basis18426.json"
theorem reductionProof18426 : EqualModuloRelations reduction18426.relations reduction18426.input reduction18426.output := by lin_cert using reduction18426.terms
theorem substitutionProof18426 : IsMapEvaluation generatorImages reduction18426.relations [8,8,8,17,642] reduction18426.output := by lin_cert using reduction18426.terms
def image18427 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18427 : InImage map_43_244 image18427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18427 : Bundle := named_bundle% "RealMapCertificates/relations/basis18427.json"
theorem reductionProof18427 : EqualModuloRelations reduction18427.relations reduction18427.input reduction18427.output := by lin_cert using reduction18427.terms
theorem substitutionProof18427 : IsMapEvaluation generatorImages reduction18427.relations [0,2092] reduction18427.output := by lin_cert using reduction18427.terms
def image18428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18428 : InImage map_43_244 image18428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18428 : Bundle := named_bundle% "RealMapCertificates/relations/basis18428.json"
theorem reductionProof18428 : EqualModuloRelations reduction18428.relations reduction18428.input reduction18428.output := by lin_cert using reduction18428.terms
theorem substitutionProof18428 : IsMapEvaluation generatorImages reduction18428.relations [0,0,64,64,246] reduction18428.output := by lin_cert using reduction18428.terms
def image18429 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18429 : InImage map_43_244 image18429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18429 : Bundle := named_bundle% "RealMapCertificates/relations/basis18429.json"
theorem reductionProof18429 : EqualModuloRelations reduction18429.relations reduction18429.input reduction18429.output := by lin_cert using reduction18429.terms
theorem substitutionProof18429 : IsMapEvaluation generatorImages reduction18429.relations [0,0,17,17,897] reduction18429.output := by lin_cert using reduction18429.terms
def map_43_245 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18672 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18672 : InImage map_43_245 image18672 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18672 : Bundle := named_bundle% "RealMapCertificates/relations/basis18672.json"
theorem reductionProof18672 : EqualModuloRelations reduction18672.relations reduction18672.input reduction18672.output := by lin_cert using reduction18672.terms
theorem substitutionProof18672 : IsMapEvaluation generatorImages reduction18672.relations [64,138,160] reduction18672.output := by lin_cert using reduction18672.terms
def image18673 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18673 : InImage map_43_245 image18673 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18673 : Bundle := named_bundle% "RealMapCertificates/relations/basis18673.json"
theorem reductionProof18673 : EqualModuloRelations reduction18673.relations reduction18673.input reduction18673.output := by lin_cert using reduction18673.terms
theorem substitutionProof18673 : IsMapEvaluation generatorImages reduction18673.relations [8,8,138,278] reduction18673.output := by lin_cert using reduction18673.terms
def image18674 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18674 : InImage map_43_245 image18674 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18674 : Bundle := named_bundle% "RealMapCertificates/relations/basis18674.json"
theorem reductionProof18674 : EqualModuloRelations reduction18674.relations reduction18674.input reduction18674.output := by lin_cert using reduction18674.terms
theorem substitutionProof18674 : IsMapEvaluation generatorImages reduction18674.relations [8,8,8,9,13,13,13,167] reduction18674.output := by lin_cert using reduction18674.terms
def image18675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18675 : InImage map_43_245 image18675 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18675 : Bundle := named_bundle% "RealMapCertificates/relations/basis18675.json"
theorem reductionProof18675 : EqualModuloRelations reduction18675.relations reduction18675.input reduction18675.output := by lin_cert using reduction18675.terms
theorem substitutionProof18675 : IsMapEvaluation generatorImages reduction18675.relations [8,8,8,8,8,602] reduction18675.output := by lin_cert using reduction18675.terms
def image18676 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18676 : InImage map_43_245 image18676 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18676 : Bundle := named_bundle% "RealMapCertificates/relations/basis18676.json"
theorem reductionProof18676 : EqualModuloRelations reduction18676.relations reduction18676.input reduction18676.output := by lin_cert using reduction18676.terms
theorem substitutionProof18676 : IsMapEvaluation generatorImages reduction18676.relations [8,8,8,8,8,8,420] reduction18676.output := by lin_cert using reduction18676.terms
def image18677 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18677 : InImage map_43_245 image18677 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18677 : Bundle := named_bundle% "RealMapCertificates/relations/basis18677.json"
theorem reductionProof18677 : EqualModuloRelations reduction18677.relations reduction18677.input reduction18677.output := by lin_cert using reduction18677.terms
theorem substitutionProof18677 : IsMapEvaluation generatorImages reduction18677.relations [0,0,0,0,64,862] reduction18677.output := by lin_cert using reduction18677.terms
def image18678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18678 : InImage map_43_245 image18678 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18678 : Bundle := named_bundle% "RealMapCertificates/relations/basis18678.json"
theorem reductionProof18678 : EqualModuloRelations reduction18678.relations reduction18678.input reduction18678.output := by lin_cert using reduction18678.terms
theorem substitutionProof18678 : IsMapEvaluation generatorImages reduction18678.relations [0,0,0,0,0,0,0,260,260] reduction18678.output := by lin_cert using reduction18678.terms
def map_43_246 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18968 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18968 : InImage map_43_246 image18968 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18968 : Bundle := named_bundle% "RealMapCertificates/relations/basis18968.json"
theorem reductionProof18968 : EqualModuloRelations reduction18968.relations reduction18968.input reduction18968.output := by lin_cert using reduction18968.terms
theorem substitutionProof18968 : IsMapEvaluation generatorImages reduction18968.relations [8,8,1364] reduction18968.output := by lin_cert using reduction18968.terms
def image18969 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18969 : InImage map_43_246 image18969 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18969 : Bundle := named_bundle% "RealMapCertificates/relations/basis18969.json"
theorem reductionProof18969 : EqualModuloRelations reduction18969.relations reduction18969.input reduction18969.output := by lin_cert using reduction18969.terms
theorem substitutionProof18969 : IsMapEvaluation generatorImages reduction18969.relations [8,8,13,13,13,13,13,13,13,32] reduction18969.output := by lin_cert using reduction18969.terms
def image18970 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18970 : InImage map_43_246 image18970 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18970 : Bundle := named_bundle% "RealMapCertificates/relations/basis18970.json"
theorem reductionProof18970 : EqualModuloRelations reduction18970.relations reduction18970.input reduction18970.output := by lin_cert using reduction18970.terms
theorem substitutionProof18970 : IsMapEvaluation generatorImages reduction18970.relations [8,8,8,8,9,13,13,23,80] reduction18970.output := by lin_cert using reduction18970.terms
def image18971 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18971 : InImage map_43_246 image18971 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18971 : Bundle := named_bundle% "RealMapCertificates/relations/basis18971.json"
theorem reductionProof18971 : EqualModuloRelations reduction18971.relations reduction18971.input reduction18971.output := by lin_cert using reduction18971.terms
theorem substitutionProof18971 : IsMapEvaluation generatorImages reduction18971.relations [8,8,8,8,8,8,8,8,188] reduction18971.output := by lin_cert using reduction18971.terms
def image18972 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18972 : InImage map_43_246 image18972 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18972 : Bundle := named_bundle% "RealMapCertificates/relations/basis18972.json"
theorem reductionProof18972 : EqualModuloRelations reduction18972.relations reduction18972.input reduction18972.output := by lin_cert using reduction18972.terms
theorem substitutionProof18972 : IsMapEvaluation generatorImages reduction18972.relations [0,8,17,113,260] reduction18972.output := by lin_cert using reduction18972.terms
def image18973 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18973 : InImage map_43_246 image18973 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18973 : Bundle := named_bundle% "RealMapCertificates/relations/basis18973.json"
theorem reductionProof18973 : EqualModuloRelations reduction18973.relations reduction18973.input reduction18973.output := by lin_cert using reduction18973.terms
theorem substitutionProof18973 : IsMapEvaluation generatorImages reduction18973.relations [0,0,0,0,0,0,260,274] reduction18973.output := by lin_cert using reduction18973.terms
def image18974 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18974 : InImage map_43_246 image18974 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18974 : Bundle := named_bundle% "RealMapCertificates/relations/basis18974.json"
theorem reductionProof18974 : EqualModuloRelations reduction18974.relations reduction18974.input reduction18974.output := by lin_cert using reduction18974.terms
theorem substitutionProof18974 : IsMapEvaluation generatorImages reduction18974.relations [0,0,0,0,0,0,0,0,1926] reduction18974.output := by lin_cert using reduction18974.terms
def map_43_247 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19226 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19226 : InImage map_43_247 image19226 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19226 : Bundle := named_bundle% "RealMapCertificates/relations/basis19226.json"
theorem reductionProof19226 : EqualModuloRelations reduction19226.relations reduction19226.input reduction19226.output := by lin_cert using reduction19226.terms
theorem substitutionProof19226 : IsMapEvaluation generatorImages reduction19226.relations [193,491] reduction19226.output := by lin_cert using reduction19226.terms
def image19227 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19227 : InImage map_43_247 image19227 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19227 : Bundle := named_bundle% "RealMapCertificates/relations/basis19227.json"
theorem reductionProof19227 : EqualModuloRelations reduction19227.relations reduction19227.input reduction19227.output := by lin_cert using reduction19227.terms
theorem substitutionProof19227 : IsMapEvaluation generatorImages reduction19227.relations [8,8,8,8,821] reduction19227.output := by lin_cert using reduction19227.terms
def image19228 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19228 : InImage map_43_247 image19228 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19228 : Bundle := named_bundle% "RealMapCertificates/relations/basis19228.json"
theorem reductionProof19228 : EqualModuloRelations reduction19228.relations reduction19228.input reduction19228.output := by lin_cert using reduction19228.terms
theorem substitutionProof19228 : IsMapEvaluation generatorImages reduction19228.relations [0,0,0,0,0,0,0,0,1967] reduction19228.output := by lin_cert using reduction19228.terms
def map_43_248 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image19472 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19472 : InImage map_43_248 image19472 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction19472 : Bundle := named_bundle% "RealMapCertificates/relations/basis19472.json"
theorem reductionProof19472 : EqualModuloRelations reduction19472.relations reduction19472.input reduction19472.output := by lin_cert using reduction19472.terms
theorem substitutionProof19472 : IsMapEvaluation generatorImages reduction19472.relations [8,1737] reduction19472.output := by lin_cert using reduction19472.terms
def image19473 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19473 : InImage map_43_248 image19473 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction19473 : Bundle := named_bundle% "RealMapCertificates/relations/basis19473.json"
theorem reductionProof19473 : EqualModuloRelations reduction19473.relations reduction19473.input reduction19473.output := by lin_cert using reduction19473.terms
theorem substitutionProof19473 : IsMapEvaluation generatorImages reduction19473.relations [8,8,16,897] reduction19473.output := by lin_cert using reduction19473.terms
def image19474 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19474 : InImage map_43_248 image19474 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction19474 : Bundle := named_bundle% "RealMapCertificates/relations/basis19474.json"
theorem reductionProof19474 : EqualModuloRelations reduction19474.relations reduction19474.input reduction19474.output := by lin_cert using reduction19474.terms
theorem substitutionProof19474 : IsMapEvaluation generatorImages reduction19474.relations [8,8,8,13,13,13,13,167] reduction19474.output := by lin_cert using reduction19474.terms
def image19475 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19475 : InImage map_43_248 image19475 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction19475 : Bundle := named_bundle% "RealMapCertificates/relations/basis19475.json"
theorem reductionProof19475 : EqualModuloRelations reduction19475.relations reduction19475.input reduction19475.output := by lin_cert using reduction19475.terms
theorem substitutionProof19475 : IsMapEvaluation generatorImages reduction19475.relations [8,8,8,8,8,625] reduction19475.output := by lin_cert using reduction19475.terms
def image19476 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19476 : InImage map_43_248 image19476 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction19476 : Bundle := named_bundle% "RealMapCertificates/relations/basis19476.json"
theorem reductionProof19476 : EqualModuloRelations reduction19476.relations reduction19476.input reduction19476.output := by lin_cert using reduction19476.terms
theorem substitutionProof19476 : IsMapEvaluation generatorImages reduction19476.relations [8,8,8,8,8,9,420] reduction19476.output := by lin_cert using reduction19476.terms
def image19477 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19477 : InImage map_43_248 image19477 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction19477 : Bundle := named_bundle% "RealMapCertificates/relations/basis19477.json"
theorem reductionProof19477 : EqualModuloRelations reduction19477.relations reduction19477.input reduction19477.output := by lin_cert using reduction19477.terms
theorem substitutionProof19477 : IsMapEvaluation generatorImages reduction19477.relations [0,64,149,149] reduction19477.output := by lin_cert using reduction19477.terms
def image19478 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19478 : InImage map_43_248 image19478 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction19478 : Bundle := named_bundle% "RealMapCertificates/relations/basis19478.json"
theorem reductionProof19478 : EqualModuloRelations reduction19478.relations reduction19478.input reduction19478.output := by lin_cert using reduction19478.terms
theorem substitutionProof19478 : IsMapEvaluation generatorImages reduction19478.relations [0,0,0,0,0,0,0,0,0,0,1927] reduction19478.output := by lin_cert using reduction19478.terms
def map_43_249 : Matrix 2 8 := fun i j => ([false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image19781 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation19781 : InImage map_43_249 image19781 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction19781 : Bundle := named_bundle% "RealMapCertificates/relations/basis19781.json"
theorem reductionProof19781 : EqualModuloRelations reduction19781.relations reduction19781.input reduction19781.output := by lin_cert using reduction19781.terms
theorem substitutionProof19781 : IsMapEvaluation generatorImages reduction19781.relations [17,1536] reduction19781.output := by lin_cert using reduction19781.terms
def image19782 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19782 : InImage map_43_249 image19782 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction19782 : Bundle := named_bundle% "RealMapCertificates/relations/basis19782.json"
theorem reductionProof19782 : EqualModuloRelations reduction19782.relations reduction19782.input reduction19782.output := by lin_cert using reduction19782.terms
theorem substitutionProof19782 : IsMapEvaluation generatorImages reduction19782.relations [8,9,13,13,13,13,13,13,13,32] reduction19782.output := by lin_cert using reduction19782.terms
def image19783 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19783 : InImage map_43_249 image19783 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction19783 : Bundle := named_bundle% "RealMapCertificates/relations/basis19783.json"
theorem reductionProof19783 : EqualModuloRelations reduction19783.relations reduction19783.input reduction19783.output := by lin_cert using reduction19783.terms
theorem substitutionProof19783 : IsMapEvaluation generatorImages reduction19783.relations [8,8,8,1094] reduction19783.output := by lin_cert using reduction19783.terms
def image19784 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19784 : InImage map_43_249 image19784 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction19784 : Bundle := named_bundle% "RealMapCertificates/relations/basis19784.json"
theorem reductionProof19784 : EqualModuloRelations reduction19784.relations reduction19784.input reduction19784.output := by lin_cert using reduction19784.terms
theorem substitutionProof19784 : IsMapEvaluation generatorImages reduction19784.relations [8,8,8,8,13,13,13,23,80] reduction19784.output := by lin_cert using reduction19784.terms
def image19785 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19785 : InImage map_43_249 image19785 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction19785 : Bundle := named_bundle% "RealMapCertificates/relations/basis19785.json"
theorem reductionProof19785 : EqualModuloRelations reduction19785.relations reduction19785.input reduction19785.output := by lin_cert using reduction19785.terms
theorem substitutionProof19785 : IsMapEvaluation generatorImages reduction19785.relations [8,8,8,8,8,8,8,9,188] reduction19785.output := by lin_cert using reduction19785.terms
def image19786 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19786 : InImage map_43_249 image19786 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction19786 : Bundle := named_bundle% "RealMapCertificates/relations/basis19786.json"
theorem reductionProof19786 : EqualModuloRelations reduction19786.relations reduction19786.input reduction19786.output := by lin_cert using reduction19786.terms
theorem substitutionProof19786 : IsMapEvaluation generatorImages reduction19786.relations [1,64,149,149] reduction19786.output := by lin_cert using reduction19786.terms
def image19787 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19787 : InImage map_43_249 image19787 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction19787 : Bundle := named_bundle% "RealMapCertificates/relations/basis19787.json"
theorem reductionProof19787 : EqualModuloRelations reduction19787.relations reduction19787.input reduction19787.output := by lin_cert using reduction19787.terms
theorem substitutionProof19787 : IsMapEvaluation generatorImages reduction19787.relations [0,0,64,927] reduction19787.output := by lin_cert using reduction19787.terms
def image19788 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19788 : InImage map_43_249 image19788 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction19788 : Bundle := named_bundle% "RealMapCertificates/relations/basis19788.json"
theorem reductionProof19788 : EqualModuloRelations reduction19788.relations reduction19788.input reduction19788.output := by lin_cert using reduction19788.terms
theorem substitutionProof19788 : IsMapEvaluation generatorImages reduction19788.relations [0,0,0,0,0,0,0,0,0,1994] reduction19788.output := by lin_cert using reduction19788.terms
def map_43_250 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image20010 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20010 : InImage map_43_250 image20010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20010 : Bundle := named_bundle% "RealMapCertificates/relations/basis20010.json"
theorem reductionProof20010 : EqualModuloRelations reduction20010.relations reduction20010.input reduction20010.output := by lin_cert using reduction20010.terms
theorem substitutionProof20010 : IsMapEvaluation generatorImages reduction20010.relations [17,1552] reduction20010.output := by lin_cert using reduction20010.terms
def image20011 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20011 : InImage map_43_250 image20011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20011 : Bundle := named_bundle% "RealMapCertificates/relations/basis20011.json"
theorem reductionProof20011 : EqualModuloRelations reduction20011.relations reduction20011.input reduction20011.output := by lin_cert using reduction20011.terms
theorem substitutionProof20011 : IsMapEvaluation generatorImages reduction20011.relations [8,8,8,8,864] reduction20011.output := by lin_cert using reduction20011.terms
def image20012 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20012 : InImage map_43_250 image20012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20012 : Bundle := named_bundle% "RealMapCertificates/relations/basis20012.json"
theorem reductionProof20012 : EqualModuloRelations reduction20012.relations reduction20012.input reduction20012.output := by lin_cert using reduction20012.terms
theorem substitutionProof20012 : IsMapEvaluation generatorImages reduction20012.relations [0,0,0,0,0,64,64,260] reduction20012.output := by lin_cert using reduction20012.terms
def map_43_251 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20288 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20288 : InImage map_43_251 image20288 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20288 : Bundle := named_bundle% "RealMapCertificates/relations/basis20288.json"
theorem reductionProof20288 : EqualModuloRelations reduction20288.relations reduction20288.input reduction20288.output := by lin_cert using reduction20288.terms
theorem substitutionProof20288 : IsMapEvaluation generatorImages reduction20288.relations [8,64,113,149] reduction20288.output := by lin_cert using reduction20288.terms
def image20289 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20289 : InImage map_43_251 image20289 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20289 : Bundle := named_bundle% "RealMapCertificates/relations/basis20289.json"
theorem reductionProof20289 : EqualModuloRelations reduction20289.relations reduction20289.input reduction20289.output := by lin_cert using reduction20289.terms
theorem substitutionProof20289 : IsMapEvaluation generatorImages reduction20289.relations [8,8,9,13,13,13,13,167] reduction20289.output := by lin_cert using reduction20289.terms
def image20290 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20290 : InImage map_43_251 image20290 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20290 : Bundle := named_bundle% "RealMapCertificates/relations/basis20290.json"
theorem reductionProof20290 : EqualModuloRelations reduction20290.relations reduction20290.input reduction20290.output := by lin_cert using reduction20290.terms
theorem substitutionProof20290 : IsMapEvaluation generatorImages reduction20290.relations [8,8,8,113,260] reduction20290.output := by lin_cert using reduction20290.terms
def image20291 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20291 : InImage map_43_251 image20291 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20291 : Bundle := named_bundle% "RealMapCertificates/relations/basis20291.json"
theorem reductionProof20291 : EqualModuloRelations reduction20291.relations reduction20291.input reduction20291.output := by lin_cert using reduction20291.terms
theorem substitutionProof20291 : IsMapEvaluation generatorImages reduction20291.relations [8,8,8,8,8,23,292] reduction20291.output := by lin_cert using reduction20291.terms
def image20292 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20292 : InImage map_43_251 image20292 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20292 : Bundle := named_bundle% "RealMapCertificates/relations/basis20292.json"
theorem reductionProof20292 : EqualModuloRelations reduction20292.relations reduction20292.input reduction20292.output := by lin_cert using reduction20292.terms
theorem substitutionProof20292 : IsMapEvaluation generatorImages reduction20292.relations [8,8,8,8,8,8,8,293] reduction20292.output := by lin_cert using reduction20292.terms
def image20293 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20293 : InImage map_43_251 image20293 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20293 : Bundle := named_bundle% "RealMapCertificates/relations/basis20293.json"
theorem reductionProof20293 : EqualModuloRelations reduction20293.relations reduction20293.input reduction20293.output := by lin_cert using reduction20293.terms
theorem substitutionProof20293 : IsMapEvaluation generatorImages reduction20293.relations [0,0,0,0,0,2196] reduction20293.output := by lin_cert using reduction20293.terms
def image20294 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20294 : InImage map_43_251 image20294 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20294 : Bundle := named_bundle% "RealMapCertificates/relations/basis20294.json"
theorem reductionProof20294 : EqualModuloRelations reduction20294.relations reduction20294.input reduction20294.output := by lin_cert using reduction20294.terms
theorem substitutionProof20294 : IsMapEvaluation generatorImages reduction20294.relations [0,0,0,0,0,0,64,897] reduction20294.output := by lin_cert using reduction20294.terms
def map_43_252 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20589 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation20589 : InImage map_43_252 image20589 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20589 : Bundle := named_bundle% "RealMapCertificates/relations/basis20589.json"
theorem reductionProof20589 : EqualModuloRelations reduction20589.relations reduction20589.input reduction20589.output := by lin_cert using reduction20589.terms
theorem substitutionProof20589 : IsMapEvaluation generatorImages reduction20589.relations [8,1832] reduction20589.output := by lin_cert using reduction20589.terms
def image20590 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20590 : InImage map_43_252 image20590 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20590 : Bundle := named_bundle% "RealMapCertificates/relations/basis20590.json"
theorem reductionProof20590 : EqualModuloRelations reduction20590.relations reduction20590.input reduction20590.output := by lin_cert using reduction20590.terms
theorem substitutionProof20590 : IsMapEvaluation generatorImages reduction20590.relations [8,13,13,13,13,13,13,13,13,32] reduction20590.output := by lin_cert using reduction20590.terms
def image20591 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20591 : InImage map_43_252 image20591 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20591 : Bundle := named_bundle% "RealMapCertificates/relations/basis20591.json"
theorem reductionProof20591 : EqualModuloRelations reduction20591.relations reduction20591.input reduction20591.output := by lin_cert using reduction20591.terms
theorem substitutionProof20591 : IsMapEvaluation generatorImages reduction20591.relations [8,8,8,1145] reduction20591.output := by lin_cert using reduction20591.terms
def image20592 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20592 : InImage map_43_252 image20592 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20592 : Bundle := named_bundle% "RealMapCertificates/relations/basis20592.json"
theorem reductionProof20592 : EqualModuloRelations reduction20592.relations reduction20592.input reduction20592.output := by lin_cert using reduction20592.terms
theorem substitutionProof20592 : IsMapEvaluation generatorImages reduction20592.relations [8,8,8,9,13,13,13,23,80] reduction20592.output := by lin_cert using reduction20592.terms
def image20593 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20593 : InImage map_43_252 image20593 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20593 : Bundle := named_bundle% "RealMapCertificates/relations/basis20593.json"
theorem reductionProof20593 : EqualModuloRelations reduction20593.relations reduction20593.input reduction20593.output := by lin_cert using reduction20593.terms
theorem substitutionProof20593 : IsMapEvaluation generatorImages reduction20593.relations [8,8,8,8,8,8,8,13,188] reduction20593.output := by lin_cert using reduction20593.terms
def image20594 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20594 : InImage map_43_252 image20594 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20594 : Bundle := named_bundle% "RealMapCertificates/relations/basis20594.json"
theorem reductionProof20594 : EqualModuloRelations reduction20594.relations reduction20594.input reduction20594.output := by lin_cert using reduction20594.terms
theorem substitutionProof20594 : IsMapEvaluation generatorImages reduction20594.relations [0,0,0,0,0,0,64,919] reduction20594.output := by lin_cert using reduction20594.terms
def map_43_253 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20836 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20836 : InImage map_43_253 image20836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20836 : Bundle := named_bundle% "RealMapCertificates/relations/basis20836.json"
theorem reductionProof20836 : EqualModuloRelations reduction20836.relations reduction20836.input reduction20836.output := by lin_cert using reduction20836.terms
theorem substitutionProof20836 : IsMapEvaluation generatorImages reduction20836.relations [64,1009] reduction20836.output := by lin_cert using reduction20836.terms
def image20837 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20837 : InImage map_43_253 image20837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20837 : Bundle := named_bundle% "RealMapCertificates/relations/basis20837.json"
theorem reductionProof20837 : EqualModuloRelations reduction20837.relations reduction20837.input reduction20837.output := by lin_cert using reduction20837.terms
theorem substitutionProof20837 : IsMapEvaluation generatorImages reduction20837.relations [8,247,260] reduction20837.output := by lin_cert using reduction20837.terms
def image20838 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20838 : InImage map_43_253 image20838 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20838 : Bundle := named_bundle% "RealMapCertificates/relations/basis20838.json"
theorem reductionProof20838 : EqualModuloRelations reduction20838.relations reduction20838.input reduction20838.output := by lin_cert using reduction20838.terms
theorem substitutionProof20838 : IsMapEvaluation generatorImages reduction20838.relations [8,8,8,9,864] reduction20838.output := by lin_cert using reduction20838.terms
end RealMapCertificates
