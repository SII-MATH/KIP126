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
  | 88 => [[4,4,5,5,7]]
  | 101 => []
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 138 => [[0,4,6,12]]
  | 160 => [[6,8,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 188 => []
  | 194 => [[7,10,12]]
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 212 => []
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 246 => []
  | 250 => []
  | 260 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 278 => []
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 346 => []
  | 347 => []
  | 348 => []
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 379 => [[1,4,4,4,4,4,4,4,4,4,4,4]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 416 => [[2,4,4,4,4,4,4,4,4,4,4,4]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 434 => [[0,0,9,12,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 606 => []
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 627 => []
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 642 => [[7,10,12,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 795 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 807 => []
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 873 => [[4,4,4,4,4,4,5,7,7,12]]
  | 956 => []
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1032 => [[4,4,4,4,4,4,4,5,7,7,12]]
  | 1033 => []
  | 1059 => []
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1076 => []
  | 1102 => [[4,4,7,7,9,12,12]]
  | 1317 => [[6,8,12,12,12]]
  | 1536 => [[4,6,8,12,12,12]]
  | 1552 => [[0,4,5,9,12,12,12]]
  | 1592 => [[4,6,9,12,12,12]]
  | 1605 => []
  | 2628 => []
  | 2741 => []
  | _ => []
def map_44_255 : Matrix 2 6 := fun i j => ([true,false,false,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image21457 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21457 : InImage map_44_255 image21457 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21457 : Bundle := named_bundle% "RealMapCertificates/relations/basis21457.json"
theorem reductionProof21457 : EqualModuloRelations reduction21457.relations reduction21457.input reduction21457.output := by lin_cert using reduction21457.terms
theorem substitutionProof21457 : IsMapEvaluation generatorImages reduction21457.relations [8,9,13,13,13,13,13,13,13,13,13] reduction21457.output := by lin_cert using reduction21457.terms
def image21458 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21458 : InImage map_44_255 image21458 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21458 : Bundle := named_bundle% "RealMapCertificates/relations/basis21458.json"
theorem reductionProof21458 : EqualModuloRelations reduction21458.relations reduction21458.input reduction21458.output := by lin_cert using reduction21458.terms
theorem substitutionProof21458 : IsMapEvaluation generatorImages reduction21458.relations [8,8,1536] reduction21458.output := by lin_cert using reduction21458.terms
def image21459 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21459 : InImage map_44_255 image21459 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21459 : Bundle := named_bundle% "RealMapCertificates/relations/basis21459.json"
theorem reductionProof21459 : EqualModuloRelations reduction21459.relations reduction21459.input reduction21459.output := by lin_cert using reduction21459.terms
theorem substitutionProof21459 : IsMapEvaluation generatorImages reduction21459.relations [8,8,8,64,434] reduction21459.output := by lin_cert using reduction21459.terms
def image21460 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21460 : InImage map_44_255 image21460 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21460 : Bundle := named_bundle% "RealMapCertificates/relations/basis21460.json"
theorem reductionProof21460 : EqualModuloRelations reduction21460.relations reduction21460.input reduction21460.output := by lin_cert using reduction21460.terms
theorem substitutionProof21460 : IsMapEvaluation generatorImages reduction21460.relations [8,8,8,8,13,13,13,23,101] reduction21460.output := by lin_cert using reduction21460.terms
def image21461 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21461 : InImage map_44_255 image21461 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21461 : Bundle := named_bundle% "RealMapCertificates/relations/basis21461.json"
theorem reductionProof21461 : EqualModuloRelations reduction21461.relations reduction21461.input reduction21461.output := by lin_cert using reduction21461.terms
theorem substitutionProof21461 : IsMapEvaluation generatorImages reduction21461.relations [8,8,8,8,8,8,8,9,212] reduction21461.output := by lin_cert using reduction21461.terms
def image21462 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21462 : InImage map_44_255 image21462 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21462 : Bundle := named_bundle% "RealMapCertificates/relations/basis21462.json"
theorem reductionProof21462 : EqualModuloRelations reduction21462.relations reduction21462.input reduction21462.output := by lin_cert using reduction21462.terms
theorem substitutionProof21462 : IsMapEvaluation generatorImages reduction21462.relations [1,64,1009] reduction21462.output := by lin_cert using reduction21462.terms
def map_44_256 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image21726 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21726 : InImage map_44_256 image21726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21726 : Bundle := named_bundle% "RealMapCertificates/relations/basis21726.json"
theorem reductionProof21726 : EqualModuloRelations reduction21726.relations reduction21726.input reduction21726.output := by lin_cert using reduction21726.terms
theorem substitutionProof21726 : IsMapEvaluation generatorImages reduction21726.relations [64,1060] reduction21726.output := by lin_cert using reduction21726.terms
def image21727 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21727 : InImage map_44_256 image21727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21727 : Bundle := named_bundle% "RealMapCertificates/relations/basis21727.json"
theorem reductionProof21727 : EqualModuloRelations reduction21727.relations reduction21727.input reduction21727.output := by lin_cert using reduction21727.terms
theorem substitutionProof21727 : IsMapEvaluation generatorImages reduction21727.relations [8,8,1552] reduction21727.output := by lin_cert using reduction21727.terms
def image21728 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21728 : InImage map_44_256 image21728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21728 : Bundle := named_bundle% "RealMapCertificates/relations/basis21728.json"
theorem reductionProof21728 : EqualModuloRelations reduction21728.relations reduction21728.input reduction21728.output := by lin_cert using reduction21728.terms
theorem substitutionProof21728 : IsMapEvaluation generatorImages reduction21728.relations [8,8,8,8,13,642] reduction21728.output := by lin_cert using reduction21728.terms
def map_44_257 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image22057 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22057 : InImage map_44_257 image22057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22057 : Bundle := named_bundle% "RealMapCertificates/relations/basis22057.json"
theorem reductionProof22057 : EqualModuloRelations reduction22057.relations reduction22057.input reduction22057.output := by lin_cert using reduction22057.terms
theorem substitutionProof22057 : IsMapEvaluation generatorImages reduction22057.relations [8,8,64,64,160] reduction22057.output := by lin_cert using reduction22057.terms
def image22058 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22058 : InImage map_44_257 image22058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22058 : Bundle := named_bundle% "RealMapCertificates/relations/basis22058.json"
theorem reductionProof22058 : EqualModuloRelations reduction22058.relations reduction22058.input reduction22058.output := by lin_cert using reduction22058.terms
theorem substitutionProof22058 : IsMapEvaluation generatorImages reduction22058.relations [8,8,9,13,13,13,13,194] reduction22058.output := by lin_cert using reduction22058.terms
def image22059 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22059 : InImage map_44_257 image22059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22059 : Bundle := named_bundle% "RealMapCertificates/relations/basis22059.json"
theorem reductionProof22059 : EqualModuloRelations reduction22059.relations reduction22059.input reduction22059.output := by lin_cert using reduction22059.terms
theorem substitutionProof22059 : IsMapEvaluation generatorImages reduction22059.relations [8,8,8,8,64,278] reduction22059.output := by lin_cert using reduction22059.terms
def image22060 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22060 : InImage map_44_257 image22060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22060 : Bundle := named_bundle% "RealMapCertificates/relations/basis22060.json"
theorem reductionProof22060 : EqualModuloRelations reduction22060.relations reduction22060.input reduction22060.output := by lin_cert using reduction22060.terms
theorem substitutionProof22060 : IsMapEvaluation generatorImages reduction22060.relations [8,8,8,8,8,23,346] reduction22060.output := by lin_cert using reduction22060.terms
def image22061 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22061 : InImage map_44_257 image22061 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22061 : Bundle := named_bundle% "RealMapCertificates/relations/basis22061.json"
theorem reductionProof22061 : EqualModuloRelations reduction22061.relations reduction22061.input reduction22061.output := by lin_cert using reduction22061.terms
theorem substitutionProof22061 : IsMapEvaluation generatorImages reduction22061.relations [8,8,8,8,8,8,8,348] reduction22061.output := by lin_cert using reduction22061.terms
def map_44_258 : Matrix 2 5 := fun i j => ([true,false,false,false,false,false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image22418 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22418 : InImage map_44_258 image22418 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22418 : Bundle := named_bundle% "RealMapCertificates/relations/basis22418.json"
theorem reductionProof22418 : EqualModuloRelations reduction22418.relations reduction22418.input reduction22418.output := by lin_cert using reduction22418.terms
theorem substitutionProof22418 : IsMapEvaluation generatorImages reduction22418.relations [8,13,13,13,13,13,13,13,13,13,13] reduction22418.output := by lin_cert using reduction22418.terms
def image22419 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22419 : InImage map_44_258 image22419 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22419 : Bundle := named_bundle% "RealMapCertificates/relations/basis22419.json"
theorem reductionProof22419 : EqualModuloRelations reduction22419.relations reduction22419.input reduction22419.output := by lin_cert using reduction22419.terms
theorem substitutionProof22419 : IsMapEvaluation generatorImages reduction22419.relations [8,8,1592] reduction22419.output := by lin_cert using reduction22419.terms
def image22420 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22420 : InImage map_44_258 image22420 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22420 : Bundle := named_bundle% "RealMapCertificates/relations/basis22420.json"
theorem reductionProof22420 : EqualModuloRelations reduction22420.relations reduction22420.input reduction22420.output := by lin_cert using reduction22420.terms
theorem substitutionProof22420 : IsMapEvaluation generatorImages reduction22420.relations [8,8,8,9,13,13,13,23,101] reduction22420.output := by lin_cert using reduction22420.terms
def image22421 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22421 : InImage map_44_258 image22421 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22421 : Bundle := named_bundle% "RealMapCertificates/relations/basis22421.json"
theorem reductionProof22421 : EqualModuloRelations reduction22421.relations reduction22421.input reduction22421.output := by lin_cert using reduction22421.terms
theorem substitutionProof22421 : IsMapEvaluation generatorImages reduction22421.relations [8,8,8,8,956] reduction22421.output := by lin_cert using reduction22421.terms
def image22422 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22422 : InImage map_44_258 image22422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22422 : Bundle := named_bundle% "RealMapCertificates/relations/basis22422.json"
theorem reductionProof22422 : EqualModuloRelations reduction22422.relations reduction22422.input reduction22422.output := by lin_cert using reduction22422.terms
theorem substitutionProof22422 : IsMapEvaluation generatorImages reduction22422.relations [8,8,8,8,8,8,8,13,212] reduction22422.output := by lin_cert using reduction22422.terms
def map_44_259 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22731 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22731 : InImage map_44_259 image22731 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22731 : Bundle := named_bundle% "RealMapCertificates/relations/basis22731.json"
theorem reductionProof22731 : EqualModuloRelations reduction22731.relations reduction22731.input reduction22731.output := by lin_cert using reduction22731.terms
theorem substitutionProof22731 : IsMapEvaluation generatorImages reduction22731.relations [64,1102] reduction22731.output := by lin_cert using reduction22731.terms
def image22732 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22732 : InImage map_44_259 image22732 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22732 : Bundle := named_bundle% "RealMapCertificates/relations/basis22732.json"
theorem reductionProof22732 : EqualModuloRelations reduction22732.relations reduction22732.input reduction22732.output := by lin_cert using reduction22732.terms
theorem substitutionProof22732 : IsMapEvaluation generatorImages reduction22732.relations [8,8,1605] reduction22732.output := by lin_cert using reduction22732.terms
def image22733 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22733 : InImage map_44_259 image22733 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22733 : Bundle := named_bundle% "RealMapCertificates/relations/basis22733.json"
theorem reductionProof22733 : EqualModuloRelations reduction22733.relations reduction22733.input reduction22733.output := by lin_cert using reduction22733.terms
theorem substitutionProof22733 : IsMapEvaluation generatorImages reduction22733.relations [8,8,8,9,13,642] reduction22733.output := by lin_cert using reduction22733.terms
def image22734 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22734 : InImage map_44_259 image22734 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22734 : Bundle := named_bundle% "RealMapCertificates/relations/basis22734.json"
theorem reductionProof22734 : EqualModuloRelations reduction22734.relations reduction22734.input reduction22734.output := by lin_cert using reduction22734.terms
theorem substitutionProof22734 : IsMapEvaluation generatorImages reduction22734.relations [1,2628] reduction22734.output := by lin_cert using reduction22734.terms
def map_44_260 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23091 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23091 : InImage map_44_260 image23091 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23091 : Bundle := named_bundle% "RealMapCertificates/relations/basis23091.json"
theorem reductionProof23091 : EqualModuloRelations reduction23091.relations reduction23091.input reduction23091.output := by lin_cert using reduction23091.terms
theorem substitutionProof23091 : IsMapEvaluation generatorImages reduction23091.relations [8,8,16,64,347] reduction23091.output := by lin_cert using reduction23091.terms
def image23092 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation23092 : InImage map_44_260 image23092 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23092 : Bundle := named_bundle% "RealMapCertificates/relations/basis23092.json"
theorem reductionProof23092 : EqualModuloRelations reduction23092.relations reduction23092.input reduction23092.output := by lin_cert using reduction23092.terms
theorem substitutionProof23092 : IsMapEvaluation generatorImages reduction23092.relations [8,8,13,13,13,13,13,194] reduction23092.output := by lin_cert using reduction23092.terms
def image23093 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23093 : InImage map_44_260 image23093 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23093 : Bundle := named_bundle% "RealMapCertificates/relations/basis23093.json"
theorem reductionProof23093 : EqualModuloRelations reduction23093.relations reduction23093.input reduction23093.output := by lin_cert using reduction23093.terms
theorem substitutionProof23093 : IsMapEvaluation generatorImages reduction23093.relations [8,8,8,8,16,627] reduction23093.output := by lin_cert using reduction23093.terms
def image23094 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23094 : InImage map_44_260 image23094 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23094 : Bundle := named_bundle% "RealMapCertificates/relations/basis23094.json"
theorem reductionProof23094 : EqualModuloRelations reduction23094.relations reduction23094.input reduction23094.output := by lin_cert using reduction23094.terms
theorem substitutionProof23094 : IsMapEvaluation generatorImages reduction23094.relations [8,8,8,8,9,23,346] reduction23094.output := by lin_cert using reduction23094.terms
def image23095 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23095 : InImage map_44_260 image23095 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23095 : Bundle := named_bundle% "RealMapCertificates/relations/basis23095.json"
theorem reductionProof23095 : EqualModuloRelations reduction23095.relations reduction23095.input reduction23095.output := by lin_cert using reduction23095.terms
theorem substitutionProof23095 : IsMapEvaluation generatorImages reduction23095.relations [8,8,8,8,8,8,8,8,250] reduction23095.output := by lin_cert using reduction23095.terms
def image23096 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23096 : InImage map_44_260 image23096 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23096 : Bundle := named_bundle% "RealMapCertificates/relations/basis23096.json"
theorem reductionProof23096 : EqualModuloRelations reduction23096.relations reduction23096.input reduction23096.output := by lin_cert using reduction23096.terms
theorem substitutionProof23096 : IsMapEvaluation generatorImages reduction23096.relations [0,2741] reduction23096.output := by lin_cert using reduction23096.terms
def map_44_261 : Matrix 3 6 := fun i j => ([true,false,false,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23540 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation23540 : InImage map_44_261 image23540 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23540 : Bundle := named_bundle% "RealMapCertificates/relations/basis23540.json"
theorem reductionProof23540 : EqualModuloRelations reduction23540.relations reduction23540.input reduction23540.output := by lin_cert using reduction23540.terms
theorem substitutionProof23540 : IsMapEvaluation generatorImages reduction23540.relations [9,13,13,13,13,13,13,13,13,13,13] reduction23540.output := by lin_cert using reduction23540.terms
def image23541 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation23541 : InImage map_44_261 image23541 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23541 : Bundle := named_bundle% "RealMapCertificates/relations/basis23541.json"
theorem reductionProof23541 : EqualModuloRelations reduction23541.relations reduction23541.input reduction23541.output := by lin_cert using reduction23541.terms
theorem substitutionProof23541 : IsMapEvaluation generatorImages reduction23541.relations [8,8,8,1317] reduction23541.output := by lin_cert using reduction23541.terms
def image23542 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23542 : InImage map_44_261 image23542 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23542 : Bundle := named_bundle% "RealMapCertificates/relations/basis23542.json"
theorem reductionProof23542 : EqualModuloRelations reduction23542.relations reduction23542.input reduction23542.output := by lin_cert using reduction23542.terms
theorem substitutionProof23542 : IsMapEvaluation generatorImages reduction23542.relations [8,8,8,13,13,13,13,23,101] reduction23542.output := by lin_cert using reduction23542.terms
def image23543 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23543 : InImage map_44_261 image23543 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23543 : Bundle := named_bundle% "RealMapCertificates/relations/basis23543.json"
theorem reductionProof23543 : EqualModuloRelations reduction23543.relations reduction23543.input reduction23543.output := by lin_cert using reduction23543.terms
theorem substitutionProof23543 : IsMapEvaluation generatorImages reduction23543.relations [8,8,8,8,138,188] reduction23543.output := by lin_cert using reduction23543.terms
def image23544 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23544 : InImage map_44_261 image23544 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23544 : Bundle := named_bundle% "RealMapCertificates/relations/basis23544.json"
theorem reductionProof23544 : EqualModuloRelations reduction23544.relations reduction23544.input reduction23544.output := by lin_cert using reduction23544.terms
theorem substitutionProof23544 : IsMapEvaluation generatorImages reduction23544.relations [8,8,8,8,8,8,9,13,212] reduction23544.output := by lin_cert using reduction23544.terms
def image23545 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23545 : InImage map_44_261 image23545 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23545 : Bundle := named_bundle% "RealMapCertificates/relations/basis23545.json"
theorem reductionProof23545 : EqualModuloRelations reduction23545.relations reduction23545.input reduction23545.output := by lin_cert using reduction23545.terms
theorem substitutionProof23545 : IsMapEvaluation generatorImages reduction23545.relations [1,5,64,64,260] reduction23545.output := by lin_cert using reduction23545.terms
def map_45_45 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image212 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation212 : InImage map_45_45 image212 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction212 : Bundle := named_bundle% "RealMapCertificates/relations/basis212.json"
theorem reductionProof212 : EqualModuloRelations reduction212.relations reduction212.input reduction212.output := by lin_cert using reduction212.terms
theorem substitutionProof212 : IsMapEvaluation generatorImages reduction212.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction212.output := by lin_cert using reduction212.terms
def map_45_134 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2639 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2639 : InImage map_45_134 image2639 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2639 : Bundle := named_bundle% "RealMapCertificates/relations/basis2639.json"
theorem reductionProof2639 : EqualModuloRelations reduction2639.relations reduction2639.input reduction2639.output := by lin_cert using reduction2639.terms
theorem substitutionProof2639 : IsMapEvaluation generatorImages reduction2639.relations [379] reduction2639.output := by lin_cert using reduction2639.terms
def map_45_136 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2806 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2806 : InImage map_45_136 image2806 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2806 : Bundle := named_bundle% "RealMapCertificates/relations/basis2806.json"
theorem reductionProof2806 : EqualModuloRelations reduction2806.relations reduction2806.input reduction2806.output := by lin_cert using reduction2806.terms
theorem substitutionProof2806 : IsMapEvaluation generatorImages reduction2806.relations [416] reduction2806.output := by lin_cert using reduction2806.terms
def map_45_139 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3043 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3043 : InImage map_45_139 image3043 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3043 : Bundle := named_bundle% "RealMapCertificates/relations/basis3043.json"
theorem reductionProof3043 : EqualModuloRelations reduction3043.relations reduction3043.input reduction3043.output := by lin_cert using reduction3043.terms
theorem substitutionProof3043 : IsMapEvaluation generatorImages reduction3043.relations [0,431] reduction3043.output := by lin_cert using reduction3043.terms
def map_45_140 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image3110 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3110 : InImage map_45_140 image3110 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction3110 : Bundle := named_bundle% "RealMapCertificates/relations/basis3110.json"
theorem reductionProof3110 : EqualModuloRelations reduction3110.relations reduction3110.input reduction3110.output := by lin_cert using reduction3110.terms
theorem substitutionProof3110 : IsMapEvaluation generatorImages reduction3110.relations [1,431] reduction3110.output := by lin_cert using reduction3110.terms
def image3111 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation3111 : InImage map_45_140 image3111 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction3111 : Bundle := named_bundle% "RealMapCertificates/relations/basis3111.json"
theorem reductionProof3111 : EqualModuloRelations reduction3111.relations reduction3111.input reduction3111.output := by lin_cert using reduction3111.terms
theorem substitutionProof3111 : IsMapEvaluation generatorImages reduction3111.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction3111.output := by lin_cert using reduction3111.terms
def map_45_142 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3289 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3289 : InImage map_45_142 image3289 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3289 : Bundle := named_bundle% "RealMapCertificates/relations/basis3289.json"
theorem reductionProof3289 : EqualModuloRelations reduction3289.relations reduction3289.input reduction3289.output := by lin_cert using reduction3289.terms
theorem substitutionProof3289 : IsMapEvaluation generatorImages reduction3289.relations [0,469] reduction3289.output := by lin_cert using reduction3289.terms
def map_45_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3365 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3365 : InImage map_45_143 image3365 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3365 : Bundle := named_bundle% "RealMapCertificates/relations/basis3365.json"
theorem reductionProof3365 : EqualModuloRelations reduction3365.relations reduction3365.input reduction3365.output := by lin_cert using reduction3365.terms
theorem substitutionProof3365 : IsMapEvaluation generatorImages reduction3365.relations [0,0,470] reduction3365.output := by lin_cert using reduction3365.terms
def map_45_145 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3538 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3538 : InImage map_45_145 image3538 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3538 : Bundle := named_bundle% "RealMapCertificates/relations/basis3538.json"
theorem reductionProof3538 : EqualModuloRelations reduction3538.relations reduction3538.input reduction3538.output := by lin_cert using reduction3538.terms
theorem substitutionProof3538 : IsMapEvaluation generatorImages reduction3538.relations [0,8,295] reduction3538.output := by lin_cert using reduction3538.terms
def map_45_146 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3604 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3604 : InImage map_45_146 image3604 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3604 : Bundle := named_bundle% "RealMapCertificates/relations/basis3604.json"
theorem reductionProof3604 : EqualModuloRelations reduction3604.relations reduction3604.input reduction3604.output := by lin_cert using reduction3604.terms
theorem substitutionProof3604 : IsMapEvaluation generatorImages reduction3604.relations [0,0,8,296] reduction3604.output := by lin_cert using reduction3604.terms
def map_45_148 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3797 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3797 : InImage map_45_148 image3797 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3797 : Bundle := named_bundle% "RealMapCertificates/relations/basis3797.json"
theorem reductionProof3797 : EqualModuloRelations reduction3797.relations reduction3797.input reduction3797.output := by lin_cert using reduction3797.terms
theorem substitutionProof3797 : IsMapEvaluation generatorImages reduction3797.relations [0,8,325] reduction3797.output := by lin_cert using reduction3797.terms
def map_45_149 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3875 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3875 : InImage map_45_149 image3875 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3875 : Bundle := named_bundle% "RealMapCertificates/relations/basis3875.json"
theorem reductionProof3875 : EqualModuloRelations reduction3875.relations reduction3875.input reduction3875.output := by lin_cert using reduction3875.terms
theorem substitutionProof3875 : IsMapEvaluation generatorImages reduction3875.relations [0,0,8,326] reduction3875.output := by lin_cert using reduction3875.terms
def map_45_151 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4075 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4075 : InImage map_45_151 image4075 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4075 : Bundle := named_bundle% "RealMapCertificates/relations/basis4075.json"
theorem reductionProof4075 : EqualModuloRelations reduction4075.relations reduction4075.input reduction4075.output := by lin_cert using reduction4075.terms
theorem substitutionProof4075 : IsMapEvaluation generatorImages reduction4075.relations [0,8,8,236] reduction4075.output := by lin_cert using reduction4075.terms
def map_45_152 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4147 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4147 : InImage map_45_152 image4147 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4147 : Bundle := named_bundle% "RealMapCertificates/relations/basis4147.json"
theorem reductionProof4147 : EqualModuloRelations reduction4147.relations reduction4147.input reduction4147.output := by lin_cert using reduction4147.terms
theorem substitutionProof4147 : IsMapEvaluation generatorImages reduction4147.relations [0,0,8,16,183] reduction4147.output := by lin_cert using reduction4147.terms
def map_45_156 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4475 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4475 : InImage map_45_156 image4475 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4475 : Bundle := named_bundle% "RealMapCertificates/relations/basis4475.json"
theorem reductionProof4475 : EqualModuloRelations reduction4475.relations reduction4475.input reduction4475.output := by lin_cert using reduction4475.terms
theorem substitutionProof4475 : IsMapEvaluation generatorImages reduction4475.relations [607] reduction4475.output := by lin_cert using reduction4475.terms
def image4476 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4476 : InImage map_45_156 image4476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4476 : Bundle := named_bundle% "RealMapCertificates/relations/basis4476.json"
theorem reductionProof4476 : EqualModuloRelations reduction4476.relations reduction4476.input reduction4476.output := by lin_cert using reduction4476.terms
theorem substitutionProof4476 : IsMapEvaluation generatorImages reduction4476.relations [606] reduction4476.output := by lin_cert using reduction4476.terms
def map_45_159 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4745 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4745 : InImage map_45_159 image4745 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4745 : Bundle := named_bundle% "RealMapCertificates/relations/basis4745.json"
theorem reductionProof4745 : EqualModuloRelations reduction4745.relations reduction4745.input reduction4745.output := by lin_cert using reduction4745.terms
theorem substitutionProof4745 : IsMapEvaluation generatorImages reduction4745.relations [634] reduction4745.output := by lin_cert using reduction4745.terms
def map_45_162 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5014 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5014 : InImage map_45_162 image5014 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5014 : Bundle := named_bundle% "RealMapCertificates/relations/basis5014.json"
theorem reductionProof5014 : EqualModuloRelations reduction5014.relations reduction5014.input reduction5014.output := by lin_cert using reduction5014.terms
theorem substitutionProof5014 : IsMapEvaluation generatorImages reduction5014.relations [8,498] reduction5014.output := by lin_cert using reduction5014.terms
def image5015 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5015 : InImage map_45_162 image5015 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5015 : Bundle := named_bundle% "RealMapCertificates/relations/basis5015.json"
theorem reductionProof5015 : EqualModuloRelations reduction5015.relations reduction5015.input reduction5015.output := by lin_cert using reduction5015.terms
theorem substitutionProof5015 : IsMapEvaluation generatorImages reduction5015.relations [0,0,0,635] reduction5015.output := by lin_cert using reduction5015.terms
def map_45_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5138 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5138 : InImage map_45_163 image5138 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5138 : Bundle := named_bundle% "RealMapCertificates/relations/basis5138.json"
theorem reductionProof5138 : EqualModuloRelations reduction5138.relations reduction5138.input reduction5138.output := by lin_cert using reduction5138.terms
theorem substitutionProof5138 : IsMapEvaluation generatorImages reduction5138.relations [0,0,0,0,636] reduction5138.output := by lin_cert using reduction5138.terms
def map_45_165 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image5317 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5317 : InImage map_45_165 image5317 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5317 : Bundle := named_bundle% "RealMapCertificates/relations/basis5317.json"
theorem reductionProof5317 : EqualModuloRelations reduction5317.relations reduction5317.input reduction5317.output := by lin_cert using reduction5317.terms
theorem substitutionProof5317 : IsMapEvaluation generatorImages reduction5317.relations [8,528] reduction5317.output := by lin_cert using reduction5317.terms
def image5318 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5318 : InImage map_45_165 image5318 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5318 : Bundle := named_bundle% "RealMapCertificates/relations/basis5318.json"
theorem reductionProof5318 : EqualModuloRelations reduction5318.relations reduction5318.input reduction5318.output := by lin_cert using reduction5318.terms
theorem substitutionProof5318 : IsMapEvaluation generatorImages reduction5318.relations [0,0,0,662] reduction5318.output := by lin_cert using reduction5318.terms
def map_45_168 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5632 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5632 : InImage map_45_168 image5632 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5632 : Bundle := named_bundle% "RealMapCertificates/relations/basis5632.json"
theorem reductionProof5632 : EqualModuloRelations reduction5632.relations reduction5632.input reduction5632.output := by lin_cert using reduction5632.terms
theorem substitutionProof5632 : IsMapEvaluation generatorImages reduction5632.relations [8,8,354] reduction5632.output := by lin_cert using reduction5632.terms
def map_45_169 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image5771 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5771 : InImage map_45_169 image5771 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5771 : Bundle := named_bundle% "RealMapCertificates/relations/basis5771.json"
theorem reductionProof5771 : EqualModuloRelations reduction5771.relations reduction5771.input reduction5771.output := by lin_cert using reduction5771.terms
theorem substitutionProof5771 : IsMapEvaluation generatorImages reduction5771.relations [0,0,0,0,0,685] reduction5771.output := by lin_cert using reduction5771.terms
def map_45_170 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5862 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5862 : InImage map_45_170 image5862 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5862 : Bundle := named_bundle% "RealMapCertificates/relations/basis5862.json"
theorem reductionProof5862 : EqualModuloRelations reduction5862.relations reduction5862.input reduction5862.output := by lin_cert using reduction5862.terms
theorem substitutionProof5862 : IsMapEvaluation generatorImages reduction5862.relations [0,0,0,0,0,17,403] reduction5862.output := by lin_cert using reduction5862.terms
def map_45_171 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image5978 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5978 : InImage map_45_171 image5978 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5978 : Bundle := named_bundle% "RealMapCertificates/relations/basis5978.json"
theorem reductionProof5978 : EqualModuloRelations reduction5978.relations reduction5978.input reduction5978.output := by lin_cert using reduction5978.terms
theorem substitutionProof5978 : IsMapEvaluation generatorImages reduction5978.relations [8,8,401] reduction5978.output := by lin_cert using reduction5978.terms
def image5979 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation5979 : InImage map_45_171 image5979 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5979 : Bundle := named_bundle% "RealMapCertificates/relations/basis5979.json"
theorem reductionProof5979 : EqualModuloRelations reduction5979.relations reduction5979.input reduction5979.output := by lin_cert using reduction5979.terms
theorem substitutionProof5979 : IsMapEvaluation generatorImages reduction5979.relations [0,0,0,0,0,0,0,686] reduction5979.output := by lin_cert using reduction5979.terms
def map_45_172 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6111 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6111 : InImage map_45_172 image6111 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6111 : Bundle := named_bundle% "RealMapCertificates/relations/basis6111.json"
theorem reductionProof6111 : EqualModuloRelations reduction6111.relations reduction6111.input reduction6111.output := by lin_cert using reduction6111.terms
theorem substitutionProof6111 : IsMapEvaluation generatorImages reduction6111.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6111.output := by lin_cert using reduction6111.terms
def map_45_174 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image6303 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation6303 : InImage map_45_174 image6303 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6303 : Bundle := named_bundle% "RealMapCertificates/relations/basis6303.json"
theorem reductionProof6303 : EqualModuloRelations reduction6303.relations reduction6303.input reduction6303.output := by lin_cert using reduction6303.terms
theorem substitutionProof6303 : IsMapEvaluation generatorImages reduction6303.relations [806] reduction6303.output := by lin_cert using reduction6303.terms
def image6304 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6304 : InImage map_45_174 image6304 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6304 : Bundle := named_bundle% "RealMapCertificates/relations/basis6304.json"
theorem reductionProof6304 : EqualModuloRelations reduction6304.relations reduction6304.input reduction6304.output := by lin_cert using reduction6304.terms
theorem substitutionProof6304 : IsMapEvaluation generatorImages reduction6304.relations [8,8,8,265] reduction6304.output := by lin_cert using reduction6304.terms
def map_45_177 : Matrix 5 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6662 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation6662 : InImage map_45_177 image6662 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6662 : Bundle := named_bundle% "RealMapCertificates/relations/basis6662.json"
theorem reductionProof6662 : EqualModuloRelations reduction6662.relations reduction6662.input reduction6662.output := by lin_cert using reduction6662.terms
theorem substitutionProof6662 : IsMapEvaluation generatorImages reduction6662.relations [8,636] reduction6662.output := by lin_cert using reduction6662.terms
def image6663 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6663 : InImage map_45_177 image6663 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6663 : Bundle := named_bundle% "RealMapCertificates/relations/basis6663.json"
theorem reductionProof6663 : EqualModuloRelations reduction6663.relations reduction6663.input reduction6663.output := by lin_cert using reduction6663.terms
theorem substitutionProof6663 : IsMapEvaluation generatorImages reduction6663.relations [8,8,8,283] reduction6663.output := by lin_cert using reduction6663.terms
def map_45_178 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6791 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6791 : InImage map_45_178 image6791 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6791 : Bundle := named_bundle% "RealMapCertificates/relations/basis6791.json"
theorem reductionProof6791 : EqualModuloRelations reduction6791.relations reduction6791.input reduction6791.output := by lin_cert using reduction6791.terms
theorem substitutionProof6791 : IsMapEvaluation generatorImages reduction6791.relations [5,685] reduction6791.output := by lin_cert using reduction6791.terms
def map_45_180 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7020 : InImage map_45_180 image7020 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7020 : Bundle := named_bundle% "RealMapCertificates/relations/basis7020.json"
theorem reductionProof7020 : EqualModuloRelations reduction7020.relations reduction7020.input reduction7020.output := by lin_cert using reduction7020.terms
theorem substitutionProof7020 : IsMapEvaluation generatorImages reduction7020.relations [8,663] reduction7020.output := by lin_cert using reduction7020.terms
def image7021 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7021 : InImage map_45_180 image7021 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7021 : Bundle := named_bundle% "RealMapCertificates/relations/basis7021.json"
theorem reductionProof7021 : EqualModuloRelations reduction7021.relations reduction7021.input reduction7021.output := by lin_cert using reduction7021.terms
theorem substitutionProof7021 : IsMapEvaluation generatorImages reduction7021.relations [8,8,8,8,211] reduction7021.output := by lin_cert using reduction7021.terms
def image7022 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7022 : InImage map_45_180 image7022 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7022 : Bundle := named_bundle% "RealMapCertificates/relations/basis7022.json"
theorem reductionProof7022 : EqualModuloRelations reduction7022.relations reduction7022.input reduction7022.output := by lin_cert using reduction7022.terms
theorem substitutionProof7022 : IsMapEvaluation generatorImages reduction7022.relations [0,871] reduction7022.output := by lin_cert using reduction7022.terms
def map_45_181 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image7168 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation7168 : InImage map_45_181 image7168 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7168 : Bundle := named_bundle% "RealMapCertificates/relations/basis7168.json"
theorem reductionProof7168 : EqualModuloRelations reduction7168.relations reduction7168.input reduction7168.output := by lin_cert using reduction7168.terms
theorem substitutionProof7168 : IsMapEvaluation generatorImages reduction7168.relations [0,17,556] reduction7168.output := by lin_cert using reduction7168.terms
def map_45_183 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image7385 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7385 : InImage map_45_183 image7385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7385 : Bundle := named_bundle% "RealMapCertificates/relations/basis7385.json"
theorem reductionProof7385 : EqualModuloRelations reduction7385.relations reduction7385.input reduction7385.output := by lin_cert using reduction7385.terms
theorem substitutionProof7385 : IsMapEvaluation generatorImages reduction7385.relations [8,16,403] reduction7385.output := by lin_cert using reduction7385.terms
def image7386 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7386 : InImage map_45_183 image7386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7386 : Bundle := named_bundle% "RealMapCertificates/relations/basis7386.json"
theorem reductionProof7386 : EqualModuloRelations reduction7386.relations reduction7386.input reduction7386.output := by lin_cert using reduction7386.terms
theorem substitutionProof7386 : IsMapEvaluation generatorImages reduction7386.relations [8,8,8,8,223] reduction7386.output := by lin_cert using reduction7386.terms
def image7387 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7387 : InImage map_45_183 image7387 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7387 : Bundle := named_bundle% "RealMapCertificates/relations/basis7387.json"
theorem reductionProof7387 : EqualModuloRelations reduction7387.relations reduction7387.input reduction7387.output := by lin_cert using reduction7387.terms
theorem substitutionProof7387 : IsMapEvaluation generatorImages reduction7387.relations [0,8,685] reduction7387.output := by lin_cert using reduction7387.terms
def map_45_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7522 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7522 : InImage map_45_184 image7522 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7522 : Bundle := named_bundle% "RealMapCertificates/relations/basis7522.json"
theorem reductionProof7522 : EqualModuloRelations reduction7522.relations reduction7522.input reduction7522.output := by lin_cert using reduction7522.terms
theorem substitutionProof7522 : IsMapEvaluation generatorImages reduction7522.relations [0,8,17,403] reduction7522.output := by lin_cert using reduction7522.terms
def map_45_186 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7746 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7746 : InImage map_45_186 image7746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7746 : Bundle := named_bundle% "RealMapCertificates/relations/basis7746.json"
theorem reductionProof7746 : EqualModuloRelations reduction7746.relations reduction7746.input reduction7746.output := by lin_cert using reduction7746.terms
theorem substitutionProof7746 : IsMapEvaluation generatorImages reduction7746.relations [8,8,556] reduction7746.output := by lin_cert using reduction7746.terms
def image7747 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7747 : InImage map_45_186 image7747 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7747 : Bundle := named_bundle% "RealMapCertificates/relations/basis7747.json"
theorem reductionProof7747 : EqualModuloRelations reduction7747.relations reduction7747.input reduction7747.output := by lin_cert using reduction7747.terms
theorem substitutionProof7747 : IsMapEvaluation generatorImages reduction7747.relations [8,8,8,8,8,161] reduction7747.output := by lin_cert using reduction7747.terms
def image7748 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7748 : InImage map_45_186 image7748 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7748 : Bundle := named_bundle% "RealMapCertificates/relations/basis7748.json"
theorem reductionProof7748 : EqualModuloRelations reduction7748.relations reduction7748.input reduction7748.output := by lin_cert using reduction7748.terms
theorem substitutionProof7748 : IsMapEvaluation generatorImages reduction7748.relations [0,0,0,0,0,0,0,0,0,0,0,0,807] reduction7748.output := by lin_cert using reduction7748.terms
def map_45_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7883 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7883 : InImage map_45_187 image7883 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7883 : Bundle := named_bundle% "RealMapCertificates/relations/basis7883.json"
theorem reductionProof7883 : EqualModuloRelations reduction7883.relations reduction7883.input reduction7883.output := by lin_cert using reduction7883.terms
theorem substitutionProof7883 : IsMapEvaluation generatorImages reduction7883.relations [0,8,17,433] reduction7883.output := by lin_cert using reduction7883.terms
def image7884 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7884 : InImage map_45_187 image7884 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7884 : Bundle := named_bundle% "RealMapCertificates/relations/basis7884.json"
theorem reductionProof7884 : EqualModuloRelations reduction7884.relations reduction7884.input reduction7884.output := by lin_cert using reduction7884.terms
theorem substitutionProof7884 : IsMapEvaluation generatorImages reduction7884.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,795] reduction7884.output := by lin_cert using reduction7884.terms
def map_45_188 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7958 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7958 : InImage map_45_188 image7958 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7958 : Bundle := named_bundle% "RealMapCertificates/relations/basis7958.json"
theorem reductionProof7958 : EqualModuloRelations reduction7958.relations reduction7958.input reduction7958.output := by lin_cert using reduction7958.terms
theorem substitutionProof7958 : IsMapEvaluation generatorImages reduction7958.relations [970] reduction7958.output := by lin_cert using reduction7958.terms
def map_45_189 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8099 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8099 : InImage map_45_189 image8099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8099 : Bundle := named_bundle% "RealMapCertificates/relations/basis8099.json"
theorem reductionProof8099 : EqualModuloRelations reduction8099.relations reduction8099.input reduction8099.output := by lin_cert using reduction8099.terms
theorem substitutionProof8099 : IsMapEvaluation generatorImages reduction8099.relations [8,8,8,403] reduction8099.output := by lin_cert using reduction8099.terms
def image8100 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation8100 : InImage map_45_189 image8100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8100 : Bundle := named_bundle% "RealMapCertificates/relations/basis8100.json"
theorem reductionProof8100 : EqualModuloRelations reduction8100.relations reduction8100.input reduction8100.output := by lin_cert using reduction8100.terms
theorem substitutionProof8100 : IsMapEvaluation generatorImages reduction8100.relations [8,8,8,8,8,171] reduction8100.output := by lin_cert using reduction8100.terms
def map_45_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8341 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8341 : InImage map_45_191 image8341 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8341 : Bundle := named_bundle% "RealMapCertificates/relations/basis8341.json"
theorem reductionProof8341 : EqualModuloRelations reduction8341.relations reduction8341.input reduction8341.output := by lin_cert using reduction8341.terms
theorem substitutionProof8341 : IsMapEvaluation generatorImages reduction8341.relations [1032] reduction8341.output := by lin_cert using reduction8341.terms
def map_45_192 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8471 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8471 : InImage map_45_192 image8471 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8471 : Bundle := named_bundle% "RealMapCertificates/relations/basis8471.json"
theorem reductionProof8471 : EqualModuloRelations reduction8471.relations reduction8471.input reduction8471.output := by lin_cert using reduction8471.terms
theorem substitutionProof8471 : IsMapEvaluation generatorImages reduction8471.relations [8,8,8,433] reduction8471.output := by lin_cert using reduction8471.terms
def image8472 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8472 : InImage map_45_192 image8472 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8472 : Bundle := named_bundle% "RealMapCertificates/relations/basis8472.json"
theorem reductionProof8472 : EqualModuloRelations reduction8472.relations reduction8472.input reduction8472.output := by lin_cert using reduction8472.terms
theorem substitutionProof8472 : IsMapEvaluation generatorImages reduction8472.relations [8,8,8,8,8,8,125] reduction8472.output := by lin_cert using reduction8472.terms
def map_45_194 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8714 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8714 : InImage map_45_194 image8714 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8714 : Bundle := named_bundle% "RealMapCertificates/relations/basis8714.json"
theorem reductionProof8714 : EqualModuloRelations reduction8714.relations reduction8714.input reduction8714.output := by lin_cert using reduction8714.terms
theorem substitutionProof8714 : IsMapEvaluation generatorImages reduction8714.relations [8,829] reduction8714.output := by lin_cert using reduction8714.terms
def image8715 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8715 : InImage map_45_194 image8715 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8715 : Bundle := named_bundle% "RealMapCertificates/relations/basis8715.json"
theorem reductionProof8715 : EqualModuloRelations reduction8715.relations reduction8715.input reduction8715.output := by lin_cert using reduction8715.terms
theorem substitutionProof8715 : IsMapEvaluation generatorImages reduction8715.relations [0,0,0,1033] reduction8715.output := by lin_cert using reduction8715.terms
def map_45_195 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8873 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8873 : InImage map_45_195 image8873 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8873 : Bundle := named_bundle% "RealMapCertificates/relations/basis8873.json"
theorem reductionProof8873 : EqualModuloRelations reduction8873.relations reduction8873.input reduction8873.output := by lin_cert using reduction8873.terms
theorem substitutionProof8873 : IsMapEvaluation generatorImages reduction8873.relations [8,8,8,16,225] reduction8873.output := by lin_cert using reduction8873.terms
def image8874 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8874 : InImage map_45_195 image8874 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8874 : Bundle := named_bundle% "RealMapCertificates/relations/basis8874.json"
theorem reductionProof8874 : EqualModuloRelations reduction8874.relations reduction8874.input reduction8874.output := by lin_cert using reduction8874.terms
theorem substitutionProof8874 : IsMapEvaluation generatorImages reduction8874.relations [8,8,8,8,8,8,136] reduction8874.output := by lin_cert using reduction8874.terms
def image8875 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8875 : InImage map_45_195 image8875 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8875 : Bundle := named_bundle% "RealMapCertificates/relations/basis8875.json"
theorem reductionProof8875 : EqualModuloRelations reduction8875.relations reduction8875.input reduction8875.output := by lin_cert using reduction8875.terms
theorem substitutionProof8875 : IsMapEvaluation generatorImages reduction8875.relations [0,0,1059] reduction8875.output := by lin_cert using reduction8875.terms
def map_45_197 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9143 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9143 : InImage map_45_197 image9143 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9143 : Bundle := named_bundle% "RealMapCertificates/relations/basis9143.json"
theorem reductionProof9143 : EqualModuloRelations reduction9143.relations reduction9143.input reduction9143.output := by lin_cert using reduction9143.terms
theorem substitutionProof9143 : IsMapEvaluation generatorImages reduction9143.relations [8,873] reduction9143.output := by lin_cert using reduction9143.terms
def image9144 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9144 : InImage map_45_197 image9144 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9144 : Bundle := named_bundle% "RealMapCertificates/relations/basis9144.json"
theorem reductionProof9144 : EqualModuloRelations reduction9144.relations reduction9144.input reduction9144.output := by lin_cert using reduction9144.terms
theorem substitutionProof9144 : IsMapEvaluation generatorImages reduction9144.relations [0,0,0,1076] reduction9144.output := by lin_cert using reduction9144.terms
def map_45_198 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image9311 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9311 : InImage map_45_198 image9311 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9311 : Bundle := named_bundle% "RealMapCertificates/relations/basis9311.json"
theorem reductionProof9311 : EqualModuloRelations reduction9311.relations reduction9311.input reduction9311.output := by lin_cert using reduction9311.terms
theorem substitutionProof9311 : IsMapEvaluation generatorImages reduction9311.relations [8,8,8,8,298] reduction9311.output := by lin_cert using reduction9311.terms
def image9312 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9312 : InImage map_45_198 image9312 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9312 : Bundle := named_bundle% "RealMapCertificates/relations/basis9312.json"
theorem reductionProof9312 : EqualModuloRelations reduction9312.relations reduction9312.input reduction9312.output := by lin_cert using reduction9312.terms
theorem substitutionProof9312 : IsMapEvaluation generatorImages reduction9312.relations [8,8,8,8,8,8,8,88] reduction9312.output := by lin_cert using reduction9312.terms
def map_45_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9483 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9483 : InImage map_45_199 image9483 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9483 : Bundle := named_bundle% "RealMapCertificates/relations/basis9483.json"
theorem reductionProof9483 : EqualModuloRelations reduction9483.relations reduction9483.input reduction9483.output := by lin_cert using reduction9483.terms
theorem substitutionProof9483 : IsMapEvaluation generatorImages reduction9483.relations [0,64,402] reduction9483.output := by lin_cert using reduction9483.terms
def map_45_200 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9605 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9605 : InImage map_45_200 image9605 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9605 : Bundle := named_bundle% "RealMapCertificates/relations/basis9605.json"
theorem reductionProof9605 : EqualModuloRelations reduction9605.relations reduction9605.input reduction9605.output := by lin_cert using reduction9605.terms
theorem substitutionProof9605 : IsMapEvaluation generatorImages reduction9605.relations [8,8,687] reduction9605.output := by lin_cert using reduction9605.terms
def image9606 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9606 : InImage map_45_200 image9606 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9606 : Bundle := named_bundle% "RealMapCertificates/relations/basis9606.json"
theorem reductionProof9606 : EqualModuloRelations reduction9606.relations reduction9606.input reduction9606.output := by lin_cert using reduction9606.terms
theorem substitutionProof9606 : IsMapEvaluation generatorImages reduction9606.relations [1,64,402] reduction9606.output := by lin_cert using reduction9606.terms
def image9607 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9607 : InImage map_45_200 image9607 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9607 : Bundle := named_bundle% "RealMapCertificates/relations/basis9607.json"
theorem reductionProof9607 : EqualModuloRelations reduction9607.relations reduction9607.input reduction9607.output := by lin_cert using reduction9607.terms
theorem substitutionProof9607 : IsMapEvaluation generatorImages reduction9607.relations [0,0,64,403] reduction9607.output := by lin_cert using reduction9607.terms
end RealMapCertificates
