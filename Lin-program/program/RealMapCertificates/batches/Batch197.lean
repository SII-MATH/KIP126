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
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 45 => [[5,5,8]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 51 => [[7,7,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 80 => []
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 219 => [[7,7,7,12]]
  | 224 => []
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 260 => []
  | 267 => []
  | 292 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 297 => []
  | 299 => []
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 379 => [[1,4,4,4,4,4,4,4,4,4,4,4]]
  | 383 => []
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 416 => [[2,4,4,4,4,4,4,4,4,4,4,4]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 432 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 606 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 653 => []
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 715 => [[7,7,7,12,12]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 725 => []
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 807 => []
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 896 => []
  | 897 => []
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 1031 => [[4,4,4,4,4,4,4,5,5,8,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1143 => []
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1362 => [[0,0,4,4,4,4,4,4,9,12,12]]
  | 1363 => [[0,0,4,4,4,4,4,5,8,12,12]]
  | 2093 => [[4,4,5,7,7,12,12,12]]
  | 2740 => []
  | 2741 => []
  | _ => []
def map_45_259 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image22728 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22728 : InImage map_45_259 image22728 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22728 : Bundle := named_bundle% "RealMapCertificates/relations/basis22728.json"
theorem reductionProof22728 : EqualModuloRelations reduction22728.relations reduction22728.input reduction22728.output := by lin_cert using reduction22728.terms
theorem substitutionProof22728 : IsMapEvaluation generatorImages reduction22728.relations [2740] reduction22728.output := by lin_cert using reduction22728.terms
def image22729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22729 : InImage map_45_259 image22729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22729 : Bundle := named_bundle% "RealMapCertificates/relations/basis22729.json"
theorem reductionProof22729 : EqualModuloRelations reduction22729.relations reduction22729.input reduction22729.output := by lin_cert using reduction22729.terms
theorem substitutionProof22729 : IsMapEvaluation generatorImages reduction22729.relations [8,17,149,260] reduction22729.output := by lin_cert using reduction22729.terms
def image22730 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22730 : InImage map_45_259 image22730 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22730 : Bundle := named_bundle% "RealMapCertificates/relations/basis22730.json"
theorem reductionProof22730 : EqualModuloRelations reduction22730.relations reduction22730.input reduction22730.output := by lin_cert using reduction22730.terms
theorem substitutionProof22730 : IsMapEvaluation generatorImages reduction22730.relations [8,8,8,8,9,715] reduction22730.output := by lin_cert using reduction22730.terms
def map_45_260 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image23086 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23086 : InImage map_45_260 image23086 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23086 : Bundle := named_bundle% "RealMapCertificates/relations/basis23086.json"
theorem reductionProof23086 : EqualModuloRelations reduction23086.relations reduction23086.input reduction23086.output := by lin_cert using reduction23086.terms
theorem substitutionProof23086 : IsMapEvaluation generatorImages reduction23086.relations [8,17,17,897] reduction23086.output := by lin_cert using reduction23086.terms
def image23087 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23087 : InImage map_45_260 image23087 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23087 : Bundle := named_bundle% "RealMapCertificates/relations/basis23087.json"
theorem reductionProof23087 : EqualModuloRelations reduction23087.relations reduction23087.input reduction23087.output := by lin_cert using reduction23087.terms
theorem substitutionProof23087 : IsMapEvaluation generatorImages reduction23087.relations [8,8,64,653] reduction23087.output := by lin_cert using reduction23087.terms
def image23088 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23088 : InImage map_45_260 image23088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23088 : Bundle := named_bundle% "RealMapCertificates/relations/basis23088.json"
theorem reductionProof23088 : EqualModuloRelations reduction23088.relations reduction23088.input reduction23088.output := by lin_cert using reduction23088.terms
theorem substitutionProof23088 : IsMapEvaluation generatorImages reduction23088.relations [8,8,8,13,13,13,13,219] reduction23088.output := by lin_cert using reduction23088.terms
def image23089 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23089 : InImage map_45_260 image23089 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23089 : Bundle := named_bundle% "RealMapCertificates/relations/basis23089.json"
theorem reductionProof23089 : EqualModuloRelations reduction23089.relations reduction23089.input reduction23089.output := by lin_cert using reduction23089.terms
theorem substitutionProof23089 : IsMapEvaluation generatorImages reduction23089.relations [8,8,8,8,8,9,13,292] reduction23089.output := by lin_cert using reduction23089.terms
def image23090 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23090 : InImage map_45_260 image23090 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23090 : Bundle := named_bundle% "RealMapCertificates/relations/basis23090.json"
theorem reductionProof23090 : EqualModuloRelations reduction23090.relations reduction23090.input reduction23090.output := by lin_cert using reduction23090.terms
theorem substitutionProof23090 : IsMapEvaluation generatorImages reduction23090.relations [8,8,8,8,8,8,8,383] reduction23090.output := by lin_cert using reduction23090.terms
def map_45_261 : Matrix 4 6 := fun i j => ([false,true,false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23534 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation23534 : InImage map_45_261 image23534 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23534 : Bundle := named_bundle% "RealMapCertificates/relations/basis23534.json"
theorem reductionProof23534 : EqualModuloRelations reduction23534.relations reduction23534.input reduction23534.output := by lin_cert using reduction23534.terms
theorem substitutionProof23534 : IsMapEvaluation generatorImages reduction23534.relations [8,2093] reduction23534.output := by lin_cert using reduction23534.terms
def image23535 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation23535 : InImage map_45_261 image23535 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23535 : Bundle := named_bundle% "RealMapCertificates/relations/basis23535.json"
theorem reductionProof23535 : EqualModuloRelations reduction23535.relations reduction23535.input reduction23535.output := by lin_cert using reduction23535.terms
theorem substitutionProof23535 : IsMapEvaluation generatorImages reduction23535.relations [8,9,13,13,13,13,13,13,13,51] reduction23535.output := by lin_cert using reduction23535.terms
def image23536 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23536 : InImage map_45_261 image23536 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23536 : Bundle := named_bundle% "RealMapCertificates/relations/basis23536.json"
theorem reductionProof23536 : EqualModuloRelations reduction23536.relations reduction23536.input reduction23536.output := by lin_cert using reduction23536.terms
theorem substitutionProof23536 : IsMapEvaluation generatorImages reduction23536.relations [8,8,8,8,64,299] reduction23536.output := by lin_cert using reduction23536.terms
def image23537 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23537 : InImage map_45_261 image23537 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23537 : Bundle := named_bundle% "RealMapCertificates/relations/basis23537.json"
theorem reductionProof23537 : EqualModuloRelations reduction23537.relations reduction23537.input reduction23537.output := by lin_cert using reduction23537.terms
theorem substitutionProof23537 : IsMapEvaluation generatorImages reduction23537.relations [8,8,8,8,13,13,13,13,13,80] reduction23537.output := by lin_cert using reduction23537.terms
def image23538 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23538 : InImage map_45_261 image23538 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23538 : Bundle := named_bundle% "RealMapCertificates/relations/basis23538.json"
theorem reductionProof23538 : EqualModuloRelations reduction23538.relations reduction23538.input reduction23538.output := by lin_cert using reduction23538.terms
theorem substitutionProof23538 : IsMapEvaluation generatorImages reduction23538.relations [8,8,8,8,8,8,20,267] reduction23538.output := by lin_cert using reduction23538.terms
def image23539 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation23539 : InImage map_45_261 image23539 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23539 : Bundle := named_bundle% "RealMapCertificates/relations/basis23539.json"
theorem reductionProof23539 : EqualModuloRelations reduction23539.relations reduction23539.input reduction23539.output := by lin_cert using reduction23539.terms
theorem substitutionProof23539 : IsMapEvaluation generatorImages reduction23539.relations [0,0,2741] reduction23539.output := by lin_cert using reduction23539.terms
def map_46_46 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image222 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation222 : InImage map_46_46 image222 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction222 : Bundle := named_bundle% "RealMapCertificates/relations/basis222.json"
theorem reductionProof222 : EqualModuloRelations reduction222.relations reduction222.input reduction222.output := by lin_cert using reduction222.terms
theorem substitutionProof222 : IsMapEvaluation generatorImages reduction222.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction222.output := by lin_cert using reduction222.terms
def map_46_136 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2805 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2805 : InImage map_46_136 image2805 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2805 : Bundle := named_bundle% "RealMapCertificates/relations/basis2805.json"
theorem reductionProof2805 : EqualModuloRelations reduction2805.relations reduction2805.input reduction2805.output := by lin_cert using reduction2805.terms
theorem substitutionProof2805 : IsMapEvaluation generatorImages reduction2805.relations [1,379] reduction2805.output := by lin_cert using reduction2805.terms
def map_46_137 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2873 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2873 : InImage map_46_137 image2873 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2873 : Bundle := named_bundle% "RealMapCertificates/relations/basis2873.json"
theorem reductionProof2873 : EqualModuloRelations reduction2873.relations reduction2873.input reduction2873.output := by lin_cert using reduction2873.terms
theorem substitutionProof2873 : IsMapEvaluation generatorImages reduction2873.relations [0,416] reduction2873.output := by lin_cert using reduction2873.terms
def map_46_140 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3109 : InImage map_46_140 image3109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3109 : Bundle := named_bundle% "RealMapCertificates/relations/basis3109.json"
theorem reductionProof3109 : EqualModuloRelations reduction3109.relations reduction3109.input reduction3109.output := by lin_cert using reduction3109.terms
theorem substitutionProof3109 : IsMapEvaluation generatorImages reduction3109.relations [0,0,431] reduction3109.output := by lin_cert using reduction3109.terms
def map_46_141 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3197 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3197 : InImage map_46_141 image3197 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3197 : Bundle := named_bundle% "RealMapCertificates/relations/basis3197.json"
theorem reductionProof3197 : EqualModuloRelations reduction3197.relations reduction3197.input reduction3197.output := by lin_cert using reduction3197.terms
theorem substitutionProof3197 : IsMapEvaluation generatorImages reduction3197.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction3197.output := by lin_cert using reduction3197.terms
def map_46_142 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image3288 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation3288 : InImage map_46_142 image3288 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3288 : Bundle := named_bundle% "RealMapCertificates/relations/basis3288.json"
theorem reductionProof3288 : EqualModuloRelations reduction3288.relations reduction3288.input reduction3288.output := by lin_cert using reduction3288.terms
theorem substitutionProof3288 : IsMapEvaluation generatorImages reduction3288.relations [1,1,431] reduction3288.output := by lin_cert using reduction3288.terms
def map_46_143 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3364 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3364 : InImage map_46_143 image3364 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3364 : Bundle := named_bundle% "RealMapCertificates/relations/basis3364.json"
theorem reductionProof3364 : EqualModuloRelations reduction3364.relations reduction3364.input reduction3364.output := by lin_cert using reduction3364.terms
theorem substitutionProof3364 : IsMapEvaluation generatorImages reduction3364.relations [0,0,469] reduction3364.output := by lin_cert using reduction3364.terms
def map_46_146 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image3603 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation3603 : InImage map_46_146 image3603 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3603 : Bundle := named_bundle% "RealMapCertificates/relations/basis3603.json"
theorem reductionProof3603 : EqualModuloRelations reduction3603.relations reduction3603.input reduction3603.output := by lin_cert using reduction3603.terms
theorem substitutionProof3603 : IsMapEvaluation generatorImages reduction3603.relations [0,0,8,295] reduction3603.output := by lin_cert using reduction3603.terms
def map_46_149 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3874 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3874 : InImage map_46_149 image3874 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3874 : Bundle := named_bundle% "RealMapCertificates/relations/basis3874.json"
theorem reductionProof3874 : EqualModuloRelations reduction3874.relations reduction3874.input reduction3874.output := by lin_cert using reduction3874.terms
theorem substitutionProof3874 : IsMapEvaluation generatorImages reduction3874.relations [0,0,8,325] reduction3874.output := by lin_cert using reduction3874.terms
def map_46_152 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image4146 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4146 : InImage map_46_152 image4146 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4146 : Bundle := named_bundle% "RealMapCertificates/relations/basis4146.json"
theorem reductionProof4146 : EqualModuloRelations reduction4146.relations reduction4146.input reduction4146.output := by lin_cert using reduction4146.terms
theorem substitutionProof4146 : IsMapEvaluation generatorImages reduction4146.relations [0,0,8,8,236] reduction4146.output := by lin_cert using reduction4146.terms
def map_46_156 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4474 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4474 : InImage map_46_156 image4474 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4474 : Bundle := named_bundle% "RealMapCertificates/relations/basis4474.json"
theorem reductionProof4474 : EqualModuloRelations reduction4474.relations reduction4474.input reduction4474.output := by lin_cert using reduction4474.terms
theorem substitutionProof4474 : IsMapEvaluation generatorImages reduction4474.relations [17,296] reduction4474.output := by lin_cert using reduction4474.terms
def map_46_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4591 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4591 : InImage map_46_157 image4591 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4591 : Bundle := named_bundle% "RealMapCertificates/relations/basis4591.json"
theorem reductionProof4591 : EqualModuloRelations reduction4591.relations reduction4591.input reduction4591.output := by lin_cert using reduction4591.terms
theorem substitutionProof4591 : IsMapEvaluation generatorImages reduction4591.relations [0,606] reduction4591.output := by lin_cert using reduction4591.terms
def map_46_158 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image4664 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation4664 : InImage map_46_158 image4664 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4664 : Bundle := named_bundle% "RealMapCertificates/relations/basis4664.json"
theorem reductionProof4664 : EqualModuloRelations reduction4664.relations reduction4664.input reduction4664.output := by lin_cert using reduction4664.terms
theorem substitutionProof4664 : IsMapEvaluation generatorImages reduction4664.relations [1,606] reduction4664.output := by lin_cert using reduction4664.terms
def map_46_159 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4744 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4744 : InImage map_46_159 image4744 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4744 : Bundle := named_bundle% "RealMapCertificates/relations/basis4744.json"
theorem reductionProof4744 : EqualModuloRelations reduction4744.relations reduction4744.input reduction4744.output := by lin_cert using reduction4744.terms
theorem substitutionProof4744 : IsMapEvaluation generatorImages reduction4744.relations [17,326] reduction4744.output := by lin_cert using reduction4744.terms
def map_46_162 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image5013 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5013 : InImage map_46_162 image5013 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5013 : Bundle := named_bundle% "RealMapCertificates/relations/basis5013.json"
theorem reductionProof5013 : EqualModuloRelations reduction5013.relations reduction5013.input reduction5013.output := by lin_cert using reduction5013.terms
theorem substitutionProof5013 : IsMapEvaluation generatorImages reduction5013.relations [16,17,183] reduction5013.output := by lin_cert using reduction5013.terms
def map_46_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5137 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5137 : InImage map_46_163 image5137 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5137 : Bundle := named_bundle% "RealMapCertificates/relations/basis5137.json"
theorem reductionProof5137 : EqualModuloRelations reduction5137.relations reduction5137.input reduction5137.output := by lin_cert using reduction5137.terms
theorem substitutionProof5137 : IsMapEvaluation generatorImages reduction5137.relations [0,0,0,0,635] reduction5137.output := by lin_cert using reduction5137.terms
def map_46_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5213 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5213 : InImage map_46_164 image5213 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5213 : Bundle := named_bundle% "RealMapCertificates/relations/basis5213.json"
theorem reductionProof5213 : EqualModuloRelations reduction5213.relations reduction5213.input reduction5213.output := by lin_cert using reduction5213.terms
theorem substitutionProof5213 : IsMapEvaluation generatorImages reduction5213.relations [0,0,0,0,0,636] reduction5213.output := by lin_cert using reduction5213.terms
def map_46_165 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5316 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5316 : InImage map_46_165 image5316 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5316 : Bundle := named_bundle% "RealMapCertificates/relations/basis5316.json"
theorem reductionProof5316 : EqualModuloRelations reduction5316.relations reduction5316.input reduction5316.output := by lin_cert using reduction5316.terms
theorem substitutionProof5316 : IsMapEvaluation generatorImages reduction5316.relations [8,17,253] reduction5316.output := by lin_cert using reduction5316.terms
def map_46_168 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image5631 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation5631 : InImage map_46_168 image5631 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5631 : Bundle := named_bundle% "RealMapCertificates/relations/basis5631.json"
theorem reductionProof5631 : EqualModuloRelations reduction5631.relations reduction5631.input reduction5631.output := by lin_cert using reduction5631.terms
theorem substitutionProof5631 : IsMapEvaluation generatorImages reduction5631.relations [8,8,17,183] reduction5631.output := by lin_cert using reduction5631.terms
def map_46_170 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image5861 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation5861 : InImage map_46_170 image5861 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5861 : Bundle := named_bundle% "RealMapCertificates/relations/basis5861.json"
theorem reductionProof5861 : EqualModuloRelations reduction5861.relations reduction5861.input reduction5861.output := by lin_cert using reduction5861.terms
theorem substitutionProof5861 : IsMapEvaluation generatorImages reduction5861.relations [0,0,0,0,0,0,685] reduction5861.output := by lin_cert using reduction5861.terms
def map_46_171 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5977 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5977 : InImage map_46_171 image5977 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5977 : Bundle := named_bundle% "RealMapCertificates/relations/basis5977.json"
theorem reductionProof5977 : EqualModuloRelations reduction5977.relations reduction5977.input reduction5977.output := by lin_cert using reduction5977.terms
theorem substitutionProof5977 : IsMapEvaluation generatorImages reduction5977.relations [8,8,17,200] reduction5977.output := by lin_cert using reduction5977.terms
def map_46_172 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6110 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6110 : InImage map_46_172 image6110 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6110 : Bundle := named_bundle% "RealMapCertificates/relations/basis6110.json"
theorem reductionProof6110 : EqualModuloRelations reduction6110.relations reduction6110.input reduction6110.output := by lin_cert using reduction6110.terms
theorem substitutionProof6110 : IsMapEvaluation generatorImages reduction6110.relations [0,0,0,0,0,0,0,0,686] reduction6110.output := by lin_cert using reduction6110.terms
def map_46_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6200 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6200 : InImage map_46_173 image6200 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6200 : Bundle := named_bundle% "RealMapCertificates/relations/basis6200.json"
theorem reductionProof6200 : EqualModuloRelations reduction6200.relations reduction6200.input reduction6200.output := by lin_cert using reduction6200.terms
theorem substitutionProof6200 : IsMapEvaluation generatorImages reduction6200.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6200.output := by lin_cert using reduction6200.terms
def map_46_174 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6301 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6301 : InImage map_46_174 image6301 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6301 : Bundle := named_bundle% "RealMapCertificates/relations/basis6301.json"
theorem reductionProof6301 : EqualModuloRelations reduction6301.relations reduction6301.input reduction6301.output := by lin_cert using reduction6301.terms
theorem substitutionProof6301 : IsMapEvaluation generatorImages reduction6301.relations [805] reduction6301.output := by lin_cert using reduction6301.terms
def image6302 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation6302 : InImage map_46_174 image6302 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6302 : Bundle := named_bundle% "RealMapCertificates/relations/basis6302.json"
theorem reductionProof6302 : EqualModuloRelations reduction6302.relations reduction6302.input reduction6302.output := by lin_cert using reduction6302.terms
theorem substitutionProof6302 : IsMapEvaluation generatorImages reduction6302.relations [8,8,16,17,111] reduction6302.output := by lin_cert using reduction6302.terms
def map_46_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6449 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6449 : InImage map_46_175 image6449 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6449 : Bundle := named_bundle% "RealMapCertificates/relations/basis6449.json"
theorem reductionProof6449 : EqualModuloRelations reduction6449.relations reduction6449.input reduction6449.output := by lin_cert using reduction6449.terms
theorem substitutionProof6449 : IsMapEvaluation generatorImages reduction6449.relations [0,806] reduction6449.output := by lin_cert using reduction6449.terms
def map_46_177 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image6660 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6660 : InImage map_46_177 image6660 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6660 : Bundle := named_bundle% "RealMapCertificates/relations/basis6660.json"
theorem reductionProof6660 : EqualModuloRelations reduction6660.relations reduction6660.input reduction6660.output := by lin_cert using reduction6660.terms
theorem substitutionProof6660 : IsMapEvaluation generatorImages reduction6660.relations [8,635] reduction6660.output := by lin_cert using reduction6660.terms
def image6661 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6661 : InImage map_46_177 image6661 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6661 : Bundle := named_bundle% "RealMapCertificates/relations/basis6661.json"
theorem reductionProof6661 : EqualModuloRelations reduction6661.relations reduction6661.input reduction6661.output := by lin_cert using reduction6661.terms
theorem substitutionProof6661 : IsMapEvaluation generatorImages reduction6661.relations [8,8,8,17,153] reduction6661.output := by lin_cert using reduction6661.terms
def map_46_178 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image6790 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation6790 : InImage map_46_178 image6790 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6790 : Bundle := named_bundle% "RealMapCertificates/relations/basis6790.json"
theorem reductionProof6790 : EqualModuloRelations reduction6790.relations reduction6790.input reduction6790.output := by lin_cert using reduction6790.terms
theorem substitutionProof6790 : IsMapEvaluation generatorImages reduction6790.relations [0,8,636] reduction6790.output := by lin_cert using reduction6790.terms
def map_46_180 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image7017 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7017 : InImage map_46_180 image7017 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction7017 : Bundle := named_bundle% "RealMapCertificates/relations/basis7017.json"
theorem reductionProof7017 : EqualModuloRelations reduction7017.relations reduction7017.input reduction7017.output := by lin_cert using reduction7017.terms
theorem substitutionProof7017 : IsMapEvaluation generatorImages reduction7017.relations [8,662] reduction7017.output := by lin_cert using reduction7017.terms
def image7018 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7018 : InImage map_46_180 image7018 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction7018 : Bundle := named_bundle% "RealMapCertificates/relations/basis7018.json"
theorem reductionProof7018 : EqualModuloRelations reduction7018.relations reduction7018.input reduction7018.output := by lin_cert using reduction7018.terms
theorem substitutionProof7018 : IsMapEvaluation generatorImages reduction7018.relations [8,8,8,8,17,111] reduction7018.output := by lin_cert using reduction7018.terms
def image7019 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7019 : InImage map_46_180 image7019 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction7019 : Bundle := named_bundle% "RealMapCertificates/relations/basis7019.json"
theorem reductionProof7019 : EqualModuloRelations reduction7019.relations reduction7019.input reduction7019.output := by lin_cert using reduction7019.terms
theorem substitutionProof7019 : IsMapEvaluation generatorImages reduction7019.relations [1,5,685] reduction7019.output := by lin_cert using reduction7019.terms
def map_46_181 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7166 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7166 : InImage map_46_181 image7166 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7166 : Bundle := named_bundle% "RealMapCertificates/relations/basis7166.json"
theorem reductionProof7166 : EqualModuloRelations reduction7166.relations reduction7166.input reduction7166.output := by lin_cert using reduction7166.terms
theorem substitutionProof7166 : IsMapEvaluation generatorImages reduction7166.relations [0,8,663] reduction7166.output := by lin_cert using reduction7166.terms
def image7167 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7167 : InImage map_46_181 image7167 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7167 : Bundle := named_bundle% "RealMapCertificates/relations/basis7167.json"
theorem reductionProof7167 : EqualModuloRelations reduction7167.relations reduction7167.input reduction7167.output := by lin_cert using reduction7167.terms
theorem substitutionProof7167 : IsMapEvaluation generatorImages reduction7167.relations [0,0,871] reduction7167.output := by lin_cert using reduction7167.terms
def map_46_183 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7383 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7383 : InImage map_46_183 image7383 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7383 : Bundle := named_bundle% "RealMapCertificates/relations/basis7383.json"
theorem reductionProof7383 : EqualModuloRelations reduction7383.relations reduction7383.input reduction7383.output := by lin_cert using reduction7383.terms
theorem substitutionProof7383 : IsMapEvaluation generatorImages reduction7383.relations [8,16,402] reduction7383.output := by lin_cert using reduction7383.terms
def image7384 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7384 : InImage map_46_183 image7384 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7384 : Bundle := named_bundle% "RealMapCertificates/relations/basis7384.json"
theorem reductionProof7384 : EqualModuloRelations reduction7384.relations reduction7384.input reduction7384.output := by lin_cert using reduction7384.terms
theorem substitutionProof7384 : IsMapEvaluation generatorImages reduction7384.relations [8,8,8,8,17,117] reduction7384.output := by lin_cert using reduction7384.terms
def map_46_184 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7520 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7520 : InImage map_46_184 image7520 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7520 : Bundle := named_bundle% "RealMapCertificates/relations/basis7520.json"
theorem reductionProof7520 : EqualModuloRelations reduction7520.relations reduction7520.input reduction7520.output := by lin_cert using reduction7520.terms
theorem substitutionProof7520 : IsMapEvaluation generatorImages reduction7520.relations [0,8,16,403] reduction7520.output := by lin_cert using reduction7520.terms
def image7521 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7521 : InImage map_46_184 image7521 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7521 : Bundle := named_bundle% "RealMapCertificates/relations/basis7521.json"
theorem reductionProof7521 : EqualModuloRelations reduction7521.relations reduction7521.input reduction7521.output := by lin_cert using reduction7521.terms
theorem substitutionProof7521 : IsMapEvaluation generatorImages reduction7521.relations [0,0,8,685] reduction7521.output := by lin_cert using reduction7521.terms
def map_46_186 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7744 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7744 : InImage map_46_186 image7744 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7744 : Bundle := named_bundle% "RealMapCertificates/relations/basis7744.json"
theorem reductionProof7744 : EqualModuloRelations reduction7744.relations reduction7744.input reduction7744.output := by lin_cert using reduction7744.terms
theorem substitutionProof7744 : IsMapEvaluation generatorImages reduction7744.relations [8,8,555] reduction7744.output := by lin_cert using reduction7744.terms
def image7745 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7745 : InImage map_46_186 image7745 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7745 : Bundle := named_bundle% "RealMapCertificates/relations/basis7745.json"
theorem reductionProof7745 : EqualModuloRelations reduction7745.relations reduction7745.input reduction7745.output := by lin_cert using reduction7745.terms
theorem substitutionProof7745 : IsMapEvaluation generatorImages reduction7745.relations [8,8,8,8,16,17,50] reduction7745.output := by lin_cert using reduction7745.terms
def map_46_187 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7881 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7881 : InImage map_46_187 image7881 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7881 : Bundle := named_bundle% "RealMapCertificates/relations/basis7881.json"
theorem reductionProof7881 : EqualModuloRelations reduction7881.relations reduction7881.input reduction7881.output := by lin_cert using reduction7881.terms
theorem substitutionProof7881 : IsMapEvaluation generatorImages reduction7881.relations [0,8,8,556] reduction7881.output := by lin_cert using reduction7881.terms
def image7882 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7882 : InImage map_46_187 image7882 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7882 : Bundle := named_bundle% "RealMapCertificates/relations/basis7882.json"
theorem reductionProof7882 : EqualModuloRelations reduction7882.relations reduction7882.input reduction7882.output := by lin_cert using reduction7882.terms
theorem substitutionProof7882 : IsMapEvaluation generatorImages reduction7882.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,807] reduction7882.output := by lin_cert using reduction7882.terms
def map_46_189 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8097 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8097 : InImage map_46_189 image8097 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8097 : Bundle := named_bundle% "RealMapCertificates/relations/basis8097.json"
theorem reductionProof8097 : EqualModuloRelations reduction8097.relations reduction8097.input reduction8097.output := by lin_cert using reduction8097.terms
theorem substitutionProof8097 : IsMapEvaluation generatorImages reduction8097.relations [8,8,8,402] reduction8097.output := by lin_cert using reduction8097.terms
def image8098 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8098 : InImage map_46_189 image8098 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8098 : Bundle := named_bundle% "RealMapCertificates/relations/basis8098.json"
theorem reductionProof8098 : EqualModuloRelations reduction8098.relations reduction8098.input reduction8098.output := by lin_cert using reduction8098.terms
theorem substitutionProof8098 : IsMapEvaluation generatorImages reduction8098.relations [8,8,8,8,8,17,78] reduction8098.output := by lin_cert using reduction8098.terms
def map_46_190 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8231 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8231 : InImage map_46_190 image8231 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8231 : Bundle := named_bundle% "RealMapCertificates/relations/basis8231.json"
theorem reductionProof8231 : EqualModuloRelations reduction8231.relations reduction8231.input reduction8231.output := by lin_cert using reduction8231.terms
theorem substitutionProof8231 : IsMapEvaluation generatorImages reduction8231.relations [1,970] reduction8231.output := by lin_cert using reduction8231.terms
def image8232 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8232 : InImage map_46_190 image8232 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8232 : Bundle := named_bundle% "RealMapCertificates/relations/basis8232.json"
theorem reductionProof8232 : EqualModuloRelations reduction8232.relations reduction8232.input reduction8232.output := by lin_cert using reduction8232.terms
theorem substitutionProof8232 : IsMapEvaluation generatorImages reduction8232.relations [0,8,8,8,403] reduction8232.output := by lin_cert using reduction8232.terms
def map_46_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8340 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8340 : InImage map_46_191 image8340 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8340 : Bundle := named_bundle% "RealMapCertificates/relations/basis8340.json"
theorem reductionProof8340 : EqualModuloRelations reduction8340.relations reduction8340.input reduction8340.output := by lin_cert using reduction8340.terms
theorem substitutionProof8340 : IsMapEvaluation generatorImages reduction8340.relations [1031] reduction8340.output := by lin_cert using reduction8340.terms
def map_46_192 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8469 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8469 : InImage map_46_192 image8469 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8469 : Bundle := named_bundle% "RealMapCertificates/relations/basis8469.json"
theorem reductionProof8469 : EqualModuloRelations reduction8469.relations reduction8469.input reduction8469.output := by lin_cert using reduction8469.terms
theorem substitutionProof8469 : IsMapEvaluation generatorImages reduction8469.relations [8,8,8,432] reduction8469.output := by lin_cert using reduction8469.terms
def image8470 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8470 : InImage map_46_192 image8470 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8470 : Bundle := named_bundle% "RealMapCertificates/relations/basis8470.json"
theorem reductionProof8470 : EqualModuloRelations reduction8470.relations reduction8470.input reduction8470.output := by lin_cert using reduction8470.terms
theorem substitutionProof8470 : IsMapEvaluation generatorImages reduction8470.relations [8,8,8,8,8,8,17,50] reduction8470.output := by lin_cert using reduction8470.terms
def map_46_194 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image8713 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8713 : InImage map_46_194 image8713 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8713 : Bundle := named_bundle% "RealMapCertificates/relations/basis8713.json"
theorem reductionProof8713 : EqualModuloRelations reduction8713.relations reduction8713.input reduction8713.output := by lin_cert using reduction8713.terms
theorem substitutionProof8713 : IsMapEvaluation generatorImages reduction8713.relations [16,686] reduction8713.output := by lin_cert using reduction8713.terms
def map_46_195 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8870 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8870 : InImage map_46_195 image8870 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8870 : Bundle := named_bundle% "RealMapCertificates/relations/basis8870.json"
theorem reductionProof8870 : EqualModuloRelations reduction8870.relations reduction8870.input reduction8870.output := by lin_cert using reduction8870.terms
theorem substitutionProof8870 : IsMapEvaluation generatorImages reduction8870.relations [8,8,8,16,224] reduction8870.output := by lin_cert using reduction8870.terms
def image8871 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8871 : InImage map_46_195 image8871 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8871 : Bundle := named_bundle% "RealMapCertificates/relations/basis8871.json"
theorem reductionProof8871 : EqualModuloRelations reduction8871.relations reduction8871.input reduction8871.output := by lin_cert using reduction8871.terms
theorem substitutionProof8871 : IsMapEvaluation generatorImages reduction8871.relations [8,8,8,8,8,8,17,56] reduction8871.output := by lin_cert using reduction8871.terms
def image8872 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8872 : InImage map_46_195 image8872 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8872 : Bundle := named_bundle% "RealMapCertificates/relations/basis8872.json"
theorem reductionProof8872 : EqualModuloRelations reduction8872.relations reduction8872.input reduction8872.output := by lin_cert using reduction8872.terms
theorem substitutionProof8872 : IsMapEvaluation generatorImages reduction8872.relations [0,0,0,0,1033] reduction8872.output := by lin_cert using reduction8872.terms
def map_46_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9017 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9017 : InImage map_46_196 image9017 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9017 : Bundle := named_bundle% "RealMapCertificates/relations/basis9017.json"
theorem reductionProof9017 : EqualModuloRelations reduction9017.relations reduction9017.input reduction9017.output := by lin_cert using reduction9017.terms
theorem substitutionProof9017 : IsMapEvaluation generatorImages reduction9017.relations [0,0,0,1059] reduction9017.output := by lin_cert using reduction9017.terms
def map_46_197 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9142 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9142 : InImage map_46_197 image9142 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9142 : Bundle := named_bundle% "RealMapCertificates/relations/basis9142.json"
theorem reductionProof9142 : EqualModuloRelations reduction9142.relations reduction9142.input reduction9142.output := by lin_cert using reduction9142.terms
theorem substitutionProof9142 : IsMapEvaluation generatorImages reduction9142.relations [8,872] reduction9142.output := by lin_cert using reduction9142.terms
def map_46_198 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9309 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9309 : InImage map_46_198 image9309 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9309 : Bundle := named_bundle% "RealMapCertificates/relations/basis9309.json"
theorem reductionProof9309 : EqualModuloRelations reduction9309.relations reduction9309.input reduction9309.output := by lin_cert using reduction9309.terms
theorem substitutionProof9309 : IsMapEvaluation generatorImages reduction9309.relations [8,8,8,8,297] reduction9309.output := by lin_cert using reduction9309.terms
def image9310 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9310 : InImage map_46_198 image9310 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9310 : Bundle := named_bundle% "RealMapCertificates/relations/basis9310.json"
theorem reductionProof9310 : EqualModuloRelations reduction9310.relations reduction9310.input reduction9310.output := by lin_cert using reduction9310.terms
theorem substitutionProof9310 : IsMapEvaluation generatorImages reduction9310.relations [8,8,8,8,8,8,16,17,17] reduction9310.output := by lin_cert using reduction9310.terms
def map_46_200 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9603 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9603 : InImage map_46_200 image9603 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9603 : Bundle := named_bundle% "RealMapCertificates/relations/basis9603.json"
theorem reductionProof9603 : EqualModuloRelations reduction9603.relations reduction9603.input reduction9603.output := by lin_cert using reduction9603.terms
theorem substitutionProof9603 : IsMapEvaluation generatorImages reduction9603.relations [8,8,686] reduction9603.output := by lin_cert using reduction9603.terms
def image9604 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9604 : InImage map_46_200 image9604 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9604 : Bundle := named_bundle% "RealMapCertificates/relations/basis9604.json"
theorem reductionProof9604 : EqualModuloRelations reduction9604.relations reduction9604.input reduction9604.output := by lin_cert using reduction9604.terms
theorem substitutionProof9604 : IsMapEvaluation generatorImages reduction9604.relations [0,0,64,402] reduction9604.output := by lin_cert using reduction9604.terms
def map_46_201 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9797 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9797 : InImage map_46_201 image9797 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9797 : Bundle := named_bundle% "RealMapCertificates/relations/basis9797.json"
theorem reductionProof9797 : EqualModuloRelations reduction9797.relations reduction9797.input reduction9797.output := by lin_cert using reduction9797.terms
theorem substitutionProof9797 : IsMapEvaluation generatorImages reduction9797.relations [8,8,8,8,8,224] reduction9797.output := by lin_cert using reduction9797.terms
def image9798 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9798 : InImage map_46_201 image9798 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9798 : Bundle := named_bundle% "RealMapCertificates/relations/basis9798.json"
theorem reductionProof9798 : EqualModuloRelations reduction9798.relations reduction9798.input reduction9798.output := by lin_cert using reduction9798.terms
theorem substitutionProof9798 : IsMapEvaluation generatorImages reduction9798.relations [8,8,8,8,8,8,8,17,40] reduction9798.output := by lin_cert using reduction9798.terms
def image9799 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9799 : InImage map_46_201 image9799 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9799 : Bundle := named_bundle% "RealMapCertificates/relations/basis9799.json"
theorem reductionProof9799 : EqualModuloRelations reduction9799.relations reduction9799.input reduction9799.output := by lin_cert using reduction9799.terms
theorem substitutionProof9799 : IsMapEvaluation generatorImages reduction9799.relations [0,0,0,64,403] reduction9799.output := by lin_cert using reduction9799.terms
def map_46_202 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9957 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9957 : InImage map_46_202 image9957 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9957 : Bundle := named_bundle% "RealMapCertificates/relations/basis9957.json"
theorem reductionProof9957 : EqualModuloRelations reduction9957.relations reduction9957.input reduction9957.output := by lin_cert using reduction9957.terms
theorem substitutionProof9957 : IsMapEvaluation generatorImages reduction9957.relations [1,1,64,402] reduction9957.output := by lin_cert using reduction9957.terms
def image9958 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9958 : InImage map_46_202 image9958 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9958 : Bundle := named_bundle% "RealMapCertificates/relations/basis9958.json"
theorem reductionProof9958 : EqualModuloRelations reduction9958.relations reduction9958.input reduction9958.output := by lin_cert using reduction9958.terms
theorem substitutionProof9958 : IsMapEvaluation generatorImages reduction9958.relations [0,0,0,0,0,17,725] reduction9958.output := by lin_cert using reduction9958.terms
def map_46_203 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10099 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10099 : InImage map_46_203 image10099 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10099 : Bundle := named_bundle% "RealMapCertificates/relations/basis10099.json"
theorem reductionProof10099 : EqualModuloRelations reduction10099.relations reduction10099.input reduction10099.output := by lin_cert using reduction10099.terms
theorem substitutionProof10099 : IsMapEvaluation generatorImages reduction10099.relations [8,8,723] reduction10099.output := by lin_cert using reduction10099.terms
def image10100 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10100 : InImage map_46_203 image10100 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10100 : Bundle := named_bundle% "RealMapCertificates/relations/basis10100.json"
theorem reductionProof10100 : EqualModuloRelations reduction10100.relations reduction10100.input reduction10100.output := by lin_cert using reduction10100.terms
theorem substitutionProof10100 : IsMapEvaluation generatorImages reduction10100.relations [0,0,0,0,0,1143] reduction10100.output := by lin_cert using reduction10100.terms
def map_46_204 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image10292 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10292 : InImage map_46_204 image10292 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10292 : Bundle := named_bundle% "RealMapCertificates/relations/basis10292.json"
theorem reductionProof10292 : EqualModuloRelations reduction10292.relations reduction10292.input reduction10292.output := by lin_cert using reduction10292.terms
theorem substitutionProof10292 : IsMapEvaluation generatorImages reduction10292.relations [8,8,8,8,8,237] reduction10292.output := by lin_cert using reduction10292.terms
def image10293 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10293 : InImage map_46_204 image10293 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10293 : Bundle := named_bundle% "RealMapCertificates/relations/basis10293.json"
theorem reductionProof10293 : EqualModuloRelations reduction10293.relations reduction10293.input reduction10293.output := by lin_cert using reduction10293.terms
theorem substitutionProof10293 : IsMapEvaluation generatorImages reduction10293.relations [8,8,8,8,8,8,8,8,17,17] reduction10293.output := by lin_cert using reduction10293.terms
def map_46_206 : Matrix 3 2 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image10623 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10623 : InImage map_46_206 image10623 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10623 : Bundle := named_bundle% "RealMapCertificates/relations/basis10623.json"
theorem reductionProof10623 : EqualModuloRelations reduction10623.relations reduction10623.input reduction10623.output := by lin_cert using reduction10623.terms
theorem substitutionProof10623 : IsMapEvaluation generatorImages reduction10623.relations [1301] reduction10623.output := by lin_cert using reduction10623.terms
def image10624 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation10624 : InImage map_46_206 image10624 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10624 : Bundle := named_bundle% "RealMapCertificates/relations/basis10624.json"
theorem reductionProof10624 : EqualModuloRelations reduction10624.relations reduction10624.input reduction10624.output := by lin_cert using reduction10624.terms
theorem substitutionProof10624 : IsMapEvaluation generatorImages reduction10624.relations [8,8,49,245] reduction10624.output := by lin_cert using reduction10624.terms
def map_46_207 : Matrix 2 4 := fun i j => ([false,false,true,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image10842 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10842 : InImage map_46_207 image10842 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction10842 : Bundle := named_bundle% "RealMapCertificates/relations/basis10842.json"
theorem reductionProof10842 : EqualModuloRelations reduction10842.relations reduction10842.input reduction10842.output := by lin_cert using reduction10842.terms
theorem substitutionProof10842 : IsMapEvaluation generatorImages reduction10842.relations [1314] reduction10842.output := by lin_cert using reduction10842.terms
def image10843 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10843 : InImage map_46_207 image10843 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction10843 : Bundle := named_bundle% "RealMapCertificates/relations/basis10843.json"
theorem reductionProof10843 : EqualModuloRelations reduction10843.relations reduction10843.input reduction10843.output := by lin_cert using reduction10843.terms
theorem substitutionProof10843 : IsMapEvaluation generatorImages reduction10843.relations [8,8,8,8,8,16,137] reduction10843.output := by lin_cert using reduction10843.terms
def image10844 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10844 : InImage map_46_207 image10844 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction10844 : Bundle := named_bundle% "RealMapCertificates/relations/basis10844.json"
theorem reductionProof10844 : EqualModuloRelations reduction10844.relations reduction10844.input reduction10844.output := by lin_cert using reduction10844.terms
theorem substitutionProof10844 : IsMapEvaluation generatorImages reduction10844.relations [8,8,8,8,8,8,8,8,17,20] reduction10844.output := by lin_cert using reduction10844.terms
def image10845 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation10845 : InImage map_46_207 image10845 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction10845 : Bundle := named_bundle% "RealMapCertificates/relations/basis10845.json"
theorem reductionProof10845 : EqualModuloRelations reduction10845.relations reduction10845.input reduction10845.output := by lin_cert using reduction10845.terms
theorem substitutionProof10845 : IsMapEvaluation generatorImages reduction10845.relations [0,0,0,0,64,452] reduction10845.output := by lin_cert using reduction10845.terms
def map_46_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11001 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11001 : InImage map_46_208 image11001 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11001 : Bundle := named_bundle% "RealMapCertificates/relations/basis11001.json"
theorem reductionProof11001 : EqualModuloRelations reduction11001.relations reduction11001.input reduction11001.output := by lin_cert using reduction11001.terms
theorem substitutionProof11001 : IsMapEvaluation generatorImages reduction11001.relations [0,0,0,0,0,138,244] reduction11001.output := by lin_cert using reduction11001.terms
def map_46_209 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11156 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11156 : InImage map_46_209 image11156 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11156 : Bundle := named_bundle% "RealMapCertificates/relations/basis11156.json"
theorem reductionProof11156 : EqualModuloRelations reduction11156.relations reduction11156.input reduction11156.output := by lin_cert using reduction11156.terms
theorem substitutionProof11156 : IsMapEvaluation generatorImages reduction11156.relations [8,1033] reduction11156.output := by lin_cert using reduction11156.terms
def image11157 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11157 : InImage map_46_209 image11157 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11157 : Bundle := named_bundle% "RealMapCertificates/relations/basis11157.json"
theorem reductionProof11157 : EqualModuloRelations reduction11157.relations reduction11157.input reduction11157.output := by lin_cert using reduction11157.terms
theorem substitutionProof11157 : IsMapEvaluation generatorImages reduction11157.relations [8,8,8,596] reduction11157.output := by lin_cert using reduction11157.terms
def map_46_210 : Matrix 4 3 := fun i j => ([false,false,true,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image11349 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation11349 : InImage map_46_210 image11349 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11349 : Bundle := named_bundle% "RealMapCertificates/relations/basis11349.json"
theorem reductionProof11349 : EqualModuloRelations reduction11349.relations reduction11349.input reduction11349.output := by lin_cert using reduction11349.terms
theorem substitutionProof11349 : IsMapEvaluation generatorImages reduction11349.relations [1362] reduction11349.output := by lin_cert using reduction11349.terms
def image11350 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11350 : InImage map_46_210 image11350 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11350 : Bundle := named_bundle% "RealMapCertificates/relations/basis11350.json"
theorem reductionProof11350 : EqualModuloRelations reduction11350.relations reduction11350.input reduction11350.output := by lin_cert using reduction11350.terms
theorem substitutionProof11350 : IsMapEvaluation generatorImages reduction11350.relations [8,8,8,8,8,8,184] reduction11350.output := by lin_cert using reduction11350.terms
def image11351 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11351 : InImage map_46_210 image11351 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11351 : Bundle := named_bundle% "RealMapCertificates/relations/basis11351.json"
theorem reductionProof11351 : EqualModuloRelations reduction11351.relations reduction11351.input reduction11351.output := by lin_cert using reduction11351.terms
theorem substitutionProof11351 : IsMapEvaluation generatorImages reduction11351.relations [8,8,8,8,8,8,8,8,16,23] reduction11351.output := by lin_cert using reduction11351.terms
def map_46_212 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image11686 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11686 : InImage map_46_212 image11686 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11686 : Bundle := named_bundle% "RealMapCertificates/relations/basis11686.json"
theorem reductionProof11686 : EqualModuloRelations reduction11686.relations reduction11686.input reduction11686.output := by lin_cert using reduction11686.terms
theorem substitutionProof11686 : IsMapEvaluation generatorImages reduction11686.relations [8,1076] reduction11686.output := by lin_cert using reduction11686.terms
def image11687 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11687 : InImage map_46_212 image11687 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11687 : Bundle := named_bundle% "RealMapCertificates/relations/basis11687.json"
theorem reductionProof11687 : EqualModuloRelations reduction11687.relations reduction11687.input reduction11687.output := by lin_cert using reduction11687.terms
theorem substitutionProof11687 : IsMapEvaluation generatorImages reduction11687.relations [8,8,8,31,245] reduction11687.output := by lin_cert using reduction11687.terms
def image11688 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11688 : InImage map_46_212 image11688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11688 : Bundle := named_bundle% "RealMapCertificates/relations/basis11688.json"
theorem reductionProof11688 : EqualModuloRelations reduction11688.relations reduction11688.input reduction11688.output := by lin_cert using reduction11688.terms
theorem substitutionProof11688 : IsMapEvaluation generatorImages reduction11688.relations [1,1363] reduction11688.output := by lin_cert using reduction11688.terms
def map_46_213 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11929 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11929 : InImage map_46_213 image11929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11929 : Bundle := named_bundle% "RealMapCertificates/relations/basis11929.json"
theorem reductionProof11929 : EqualModuloRelations reduction11929.relations reduction11929.input reduction11929.output := by lin_cert using reduction11929.terms
theorem substitutionProof11929 : IsMapEvaluation generatorImages reduction11929.relations [8,1093] reduction11929.output := by lin_cert using reduction11929.terms
def image11930 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11930 : InImage map_46_213 image11930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11930 : Bundle := named_bundle% "RealMapCertificates/relations/basis11930.json"
theorem reductionProof11930 : EqualModuloRelations reduction11930.relations reduction11930.input reduction11930.output := by lin_cert using reduction11930.terms
theorem substitutionProof11930 : IsMapEvaluation generatorImages reduction11930.relations [8,8,8,8,8,8,8,137] reduction11930.output := by lin_cert using reduction11930.terms
def image11931 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11931 : InImage map_46_213 image11931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11931 : Bundle := named_bundle% "RealMapCertificates/relations/basis11931.json"
theorem reductionProof11931 : EqualModuloRelations reduction11931.relations reduction11931.input reduction11931.output := by lin_cert using reduction11931.terms
theorem substitutionProof11931 : IsMapEvaluation generatorImages reduction11931.relations [8,8,8,8,8,8,8,8,8,45] reduction11931.output := by lin_cert using reduction11931.terms
def image11932 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11932 : InImage map_46_213 image11932 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11932 : Bundle := named_bundle% "RealMapCertificates/relations/basis11932.json"
theorem reductionProof11932 : EqualModuloRelations reduction11932.relations reduction11932.input reduction11932.output := by lin_cert using reduction11932.terms
theorem substitutionProof11932 : IsMapEvaluation generatorImages reduction11932.relations [0,17,896] reduction11932.output := by lin_cert using reduction11932.terms
end RealMapCertificates
