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
  | 42 => [[5,5,7]]
  | 59 => []
  | 64 => []
  | 80 => []
  | 89 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 297 => []
  | 343 => [[4,4,4,6,8,12]]
  | 380 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 516 => []
  | 623 => []
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 830 => []
  | 896 => []
  | 971 => []
  | 1034 => []
  | 1076 => []
  | 1143 => []
  | 1180 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1349 => []
  | 1399 => []
  | 1472 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1750 => []
  | _ => []
def map_44_196 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image9018 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9018 : InImage map_44_196 image9018 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9018 : Bundle := named_bundle% "RealMapCertificates/relations/basis9018.json"
theorem reductionProof9018 : EqualModuloRelations reduction9018.relations reduction9018.input reduction9018.output := by lin_cert using reduction9018.terms
theorem substitutionProof9018 : IsMapEvaluation generatorImages reduction9018.relations [0,0,1076] reduction9018.output := by lin_cert using reduction9018.terms
def map_44_197 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9145 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9145 : InImage map_44_197 image9145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9145 : Bundle := named_bundle% "RealMapCertificates/relations/basis9145.json"
theorem reductionProof9145 : EqualModuloRelations reduction9145.relations reduction9145.input reduction9145.output := by lin_cert using reduction9145.terms
theorem substitutionProof9145 : IsMapEvaluation generatorImages reduction9145.relations [8,8,8,488] reduction9145.output := by lin_cert using reduction9145.terms
def map_44_198 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image9313 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9313 : InImage map_44_198 image9313 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9313 : Bundle := named_bundle% "RealMapCertificates/relations/basis9313.json"
theorem reductionProof9313 : EqualModuloRelations reduction9313.relations reduction9313.input reduction9313.output := by lin_cert using reduction9313.terms
theorem substitutionProof9313 : IsMapEvaluation generatorImages reduction9313.relations [64,402] reduction9313.output := by lin_cert using reduction9313.terms
def image9314 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9314 : InImage map_44_198 image9314 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9314 : Bundle := named_bundle% "RealMapCertificates/relations/basis9314.json"
theorem reductionProof9314 : EqualModuloRelations reduction9314.relations reduction9314.input reduction9314.output := by lin_cert using reduction9314.terms
theorem substitutionProof9314 : IsMapEvaluation generatorImages reduction9314.relations [8,8,8,17,238] reduction9314.output := by lin_cert using reduction9314.terms
def image9315 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9315 : InImage map_44_198 image9315 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9315 : Bundle := named_bundle% "RealMapCertificates/relations/basis9315.json"
theorem reductionProof9315 : EqualModuloRelations reduction9315.relations reduction9315.input reduction9315.output := by lin_cert using reduction9315.terms
theorem substitutionProof9315 : IsMapEvaluation generatorImages reduction9315.relations [8,8,8,8,8,8,8,8,8,8,8] reduction9315.output := by lin_cert using reduction9315.terms
def map_44_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9484 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9484 : InImage map_44_199 image9484 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9484 : Bundle := named_bundle% "RealMapCertificates/relations/basis9484.json"
theorem reductionProof9484 : EqualModuloRelations reduction9484.relations reduction9484.input reduction9484.output := by lin_cert using reduction9484.terms
theorem substitutionProof9484 : IsMapEvaluation generatorImages reduction9484.relations [0,64,403] reduction9484.output := by lin_cert using reduction9484.terms
def image9485 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9485 : InImage map_44_199 image9485 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9485 : Bundle := named_bundle% "RealMapCertificates/relations/basis9485.json"
theorem reductionProof9485 : EqualModuloRelations reduction9485.relations reduction9485.input reduction9485.output := by lin_cert using reduction9485.terms
theorem substitutionProof9485 : IsMapEvaluation generatorImages reduction9485.relations [0,0,16,725] reduction9485.output := by lin_cert using reduction9485.terms
def map_44_200 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9608 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9608 : InImage map_44_200 image9608 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9608 : Bundle := named_bundle% "RealMapCertificates/relations/basis9608.json"
theorem reductionProof9608 : EqualModuloRelations reduction9608.relations reduction9608.input reduction9608.output := by lin_cert using reduction9608.terms
theorem substitutionProof9608 : IsMapEvaluation generatorImages reduction9608.relations [8,8,8,16,244] reduction9608.output := by lin_cert using reduction9608.terms
def image9609 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9609 : InImage map_44_200 image9609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9609 : Bundle := named_bundle% "RealMapCertificates/relations/basis9609.json"
theorem reductionProof9609 : EqualModuloRelations reduction9609.relations reduction9609.input reduction9609.output := by lin_cert using reduction9609.terms
theorem substitutionProof9609 : IsMapEvaluation generatorImages reduction9609.relations [0,0,0,17,725] reduction9609.output := by lin_cert using reduction9609.terms
def map_44_201 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image9803 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9803 : InImage map_44_201 image9803 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction9803 : Bundle := named_bundle% "RealMapCertificates/relations/basis9803.json"
theorem reductionProof9803 : EqualModuloRelations reduction9803.relations reduction9803.input reduction9803.output := by lin_cert using reduction9803.terms
theorem substitutionProof9803 : IsMapEvaluation generatorImages reduction9803.relations [64,432] reduction9803.output := by lin_cert using reduction9803.terms
def image9804 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9804 : InImage map_44_201 image9804 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction9804 : Bundle := named_bundle% "RealMapCertificates/relations/basis9804.json"
theorem reductionProof9804 : EqualModuloRelations reduction9804.relations reduction9804.input reduction9804.output := by lin_cert using reduction9804.terms
theorem substitutionProof9804 : IsMapEvaluation generatorImages reduction9804.relations [8,8,8,16,17,138] reduction9804.output := by lin_cert using reduction9804.terms
def image9805 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9805 : InImage map_44_201 image9805 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction9805 : Bundle := named_bundle% "RealMapCertificates/relations/basis9805.json"
theorem reductionProof9805 : EqualModuloRelations reduction9805.relations reduction9805.input reduction9805.output := by lin_cert using reduction9805.terms
theorem substitutionProof9805 : IsMapEvaluation generatorImages reduction9805.relations [8,8,8,8,8,8,8,8,8,8,9] reduction9805.output := by lin_cert using reduction9805.terms
def image9806 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9806 : InImage map_44_201 image9806 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction9806 : Bundle := named_bundle% "RealMapCertificates/relations/basis9806.json"
theorem reductionProof9806 : EqualModuloRelations reduction9806.relations reduction9806.input reduction9806.output := by lin_cert using reduction9806.terms
theorem substitutionProof9806 : IsMapEvaluation generatorImages reduction9806.relations [0,0,0,1143] reduction9806.output := by lin_cert using reduction9806.terms
def map_44_202 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image9961 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9961 : InImage map_44_202 image9961 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9961 : Bundle := named_bundle% "RealMapCertificates/relations/basis9961.json"
theorem reductionProof9961 : EqualModuloRelations reduction9961.relations reduction9961.input reduction9961.output := by lin_cert using reduction9961.terms
theorem substitutionProof9961 : IsMapEvaluation generatorImages reduction9961.relations [0,64,433] reduction9961.output := by lin_cert using reduction9961.terms
def image9962 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9962 : InImage map_44_202 image9962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9962 : Bundle := named_bundle% "RealMapCertificates/relations/basis9962.json"
theorem reductionProof9962 : EqualModuloRelations reduction9962.relations reduction9962.input reduction9962.output := by lin_cert using reduction9962.terms
theorem substitutionProof9962 : IsMapEvaluation generatorImages reduction9962.relations [0,0,8,896] reduction9962.output := by lin_cert using reduction9962.terms
def map_44_203 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image10103 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10103 : InImage map_44_203 image10103 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10103 : Bundle := named_bundle% "RealMapCertificates/relations/basis10103.json"
theorem reductionProof10103 : EqualModuloRelations reduction10103.relations reduction10103.input reduction10103.output := by lin_cert using reduction10103.terms
theorem substitutionProof10103 : IsMapEvaluation generatorImages reduction10103.relations [8,8,8,8,343] reduction10103.output := by lin_cert using reduction10103.terms
def map_44_204 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10296 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10296 : InImage map_44_204 image10296 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10296 : Bundle := named_bundle% "RealMapCertificates/relations/basis10296.json"
theorem reductionProof10296 : EqualModuloRelations reduction10296.relations reduction10296.input reduction10296.output := by lin_cert using reduction10296.terms
theorem substitutionProof10296 : IsMapEvaluation generatorImages reduction10296.relations [16,64,224] reduction10296.output := by lin_cert using reduction10296.terms
def image10297 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10297 : InImage map_44_204 image10297 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10297 : Bundle := named_bundle% "RealMapCertificates/relations/basis10297.json"
theorem reductionProof10297 : EqualModuloRelations reduction10297.relations reduction10297.input reduction10297.output := by lin_cert using reduction10297.terms
theorem substitutionProof10297 : IsMapEvaluation generatorImages reduction10297.relations [8,8,8,8,17,185] reduction10297.output := by lin_cert using reduction10297.terms
def image10298 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10298 : InImage map_44_204 image10298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10298 : Bundle := named_bundle% "RealMapCertificates/relations/basis10298.json"
theorem reductionProof10298 : EqualModuloRelations reduction10298.relations reduction10298.input reduction10298.output := by lin_cert using reduction10298.terms
theorem substitutionProof10298 : IsMapEvaluation generatorImages reduction10298.relations [8,8,8,8,8,8,8,8,8,8,13] reduction10298.output := by lin_cert using reduction10298.terms
def map_44_205 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image10482 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10482 : InImage map_44_205 image10482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10482 : Bundle := named_bundle% "RealMapCertificates/relations/basis10482.json"
theorem reductionProof10482 : EqualModuloRelations reduction10482.relations reduction10482.input reduction10482.output := by lin_cert using reduction10482.terms
theorem substitutionProof10482 : IsMapEvaluation generatorImages reduction10482.relations [0,16,64,225] reduction10482.output := by lin_cert using reduction10482.terms
def image10483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10483 : InImage map_44_205 image10483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10483 : Bundle := named_bundle% "RealMapCertificates/relations/basis10483.json"
theorem reductionProof10483 : EqualModuloRelations reduction10483.relations reduction10483.input reduction10483.output := by lin_cert using reduction10483.terms
theorem substitutionProof10483 : IsMapEvaluation generatorImages reduction10483.relations [0,0,64,452] reduction10483.output := by lin_cert using reduction10483.terms
def image10484 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10484 : InImage map_44_205 image10484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10484 : Bundle := named_bundle% "RealMapCertificates/relations/basis10484.json"
theorem reductionProof10484 : EqualModuloRelations reduction10484.relations reduction10484.input reduction10484.output := by lin_cert using reduction10484.terms
theorem substitutionProof10484 : IsMapEvaluation generatorImages reduction10484.relations [0,0,8,8,725] reduction10484.output := by lin_cert using reduction10484.terms
def map_44_206 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image10628 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10628 : InImage map_44_206 image10628 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10628 : Bundle := named_bundle% "RealMapCertificates/relations/basis10628.json"
theorem reductionProof10628 : EqualModuloRelations reduction10628.relations reduction10628.input reduction10628.output := by lin_cert using reduction10628.terms
theorem substitutionProof10628 : IsMapEvaluation generatorImages reduction10628.relations [8,8,8,8,8,244] reduction10628.output := by lin_cert using reduction10628.terms
def image10629 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10629 : InImage map_44_206 image10629 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10629 : Bundle := named_bundle% "RealMapCertificates/relations/basis10629.json"
theorem reductionProof10629 : EqualModuloRelations reduction10629.relations reduction10629.input reduction10629.output := by lin_cert using reduction10629.terms
theorem substitutionProof10629 : IsMapEvaluation generatorImages reduction10629.relations [0,0,0,138,244] reduction10629.output := by lin_cert using reduction10629.terms
def map_44_207 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image10849 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10849 : InImage map_44_207 image10849 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction10849 : Bundle := named_bundle% "RealMapCertificates/relations/basis10849.json"
theorem reductionProof10849 : EqualModuloRelations reduction10849.relations reduction10849.input reduction10849.output := by lin_cert using reduction10849.terms
theorem substitutionProof10849 : IsMapEvaluation generatorImages reduction10849.relations [8,64,297] reduction10849.output := by lin_cert using reduction10849.terms
def image10850 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10850 : InImage map_44_207 image10850 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction10850 : Bundle := named_bundle% "RealMapCertificates/relations/basis10850.json"
theorem reductionProof10850 : EqualModuloRelations reduction10850.relations reduction10850.input reduction10850.output := by lin_cert using reduction10850.terms
theorem substitutionProof10850 : IsMapEvaluation generatorImages reduction10850.relations [8,8,8,8,8,17,138] reduction10850.output := by lin_cert using reduction10850.terms
def image10851 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10851 : InImage map_44_207 image10851 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction10851 : Bundle := named_bundle% "RealMapCertificates/relations/basis10851.json"
theorem reductionProof10851 : EqualModuloRelations reduction10851.relations reduction10851.input reduction10851.output := by lin_cert using reduction10851.terms
theorem substitutionProof10851 : IsMapEvaluation generatorImages reduction10851.relations [8,8,8,8,8,8,8,8,8,9,13] reduction10851.output := by lin_cert using reduction10851.terms
def image10852 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10852 : InImage map_44_207 image10852 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction10852 : Bundle := named_bundle% "RealMapCertificates/relations/basis10852.json"
theorem reductionProof10852 : EqualModuloRelations reduction10852.relations reduction10852.input reduction10852.output := by lin_cert using reduction10852.terms
theorem substitutionProof10852 : IsMapEvaluation generatorImages reduction10852.relations [1,1,64,452] reduction10852.output := by lin_cert using reduction10852.terms
def image10853 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10853 : InImage map_44_207 image10853 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction10853 : Bundle := named_bundle% "RealMapCertificates/relations/basis10853.json"
theorem reductionProof10853 : EqualModuloRelations reduction10853.relations reduction10853.input reduction10853.output := by lin_cert using reduction10853.terms
theorem substitutionProof10853 : IsMapEvaluation generatorImages reduction10853.relations [0,0,0,0,17,17,491] reduction10853.output := by lin_cert using reduction10853.terms
def map_44_208 : Matrix 3 3 := fun i j => ([false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11003 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11003 : InImage map_44_208 image11003 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11003 : Bundle := named_bundle% "RealMapCertificates/relations/basis11003.json"
theorem reductionProof11003 : EqualModuloRelations reduction11003.relations reduction11003.input reduction11003.output := by lin_cert using reduction11003.terms
theorem substitutionProof11003 : IsMapEvaluation generatorImages reduction11003.relations [0,0,8,8,759] reduction11003.output := by lin_cert using reduction11003.terms
def image11004 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11004 : InImage map_44_208 image11004 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11004 : Bundle := named_bundle% "RealMapCertificates/relations/basis11004.json"
theorem reductionProof11004 : EqualModuloRelations reduction11004.relations reduction11004.input reduction11004.output := by lin_cert using reduction11004.terms
theorem substitutionProof11004 : IsMapEvaluation generatorImages reduction11004.relations [0,0,0,0,0,137,246] reduction11004.output := by lin_cert using reduction11004.terms
def image11005 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11005 : InImage map_44_208 image11005 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11005 : Bundle := named_bundle% "RealMapCertificates/relations/basis11005.json"
theorem reductionProof11005 : EqualModuloRelations reduction11005.relations reduction11005.input reduction11005.output := by lin_cert using reduction11005.terms
theorem substitutionProof11005 : IsMapEvaluation generatorImages reduction11005.relations [0,0,0,0,0,59,491] reduction11005.output := by lin_cert using reduction11005.terms
def map_44_209 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11161 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11161 : InImage map_44_209 image11161 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11161 : Bundle := named_bundle% "RealMapCertificates/relations/basis11161.json"
theorem reductionProof11161 : EqualModuloRelations reduction11161.relations reduction11161.input reduction11161.output := by lin_cert using reduction11161.terms
theorem substitutionProof11161 : IsMapEvaluation generatorImages reduction11161.relations [8,8,8,8,8,257] reduction11161.output := by lin_cert using reduction11161.terms
def map_44_210 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image11355 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11355 : InImage map_44_210 image11355 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11355 : Bundle := named_bundle% "RealMapCertificates/relations/basis11355.json"
theorem reductionProof11355 : EqualModuloRelations reduction11355.relations reduction11355.input reduction11355.output := by lin_cert using reduction11355.terms
theorem substitutionProof11355 : IsMapEvaluation generatorImages reduction11355.relations [8,8,64,224] reduction11355.output := by lin_cert using reduction11355.terms
def image11356 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11356 : InImage map_44_210 image11356 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11356 : Bundle := named_bundle% "RealMapCertificates/relations/basis11356.json"
theorem reductionProof11356 : EqualModuloRelations reduction11356.relations reduction11356.input reduction11356.output := by lin_cert using reduction11356.terms
theorem substitutionProof11356 : IsMapEvaluation generatorImages reduction11356.relations [8,8,8,8,8,17,147] reduction11356.output := by lin_cert using reduction11356.terms
def image11357 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11357 : InImage map_44_210 image11357 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11357 : Bundle := named_bundle% "RealMapCertificates/relations/basis11357.json"
theorem reductionProof11357 : EqualModuloRelations reduction11357.relations reduction11357.input reduction11357.output := by lin_cert using reduction11357.terms
theorem substitutionProof11357 : IsMapEvaluation generatorImages reduction11357.relations [8,8,8,8,8,8,8,8,8,13,13] reduction11357.output := by lin_cert using reduction11357.terms
def map_44_211 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image11547 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11547 : InImage map_44_211 image11547 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11547 : Bundle := named_bundle% "RealMapCertificates/relations/basis11547.json"
theorem reductionProof11547 : EqualModuloRelations reduction11547.relations reduction11547.input reduction11547.output := by lin_cert using reduction11547.terms
theorem substitutionProof11547 : IsMapEvaluation generatorImages reduction11547.relations [1,1349] reduction11547.output := by lin_cert using reduction11547.terms
def image11548 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11548 : InImage map_44_211 image11548 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11548 : Bundle := named_bundle% "RealMapCertificates/relations/basis11548.json"
theorem reductionProof11548 : EqualModuloRelations reduction11548.relations reduction11548.input reduction11548.output := by lin_cert using reduction11548.terms
theorem substitutionProof11548 : IsMapEvaluation generatorImages reduction11548.relations [0,0,8,8,16,491] reduction11548.output := by lin_cert using reduction11548.terms
def map_44_212 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11691 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11691 : InImage map_44_212 image11691 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11691 : Bundle := named_bundle% "RealMapCertificates/relations/basis11691.json"
theorem reductionProof11691 : EqualModuloRelations reduction11691.relations reduction11691.input reduction11691.output := by lin_cert using reduction11691.terms
theorem substitutionProof11691 : IsMapEvaluation generatorImages reduction11691.relations [1399] reduction11691.output := by lin_cert using reduction11691.terms
def image11692 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11692 : InImage map_44_212 image11692 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11692 : Bundle := named_bundle% "RealMapCertificates/relations/basis11692.json"
theorem reductionProof11692 : EqualModuloRelations reduction11692.relations reduction11692.input reduction11692.output := by lin_cert using reduction11692.terms
theorem substitutionProof11692 : IsMapEvaluation generatorImages reduction11692.relations [8,8,8,8,8,16,149] reduction11692.output := by lin_cert using reduction11692.terms
def image11693 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11693 : InImage map_44_212 image11693 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11693 : Bundle := named_bundle% "RealMapCertificates/relations/basis11693.json"
theorem reductionProof11693 : EqualModuloRelations reduction11693.relations reduction11693.input reduction11693.output := by lin_cert using reduction11693.terms
theorem substitutionProof11693 : IsMapEvaluation generatorImages reduction11693.relations [0,0,0,0,149,244] reduction11693.output := by lin_cert using reduction11693.terms
def map_44_213 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image11938 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11938 : InImage map_44_213 image11938 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11938 : Bundle := named_bundle% "RealMapCertificates/relations/basis11938.json"
theorem reductionProof11938 : EqualModuloRelations reduction11938.relations reduction11938.input reduction11938.output := by lin_cert using reduction11938.terms
theorem substitutionProof11938 : IsMapEvaluation generatorImages reduction11938.relations [8,8,64,237] reduction11938.output := by lin_cert using reduction11938.terms
def image11939 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11939 : InImage map_44_213 image11939 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11939 : Bundle := named_bundle% "RealMapCertificates/relations/basis11939.json"
theorem reductionProof11939 : EqualModuloRelations reduction11939.relations reduction11939.input reduction11939.output := by lin_cert using reduction11939.terms
theorem substitutionProof11939 : IsMapEvaluation generatorImages reduction11939.relations [8,8,8,8,8,16,154] reduction11939.output := by lin_cert using reduction11939.terms
def image11940 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11940 : InImage map_44_213 image11940 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11940 : Bundle := named_bundle% "RealMapCertificates/relations/basis11940.json"
theorem reductionProof11940 : EqualModuloRelations reduction11940.relations reduction11940.input reduction11940.output := by lin_cert using reduction11940.terms
theorem substitutionProof11940 : IsMapEvaluation generatorImages reduction11940.relations [8,8,8,8,8,8,8,8,9,13,13] reduction11940.output := by lin_cert using reduction11940.terms
def image11941 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11941 : InImage map_44_213 image11941 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11941 : Bundle := named_bundle% "RealMapCertificates/relations/basis11941.json"
theorem reductionProof11941 : EqualModuloRelations reduction11941.relations reduction11941.input reduction11941.output := by lin_cert using reduction11941.terms
theorem substitutionProof11941 : IsMapEvaluation generatorImages reduction11941.relations [0,0,0,0,0,1335] reduction11941.output := by lin_cert using reduction11941.terms
def map_44_214 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image12129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12129 : InImage map_44_214 image12129 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12129 : Bundle := named_bundle% "RealMapCertificates/relations/basis12129.json"
theorem reductionProof12129 : EqualModuloRelations reduction12129.relations reduction12129.input reduction12129.output := by lin_cert using reduction12129.terms
theorem substitutionProof12129 : IsMapEvaluation generatorImages reduction12129.relations [0,0,0,0,0,0,0,0,64,491] reduction12129.output := by lin_cert using reduction12129.terms
def map_44_215 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12295 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12295 : InImage map_44_215 image12295 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12295 : Bundle := named_bundle% "RealMapCertificates/relations/basis12295.json"
theorem reductionProof12295 : EqualModuloRelations reduction12295.relations reduction12295.input reduction12295.output := by lin_cert using reduction12295.terms
theorem substitutionProof12295 : IsMapEvaluation generatorImages reduction12295.relations [1472] reduction12295.output := by lin_cert using reduction12295.terms
def image12296 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12296 : InImage map_44_215 image12296 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12296 : Bundle := named_bundle% "RealMapCertificates/relations/basis12296.json"
theorem reductionProof12296 : EqualModuloRelations reduction12296.relations reduction12296.input reduction12296.output := by lin_cert using reduction12296.terms
theorem substitutionProof12296 : IsMapEvaluation generatorImages reduction12296.relations [8,8,8,8,8,8,206] reduction12296.output := by lin_cert using reduction12296.terms
def map_44_216 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image12503 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12503 : InImage map_44_216 image12503 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12503 : Bundle := named_bundle% "RealMapCertificates/relations/basis12503.json"
theorem reductionProof12503 : EqualModuloRelations reduction12503.relations reduction12503.input reduction12503.output := by lin_cert using reduction12503.terms
theorem substitutionProof12503 : IsMapEvaluation generatorImages reduction12503.relations [8,8,16,64,137] reduction12503.output := by lin_cert using reduction12503.terms
def image12504 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12504 : InImage map_44_216 image12504 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12504 : Bundle := named_bundle% "RealMapCertificates/relations/basis12504.json"
theorem reductionProof12504 : EqualModuloRelations reduction12504.relations reduction12504.input reduction12504.output := by lin_cert using reduction12504.terms
theorem substitutionProof12504 : IsMapEvaluation generatorImages reduction12504.relations [8,8,8,8,8,8,17,113] reduction12504.output := by lin_cert using reduction12504.terms
def image12505 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12505 : InImage map_44_216 image12505 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12505 : Bundle := named_bundle% "RealMapCertificates/relations/basis12505.json"
theorem reductionProof12505 : EqualModuloRelations reduction12505.relations reduction12505.input reduction12505.output := by lin_cert using reduction12505.terms
theorem substitutionProof12505 : IsMapEvaluation generatorImages reduction12505.relations [8,8,8,8,8,8,8,8,13,13,13] reduction12505.output := by lin_cert using reduction12505.terms
def map_44_217 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image12698 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12698 : InImage map_44_217 image12698 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12698 : Bundle := named_bundle% "RealMapCertificates/relations/basis12698.json"
theorem reductionProof12698 : EqualModuloRelations reduction12698.relations reduction12698.input reduction12698.output := by lin_cert using reduction12698.terms
theorem substitutionProof12698 : IsMapEvaluation generatorImages reduction12698.relations [1,42,725] reduction12698.output := by lin_cert using reduction12698.terms
def map_44_218 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12846 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12846 : InImage map_44_218 image12846 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12846 : Bundle := named_bundle% "RealMapCertificates/relations/basis12846.json"
theorem reductionProof12846 : EqualModuloRelations reduction12846.relations reduction12846.input reduction12846.output := by lin_cert using reduction12846.terms
theorem substitutionProof12846 : IsMapEvaluation generatorImages reduction12846.relations [17,17,623] reduction12846.output := by lin_cert using reduction12846.terms
def image12847 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12847 : InImage map_44_218 image12847 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12847 : Bundle := named_bundle% "RealMapCertificates/relations/basis12847.json"
theorem reductionProof12847 : EqualModuloRelations reduction12847.relations reduction12847.input reduction12847.output := by lin_cert using reduction12847.terms
theorem substitutionProof12847 : IsMapEvaluation generatorImages reduction12847.relations [8,1180] reduction12847.output := by lin_cert using reduction12847.terms
def image12848 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12848 : InImage map_44_218 image12848 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12848 : Bundle := named_bundle% "RealMapCertificates/relations/basis12848.json"
theorem reductionProof12848 : EqualModuloRelations reduction12848.relations reduction12848.input reduction12848.output := by lin_cert using reduction12848.terms
theorem substitutionProof12848 : IsMapEvaluation generatorImages reduction12848.relations [8,8,8,8,8,8,8,149] reduction12848.output := by lin_cert using reduction12848.terms
def map_44_219 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13091 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13091 : InImage map_44_219 image13091 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13091 : Bundle := named_bundle% "RealMapCertificates/relations/basis13091.json"
theorem reductionProof13091 : EqualModuloRelations reduction13091.relations reduction13091.input reduction13091.output := by lin_cert using reduction13091.terms
theorem substitutionProof13091 : IsMapEvaluation generatorImages reduction13091.relations [8,8,8,64,184] reduction13091.output := by lin_cert using reduction13091.terms
def image13092 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13092 : InImage map_44_219 image13092 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13092 : Bundle := named_bundle% "RealMapCertificates/relations/basis13092.json"
theorem reductionProof13092 : EqualModuloRelations reduction13092.relations reduction13092.input reduction13092.output := by lin_cert using reduction13092.terms
theorem substitutionProof13092 : IsMapEvaluation generatorImages reduction13092.relations [8,8,8,8,8,8,8,154] reduction13092.output := by lin_cert using reduction13092.terms
def image13093 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13093 : InImage map_44_219 image13093 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13093 : Bundle := named_bundle% "RealMapCertificates/relations/basis13093.json"
theorem reductionProof13093 : EqualModuloRelations reduction13093.relations reduction13093.input reduction13093.output := by lin_cert using reduction13093.terms
theorem substitutionProof13093 : IsMapEvaluation generatorImages reduction13093.relations [8,8,8,8,8,8,8,9,13,13,13] reduction13093.output := by lin_cert using reduction13093.terms
def image13094 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13094 : InImage map_44_219 image13094 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13094 : Bundle := named_bundle% "RealMapCertificates/relations/basis13094.json"
theorem reductionProof13094 : EqualModuloRelations reduction13094.relations reduction13094.input reduction13094.output := by lin_cert using reduction13094.terms
theorem substitutionProof13094 : IsMapEvaluation generatorImages reduction13094.relations [0,0,0,0,0,0,64,64,137] reduction13094.output := by lin_cert using reduction13094.terms
def map_44_221 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13419 : InImage map_44_221 image13419 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13419 : Bundle := named_bundle% "RealMapCertificates/relations/basis13419.json"
theorem reductionProof13419 : EqualModuloRelations reduction13419.relations reduction13419.input reduction13419.output := by lin_cert using reduction13419.terms
theorem substitutionProof13419 : IsMapEvaluation generatorImages reduction13419.relations [8,137,245] reduction13419.output := by lin_cert using reduction13419.terms
def image13420 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13420 : InImage map_44_221 image13420 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13420 : Bundle := named_bundle% "RealMapCertificates/relations/basis13420.json"
theorem reductionProof13420 : EqualModuloRelations reduction13420.relations reduction13420.input reduction13420.output := by lin_cert using reduction13420.terms
theorem substitutionProof13420 : IsMapEvaluation generatorImages reduction13420.relations [8,17,17,491] reduction13420.output := by lin_cert using reduction13420.terms
def image13421 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13421 : InImage map_44_221 image13421 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13421 : Bundle := named_bundle% "RealMapCertificates/relations/basis13421.json"
theorem reductionProof13421 : EqualModuloRelations reduction13421.relations reduction13421.input reduction13421.output := by lin_cert using reduction13421.terms
theorem substitutionProof13421 : IsMapEvaluation generatorImages reduction13421.relations [8,8,8,8,8,8,8,160] reduction13421.output := by lin_cert using reduction13421.terms
def map_44_222 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13643 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13643 : InImage map_44_222 image13643 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13643 : Bundle := named_bundle% "RealMapCertificates/relations/basis13643.json"
theorem reductionProof13643 : EqualModuloRelations reduction13643.relations reduction13643.input reduction13643.output := by lin_cert using reduction13643.terms
theorem substitutionProof13643 : IsMapEvaluation generatorImages reduction13643.relations [8,8,8,8,64,137] reduction13643.output := by lin_cert using reduction13643.terms
def image13644 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13644 : InImage map_44_222 image13644 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13644 : Bundle := named_bundle% "RealMapCertificates/relations/basis13644.json"
theorem reductionProof13644 : EqualModuloRelations reduction13644.relations reduction13644.input reduction13644.output := by lin_cert using reduction13644.terms
theorem substitutionProof13644 : IsMapEvaluation generatorImages reduction13644.relations [8,8,8,8,8,8,8,162] reduction13644.output := by lin_cert using reduction13644.terms
def image13645 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13645 : InImage map_44_222 image13645 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13645 : Bundle := named_bundle% "RealMapCertificates/relations/basis13645.json"
theorem reductionProof13645 : EqualModuloRelations reduction13645.relations reduction13645.input reduction13645.output := by lin_cert using reduction13645.terms
theorem substitutionProof13645 : IsMapEvaluation generatorImages reduction13645.relations [8,8,8,8,8,8,8,13,13,13,13] reduction13645.output := by lin_cert using reduction13645.terms
def map_44_223 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13824 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13824 : InImage map_44_223 image13824 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13824 : Bundle := named_bundle% "RealMapCertificates/relations/basis13824.json"
theorem reductionProof13824 : EqualModuloRelations reduction13824.relations reduction13824.input reduction13824.output := by lin_cert using reduction13824.terms
theorem substitutionProof13824 : IsMapEvaluation generatorImages reduction13824.relations [149,343] reduction13824.output := by lin_cert using reduction13824.terms
def map_44_224 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13972 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13972 : InImage map_44_224 image13972 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13972 : Bundle := named_bundle% "RealMapCertificates/relations/basis13972.json"
theorem reductionProof13972 : EqualModuloRelations reduction13972.relations reduction13972.input reduction13972.output := by lin_cert using reduction13972.terms
theorem substitutionProof13972 : IsMapEvaluation generatorImages reduction13972.relations [8,17,17,516] reduction13972.output := by lin_cert using reduction13972.terms
def image13973 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13973 : InImage map_44_224 image13973 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13973 : Bundle := named_bundle% "RealMapCertificates/relations/basis13973.json"
theorem reductionProof13973 : EqualModuloRelations reduction13973.relations reduction13973.input reduction13973.output := by lin_cert using reduction13973.terms
theorem substitutionProof13973 : IsMapEvaluation generatorImages reduction13973.relations [8,8,971] reduction13973.output := by lin_cert using reduction13973.terms
def image13974 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13974 : InImage map_44_224 image13974 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13974 : Bundle := named_bundle% "RealMapCertificates/relations/basis13974.json"
theorem reductionProof13974 : EqualModuloRelations reduction13974.relations reduction13974.input reduction13974.output := by lin_cert using reduction13974.terms
theorem substitutionProof13974 : IsMapEvaluation generatorImages reduction13974.relations [8,8,8,8,8,8,8,166] reduction13974.output := by lin_cert using reduction13974.terms
def map_44_225 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14213 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14213 : InImage map_44_225 image14213 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14213 : Bundle := named_bundle% "RealMapCertificates/relations/basis14213.json"
theorem reductionProof14213 : EqualModuloRelations reduction14213.relations reduction14213.input reduction14213.output := by lin_cert using reduction14213.terms
theorem substitutionProof14213 : IsMapEvaluation generatorImages reduction14213.relations [8,8,8,8,64,146] reduction14213.output := by lin_cert using reduction14213.terms
def image14214 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14214 : InImage map_44_225 image14214 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14214 : Bundle := named_bundle% "RealMapCertificates/relations/basis14214.json"
theorem reductionProof14214 : EqualModuloRelations reduction14214.relations reduction14214.input reduction14214.output := by lin_cert using reduction14214.terms
theorem substitutionProof14214 : IsMapEvaluation generatorImages reduction14214.relations [8,8,8,8,8,8,9,13,13,13,13] reduction14214.output := by lin_cert using reduction14214.terms
def image14215 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14215 : InImage map_44_225 image14215 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14215 : Bundle := named_bundle% "RealMapCertificates/relations/basis14215.json"
theorem reductionProof14215 : EqualModuloRelations reduction14215.relations reduction14215.input reduction14215.output := by lin_cert using reduction14215.terms
theorem substitutionProof14215 : IsMapEvaluation generatorImages reduction14215.relations [8,8,8,8,8,8,8,17,80] reduction14215.output := by lin_cert using reduction14215.terms
def map_44_226 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14377 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14377 : InImage map_44_226 image14377 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14377 : Bundle := named_bundle% "RealMapCertificates/relations/basis14377.json"
theorem reductionProof14377 : EqualModuloRelations reduction14377.relations reduction14377.input reduction14377.output := by lin_cert using reduction14377.terms
theorem substitutionProof14377 : IsMapEvaluation generatorImages reduction14377.relations [8,149,244] reduction14377.output := by lin_cert using reduction14377.terms
def map_44_227 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image14548 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14548 : InImage map_44_227 image14548 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14548 : Bundle := named_bundle% "RealMapCertificates/relations/basis14548.json"
theorem reductionProof14548 : EqualModuloRelations reduction14548.relations reduction14548.input reduction14548.output := by lin_cert using reduction14548.terms
theorem substitutionProof14548 : IsMapEvaluation generatorImages reduction14548.relations [8,16,17,17,260] reduction14548.output := by lin_cert using reduction14548.terms
def image14549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14549 : InImage map_44_227 image14549 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14549 : Bundle := named_bundle% "RealMapCertificates/relations/basis14549.json"
theorem reductionProof14549 : EqualModuloRelations reduction14549.relations reduction14549.input reduction14549.output := by lin_cert using reduction14549.terms
theorem substitutionProof14549 : IsMapEvaluation generatorImages reduction14549.relations [8,8,1034] reduction14549.output := by lin_cert using reduction14549.terms
def image14550 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14550 : InImage map_44_227 image14550 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14550 : Bundle := named_bundle% "RealMapCertificates/relations/basis14550.json"
theorem reductionProof14550 : EqualModuloRelations reduction14550.relations reduction14550.input reduction14550.output := by lin_cert using reduction14550.terms
theorem substitutionProof14550 : IsMapEvaluation generatorImages reduction14550.relations [8,8,8,8,8,8,8,180] reduction14550.output := by lin_cert using reduction14550.terms
def map_44_228 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14781 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14781 : InImage map_44_228 image14781 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14781 : Bundle := named_bundle% "RealMapCertificates/relations/basis14781.json"
theorem reductionProof14781 : EqualModuloRelations reduction14781.relations reduction14781.input reduction14781.output := by lin_cert using reduction14781.terms
theorem substitutionProof14781 : IsMapEvaluation generatorImages reduction14781.relations [8,8,8,8,16,64,64] reduction14781.output := by lin_cert using reduction14781.terms
def image14782 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14782 : InImage map_44_228 image14782 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14782 : Bundle := named_bundle% "RealMapCertificates/relations/basis14782.json"
theorem reductionProof14782 : EqualModuloRelations reduction14782.relations reduction14782.input reduction14782.output := by lin_cert using reduction14782.terms
theorem substitutionProof14782 : IsMapEvaluation generatorImages reduction14782.relations [8,8,8,8,8,8,13,13,13,13,13] reduction14782.output := by lin_cert using reduction14782.terms
def image14783 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14783 : InImage map_44_228 image14783 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14783 : Bundle := named_bundle% "RealMapCertificates/relations/basis14783.json"
theorem reductionProof14783 : EqualModuloRelations reduction14783.relations reduction14783.input reduction14783.output := by lin_cert using reduction14783.terms
theorem substitutionProof14783 : IsMapEvaluation generatorImages reduction14783.relations [8,8,8,8,8,8,8,20,80] reduction14783.output := by lin_cert using reduction14783.terms
def map_44_229 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image14978 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14978 : InImage map_44_229 image14978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14978 : Bundle := named_bundle% "RealMapCertificates/relations/basis14978.json"
theorem reductionProof14978 : EqualModuloRelations reduction14978.relations reduction14978.input reduction14978.output := by lin_cert using reduction14978.terms
theorem substitutionProof14978 : IsMapEvaluation generatorImages reduction14978.relations [8,149,257] reduction14978.output := by lin_cert using reduction14978.terms
def image14979 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14979 : InImage map_44_229 image14979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14979 : Bundle := named_bundle% "RealMapCertificates/relations/basis14979.json"
theorem reductionProof14979 : EqualModuloRelations reduction14979.relations reduction14979.input reduction14979.output := by lin_cert using reduction14979.terms
theorem substitutionProof14979 : IsMapEvaluation generatorImages reduction14979.relations [1,5,64,64,137] reduction14979.output := by lin_cert using reduction14979.terms
def map_44_230 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image15141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15141 : InImage map_44_230 image15141 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15141 : Bundle := named_bundle% "RealMapCertificates/relations/basis15141.json"
theorem reductionProof15141 : EqualModuloRelations reduction15141.relations reduction15141.input reduction15141.output := by lin_cert using reduction15141.terms
theorem substitutionProof15141 : IsMapEvaluation generatorImages reduction15141.relations [64,725] reduction15141.output := by lin_cert using reduction15141.terms
def image15142 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15142 : InImage map_44_230 image15142 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15142 : Bundle := named_bundle% "RealMapCertificates/relations/basis15142.json"
theorem reductionProof15142 : EqualModuloRelations reduction15142.relations reduction15142.input reduction15142.output := by lin_cert using reduction15142.terms
theorem substitutionProof15142 : IsMapEvaluation generatorImages reduction15142.relations [8,8,17,17,380] reduction15142.output := by lin_cert using reduction15142.terms
def image15143 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15143 : InImage map_44_230 image15143 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15143 : Bundle := named_bundle% "RealMapCertificates/relations/basis15143.json"
theorem reductionProof15143 : EqualModuloRelations reduction15143.relations reduction15143.input reduction15143.output := by lin_cert using reduction15143.terms
theorem substitutionProof15143 : IsMapEvaluation generatorImages reduction15143.relations [8,8,8,830] reduction15143.output := by lin_cert using reduction15143.terms
def image15144 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15144 : InImage map_44_230 image15144 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15144 : Bundle := named_bundle% "RealMapCertificates/relations/basis15144.json"
theorem reductionProof15144 : EqualModuloRelations reduction15144.relations reduction15144.input reduction15144.output := by lin_cert using reduction15144.terms
theorem substitutionProof15144 : IsMapEvaluation generatorImages reduction15144.relations [8,8,8,8,8,8,8,194] reduction15144.output := by lin_cert using reduction15144.terms
def map_44_231 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image15402 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15402 : InImage map_44_231 image15402 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15402 : Bundle := named_bundle% "RealMapCertificates/relations/basis15402.json"
theorem reductionProof15402 : EqualModuloRelations reduction15402.relations reduction15402.input reduction15402.output := by lin_cert using reduction15402.terms
theorem substitutionProof15402 : IsMapEvaluation generatorImages reduction15402.relations [8,8,8,8,8,64,112] reduction15402.output := by lin_cert using reduction15402.terms
def image15403 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15403 : InImage map_44_231 image15403 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15403 : Bundle := named_bundle% "RealMapCertificates/relations/basis15403.json"
theorem reductionProof15403 : EqualModuloRelations reduction15403.relations reduction15403.input reduction15403.output := by lin_cert using reduction15403.terms
theorem substitutionProof15403 : IsMapEvaluation generatorImages reduction15403.relations [8,8,8,8,8,9,13,13,13,13,13] reduction15403.output := by lin_cert using reduction15403.terms
def image15404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15404 : InImage map_44_231 image15404 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15404 : Bundle := named_bundle% "RealMapCertificates/relations/basis15404.json"
theorem reductionProof15404 : EqualModuloRelations reduction15404.relations reduction15404.input reduction15404.output := by lin_cert using reduction15404.terms
theorem substitutionProof15404 : IsMapEvaluation generatorImages reduction15404.relations [8,8,8,8,8,8,8,22,80] reduction15404.output := by lin_cert using reduction15404.terms
def image15405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15405 : InImage map_44_231 image15405 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15405 : Bundle := named_bundle% "RealMapCertificates/relations/basis15405.json"
theorem reductionProof15405 : EqualModuloRelations reduction15405.relations reduction15405.input reduction15405.output := by lin_cert using reduction15405.terms
theorem substitutionProof15405 : IsMapEvaluation generatorImages reduction15405.relations [0,138,491] reduction15405.output := by lin_cert using reduction15405.terms
def map_44_232 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15597 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15597 : InImage map_44_232 image15597 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15597 : Bundle := named_bundle% "RealMapCertificates/relations/basis15597.json"
theorem reductionProof15597 : EqualModuloRelations reduction15597.relations reduction15597.input reduction15597.output := by lin_cert using reduction15597.terms
theorem substitutionProof15597 : IsMapEvaluation generatorImages reduction15597.relations [8,16,149,149] reduction15597.output := by lin_cert using reduction15597.terms
def image15598 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15598 : InImage map_44_232 image15598 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15598 : Bundle := named_bundle% "RealMapCertificates/relations/basis15598.json"
theorem reductionProof15598 : EqualModuloRelations reduction15598.relations reduction15598.input reduction15598.output := by lin_cert using reduction15598.terms
theorem substitutionProof15598 : IsMapEvaluation generatorImages reduction15598.relations [0,1750] reduction15598.output := by lin_cert using reduction15598.terms
def image15599 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15599 : InImage map_44_232 image15599 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15599 : Bundle := named_bundle% "RealMapCertificates/relations/basis15599.json"
theorem reductionProof15599 : EqualModuloRelations reduction15599.relations reduction15599.input reduction15599.output := by lin_cert using reduction15599.terms
theorem substitutionProof15599 : IsMapEvaluation generatorImages reduction15599.relations [0,0,0,0,1686] reduction15599.output := by lin_cert using reduction15599.terms
def map_44_233 : Matrix 1 6 := fun i j => ([false,false,false,true,false,false] : List Bool)[i.val*6+j.val]!
def image15798 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15798 : InImage map_44_233 image15798 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15798 : Bundle := named_bundle% "RealMapCertificates/relations/basis15798.json"
theorem reductionProof15798 : EqualModuloRelations reduction15798.relations reduction15798.input reduction15798.output := by lin_cert using reduction15798.terms
theorem substitutionProof15798 : IsMapEvaluation generatorImages reduction15798.relations [64,759] reduction15798.output := by lin_cert using reduction15798.terms
def image15799 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15799 : InImage map_44_233 image15799 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15799 : Bundle := named_bundle% "RealMapCertificates/relations/basis15799.json"
theorem reductionProof15799 : EqualModuloRelations reduction15799.relations reduction15799.input reduction15799.output := by lin_cert using reduction15799.terms
theorem substitutionProof15799 : IsMapEvaluation generatorImages reduction15799.relations [8,8,8,64,245] reduction15799.output := by lin_cert using reduction15799.terms
def image15800 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15800 : InImage map_44_233 image15800 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15800 : Bundle := named_bundle% "RealMapCertificates/relations/basis15800.json"
theorem reductionProof15800 : EqualModuloRelations reduction15800.relations reduction15800.input reduction15800.output := by lin_cert using reduction15800.terms
theorem substitutionProof15800 : IsMapEvaluation generatorImages reduction15800.relations [8,8,8,17,17,260] reduction15800.output := by lin_cert using reduction15800.terms
def image15801 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15801 : InImage map_44_233 image15801 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15801 : Bundle := named_bundle% "RealMapCertificates/relations/basis15801.json"
theorem reductionProof15801 : EqualModuloRelations reduction15801.relations reduction15801.input reduction15801.output := by lin_cert using reduction15801.terms
theorem substitutionProof15801 : IsMapEvaluation generatorImages reduction15801.relations [8,8,8,8,8,8,9,194] reduction15801.output := by lin_cert using reduction15801.terms
def image15802 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15802 : InImage map_44_233 image15802 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15802 : Bundle := named_bundle% "RealMapCertificates/relations/basis15802.json"
theorem reductionProof15802 : EqualModuloRelations reduction15802.relations reduction15802.input reduction15802.output := by lin_cert using reduction15802.terms
theorem substitutionProof15802 : IsMapEvaluation generatorImages reduction15802.relations [1,1750] reduction15802.output := by lin_cert using reduction15802.terms
def image15803 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15803 : InImage map_44_233 image15803 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15803 : Bundle := named_bundle% "RealMapCertificates/relations/basis15803.json"
theorem reductionProof15803 : EqualModuloRelations reduction15803.relations reduction15803.input reduction15803.output := by lin_cert using reduction15803.terms
theorem substitutionProof15803 : IsMapEvaluation generatorImages reduction15803.relations [0,0,0,1735] reduction15803.output := by lin_cert using reduction15803.terms
def map_44_234 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16050 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16050 : InImage map_44_234 image16050 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16050 : Bundle := named_bundle% "RealMapCertificates/relations/basis16050.json"
theorem reductionProof16050 : EqualModuloRelations reduction16050.relations reduction16050.input reduction16050.output := by lin_cert using reduction16050.terms
theorem substitutionProof16050 : IsMapEvaluation generatorImages reduction16050.relations [64,778] reduction16050.output := by lin_cert using reduction16050.terms
def image16051 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16051 : InImage map_44_234 image16051 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16051 : Bundle := named_bundle% "RealMapCertificates/relations/basis16051.json"
theorem reductionProof16051 : EqualModuloRelations reduction16051.relations reduction16051.input reduction16051.output := by lin_cert using reduction16051.terms
theorem substitutionProof16051 : IsMapEvaluation generatorImages reduction16051.relations [8,8,8,8,8,13,13,13,13,13,13] reduction16051.output := by lin_cert using reduction16051.terms
def image16052 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16052 : InImage map_44_234 image16052 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16052 : Bundle := named_bundle% "RealMapCertificates/relations/basis16052.json"
theorem reductionProof16052 : EqualModuloRelations reduction16052.relations reduction16052.input reduction16052.output := by lin_cert using reduction16052.terms
theorem substitutionProof16052 : IsMapEvaluation generatorImages reduction16052.relations [8,8,8,8,8,8,64,64] reduction16052.output := by lin_cert using reduction16052.terms
def image16053 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16053 : InImage map_44_234 image16053 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16053 : Bundle := named_bundle% "RealMapCertificates/relations/basis16053.json"
theorem reductionProof16053 : EqualModuloRelations reduction16053.relations reduction16053.input reduction16053.output := by lin_cert using reduction16053.terms
theorem substitutionProof16053 : IsMapEvaluation generatorImages reduction16053.relations [8,8,8,8,8,8,8,23,89] reduction16053.output := by lin_cert using reduction16053.terms
def image16054 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16054 : InImage map_44_234 image16054 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16054 : Bundle := named_bundle% "RealMapCertificates/relations/basis16054.json"
theorem reductionProof16054 : EqualModuloRelations reduction16054.relations reduction16054.input reduction16054.output := by lin_cert using reduction16054.terms
theorem substitutionProof16054 : IsMapEvaluation generatorImages reduction16054.relations [0,138,516] reduction16054.output := by lin_cert using reduction16054.terms
def image16055 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16055 : InImage map_44_234 image16055 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16055 : Bundle := named_bundle% "RealMapCertificates/relations/basis16055.json"
theorem reductionProof16055 : EqualModuloRelations reduction16055.relations reduction16055.input reduction16055.output := by lin_cert using reduction16055.terms
theorem substitutionProof16055 : IsMapEvaluation generatorImages reduction16055.relations [0,0,0,0,1736] reduction16055.output := by lin_cert using reduction16055.terms
end RealMapCertificates
