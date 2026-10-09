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
  | 72 => []
  | 79 => []
  | 89 => []
  | 101 => []
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 206 => [[4,6,8,12]]
  | 207 => [[5,5,8,12]]
  | 218 => [[5,5,9,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 233 => [[5,7,9,12]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 248 => [[7,7,9,12]]
  | 257 => [[4,4,6,8,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 343 => [[4,4,4,6,8,12]]
  | 344 => [[4,4,5,5,8,12]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 557 => [[0,0,4,9,12,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 809 => []
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 1287 => [[4,4,4,5,7,9,12,12]]
  | 1500 => [[4,4,4,4,5,7,9,12,12]]
  | 1551 => [[4,4,4,4,7,7,9,12,12]]
  | 1650 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1717 => [[4,4,4,4,4,5,7,9,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1750 => []
  | 2091 => [[4,4,4,6,8,12,12,12]]
  | _ => []
def map_46_214 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image12127 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12127 : InImage map_46_214 image12127 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12127 : Bundle := named_bundle% "RealMapCertificates/relations/basis12127.json"
theorem reductionProof12127 : EqualModuloRelations reduction12127.relations reduction12127.input reduction12127.output := by lin_cert using reduction12127.terms
theorem substitutionProof12127 : IsMapEvaluation generatorImages reduction12127.relations [0,0,0,0,0,0,149,244] reduction12127.output := by lin_cert using reduction12127.terms
def map_46_215 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12291 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12291 : InImage map_46_215 image12291 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12291 : Bundle := named_bundle% "RealMapCertificates/relations/basis12291.json"
theorem reductionProof12291 : EqualModuloRelations reduction12291.relations reduction12291.input reduction12291.output := by lin_cert using reduction12291.terms
theorem substitutionProof12291 : IsMapEvaluation generatorImages reduction12291.relations [8,16,725] reduction12291.output := by lin_cert using reduction12291.terms
def image12292 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12292 : InImage map_46_215 image12292 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12292 : Bundle := named_bundle% "RealMapCertificates/relations/basis12292.json"
theorem reductionProof12292 : EqualModuloRelations reduction12292.relations reduction12292.input reduction12292.output := by lin_cert using reduction12292.terms
theorem substitutionProof12292 : IsMapEvaluation generatorImages reduction12292.relations [8,8,8,8,489] reduction12292.output := by lin_cert using reduction12292.terms
def map_46_216 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image12496 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12496 : InImage map_46_216 image12496 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12496 : Bundle := named_bundle% "RealMapCertificates/relations/basis12496.json"
theorem reductionProof12496 : EqualModuloRelations reduction12496.relations reduction12496.input reduction12496.output := by lin_cert using reduction12496.terms
theorem substitutionProof12496 : IsMapEvaluation generatorImages reduction12496.relations [8,138,225] reduction12496.output := by lin_cert using reduction12496.terms
def image12497 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12497 : InImage map_46_216 image12497 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12497 : Bundle := named_bundle% "RealMapCertificates/relations/basis12497.json"
theorem reductionProof12497 : EqualModuloRelations reduction12497.relations reduction12497.input reduction12497.output := by lin_cert using reduction12497.terms
theorem substitutionProof12497 : IsMapEvaluation generatorImages reduction12497.relations [8,8,8,8,8,8,8,146] reduction12497.output := by lin_cert using reduction12497.terms
def image12498 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12498 : InImage map_46_216 image12498 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12498 : Bundle := named_bundle% "RealMapCertificates/relations/basis12498.json"
theorem reductionProof12498 : EqualModuloRelations reduction12498.relations reduction12498.input reduction12498.output := by lin_cert using reduction12498.terms
theorem substitutionProof12498 : IsMapEvaluation generatorImages reduction12498.relations [8,8,8,8,8,8,8,8,8,8,23] reduction12498.output := by lin_cert using reduction12498.terms
def image12499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12499 : InImage map_46_216 image12499 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12499 : Bundle := named_bundle% "RealMapCertificates/relations/basis12499.json"
theorem reductionProof12499 : EqualModuloRelations reduction12499.relations reduction12499.input reduction12499.output := by lin_cert using reduction12499.terms
theorem substitutionProof12499 : IsMapEvaluation generatorImages reduction12499.relations [0,8,17,725] reduction12499.output := by lin_cert using reduction12499.terms
def map_46_218 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12840 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12840 : InImage map_46_218 image12840 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12840 : Bundle := named_bundle% "RealMapCertificates/relations/basis12840.json"
theorem reductionProof12840 : EqualModuloRelations reduction12840.relations reduction12840.input reduction12840.output := by lin_cert using reduction12840.terms
theorem substitutionProof12840 : IsMapEvaluation generatorImages reduction12840.relations [64,595] reduction12840.output := by lin_cert using reduction12840.terms
def image12841 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12841 : InImage map_46_218 image12841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12841 : Bundle := named_bundle% "RealMapCertificates/relations/basis12841.json"
theorem reductionProof12841 : EqualModuloRelations reduction12841.relations reduction12841.input reduction12841.output := by lin_cert using reduction12841.terms
theorem substitutionProof12841 : IsMapEvaluation generatorImages reduction12841.relations [8,8,896] reduction12841.output := by lin_cert using reduction12841.terms
def image12842 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation12842 : InImage map_46_218 image12842 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12842 : Bundle := named_bundle% "RealMapCertificates/relations/basis12842.json"
theorem reductionProof12842 : EqualModuloRelations reduction12842.relations reduction12842.input reduction12842.output := by lin_cert using reduction12842.terms
theorem substitutionProof12842 : IsMapEvaluation generatorImages reduction12842.relations [8,8,8,8,16,245] reduction12842.output := by lin_cert using reduction12842.terms
def map_46_219 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13083 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13083 : InImage map_46_219 image13083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13083 : Bundle := named_bundle% "RealMapCertificates/relations/basis13083.json"
theorem reductionProof13083 : EqualModuloRelations reduction13083.relations reduction13083.input reduction13083.output := by lin_cert using reduction13083.terms
theorem substitutionProof13083 : IsMapEvaluation generatorImages reduction13083.relations [8,8,918] reduction13083.output := by lin_cert using reduction13083.terms
def image13084 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13084 : InImage map_46_219 image13084 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13084 : Bundle := named_bundle% "RealMapCertificates/relations/basis13084.json"
theorem reductionProof13084 : EqualModuloRelations reduction13084.relations reduction13084.input reduction13084.output := by lin_cert using reduction13084.terms
theorem substitutionProof13084 : IsMapEvaluation generatorImages reduction13084.relations [8,8,8,8,8,8,8,16,64] reduction13084.output := by lin_cert using reduction13084.terms
def image13085 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13085 : InImage map_46_219 image13085 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13085 : Bundle := named_bundle% "RealMapCertificates/relations/basis13085.json"
theorem reductionProof13085 : EqualModuloRelations reduction13085.relations reduction13085.input reduction13085.output := by lin_cert using reduction13085.terms
theorem substitutionProof13085 : IsMapEvaluation generatorImages reduction13085.relations [8,8,8,8,8,8,8,8,8,9,23] reduction13085.output := by lin_cert using reduction13085.terms
def image13086 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13086 : InImage map_46_219 image13086 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13086 : Bundle := named_bundle% "RealMapCertificates/relations/basis13086.json"
theorem reductionProof13086 : EqualModuloRelations reduction13086.relations reduction13086.input reduction13086.output := by lin_cert using reduction13086.terms
theorem substitutionProof13086 : IsMapEvaluation generatorImages reduction13086.relations [0,8,17,759] reduction13086.output := by lin_cert using reduction13086.terms
def map_46_221 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13413 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13413 : InImage map_46_221 image13413 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13413 : Bundle := named_bundle% "RealMapCertificates/relations/basis13413.json"
theorem reductionProof13413 : EqualModuloRelations reduction13413.relations reduction13413.input reduction13413.output := by lin_cert using reduction13413.terms
theorem substitutionProof13413 : IsMapEvaluation generatorImages reduction13413.relations [8,64,452] reduction13413.output := by lin_cert using reduction13413.terms
def image13414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13414 : InImage map_46_221 image13414 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13414 : Bundle := named_bundle% "RealMapCertificates/relations/basis13414.json"
theorem reductionProof13414 : EqualModuloRelations reduction13414.relations reduction13414.input reduction13414.output := by lin_cert using reduction13414.terms
theorem substitutionProof13414 : IsMapEvaluation generatorImages reduction13414.relations [8,8,8,725] reduction13414.output := by lin_cert using reduction13414.terms
def image13415 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13415 : InImage map_46_221 image13415 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13415 : Bundle := named_bundle% "RealMapCertificates/relations/basis13415.json"
theorem reductionProof13415 : EqualModuloRelations reduction13415.relations reduction13415.input reduction13415.output := by lin_cert using reduction13415.terms
theorem substitutionProof13415 : IsMapEvaluation generatorImages reduction13415.relations [8,8,8,8,8,344] reduction13415.output := by lin_cert using reduction13415.terms
def map_46_222 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13635 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13635 : InImage map_46_222 image13635 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13635 : Bundle := named_bundle% "RealMapCertificates/relations/basis13635.json"
theorem reductionProof13635 : EqualModuloRelations reduction13635.relations reduction13635.input reduction13635.output := by lin_cert using reduction13635.terms
theorem substitutionProof13635 : IsMapEvaluation generatorImages reduction13635.relations [8,8,954] reduction13635.output := by lin_cert using reduction13635.terms
def image13636 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13636 : InImage map_46_222 image13636 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13636 : Bundle := named_bundle% "RealMapCertificates/relations/basis13636.json"
theorem reductionProof13636 : EqualModuloRelations reduction13636.relations reduction13636.input reduction13636.output := by lin_cert using reduction13636.terms
theorem substitutionProof13636 : IsMapEvaluation generatorImages reduction13636.relations [8,8,8,8,8,8,8,8,112] reduction13636.output := by lin_cert using reduction13636.terms
def image13637 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13637 : InImage map_46_222 image13637 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13637 : Bundle := named_bundle% "RealMapCertificates/relations/basis13637.json"
theorem reductionProof13637 : EqualModuloRelations reduction13637.relations reduction13637.input reduction13637.output := by lin_cert using reduction13637.terms
theorem substitutionProof13637 : IsMapEvaluation generatorImages reduction13637.relations [8,8,8,8,8,8,8,8,8,13,23] reduction13637.output := by lin_cert using reduction13637.terms
def image13638 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13638 : InImage map_46_222 image13638 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13638 : Bundle := named_bundle% "RealMapCertificates/relations/basis13638.json"
theorem reductionProof13638 : EqualModuloRelations reduction13638.relations reduction13638.input reduction13638.output := by lin_cert using reduction13638.terms
theorem substitutionProof13638 : IsMapEvaluation generatorImages reduction13638.relations [0,8,16,17,491] reduction13638.output := by lin_cert using reduction13638.terms
def map_46_224 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13965 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13965 : InImage map_46_224 image13965 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13965 : Bundle := named_bundle% "RealMapCertificates/relations/basis13965.json"
theorem reductionProof13965 : EqualModuloRelations reduction13965.relations reduction13965.input reduction13965.output := by lin_cert using reduction13965.terms
theorem substitutionProof13965 : IsMapEvaluation generatorImages reduction13965.relations [8,64,488] reduction13965.output := by lin_cert using reduction13965.terms
def image13966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13966 : InImage map_46_224 image13966 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13966 : Bundle := named_bundle% "RealMapCertificates/relations/basis13966.json"
theorem reductionProof13966 : EqualModuloRelations reduction13966.relations reduction13966.input reduction13966.output := by lin_cert using reduction13966.terms
theorem substitutionProof13966 : IsMapEvaluation generatorImages reduction13966.relations [8,8,8,759] reduction13966.output := by lin_cert using reduction13966.terms
def image13967 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13967 : InImage map_46_224 image13967 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13967 : Bundle := named_bundle% "RealMapCertificates/relations/basis13967.json"
theorem reductionProof13967 : EqualModuloRelations reduction13967.relations reduction13967.input reduction13967.output := by lin_cert using reduction13967.terms
theorem substitutionProof13967 : IsMapEvaluation generatorImages reduction13967.relations [8,8,8,8,8,8,245] reduction13967.output := by lin_cert using reduction13967.terms
def image13968 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13968 : InImage map_46_224 image13968 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13968 : Bundle := named_bundle% "RealMapCertificates/relations/basis13968.json"
theorem reductionProof13968 : EqualModuloRelations reduction13968.relations reduction13968.input reduction13968.output := by lin_cert using reduction13968.terms
theorem substitutionProof13968 : IsMapEvaluation generatorImages reduction13968.relations [1,5,149,244] reduction13968.output := by lin_cert using reduction13968.terms
def map_46_225 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14207 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14207 : InImage map_46_225 image14207 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14207 : Bundle := named_bundle% "RealMapCertificates/relations/basis14207.json"
theorem reductionProof14207 : EqualModuloRelations reduction14207.relations reduction14207.input reduction14207.output := by lin_cert using reduction14207.terms
theorem substitutionProof14207 : IsMapEvaluation generatorImages reduction14207.relations [8,8,8,778] reduction14207.output := by lin_cert using reduction14207.terms
def image14208 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14208 : InImage map_46_225 image14208 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14208 : Bundle := named_bundle% "RealMapCertificates/relations/basis14208.json"
theorem reductionProof14208 : EqualModuloRelations reduction14208.relations reduction14208.input reduction14208.output := by lin_cert using reduction14208.terms
theorem substitutionProof14208 : IsMapEvaluation generatorImages reduction14208.relations [8,8,8,8,8,8,8,8,9,13,23] reduction14208.output := by lin_cert using reduction14208.terms
def image14209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14209 : InImage map_46_225 image14209 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14209 : Bundle := named_bundle% "RealMapCertificates/relations/basis14209.json"
theorem reductionProof14209 : EqualModuloRelations reduction14209.relations reduction14209.input reduction14209.output := by lin_cert using reduction14209.terms
theorem substitutionProof14209 : IsMapEvaluation generatorImages reduction14209.relations [8,8,8,8,8,8,8,8,8,64] reduction14209.output := by lin_cert using reduction14209.terms
def map_46_227 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image14541 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14541 : InImage map_46_227 image14541 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14541 : Bundle := named_bundle% "RealMapCertificates/relations/basis14541.json"
theorem reductionProof14541 : EqualModuloRelations reduction14541.relations reduction14541.input reduction14541.output := by lin_cert using reduction14541.terms
theorem substitutionProof14541 : IsMapEvaluation generatorImages reduction14541.relations [8,16,64,244] reduction14541.output := by lin_cert using reduction14541.terms
def image14542 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14542 : InImage map_46_227 image14542 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14542 : Bundle := named_bundle% "RealMapCertificates/relations/basis14542.json"
theorem reductionProof14542 : EqualModuloRelations reduction14542.relations reduction14542.input reduction14542.output := by lin_cert using reduction14542.terms
theorem substitutionProof14542 : IsMapEvaluation generatorImages reduction14542.relations [8,8,8,16,491] reduction14542.output := by lin_cert using reduction14542.terms
def image14543 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14543 : InImage map_46_227 image14543 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14543 : Bundle := named_bundle% "RealMapCertificates/relations/basis14543.json"
theorem reductionProof14543 : EqualModuloRelations reduction14543.relations reduction14543.input reduction14543.output := by lin_cert using reduction14543.terms
theorem substitutionProof14543 : IsMapEvaluation generatorImages reduction14543.relations [8,8,8,8,8,8,258] reduction14543.output := by lin_cert using reduction14543.terms
def image14544 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14544 : InImage map_46_227 image14544 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14544 : Bundle := named_bundle% "RealMapCertificates/relations/basis14544.json"
theorem reductionProof14544 : EqualModuloRelations reduction14544.relations reduction14544.input reduction14544.output := by lin_cert using reduction14544.terms
theorem substitutionProof14544 : IsMapEvaluation generatorImages reduction14544.relations [0,1650] reduction14544.output := by lin_cert using reduction14544.terms
def map_46_228 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image14774 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14774 : InImage map_46_228 image14774 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14774 : Bundle := named_bundle% "RealMapCertificates/relations/basis14774.json"
theorem reductionProof14774 : EqualModuloRelations reduction14774.relations reduction14774.input reduction14774.output := by lin_cert using reduction14774.terms
theorem substitutionProof14774 : IsMapEvaluation generatorImages reduction14774.relations [8,8,8,138,138] reduction14774.output := by lin_cert using reduction14774.terms
def image14775 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14775 : InImage map_46_228 image14775 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14775 : Bundle := named_bundle% "RealMapCertificates/relations/basis14775.json"
theorem reductionProof14775 : EqualModuloRelations reduction14775.relations reduction14775.input reduction14775.output := by lin_cert using reduction14775.terms
theorem substitutionProof14775 : IsMapEvaluation generatorImages reduction14775.relations [8,8,8,8,8,8,8,8,13,13,23] reduction14775.output := by lin_cert using reduction14775.terms
def image14776 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14776 : InImage map_46_228 image14776 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14776 : Bundle := named_bundle% "RealMapCertificates/relations/basis14776.json"
theorem reductionProof14776 : EqualModuloRelations reduction14776.relations reduction14776.input reduction14776.output := by lin_cert using reduction14776.terms
theorem substitutionProof14776 : IsMapEvaluation generatorImages reduction14776.relations [8,8,8,8,8,8,8,8,8,72] reduction14776.output := by lin_cert using reduction14776.terms
def image14777 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14777 : InImage map_46_228 image14777 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14777 : Bundle := named_bundle% "RealMapCertificates/relations/basis14777.json"
theorem reductionProof14777 : EqualModuloRelations reduction14777.relations reduction14777.input reduction14777.output := by lin_cert using reduction14777.terms
theorem substitutionProof14777 : IsMapEvaluation generatorImages reduction14777.relations [1,1650] reduction14777.output := by lin_cert using reduction14777.terms
def map_46_229 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image14976 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14976 : InImage map_46_229 image14976 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14976 : Bundle := named_bundle% "RealMapCertificates/relations/basis14976.json"
theorem reductionProof14976 : EqualModuloRelations reduction14976.relations reduction14976.input reduction14976.output := by lin_cert using reduction14976.terms
theorem substitutionProof14976 : IsMapEvaluation generatorImages reduction14976.relations [1717] reduction14976.output := by lin_cert using reduction14976.terms
def map_46_230 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15135 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15135 : InImage map_46_230 image15135 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15135 : Bundle := named_bundle% "RealMapCertificates/relations/basis15135.json"
theorem reductionProof15135 : EqualModuloRelations reduction15135.relations reduction15135.input reduction15135.output := by lin_cert using reduction15135.terms
theorem substitutionProof15135 : IsMapEvaluation generatorImages reduction15135.relations [8,8,64,343] reduction15135.output := by lin_cert using reduction15135.terms
def image15136 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15136 : InImage map_46_230 image15136 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15136 : Bundle := named_bundle% "RealMapCertificates/relations/basis15136.json"
theorem reductionProof15136 : EqualModuloRelations reduction15136.relations reduction15136.input reduction15136.output := by lin_cert using reduction15136.terms
theorem substitutionProof15136 : IsMapEvaluation generatorImages reduction15136.relations [8,8,8,8,623] reduction15136.output := by lin_cert using reduction15136.terms
def image15137 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15137 : InImage map_46_230 image15137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15137 : Bundle := named_bundle% "RealMapCertificates/relations/basis15137.json"
theorem reductionProof15137 : EqualModuloRelations reduction15137.relations reduction15137.input reduction15137.output := by lin_cert using reduction15137.terms
theorem substitutionProof15137 : IsMapEvaluation generatorImages reduction15137.relations [8,8,8,8,8,8,277] reduction15137.output := by lin_cert using reduction15137.terms
def map_46_231 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image15395 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15395 : InImage map_46_231 image15395 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15395 : Bundle := named_bundle% "RealMapCertificates/relations/basis15395.json"
theorem reductionProof15395 : EqualModuloRelations reduction15395.relations reduction15395.input reduction15395.output := by lin_cert using reduction15395.terms
theorem substitutionProof15395 : IsMapEvaluation generatorImages reduction15395.relations [8,8,8,8,637] reduction15395.output := by lin_cert using reduction15395.terms
def image15396 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15396 : InImage map_46_231 image15396 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15396 : Bundle := named_bundle% "RealMapCertificates/relations/basis15396.json"
theorem reductionProof15396 : EqualModuloRelations reduction15396.relations reduction15396.input reduction15396.output := by lin_cert using reduction15396.terms
theorem substitutionProof15396 : IsMapEvaluation generatorImages reduction15396.relations [8,8,8,8,8,8,8,9,13,13,23] reduction15396.output := by lin_cert using reduction15396.terms
def image15397 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15397 : InImage map_46_231 image15397 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15397 : Bundle := named_bundle% "RealMapCertificates/relations/basis15397.json"
theorem reductionProof15397 : EqualModuloRelations reduction15397.relations reduction15397.input reduction15397.output := by lin_cert using reduction15397.terms
theorem substitutionProof15397 : IsMapEvaluation generatorImages reduction15397.relations [8,8,8,8,8,8,8,8,8,79] reduction15397.output := by lin_cert using reduction15397.terms
def map_46_232 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image15591 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15591 : InImage map_46_232 image15591 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15591 : Bundle := named_bundle% "RealMapCertificates/relations/basis15591.json"
theorem reductionProof15591 : EqualModuloRelations reduction15591.relations reduction15591.input reduction15591.output := by lin_cert using reduction15591.terms
theorem substitutionProof15591 : IsMapEvaluation generatorImages reduction15591.relations [244,245] reduction15591.output := by lin_cert using reduction15591.terms
def image15592 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15592 : InImage map_46_232 image15592 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15592 : Bundle := named_bundle% "RealMapCertificates/relations/basis15592.json"
theorem reductionProof15592 : EqualModuloRelations reduction15592.relations reduction15592.input reduction15592.output := by lin_cert using reduction15592.terms
theorem substitutionProof15592 : IsMapEvaluation generatorImages reduction15592.relations [0,0,64,725] reduction15592.output := by lin_cert using reduction15592.terms
def map_46_233 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15788 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15788 : InImage map_46_233 image15788 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15788 : Bundle := named_bundle% "RealMapCertificates/relations/basis15788.json"
theorem reductionProof15788 : EqualModuloRelations reduction15788.relations reduction15788.input reduction15788.output := by lin_cert using reduction15788.terms
theorem substitutionProof15788 : IsMapEvaluation generatorImages reduction15788.relations [8,8,8,64,244] reduction15788.output := by lin_cert using reduction15788.terms
def image15789 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15789 : InImage map_46_233 image15789 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15789 : Bundle := named_bundle% "RealMapCertificates/relations/basis15789.json"
theorem reductionProof15789 : EqualModuloRelations reduction15789.relations reduction15789.input reduction15789.output := by lin_cert using reduction15789.terms
theorem substitutionProof15789 : IsMapEvaluation generatorImages reduction15789.relations [8,8,8,8,8,491] reduction15789.output := by lin_cert using reduction15789.terms
def image15790 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15790 : InImage map_46_233 image15790 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15790 : Bundle := named_bundle% "RealMapCertificates/relations/basis15790.json"
theorem reductionProof15790 : EqualModuloRelations reduction15790.relations reduction15790.input reduction15790.output := by lin_cert using reduction15790.terms
theorem substitutionProof15790 : IsMapEvaluation generatorImages reduction15790.relations [8,8,8,8,8,8,8,207] reduction15790.output := by lin_cert using reduction15790.terms
def image15791 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15791 : InImage map_46_233 image15791 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15791 : Bundle := named_bundle% "RealMapCertificates/relations/basis15791.json"
theorem reductionProof15791 : EqualModuloRelations reduction15791.relations reduction15791.input reduction15791.output := by lin_cert using reduction15791.terms
theorem substitutionProof15791 : IsMapEvaluation generatorImages reduction15791.relations [0,64,752] reduction15791.output := by lin_cert using reduction15791.terms
def image15792 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15792 : InImage map_46_233 image15792 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15792 : Bundle := named_bundle% "RealMapCertificates/relations/basis15792.json"
theorem reductionProof15792 : EqualModuloRelations reduction15792.relations reduction15792.input reduction15792.output := by lin_cert using reduction15792.terms
theorem substitutionProof15792 : IsMapEvaluation generatorImages reduction15792.relations [0,0,0,138,491] reduction15792.output := by lin_cert using reduction15792.terms
def map_46_234 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image16039 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16039 : InImage map_46_234 image16039 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction16039 : Bundle := named_bundle% "RealMapCertificates/relations/basis16039.json"
theorem reductionProof16039 : EqualModuloRelations reduction16039.relations reduction16039.input reduction16039.output := by lin_cert using reduction16039.terms
theorem substitutionProof16039 : IsMapEvaluation generatorImages reduction16039.relations [8,8,8,8,664] reduction16039.output := by lin_cert using reduction16039.terms
def image16040 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16040 : InImage map_46_234 image16040 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction16040 : Bundle := named_bundle% "RealMapCertificates/relations/basis16040.json"
theorem reductionProof16040 : EqualModuloRelations reduction16040.relations reduction16040.input reduction16040.output := by lin_cert using reduction16040.terms
theorem substitutionProof16040 : IsMapEvaluation generatorImages reduction16040.relations [8,8,8,8,8,8,8,13,13,13,23] reduction16040.output := by lin_cert using reduction16040.terms
def image16041 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16041 : InImage map_46_234 image16041 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction16041 : Bundle := named_bundle% "RealMapCertificates/relations/basis16041.json"
theorem reductionProof16041 : EqualModuloRelations reduction16041.relations reduction16041.input reduction16041.output := by lin_cert using reduction16041.terms
theorem substitutionProof16041 : IsMapEvaluation generatorImages reduction16041.relations [8,8,8,8,8,8,8,8,8,89] reduction16041.output := by lin_cert using reduction16041.terms
def image16042 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16042 : InImage map_46_234 image16042 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction16042 : Bundle := named_bundle% "RealMapCertificates/relations/basis16042.json"
theorem reductionProof16042 : EqualModuloRelations reduction16042.relations reduction16042.input reduction16042.output := by lin_cert using reduction16042.terms
theorem substitutionProof16042 : IsMapEvaluation generatorImages reduction16042.relations [1,1,64,725] reduction16042.output := by lin_cert using reduction16042.terms
def image16043 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16043 : InImage map_46_234 image16043 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction16043 : Bundle := named_bundle% "RealMapCertificates/relations/basis16043.json"
theorem reductionProof16043 : EqualModuloRelations reduction16043.relations reduction16043.input reduction16043.output := by lin_cert using reduction16043.terms
theorem substitutionProof16043 : IsMapEvaluation generatorImages reduction16043.relations [0,0,0,1750] reduction16043.output := by lin_cert using reduction16043.terms
def image16044 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16044 : InImage map_46_234 image16044 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction16044 : Bundle := named_bundle% "RealMapCertificates/relations/basis16044.json"
theorem reductionProof16044 : EqualModuloRelations reduction16044.relations reduction16044.input reduction16044.output := by lin_cert using reduction16044.terms
theorem substitutionProof16044 : IsMapEvaluation generatorImages reduction16044.relations [0,0,0,0,0,0,1686] reduction16044.output := by lin_cert using reduction16044.terms
def map_46_235 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16259 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16259 : InImage map_46_235 image16259 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16259 : Bundle := named_bundle% "RealMapCertificates/relations/basis16259.json"
theorem reductionProof16259 : EqualModuloRelations reduction16259.relations reduction16259.input reduction16259.output := by lin_cert using reduction16259.terms
theorem substitutionProof16259 : IsMapEvaluation generatorImages reduction16259.relations [8,1500] reduction16259.output := by lin_cert using reduction16259.terms
def image16260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16260 : InImage map_46_235 image16260 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16260 : Bundle := named_bundle% "RealMapCertificates/relations/basis16260.json"
theorem reductionProof16260 : EqualModuloRelations reduction16260.relations reduction16260.input reduction16260.output := by lin_cert using reduction16260.terms
theorem substitutionProof16260 : IsMapEvaluation generatorImages reduction16260.relations [0,0,64,759] reduction16260.output := by lin_cert using reduction16260.terms
def image16261 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16261 : InImage map_46_235 image16261 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16261 : Bundle := named_bundle% "RealMapCertificates/relations/basis16261.json"
theorem reductionProof16261 : EqualModuloRelations reduction16261.relations reduction16261.input reduction16261.output := by lin_cert using reduction16261.terms
theorem substitutionProof16261 : IsMapEvaluation generatorImages reduction16261.relations [0,0,0,0,0,1735] reduction16261.output := by lin_cert using reduction16261.terms
def map_46_236 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16457 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16457 : InImage map_46_236 image16457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16457 : Bundle := named_bundle% "RealMapCertificates/relations/basis16457.json"
theorem reductionProof16457 : EqualModuloRelations reduction16457.relations reduction16457.input reduction16457.output := by lin_cert using reduction16457.terms
theorem substitutionProof16457 : IsMapEvaluation generatorImages reduction16457.relations [8,8,8,64,257] reduction16457.output := by lin_cert using reduction16457.terms
def image16458 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16458 : InImage map_46_236 image16458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16458 : Bundle := named_bundle% "RealMapCertificates/relations/basis16458.json"
theorem reductionProof16458 : EqualModuloRelations reduction16458.relations reduction16458.input reduction16458.output := by lin_cert using reduction16458.terms
theorem substitutionProof16458 : IsMapEvaluation generatorImages reduction16458.relations [8,8,8,8,8,516] reduction16458.output := by lin_cert using reduction16458.terms
def image16459 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16459 : InImage map_46_236 image16459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16459 : Bundle := named_bundle% "RealMapCertificates/relations/basis16459.json"
theorem reductionProof16459 : EqualModuloRelations reduction16459.relations reduction16459.input reduction16459.output := by lin_cert using reduction16459.terms
theorem substitutionProof16459 : IsMapEvaluation generatorImages reduction16459.relations [8,8,8,8,8,8,8,218] reduction16459.output := by lin_cert using reduction16459.terms
def image16460 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16460 : InImage map_46_236 image16460 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16460 : Bundle := named_bundle% "RealMapCertificates/relations/basis16460.json"
theorem reductionProof16460 : EqualModuloRelations reduction16460.relations reduction16460.input reduction16460.output := by lin_cert using reduction16460.terms
theorem substitutionProof16460 : IsMapEvaluation generatorImages reduction16460.relations [0,0,0,0,0,0,1736] reduction16460.output := by lin_cert using reduction16460.terms
def map_46_237 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16714 : InImage map_46_237 image16714 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16714 : Bundle := named_bundle% "RealMapCertificates/relations/basis16714.json"
theorem reductionProof16714 : EqualModuloRelations reduction16714.relations reduction16714.input reduction16714.output := by lin_cert using reduction16714.terms
theorem substitutionProof16714 : IsMapEvaluation generatorImages reduction16714.relations [64,64,224] reduction16714.output := by lin_cert using reduction16714.terms
def image16715 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16715 : InImage map_46_237 image16715 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16715 : Bundle := named_bundle% "RealMapCertificates/relations/basis16715.json"
theorem reductionProof16715 : EqualModuloRelations reduction16715.relations reduction16715.input reduction16715.output := by lin_cert using reduction16715.terms
theorem substitutionProof16715 : IsMapEvaluation generatorImages reduction16715.relations [8,8,8,8,8,529] reduction16715.output := by lin_cert using reduction16715.terms
def image16716 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16716 : InImage map_46_237 image16716 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16716 : Bundle := named_bundle% "RealMapCertificates/relations/basis16716.json"
theorem reductionProof16716 : EqualModuloRelations reduction16716.relations reduction16716.input reduction16716.output := by lin_cert using reduction16716.terms
theorem substitutionProof16716 : IsMapEvaluation generatorImages reduction16716.relations [8,8,8,8,8,8,9,13,13,13,23] reduction16716.output := by lin_cert using reduction16716.terms
def image16717 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16717 : InImage map_46_237 image16717 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16717 : Bundle := named_bundle% "RealMapCertificates/relations/basis16717.json"
theorem reductionProof16717 : EqualModuloRelations reduction16717.relations reduction16717.input reduction16717.output := by lin_cert using reduction16717.terms
theorem substitutionProof16717 : IsMapEvaluation generatorImages reduction16717.relations [8,8,8,8,8,8,8,8,8,101] reduction16717.output := by lin_cert using reduction16717.terms
def image16718 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16718 : InImage map_46_237 image16718 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16718 : Bundle := named_bundle% "RealMapCertificates/relations/basis16718.json"
theorem reductionProof16718 : EqualModuloRelations reduction16718.relations reduction16718.input reduction16718.output := by lin_cert using reduction16718.terms
theorem substitutionProof16718 : IsMapEvaluation generatorImages reduction16718.relations [0,0,0,0,0,0,0,1737] reduction16718.output := by lin_cert using reduction16718.terms
def map_46_238 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16922 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16922 : InImage map_46_238 image16922 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16922 : Bundle := named_bundle% "RealMapCertificates/relations/basis16922.json"
theorem reductionProof16922 : EqualModuloRelations reduction16922.relations reduction16922.input reduction16922.output := by lin_cert using reduction16922.terms
theorem substitutionProof16922 : IsMapEvaluation generatorImages reduction16922.relations [8,1551] reduction16922.output := by lin_cert using reduction16922.terms
def image16923 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16923 : InImage map_46_238 image16923 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16923 : Bundle := named_bundle% "RealMapCertificates/relations/basis16923.json"
theorem reductionProof16923 : EqualModuloRelations reduction16923.relations reduction16923.input reduction16923.output := by lin_cert using reduction16923.terms
theorem substitutionProof16923 : IsMapEvaluation generatorImages reduction16923.relations [0,64,64,225] reduction16923.output := by lin_cert using reduction16923.terms
def image16924 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16924 : InImage map_46_238 image16924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16924 : Bundle := named_bundle% "RealMapCertificates/relations/basis16924.json"
theorem reductionProof16924 : EqualModuloRelations reduction16924.relations reduction16924.input reduction16924.output := by lin_cert using reduction16924.terms
theorem substitutionProof16924 : IsMapEvaluation generatorImages reduction16924.relations [0,0,16,64,491] reduction16924.output := by lin_cert using reduction16924.terms
def map_46_239 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17145 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17145 : InImage map_46_239 image17145 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17145 : Bundle := named_bundle% "RealMapCertificates/relations/basis17145.json"
theorem reductionProof17145 : EqualModuloRelations reduction17145.relations reduction17145.input reduction17145.output := by lin_cert using reduction17145.terms
theorem substitutionProof17145 : IsMapEvaluation generatorImages reduction17145.relations [8,8,8,16,64,149] reduction17145.output := by lin_cert using reduction17145.terms
def image17146 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17146 : InImage map_46_239 image17146 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17146 : Bundle := named_bundle% "RealMapCertificates/relations/basis17146.json"
theorem reductionProof17146 : EqualModuloRelations reduction17146.relations reduction17146.input reduction17146.output := by lin_cert using reduction17146.terms
theorem substitutionProof17146 : IsMapEvaluation generatorImages reduction17146.relations [8,8,8,8,8,16,260] reduction17146.output := by lin_cert using reduction17146.terms
def image17147 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17147 : InImage map_46_239 image17147 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17147 : Bundle := named_bundle% "RealMapCertificates/relations/basis17147.json"
theorem reductionProof17147 : EqualModuloRelations reduction17147.relations reduction17147.input reduction17147.output := by lin_cert using reduction17147.terms
theorem substitutionProof17147 : IsMapEvaluation generatorImages reduction17147.relations [8,8,8,8,8,8,8,233] reduction17147.output := by lin_cert using reduction17147.terms
def image17148 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17148 : InImage map_46_239 image17148 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17148 : Bundle := named_bundle% "RealMapCertificates/relations/basis17148.json"
theorem reductionProof17148 : EqualModuloRelations reduction17148.relations reduction17148.input reduction17148.output := by lin_cert using reduction17148.terms
theorem substitutionProof17148 : IsMapEvaluation generatorImages reduction17148.relations [0,0,0,0,149,491] reduction17148.output := by lin_cert using reduction17148.terms
def map_46_240 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image17413 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17413 : InImage map_46_240 image17413 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17413 : Bundle := named_bundle% "RealMapCertificates/relations/basis17413.json"
theorem reductionProof17413 : EqualModuloRelations reduction17413.relations reduction17413.input reduction17413.output := by lin_cert using reduction17413.terms
theorem substitutionProof17413 : IsMapEvaluation generatorImages reduction17413.relations [64,64,237] reduction17413.output := by lin_cert using reduction17413.terms
def image17414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17414 : InImage map_46_240 image17414 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17414 : Bundle := named_bundle% "RealMapCertificates/relations/basis17414.json"
theorem reductionProof17414 : EqualModuloRelations reduction17414.relations reduction17414.input reduction17414.output := by lin_cert using reduction17414.terms
theorem substitutionProof17414 : IsMapEvaluation generatorImages reduction17414.relations [8,8,8,8,8,557] reduction17414.output := by lin_cert using reduction17414.terms
def image17415 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17415 : InImage map_46_240 image17415 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17415 : Bundle := named_bundle% "RealMapCertificates/relations/basis17415.json"
theorem reductionProof17415 : EqualModuloRelations reduction17415.relations reduction17415.input reduction17415.output := by lin_cert using reduction17415.terms
theorem substitutionProof17415 : IsMapEvaluation generatorImages reduction17415.relations [8,8,8,8,8,8,13,13,13,13,23] reduction17415.output := by lin_cert using reduction17415.terms
def image17416 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17416 : InImage map_46_240 image17416 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17416 : Bundle := named_bundle% "RealMapCertificates/relations/basis17416.json"
theorem reductionProof17416 : EqualModuloRelations reduction17416.relations reduction17416.input reduction17416.output := by lin_cert using reduction17416.terms
theorem substitutionProof17416 : IsMapEvaluation generatorImages reduction17416.relations [8,8,8,8,8,8,8,8,9,101] reduction17416.output := by lin_cert using reduction17416.terms
def image17417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17417 : InImage map_46_240 image17417 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17417 : Bundle := named_bundle% "RealMapCertificates/relations/basis17417.json"
theorem reductionProof17417 : EqualModuloRelations reduction17417.relations reduction17417.input reduction17417.output := by lin_cert using reduction17417.terms
theorem substitutionProof17417 : IsMapEvaluation generatorImages reduction17417.relations [0,0,0,64,809] reduction17417.output := by lin_cert using reduction17417.terms
def image17418 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17418 : InImage map_46_240 image17418 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17418 : Bundle := named_bundle% "RealMapCertificates/relations/basis17418.json"
theorem reductionProof17418 : EqualModuloRelations reduction17418.relations reduction17418.input reduction17418.output := by lin_cert using reduction17418.terms
theorem substitutionProof17418 : IsMapEvaluation generatorImages reduction17418.relations [0,0,0,0,17,138,260] reduction17418.output := by lin_cert using reduction17418.terms
def map_46_241 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image17687 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17687 : InImage map_46_241 image17687 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17687 : Bundle := named_bundle% "RealMapCertificates/relations/basis17687.json"
theorem reductionProof17687 : EqualModuloRelations reduction17687.relations reduction17687.input reduction17687.output := by lin_cert using reduction17687.terms
theorem substitutionProof17687 : IsMapEvaluation generatorImages reduction17687.relations [8,8,1287] reduction17687.output := by lin_cert using reduction17687.terms
def image17688 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17688 : InImage map_46_241 image17688 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17688 : Bundle := named_bundle% "RealMapCertificates/relations/basis17688.json"
theorem reductionProof17688 : EqualModuloRelations reduction17688.relations reduction17688.input reduction17688.output := by lin_cert using reduction17688.terms
theorem substitutionProof17688 : IsMapEvaluation generatorImages reduction17688.relations [0,0,8,64,623] reduction17688.output := by lin_cert using reduction17688.terms
def image17689 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17689 : InImage map_46_241 image17689 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17689 : Bundle := named_bundle% "RealMapCertificates/relations/basis17689.json"
theorem reductionProof17689 : EqualModuloRelations reduction17689.relations reduction17689.input reduction17689.output := by lin_cert using reduction17689.terms
theorem substitutionProof17689 : IsMapEvaluation generatorImages reduction17689.relations [0,0,0,0,0,64,795] reduction17689.output := by lin_cert using reduction17689.terms
def map_46_242 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image17911 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17911 : InImage map_46_242 image17911 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17911 : Bundle := named_bundle% "RealMapCertificates/relations/basis17911.json"
theorem reductionProof17911 : EqualModuloRelations reduction17911.relations reduction17911.input reduction17911.output := by lin_cert using reduction17911.terms
theorem substitutionProof17911 : IsMapEvaluation generatorImages reduction17911.relations [8,8,8,8,64,206] reduction17911.output := by lin_cert using reduction17911.terms
def image17912 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17912 : InImage map_46_242 image17912 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17912 : Bundle := named_bundle% "RealMapCertificates/relations/basis17912.json"
theorem reductionProof17912 : EqualModuloRelations reduction17912.relations reduction17912.input reduction17912.output := by lin_cert using reduction17912.terms
theorem substitutionProof17912 : IsMapEvaluation generatorImages reduction17912.relations [8,8,8,8,8,8,380] reduction17912.output := by lin_cert using reduction17912.terms
def image17913 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17913 : InImage map_46_242 image17913 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17913 : Bundle := named_bundle% "RealMapCertificates/relations/basis17913.json"
theorem reductionProof17913 : EqualModuloRelations reduction17913.relations reduction17913.input reduction17913.output := by lin_cert using reduction17913.terms
theorem substitutionProof17913 : IsMapEvaluation generatorImages reduction17913.relations [8,8,8,8,8,8,8,248] reduction17913.output := by lin_cert using reduction17913.terms
def map_46_243 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image18197 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18197 : InImage map_46_243 image18197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18197 : Bundle := named_bundle% "RealMapCertificates/relations/basis18197.json"
theorem reductionProof18197 : EqualModuloRelations reduction18197.relations reduction18197.input reduction18197.output := by lin_cert using reduction18197.terms
theorem substitutionProof18197 : IsMapEvaluation generatorImages reduction18197.relations [16,64,64,137] reduction18197.output := by lin_cert using reduction18197.terms
def image18198 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18198 : InImage map_46_243 image18198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18198 : Bundle := named_bundle% "RealMapCertificates/relations/basis18198.json"
theorem reductionProof18198 : EqualModuloRelations reduction18198.relations reduction18198.input reduction18198.output := by lin_cert using reduction18198.terms
theorem substitutionProof18198 : IsMapEvaluation generatorImages reduction18198.relations [8,8,8,8,8,9,13,13,13,13,23] reduction18198.output := by lin_cert using reduction18198.terms
def image18199 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18199 : InImage map_46_243 image18199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18199 : Bundle := named_bundle% "RealMapCertificates/relations/basis18199.json"
theorem reductionProof18199 : EqualModuloRelations reduction18199.relations reduction18199.input reduction18199.output := by lin_cert using reduction18199.terms
theorem substitutionProof18199 : IsMapEvaluation generatorImages reduction18199.relations [8,8,8,8,8,8,404] reduction18199.output := by lin_cert using reduction18199.terms
def image18200 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18200 : InImage map_46_243 image18200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18200 : Bundle := named_bundle% "RealMapCertificates/relations/basis18200.json"
theorem reductionProof18200 : EqualModuloRelations reduction18200.relations reduction18200.input reduction18200.output := by lin_cert using reduction18200.terms
theorem substitutionProof18200 : IsMapEvaluation generatorImages reduction18200.relations [8,8,8,8,8,8,8,8,13,101] reduction18200.output := by lin_cert using reduction18200.terms
def map_46_244 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image18414 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18414 : InImage map_46_244 image18414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18414 : Bundle := named_bundle% "RealMapCertificates/relations/basis18414.json"
theorem reductionProof18414 : EqualModuloRelations reduction18414.relations reduction18414.input reduction18414.output := by lin_cert using reduction18414.terms
theorem substitutionProof18414 : IsMapEvaluation generatorImages reduction18414.relations [8,8,149,245] reduction18414.output := by lin_cert using reduction18414.terms
def image18415 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18415 : InImage map_46_244 image18415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18415 : Bundle := named_bundle% "RealMapCertificates/relations/basis18415.json"
theorem reductionProof18415 : EqualModuloRelations reduction18415.relations reduction18415.input reduction18415.output := by lin_cert using reduction18415.terms
theorem substitutionProof18415 : IsMapEvaluation generatorImages reduction18415.relations [1,5,1686] reduction18415.output := by lin_cert using reduction18415.terms
def image18416 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18416 : InImage map_46_244 image18416 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18416 : Bundle := named_bundle% "RealMapCertificates/relations/basis18416.json"
theorem reductionProof18416 : EqualModuloRelations reduction18416.relations reduction18416.input reduction18416.output := by lin_cert using reduction18416.terms
theorem substitutionProof18416 : IsMapEvaluation generatorImages reduction18416.relations [0,0,64,64,244] reduction18416.output := by lin_cert using reduction18416.terms
def image18417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18417 : InImage map_46_244 image18417 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18417 : Bundle := named_bundle% "RealMapCertificates/relations/basis18417.json"
theorem reductionProof18417 : EqualModuloRelations reduction18417.relations reduction18417.input reduction18417.output := by lin_cert using reduction18417.terms
theorem substitutionProof18417 : IsMapEvaluation generatorImages reduction18417.relations [0,0,8,8,64,491] reduction18417.output := by lin_cert using reduction18417.terms
def map_46_245 : Matrix 1 5 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image18655 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18655 : InImage map_46_245 image18655 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18655 : Bundle := named_bundle% "RealMapCertificates/relations/basis18655.json"
theorem reductionProof18655 : EqualModuloRelations reduction18655.relations reduction18655.input reduction18655.output := by lin_cert using reduction18655.terms
theorem substitutionProof18655 : IsMapEvaluation generatorImages reduction18655.relations [8,8,8,8,8,64,149] reduction18655.output := by lin_cert using reduction18655.terms
def image18656 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18656 : InImage map_46_245 image18656 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18656 : Bundle := named_bundle% "RealMapCertificates/relations/basis18656.json"
theorem reductionProof18656 : EqualModuloRelations reduction18656.relations reduction18656.input reduction18656.output := by lin_cert using reduction18656.terms
theorem substitutionProof18656 : IsMapEvaluation generatorImages reduction18656.relations [8,8,8,8,8,8,9,248] reduction18656.output := by lin_cert using reduction18656.terms
def image18657 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18657 : InImage map_46_245 image18657 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18657 : Bundle := named_bundle% "RealMapCertificates/relations/basis18657.json"
theorem reductionProof18657 : EqualModuloRelations reduction18657.relations reduction18657.input reduction18657.output := by lin_cert using reduction18657.terms
theorem substitutionProof18657 : IsMapEvaluation generatorImages reduction18657.relations [8,8,8,8,8,8,8,260] reduction18657.output := by lin_cert using reduction18657.terms
def image18658 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18658 : InImage map_46_245 image18658 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18658 : Bundle := named_bundle% "RealMapCertificates/relations/basis18658.json"
theorem reductionProof18658 : EqualModuloRelations reduction18658.relations reduction18658.input reduction18658.output := by lin_cert using reduction18658.terms
theorem substitutionProof18658 : IsMapEvaluation generatorImages reduction18658.relations [0,0,2091] reduction18658.output := by lin_cert using reduction18658.terms
def image18659 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18659 : InImage map_46_245 image18659 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18659 : Bundle := named_bundle% "RealMapCertificates/relations/basis18659.json"
theorem reductionProof18659 : EqualModuloRelations reduction18659.relations reduction18659.input reduction18659.output := by lin_cert using reduction18659.terms
theorem substitutionProof18659 : IsMapEvaluation generatorImages reduction18659.relations [0,0,0,64,138,149] reduction18659.output := by lin_cert using reduction18659.terms
end RealMapCertificates
