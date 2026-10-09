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
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 187 => []
  | 193 => [[5,5,7,12]]
  | 194 => [[7,10,12]]
  | 201 => []
  | 206 => [[4,6,8,12]]
  | 212 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 254 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 278 => []
  | 292 => []
  | 316 => []
  | 318 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 454 => []
  | 455 => []
  | 491 => []
  | 492 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 573 => []
  | 599 => []
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 642 => [[7,10,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 688 => []
  | 726 => []
  | 795 => []
  | 809 => []
  | 820 => [[5,5,5,7,12,12]]
  | 862 => []
  | 897 => []
  | 927 => [[4,5,5,10,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 1772 => [[0,4,4,5,9,12,12,12]]
  | 1831 => [[4,4,6,9,12,12,12]]
  | 1832 => [[4,4,7,9,12,12,12]]
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2091 => [[4,4,4,6,8,12,12,12]]
  | 2120 => [[0,4,4,4,5,9,12,12,12]]
  | 2196 => []
  | 2238 => []
  | _ => []
def map_44_235 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image16266 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16266 : InImage map_44_235 image16266 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16266 : Bundle := named_bundle% "RealMapCertificates/relations/basis16266.json"
theorem reductionProof16266 : EqualModuloRelations reduction16266.relations reduction16266.input reduction16266.output := by lin_cert using reduction16266.terms
theorem substitutionProof16266 : IsMapEvaluation generatorImages reduction16266.relations [8,8,149,206] reduction16266.output := by lin_cert using reduction16266.terms
def image16267 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16267 : InImage map_44_235 image16267 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16267 : Bundle := named_bundle% "RealMapCertificates/relations/basis16267.json"
theorem reductionProof16267 : EqualModuloRelations reduction16267.relations reduction16267.input reduction16267.output := by lin_cert using reduction16267.terms
theorem substitutionProof16267 : IsMapEvaluation generatorImages reduction16267.relations [0,0,0,0,0,1737] reduction16267.output := by lin_cert using reduction16267.terms
def map_44_236 : Matrix 3 4 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16465 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16465 : InImage map_44_236 image16465 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16465 : Bundle := named_bundle% "RealMapCertificates/relations/basis16465.json"
theorem reductionProof16465 : EqualModuloRelations reduction16465.relations reduction16465.input reduction16465.output := by lin_cert using reduction16465.terms
theorem substitutionProof16465 : IsMapEvaluation generatorImages reduction16465.relations [16,64,491] reduction16465.output := by lin_cert using reduction16465.terms
def image16466 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16466 : InImage map_44_236 image16466 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16466 : Bundle := named_bundle% "RealMapCertificates/relations/basis16466.json"
theorem reductionProof16466 : EqualModuloRelations reduction16466.relations reduction16466.input reduction16466.output := by lin_cert using reduction16466.terms
theorem substitutionProof16466 : IsMapEvaluation generatorImages reduction16466.relations [8,8,8,17,17,278] reduction16466.output := by lin_cert using reduction16466.terms
def image16467 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16467 : InImage map_44_236 image16467 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16467 : Bundle := named_bundle% "RealMapCertificates/relations/basis16467.json"
theorem reductionProof16467 : EqualModuloRelations reduction16467.relations reduction16467.input reduction16467.output := by lin_cert using reduction16467.terms
theorem substitutionProof16467 : IsMapEvaluation generatorImages reduction16467.relations [8,8,8,8,688] reduction16467.output := by lin_cert using reduction16467.terms
def image16468 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16468 : InImage map_44_236 image16468 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16468 : Bundle := named_bundle% "RealMapCertificates/relations/basis16468.json"
theorem reductionProof16468 : EqualModuloRelations reduction16468.relations reduction16468.input reduction16468.output := by lin_cert using reduction16468.terms
theorem substitutionProof16468 : IsMapEvaluation generatorImages reduction16468.relations [8,8,8,8,8,8,13,194] reduction16468.output := by lin_cert using reduction16468.terms
def map_44_237 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16724 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16724 : InImage map_44_237 image16724 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16724 : Bundle := named_bundle% "RealMapCertificates/relations/basis16724.json"
theorem reductionProof16724 : EqualModuloRelations reduction16724.relations reduction16724.input reduction16724.output := by lin_cert using reduction16724.terms
theorem substitutionProof16724 : IsMapEvaluation generatorImages reduction16724.relations [64,138,138] reduction16724.output := by lin_cert using reduction16724.terms
def image16725 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16725 : InImage map_44_237 image16725 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16725 : Bundle := named_bundle% "RealMapCertificates/relations/basis16725.json"
theorem reductionProof16725 : EqualModuloRelations reduction16725.relations reduction16725.input reduction16725.output := by lin_cert using reduction16725.terms
theorem substitutionProof16725 : IsMapEvaluation generatorImages reduction16725.relations [8,8,8,8,9,13,13,13,13,13,13] reduction16725.output := by lin_cert using reduction16725.terms
def image16726 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16726 : InImage map_44_237 image16726 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16726 : Bundle := named_bundle% "RealMapCertificates/relations/basis16726.json"
theorem reductionProof16726 : EqualModuloRelations reduction16726.relations reduction16726.input reduction16726.output := by lin_cert using reduction16726.terms
theorem substitutionProof16726 : IsMapEvaluation generatorImages reduction16726.relations [8,8,8,8,8,8,64,72] reduction16726.output := by lin_cert using reduction16726.terms
def image16727 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16727 : InImage map_44_237 image16727 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16727 : Bundle := named_bundle% "RealMapCertificates/relations/basis16727.json"
theorem reductionProof16727 : EqualModuloRelations reduction16727.relations reduction16727.input reduction16727.output := by lin_cert using reduction16727.terms
theorem substitutionProof16727 : IsMapEvaluation generatorImages reduction16727.relations [8,8,8,8,8,8,8,23,101] reduction16727.output := by lin_cert using reduction16727.terms
def image16728 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16728 : InImage map_44_237 image16728 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16728 : Bundle := named_bundle% "RealMapCertificates/relations/basis16728.json"
theorem reductionProof16728 : EqualModuloRelations reduction16728.relations reduction16728.input reduction16728.output := by lin_cert using reduction16728.terms
theorem substitutionProof16728 : IsMapEvaluation generatorImages reduction16728.relations [0,16,138,260] reduction16728.output := by lin_cert using reduction16728.terms
def image16729 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16729 : InImage map_44_237 image16729 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16729 : Bundle := named_bundle% "RealMapCertificates/relations/basis16729.json"
theorem reductionProof16729 : EqualModuloRelations reduction16729.relations reduction16729.input reduction16729.output := by lin_cert using reduction16729.terms
theorem substitutionProof16729 : IsMapEvaluation generatorImages reduction16729.relations [0,0,149,491] reduction16729.output := by lin_cert using reduction16729.terms
def map_44_238 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16928 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16928 : InImage map_44_238 image16928 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16928 : Bundle := named_bundle% "RealMapCertificates/relations/basis16928.json"
theorem reductionProof16928 : EqualModuloRelations reduction16928.relations reduction16928.input reduction16928.output := by lin_cert using reduction16928.terms
theorem substitutionProof16928 : IsMapEvaluation generatorImages reduction16928.relations [8,8,8,149,149] reduction16928.output := by lin_cert using reduction16928.terms
def image16929 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16929 : InImage map_44_238 image16929 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16929 : Bundle := named_bundle% "RealMapCertificates/relations/basis16929.json"
theorem reductionProof16929 : EqualModuloRelations reduction16929.relations reduction16929.input reduction16929.output := by lin_cert using reduction16929.terms
theorem substitutionProof16929 : IsMapEvaluation generatorImages reduction16929.relations [0,64,809] reduction16929.output := by lin_cert using reduction16929.terms
def image16930 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16930 : InImage map_44_238 image16930 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16930 : Bundle := named_bundle% "RealMapCertificates/relations/basis16930.json"
theorem reductionProof16930 : EqualModuloRelations reduction16930.relations reduction16930.input reduction16930.output := by lin_cert using reduction16930.terms
theorem substitutionProof16930 : IsMapEvaluation generatorImages reduction16930.relations [0,0,17,138,260] reduction16930.output := by lin_cert using reduction16930.terms
def map_44_239 : Matrix 1 7 := fun i j => ([false,false,false,true,false,false,false] : List Bool)[i.val*7+j.val]!
def image17154 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17154 : InImage map_44_239 image17154 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction17154 : Bundle := named_bundle% "RealMapCertificates/relations/basis17154.json"
theorem reductionProof17154 : EqualModuloRelations reduction17154.relations reduction17154.input reduction17154.output := by lin_cert using reduction17154.terms
theorem substitutionProof17154 : IsMapEvaluation generatorImages reduction17154.relations [8,64,623] reduction17154.output := by lin_cert using reduction17154.terms
def image17155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17155 : InImage map_44_239 image17155 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction17155 : Bundle := named_bundle% "RealMapCertificates/relations/basis17155.json"
theorem reductionProof17155 : EqualModuloRelations reduction17155.relations reduction17155.input reduction17155.output := by lin_cert using reduction17155.terms
theorem substitutionProof17155 : IsMapEvaluation generatorImages reduction17155.relations [8,8,8,16,17,292] reduction17155.output := by lin_cert using reduction17155.terms
def image17156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17156 : InImage map_44_239 image17156 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction17156 : Bundle := named_bundle% "RealMapCertificates/relations/basis17156.json"
theorem reductionProof17156 : EqualModuloRelations reduction17156.relations reduction17156.input reduction17156.output := by lin_cert using reduction17156.terms
theorem substitutionProof17156 : IsMapEvaluation generatorImages reduction17156.relations [8,8,8,8,726] reduction17156.output := by lin_cert using reduction17156.terms
def image17157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17157 : InImage map_44_239 image17157 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction17157 : Bundle := named_bundle% "RealMapCertificates/relations/basis17157.json"
theorem reductionProof17157 : EqualModuloRelations reduction17157.relations reduction17157.input reduction17157.output := by lin_cert using reduction17157.terms
theorem substitutionProof17157 : IsMapEvaluation generatorImages reduction17157.relations [8,8,8,8,8,9,13,194] reduction17157.output := by lin_cert using reduction17157.terms
def image17158 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17158 : InImage map_44_239 image17158 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction17158 : Bundle := named_bundle% "RealMapCertificates/relations/basis17158.json"
theorem reductionProof17158 : EqualModuloRelations reduction17158.relations reduction17158.input reduction17158.output := by lin_cert using reduction17158.terms
theorem substitutionProof17158 : IsMapEvaluation generatorImages reduction17158.relations [1,1,149,491] reduction17158.output := by lin_cert using reduction17158.terms
def image17159 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17159 : InImage map_44_239 image17159 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction17159 : Bundle := named_bundle% "RealMapCertificates/relations/basis17159.json"
theorem reductionProof17159 : EqualModuloRelations reduction17159.relations reduction17159.input reduction17159.output := by lin_cert using reduction17159.terms
theorem substitutionProof17159 : IsMapEvaluation generatorImages reduction17159.relations [0,0,0,64,795] reduction17159.output := by lin_cert using reduction17159.terms
def image17160 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17160 : InImage map_44_239 image17160 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction17160 : Bundle := named_bundle% "RealMapCertificates/relations/basis17160.json"
theorem reductionProof17160 : EqualModuloRelations reduction17160.relations reduction17160.input reduction17160.output := by lin_cert using reduction17160.terms
theorem substitutionProof17160 : IsMapEvaluation generatorImages reduction17160.relations [0,0,0,0,0,1832] reduction17160.output := by lin_cert using reduction17160.terms
def map_44_240 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image17425 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17425 : InImage map_44_240 image17425 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17425 : Bundle := named_bundle% "RealMapCertificates/relations/basis17425.json"
theorem reductionProof17425 : EqualModuloRelations reduction17425.relations reduction17425.input reduction17425.output := by lin_cert using reduction17425.terms
theorem substitutionProof17425 : IsMapEvaluation generatorImages reduction17425.relations [8,64,637] reduction17425.output := by lin_cert using reduction17425.terms
def image17426 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17426 : InImage map_44_240 image17426 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17426 : Bundle := named_bundle% "RealMapCertificates/relations/basis17426.json"
theorem reductionProof17426 : EqualModuloRelations reduction17426.relations reduction17426.input reduction17426.output := by lin_cert using reduction17426.terms
theorem substitutionProof17426 : IsMapEvaluation generatorImages reduction17426.relations [8,8,8,8,13,13,13,13,13,13,13] reduction17426.output := by lin_cert using reduction17426.terms
def image17427 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17427 : InImage map_44_240 image17427 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17427 : Bundle := named_bundle% "RealMapCertificates/relations/basis17427.json"
theorem reductionProof17427 : EqualModuloRelations reduction17427.relations reduction17427.input reduction17427.output := by lin_cert using reduction17427.terms
theorem substitutionProof17427 : IsMapEvaluation generatorImages reduction17427.relations [8,8,8,8,8,8,16,187] reduction17427.output := by lin_cert using reduction17427.terms
def image17428 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17428 : InImage map_44_240 image17428 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17428 : Bundle := named_bundle% "RealMapCertificates/relations/basis17428.json"
theorem reductionProof17428 : EqualModuloRelations reduction17428.relations reduction17428.input reduction17428.output := by lin_cert using reduction17428.terms
theorem substitutionProof17428 : IsMapEvaluation generatorImages reduction17428.relations [8,8,8,8,8,8,9,23,101] reduction17428.output := by lin_cert using reduction17428.terms
def image17429 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17429 : InImage map_44_240 image17429 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17429 : Bundle := named_bundle% "RealMapCertificates/relations/basis17429.json"
theorem reductionProof17429 : EqualModuloRelations reduction17429.relations reduction17429.input reduction17429.output := by lin_cert using reduction17429.terms
theorem substitutionProof17429 : IsMapEvaluation generatorImages reduction17429.relations [0,8,113,491] reduction17429.output := by lin_cert using reduction17429.terms
def image17430 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17430 : InImage map_44_240 image17430 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17430 : Bundle := named_bundle% "RealMapCertificates/relations/basis17430.json"
theorem reductionProof17430 : EqualModuloRelations reduction17430.relations reduction17430.input reduction17430.output := by lin_cert using reduction17430.terms
theorem substitutionProof17430 : IsMapEvaluation generatorImages reduction17430.relations [0,0,0,0,0,246,260] reduction17430.output := by lin_cert using reduction17430.terms
def map_44_241 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17693 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17693 : InImage map_44_241 image17693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17693 : Bundle := named_bundle% "RealMapCertificates/relations/basis17693.json"
theorem reductionProof17693 : EqualModuloRelations reduction17693.relations reduction17693.input reduction17693.output := by lin_cert using reduction17693.terms
theorem substitutionProof17693 : IsMapEvaluation generatorImages reduction17693.relations [8,8,8,149,160] reduction17693.output := by lin_cert using reduction17693.terms
def map_44_242 : Matrix 1 5 := fun i j => ([false,false,false,false,true] : List Bool)[i.val*5+j.val]!
def image17918 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17918 : InImage map_44_242 image17918 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17918 : Bundle := named_bundle% "RealMapCertificates/relations/basis17918.json"
theorem reductionProof17918 : EqualModuloRelations reduction17918.relations reduction17918.input reduction17918.output := by lin_cert using reduction17918.terms
theorem substitutionProof17918 : IsMapEvaluation generatorImages reduction17918.relations [64,64,244] reduction17918.output := by lin_cert using reduction17918.terms
def image17919 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17919 : InImage map_44_242 image17919 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17919 : Bundle := named_bundle% "RealMapCertificates/relations/basis17919.json"
theorem reductionProof17919 : EqualModuloRelations reduction17919.relations reduction17919.input reduction17919.output := by lin_cert using reduction17919.terms
theorem substitutionProof17919 : IsMapEvaluation generatorImages reduction17919.relations [8,8,64,491] reduction17919.output := by lin_cert using reduction17919.terms
def image17920 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17920 : InImage map_44_242 image17920 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17920 : Bundle := named_bundle% "RealMapCertificates/relations/basis17920.json"
theorem reductionProof17920 : EqualModuloRelations reduction17920.relations reduction17920.input reduction17920.output := by lin_cert using reduction17920.terms
theorem substitutionProof17920 : IsMapEvaluation generatorImages reduction17920.relations [8,8,8,8,17,454] reduction17920.output := by lin_cert using reduction17920.terms
def image17921 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17921 : InImage map_44_242 image17921 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17921 : Bundle := named_bundle% "RealMapCertificates/relations/basis17921.json"
theorem reductionProof17921 : EqualModuloRelations reduction17921.relations reduction17921.input reduction17921.output := by lin_cert using reduction17921.terms
theorem substitutionProof17921 : IsMapEvaluation generatorImages reduction17921.relations [8,8,8,8,8,573] reduction17921.output := by lin_cert using reduction17921.terms
def image17922 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17922 : InImage map_44_242 image17922 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17922 : Bundle := named_bundle% "RealMapCertificates/relations/basis17922.json"
theorem reductionProof17922 : EqualModuloRelations reduction17922.relations reduction17922.input reduction17922.output := by lin_cert using reduction17922.terms
theorem substitutionProof17922 : IsMapEvaluation generatorImages reduction17922.relations [8,8,8,8,8,13,13,194] reduction17922.output := by lin_cert using reduction17922.terms
def map_44_243 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18207 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18207 : InImage map_44_243 image18207 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18207 : Bundle := named_bundle% "RealMapCertificates/relations/basis18207.json"
theorem reductionProof18207 : EqualModuloRelations reduction18207.relations reduction18207.input reduction18207.output := by lin_cert using reduction18207.terms
theorem substitutionProof18207 : IsMapEvaluation generatorImages reduction18207.relations [2091] reduction18207.output := by lin_cert using reduction18207.terms
def image18208 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18208 : InImage map_44_243 image18208 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18208 : Bundle := named_bundle% "RealMapCertificates/relations/basis18208.json"
theorem reductionProof18208 : EqualModuloRelations reduction18208.relations reduction18208.input reduction18208.output := by lin_cert using reduction18208.terms
theorem substitutionProof18208 : IsMapEvaluation generatorImages reduction18208.relations [8,64,664] reduction18208.output := by lin_cert using reduction18208.terms
def image18209 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18209 : InImage map_44_243 image18209 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18209 : Bundle := named_bundle% "RealMapCertificates/relations/basis18209.json"
theorem reductionProof18209 : EqualModuloRelations reduction18209.relations reduction18209.input reduction18209.output := by lin_cert using reduction18209.terms
theorem substitutionProof18209 : IsMapEvaluation generatorImages reduction18209.relations [8,8,8,9,13,13,13,13,13,13,13] reduction18209.output := by lin_cert using reduction18209.terms
def image18210 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18210 : InImage map_44_243 image18210 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18210 : Bundle := named_bundle% "RealMapCertificates/relations/basis18210.json"
theorem reductionProof18210 : EqualModuloRelations reduction18210.relations reduction18210.input reduction18210.output := by lin_cert using reduction18210.terms
theorem substitutionProof18210 : IsMapEvaluation generatorImages reduction18210.relations [8,8,8,8,8,8,13,23,101] reduction18210.output := by lin_cert using reduction18210.terms
def image18211 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18211 : InImage map_44_243 image18211 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18211 : Bundle := named_bundle% "RealMapCertificates/relations/basis18211.json"
theorem reductionProof18211 : EqualModuloRelations reduction18211.relations reduction18211.input reduction18211.output := by lin_cert using reduction18211.terms
theorem substitutionProof18211 : IsMapEvaluation generatorImages reduction18211.relations [8,8,8,8,8,8,8,254] reduction18211.output := by lin_cert using reduction18211.terms
def image18212 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18212 : InImage map_44_243 image18212 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18212 : Bundle := named_bundle% "RealMapCertificates/relations/basis18212.json"
theorem reductionProof18212 : EqualModuloRelations reduction18212.relations reduction18212.input reduction18212.output := by lin_cert using reduction18212.terms
theorem substitutionProof18212 : IsMapEvaluation generatorImages reduction18212.relations [0,64,138,149] reduction18212.output := by lin_cert using reduction18212.terms
def image18213 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18213 : InImage map_44_243 image18213 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18213 : Bundle := named_bundle% "RealMapCertificates/relations/basis18213.json"
theorem reductionProof18213 : EqualModuloRelations reduction18213.relations reduction18213.input reduction18213.output := by lin_cert using reduction18213.terms
theorem substitutionProof18213 : IsMapEvaluation generatorImages reduction18213.relations [0,8,8,138,260] reduction18213.output := by lin_cert using reduction18213.terms
def map_44_244 : Matrix 3 3 := fun i j => ([false,true,false,true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18423 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation18423 : InImage map_44_244 image18423 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18423 : Bundle := named_bundle% "RealMapCertificates/relations/basis18423.json"
theorem reductionProof18423 : EqualModuloRelations reduction18423.relations reduction18423.input reduction18423.output := by lin_cert using reduction18423.terms
theorem substitutionProof18423 : IsMapEvaluation generatorImages reduction18423.relations [2120] reduction18423.output := by lin_cert using reduction18423.terms
def image18424 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18424 : InImage map_44_244 image18424 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18424 : Bundle := named_bundle% "RealMapCertificates/relations/basis18424.json"
theorem reductionProof18424 : EqualModuloRelations reduction18424.relations reduction18424.input reduction18424.output := by lin_cert using reduction18424.terms
theorem substitutionProof18424 : IsMapEvaluation generatorImages reduction18424.relations [8,8,8,16,642] reduction18424.output := by lin_cert using reduction18424.terms
def image18425 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18425 : InImage map_44_244 image18425 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18425 : Bundle := named_bundle% "RealMapCertificates/relations/basis18425.json"
theorem reductionProof18425 : EqualModuloRelations reduction18425.relations reduction18425.input reduction18425.output := by lin_cert using reduction18425.terms
theorem substitutionProof18425 : IsMapEvaluation generatorImages reduction18425.relations [0,0,0,17,149,260] reduction18425.output := by lin_cert using reduction18425.terms
def map_44_245 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18665 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18665 : InImage map_44_245 image18665 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18665 : Bundle := named_bundle% "RealMapCertificates/relations/basis18665.json"
theorem reductionProof18665 : EqualModuloRelations reduction18665.relations reduction18665.input reduction18665.output := by lin_cert using reduction18665.terms
theorem substitutionProof18665 : IsMapEvaluation generatorImages reduction18665.relations [64,64,257] reduction18665.output := by lin_cert using reduction18665.terms
def image18666 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18666 : InImage map_44_245 image18666 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18666 : Bundle := named_bundle% "RealMapCertificates/relations/basis18666.json"
theorem reductionProof18666 : EqualModuloRelations reduction18666.relations reduction18666.input reduction18666.output := by lin_cert using reduction18666.terms
theorem substitutionProof18666 : IsMapEvaluation generatorImages reduction18666.relations [8,8,64,516] reduction18666.output := by lin_cert using reduction18666.terms
def image18667 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18667 : InImage map_44_245 image18667 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18667 : Bundle := named_bundle% "RealMapCertificates/relations/basis18667.json"
theorem reductionProof18667 : EqualModuloRelations reduction18667.relations reduction18667.input reduction18667.output := by lin_cert using reduction18667.terms
theorem substitutionProof18667 : IsMapEvaluation generatorImages reduction18667.relations [8,8,8,8,9,13,13,194] reduction18667.output := by lin_cert using reduction18667.terms
def image18668 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18668 : InImage map_44_245 image18668 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18668 : Bundle := named_bundle% "RealMapCertificates/relations/basis18668.json"
theorem reductionProof18668 : EqualModuloRelations reduction18668.relations reduction18668.input reduction18668.output := by lin_cert using reduction18668.terms
theorem substitutionProof18668 : IsMapEvaluation generatorImages reduction18668.relations [8,8,8,8,8,599] reduction18668.output := by lin_cert using reduction18668.terms
def image18669 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18669 : InImage map_44_245 image18669 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18669 : Bundle := named_bundle% "RealMapCertificates/relations/basis18669.json"
theorem reductionProof18669 : EqualModuloRelations reduction18669.relations reduction18669.input reduction18669.output := by lin_cert using reduction18669.terms
theorem substitutionProof18669 : IsMapEvaluation generatorImages reduction18669.relations [8,8,8,8,8,17,292] reduction18669.output := by lin_cert using reduction18669.terms
def image18670 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18670 : InImage map_44_245 image18670 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18670 : Bundle := named_bundle% "RealMapCertificates/relations/basis18670.json"
theorem reductionProof18670 : EqualModuloRelations reduction18670.relations reduction18670.input reduction18670.output := by lin_cert using reduction18670.terms
theorem substitutionProof18670 : IsMapEvaluation generatorImages reduction18670.relations [0,0,0,64,64,246] reduction18670.output := by lin_cert using reduction18670.terms
def image18671 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18671 : InImage map_44_245 image18671 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18671 : Bundle := named_bundle% "RealMapCertificates/relations/basis18671.json"
theorem reductionProof18671 : EqualModuloRelations reduction18671.relations reduction18671.input reduction18671.output := by lin_cert using reduction18671.terms
theorem substitutionProof18671 : IsMapEvaluation generatorImages reduction18671.relations [0,0,0,17,17,897] reduction18671.output := by lin_cert using reduction18671.terms
def map_44_246 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18961 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation18961 : InImage map_44_246 image18961 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18961 : Bundle := named_bundle% "RealMapCertificates/relations/basis18961.json"
theorem reductionProof18961 : EqualModuloRelations reduction18961.relations reduction18961.input reduction18961.output := by lin_cert using reduction18961.terms
theorem substitutionProof18961 : IsMapEvaluation generatorImages reduction18961.relations [8,1686] reduction18961.output := by lin_cert using reduction18961.terms
def image18962 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18962 : InImage map_44_246 image18962 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18962 : Bundle := named_bundle% "RealMapCertificates/relations/basis18962.json"
theorem reductionProof18962 : EqualModuloRelations reduction18962.relations reduction18962.input reduction18962.output := by lin_cert using reduction18962.terms
theorem substitutionProof18962 : IsMapEvaluation generatorImages reduction18962.relations [8,8,64,529] reduction18962.output := by lin_cert using reduction18962.terms
def image18963 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18963 : InImage map_44_246 image18963 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18963 : Bundle := named_bundle% "RealMapCertificates/relations/basis18963.json"
theorem reductionProof18963 : EqualModuloRelations reduction18963.relations reduction18963.input reduction18963.output := by lin_cert using reduction18963.terms
theorem substitutionProof18963 : IsMapEvaluation generatorImages reduction18963.relations [8,8,8,13,13,13,13,13,13,13,13] reduction18963.output := by lin_cert using reduction18963.terms
def image18964 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18964 : InImage map_44_246 image18964 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18964 : Bundle := named_bundle% "RealMapCertificates/relations/basis18964.json"
theorem reductionProof18964 : EqualModuloRelations reduction18964.relations reduction18964.input reduction18964.output := by lin_cert using reduction18964.terms
theorem substitutionProof18964 : IsMapEvaluation generatorImages reduction18964.relations [8,8,8,8,8,9,13,23,101] reduction18964.output := by lin_cert using reduction18964.terms
def image18965 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18965 : InImage map_44_246 image18965 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18965 : Bundle := named_bundle% "RealMapCertificates/relations/basis18965.json"
theorem reductionProof18965 : EqualModuloRelations reduction18965.relations reduction18965.input reduction18965.output := by lin_cert using reduction18965.terms
theorem substitutionProof18965 : IsMapEvaluation generatorImages reduction18965.relations [8,8,8,8,8,8,8,8,187] reduction18965.output := by lin_cert using reduction18965.terms
def image18966 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18966 : InImage map_44_246 image18966 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18966 : Bundle := named_bundle% "RealMapCertificates/relations/basis18966.json"
theorem reductionProof18966 : EqualModuloRelations reduction18966.relations reduction18966.input reduction18966.output := by lin_cert using reduction18966.terms
theorem substitutionProof18966 : IsMapEvaluation generatorImages reduction18966.relations [0,8,8,138,278] reduction18966.output := by lin_cert using reduction18966.terms
def image18967 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18967 : InImage map_44_246 image18967 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18967 : Bundle := named_bundle% "RealMapCertificates/relations/basis18967.json"
theorem reductionProof18967 : EqualModuloRelations reduction18967.relations reduction18967.input reduction18967.output := by lin_cert using reduction18967.terms
theorem substitutionProof18967 : IsMapEvaluation generatorImages reduction18967.relations [0,0,0,0,0,64,862] reduction18967.output := by lin_cert using reduction18967.terms
def map_44_247 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image19223 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19223 : InImage map_44_247 image19223 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19223 : Bundle := named_bundle% "RealMapCertificates/relations/basis19223.json"
theorem reductionProof19223 : EqualModuloRelations reduction19223.relations reduction19223.input reduction19223.output := by lin_cert using reduction19223.terms
theorem substitutionProof19223 : IsMapEvaluation generatorImages reduction19223.relations [2238] reduction19223.output := by lin_cert using reduction19223.terms
def image19224 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19224 : InImage map_44_247 image19224 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19224 : Bundle := named_bundle% "RealMapCertificates/relations/basis19224.json"
theorem reductionProof19224 : EqualModuloRelations reduction19224.relations reduction19224.input reduction19224.output := by lin_cert using reduction19224.terms
theorem substitutionProof19224 : IsMapEvaluation generatorImages reduction19224.relations [8,8,8,8,820] reduction19224.output := by lin_cert using reduction19224.terms
def image19225 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19225 : InImage map_44_247 image19225 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19225 : Bundle := named_bundle% "RealMapCertificates/relations/basis19225.json"
theorem reductionProof19225 : EqualModuloRelations reduction19225.relations reduction19225.input reduction19225.output := by lin_cert using reduction19225.terms
theorem substitutionProof19225 : IsMapEvaluation generatorImages reduction19225.relations [0,0,0,0,0,0,0,0,0,1926] reduction19225.output := by lin_cert using reduction19225.terms
def map_44_248 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19466 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19466 : InImage map_44_248 image19466 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19466 : Bundle := named_bundle% "RealMapCertificates/relations/basis19466.json"
theorem reductionProof19466 : EqualModuloRelations reduction19466.relations reduction19466.input reduction19466.output := by lin_cert using reduction19466.terms
theorem substitutionProof19466 : IsMapEvaluation generatorImages reduction19466.relations [8,1736] reduction19466.output := by lin_cert using reduction19466.terms
def image19467 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19467 : InImage map_44_248 image19467 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19467 : Bundle := named_bundle% "RealMapCertificates/relations/basis19467.json"
theorem reductionProof19467 : EqualModuloRelations reduction19467.relations reduction19467.input reduction19467.output := by lin_cert using reduction19467.terms
theorem substitutionProof19467 : IsMapEvaluation generatorImages reduction19467.relations [8,8,16,64,260] reduction19467.output := by lin_cert using reduction19467.terms
def image19468 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19468 : InImage map_44_248 image19468 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19468 : Bundle := named_bundle% "RealMapCertificates/relations/basis19468.json"
theorem reductionProof19468 : EqualModuloRelations reduction19468.relations reduction19468.input reduction19468.output := by lin_cert using reduction19468.terms
theorem substitutionProof19468 : IsMapEvaluation generatorImages reduction19468.relations [8,8,8,8,13,13,13,194] reduction19468.output := by lin_cert using reduction19468.terms
def image19469 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19469 : InImage map_44_248 image19469 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19469 : Bundle := named_bundle% "RealMapCertificates/relations/basis19469.json"
theorem reductionProof19469 : EqualModuloRelations reduction19469.relations reduction19469.input reduction19469.output := by lin_cert using reduction19469.terms
theorem substitutionProof19469 : IsMapEvaluation generatorImages reduction19469.relations [8,8,8,8,8,20,292] reduction19469.output := by lin_cert using reduction19469.terms
def image19470 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19470 : InImage map_44_248 image19470 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19470 : Bundle := named_bundle% "RealMapCertificates/relations/basis19470.json"
theorem reductionProof19470 : EqualModuloRelations reduction19470.relations reduction19470.input reduction19470.output := by lin_cert using reduction19470.terms
theorem substitutionProof19470 : IsMapEvaluation generatorImages reduction19470.relations [8,8,8,8,8,8,455] reduction19470.output := by lin_cert using reduction19470.terms
def image19471 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19471 : InImage map_44_248 image19471 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19471 : Bundle := named_bundle% "RealMapCertificates/relations/basis19471.json"
theorem reductionProof19471 : EqualModuloRelations reduction19471.relations reduction19471.input reduction19471.output := by lin_cert using reduction19471.terms
theorem substitutionProof19471 : IsMapEvaluation generatorImages reduction19471.relations [0,0,0,0,0,0,0,0,0,1967] reduction19471.output := by lin_cert using reduction19471.terms
def map_44_249 : Matrix 2 9 := fun i j => ([false,false,true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*9+j.val]!
def image19772 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation19772 : InImage map_44_249 image19772 := by lin_cert using (fun j : Fin 9 => decide (j.val = 0))
def reduction19772 : Bundle := named_bundle% "RealMapCertificates/relations/basis19772.json"
theorem reductionProof19772 : EqualModuloRelations reduction19772.relations reduction19772.input reduction19772.output := by lin_cert using reduction19772.terms
theorem substitutionProof19772 : IsMapEvaluation generatorImages reduction19772.relations [8,1752] reduction19772.output := by lin_cert using reduction19772.terms
def image19773 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19773 : InImage map_44_249 image19773 := by lin_cert using (fun j : Fin 9 => decide (j.val = 1))
def reduction19773 : Bundle := named_bundle% "RealMapCertificates/relations/basis19773.json"
theorem reductionProof19773 : EqualModuloRelations reduction19773.relations reduction19773.input reduction19773.output := by lin_cert using reduction19773.terms
theorem substitutionProof19773 : IsMapEvaluation generatorImages reduction19773.relations [8,8,64,557] reduction19773.output := by lin_cert using reduction19773.terms
def image19774 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19774 : InImage map_44_249 image19774 := by lin_cert using (fun j : Fin 9 => decide (j.val = 2))
def reduction19774 : Bundle := named_bundle% "RealMapCertificates/relations/basis19774.json"
theorem reductionProof19774 : EqualModuloRelations reduction19774.relations reduction19774.input reduction19774.output := by lin_cert using reduction19774.terms
theorem substitutionProof19774 : IsMapEvaluation generatorImages reduction19774.relations [8,8,9,13,13,13,13,13,13,13,13] reduction19774.output := by lin_cert using reduction19774.terms
def image19775 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19775 : InImage map_44_249 image19775 := by lin_cert using (fun j : Fin 9 => decide (j.val = 3))
def reduction19775 : Bundle := named_bundle% "RealMapCertificates/relations/basis19775.json"
theorem reductionProof19775 : EqualModuloRelations reduction19775.relations reduction19775.input reduction19775.output := by lin_cert using reduction19775.terms
theorem substitutionProof19775 : IsMapEvaluation generatorImages reduction19775.relations [8,8,8,8,8,13,13,23,101] reduction19775.output := by lin_cert using reduction19775.terms
def image19776 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19776 : InImage map_44_249 image19776 := by lin_cert using (fun j : Fin 9 => decide (j.val = 4))
def reduction19776 : Bundle := named_bundle% "RealMapCertificates/relations/basis19776.json"
theorem reductionProof19776 : EqualModuloRelations reduction19776.relations reduction19776.input reduction19776.output := by lin_cert using reduction19776.terms
theorem substitutionProof19776 : IsMapEvaluation generatorImages reduction19776.relations [8,8,8,8,8,8,8,8,201] reduction19776.output := by lin_cert using reduction19776.terms
def image19777 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19777 : InImage map_44_249 image19777 := by lin_cert using (fun j : Fin 9 => decide (j.val = 5))
def reduction19777 : Bundle := named_bundle% "RealMapCertificates/relations/basis19777.json"
theorem reductionProof19777 : EqualModuloRelations reduction19777.relations reduction19777.input reduction19777.output := by lin_cert using reduction19777.terms
theorem substitutionProof19777 : IsMapEvaluation generatorImages reduction19777.relations [1,193,491] reduction19777.output := by lin_cert using reduction19777.terms
def image19778 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19778 : InImage map_44_249 image19778 := by lin_cert using (fun j : Fin 9 => decide (j.val = 6))
def reduction19778 : Bundle := named_bundle% "RealMapCertificates/relations/basis19778.json"
theorem reductionProof19778 : EqualModuloRelations reduction19778.relations reduction19778.input reduction19778.output := by lin_cert using reduction19778.terms
theorem substitutionProof19778 : IsMapEvaluation generatorImages reduction19778.relations [0,8,8,16,897] reduction19778.output := by lin_cert using reduction19778.terms
def image19779 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19779 : InImage map_44_249 image19779 := by lin_cert using (fun j : Fin 9 => decide (j.val = 7))
def reduction19779 : Bundle := named_bundle% "RealMapCertificates/relations/basis19779.json"
theorem reductionProof19779 : EqualModuloRelations reduction19779.relations reduction19779.input reduction19779.output := by lin_cert using reduction19779.terms
theorem substitutionProof19779 : IsMapEvaluation generatorImages reduction19779.relations [0,0,64,149,149] reduction19779.output := by lin_cert using reduction19779.terms
def image19780 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19780 : InImage map_44_249 image19780 := by lin_cert using (fun j : Fin 9 => decide (j.val = 8))
def reduction19780 : Bundle := named_bundle% "RealMapCertificates/relations/basis19780.json"
theorem reductionProof19780 : EqualModuloRelations reduction19780.relations reduction19780.input reduction19780.output := by lin_cert using reduction19780.terms
theorem substitutionProof19780 : IsMapEvaluation generatorImages reduction19780.relations [0,0,0,0,0,0,0,0,0,0,0,1927] reduction19780.output := by lin_cert using reduction19780.terms
def map_44_250 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image20006 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20006 : InImage map_44_250 image20006 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20006 : Bundle := named_bundle% "RealMapCertificates/relations/basis20006.json"
theorem reductionProof20006 : EqualModuloRelations reduction20006.relations reduction20006.input reduction20006.output := by lin_cert using reduction20006.terms
theorem substitutionProof20006 : IsMapEvaluation generatorImages reduction20006.relations [8,1772] reduction20006.output := by lin_cert using reduction20006.terms
def image20007 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20007 : InImage map_44_250 image20007 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20007 : Bundle := named_bundle% "RealMapCertificates/relations/basis20007.json"
theorem reductionProof20007 : EqualModuloRelations reduction20007.relations reduction20007.input reduction20007.output := by lin_cert using reduction20007.terms
theorem substitutionProof20007 : IsMapEvaluation generatorImages reduction20007.relations [8,8,8,8,8,642] reduction20007.output := by lin_cert using reduction20007.terms
def image20008 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20008 : InImage map_44_250 image20008 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20008 : Bundle := named_bundle% "RealMapCertificates/relations/basis20008.json"
theorem reductionProof20008 : EqualModuloRelations reduction20008.relations reduction20008.input reduction20008.output := by lin_cert using reduction20008.terms
theorem substitutionProof20008 : IsMapEvaluation generatorImages reduction20008.relations [0,0,0,64,927] reduction20008.output := by lin_cert using reduction20008.terms
def image20009 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20009 : InImage map_44_250 image20009 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20009 : Bundle := named_bundle% "RealMapCertificates/relations/basis20009.json"
theorem reductionProof20009 : EqualModuloRelations reduction20009.relations reduction20009.input reduction20009.output := by lin_cert using reduction20009.terms
theorem substitutionProof20009 : IsMapEvaluation generatorImages reduction20009.relations [0,0,0,0,0,0,0,0,0,0,1994] reduction20009.output := by lin_cert using reduction20009.terms
def map_44_251 : Matrix 1 7 := fun i j => ([false,false,true,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20281 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20281 : InImage map_44_251 image20281 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20281 : Bundle := named_bundle% "RealMapCertificates/relations/basis20281.json"
theorem reductionProof20281 : EqualModuloRelations reduction20281.relations reduction20281.input reduction20281.output := by lin_cert using reduction20281.terms
theorem substitutionProof20281 : IsMapEvaluation generatorImages reduction20281.relations [8,64,64,206] reduction20281.output := by lin_cert using reduction20281.terms
def image20282 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20282 : InImage map_44_251 image20282 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20282 : Bundle := named_bundle% "RealMapCertificates/relations/basis20282.json"
theorem reductionProof20282 : EqualModuloRelations reduction20282.relations reduction20282.input reduction20282.output := by lin_cert using reduction20282.terms
theorem substitutionProof20282 : IsMapEvaluation generatorImages reduction20282.relations [8,8,8,64,380] reduction20282.output := by lin_cert using reduction20282.terms
def image20283 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20283 : InImage map_44_251 image20283 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20283 : Bundle := named_bundle% "RealMapCertificates/relations/basis20283.json"
theorem reductionProof20283 : EqualModuloRelations reduction20283.relations reduction20283.input reduction20283.output := by lin_cert using reduction20283.terms
theorem substitutionProof20283 : IsMapEvaluation generatorImages reduction20283.relations [8,8,8,9,13,13,13,194] reduction20283.output := by lin_cert using reduction20283.terms
def image20284 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20284 : InImage map_44_251 image20284 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20284 : Bundle := named_bundle% "RealMapCertificates/relations/basis20284.json"
theorem reductionProof20284 : EqualModuloRelations reduction20284.relations reduction20284.input reduction20284.output := by lin_cert using reduction20284.terms
theorem substitutionProof20284 : IsMapEvaluation generatorImages reduction20284.relations [8,8,8,8,8,22,292] reduction20284.output := by lin_cert using reduction20284.terms
def image20285 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20285 : InImage map_44_251 image20285 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20285 : Bundle := named_bundle% "RealMapCertificates/relations/basis20285.json"
theorem reductionProof20285 : EqualModuloRelations reduction20285.relations reduction20285.input reduction20285.output := by lin_cert using reduction20285.terms
theorem substitutionProof20285 : IsMapEvaluation generatorImages reduction20285.relations [8,8,8,8,8,8,492] reduction20285.output := by lin_cert using reduction20285.terms
def image20286 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20286 : InImage map_44_251 image20286 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20286 : Bundle := named_bundle% "RealMapCertificates/relations/basis20286.json"
theorem reductionProof20286 : EqualModuloRelations reduction20286.relations reduction20286.input reduction20286.output := by lin_cert using reduction20286.terms
theorem substitutionProof20286 : IsMapEvaluation generatorImages reduction20286.relations [1,1,64,149,149] reduction20286.output := by lin_cert using reduction20286.terms
def image20287 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20287 : InImage map_44_251 image20287 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20287 : Bundle := named_bundle% "RealMapCertificates/relations/basis20287.json"
theorem reductionProof20287 : EqualModuloRelations reduction20287.relations reduction20287.input reduction20287.output := by lin_cert using reduction20287.terms
theorem substitutionProof20287 : IsMapEvaluation generatorImages reduction20287.relations [0,0,0,0,0,0,64,64,260] reduction20287.output := by lin_cert using reduction20287.terms
def map_44_252 : Matrix 3 7 := fun i j => ([false,true,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20582 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation20582 : InImage map_44_252 image20582 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20582 : Bundle := named_bundle% "RealMapCertificates/relations/basis20582.json"
theorem reductionProof20582 : EqualModuloRelations reduction20582.relations reduction20582.input reduction20582.output := by lin_cert using reduction20582.terms
theorem substitutionProof20582 : IsMapEvaluation generatorImages reduction20582.relations [8,1831] reduction20582.output := by lin_cert using reduction20582.terms
def image20583 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation20583 : InImage map_44_252 image20583 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20583 : Bundle := named_bundle% "RealMapCertificates/relations/basis20583.json"
theorem reductionProof20583 : EqualModuloRelations reduction20583.relations reduction20583.input reduction20583.output := by lin_cert using reduction20583.terms
theorem substitutionProof20583 : IsMapEvaluation generatorImages reduction20583.relations [8,8,13,13,13,13,13,13,13,13,13] reduction20583.output := by lin_cert using reduction20583.terms
def image20584 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20584 : InImage map_44_252 image20584 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20584 : Bundle := named_bundle% "RealMapCertificates/relations/basis20584.json"
theorem reductionProof20584 : EqualModuloRelations reduction20584.relations reduction20584.input reduction20584.output := by lin_cert using reduction20584.terms
theorem substitutionProof20584 : IsMapEvaluation generatorImages reduction20584.relations [8,8,8,64,404] reduction20584.output := by lin_cert using reduction20584.terms
def image20585 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20585 : InImage map_44_252 image20585 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20585 : Bundle := named_bundle% "RealMapCertificates/relations/basis20585.json"
theorem reductionProof20585 : EqualModuloRelations reduction20585.relations reduction20585.input reduction20585.output := by lin_cert using reduction20585.terms
theorem substitutionProof20585 : IsMapEvaluation generatorImages reduction20585.relations [8,8,8,8,9,13,13,23,101] reduction20585.output := by lin_cert using reduction20585.terms
def image20586 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20586 : InImage map_44_252 image20586 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20586 : Bundle := named_bundle% "RealMapCertificates/relations/basis20586.json"
theorem reductionProof20586 : EqualModuloRelations reduction20586.relations reduction20586.input reduction20586.output := by lin_cert using reduction20586.terms
theorem substitutionProof20586 : IsMapEvaluation generatorImages reduction20586.relations [8,8,8,8,8,8,8,8,212] reduction20586.output := by lin_cert using reduction20586.terms
def image20587 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20587 : InImage map_44_252 image20587 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20587 : Bundle := named_bundle% "RealMapCertificates/relations/basis20587.json"
theorem reductionProof20587 : EqualModuloRelations reduction20587.relations reduction20587.input reduction20587.output := by lin_cert using reduction20587.terms
theorem substitutionProof20587 : IsMapEvaluation generatorImages reduction20587.relations [0,0,0,0,0,0,2196] reduction20587.output := by lin_cert using reduction20587.terms
def image20588 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20588 : InImage map_44_252 image20588 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20588 : Bundle := named_bundle% "RealMapCertificates/relations/basis20588.json"
theorem reductionProof20588 : EqualModuloRelations reduction20588.relations reduction20588.input reduction20588.output := by lin_cert using reduction20588.terms
theorem substitutionProof20588 : IsMapEvaluation generatorImages reduction20588.relations [0,0,0,0,0,0,0,64,897] reduction20588.output := by lin_cert using reduction20588.terms
def map_44_253 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image20834 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20834 : InImage map_44_253 image20834 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20834 : Bundle := named_bundle% "RealMapCertificates/relations/basis20834.json"
theorem reductionProof20834 : EqualModuloRelations reduction20834.relations reduction20834.input reduction20834.output := by lin_cert using reduction20834.terms
theorem substitutionProof20834 : IsMapEvaluation generatorImages reduction20834.relations [8,245,260] reduction20834.output := by lin_cert using reduction20834.terms
def image20835 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20835 : InImage map_44_253 image20835 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20835 : Bundle := named_bundle% "RealMapCertificates/relations/basis20835.json"
theorem reductionProof20835 : EqualModuloRelations reduction20835.relations reduction20835.input reduction20835.output := by lin_cert using reduction20835.terms
theorem substitutionProof20835 : IsMapEvaluation generatorImages reduction20835.relations [8,8,8,8,9,642] reduction20835.output := by lin_cert using reduction20835.terms
def map_44_254 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image21104 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21104 : InImage map_44_254 image21104 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21104 : Bundle := named_bundle% "RealMapCertificates/relations/basis21104.json"
theorem reductionProof21104 : EqualModuloRelations reduction21104.relations reduction21104.input reduction21104.output := by lin_cert using reduction21104.terms
theorem substitutionProof21104 : IsMapEvaluation generatorImages reduction21104.relations [8,8,64,64,149] reduction21104.output := by lin_cert using reduction21104.terms
def image21105 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21105 : InImage map_44_254 image21105 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21105 : Bundle := named_bundle% "RealMapCertificates/relations/basis21105.json"
theorem reductionProof21105 : EqualModuloRelations reduction21105.relations reduction21105.input reduction21105.output := by lin_cert using reduction21105.terms
theorem substitutionProof21105 : IsMapEvaluation generatorImages reduction21105.relations [8,8,8,13,13,13,13,194] reduction21105.output := by lin_cert using reduction21105.terms
def image21106 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21106 : InImage map_44_254 image21106 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21106 : Bundle := named_bundle% "RealMapCertificates/relations/basis21106.json"
theorem reductionProof21106 : EqualModuloRelations reduction21106.relations reduction21106.input reduction21106.output := by lin_cert using reduction21106.terms
theorem substitutionProof21106 : IsMapEvaluation generatorImages reduction21106.relations [8,8,8,8,64,260] reduction21106.output := by lin_cert using reduction21106.terms
def image21107 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21107 : InImage map_44_254 image21107 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21107 : Bundle := named_bundle% "RealMapCertificates/relations/basis21107.json"
theorem reductionProof21107 : EqualModuloRelations reduction21107.relations reduction21107.input reduction21107.output := by lin_cert using reduction21107.terms
theorem substitutionProof21107 : IsMapEvaluation generatorImages reduction21107.relations [8,8,8,8,8,23,316] reduction21107.output := by lin_cert using reduction21107.terms
def image21108 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21108 : InImage map_44_254 image21108 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21108 : Bundle := named_bundle% "RealMapCertificates/relations/basis21108.json"
theorem reductionProof21108 : EqualModuloRelations reduction21108.relations reduction21108.input reduction21108.output := by lin_cert using reduction21108.terms
theorem substitutionProof21108 : IsMapEvaluation generatorImages reduction21108.relations [8,8,8,8,8,8,8,318] reduction21108.output := by lin_cert using reduction21108.terms
end RealMapCertificates
