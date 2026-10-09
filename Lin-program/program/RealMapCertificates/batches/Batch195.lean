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
  | 42 => [[5,5,7]]
  | 46 => [[5,7,7]]
  | 51 => [[7,7,7]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 63 => [[4,5,7,7]]
  | 64 => []
  | 80 => []
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 127 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 193 => [[5,5,7,12]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 257 => [[4,4,6,8,12]]
  | 259 => [[4,5,7,7,12]]
  | 260 => []
  | 315 => [[4,4,5,5,7,12]]
  | 345 => [[4,4,5,7,7,12]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 665 => [[0,0,4,5,8,12,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 808 => [[0,0,4,4,5,8,12,12]]
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 1143 => []
  | 1144 => [[0,0,4,4,4,4,5,8,12,12]]
  | 1219 => [[4,4,4,7,7,7,12,12]]
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1363 => [[0,0,4,4,4,4,4,5,8,12,12]]
  | 1399 => []
  | 1438 => [[4,4,4,4,7,7,7,12,12]]
  | 1501 => [[4,4,4,5,5,5,9,12,12]]
  | 1650 => []
  | 1651 => [[4,4,4,4,4,7,7,7,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1718 => [[4,4,4,4,5,5,5,9,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1750 => []
  | _ => []
def map_45_201 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9800 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9800 : InImage map_45_201 image9800 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9800 : Bundle := named_bundle% "RealMapCertificates/relations/basis9800.json"
theorem reductionProof9800 : EqualModuloRelations reduction9800.relations reduction9800.input reduction9800.output := by lin_cert using reduction9800.terms
theorem substitutionProof9800 : IsMapEvaluation generatorImages reduction9800.relations [8,8,8,8,8,225] reduction9800.output := by lin_cert using reduction9800.terms
def image9801 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9801 : InImage map_45_201 image9801 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9801 : Bundle := named_bundle% "RealMapCertificates/relations/basis9801.json"
theorem reductionProof9801 : EqualModuloRelations reduction9801.relations reduction9801.input reduction9801.output := by lin_cert using reduction9801.terms
theorem substitutionProof9801 : IsMapEvaluation generatorImages reduction9801.relations [8,8,8,8,8,8,8,100] reduction9801.output := by lin_cert using reduction9801.terms
def image9802 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9802 : InImage map_45_201 image9802 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9802 : Bundle := named_bundle% "RealMapCertificates/relations/basis9802.json"
theorem reductionProof9802 : EqualModuloRelations reduction9802.relations reduction9802.input reduction9802.output := by lin_cert using reduction9802.terms
theorem substitutionProof9802 : IsMapEvaluation generatorImages reduction9802.relations [0,0,0,0,17,725] reduction9802.output := by lin_cert using reduction9802.terms
def map_45_202 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9959 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9959 : InImage map_45_202 image9959 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9959 : Bundle := named_bundle% "RealMapCertificates/relations/basis9959.json"
theorem reductionProof9959 : EqualModuloRelations reduction9959.relations reduction9959.input reduction9959.output := by lin_cert using reduction9959.terms
theorem substitutionProof9959 : IsMapEvaluation generatorImages reduction9959.relations [0,64,432] reduction9959.output := by lin_cert using reduction9959.terms
def image9960 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9960 : InImage map_45_202 image9960 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9960 : Bundle := named_bundle% "RealMapCertificates/relations/basis9960.json"
theorem reductionProof9960 : EqualModuloRelations reduction9960.relations reduction9960.input reduction9960.output := by lin_cert using reduction9960.terms
theorem substitutionProof9960 : IsMapEvaluation generatorImages reduction9960.relations [0,0,0,0,1143] reduction9960.output := by lin_cert using reduction9960.terms
def map_45_203 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image10101 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10101 : InImage map_45_203 image10101 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10101 : Bundle := named_bundle% "RealMapCertificates/relations/basis10101.json"
theorem reductionProof10101 : EqualModuloRelations reduction10101.relations reduction10101.input reduction10101.output := by lin_cert using reduction10101.terms
theorem substitutionProof10101 : IsMapEvaluation generatorImages reduction10101.relations [8,8,724] reduction10101.output := by lin_cert using reduction10101.terms
def image10102 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10102 : InImage map_45_203 image10102 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10102 : Bundle := named_bundle% "RealMapCertificates/relations/basis10102.json"
theorem reductionProof10102 : EqualModuloRelations reduction10102.relations reduction10102.input reduction10102.output := by lin_cert using reduction10102.terms
theorem substitutionProof10102 : IsMapEvaluation generatorImages reduction10102.relations [0,0,64,433] reduction10102.output := by lin_cert using reduction10102.terms
def map_45_204 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image10294 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10294 : InImage map_45_204 image10294 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10294 : Bundle := named_bundle% "RealMapCertificates/relations/basis10294.json"
theorem reductionProof10294 : EqualModuloRelations reduction10294.relations reduction10294.input reduction10294.output := by lin_cert using reduction10294.terms
theorem substitutionProof10294 : IsMapEvaluation generatorImages reduction10294.relations [8,8,8,8,8,238] reduction10294.output := by lin_cert using reduction10294.terms
def image10295 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10295 : InImage map_45_204 image10295 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10295 : Bundle := named_bundle% "RealMapCertificates/relations/basis10295.json"
theorem reductionProof10295 : EqualModuloRelations reduction10295.relations reduction10295.input reduction10295.output := by lin_cert using reduction10295.terms
theorem substitutionProof10295 : IsMapEvaluation generatorImages reduction10295.relations [8,8,8,8,8,8,8,8,60] reduction10295.output := by lin_cert using reduction10295.terms
def map_45_205 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image10481 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10481 : InImage map_45_205 image10481 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10481 : Bundle := named_bundle% "RealMapCertificates/relations/basis10481.json"
theorem reductionProof10481 : EqualModuloRelations reduction10481.relations reduction10481.input reduction10481.output := by lin_cert using reduction10481.terms
theorem substitutionProof10481 : IsMapEvaluation generatorImages reduction10481.relations [0,16,64,224] reduction10481.output := by lin_cert using reduction10481.terms
def map_45_206 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10625 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10625 : InImage map_45_206 image10625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10625 : Bundle := named_bundle% "RealMapCertificates/relations/basis10625.json"
theorem reductionProof10625 : EqualModuloRelations reduction10625.relations reduction10625.input reduction10625.output := by lin_cert using reduction10625.terms
theorem substitutionProof10625 : IsMapEvaluation generatorImages reduction10625.relations [8,8,8,572] reduction10625.output := by lin_cert using reduction10625.terms
def image10626 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10626 : InImage map_45_206 image10626 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10626 : Bundle := named_bundle% "RealMapCertificates/relations/basis10626.json"
theorem reductionProof10626 : EqualModuloRelations reduction10626.relations reduction10626.input reduction10626.output := by lin_cert using reduction10626.terms
theorem substitutionProof10626 : IsMapEvaluation generatorImages reduction10626.relations [0,0,16,64,225] reduction10626.output := by lin_cert using reduction10626.terms
def image10627 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10627 : InImage map_45_206 image10627 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10627 : Bundle := named_bundle% "RealMapCertificates/relations/basis10627.json"
theorem reductionProof10627 : EqualModuloRelations reduction10627.relations reduction10627.input reduction10627.output := by lin_cert using reduction10627.terms
theorem substitutionProof10627 : IsMapEvaluation generatorImages reduction10627.relations [0,0,0,64,452] reduction10627.output := by lin_cert using reduction10627.terms
def map_45_207 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10846 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10846 : InImage map_45_207 image10846 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10846 : Bundle := named_bundle% "RealMapCertificates/relations/basis10846.json"
theorem reductionProof10846 : EqualModuloRelations reduction10846.relations reduction10846.input reduction10846.output := by lin_cert using reduction10846.terms
theorem substitutionProof10846 : IsMapEvaluation generatorImages reduction10846.relations [8,8,8,8,8,16,138] reduction10846.output := by lin_cert using reduction10846.terms
def image10847 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10847 : InImage map_45_207 image10847 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10847 : Bundle := named_bundle% "RealMapCertificates/relations/basis10847.json"
theorem reductionProof10847 : EqualModuloRelations reduction10847.relations reduction10847.input reduction10847.output := by lin_cert using reduction10847.terms
theorem substitutionProof10847 : IsMapEvaluation generatorImages reduction10847.relations [8,8,8,8,8,8,8,8,63] reduction10847.output := by lin_cert using reduction10847.terms
def image10848 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10848 : InImage map_45_207 image10848 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10848 : Bundle := named_bundle% "RealMapCertificates/relations/basis10848.json"
theorem reductionProof10848 : EqualModuloRelations reduction10848.relations reduction10848.input reduction10848.output := by lin_cert using reduction10848.terms
theorem substitutionProof10848 : IsMapEvaluation generatorImages reduction10848.relations [0,0,0,0,138,244] reduction10848.output := by lin_cert using reduction10848.terms
def map_45_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11002 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11002 : InImage map_45_208 image11002 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11002 : Bundle := named_bundle% "RealMapCertificates/relations/basis11002.json"
theorem reductionProof11002 : EqualModuloRelations reduction11002.relations reduction11002.input reduction11002.output := by lin_cert using reduction11002.terms
theorem substitutionProof11002 : IsMapEvaluation generatorImages reduction11002.relations [0,0,0,0,0,17,17,491] reduction11002.output := by lin_cert using reduction11002.terms
def map_45_209 : Matrix 4 3 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11158 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11158 : InImage map_45_209 image11158 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11158 : Bundle := named_bundle% "RealMapCertificates/relations/basis11158.json"
theorem reductionProof11158 : EqualModuloRelations reduction11158.relations reduction11158.input reduction11158.output := by lin_cert using reduction11158.terms
theorem substitutionProof11158 : IsMapEvaluation generatorImages reduction11158.relations [8,8,8,597] reduction11158.output := by lin_cert using reduction11158.terms
def image11159 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11159 : InImage map_45_209 image11159 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11159 : Bundle := named_bundle% "RealMapCertificates/relations/basis11159.json"
theorem reductionProof11159 : EqualModuloRelations reduction11159.relations reduction11159.input reduction11159.output := by lin_cert using reduction11159.terms
theorem substitutionProof11159 : IsMapEvaluation generatorImages reduction11159.relations [0,0,0,0,0,0,137,246] reduction11159.output := by lin_cert using reduction11159.terms
def image11160 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11160 : InImage map_45_209 image11160 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11160 : Bundle := named_bundle% "RealMapCertificates/relations/basis11160.json"
theorem reductionProof11160 : EqualModuloRelations reduction11160.relations reduction11160.input reduction11160.output := by lin_cert using reduction11160.terms
theorem substitutionProof11160 : IsMapEvaluation generatorImages reduction11160.relations [0,0,0,0,0,0,59,491] reduction11160.output := by lin_cert using reduction11160.terms
def map_45_210 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image11352 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation11352 : InImage map_45_210 image11352 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11352 : Bundle := named_bundle% "RealMapCertificates/relations/basis11352.json"
theorem reductionProof11352 : EqualModuloRelations reduction11352.relations reduction11352.input reduction11352.output := by lin_cert using reduction11352.terms
theorem substitutionProof11352 : IsMapEvaluation generatorImages reduction11352.relations [1363] reduction11352.output := by lin_cert using reduction11352.terms
def image11353 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11353 : InImage map_45_210 image11353 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11353 : Bundle := named_bundle% "RealMapCertificates/relations/basis11353.json"
theorem reductionProof11353 : EqualModuloRelations reduction11353.relations reduction11353.input reduction11353.output := by lin_cert using reduction11353.terms
theorem substitutionProof11353 : IsMapEvaluation generatorImages reduction11353.relations [8,8,8,8,8,8,185] reduction11353.output := by lin_cert using reduction11353.terms
def image11354 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11354 : InImage map_45_210 image11354 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11354 : Bundle := named_bundle% "RealMapCertificates/relations/basis11354.json"
theorem reductionProof11354 : EqualModuloRelations reduction11354.relations reduction11354.input reduction11354.output := by lin_cert using reduction11354.terms
theorem substitutionProof11354 : IsMapEvaluation generatorImages reduction11354.relations [8,8,8,8,8,8,8,8,8,42] reduction11354.output := by lin_cert using reduction11354.terms
def map_45_212 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11689 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11689 : InImage map_45_212 image11689 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11689 : Bundle := named_bundle% "RealMapCertificates/relations/basis11689.json"
theorem reductionProof11689 : EqualModuloRelations reduction11689.relations reduction11689.input reduction11689.output := by lin_cert using reduction11689.terms
theorem substitutionProof11689 : IsMapEvaluation generatorImages reduction11689.relations [17,896] reduction11689.output := by lin_cert using reduction11689.terms
def image11690 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11690 : InImage map_45_212 image11690 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11690 : Bundle := named_bundle% "RealMapCertificates/relations/basis11690.json"
theorem reductionProof11690 : EqualModuloRelations reduction11690.relations reduction11690.input reduction11690.output := by lin_cert using reduction11690.terms
theorem substitutionProof11690 : IsMapEvaluation generatorImages reduction11690.relations [8,8,8,8,453] reduction11690.output := by lin_cert using reduction11690.terms
def map_45_213 : Matrix 4 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image11933 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation11933 : InImage map_45_213 image11933 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction11933 : Bundle := named_bundle% "RealMapCertificates/relations/basis11933.json"
theorem reductionProof11933 : EqualModuloRelations reduction11933.relations reduction11933.input reduction11933.output := by lin_cert using reduction11933.terms
theorem substitutionProof11933 : IsMapEvaluation generatorImages reduction11933.relations [17,918] reduction11933.output := by lin_cert using reduction11933.terms
def image11934 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11934 : InImage map_45_213 image11934 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction11934 : Bundle := named_bundle% "RealMapCertificates/relations/basis11934.json"
theorem reductionProof11934 : EqualModuloRelations reduction11934.relations reduction11934.input reduction11934.output := by lin_cert using reduction11934.terms
theorem substitutionProof11934 : IsMapEvaluation generatorImages reduction11934.relations [8,8,8,8,8,8,8,138] reduction11934.output := by lin_cert using reduction11934.terms
def image11935 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11935 : InImage map_45_213 image11935 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction11935 : Bundle := named_bundle% "RealMapCertificates/relations/basis11935.json"
theorem reductionProof11935 : EqualModuloRelations reduction11935.relations reduction11935.input reduction11935.output := by lin_cert using reduction11935.terms
theorem substitutionProof11935 : IsMapEvaluation generatorImages reduction11935.relations [8,8,8,8,8,8,8,8,8,46] reduction11935.output := by lin_cert using reduction11935.terms
def image11936 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11936 : InImage map_45_213 image11936 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction11936 : Bundle := named_bundle% "RealMapCertificates/relations/basis11936.json"
theorem reductionProof11936 : EqualModuloRelations reduction11936.relations reduction11936.input reduction11936.output := by lin_cert using reduction11936.terms
theorem substitutionProof11936 : IsMapEvaluation generatorImages reduction11936.relations [0,1399] reduction11936.output := by lin_cert using reduction11936.terms
def image11937 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11937 : InImage map_45_213 image11937 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction11937 : Bundle := named_bundle% "RealMapCertificates/relations/basis11937.json"
theorem reductionProof11937 : EqualModuloRelations reduction11937.relations reduction11937.input reduction11937.output := by lin_cert using reduction11937.terms
theorem substitutionProof11937 : IsMapEvaluation generatorImages reduction11937.relations [0,0,0,0,0,149,244] reduction11937.output := by lin_cert using reduction11937.terms
def map_45_214 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image12128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12128 : InImage map_45_214 image12128 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12128 : Bundle := named_bundle% "RealMapCertificates/relations/basis12128.json"
theorem reductionProof12128 : EqualModuloRelations reduction12128.relations reduction12128.input reduction12128.output := by lin_cert using reduction12128.terms
theorem substitutionProof12128 : IsMapEvaluation generatorImages reduction12128.relations [0,0,0,0,0,0,1335] reduction12128.output := by lin_cert using reduction12128.terms
def map_45_215 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image12293 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12293 : InImage map_45_215 image12293 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12293 : Bundle := named_bundle% "RealMapCertificates/relations/basis12293.json"
theorem reductionProof12293 : EqualModuloRelations reduction12293.relations reduction12293.input reduction12293.output := by lin_cert using reduction12293.terms
theorem substitutionProof12293 : IsMapEvaluation generatorImages reduction12293.relations [8,17,725] reduction12293.output := by lin_cert using reduction12293.terms
def image12294 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12294 : InImage map_45_215 image12294 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12294 : Bundle := named_bundle% "RealMapCertificates/relations/basis12294.json"
theorem reductionProof12294 : EqualModuloRelations reduction12294.relations reduction12294.input reduction12294.output := by lin_cert using reduction12294.terms
theorem substitutionProof12294 : IsMapEvaluation generatorImages reduction12294.relations [8,8,8,8,490] reduction12294.output := by lin_cert using reduction12294.terms
def map_45_216 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12500 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12500 : InImage map_45_216 image12500 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12500 : Bundle := named_bundle% "RealMapCertificates/relations/basis12500.json"
theorem reductionProof12500 : EqualModuloRelations reduction12500.relations reduction12500.input reduction12500.output := by lin_cert using reduction12500.terms
theorem substitutionProof12500 : IsMapEvaluation generatorImages reduction12500.relations [8,1144] reduction12500.output := by lin_cert using reduction12500.terms
def image12501 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12501 : InImage map_45_216 image12501 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12501 : Bundle := named_bundle% "RealMapCertificates/relations/basis12501.json"
theorem reductionProof12501 : EqualModuloRelations reduction12501.relations reduction12501.input reduction12501.output := by lin_cert using reduction12501.terms
theorem substitutionProof12501 : IsMapEvaluation generatorImages reduction12501.relations [8,8,8,8,8,8,8,147] reduction12501.output := by lin_cert using reduction12501.terms
def image12502 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12502 : InImage map_45_216 image12502 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12502 : Bundle := named_bundle% "RealMapCertificates/relations/basis12502.json"
theorem reductionProof12502 : EqualModuloRelations reduction12502.relations reduction12502.input reduction12502.output := by lin_cert using reduction12502.terms
theorem substitutionProof12502 : IsMapEvaluation generatorImages reduction12502.relations [8,8,8,8,8,8,8,8,8,51] reduction12502.output := by lin_cert using reduction12502.terms
def map_45_218 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image12843 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12843 : InImage map_45_218 image12843 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12843 : Bundle := named_bundle% "RealMapCertificates/relations/basis12843.json"
theorem reductionProof12843 : EqualModuloRelations reduction12843.relations reduction12843.input reduction12843.output := by lin_cert using reduction12843.terms
theorem substitutionProof12843 : IsMapEvaluation generatorImages reduction12843.relations [113,452] reduction12843.output := by lin_cert using reduction12843.terms
def image12844 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12844 : InImage map_45_218 image12844 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12844 : Bundle := named_bundle% "RealMapCertificates/relations/basis12844.json"
theorem reductionProof12844 : EqualModuloRelations reduction12844.relations reduction12844.input reduction12844.output := by lin_cert using reduction12844.terms
theorem substitutionProof12844 : IsMapEvaluation generatorImages reduction12844.relations [8,17,759] reduction12844.output := by lin_cert using reduction12844.terms
def image12845 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12845 : InImage map_45_218 image12845 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12845 : Bundle := named_bundle% "RealMapCertificates/relations/basis12845.json"
theorem reductionProof12845 : EqualModuloRelations reduction12845.relations reduction12845.input reduction12845.output := by lin_cert using reduction12845.terms
theorem substitutionProof12845 : IsMapEvaluation generatorImages reduction12845.relations [8,8,8,8,8,315] reduction12845.output := by lin_cert using reduction12845.terms
def map_45_219 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13087 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13087 : InImage map_45_219 image13087 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13087 : Bundle := named_bundle% "RealMapCertificates/relations/basis13087.json"
theorem reductionProof13087 : EqualModuloRelations reduction13087.relations reduction13087.input reduction13087.output := by lin_cert using reduction13087.terms
theorem substitutionProof13087 : IsMapEvaluation generatorImages reduction13087.relations [8,17,778] reduction13087.output := by lin_cert using reduction13087.terms
def image13088 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13088 : InImage map_45_219 image13088 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13088 : Bundle := named_bundle% "RealMapCertificates/relations/basis13088.json"
theorem reductionProof13088 : EqualModuloRelations reduction13088.relations reduction13088.input reduction13088.output := by lin_cert using reduction13088.terms
theorem substitutionProof13088 : IsMapEvaluation generatorImages reduction13088.relations [8,8,8,8,8,8,8,17,64] reduction13088.output := by lin_cert using reduction13088.terms
def image13089 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13089 : InImage map_45_219 image13089 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13089 : Bundle := named_bundle% "RealMapCertificates/relations/basis13089.json"
theorem reductionProof13089 : EqualModuloRelations reduction13089.relations reduction13089.input reduction13089.output := by lin_cert using reduction13089.terms
theorem substitutionProof13089 : IsMapEvaluation generatorImages reduction13089.relations [8,8,8,8,8,8,8,8,9,51] reduction13089.output := by lin_cert using reduction13089.terms
def image13090 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13090 : InImage map_45_219 image13090 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13090 : Bundle := named_bundle% "RealMapCertificates/relations/basis13090.json"
theorem reductionProof13090 : EqualModuloRelations reduction13090.relations reduction13090.input reduction13090.output := by lin_cert using reduction13090.terms
theorem substitutionProof13090 : IsMapEvaluation generatorImages reduction13090.relations [0,17,17,623] reduction13090.output := by lin_cert using reduction13090.terms
def map_45_221 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13416 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13416 : InImage map_45_221 image13416 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13416 : Bundle := named_bundle% "RealMapCertificates/relations/basis13416.json"
theorem reductionProof13416 : EqualModuloRelations reduction13416.relations reduction13416.input reduction13416.output := by lin_cert using reduction13416.terms
theorem substitutionProof13416 : IsMapEvaluation generatorImages reduction13416.relations [8,138,244] reduction13416.output := by lin_cert using reduction13416.terms
def image13417 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13417 : InImage map_45_221 image13417 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13417 : Bundle := named_bundle% "RealMapCertificates/relations/basis13417.json"
theorem reductionProof13417 : EqualModuloRelations reduction13417.relations reduction13417.input reduction13417.output := by lin_cert using reduction13417.terms
theorem substitutionProof13417 : IsMapEvaluation generatorImages reduction13417.relations [8,16,17,491] reduction13417.output := by lin_cert using reduction13417.terms
def image13418 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13418 : InImage map_45_221 image13418 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13418 : Bundle := named_bundle% "RealMapCertificates/relations/basis13418.json"
theorem reductionProof13418 : EqualModuloRelations reduction13418.relations reduction13418.input reduction13418.output := by lin_cert using reduction13418.terms
theorem substitutionProof13418 : IsMapEvaluation generatorImages reduction13418.relations [8,8,8,8,8,345] reduction13418.output := by lin_cert using reduction13418.terms
def map_45_222 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13639 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13639 : InImage map_45_222 image13639 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13639 : Bundle := named_bundle% "RealMapCertificates/relations/basis13639.json"
theorem reductionProof13639 : EqualModuloRelations reduction13639.relations reduction13639.input reduction13639.output := by lin_cert using reduction13639.terms
theorem substitutionProof13639 : IsMapEvaluation generatorImages reduction13639.relations [8,8,955] reduction13639.output := by lin_cert using reduction13639.terms
def image13640 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13640 : InImage map_45_222 image13640 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13640 : Bundle := named_bundle% "RealMapCertificates/relations/basis13640.json"
theorem reductionProof13640 : EqualModuloRelations reduction13640.relations reduction13640.input reduction13640.output := by lin_cert using reduction13640.terms
theorem substitutionProof13640 : IsMapEvaluation generatorImages reduction13640.relations [8,8,8,8,8,8,8,8,113] reduction13640.output := by lin_cert using reduction13640.terms
def image13641 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13641 : InImage map_45_222 image13641 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13641 : Bundle := named_bundle% "RealMapCertificates/relations/basis13641.json"
theorem reductionProof13641 : EqualModuloRelations reduction13641.relations reduction13641.input reduction13641.output := by lin_cert using reduction13641.terms
theorem substitutionProof13641 : IsMapEvaluation generatorImages reduction13641.relations [8,8,8,8,8,8,8,8,13,51] reduction13641.output := by lin_cert using reduction13641.terms
def image13642 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13642 : InImage map_45_222 image13642 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13642 : Bundle := named_bundle% "RealMapCertificates/relations/basis13642.json"
theorem reductionProof13642 : EqualModuloRelations reduction13642.relations reduction13642.input reduction13642.output := by lin_cert using reduction13642.terms
theorem substitutionProof13642 : IsMapEvaluation generatorImages reduction13642.relations [5,149,244] reduction13642.output := by lin_cert using reduction13642.terms
def map_45_224 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13969 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13969 : InImage map_45_224 image13969 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13969 : Bundle := named_bundle% "RealMapCertificates/relations/basis13969.json"
theorem reductionProof13969 : EqualModuloRelations reduction13969.relations reduction13969.input reduction13969.output := by lin_cert using reduction13969.terms
theorem substitutionProof13969 : IsMapEvaluation generatorImages reduction13969.relations [8,138,257] reduction13969.output := by lin_cert using reduction13969.terms
def image13970 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13970 : InImage map_45_224 image13970 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13970 : Bundle := named_bundle% "RealMapCertificates/relations/basis13970.json"
theorem reductionProof13970 : EqualModuloRelations reduction13970.relations reduction13970.input reduction13970.output := by lin_cert using reduction13970.terms
theorem substitutionProof13970 : IsMapEvaluation generatorImages reduction13970.relations [8,8,17,623] reduction13970.output := by lin_cert using reduction13970.terms
def image13971 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13971 : InImage map_45_224 image13971 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13971 : Bundle := named_bundle% "RealMapCertificates/relations/basis13971.json"
theorem reductionProof13971 : EqualModuloRelations reduction13971.relations reduction13971.input reduction13971.output := by lin_cert using reduction13971.terms
theorem substitutionProof13971 : IsMapEvaluation generatorImages reduction13971.relations [8,8,8,8,8,8,247] reduction13971.output := by lin_cert using reduction13971.terms
def map_45_225 : Matrix 3 3 := fun i j => ([false,true,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14210 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14210 : InImage map_45_225 image14210 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14210 : Bundle := named_bundle% "RealMapCertificates/relations/basis14210.json"
theorem reductionProof14210 : EqualModuloRelations reduction14210.relations reduction14210.input reduction14210.output := by lin_cert using reduction14210.terms
theorem substitutionProof14210 : IsMapEvaluation generatorImages reduction14210.relations [8,8,17,637] reduction14210.output := by lin_cert using reduction14210.terms
def image14211 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14211 : InImage map_45_225 image14211 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14211 : Bundle := named_bundle% "RealMapCertificates/relations/basis14211.json"
theorem reductionProof14211 : EqualModuloRelations reduction14211.relations reduction14211.input reduction14211.output := by lin_cert using reduction14211.terms
theorem substitutionProof14211 : IsMapEvaluation generatorImages reduction14211.relations [8,8,8,8,8,8,8,9,13,51] reduction14211.output := by lin_cert using reduction14211.terms
def image14212 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14212 : InImage map_45_225 image14212 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14212 : Bundle := named_bundle% "RealMapCertificates/relations/basis14212.json"
theorem reductionProof14212 : EqualModuloRelations reduction14212.relations reduction14212.input reduction14212.output := by lin_cert using reduction14212.terms
theorem substitutionProof14212 : IsMapEvaluation generatorImages reduction14212.relations [8,8,8,8,8,8,8,8,118] reduction14212.output := by lin_cert using reduction14212.terms
def map_45_226 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image14375 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14375 : InImage map_45_226 image14375 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14375 : Bundle := named_bundle% "RealMapCertificates/relations/basis14375.json"
theorem reductionProof14375 : EqualModuloRelations reduction14375.relations reduction14375.input reduction14375.output := by lin_cert using reduction14375.terms
theorem substitutionProof14375 : IsMapEvaluation generatorImages reduction14375.relations [1651] reduction14375.output := by lin_cert using reduction14375.terms
def image14376 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14376 : InImage map_45_226 image14376 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14376 : Bundle := named_bundle% "RealMapCertificates/relations/basis14376.json"
theorem reductionProof14376 : EqualModuloRelations reduction14376.relations reduction14376.input reduction14376.output := by lin_cert using reduction14376.terms
theorem substitutionProof14376 : IsMapEvaluation generatorImages reduction14376.relations [1650] reduction14376.output := by lin_cert using reduction14376.terms
def map_45_227 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image14545 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14545 : InImage map_45_227 image14545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14545 : Bundle := named_bundle% "RealMapCertificates/relations/basis14545.json"
theorem reductionProof14545 : EqualModuloRelations reduction14545.relations reduction14545.input reduction14545.output := by lin_cert using reduction14545.terms
theorem substitutionProof14545 : IsMapEvaluation generatorImages reduction14545.relations [8,16,138,149] reduction14545.output := by lin_cert using reduction14545.terms
def image14546 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14546 : InImage map_45_227 image14546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14546 : Bundle := named_bundle% "RealMapCertificates/relations/basis14546.json"
theorem reductionProof14546 : EqualModuloRelations reduction14546.relations reduction14546.input reduction14546.output := by lin_cert using reduction14546.terms
theorem substitutionProof14546 : IsMapEvaluation generatorImages reduction14546.relations [8,8,8,17,491] reduction14546.output := by lin_cert using reduction14546.terms
def image14547 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14547 : InImage map_45_227 image14547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14547 : Bundle := named_bundle% "RealMapCertificates/relations/basis14547.json"
theorem reductionProof14547 : EqualModuloRelations reduction14547.relations reduction14547.input reduction14547.output := by lin_cert using reduction14547.terms
theorem substitutionProof14547 : IsMapEvaluation generatorImages reduction14547.relations [8,8,8,8,8,8,259] reduction14547.output := by lin_cert using reduction14547.terms
def map_45_228 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14778 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14778 : InImage map_45_228 image14778 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14778 : Bundle := named_bundle% "RealMapCertificates/relations/basis14778.json"
theorem reductionProof14778 : EqualModuloRelations reduction14778.relations reduction14778.input reduction14778.output := by lin_cert using reduction14778.terms
theorem substitutionProof14778 : IsMapEvaluation generatorImages reduction14778.relations [8,8,8,808] reduction14778.output := by lin_cert using reduction14778.terms
def image14779 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14779 : InImage map_45_228 image14779 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14779 : Bundle := named_bundle% "RealMapCertificates/relations/basis14779.json"
theorem reductionProof14779 : EqualModuloRelations reduction14779.relations reduction14779.input reduction14779.output := by lin_cert using reduction14779.terms
theorem substitutionProof14779 : IsMapEvaluation generatorImages reduction14779.relations [8,8,8,8,8,8,8,13,13,51] reduction14779.output := by lin_cert using reduction14779.terms
def image14780 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14780 : InImage map_45_228 image14780 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14780 : Bundle := named_bundle% "RealMapCertificates/relations/basis14780.json"
theorem reductionProof14780 : EqualModuloRelations reduction14780.relations reduction14780.input reduction14780.output := by lin_cert using reduction14780.terms
theorem substitutionProof14780 : IsMapEvaluation generatorImages reduction14780.relations [8,8,8,8,8,8,8,8,127] reduction14780.output := by lin_cert using reduction14780.terms
def map_45_229 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image14977 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14977 : InImage map_45_229 image14977 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14977 : Bundle := named_bundle% "RealMapCertificates/relations/basis14977.json"
theorem reductionProof14977 : EqualModuloRelations reduction14977.relations reduction14977.input reduction14977.output := by lin_cert using reduction14977.terms
theorem substitutionProof14977 : IsMapEvaluation generatorImages reduction14977.relations [1718] reduction14977.output := by lin_cert using reduction14977.terms
def map_45_230 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image15138 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15138 : InImage map_45_230 image15138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15138 : Bundle := named_bundle% "RealMapCertificates/relations/basis15138.json"
theorem reductionProof15138 : EqualModuloRelations reduction15138.relations reduction15138.input reduction15138.output := by lin_cert using reduction15138.terms
theorem substitutionProof15138 : IsMapEvaluation generatorImages reduction15138.relations [8,8,113,244] reduction15138.output := by lin_cert using reduction15138.terms
def image15139 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15139 : InImage map_45_230 image15139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15139 : Bundle := named_bundle% "RealMapCertificates/relations/basis15139.json"
theorem reductionProof15139 : EqualModuloRelations reduction15139.relations reduction15139.input reduction15139.output := by lin_cert using reduction15139.terms
theorem substitutionProof15139 : IsMapEvaluation generatorImages reduction15139.relations [8,8,8,17,516] reduction15139.output := by lin_cert using reduction15139.terms
def image15140 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15140 : InImage map_45_230 image15140 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15140 : Bundle := named_bundle% "RealMapCertificates/relations/basis15140.json"
theorem reductionProof15140 : EqualModuloRelations reduction15140.relations reduction15140.input reduction15140.output := by lin_cert using reduction15140.terms
theorem substitutionProof15140 : IsMapEvaluation generatorImages reduction15140.relations [8,8,8,8,8,8,8,193] reduction15140.output := by lin_cert using reduction15140.terms
def map_45_231 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image15398 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15398 : InImage map_45_231 image15398 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15398 : Bundle := named_bundle% "RealMapCertificates/relations/basis15398.json"
theorem reductionProof15398 : EqualModuloRelations reduction15398.relations reduction15398.input reduction15398.output := by lin_cert using reduction15398.terms
theorem substitutionProof15398 : IsMapEvaluation generatorImages reduction15398.relations [8,8,8,17,529] reduction15398.output := by lin_cert using reduction15398.terms
def image15399 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15399 : InImage map_45_231 image15399 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15399 : Bundle := named_bundle% "RealMapCertificates/relations/basis15399.json"
theorem reductionProof15399 : EqualModuloRelations reduction15399.relations reduction15399.input reduction15399.output := by lin_cert using reduction15399.terms
theorem substitutionProof15399 : IsMapEvaluation generatorImages reduction15399.relations [8,8,8,8,8,8,9,13,13,51] reduction15399.output := by lin_cert using reduction15399.terms
def image15400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15400 : InImage map_45_231 image15400 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15400 : Bundle := named_bundle% "RealMapCertificates/relations/basis15400.json"
theorem reductionProof15400 : EqualModuloRelations reduction15400.relations reduction15400.input reduction15400.output := by lin_cert using reduction15400.terms
theorem substitutionProof15400 : IsMapEvaluation generatorImages reduction15400.relations [8,8,8,8,8,8,8,8,8,80] reduction15400.output := by lin_cert using reduction15400.terms
def image15401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15401 : InImage map_45_231 image15401 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15401 : Bundle := named_bundle% "RealMapCertificates/relations/basis15401.json"
theorem reductionProof15401 : EqualModuloRelations reduction15401.relations reduction15401.input reduction15401.output := by lin_cert using reduction15401.terms
theorem substitutionProof15401 : IsMapEvaluation generatorImages reduction15401.relations [0,64,725] reduction15401.output := by lin_cert using reduction15401.terms
def map_45_232 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image15593 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15593 : InImage map_45_232 image15593 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15593 : Bundle := named_bundle% "RealMapCertificates/relations/basis15593.json"
theorem reductionProof15593 : EqualModuloRelations reduction15593.relations reduction15593.input reduction15593.output := by lin_cert using reduction15593.terms
theorem substitutionProof15593 : IsMapEvaluation generatorImages reduction15593.relations [64,752] reduction15593.output := by lin_cert using reduction15593.terms
def image15594 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15594 : InImage map_45_232 image15594 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15594 : Bundle := named_bundle% "RealMapCertificates/relations/basis15594.json"
theorem reductionProof15594 : EqualModuloRelations reduction15594.relations reduction15594.input reduction15594.output := by lin_cert using reduction15594.terms
theorem substitutionProof15594 : IsMapEvaluation generatorImages reduction15594.relations [8,1438] reduction15594.output := by lin_cert using reduction15594.terms
def image15595 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15595 : InImage map_45_232 image15595 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15595 : Bundle := named_bundle% "RealMapCertificates/relations/basis15595.json"
theorem reductionProof15595 : EqualModuloRelations reduction15595.relations reduction15595.input reduction15595.output := by lin_cert using reduction15595.terms
theorem substitutionProof15595 : IsMapEvaluation generatorImages reduction15595.relations [1,64,725] reduction15595.output := by lin_cert using reduction15595.terms
def image15596 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15596 : InImage map_45_232 image15596 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15596 : Bundle := named_bundle% "RealMapCertificates/relations/basis15596.json"
theorem reductionProof15596 : EqualModuloRelations reduction15596.relations reduction15596.input reduction15596.output := by lin_cert using reduction15596.terms
theorem substitutionProof15596 : IsMapEvaluation generatorImages reduction15596.relations [0,0,138,491] reduction15596.output := by lin_cert using reduction15596.terms
def map_45_233 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15793 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15793 : InImage map_45_233 image15793 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15793 : Bundle := named_bundle% "RealMapCertificates/relations/basis15793.json"
theorem reductionProof15793 : EqualModuloRelations reduction15793.relations reduction15793.input reduction15793.output := by lin_cert using reduction15793.terms
theorem substitutionProof15793 : IsMapEvaluation generatorImages reduction15793.relations [8,8,8,138,149] reduction15793.output := by lin_cert using reduction15793.terms
def image15794 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15794 : InImage map_45_233 image15794 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15794 : Bundle := named_bundle% "RealMapCertificates/relations/basis15794.json"
theorem reductionProof15794 : EqualModuloRelations reduction15794.relations reduction15794.input reduction15794.output := by lin_cert using reduction15794.terms
theorem substitutionProof15794 : IsMapEvaluation generatorImages reduction15794.relations [8,8,8,16,17,260] reduction15794.output := by lin_cert using reduction15794.terms
def image15795 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15795 : InImage map_45_233 image15795 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15795 : Bundle := named_bundle% "RealMapCertificates/relations/basis15795.json"
theorem reductionProof15795 : EqualModuloRelations reduction15795.relations reduction15795.input reduction15795.output := by lin_cert using reduction15795.terms
theorem substitutionProof15795 : IsMapEvaluation generatorImages reduction15795.relations [8,8,8,8,8,8,8,208] reduction15795.output := by lin_cert using reduction15795.terms
def image15796 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15796 : InImage map_45_233 image15796 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15796 : Bundle := named_bundle% "RealMapCertificates/relations/basis15796.json"
theorem reductionProof15796 : EqualModuloRelations reduction15796.relations reduction15796.input reduction15796.output := by lin_cert using reduction15796.terms
theorem substitutionProof15796 : IsMapEvaluation generatorImages reduction15796.relations [0,0,1750] reduction15796.output := by lin_cert using reduction15796.terms
def image15797 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15797 : InImage map_45_233 image15797 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15797 : Bundle := named_bundle% "RealMapCertificates/relations/basis15797.json"
theorem reductionProof15797 : EqualModuloRelations reduction15797.relations reduction15797.input reduction15797.output := by lin_cert using reduction15797.terms
theorem substitutionProof15797 : IsMapEvaluation generatorImages reduction15797.relations [0,0,0,0,0,1686] reduction15797.output := by lin_cert using reduction15797.terms
def map_45_234 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image16045 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16045 : InImage map_45_234 image16045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16045 : Bundle := named_bundle% "RealMapCertificates/relations/basis16045.json"
theorem reductionProof16045 : EqualModuloRelations reduction16045.relations reduction16045.input reduction16045.output := by lin_cert using reduction16045.terms
theorem substitutionProof16045 : IsMapEvaluation generatorImages reduction16045.relations [8,8,8,8,665] reduction16045.output := by lin_cert using reduction16045.terms
def image16046 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16046 : InImage map_45_234 image16046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16046 : Bundle := named_bundle% "RealMapCertificates/relations/basis16046.json"
theorem reductionProof16046 : EqualModuloRelations reduction16046.relations reduction16046.input reduction16046.output := by lin_cert using reduction16046.terms
theorem substitutionProof16046 : IsMapEvaluation generatorImages reduction16046.relations [8,8,8,8,8,8,13,13,13,51] reduction16046.output := by lin_cert using reduction16046.terms
def image16047 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16047 : InImage map_45_234 image16047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16047 : Bundle := named_bundle% "RealMapCertificates/relations/basis16047.json"
theorem reductionProof16047 : EqualModuloRelations reduction16047.relations reduction16047.input reduction16047.output := by lin_cert using reduction16047.terms
theorem substitutionProof16047 : IsMapEvaluation generatorImages reduction16047.relations [8,8,8,8,8,8,8,8,9,80] reduction16047.output := by lin_cert using reduction16047.terms
def image16048 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16048 : InImage map_45_234 image16048 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16048 : Bundle := named_bundle% "RealMapCertificates/relations/basis16048.json"
theorem reductionProof16048 : EqualModuloRelations reduction16048.relations reduction16048.input reduction16048.output := by lin_cert using reduction16048.terms
theorem substitutionProof16048 : IsMapEvaluation generatorImages reduction16048.relations [0,64,759] reduction16048.output := by lin_cert using reduction16048.terms
def image16049 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16049 : InImage map_45_234 image16049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16049 : Bundle := named_bundle% "RealMapCertificates/relations/basis16049.json"
theorem reductionProof16049 : EqualModuloRelations reduction16049.relations reduction16049.input reduction16049.output := by lin_cert using reduction16049.terms
theorem substitutionProof16049 : IsMapEvaluation generatorImages reduction16049.relations [0,0,0,0,1735] reduction16049.output := by lin_cert using reduction16049.terms
def map_45_235 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16262 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16262 : InImage map_45_235 image16262 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16262 : Bundle := named_bundle% "RealMapCertificates/relations/basis16262.json"
theorem reductionProof16262 : EqualModuloRelations reduction16262.relations reduction16262.input reduction16262.output := by lin_cert using reduction16262.terms
theorem substitutionProof16262 : IsMapEvaluation generatorImages reduction16262.relations [8,1501] reduction16262.output := by lin_cert using reduction16262.terms
def image16263 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16263 : InImage map_45_235 image16263 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16263 : Bundle := named_bundle% "RealMapCertificates/relations/basis16263.json"
theorem reductionProof16263 : EqualModuloRelations reduction16263.relations reduction16263.input reduction16263.output := by lin_cert using reduction16263.terms
theorem substitutionProof16263 : IsMapEvaluation generatorImages reduction16263.relations [0,64,778] reduction16263.output := by lin_cert using reduction16263.terms
def image16264 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16264 : InImage map_45_235 image16264 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16264 : Bundle := named_bundle% "RealMapCertificates/relations/basis16264.json"
theorem reductionProof16264 : EqualModuloRelations reduction16264.relations reduction16264.input reduction16264.output := by lin_cert using reduction16264.terms
theorem substitutionProof16264 : IsMapEvaluation generatorImages reduction16264.relations [0,0,138,516] reduction16264.output := by lin_cert using reduction16264.terms
def image16265 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16265 : InImage map_45_235 image16265 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16265 : Bundle := named_bundle% "RealMapCertificates/relations/basis16265.json"
theorem reductionProof16265 : EqualModuloRelations reduction16265.relations reduction16265.input reduction16265.output := by lin_cert using reduction16265.terms
theorem substitutionProof16265 : IsMapEvaluation generatorImages reduction16265.relations [0,0,0,0,0,1736] reduction16265.output := by lin_cert using reduction16265.terms
def map_45_236 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16461 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16461 : InImage map_45_236 image16461 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16461 : Bundle := named_bundle% "RealMapCertificates/relations/basis16461.json"
theorem reductionProof16461 : EqualModuloRelations reduction16461.relations reduction16461.input reduction16461.output := by lin_cert using reduction16461.terms
theorem substitutionProof16461 : IsMapEvaluation generatorImages reduction16461.relations [8,8,8,138,160] reduction16461.output := by lin_cert using reduction16461.terms
def image16462 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16462 : InImage map_45_236 image16462 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16462 : Bundle := named_bundle% "RealMapCertificates/relations/basis16462.json"
theorem reductionProof16462 : EqualModuloRelations reduction16462.relations reduction16462.input reduction16462.output := by lin_cert using reduction16462.terms
theorem substitutionProof16462 : IsMapEvaluation generatorImages reduction16462.relations [8,8,8,8,17,380] reduction16462.output := by lin_cert using reduction16462.terms
def image16463 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16463 : InImage map_45_236 image16463 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16463 : Bundle := named_bundle% "RealMapCertificates/relations/basis16463.json"
theorem reductionProof16463 : EqualModuloRelations reduction16463.relations reduction16463.input reduction16463.output := by lin_cert using reduction16463.terms
theorem substitutionProof16463 : IsMapEvaluation generatorImages reduction16463.relations [8,8,8,8,8,8,8,219] reduction16463.output := by lin_cert using reduction16463.terms
def image16464 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16464 : InImage map_45_236 image16464 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16464 : Bundle := named_bundle% "RealMapCertificates/relations/basis16464.json"
theorem reductionProof16464 : EqualModuloRelations reduction16464.relations reduction16464.input reduction16464.output := by lin_cert using reduction16464.terms
theorem substitutionProof16464 : IsMapEvaluation generatorImages reduction16464.relations [0,0,0,0,0,0,1737] reduction16464.output := by lin_cert using reduction16464.terms
def map_45_237 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16719 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16719 : InImage map_45_237 image16719 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16719 : Bundle := named_bundle% "RealMapCertificates/relations/basis16719.json"
theorem reductionProof16719 : EqualModuloRelations reduction16719.relations reduction16719.input reduction16719.output := by lin_cert using reduction16719.terms
theorem substitutionProof16719 : IsMapEvaluation generatorImages reduction16719.relations [64,64,225] reduction16719.output := by lin_cert using reduction16719.terms
def image16720 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16720 : InImage map_45_237 image16720 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16720 : Bundle := named_bundle% "RealMapCertificates/relations/basis16720.json"
theorem reductionProof16720 : EqualModuloRelations reduction16720.relations reduction16720.input reduction16720.output := by lin_cert using reduction16720.terms
theorem substitutionProof16720 : IsMapEvaluation generatorImages reduction16720.relations [8,8,8,8,17,404] reduction16720.output := by lin_cert using reduction16720.terms
def image16721 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16721 : InImage map_45_237 image16721 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16721 : Bundle := named_bundle% "RealMapCertificates/relations/basis16721.json"
theorem reductionProof16721 : EqualModuloRelations reduction16721.relations reduction16721.input reduction16721.output := by lin_cert using reduction16721.terms
theorem substitutionProof16721 : IsMapEvaluation generatorImages reduction16721.relations [8,8,8,8,8,9,13,13,13,51] reduction16721.output := by lin_cert using reduction16721.terms
def image16722 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16722 : InImage map_45_237 image16722 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16722 : Bundle := named_bundle% "RealMapCertificates/relations/basis16722.json"
theorem reductionProof16722 : EqualModuloRelations reduction16722.relations reduction16722.input reduction16722.output := by lin_cert using reduction16722.terms
theorem substitutionProof16722 : IsMapEvaluation generatorImages reduction16722.relations [8,8,8,8,8,8,8,8,13,80] reduction16722.output := by lin_cert using reduction16722.terms
def image16723 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16723 : InImage map_45_237 image16723 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16723 : Bundle := named_bundle% "RealMapCertificates/relations/basis16723.json"
theorem reductionProof16723 : EqualModuloRelations reduction16723.relations reduction16723.input reduction16723.output := by lin_cert using reduction16723.terms
theorem substitutionProof16723 : IsMapEvaluation generatorImages reduction16723.relations [0,16,64,491] reduction16723.output := by lin_cert using reduction16723.terms
def map_45_238 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16925 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16925 : InImage map_45_238 image16925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16925 : Bundle := named_bundle% "RealMapCertificates/relations/basis16925.json"
theorem reductionProof16925 : EqualModuloRelations reduction16925.relations reduction16925.input reduction16925.output := by lin_cert using reduction16925.terms
theorem substitutionProof16925 : IsMapEvaluation generatorImages reduction16925.relations [8,8,1219] reduction16925.output := by lin_cert using reduction16925.terms
def image16926 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16926 : InImage map_45_238 image16926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16926 : Bundle := named_bundle% "RealMapCertificates/relations/basis16926.json"
theorem reductionProof16926 : EqualModuloRelations reduction16926.relations reduction16926.input reduction16926.output := by lin_cert using reduction16926.terms
theorem substitutionProof16926 : IsMapEvaluation generatorImages reduction16926.relations [0,0,16,138,260] reduction16926.output := by lin_cert using reduction16926.terms
def image16927 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16927 : InImage map_45_238 image16927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16927 : Bundle := named_bundle% "RealMapCertificates/relations/basis16927.json"
theorem reductionProof16927 : EqualModuloRelations reduction16927.relations reduction16927.input reduction16927.output := by lin_cert using reduction16927.terms
theorem substitutionProof16927 : IsMapEvaluation generatorImages reduction16927.relations [0,0,0,149,491] reduction16927.output := by lin_cert using reduction16927.terms
end RealMapCertificates
