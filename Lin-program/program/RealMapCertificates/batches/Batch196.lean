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
  | 51 => [[7,7,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 185 => [[0,4,4,8,12]]
  | 219 => [[7,7,7,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 260 => []
  | 267 => []
  | 278 => []
  | 292 => []
  | 299 => []
  | 347 => []
  | 380 => []
  | 435 => [[1,9,12,12]]
  | 454 => []
  | 491 => []
  | 516 => []
  | 518 => []
  | 530 => []
  | 550 => []
  | 559 => [[0,0,5,8,12,12]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 623 => []
  | 624 => []
  | 715 => [[7,7,7,12,12]]
  | 795 => []
  | 796 => []
  | 809 => []
  | 831 => []
  | 862 => []
  | 863 => [[4,7,7,7,12,12]]
  | 890 => [[5,5,5,9,12,12]]
  | 897 => []
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 972 => []
  | 1009 => [[4,4,7,7,7,12,12]]
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1061 => [[4,5,5,5,9,12,12]]
  | 1288 => [[4,4,5,5,5,9,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1772 => [[0,4,4,5,9,12,12,12]]
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1990 => [[4,4,5,5,7,12,12,12]]
  | 1994 => []
  | 2091 => [[4,4,4,6,8,12,12,12]]
  | 2120 => [[0,4,4,4,5,9,12,12,12]]
  | 2196 => []
  | 2238 => []
  | 2402 => [[4,4,4,5,5,7,12,12,12]]
  | 2541 => [[4,4,4,5,7,7,12,12,12]]
  | _ => []
def map_45_239 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17149 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17149 : InImage map_45_239 image17149 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17149 : Bundle := named_bundle% "RealMapCertificates/relations/basis17149.json"
theorem reductionProof17149 : EqualModuloRelations reduction17149.relations reduction17149.input reduction17149.output := by lin_cert using reduction17149.terms
theorem substitutionProof17149 : IsMapEvaluation generatorImages reduction17149.relations [8,8,8,16,598] reduction17149.output := by lin_cert using reduction17149.terms
def image17150 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17150 : InImage map_45_239 image17150 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17150 : Bundle := named_bundle% "RealMapCertificates/relations/basis17150.json"
theorem reductionProof17150 : EqualModuloRelations reduction17150.relations reduction17150.input reduction17150.output := by lin_cert using reduction17150.terms
theorem substitutionProof17150 : IsMapEvaluation generatorImages reduction17150.relations [8,8,8,8,8,17,260] reduction17150.output := by lin_cert using reduction17150.terms
def image17151 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17151 : InImage map_45_239 image17151 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17151 : Bundle := named_bundle% "RealMapCertificates/relations/basis17151.json"
theorem reductionProof17151 : EqualModuloRelations reduction17151.relations reduction17151.input reduction17151.output := by lin_cert using reduction17151.terms
theorem substitutionProof17151 : IsMapEvaluation generatorImages reduction17151.relations [8,8,8,8,8,8,9,219] reduction17151.output := by lin_cert using reduction17151.terms
def image17152 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17152 : InImage map_45_239 image17152 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17152 : Bundle := named_bundle% "RealMapCertificates/relations/basis17152.json"
theorem reductionProof17152 : EqualModuloRelations reduction17152.relations reduction17152.input reduction17152.output := by lin_cert using reduction17152.terms
theorem substitutionProof17152 : IsMapEvaluation generatorImages reduction17152.relations [0,0,64,809] reduction17152.output := by lin_cert using reduction17152.terms
def image17153 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17153 : InImage map_45_239 image17153 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17153 : Bundle := named_bundle% "RealMapCertificates/relations/basis17153.json"
theorem reductionProof17153 : EqualModuloRelations reduction17153.relations reduction17153.input reduction17153.output := by lin_cert using reduction17153.terms
theorem substitutionProof17153 : IsMapEvaluation generatorImages reduction17153.relations [0,0,0,17,138,260] reduction17153.output := by lin_cert using reduction17153.terms
def map_45_240 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image17419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17419 : InImage map_45_240 image17419 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17419 : Bundle := named_bundle% "RealMapCertificates/relations/basis17419.json"
theorem reductionProof17419 : EqualModuloRelations reduction17419.relations reduction17419.input reduction17419.output := by lin_cert using reduction17419.terms
theorem substitutionProof17419 : IsMapEvaluation generatorImages reduction17419.relations [64,64,238] reduction17419.output := by lin_cert using reduction17419.terms
def image17420 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17420 : InImage map_45_240 image17420 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17420 : Bundle := named_bundle% "RealMapCertificates/relations/basis17420.json"
theorem reductionProof17420 : EqualModuloRelations reduction17420.relations reduction17420.input reduction17420.output := by lin_cert using reduction17420.terms
theorem substitutionProof17420 : IsMapEvaluation generatorImages reduction17420.relations [8,8,8,8,8,559] reduction17420.output := by lin_cert using reduction17420.terms
def image17421 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17421 : InImage map_45_240 image17421 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17421 : Bundle := named_bundle% "RealMapCertificates/relations/basis17421.json"
theorem reductionProof17421 : EqualModuloRelations reduction17421.relations reduction17421.input reduction17421.output := by lin_cert using reduction17421.terms
theorem substitutionProof17421 : IsMapEvaluation generatorImages reduction17421.relations [8,8,8,8,8,13,13,13,13,51] reduction17421.output := by lin_cert using reduction17421.terms
def image17422 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17422 : InImage map_45_240 image17422 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17422 : Bundle := named_bundle% "RealMapCertificates/relations/basis17422.json"
theorem reductionProof17422 : EqualModuloRelations reduction17422.relations reduction17422.input reduction17422.output := by lin_cert using reduction17422.terms
theorem substitutionProof17422 : IsMapEvaluation generatorImages reduction17422.relations [8,8,8,8,8,8,8,9,13,80] reduction17422.output := by lin_cert using reduction17422.terms
def image17423 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17423 : InImage map_45_240 image17423 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17423 : Bundle := named_bundle% "RealMapCertificates/relations/basis17423.json"
theorem reductionProof17423 : EqualModuloRelations reduction17423.relations reduction17423.input reduction17423.output := by lin_cert using reduction17423.terms
theorem substitutionProof17423 : IsMapEvaluation generatorImages reduction17423.relations [0,8,64,623] reduction17423.output := by lin_cert using reduction17423.terms
def image17424 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17424 : InImage map_45_240 image17424 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17424 : Bundle := named_bundle% "RealMapCertificates/relations/basis17424.json"
theorem reductionProof17424 : EqualModuloRelations reduction17424.relations reduction17424.input reduction17424.output := by lin_cert using reduction17424.terms
theorem substitutionProof17424 : IsMapEvaluation generatorImages reduction17424.relations [0,0,0,0,64,795] reduction17424.output := by lin_cert using reduction17424.terms
def map_45_241 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image17690 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17690 : InImage map_45_241 image17690 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17690 : Bundle := named_bundle% "RealMapCertificates/relations/basis17690.json"
theorem reductionProof17690 : EqualModuloRelations reduction17690.relations reduction17690.input reduction17690.output := by lin_cert using reduction17690.terms
theorem substitutionProof17690 : IsMapEvaluation generatorImages reduction17690.relations [8,8,1288] reduction17690.output := by lin_cert using reduction17690.terms
def image17691 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17691 : InImage map_45_241 image17691 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17691 : Bundle := named_bundle% "RealMapCertificates/relations/basis17691.json"
theorem reductionProof17691 : EqualModuloRelations reduction17691.relations reduction17691.input reduction17691.output := by lin_cert using reduction17691.terms
theorem substitutionProof17691 : IsMapEvaluation generatorImages reduction17691.relations [0,0,8,113,491] reduction17691.output := by lin_cert using reduction17691.terms
def image17692 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17692 : InImage map_45_241 image17692 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17692 : Bundle := named_bundle% "RealMapCertificates/relations/basis17692.json"
theorem reductionProof17692 : EqualModuloRelations reduction17692.relations reduction17692.input reduction17692.output := by lin_cert using reduction17692.terms
theorem substitutionProof17692 : IsMapEvaluation generatorImages reduction17692.relations [0,0,0,0,0,0,246,260] reduction17692.output := by lin_cert using reduction17692.terms
def map_45_242 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,true] : List Bool)[i.val*4+j.val]!
def image17914 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17914 : InImage map_45_242 image17914 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17914 : Bundle := named_bundle% "RealMapCertificates/relations/basis17914.json"
theorem reductionProof17914 : EqualModuloRelations reduction17914.relations reduction17914.input reduction17914.output := by lin_cert using reduction17914.terms
theorem substitutionProof17914 : IsMapEvaluation generatorImages reduction17914.relations [8,8,8,8,113,149] reduction17914.output := by lin_cert using reduction17914.terms
def image17915 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17915 : InImage map_45_242 image17915 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17915 : Bundle := named_bundle% "RealMapCertificates/relations/basis17915.json"
theorem reductionProof17915 : EqualModuloRelations reduction17915.relations reduction17915.input reduction17915.output := by lin_cert using reduction17915.terms
theorem substitutionProof17915 : IsMapEvaluation generatorImages reduction17915.relations [8,8,8,8,8,17,278] reduction17915.output := by lin_cert using reduction17915.terms
def image17916 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17916 : InImage map_45_242 image17916 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17916 : Bundle := named_bundle% "RealMapCertificates/relations/basis17916.json"
theorem reductionProof17916 : EqualModuloRelations reduction17916.relations reduction17916.input reduction17916.output := by lin_cert using reduction17916.terms
theorem substitutionProof17916 : IsMapEvaluation generatorImages reduction17916.relations [8,8,8,8,8,8,13,219] reduction17916.output := by lin_cert using reduction17916.terms
def image17917 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation17917 : InImage map_45_242 image17917 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17917 : Bundle := named_bundle% "RealMapCertificates/relations/basis17917.json"
theorem reductionProof17917 : EqualModuloRelations reduction17917.relations reduction17917.input reduction17917.output := by lin_cert using reduction17917.terms
theorem substitutionProof17917 : IsMapEvaluation generatorImages reduction17917.relations [5,1686] reduction17917.output := by lin_cert using reduction17917.terms
def map_45_243 : Matrix 1 6 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18201 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18201 : InImage map_45_243 image18201 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18201 : Bundle := named_bundle% "RealMapCertificates/relations/basis18201.json"
theorem reductionProof18201 : EqualModuloRelations reduction18201.relations reduction18201.input reduction18201.output := by lin_cert using reduction18201.terms
theorem substitutionProof18201 : IsMapEvaluation generatorImages reduction18201.relations [16,64,64,138] reduction18201.output := by lin_cert using reduction18201.terms
def image18202 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18202 : InImage map_45_243 image18202 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18202 : Bundle := named_bundle% "RealMapCertificates/relations/basis18202.json"
theorem reductionProof18202 : EqualModuloRelations reduction18202.relations reduction18202.input reduction18202.output := by lin_cert using reduction18202.terms
theorem substitutionProof18202 : IsMapEvaluation generatorImages reduction18202.relations [8,8,8,8,9,13,13,13,13,51] reduction18202.output := by lin_cert using reduction18202.terms
def image18203 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18203 : InImage map_45_243 image18203 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18203 : Bundle := named_bundle% "RealMapCertificates/relations/basis18203.json"
theorem reductionProof18203 : EqualModuloRelations reduction18203.relations reduction18203.input reduction18203.output := by lin_cert using reduction18203.terms
theorem substitutionProof18203 : IsMapEvaluation generatorImages reduction18203.relations [8,8,8,8,8,580] reduction18203.output := by lin_cert using reduction18203.terms
def image18204 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18204 : InImage map_45_243 image18204 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18204 : Bundle := named_bundle% "RealMapCertificates/relations/basis18204.json"
theorem reductionProof18204 : EqualModuloRelations reduction18204.relations reduction18204.input reduction18204.output := by lin_cert using reduction18204.terms
theorem substitutionProof18204 : IsMapEvaluation generatorImages reduction18204.relations [8,8,8,8,8,8,8,13,13,80] reduction18204.output := by lin_cert using reduction18204.terms
def image18205 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18205 : InImage map_45_243 image18205 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18205 : Bundle := named_bundle% "RealMapCertificates/relations/basis18205.json"
theorem reductionProof18205 : EqualModuloRelations reduction18205.relations reduction18205.input reduction18205.output := by lin_cert using reduction18205.terms
theorem substitutionProof18205 : IsMapEvaluation generatorImages reduction18205.relations [0,64,64,244] reduction18205.output := by lin_cert using reduction18205.terms
def image18206 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18206 : InImage map_45_243 image18206 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18206 : Bundle := named_bundle% "RealMapCertificates/relations/basis18206.json"
theorem reductionProof18206 : EqualModuloRelations reduction18206.relations reduction18206.input reduction18206.output := by lin_cert using reduction18206.terms
theorem substitutionProof18206 : IsMapEvaluation generatorImages reduction18206.relations [0,8,8,64,491] reduction18206.output := by lin_cert using reduction18206.terms
def map_45_244 : Matrix 1 5 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image18418 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18418 : InImage map_45_244 image18418 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18418 : Bundle := named_bundle% "RealMapCertificates/relations/basis18418.json"
theorem reductionProof18418 : EqualModuloRelations reduction18418.relations reduction18418.input reduction18418.output := by lin_cert using reduction18418.terms
theorem substitutionProof18418 : IsMapEvaluation generatorImages reduction18418.relations [8,8,8,1009] reduction18418.output := by lin_cert using reduction18418.terms
def image18419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18419 : InImage map_45_244 image18419 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18419 : Bundle := named_bundle% "RealMapCertificates/relations/basis18419.json"
theorem reductionProof18419 : EqualModuloRelations reduction18419.relations reduction18419.input reduction18419.output := by lin_cert using reduction18419.terms
theorem substitutionProof18419 : IsMapEvaluation generatorImages reduction18419.relations [1,64,64,244] reduction18419.output := by lin_cert using reduction18419.terms
def image18420 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18420 : InImage map_45_244 image18420 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18420 : Bundle := named_bundle% "RealMapCertificates/relations/basis18420.json"
theorem reductionProof18420 : EqualModuloRelations reduction18420.relations reduction18420.input reduction18420.output := by lin_cert using reduction18420.terms
theorem substitutionProof18420 : IsMapEvaluation generatorImages reduction18420.relations [0,2091] reduction18420.output := by lin_cert using reduction18420.terms
def image18421 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18421 : InImage map_45_244 image18421 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18421 : Bundle := named_bundle% "RealMapCertificates/relations/basis18421.json"
theorem reductionProof18421 : EqualModuloRelations reduction18421.relations reduction18421.input reduction18421.output := by lin_cert using reduction18421.terms
theorem substitutionProof18421 : IsMapEvaluation generatorImages reduction18421.relations [0,0,64,138,149] reduction18421.output := by lin_cert using reduction18421.terms
def image18422 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18422 : InImage map_45_244 image18422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18422 : Bundle := named_bundle% "RealMapCertificates/relations/basis18422.json"
theorem reductionProof18422 : EqualModuloRelations reduction18422.relations reduction18422.input reduction18422.output := by lin_cert using reduction18422.terms
theorem substitutionProof18422 : IsMapEvaluation generatorImages reduction18422.relations [0,0,8,8,138,260] reduction18422.output := by lin_cert using reduction18422.terms
def map_45_245 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image18660 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18660 : InImage map_45_245 image18660 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18660 : Bundle := named_bundle% "RealMapCertificates/relations/basis18660.json"
theorem reductionProof18660 : EqualModuloRelations reduction18660.relations reduction18660.input reduction18660.output := by lin_cert using reduction18660.terms
theorem substitutionProof18660 : IsMapEvaluation generatorImages reduction18660.relations [8,8,8,8,8,598] reduction18660.output := by lin_cert using reduction18660.terms
def image18661 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18661 : InImage map_45_245 image18661 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18661 : Bundle := named_bundle% "RealMapCertificates/relations/basis18661.json"
theorem reductionProof18661 : EqualModuloRelations reduction18661.relations reduction18661.input reduction18661.output := by lin_cert using reduction18661.terms
theorem substitutionProof18661 : IsMapEvaluation generatorImages reduction18661.relations [8,8,8,8,8,16,292] reduction18661.output := by lin_cert using reduction18661.terms
def image18662 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18662 : InImage map_45_245 image18662 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18662 : Bundle := named_bundle% "RealMapCertificates/relations/basis18662.json"
theorem reductionProof18662 : EqualModuloRelations reduction18662.relations reduction18662.input reduction18662.output := by lin_cert using reduction18662.terms
theorem substitutionProof18662 : IsMapEvaluation generatorImages reduction18662.relations [8,8,8,8,8,9,13,219] reduction18662.output := by lin_cert using reduction18662.terms
def image18663 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation18663 : InImage map_45_245 image18663 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18663 : Bundle := named_bundle% "RealMapCertificates/relations/basis18663.json"
theorem reductionProof18663 : EqualModuloRelations reduction18663.relations reduction18663.input reduction18663.output := by lin_cert using reduction18663.terms
theorem substitutionProof18663 : IsMapEvaluation generatorImages reduction18663.relations [0,2120] reduction18663.output := by lin_cert using reduction18663.terms
def image18664 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18664 : InImage map_45_245 image18664 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18664 : Bundle := named_bundle% "RealMapCertificates/relations/basis18664.json"
theorem reductionProof18664 : EqualModuloRelations reduction18664.relations reduction18664.input reduction18664.output := by lin_cert using reduction18664.terms
theorem substitutionProof18664 : IsMapEvaluation generatorImages reduction18664.relations [0,0,0,0,17,149,260] reduction18664.output := by lin_cert using reduction18664.terms
def map_45_246 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image18954 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18954 : InImage map_45_246 image18954 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction18954 : Bundle := named_bundle% "RealMapCertificates/relations/basis18954.json"
theorem reductionProof18954 : EqualModuloRelations reduction18954.relations reduction18954.input reduction18954.output := by lin_cert using reduction18954.terms
theorem substitutionProof18954 : IsMapEvaluation generatorImages reduction18954.relations [8,64,64,185] reduction18954.output := by lin_cert using reduction18954.terms
def image18955 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18955 : InImage map_45_246 image18955 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction18955 : Bundle := named_bundle% "RealMapCertificates/relations/basis18955.json"
theorem reductionProof18955 : EqualModuloRelations reduction18955.relations reduction18955.input reduction18955.output := by lin_cert using reduction18955.terms
theorem substitutionProof18955 : IsMapEvaluation generatorImages reduction18955.relations [8,8,8,8,13,13,13,13,13,51] reduction18955.output := by lin_cert using reduction18955.terms
def image18956 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18956 : InImage map_45_246 image18956 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction18956 : Bundle := named_bundle% "RealMapCertificates/relations/basis18956.json"
theorem reductionProof18956 : EqualModuloRelations reduction18956.relations reduction18956.input reduction18956.output := by lin_cert using reduction18956.terms
theorem substitutionProof18956 : IsMapEvaluation generatorImages reduction18956.relations [8,8,8,8,8,8,435] reduction18956.output := by lin_cert using reduction18956.terms
def image18957 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18957 : InImage map_45_246 image18957 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction18957 : Bundle := named_bundle% "RealMapCertificates/relations/basis18957.json"
theorem reductionProof18957 : EqualModuloRelations reduction18957.relations reduction18957.input reduction18957.output := by lin_cert using reduction18957.terms
theorem substitutionProof18957 : IsMapEvaluation generatorImages reduction18957.relations [8,8,8,8,8,8,9,13,13,80] reduction18957.output := by lin_cert using reduction18957.terms
def image18958 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18958 : InImage map_45_246 image18958 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction18958 : Bundle := named_bundle% "RealMapCertificates/relations/basis18958.json"
theorem reductionProof18958 : EqualModuloRelations reduction18958.relations reduction18958.input reduction18958.output := by lin_cert using reduction18958.terms
theorem substitutionProof18958 : IsMapEvaluation generatorImages reduction18958.relations [0,8,8,64,516] reduction18958.output := by lin_cert using reduction18958.terms
def image18959 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18959 : InImage map_45_246 image18959 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction18959 : Bundle := named_bundle% "RealMapCertificates/relations/basis18959.json"
theorem reductionProof18959 : EqualModuloRelations reduction18959.relations reduction18959.input reduction18959.output := by lin_cert using reduction18959.terms
theorem substitutionProof18959 : IsMapEvaluation generatorImages reduction18959.relations [0,0,0,0,64,64,246] reduction18959.output := by lin_cert using reduction18959.terms
def image18960 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18960 : InImage map_45_246 image18960 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction18960 : Bundle := named_bundle% "RealMapCertificates/relations/basis18960.json"
theorem reductionProof18960 : EqualModuloRelations reduction18960.relations reduction18960.input reduction18960.output := by lin_cert using reduction18960.terms
theorem substitutionProof18960 : IsMapEvaluation generatorImages reduction18960.relations [0,0,0,0,17,17,897] reduction18960.output := by lin_cert using reduction18960.terms
def map_45_247 : Matrix 2 4 := fun i j => ([true,false,false,false,false,true,false,false] : List Bool)[i.val*4+j.val]!
def image19219 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19219 : InImage map_45_247 image19219 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19219 : Bundle := named_bundle% "RealMapCertificates/relations/basis19219.json"
theorem reductionProof19219 : EqualModuloRelations reduction19219.relations reduction19219.input reduction19219.output := by lin_cert using reduction19219.terms
theorem substitutionProof19219 : IsMapEvaluation generatorImages reduction19219.relations [8,8,8,1061] reduction19219.output := by lin_cert using reduction19219.terms
def image19220 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation19220 : InImage map_45_247 image19220 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19220 : Bundle := named_bundle% "RealMapCertificates/relations/basis19220.json"
theorem reductionProof19220 : EqualModuloRelations reduction19220.relations reduction19220.input reduction19220.output := by lin_cert using reduction19220.terms
theorem substitutionProof19220 : IsMapEvaluation generatorImages reduction19220.relations [0,8,1686] reduction19220.output := by lin_cert using reduction19220.terms
def image19221 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19221 : InImage map_45_247 image19221 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19221 : Bundle := named_bundle% "RealMapCertificates/relations/basis19221.json"
theorem reductionProof19221 : EqualModuloRelations reduction19221.relations reduction19221.input reduction19221.output := by lin_cert using reduction19221.terms
theorem substitutionProof19221 : IsMapEvaluation generatorImages reduction19221.relations [0,0,8,8,138,278] reduction19221.output := by lin_cert using reduction19221.terms
def image19222 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19222 : InImage map_45_247 image19222 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19222 : Bundle := named_bundle% "RealMapCertificates/relations/basis19222.json"
theorem reductionProof19222 : EqualModuloRelations reduction19222.relations reduction19222.input reduction19222.output := by lin_cert using reduction19222.terms
theorem substitutionProof19222 : IsMapEvaluation generatorImages reduction19222.relations [0,0,0,0,0,0,64,862] reduction19222.output := by lin_cert using reduction19222.terms
def map_45_248 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image19460 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19460 : InImage map_45_248 image19460 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19460 : Bundle := named_bundle% "RealMapCertificates/relations/basis19460.json"
theorem reductionProof19460 : EqualModuloRelations reduction19460.relations reduction19460.input reduction19460.output := by lin_cert using reduction19460.terms
theorem substitutionProof19460 : IsMapEvaluation generatorImages reduction19460.relations [64,939] reduction19460.output := by lin_cert using reduction19460.terms
def image19461 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19461 : InImage map_45_248 image19461 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19461 : Bundle := named_bundle% "RealMapCertificates/relations/basis19461.json"
theorem reductionProof19461 : EqualModuloRelations reduction19461.relations reduction19461.input reduction19461.output := by lin_cert using reduction19461.terms
theorem substitutionProof19461 : IsMapEvaluation generatorImages reduction19461.relations [8,8,8,8,8,624] reduction19461.output := by lin_cert using reduction19461.terms
def image19462 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19462 : InImage map_45_248 image19462 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19462 : Bundle := named_bundle% "RealMapCertificates/relations/basis19462.json"
theorem reductionProof19462 : EqualModuloRelations reduction19462.relations reduction19462.input reduction19462.output := by lin_cert using reduction19462.terms
theorem substitutionProof19462 : IsMapEvaluation generatorImages reduction19462.relations [8,8,8,8,8,13,13,219] reduction19462.output := by lin_cert using reduction19462.terms
def image19463 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19463 : InImage map_45_248 image19463 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19463 : Bundle := named_bundle% "RealMapCertificates/relations/basis19463.json"
theorem reductionProof19463 : EqualModuloRelations reduction19463.relations reduction19463.input reduction19463.output := by lin_cert using reduction19463.terms
theorem substitutionProof19463 : IsMapEvaluation generatorImages reduction19463.relations [8,8,8,8,8,8,454] reduction19463.output := by lin_cert using reduction19463.terms
def image19464 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19464 : InImage map_45_248 image19464 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19464 : Bundle := named_bundle% "RealMapCertificates/relations/basis19464.json"
theorem reductionProof19464 : EqualModuloRelations reduction19464.relations reduction19464.input reduction19464.output := by lin_cert using reduction19464.terms
theorem substitutionProof19464 : IsMapEvaluation generatorImages reduction19464.relations [0,2238] reduction19464.output := by lin_cert using reduction19464.terms
def image19465 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19465 : InImage map_45_248 image19465 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19465 : Bundle := named_bundle% "RealMapCertificates/relations/basis19465.json"
theorem reductionProof19465 : EqualModuloRelations reduction19465.relations reduction19465.input reduction19465.output := by lin_cert using reduction19465.terms
theorem substitutionProof19465 : IsMapEvaluation generatorImages reduction19465.relations [0,0,0,0,0,0,0,0,0,0,1926] reduction19465.output := by lin_cert using reduction19465.terms
def map_45_249 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image19766 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19766 : InImage map_45_249 image19766 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction19766 : Bundle := named_bundle% "RealMapCertificates/relations/basis19766.json"
theorem reductionProof19766 : EqualModuloRelations reduction19766.relations reduction19766.input reduction19766.output := by lin_cert using reduction19766.terms
theorem substitutionProof19766 : IsMapEvaluation generatorImages reduction19766.relations [8,8,64,64,138] reduction19766.output := by lin_cert using reduction19766.terms
def image19767 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19767 : InImage map_45_249 image19767 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction19767 : Bundle := named_bundle% "RealMapCertificates/relations/basis19767.json"
theorem reductionProof19767 : EqualModuloRelations reduction19767.relations reduction19767.input reduction19767.output := by lin_cert using reduction19767.terms
theorem substitutionProof19767 : IsMapEvaluation generatorImages reduction19767.relations [8,8,8,9,13,13,13,13,13,51] reduction19767.output := by lin_cert using reduction19767.terms
def image19768 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19768 : InImage map_45_249 image19768 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction19768 : Bundle := named_bundle% "RealMapCertificates/relations/basis19768.json"
theorem reductionProof19768 : EqualModuloRelations reduction19768.relations reduction19768.input reduction19768.output := by lin_cert using reduction19768.terms
theorem substitutionProof19768 : IsMapEvaluation generatorImages reduction19768.relations [8,8,8,8,8,9,435] reduction19768.output := by lin_cert using reduction19768.terms
def image19769 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19769 : InImage map_45_249 image19769 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction19769 : Bundle := named_bundle% "RealMapCertificates/relations/basis19769.json"
theorem reductionProof19769 : EqualModuloRelations reduction19769.relations reduction19769.input reduction19769.output := by lin_cert using reduction19769.terms
theorem substitutionProof19769 : IsMapEvaluation generatorImages reduction19769.relations [8,8,8,8,8,8,13,13,13,80] reduction19769.output := by lin_cert using reduction19769.terms
def image19770 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19770 : InImage map_45_249 image19770 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction19770 : Bundle := named_bundle% "RealMapCertificates/relations/basis19770.json"
theorem reductionProof19770 : EqualModuloRelations reduction19770.relations reduction19770.input reduction19770.output := by lin_cert using reduction19770.terms
theorem substitutionProof19770 : IsMapEvaluation generatorImages reduction19770.relations [0,8,8,16,64,260] reduction19770.output := by lin_cert using reduction19770.terms
def image19771 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19771 : InImage map_45_249 image19771 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction19771 : Bundle := named_bundle% "RealMapCertificates/relations/basis19771.json"
theorem reductionProof19771 : EqualModuloRelations reduction19771.relations reduction19771.input reduction19771.output := by lin_cert using reduction19771.terms
theorem substitutionProof19771 : IsMapEvaluation generatorImages reduction19771.relations [0,0,0,0,0,0,0,0,0,0,1967] reduction19771.output := by lin_cert using reduction19771.terms
def map_45_250 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image20002 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20002 : InImage map_45_250 image20002 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20002 : Bundle := named_bundle% "RealMapCertificates/relations/basis20002.json"
theorem reductionProof20002 : EqualModuloRelations reduction20002.relations reduction20002.input reduction20002.output := by lin_cert using reduction20002.terms
theorem substitutionProof20002 : IsMapEvaluation generatorImages reduction20002.relations [8,8,8,8,863] reduction20002.output := by lin_cert using reduction20002.terms
def image20003 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20003 : InImage map_45_250 image20003 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20003 : Bundle := named_bundle% "RealMapCertificates/relations/basis20003.json"
theorem reductionProof20003 : EqualModuloRelations reduction20003.relations reduction20003.input reduction20003.output := by lin_cert using reduction20003.terms
theorem substitutionProof20003 : IsMapEvaluation generatorImages reduction20003.relations [0,0,8,8,16,897] reduction20003.output := by lin_cert using reduction20003.terms
def image20004 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20004 : InImage map_45_250 image20004 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20004 : Bundle := named_bundle% "RealMapCertificates/relations/basis20004.json"
theorem reductionProof20004 : EqualModuloRelations reduction20004.relations reduction20004.input reduction20004.output := by lin_cert using reduction20004.terms
theorem substitutionProof20004 : IsMapEvaluation generatorImages reduction20004.relations [0,0,0,64,149,149] reduction20004.output := by lin_cert using reduction20004.terms
def image20005 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20005 : InImage map_45_250 image20005 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20005 : Bundle := named_bundle% "RealMapCertificates/relations/basis20005.json"
theorem reductionProof20005 : EqualModuloRelations reduction20005.relations reduction20005.input reduction20005.output := by lin_cert using reduction20005.terms
theorem substitutionProof20005 : IsMapEvaluation generatorImages reduction20005.relations [0,0,0,0,0,0,0,0,0,0,0,0,1927] reduction20005.output := by lin_cert using reduction20005.terms
def map_45_251 : Matrix 1 7 := fun i j => ([false,true,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20274 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20274 : InImage map_45_251 image20274 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20274 : Bundle := named_bundle% "RealMapCertificates/relations/basis20274.json"
theorem reductionProof20274 : EqualModuloRelations reduction20274.relations reduction20274.input reduction20274.output := by lin_cert using reduction20274.terms
theorem substitutionProof20274 : IsMapEvaluation generatorImages reduction20274.relations [64,972] reduction20274.output := by lin_cert using reduction20274.terms
def image20275 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20275 : InImage map_45_251 image20275 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20275 : Bundle := named_bundle% "RealMapCertificates/relations/basis20275.json"
theorem reductionProof20275 : EqualModuloRelations reduction20275.relations reduction20275.input reduction20275.output := by lin_cert using reduction20275.terms
theorem substitutionProof20275 : IsMapEvaluation generatorImages reduction20275.relations [8,8,8,8,9,13,13,219] reduction20275.output := by lin_cert using reduction20275.terms
def image20276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20276 : InImage map_45_251 image20276 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20276 : Bundle := named_bundle% "RealMapCertificates/relations/basis20276.json"
theorem reductionProof20276 : EqualModuloRelations reduction20276.relations reduction20276.input reduction20276.output := by lin_cert using reduction20276.terms
theorem substitutionProof20276 : IsMapEvaluation generatorImages reduction20276.relations [8,8,8,8,8,17,347] reduction20276.output := by lin_cert using reduction20276.terms
def image20277 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20277 : InImage map_45_251 image20277 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20277 : Bundle := named_bundle% "RealMapCertificates/relations/basis20277.json"
theorem reductionProof20277 : EqualModuloRelations reduction20277.relations reduction20277.input reduction20277.output := by lin_cert using reduction20277.terms
theorem substitutionProof20277 : IsMapEvaluation generatorImages reduction20277.relations [8,8,8,8,8,8,8,292] reduction20277.output := by lin_cert using reduction20277.terms
def image20278 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20278 : InImage map_45_251 image20278 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20278 : Bundle := named_bundle% "RealMapCertificates/relations/basis20278.json"
theorem reductionProof20278 : EqualModuloRelations reduction20278.relations reduction20278.input reduction20278.output := by lin_cert using reduction20278.terms
theorem substitutionProof20278 : IsMapEvaluation generatorImages reduction20278.relations [0,8,1772] reduction20278.output := by lin_cert using reduction20278.terms
def image20279 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20279 : InImage map_45_251 image20279 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20279 : Bundle := named_bundle% "RealMapCertificates/relations/basis20279.json"
theorem reductionProof20279 : EqualModuloRelations reduction20279.relations reduction20279.input reduction20279.output := by lin_cert using reduction20279.terms
theorem substitutionProof20279 : IsMapEvaluation generatorImages reduction20279.relations [0,0,0,0,64,927] reduction20279.output := by lin_cert using reduction20279.terms
def image20280 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20280 : InImage map_45_251 image20280 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20280 : Bundle := named_bundle% "RealMapCertificates/relations/basis20280.json"
theorem reductionProof20280 : EqualModuloRelations reduction20280.relations reduction20280.input reduction20280.output := by lin_cert using reduction20280.terms
theorem substitutionProof20280 : IsMapEvaluation generatorImages reduction20280.relations [0,0,0,0,0,0,0,0,0,0,0,1994] reduction20280.output := by lin_cert using reduction20280.terms
def map_45_252 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20576 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation20576 : InImage map_45_252 image20576 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20576 : Bundle := named_bundle% "RealMapCertificates/relations/basis20576.json"
theorem reductionProof20576 : EqualModuloRelations reduction20576.relations reduction20576.input reduction20576.output := by lin_cert using reduction20576.terms
theorem substitutionProof20576 : IsMapEvaluation generatorImages reduction20576.relations [2402] reduction20576.output := by lin_cert using reduction20576.terms
def image20577 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20577 : InImage map_45_252 image20577 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20577 : Bundle := named_bundle% "RealMapCertificates/relations/basis20577.json"
theorem reductionProof20577 : EqualModuloRelations reduction20577.relations reduction20577.input reduction20577.output := by lin_cert using reduction20577.terms
theorem substitutionProof20577 : IsMapEvaluation generatorImages reduction20577.relations [8,8,64,64,147] reduction20577.output := by lin_cert using reduction20577.terms
def image20578 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20578 : InImage map_45_252 image20578 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20578 : Bundle := named_bundle% "RealMapCertificates/relations/basis20578.json"
theorem reductionProof20578 : EqualModuloRelations reduction20578.relations reduction20578.input reduction20578.output := by lin_cert using reduction20578.terms
theorem substitutionProof20578 : IsMapEvaluation generatorImages reduction20578.relations [8,8,8,13,13,13,13,13,13,51] reduction20578.output := by lin_cert using reduction20578.terms
def image20579 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20579 : InImage map_45_252 image20579 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20579 : Bundle := named_bundle% "RealMapCertificates/relations/basis20579.json"
theorem reductionProof20579 : EqualModuloRelations reduction20579.relations reduction20579.input reduction20579.output := by lin_cert using reduction20579.terms
theorem substitutionProof20579 : IsMapEvaluation generatorImages reduction20579.relations [8,8,8,8,8,13,435] reduction20579.output := by lin_cert using reduction20579.terms
def image20580 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20580 : InImage map_45_252 image20580 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20580 : Bundle := named_bundle% "RealMapCertificates/relations/basis20580.json"
theorem reductionProof20580 : EqualModuloRelations reduction20580.relations reduction20580.input reduction20580.output := by lin_cert using reduction20580.terms
theorem substitutionProof20580 : IsMapEvaluation generatorImages reduction20580.relations [8,8,8,8,8,9,13,13,13,80] reduction20580.output := by lin_cert using reduction20580.terms
def image20581 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20581 : InImage map_45_252 image20581 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20581 : Bundle := named_bundle% "RealMapCertificates/relations/basis20581.json"
theorem reductionProof20581 : EqualModuloRelations reduction20581.relations reduction20581.input reduction20581.output := by lin_cert using reduction20581.terms
theorem substitutionProof20581 : IsMapEvaluation generatorImages reduction20581.relations [0,0,0,0,0,0,0,64,64,260] reduction20581.output := by lin_cert using reduction20581.terms
def map_45_253 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20831 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20831 : InImage map_45_253 image20831 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20831 : Bundle := named_bundle% "RealMapCertificates/relations/basis20831.json"
theorem reductionProof20831 : EqualModuloRelations reduction20831.relations reduction20831.input reduction20831.output := by lin_cert using reduction20831.terms
theorem substitutionProof20831 : IsMapEvaluation generatorImages reduction20831.relations [8,8,8,8,890] reduction20831.output := by lin_cert using reduction20831.terms
def image20832 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20832 : InImage map_45_253 image20832 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20832 : Bundle := named_bundle% "RealMapCertificates/relations/basis20832.json"
theorem reductionProof20832 : EqualModuloRelations reduction20832.relations reduction20832.input reduction20832.output := by lin_cert using reduction20832.terms
theorem substitutionProof20832 : IsMapEvaluation generatorImages reduction20832.relations [0,0,0,0,0,0,0,2196] reduction20832.output := by lin_cert using reduction20832.terms
def image20833 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20833 : InImage map_45_253 image20833 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20833 : Bundle := named_bundle% "RealMapCertificates/relations/basis20833.json"
theorem reductionProof20833 : EqualModuloRelations reduction20833.relations reduction20833.input reduction20833.output := by lin_cert using reduction20833.terms
theorem substitutionProof20833 : IsMapEvaluation generatorImages reduction20833.relations [0,0,0,0,0,0,0,0,64,897] reduction20833.output := by lin_cert using reduction20833.terms
def map_45_254 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image21099 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21099 : InImage map_45_254 image21099 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21099 : Bundle := named_bundle% "RealMapCertificates/relations/basis21099.json"
theorem reductionProof21099 : EqualModuloRelations reduction21099.relations reduction21099.input reduction21099.output := by lin_cert using reduction21099.terms
theorem substitutionProof21099 : IsMapEvaluation generatorImages reduction21099.relations [42,64,491] reduction21099.output := by lin_cert using reduction21099.terms
def image21100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21100 : InImage map_45_254 image21100 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21100 : Bundle := named_bundle% "RealMapCertificates/relations/basis21100.json"
theorem reductionProof21100 : EqualModuloRelations reduction21100.relations reduction21100.input reduction21100.output := by lin_cert using reduction21100.terms
theorem substitutionProof21100 : IsMapEvaluation generatorImages reduction21100.relations [8,64,796] reduction21100.output := by lin_cert using reduction21100.terms
def image21101 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21101 : InImage map_45_254 image21101 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21101 : Bundle := named_bundle% "RealMapCertificates/relations/basis21101.json"
theorem reductionProof21101 : EqualModuloRelations reduction21101.relations reduction21101.input reduction21101.output := by lin_cert using reduction21101.terms
theorem substitutionProof21101 : IsMapEvaluation generatorImages reduction21101.relations [8,8,8,8,13,13,13,219] reduction21101.output := by lin_cert using reduction21101.terms
def image21102 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21102 : InImage map_45_254 image21102 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21102 : Bundle := named_bundle% "RealMapCertificates/relations/basis21102.json"
theorem reductionProof21102 : EqualModuloRelations reduction21102.relations reduction21102.input reduction21102.output := by lin_cert using reduction21102.terms
theorem substitutionProof21102 : IsMapEvaluation generatorImages reduction21102.relations [8,8,8,8,8,8,518] reduction21102.output := by lin_cert using reduction21102.terms
def image21103 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21103 : InImage map_45_254 image21103 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21103 : Bundle := named_bundle% "RealMapCertificates/relations/basis21103.json"
theorem reductionProof21103 : EqualModuloRelations reduction21103.relations reduction21103.input reduction21103.output := by lin_cert using reduction21103.terms
theorem substitutionProof21103 : IsMapEvaluation generatorImages reduction21103.relations [8,8,8,8,8,8,9,292] reduction21103.output := by lin_cert using reduction21103.terms
def map_45_255 : Matrix 2 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21452 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21452 : InImage map_45_255 image21452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21452 : Bundle := named_bundle% "RealMapCertificates/relations/basis21452.json"
theorem reductionProof21452 : EqualModuloRelations reduction21452.relations reduction21452.input reduction21452.output := by lin_cert using reduction21452.terms
theorem substitutionProof21452 : IsMapEvaluation generatorImages reduction21452.relations [2541] reduction21452.output := by lin_cert using reduction21452.terms
def image21453 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21453 : InImage map_45_255 image21453 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21453 : Bundle := named_bundle% "RealMapCertificates/relations/basis21453.json"
theorem reductionProof21453 : EqualModuloRelations reduction21453.relations reduction21453.input reduction21453.output := by lin_cert using reduction21453.terms
theorem substitutionProof21453 : IsMapEvaluation generatorImages reduction21453.relations [8,8,16,64,299] reduction21453.output := by lin_cert using reduction21453.terms
def image21454 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21454 : InImage map_45_255 image21454 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21454 : Bundle := named_bundle% "RealMapCertificates/relations/basis21454.json"
theorem reductionProof21454 : EqualModuloRelations reduction21454.relations reduction21454.input reduction21454.output := by lin_cert using reduction21454.terms
theorem substitutionProof21454 : IsMapEvaluation generatorImages reduction21454.relations [8,8,9,13,13,13,13,13,13,51] reduction21454.output := by lin_cert using reduction21454.terms
def image21455 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21455 : InImage map_45_255 image21455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21455 : Bundle := named_bundle% "RealMapCertificates/relations/basis21455.json"
theorem reductionProof21455 : EqualModuloRelations reduction21455.relations reduction21455.input reduction21455.output := by lin_cert using reduction21455.terms
theorem substitutionProof21455 : IsMapEvaluation generatorImages reduction21455.relations [8,8,8,8,8,13,13,13,13,80] reduction21455.output := by lin_cert using reduction21455.terms
def image21456 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21456 : InImage map_45_255 image21456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21456 : Bundle := named_bundle% "RealMapCertificates/relations/basis21456.json"
theorem reductionProof21456 : EqualModuloRelations reduction21456.relations reduction21456.input reduction21456.output := by lin_cert using reduction21456.terms
theorem substitutionProof21456 : IsMapEvaluation generatorImages reduction21456.relations [8,8,8,8,8,8,530] reduction21456.output := by lin_cert using reduction21456.terms
def map_45_256 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image21724 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21724 : InImage map_45_256 image21724 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21724 : Bundle := named_bundle% "RealMapCertificates/relations/basis21724.json"
theorem reductionProof21724 : EqualModuloRelations reduction21724.relations reduction21724.input reduction21724.output := by lin_cert using reduction21724.terms
theorem substitutionProof21724 : IsMapEvaluation generatorImages reduction21724.relations [17,149,380] reduction21724.output := by lin_cert using reduction21724.terms
def image21725 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21725 : InImage map_45_256 image21725 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21725 : Bundle := named_bundle% "RealMapCertificates/relations/basis21725.json"
theorem reductionProof21725 : EqualModuloRelations reduction21725.relations reduction21725.input reduction21725.output := by lin_cert using reduction21725.terms
theorem substitutionProof21725 : IsMapEvaluation generatorImages reduction21725.relations [8,8,8,8,8,715] reduction21725.output := by lin_cert using reduction21725.terms
def map_45_257 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22051 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22051 : InImage map_45_257 image22051 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22051 : Bundle := named_bundle% "RealMapCertificates/relations/basis22051.json"
theorem reductionProof22051 : EqualModuloRelations reduction22051.relations reduction22051.input reduction22051.output := by lin_cert using reduction22051.terms
theorem substitutionProof22051 : IsMapEvaluation generatorImages reduction22051.relations [17,17,113,260] reduction22051.output := by lin_cert using reduction22051.terms
def image22052 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22052 : InImage map_45_257 image22052 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22052 : Bundle := named_bundle% "RealMapCertificates/relations/basis22052.json"
theorem reductionProof22052 : EqualModuloRelations reduction22052.relations reduction22052.input reduction22052.output := by lin_cert using reduction22052.terms
theorem substitutionProof22052 : IsMapEvaluation generatorImages reduction22052.relations [8,64,831] reduction22052.output := by lin_cert using reduction22052.terms
def image22053 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22053 : InImage map_45_257 image22053 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22053 : Bundle := named_bundle% "RealMapCertificates/relations/basis22053.json"
theorem reductionProof22053 : EqualModuloRelations reduction22053.relations reduction22053.input reduction22053.output := by lin_cert using reduction22053.terms
theorem substitutionProof22053 : IsMapEvaluation generatorImages reduction22053.relations [8,8,8,9,13,13,13,219] reduction22053.output := by lin_cert using reduction22053.terms
def image22054 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22054 : InImage map_45_257 image22054 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22054 : Bundle := named_bundle% "RealMapCertificates/relations/basis22054.json"
theorem reductionProof22054 : EqualModuloRelations reduction22054.relations reduction22054.input reduction22054.output := by lin_cert using reduction22054.terms
theorem substitutionProof22054 : IsMapEvaluation generatorImages reduction22054.relations [8,8,8,8,8,8,550] reduction22054.output := by lin_cert using reduction22054.terms
def image22055 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22055 : InImage map_45_257 image22055 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22055 : Bundle := named_bundle% "RealMapCertificates/relations/basis22055.json"
theorem reductionProof22055 : EqualModuloRelations reduction22055.relations reduction22055.input reduction22055.output := by lin_cert using reduction22055.terms
theorem substitutionProof22055 : IsMapEvaluation generatorImages reduction22055.relations [8,8,8,8,8,8,13,292] reduction22055.output := by lin_cert using reduction22055.terms
def image22056 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22056 : InImage map_45_257 image22056 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22056 : Bundle := named_bundle% "RealMapCertificates/relations/basis22056.json"
theorem reductionProof22056 : EqualModuloRelations reduction22056.relations reduction22056.input reduction22056.output := by lin_cert using reduction22056.terms
theorem substitutionProof22056 : IsMapEvaluation generatorImages reduction22056.relations [0,64,1060] reduction22056.output := by lin_cert using reduction22056.terms
def map_45_258 : Matrix 2 5 := fun i j => ([false,true,false,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22413 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22413 : InImage map_45_258 image22413 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22413 : Bundle := named_bundle% "RealMapCertificates/relations/basis22413.json"
theorem reductionProof22413 : EqualModuloRelations reduction22413.relations reduction22413.input reduction22413.output := by lin_cert using reduction22413.terms
theorem substitutionProof22413 : IsMapEvaluation generatorImages reduction22413.relations [8,1990] reduction22413.output := by lin_cert using reduction22413.terms
def image22414 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22414 : InImage map_45_258 image22414 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22414 : Bundle := named_bundle% "RealMapCertificates/relations/basis22414.json"
theorem reductionProof22414 : EqualModuloRelations reduction22414.relations reduction22414.input reduction22414.output := by lin_cert using reduction22414.terms
theorem substitutionProof22414 : IsMapEvaluation generatorImages reduction22414.relations [8,8,13,13,13,13,13,13,13,51] reduction22414.output := by lin_cert using reduction22414.terms
def image22415 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22415 : InImage map_45_258 image22415 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22415 : Bundle := named_bundle% "RealMapCertificates/relations/basis22415.json"
theorem reductionProof22415 : EqualModuloRelations reduction22415.relations reduction22415.input reduction22415.output := by lin_cert using reduction22415.terms
theorem substitutionProof22415 : IsMapEvaluation generatorImages reduction22415.relations [8,8,8,64,64,113] reduction22415.output := by lin_cert using reduction22415.terms
def image22416 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22416 : InImage map_45_258 image22416 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22416 : Bundle := named_bundle% "RealMapCertificates/relations/basis22416.json"
theorem reductionProof22416 : EqualModuloRelations reduction22416.relations reduction22416.input reduction22416.output := by lin_cert using reduction22416.terms
theorem substitutionProof22416 : IsMapEvaluation generatorImages reduction22416.relations [8,8,8,8,9,13,13,13,13,80] reduction22416.output := by lin_cert using reduction22416.terms
def image22417 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22417 : InImage map_45_258 image22417 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22417 : Bundle := named_bundle% "RealMapCertificates/relations/basis22417.json"
theorem reductionProof22417 : EqualModuloRelations reduction22417.relations reduction22417.input reduction22417.output := by lin_cert using reduction22417.terms
theorem substitutionProof22417 : IsMapEvaluation generatorImages reduction22417.relations [8,8,8,8,8,8,17,267] reduction22417.output := by lin_cert using reduction22417.terms
end RealMapCertificates
