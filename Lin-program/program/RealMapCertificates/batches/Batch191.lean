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
  | 19 => [[4,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 32 => [[7,9]]
  | 39 => [[4,4,8]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 167 => [[7,9,12]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 188 => []
  | 193 => [[5,5,7,12]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 209 => []
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 246 => []
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 260 => []
  | 292 => []
  | 293 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 299 => []
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 342 => [[3,4,4,4,4,4,4,4,4,4,4]]
  | 350 => []
  | 384 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 598 => [[0,6,9,12,12]]
  | 624 => []
  | 627 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 779 => []
  | 795 => []
  | 807 => []
  | 863 => [[4,7,7,7,12,12]]
  | 864 => [[7,7,10,12,12]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 897 => []
  | 920 => []
  | 940 => []
  | 957 => []
  | 1033 => []
  | 1059 => []
  | 1061 => [[4,5,5,5,9,12,12]]
  | 1317 => [[6,8,12,12,12]]
  | 1336 => [[0,5,9,12,12,12]]
  | 1366 => [[7,9,12,12,12]]
  | 1638 => [[5,6,9,12,12,12]]
  | 2307 => []
  | 2628 => []
  | 2741 => []
  | 2742 => [[0,0,4,8,12,12,12,12]]
  | _ => []
def map_43_254 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21109 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21109 : InImage map_43_254 image21109 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21109 : Bundle := named_bundle% "RealMapCertificates/relations/basis21109.json"
theorem reductionProof21109 : EqualModuloRelations reduction21109.relations reduction21109.input reduction21109.output := by lin_cert using reduction21109.terms
theorem substitutionProof21109 : IsMapEvaluation generatorImages reduction21109.relations [8,8,64,598] reduction21109.output := by lin_cert using reduction21109.terms
def image21110 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21110 : InImage map_43_254 image21110 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21110 : Bundle := named_bundle% "RealMapCertificates/relations/basis21110.json"
theorem reductionProof21110 : EqualModuloRelations reduction21110.relations reduction21110.input reduction21110.output := by lin_cert using reduction21110.terms
theorem substitutionProof21110 : IsMapEvaluation generatorImages reduction21110.relations [8,8,13,13,13,13,13,167] reduction21110.output := by lin_cert using reduction21110.terms
def image21111 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21111 : InImage map_43_254 image21111 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21111 : Bundle := named_bundle% "RealMapCertificates/relations/basis21111.json"
theorem reductionProof21111 : EqualModuloRelations reduction21111.relations reduction21111.input reduction21111.output := by lin_cert using reduction21111.terms
theorem substitutionProof21111 : IsMapEvaluation generatorImages reduction21111.relations [8,8,8,8,897] reduction21111.output := by lin_cert using reduction21111.terms
def image21112 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21112 : InImage map_43_254 image21112 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21112 : Bundle := named_bundle% "RealMapCertificates/relations/basis21112.json"
theorem reductionProof21112 : EqualModuloRelations reduction21112.relations reduction21112.input reduction21112.output := by lin_cert using reduction21112.terms
theorem substitutionProof21112 : IsMapEvaluation generatorImages reduction21112.relations [8,8,8,8,9,23,292] reduction21112.output := by lin_cert using reduction21112.terms
def image21113 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21113 : InImage map_43_254 image21113 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21113 : Bundle := named_bundle% "RealMapCertificates/relations/basis21113.json"
theorem reductionProof21113 : EqualModuloRelations reduction21113.relations reduction21113.input reduction21113.output := by lin_cert using reduction21113.terms
theorem substitutionProof21113 : IsMapEvaluation generatorImages reduction21113.relations [8,8,8,8,8,8,9,293] reduction21113.output := by lin_cert using reduction21113.terms
def map_43_255 : Matrix 3 5 := fun i j => ([true,false,false,false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21463 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation21463 : InImage map_43_255 image21463 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21463 : Bundle := named_bundle% "RealMapCertificates/relations/basis21463.json"
theorem reductionProof21463 : EqualModuloRelations reduction21463.relations reduction21463.input reduction21463.output := by lin_cert using reduction21463.terms
theorem substitutionProof21463 : IsMapEvaluation generatorImages reduction21463.relations [9,13,13,13,13,13,13,13,13,32] reduction21463.output := by lin_cert using reduction21463.terms
def image21464 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation21464 : InImage map_43_255 image21464 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21464 : Bundle := named_bundle% "RealMapCertificates/relations/basis21464.json"
theorem reductionProof21464 : EqualModuloRelations reduction21464.relations reduction21464.input reduction21464.output := by lin_cert using reduction21464.terms
theorem substitutionProof21464 : IsMapEvaluation generatorImages reduction21464.relations [8,17,1317] reduction21464.output := by lin_cert using reduction21464.terms
def image21465 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation21465 : InImage map_43_255 image21465 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21465 : Bundle := named_bundle% "RealMapCertificates/relations/basis21465.json"
theorem reductionProof21465 : EqualModuloRelations reduction21465.relations reduction21465.input reduction21465.output := by lin_cert using reduction21465.terms
theorem substitutionProof21465 : IsMapEvaluation generatorImages reduction21465.relations [8,8,8,13,13,13,13,23,80] reduction21465.output := by lin_cert using reduction21465.terms
def image21466 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation21466 : InImage map_43_255 image21466 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21466 : Bundle := named_bundle% "RealMapCertificates/relations/basis21466.json"
theorem reductionProof21466 : EqualModuloRelations reduction21466.relations reduction21466.input reduction21466.output := by lin_cert using reduction21466.terms
theorem substitutionProof21466 : IsMapEvaluation generatorImages reduction21466.relations [8,8,8,8,920] reduction21466.output := by lin_cert using reduction21466.terms
def image21467 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation21467 : InImage map_43_255 image21467 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21467 : Bundle := named_bundle% "RealMapCertificates/relations/basis21467.json"
theorem reductionProof21467 : EqualModuloRelations reduction21467.relations reduction21467.input reduction21467.output := by lin_cert using reduction21467.terms
theorem substitutionProof21467 : IsMapEvaluation generatorImages reduction21467.relations [8,8,8,8,8,8,9,13,188] reduction21467.output := by lin_cert using reduction21467.terms
def map_43_256 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21729 : InImage map_43_256 image21729 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21729 : Bundle := named_bundle% "RealMapCertificates/relations/basis21729.json"
theorem reductionProof21729 : EqualModuloRelations reduction21729.relations reduction21729.input reduction21729.output := by lin_cert using reduction21729.terms
theorem substitutionProof21729 : IsMapEvaluation generatorImages reduction21729.relations [64,1061] reduction21729.output := by lin_cert using reduction21729.terms
def image21730 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21730 : InImage map_43_256 image21730 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21730 : Bundle := named_bundle% "RealMapCertificates/relations/basis21730.json"
theorem reductionProof21730 : EqualModuloRelations reduction21730.relations reduction21730.input reduction21730.output := by lin_cert using reduction21730.terms
theorem substitutionProof21730 : IsMapEvaluation generatorImages reduction21730.relations [8,17,1336] reduction21730.output := by lin_cert using reduction21730.terms
def image21731 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21731 : InImage map_43_256 image21731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21731 : Bundle := named_bundle% "RealMapCertificates/relations/basis21731.json"
theorem reductionProof21731 : EqualModuloRelations reduction21731.relations reduction21731.input reduction21731.output := by lin_cert using reduction21731.terms
theorem substitutionProof21731 : IsMapEvaluation generatorImages reduction21731.relations [8,8,8,13,864] reduction21731.output := by lin_cert using reduction21731.terms
def image21732 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21732 : InImage map_43_256 image21732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21732 : Bundle := named_bundle% "RealMapCertificates/relations/basis21732.json"
theorem reductionProof21732 : EqualModuloRelations reduction21732.relations reduction21732.input reduction21732.output := by lin_cert using reduction21732.terms
theorem substitutionProof21732 : IsMapEvaluation generatorImages reduction21732.relations [0,0,0,0,64,64,299] reduction21732.output := by lin_cert using reduction21732.terms
def map_43_257 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22062 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22062 : InImage map_43_257 image22062 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22062 : Bundle := named_bundle% "RealMapCertificates/relations/basis22062.json"
theorem reductionProof22062 : EqualModuloRelations reduction22062.relations reduction22062.input reduction22062.output := by lin_cert using reduction22062.terms
theorem substitutionProof22062 : IsMapEvaluation generatorImages reduction22062.relations [2628] reduction22062.output := by lin_cert using reduction22062.terms
def image22063 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22063 : InImage map_43_257 image22063 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22063 : Bundle := named_bundle% "RealMapCertificates/relations/basis22063.json"
theorem reductionProof22063 : EqualModuloRelations reduction22063.relations reduction22063.input reduction22063.output := by lin_cert using reduction22063.terms
theorem substitutionProof22063 : IsMapEvaluation generatorImages reduction22063.relations [8,9,13,13,13,13,13,167] reduction22063.output := by lin_cert using reduction22063.terms
def image22064 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22064 : InImage map_43_257 image22064 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22064 : Bundle := named_bundle% "RealMapCertificates/relations/basis22064.json"
theorem reductionProof22064 : EqualModuloRelations reduction22064.relations reduction22064.input reduction22064.output := by lin_cert using reduction22064.terms
theorem substitutionProof22064 : IsMapEvaluation generatorImages reduction22064.relations [8,8,64,624] reduction22064.output := by lin_cert using reduction22064.terms
def image22065 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22065 : InImage map_43_257 image22065 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22065 : Bundle := named_bundle% "RealMapCertificates/relations/basis22065.json"
theorem reductionProof22065 : EqualModuloRelations reduction22065.relations reduction22065.input reduction22065.output := by lin_cert using reduction22065.terms
theorem substitutionProof22065 : IsMapEvaluation generatorImages reduction22065.relations [8,8,8,8,940] reduction22065.output := by lin_cert using reduction22065.terms
def image22066 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22066 : InImage map_43_257 image22066 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22066 : Bundle := named_bundle% "RealMapCertificates/relations/basis22066.json"
theorem reductionProof22066 : EqualModuloRelations reduction22066.relations reduction22066.input reduction22066.output := by lin_cert using reduction22066.terms
theorem substitutionProof22066 : IsMapEvaluation generatorImages reduction22066.relations [8,8,8,8,13,23,292] reduction22066.output := by lin_cert using reduction22066.terms
def image22067 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22067 : InImage map_43_257 image22067 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22067 : Bundle := named_bundle% "RealMapCertificates/relations/basis22067.json"
theorem reductionProof22067 : EqualModuloRelations reduction22067.relations reduction22067.input reduction22067.output := by lin_cert using reduction22067.terms
theorem substitutionProof22067 : IsMapEvaluation generatorImages reduction22067.relations [8,8,8,8,8,8,8,350] reduction22067.output := by lin_cert using reduction22067.terms
def map_43_258 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image22423 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22423 : InImage map_43_258 image22423 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22423 : Bundle := named_bundle% "RealMapCertificates/relations/basis22423.json"
theorem reductionProof22423 : EqualModuloRelations reduction22423.relations reduction22423.input reduction22423.output := by lin_cert using reduction22423.terms
theorem substitutionProof22423 : IsMapEvaluation generatorImages reduction22423.relations [13,13,13,13,13,13,13,13,13,32] reduction22423.output := by lin_cert using reduction22423.terms
def image22424 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22424 : InImage map_43_258 image22424 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22424 : Bundle := named_bundle% "RealMapCertificates/relations/basis22424.json"
theorem reductionProof22424 : EqualModuloRelations reduction22424.relations reduction22424.input reduction22424.output := by lin_cert using reduction22424.terms
theorem substitutionProof22424 : IsMapEvaluation generatorImages reduction22424.relations [8,16,1366] reduction22424.output := by lin_cert using reduction22424.terms
def image22425 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22425 : InImage map_43_258 image22425 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22425 : Bundle := named_bundle% "RealMapCertificates/relations/basis22425.json"
theorem reductionProof22425 : EqualModuloRelations reduction22425.relations reduction22425.input reduction22425.output := by lin_cert using reduction22425.terms
theorem substitutionProof22425 : IsMapEvaluation generatorImages reduction22425.relations [8,8,9,13,13,13,13,23,80] reduction22425.output := by lin_cert using reduction22425.terms
def image22426 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22426 : InImage map_43_258 image22426 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22426 : Bundle := named_bundle% "RealMapCertificates/relations/basis22426.json"
theorem reductionProof22426 : EqualModuloRelations reduction22426.relations reduction22426.input reduction22426.output := by lin_cert using reduction22426.terms
theorem substitutionProof22426 : IsMapEvaluation generatorImages reduction22426.relations [8,8,8,8,957] reduction22426.output := by lin_cert using reduction22426.terms
def image22427 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22427 : InImage map_43_258 image22427 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22427 : Bundle := named_bundle% "RealMapCertificates/relations/basis22427.json"
theorem reductionProof22427 : EqualModuloRelations reduction22427.relations reduction22427.input reduction22427.output := by lin_cert using reduction22427.terms
theorem substitutionProof22427 : IsMapEvaluation generatorImages reduction22427.relations [8,8,8,8,8,8,13,13,188] reduction22427.output := by lin_cert using reduction22427.terms
def map_43_259 : Matrix 3 5 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22735 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22735 : InImage map_43_259 image22735 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22735 : Bundle := named_bundle% "RealMapCertificates/relations/basis22735.json"
theorem reductionProof22735 : EqualModuloRelations reduction22735.relations reduction22735.input reduction22735.output := by lin_cert using reduction22735.terms
theorem substitutionProof22735 : IsMapEvaluation generatorImages reduction22735.relations [2741] reduction22735.output := by lin_cert using reduction22735.terms
def image22736 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22736 : InImage map_43_259 image22736 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22736 : Bundle := named_bundle% "RealMapCertificates/relations/basis22736.json"
theorem reductionProof22736 : EqualModuloRelations reduction22736.relations reduction22736.input reduction22736.output := by lin_cert using reduction22736.terms
theorem substitutionProof22736 : IsMapEvaluation generatorImages reduction22736.relations [8,64,863] reduction22736.output := by lin_cert using reduction22736.terms
def image22737 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22737 : InImage map_43_259 image22737 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22737 : Bundle := named_bundle% "RealMapCertificates/relations/basis22737.json"
theorem reductionProof22737 : EqualModuloRelations reduction22737.relations reduction22737.input reduction22737.output := by lin_cert using reduction22737.terms
theorem substitutionProof22737 : IsMapEvaluation generatorImages reduction22737.relations [8,8,193,260] reduction22737.output := by lin_cert using reduction22737.terms
def image22738 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation22738 : InImage map_43_259 image22738 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22738 : Bundle := named_bundle% "RealMapCertificates/relations/basis22738.json"
theorem reductionProof22738 : EqualModuloRelations reduction22738.relations reduction22738.input reduction22738.output := by lin_cert using reduction22738.terms
theorem substitutionProof22738 : IsMapEvaluation generatorImages reduction22738.relations [8,8,9,13,864] reduction22738.output := by lin_cert using reduction22738.terms
def image22739 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22739 : InImage map_43_259 image22739 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22739 : Bundle := named_bundle% "RealMapCertificates/relations/basis22739.json"
theorem reductionProof22739 : EqualModuloRelations reduction22739.relations reduction22739.input reduction22739.output := by lin_cert using reduction22739.terms
theorem substitutionProof22739 : IsMapEvaluation generatorImages reduction22739.relations [5,64,64,260] reduction22739.output := by lin_cert using reduction22739.terms
def map_43_260 : Matrix 1 6 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23097 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23097 : InImage map_43_260 image23097 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23097 : Bundle := named_bundle% "RealMapCertificates/relations/basis23097.json"
theorem reductionProof23097 : EqualModuloRelations reduction23097.relations reduction23097.input reduction23097.output := by lin_cert using reduction23097.terms
theorem substitutionProof23097 : IsMapEvaluation generatorImages reduction23097.relations [8,13,13,13,13,13,13,167] reduction23097.output := by lin_cert using reduction23097.terms
def image23098 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23098 : InImage map_43_260 image23098 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23098 : Bundle := named_bundle% "RealMapCertificates/relations/basis23098.json"
theorem reductionProof23098 : EqualModuloRelations reduction23098.relations reduction23098.input reduction23098.output := by lin_cert using reduction23098.terms
theorem substitutionProof23098 : IsMapEvaluation generatorImages reduction23098.relations [8,8,16,138,209] reduction23098.output := by lin_cert using reduction23098.terms
def image23099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23099 : InImage map_43_260 image23099 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23099 : Bundle := named_bundle% "RealMapCertificates/relations/basis23099.json"
theorem reductionProof23099 : EqualModuloRelations reduction23099.relations reduction23099.input reduction23099.output := by lin_cert using reduction23099.terms
theorem substitutionProof23099 : IsMapEvaluation generatorImages reduction23099.relations [8,8,8,9,13,23,292] reduction23099.output := by lin_cert using reduction23099.terms
def image23100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23100 : InImage map_43_260 image23100 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23100 : Bundle := named_bundle% "RealMapCertificates/relations/basis23100.json"
theorem reductionProof23100 : EqualModuloRelations reduction23100.relations reduction23100.input reduction23100.output := by lin_cert using reduction23100.terms
theorem substitutionProof23100 : IsMapEvaluation generatorImages reduction23100.relations [8,8,8,8,17,627] reduction23100.output := by lin_cert using reduction23100.terms
def image23101 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23101 : InImage map_43_260 image23101 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23101 : Bundle := named_bundle% "RealMapCertificates/relations/basis23101.json"
theorem reductionProof23101 : EqualModuloRelations reduction23101.relations reduction23101.input reduction23101.output := by lin_cert using reduction23101.terms
theorem substitutionProof23101 : IsMapEvaluation generatorImages reduction23101.relations [8,8,8,8,8,8,8,384] reduction23101.output := by lin_cert using reduction23101.terms
def image23102 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23102 : InImage map_43_260 image23102 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23102 : Bundle := named_bundle% "RealMapCertificates/relations/basis23102.json"
theorem reductionProof23102 : EqualModuloRelations reduction23102.relations reduction23102.input reduction23102.output := by lin_cert using reduction23102.terms
theorem substitutionProof23102 : IsMapEvaluation generatorImages reduction23102.relations [0,2742] reduction23102.output := by lin_cert using reduction23102.terms
def map_43_261 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image23546 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23546 : InImage map_43_261 image23546 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23546 : Bundle := named_bundle% "RealMapCertificates/relations/basis23546.json"
theorem reductionProof23546 : EqualModuloRelations reduction23546.relations reduction23546.input reduction23546.output := by lin_cert using reduction23546.terms
theorem substitutionProof23546 : IsMapEvaluation generatorImages reduction23546.relations [8,8,1638] reduction23546.output := by lin_cert using reduction23546.terms
def image23547 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23547 : InImage map_43_261 image23547 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23547 : Bundle := named_bundle% "RealMapCertificates/relations/basis23547.json"
theorem reductionProof23547 : EqualModuloRelations reduction23547.relations reduction23547.input reduction23547.output := by lin_cert using reduction23547.terms
theorem substitutionProof23547 : IsMapEvaluation generatorImages reduction23547.relations [8,8,13,13,13,13,13,23,80] reduction23547.output := by lin_cert using reduction23547.terms
def image23548 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23548 : InImage map_43_261 image23548 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23548 : Bundle := named_bundle% "RealMapCertificates/relations/basis23548.json"
theorem reductionProof23548 : EqualModuloRelations reduction23548.relations reduction23548.input reduction23548.output := by lin_cert using reduction23548.terms
theorem substitutionProof23548 : IsMapEvaluation generatorImages reduction23548.relations [8,8,8,8,8,779] reduction23548.output := by lin_cert using reduction23548.terms
def image23549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23549 : InImage map_43_261 image23549 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23549 : Bundle := named_bundle% "RealMapCertificates/relations/basis23549.json"
theorem reductionProof23549 : EqualModuloRelations reduction23549.relations reduction23549.input reduction23549.output := by lin_cert using reduction23549.terms
theorem substitutionProof23549 : IsMapEvaluation generatorImages reduction23549.relations [8,8,8,8,8,9,13,13,188] reduction23549.output := by lin_cert using reduction23549.terms
def image23550 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23550 : InImage map_43_261 image23550 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23550 : Bundle := named_bundle% "RealMapCertificates/relations/basis23550.json"
theorem reductionProof23550 : EqualModuloRelations reduction23550.relations reduction23550.input reduction23550.output := by lin_cert using reduction23550.terms
theorem substitutionProof23550 : IsMapEvaluation generatorImages reduction23550.relations [0,0,0,0,0,0,0,0,0,0,0,0,2307] reduction23550.output := by lin_cert using reduction23550.terms
def map_44_44 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image198 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation198 : InImage map_44_44 image198 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction198 : Bundle := named_bundle% "RealMapCertificates/relations/basis198.json"
theorem reductionProof198 : EqualModuloRelations reduction198.relations reduction198.input reduction198.output := by lin_cert using reduction198.terms
theorem substitutionProof198 : IsMapEvaluation generatorImages reduction198.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction198.output := by lin_cert using reduction198.terms
def map_44_131 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image2442 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation2442 : InImage map_44_131 image2442 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2442 : Bundle := named_bundle% "RealMapCertificates/relations/basis2442.json"
theorem reductionProof2442 : EqualModuloRelations reduction2442.relations reduction2442.input reduction2442.output := by lin_cert using reduction2442.terms
theorem substitutionProof2442 : IsMapEvaluation generatorImages reduction2442.relations [0,0,0,0,0,296] reduction2442.output := by lin_cert using reduction2442.terms
def map_44_133 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2581 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2581 : InImage map_44_133 image2581 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2581 : Bundle := named_bundle% "RealMapCertificates/relations/basis2581.json"
theorem reductionProof2581 : EqualModuloRelations reduction2581.relations reduction2581.input reduction2581.output := by lin_cert using reduction2581.terms
theorem substitutionProof2581 : IsMapEvaluation generatorImages reduction2581.relations [1,342] reduction2581.output := by lin_cert using reduction2581.terms
def map_44_138 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2945 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2945 : InImage map_44_138 image2945 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2945 : Bundle := named_bundle% "RealMapCertificates/relations/basis2945.json"
theorem reductionProof2945 : EqualModuloRelations reduction2945.relations reduction2945.input reduction2945.output := by lin_cert using reduction2945.terms
theorem substitutionProof2945 : IsMapEvaluation generatorImages reduction2945.relations [431] reduction2945.output := by lin_cert using reduction2945.terms
def map_44_139 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image3044 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3044 : InImage map_44_139 image3044 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3044 : Bundle := named_bundle% "RealMapCertificates/relations/basis3044.json"
theorem reductionProof3044 : EqualModuloRelations reduction3044.relations reduction3044.input reduction3044.output := by lin_cert using reduction3044.terms
theorem substitutionProof3044 : IsMapEvaluation generatorImages reduction3044.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction3044.output := by lin_cert using reduction3044.terms
def map_44_141 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3198 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3198 : InImage map_44_141 image3198 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3198 : Bundle := named_bundle% "RealMapCertificates/relations/basis3198.json"
theorem reductionProof3198 : EqualModuloRelations reduction3198.relations reduction3198.input reduction3198.output := by lin_cert using reduction3198.terms
theorem substitutionProof3198 : IsMapEvaluation generatorImages reduction3198.relations [469] reduction3198.output := by lin_cert using reduction3198.terms
def map_44_142 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3290 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3290 : InImage map_44_142 image3290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3290 : Bundle := named_bundle% "RealMapCertificates/relations/basis3290.json"
theorem reductionProof3290 : EqualModuloRelations reduction3290.relations reduction3290.input reduction3290.output := by lin_cert using reduction3290.terms
theorem substitutionProof3290 : IsMapEvaluation generatorImages reduction3290.relations [0,470] reduction3290.output := by lin_cert using reduction3290.terms
def map_44_144 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3440 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3440 : InImage map_44_144 image3440 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3440 : Bundle := named_bundle% "RealMapCertificates/relations/basis3440.json"
theorem reductionProof3440 : EqualModuloRelations reduction3440.relations reduction3440.input reduction3440.output := by lin_cert using reduction3440.terms
theorem substitutionProof3440 : IsMapEvaluation generatorImages reduction3440.relations [8,295] reduction3440.output := by lin_cert using reduction3440.terms
def map_44_145 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3539 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3539 : InImage map_44_145 image3539 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3539 : Bundle := named_bundle% "RealMapCertificates/relations/basis3539.json"
theorem reductionProof3539 : EqualModuloRelations reduction3539.relations reduction3539.input reduction3539.output := by lin_cert using reduction3539.terms
theorem substitutionProof3539 : IsMapEvaluation generatorImages reduction3539.relations [0,8,296] reduction3539.output := by lin_cert using reduction3539.terms
def map_44_147 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3699 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3699 : InImage map_44_147 image3699 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3699 : Bundle := named_bundle% "RealMapCertificates/relations/basis3699.json"
theorem reductionProof3699 : EqualModuloRelations reduction3699.relations reduction3699.input reduction3699.output := by lin_cert using reduction3699.terms
theorem substitutionProof3699 : IsMapEvaluation generatorImages reduction3699.relations [8,325] reduction3699.output := by lin_cert using reduction3699.terms
def map_44_148 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3798 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3798 : InImage map_44_148 image3798 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3798 : Bundle := named_bundle% "RealMapCertificates/relations/basis3798.json"
theorem reductionProof3798 : EqualModuloRelations reduction3798.relations reduction3798.input reduction3798.output := by lin_cert using reduction3798.terms
theorem substitutionProof3798 : IsMapEvaluation generatorImages reduction3798.relations [0,8,326] reduction3798.output := by lin_cert using reduction3798.terms
def map_44_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3953 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3953 : InImage map_44_150 image3953 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3953 : Bundle := named_bundle% "RealMapCertificates/relations/basis3953.json"
theorem reductionProof3953 : EqualModuloRelations reduction3953.relations reduction3953.input reduction3953.output := by lin_cert using reduction3953.terms
theorem substitutionProof3953 : IsMapEvaluation generatorImages reduction3953.relations [8,8,236] reduction3953.output := by lin_cert using reduction3953.terms
def map_44_151 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4076 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4076 : InImage map_44_151 image4076 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4076 : Bundle := named_bundle% "RealMapCertificates/relations/basis4076.json"
theorem reductionProof4076 : EqualModuloRelations reduction4076.relations reduction4076.input reduction4076.output := by lin_cert using reduction4076.terms
theorem substitutionProof4076 : IsMapEvaluation generatorImages reduction4076.relations [0,8,16,183] reduction4076.output := by lin_cert using reduction4076.terms
def map_44_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4235 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4235 : InImage map_44_153 image4235 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4235 : Bundle := named_bundle% "RealMapCertificates/relations/basis4235.json"
theorem reductionProof4235 : EqualModuloRelations reduction4235.relations reduction4235.input reduction4235.output := by lin_cert using reduction4235.terms
theorem substitutionProof4235 : IsMapEvaluation generatorImages reduction4235.relations [8,8,252] reduction4235.output := by lin_cert using reduction4235.terms
def map_44_156 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4477 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4477 : InImage map_44_156 image4477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4477 : Bundle := named_bundle% "RealMapCertificates/relations/basis4477.json"
theorem reductionProof4477 : EqualModuloRelations reduction4477.relations reduction4477.input reduction4477.output := by lin_cert using reduction4477.terms
theorem substitutionProof4477 : IsMapEvaluation generatorImages reduction4477.relations [8,8,8,182] reduction4477.output := by lin_cert using reduction4477.terms
def map_44_159 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4746 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4746 : InImage map_44_159 image4746 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4746 : Bundle := named_bundle% "RealMapCertificates/relations/basis4746.json"
theorem reductionProof4746 : EqualModuloRelations reduction4746.relations reduction4746.input reduction4746.output := by lin_cert using reduction4746.terms
theorem substitutionProof4746 : IsMapEvaluation generatorImages reduction4746.relations [8,8,8,199] reduction4746.output := by lin_cert using reduction4746.terms
def map_44_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4924 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4924 : InImage map_44_161 image4924 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4924 : Bundle := named_bundle% "RealMapCertificates/relations/basis4924.json"
theorem reductionProof4924 : EqualModuloRelations reduction4924.relations reduction4924.input reduction4924.output := by lin_cert using reduction4924.terms
theorem substitutionProof4924 : IsMapEvaluation generatorImages reduction4924.relations [0,0,635] reduction4924.output := by lin_cert using reduction4924.terms
def map_44_162 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5016 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5016 : InImage map_44_162 image5016 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5016 : Bundle := named_bundle% "RealMapCertificates/relations/basis5016.json"
theorem reductionProof5016 : EqualModuloRelations reduction5016.relations reduction5016.input reduction5016.output := by lin_cert using reduction5016.terms
theorem substitutionProof5016 : IsMapEvaluation generatorImages reduction5016.relations [8,8,8,8,145] reduction5016.output := by lin_cert using reduction5016.terms
def image5017 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5017 : InImage map_44_162 image5017 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5017 : Bundle := named_bundle% "RealMapCertificates/relations/basis5017.json"
theorem reductionProof5017 : EqualModuloRelations reduction5017.relations reduction5017.input reduction5017.output := by lin_cert using reduction5017.terms
theorem substitutionProof5017 : IsMapEvaluation generatorImages reduction5017.relations [0,0,0,636] reduction5017.output := by lin_cert using reduction5017.terms
def map_44_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5139 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5139 : InImage map_44_163 image5139 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5139 : Bundle := named_bundle% "RealMapCertificates/relations/basis5139.json"
theorem reductionProof5139 : EqualModuloRelations reduction5139.relations reduction5139.input reduction5139.output := by lin_cert using reduction5139.terms
theorem substitutionProof5139 : IsMapEvaluation generatorImages reduction5139.relations [1,1,635] reduction5139.output := by lin_cert using reduction5139.terms
def map_44_164 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5214 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5214 : InImage map_44_164 image5214 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5214 : Bundle := named_bundle% "RealMapCertificates/relations/basis5214.json"
theorem reductionProof5214 : EqualModuloRelations reduction5214.relations reduction5214.input reduction5214.output := by lin_cert using reduction5214.terms
theorem substitutionProof5214 : IsMapEvaluation generatorImages reduction5214.relations [0,0,662] reduction5214.output := by lin_cert using reduction5214.terms
def map_44_165 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5319 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5319 : InImage map_44_165 image5319 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5319 : Bundle := named_bundle% "RealMapCertificates/relations/basis5319.json"
theorem reductionProof5319 : EqualModuloRelations reduction5319.relations reduction5319.input reduction5319.output := by lin_cert using reduction5319.terms
theorem substitutionProof5319 : IsMapEvaluation generatorImages reduction5319.relations [8,8,8,8,152] reduction5319.output := by lin_cert using reduction5319.terms
def map_44_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5537 : InImage map_44_167 image5537 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5537 : Bundle := named_bundle% "RealMapCertificates/relations/basis5537.json"
theorem reductionProof5537 : EqualModuloRelations reduction5537.relations reduction5537.input reduction5537.output := by lin_cert using reduction5537.terms
theorem substitutionProof5537 : IsMapEvaluation generatorImages reduction5537.relations [0,0,16,402] reduction5537.output := by lin_cert using reduction5537.terms
def map_44_168 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5633 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5633 : InImage map_44_168 image5633 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5633 : Bundle := named_bundle% "RealMapCertificates/relations/basis5633.json"
theorem reductionProof5633 : EqualModuloRelations reduction5633.relations reduction5633.input reduction5633.output := by lin_cert using reduction5633.terms
theorem substitutionProof5633 : IsMapEvaluation generatorImages reduction5633.relations [8,8,8,8,8,110] reduction5633.output := by lin_cert using reduction5633.terms
def image5634 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5634 : InImage map_44_168 image5634 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5634 : Bundle := named_bundle% "RealMapCertificates/relations/basis5634.json"
theorem reductionProof5634 : EqualModuloRelations reduction5634.relations reduction5634.input reduction5634.output := by lin_cert using reduction5634.terms
theorem substitutionProof5634 : IsMapEvaluation generatorImages reduction5634.relations [0,0,0,0,685] reduction5634.output := by lin_cert using reduction5634.terms
def map_44_169 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5772 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5772 : InImage map_44_169 image5772 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5772 : Bundle := named_bundle% "RealMapCertificates/relations/basis5772.json"
theorem reductionProof5772 : EqualModuloRelations reduction5772.relations reduction5772.input reduction5772.output := by lin_cert using reduction5772.terms
theorem substitutionProof5772 : IsMapEvaluation generatorImages reduction5772.relations [0,0,0,0,17,403] reduction5772.output := by lin_cert using reduction5772.terms
def map_44_170 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image5863 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5863 : InImage map_44_170 image5863 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5863 : Bundle := named_bundle% "RealMapCertificates/relations/basis5863.json"
theorem reductionProof5863 : EqualModuloRelations reduction5863.relations reduction5863.input reduction5863.output := by lin_cert using reduction5863.terms
theorem substitutionProof5863 : IsMapEvaluation generatorImages reduction5863.relations [0,0,8,555] reduction5863.output := by lin_cert using reduction5863.terms
def image5864 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5864 : InImage map_44_170 image5864 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5864 : Bundle := named_bundle% "RealMapCertificates/relations/basis5864.json"
theorem reductionProof5864 : EqualModuloRelations reduction5864.relations reduction5864.input reduction5864.output := by lin_cert using reduction5864.terms
theorem substitutionProof5864 : IsMapEvaluation generatorImages reduction5864.relations [0,0,0,0,0,0,686] reduction5864.output := by lin_cert using reduction5864.terms
def map_44_171 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image5980 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5980 : InImage map_44_171 image5980 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5980 : Bundle := named_bundle% "RealMapCertificates/relations/basis5980.json"
theorem reductionProof5980 : EqualModuloRelations reduction5980.relations reduction5980.input reduction5980.output := by lin_cert using reduction5980.terms
theorem substitutionProof5980 : IsMapEvaluation generatorImages reduction5980.relations [8,8,8,8,8,116] reduction5980.output := by lin_cert using reduction5980.terms
def image5981 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5981 : InImage map_44_171 image5981 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5981 : Bundle := named_bundle% "RealMapCertificates/relations/basis5981.json"
theorem reductionProof5981 : EqualModuloRelations reduction5981.relations reduction5981.input reduction5981.output := by lin_cert using reduction5981.terms
theorem substitutionProof5981 : IsMapEvaluation generatorImages reduction5981.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction5981.output := by lin_cert using reduction5981.terms
def map_44_173 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6201 : InImage map_44_173 image6201 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6201 : Bundle := named_bundle% "RealMapCertificates/relations/basis6201.json"
theorem reductionProof6201 : EqualModuloRelations reduction6201.relations reduction6201.input reduction6201.output := by lin_cert using reduction6201.terms
theorem substitutionProof6201 : IsMapEvaluation generatorImages reduction6201.relations [0,0,8,8,402] reduction6201.output := by lin_cert using reduction6201.terms
def map_44_174 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6305 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6305 : InImage map_44_174 image6305 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6305 : Bundle := named_bundle% "RealMapCertificates/relations/basis6305.json"
theorem reductionProof6305 : EqualModuloRelations reduction6305.relations reduction6305.input reduction6305.output := by lin_cert using reduction6305.terms
theorem substitutionProof6305 : IsMapEvaluation generatorImages reduction6305.relations [8,8,8,8,8,8,71] reduction6305.output := by lin_cert using reduction6305.terms
def map_44_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6450 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6450 : InImage map_44_175 image6450 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6450 : Bundle := named_bundle% "RealMapCertificates/relations/basis6450.json"
theorem reductionProof6450 : EqualModuloRelations reduction6450.relations reduction6450.input reduction6450.output := by lin_cert using reduction6450.terms
theorem substitutionProof6450 : IsMapEvaluation generatorImages reduction6450.relations [0,0,0,0,0,17,452] reduction6450.output := by lin_cert using reduction6450.terms
def map_44_176 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6538 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6538 : InImage map_44_176 image6538 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6538 : Bundle := named_bundle% "RealMapCertificates/relations/basis6538.json"
theorem reductionProof6538 : EqualModuloRelations reduction6538.relations reduction6538.input reduction6538.output := by lin_cert using reduction6538.terms
theorem substitutionProof6538 : IsMapEvaluation generatorImages reduction6538.relations [0,0,0,0,0,17,17,225] reduction6538.output := by lin_cert using reduction6538.terms
def map_44_177 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6664 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6664 : InImage map_44_177 image6664 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6664 : Bundle := named_bundle% "RealMapCertificates/relations/basis6664.json"
theorem reductionProof6664 : EqualModuloRelations reduction6664.relations reduction6664.input reduction6664.output := by lin_cert using reduction6664.terms
theorem substitutionProof6664 : IsMapEvaluation generatorImages reduction6664.relations [8,8,8,8,8,8,77] reduction6664.output := by lin_cert using reduction6664.terms
def map_44_179 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6897 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6897 : InImage map_44_179 image6897 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6897 : Bundle := named_bundle% "RealMapCertificates/relations/basis6897.json"
theorem reductionProof6897 : EqualModuloRelations reduction6897.relations reduction6897.input reduction6897.output := by lin_cert using reduction6897.terms
theorem substitutionProof6897 : IsMapEvaluation generatorImages reduction6897.relations [871] reduction6897.output := by lin_cert using reduction6897.terms
def map_44_180 : Matrix 4 2 := fun i j => ([false,true,true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7023 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation7023 : InImage map_44_180 image7023 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7023 : Bundle := named_bundle% "RealMapCertificates/relations/basis7023.json"
theorem reductionProof7023 : EqualModuloRelations reduction7023.relations reduction7023.input reduction7023.output := by lin_cert using reduction7023.terms
theorem substitutionProof7023 : IsMapEvaluation generatorImages reduction7023.relations [17,556] reduction7023.output := by lin_cert using reduction7023.terms
def image7024 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7024 : InImage map_44_180 image7024 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7024 : Bundle := named_bundle% "RealMapCertificates/relations/basis7024.json"
theorem reductionProof7024 : EqualModuloRelations reduction7024.relations reduction7024.input reduction7024.output := by lin_cert using reduction7024.terms
theorem substitutionProof7024 : IsMapEvaluation generatorImages reduction7024.relations [8,8,8,8,8,8,8,49] reduction7024.output := by lin_cert using reduction7024.terms
def map_44_182 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7254 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7254 : InImage map_44_182 image7254 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7254 : Bundle := named_bundle% "RealMapCertificates/relations/basis7254.json"
theorem reductionProof7254 : EqualModuloRelations reduction7254.relations reduction7254.input reduction7254.output := by lin_cert using reduction7254.terms
theorem substitutionProof7254 : IsMapEvaluation generatorImages reduction7254.relations [8,685] reduction7254.output := by lin_cert using reduction7254.terms
def map_44_183 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7388 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7388 : InImage map_44_183 image7388 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7388 : Bundle := named_bundle% "RealMapCertificates/relations/basis7388.json"
theorem reductionProof7388 : EqualModuloRelations reduction7388.relations reduction7388.input reduction7388.output := by lin_cert using reduction7388.terms
theorem substitutionProof7388 : IsMapEvaluation generatorImages reduction7388.relations [8,17,403] reduction7388.output := by lin_cert using reduction7388.terms
def image7389 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7389 : InImage map_44_183 image7389 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7389 : Bundle := named_bundle% "RealMapCertificates/relations/basis7389.json"
theorem reductionProof7389 : EqualModuloRelations reduction7389.relations reduction7389.input reduction7389.output := by lin_cert using reduction7389.terms
theorem substitutionProof7389 : IsMapEvaluation generatorImages reduction7389.relations [8,8,8,8,8,8,8,55] reduction7389.output := by lin_cert using reduction7389.terms
def map_44_185 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image7617 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7617 : InImage map_44_185 image7617 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7617 : Bundle := named_bundle% "RealMapCertificates/relations/basis7617.json"
theorem reductionProof7617 : EqualModuloRelations reduction7617.relations reduction7617.input reduction7617.output := by lin_cert using reduction7617.terms
theorem substitutionProof7617 : IsMapEvaluation generatorImages reduction7617.relations [8,722] reduction7617.output := by lin_cert using reduction7617.terms
def image7618 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7618 : InImage map_44_185 image7618 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7618 : Bundle := named_bundle% "RealMapCertificates/relations/basis7618.json"
theorem reductionProof7618 : EqualModuloRelations reduction7618.relations reduction7618.input reduction7618.output := by lin_cert using reduction7618.terms
theorem substitutionProof7618 : IsMapEvaluation generatorImages reduction7618.relations [1,42,402] reduction7618.output := by lin_cert using reduction7618.terms
def image7619 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7619 : InImage map_44_185 image7619 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7619 : Bundle := named_bundle% "RealMapCertificates/relations/basis7619.json"
theorem reductionProof7619 : EqualModuloRelations reduction7619.relations reduction7619.input reduction7619.output := by lin_cert using reduction7619.terms
theorem substitutionProof7619 : IsMapEvaluation generatorImages reduction7619.relations [0,0,0,0,0,0,0,0,0,0,0,807] reduction7619.output := by lin_cert using reduction7619.terms
def map_44_186 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7749 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7749 : InImage map_44_186 image7749 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7749 : Bundle := named_bundle% "RealMapCertificates/relations/basis7749.json"
theorem reductionProof7749 : EqualModuloRelations reduction7749.relations reduction7749.input reduction7749.output := by lin_cert using reduction7749.terms
theorem substitutionProof7749 : IsMapEvaluation generatorImages reduction7749.relations [8,17,433] reduction7749.output := by lin_cert using reduction7749.terms
def image7750 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7750 : InImage map_44_186 image7750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7750 : Bundle := named_bundle% "RealMapCertificates/relations/basis7750.json"
theorem reductionProof7750 : EqualModuloRelations reduction7750.relations reduction7750.input reduction7750.output := by lin_cert using reduction7750.terms
theorem substitutionProof7750 : IsMapEvaluation generatorImages reduction7750.relations [8,8,8,8,8,8,8,8,31] reduction7750.output := by lin_cert using reduction7750.terms
def image7751 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7751 : InImage map_44_186 image7751 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7751 : Bundle := named_bundle% "RealMapCertificates/relations/basis7751.json"
theorem reductionProof7751 : EqualModuloRelations reduction7751.relations reduction7751.input reduction7751.output := by lin_cert using reduction7751.terms
theorem substitutionProof7751 : IsMapEvaluation generatorImages reduction7751.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,795] reduction7751.output := by lin_cert using reduction7751.terms
def map_44_188 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image7959 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7959 : InImage map_44_188 image7959 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7959 : Bundle := named_bundle% "RealMapCertificates/relations/basis7959.json"
theorem reductionProof7959 : EqualModuloRelations reduction7959.relations reduction7959.input reduction7959.output := by lin_cert using reduction7959.terms
theorem substitutionProof7959 : IsMapEvaluation generatorImages reduction7959.relations [8,16,452] reduction7959.output := by lin_cert using reduction7959.terms
def map_44_189 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8101 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8101 : InImage map_44_189 image8101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8101 : Bundle := named_bundle% "RealMapCertificates/relations/basis8101.json"
theorem reductionProof8101 : EqualModuloRelations reduction8101.relations reduction8101.input reduction8101.output := by lin_cert using reduction8101.terms
theorem substitutionProof8101 : IsMapEvaluation generatorImages reduction8101.relations [8,16,17,225] reduction8101.output := by lin_cert using reduction8101.terms
def image8102 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8102 : InImage map_44_189 image8102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8102 : Bundle := named_bundle% "RealMapCertificates/relations/basis8102.json"
theorem reductionProof8102 : EqualModuloRelations reduction8102.relations reduction8102.input reduction8102.output := by lin_cert using reduction8102.terms
theorem substitutionProof8102 : IsMapEvaluation generatorImages reduction8102.relations [8,8,8,8,8,8,8,8,39] reduction8102.output := by lin_cert using reduction8102.terms
def map_44_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8342 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8342 : InImage map_44_191 image8342 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8342 : Bundle := named_bundle% "RealMapCertificates/relations/basis8342.json"
theorem reductionProof8342 : EqualModuloRelations reduction8342.relations reduction8342.input reduction8342.output := by lin_cert using reduction8342.terms
theorem substitutionProof8342 : IsMapEvaluation generatorImages reduction8342.relations [8,8,595] reduction8342.output := by lin_cert using reduction8342.terms
def map_44_192 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8473 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8473 : InImage map_44_192 image8473 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8473 : Bundle := named_bundle% "RealMapCertificates/relations/basis8473.json"
theorem reductionProof8473 : EqualModuloRelations reduction8473.relations reduction8473.input reduction8473.output := by lin_cert using reduction8473.terms
theorem substitutionProof8473 : IsMapEvaluation generatorImages reduction8473.relations [8,8,17,298] reduction8473.output := by lin_cert using reduction8473.terms
def image8474 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8474 : InImage map_44_192 image8474 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8474 : Bundle := named_bundle% "RealMapCertificates/relations/basis8474.json"
theorem reductionProof8474 : EqualModuloRelations reduction8474.relations reduction8474.input reduction8474.output := by lin_cert using reduction8474.terms
theorem substitutionProof8474 : IsMapEvaluation generatorImages reduction8474.relations [8,8,8,8,8,8,8,8,8,16] reduction8474.output := by lin_cert using reduction8474.terms
def map_44_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8612 : InImage map_44_193 image8612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8612 : Bundle := named_bundle% "RealMapCertificates/relations/basis8612.json"
theorem reductionProof8612 : EqualModuloRelations reduction8612.relations reduction8612.input reduction8612.output := by lin_cert using reduction8612.terms
theorem substitutionProof8612 : IsMapEvaluation generatorImages reduction8612.relations [0,0,1033] reduction8612.output := by lin_cert using reduction8612.terms
def map_44_194 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8716 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8716 : InImage map_44_194 image8716 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8716 : Bundle := named_bundle% "RealMapCertificates/relations/basis8716.json"
theorem reductionProof8716 : EqualModuloRelations reduction8716.relations reduction8716.input reduction8716.output := by lin_cert using reduction8716.terms
theorem substitutionProof8716 : IsMapEvaluation generatorImages reduction8716.relations [8,8,8,452] reduction8716.output := by lin_cert using reduction8716.terms
def image8717 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8717 : InImage map_44_194 image8717 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8717 : Bundle := named_bundle% "RealMapCertificates/relations/basis8717.json"
theorem reductionProof8717 : EqualModuloRelations reduction8717.relations reduction8717.input reduction8717.output := by lin_cert using reduction8717.terms
theorem substitutionProof8717 : IsMapEvaluation generatorImages reduction8717.relations [0,1059] reduction8717.output := by lin_cert using reduction8717.terms
def map_44_195 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8876 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8876 : InImage map_44_195 image8876 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8876 : Bundle := named_bundle% "RealMapCertificates/relations/basis8876.json"
theorem reductionProof8876 : EqualModuloRelations reduction8876.relations reduction8876.input reduction8876.output := by lin_cert using reduction8876.terms
theorem substitutionProof8876 : IsMapEvaluation generatorImages reduction8876.relations [8,8,8,17,225] reduction8876.output := by lin_cert using reduction8876.terms
def image8877 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8877 : InImage map_44_195 image8877 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8877 : Bundle := named_bundle% "RealMapCertificates/relations/basis8877.json"
theorem reductionProof8877 : EqualModuloRelations reduction8877.relations reduction8877.input reduction8877.output := by lin_cert using reduction8877.terms
theorem substitutionProof8877 : IsMapEvaluation generatorImages reduction8877.relations [8,8,8,8,8,8,8,8,8,19] reduction8877.output := by lin_cert using reduction8877.terms
def image8878 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8878 : InImage map_44_195 image8878 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8878 : Bundle := named_bundle% "RealMapCertificates/relations/basis8878.json"
theorem reductionProof8878 : EqualModuloRelations reduction8878.relations reduction8878.input reduction8878.output := by lin_cert using reduction8878.terms
theorem substitutionProof8878 : IsMapEvaluation generatorImages reduction8878.relations [1,1,1033] reduction8878.output := by lin_cert using reduction8878.terms
end RealMapCertificates
