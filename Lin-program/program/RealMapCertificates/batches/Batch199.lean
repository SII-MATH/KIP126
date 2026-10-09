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
  | 42 => [[5,5,7]]
  | 64 => []
  | 101 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 188 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 248 => [[7,7,9,12]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 255 => []
  | 260 => []
  | 278 => []
  | 291 => []
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 316 => []
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 346 => []
  | 347 => []
  | 382 => []
  | 416 => [[2,4,4,4,4,4,4,4,4,4,4,4]]
  | 434 => [[0,0,9,12,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 471 => []
  | 487 => [[3,4,4,4,4,4,4,4,4,4,4,4]]
  | 491 => []
  | 499 => []
  | 516 => []
  | 517 => []
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 606 => []
  | 623 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 753 => [[5,7,9,12,12]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 830 => []
  | 889 => [[4,5,7,9,12,12]]
  | 897 => []
  | 928 => [[4,7,7,9,12,12]]
  | 939 => []
  | 971 => []
  | 1034 => []
  | 1060 => [[4,4,5,7,9,12,12]]
  | 1102 => [[4,4,7,7,9,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2092 => [[4,4,5,5,8,12,12,12]]
  | 2402 => [[4,4,4,5,5,7,12,12,12]]
  | 2540 => [[4,4,4,5,5,8,12,12,12]]
  | 2675 => [[4,4,4,5,5,9,12,12,12]]
  | 2739 => []
  | 2740 => []
  | _ => []
def map_46_246 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18948 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18948 : InImage map_46_246 image18948 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18948 : Bundle := named_bundle% "RealMapCertificates/relations/basis18948.json"
theorem reductionProof18948 : EqualModuloRelations reduction18948.relations reduction18948.input reduction18948.output := by lin_cert using reduction18948.terms
theorem substitutionProof18948 : IsMapEvaluation generatorImages reduction18948.relations [8,64,64,184] reduction18948.output := by lin_cert using reduction18948.terms
def image18949 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18949 : InImage map_46_246 image18949 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18949 : Bundle := named_bundle% "RealMapCertificates/relations/basis18949.json"
theorem reductionProof18949 : EqualModuloRelations reduction18949.relations reduction18949.input reduction18949.output := by lin_cert using reduction18949.terms
theorem substitutionProof18949 : IsMapEvaluation generatorImages reduction18949.relations [8,8,8,8,8,13,13,13,13,13,23] reduction18949.output := by lin_cert using reduction18949.terms
def image18950 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18950 : InImage map_46_246 image18950 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18950 : Bundle := named_bundle% "RealMapCertificates/relations/basis18950.json"
theorem reductionProof18950 : EqualModuloRelations reduction18950.relations reduction18950.input reduction18950.output := by lin_cert using reduction18950.terms
theorem substitutionProof18950 : IsMapEvaluation generatorImages reduction18950.relations [8,8,8,8,8,8,434] reduction18950.output := by lin_cert using reduction18950.terms
def image18951 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18951 : InImage map_46_246 image18951 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18951 : Bundle := named_bundle% "RealMapCertificates/relations/basis18951.json"
theorem reductionProof18951 : EqualModuloRelations reduction18951.relations reduction18951.input reduction18951.output := by lin_cert using reduction18951.terms
theorem substitutionProof18951 : IsMapEvaluation generatorImages reduction18951.relations [8,8,8,8,8,8,8,9,13,101] reduction18951.output := by lin_cert using reduction18951.terms
def image18952 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18952 : InImage map_46_246 image18952 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18952 : Bundle := named_bundle% "RealMapCertificates/relations/basis18952.json"
theorem reductionProof18952 : EqualModuloRelations reduction18952.relations reduction18952.input reduction18952.output := by lin_cert using reduction18952.terms
theorem substitutionProof18952 : IsMapEvaluation generatorImages reduction18952.relations [1,1,64,64,244] reduction18952.output := by lin_cert using reduction18952.terms
def image18953 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18953 : InImage map_46_246 image18953 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18953 : Bundle := named_bundle% "RealMapCertificates/relations/basis18953.json"
theorem reductionProof18953 : EqualModuloRelations reduction18953.relations reduction18953.input reduction18953.output := by lin_cert using reduction18953.terms
theorem substitutionProof18953 : IsMapEvaluation generatorImages reduction18953.relations [0,0,0,0,0,17,149,260] reduction18953.output := by lin_cert using reduction18953.terms
def map_46_247 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image19216 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19216 : InImage map_46_247 image19216 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19216 : Bundle := named_bundle% "RealMapCertificates/relations/basis19216.json"
theorem reductionProof19216 : EqualModuloRelations reduction19216.relations reduction19216.input reduction19216.output := by lin_cert using reduction19216.terms
theorem substitutionProof19216 : IsMapEvaluation generatorImages reduction19216.relations [8,8,8,1060] reduction19216.output := by lin_cert using reduction19216.terms
def image19217 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19217 : InImage map_46_247 image19217 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19217 : Bundle := named_bundle% "RealMapCertificates/relations/basis19217.json"
theorem reductionProof19217 : EqualModuloRelations reduction19217.relations reduction19217.input reduction19217.output := by lin_cert using reduction19217.terms
theorem substitutionProof19217 : IsMapEvaluation generatorImages reduction19217.relations [0,0,0,0,0,64,64,246] reduction19217.output := by lin_cert using reduction19217.terms
def image19218 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19218 : InImage map_46_247 image19218 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19218 : Bundle := named_bundle% "RealMapCertificates/relations/basis19218.json"
theorem reductionProof19218 : EqualModuloRelations reduction19218.relations reduction19218.input reduction19218.output := by lin_cert using reduction19218.terms
theorem substitutionProof19218 : IsMapEvaluation generatorImages reduction19218.relations [0,0,0,0,0,17,17,897] reduction19218.output := by lin_cert using reduction19218.terms
def map_46_248 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19456 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19456 : InImage map_46_248 image19456 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19456 : Bundle := named_bundle% "RealMapCertificates/relations/basis19456.json"
theorem reductionProof19456 : EqualModuloRelations reduction19456.relations reduction19456.input reduction19456.output := by lin_cert using reduction19456.terms
theorem substitutionProof19456 : IsMapEvaluation generatorImages reduction19456.relations [8,8,8,8,8,64,160] reduction19456.output := by lin_cert using reduction19456.terms
def image19457 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19457 : InImage map_46_248 image19457 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19457 : Bundle := named_bundle% "RealMapCertificates/relations/basis19457.json"
theorem reductionProof19457 : EqualModuloRelations reduction19457.relations reduction19457.input reduction19457.output := by lin_cert using reduction19457.terms
theorem substitutionProof19457 : IsMapEvaluation generatorImages reduction19457.relations [8,8,8,8,8,8,13,248] reduction19457.output := by lin_cert using reduction19457.terms
def image19458 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19458 : InImage map_46_248 image19458 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19458 : Bundle := named_bundle% "RealMapCertificates/relations/basis19458.json"
theorem reductionProof19458 : EqualModuloRelations reduction19458.relations reduction19458.input reduction19458.output := by lin_cert using reduction19458.terms
theorem substitutionProof19458 : IsMapEvaluation generatorImages reduction19458.relations [8,8,8,8,8,8,8,278] reduction19458.output := by lin_cert using reduction19458.terms
def image19459 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19459 : InImage map_46_248 image19459 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19459 : Bundle := named_bundle% "RealMapCertificates/relations/basis19459.json"
theorem reductionProof19459 : EqualModuloRelations reduction19459.relations reduction19459.input reduction19459.output := by lin_cert using reduction19459.terms
theorem substitutionProof19459 : IsMapEvaluation generatorImages reduction19459.relations [0,0,8,1686] reduction19459.output := by lin_cert using reduction19459.terms
def map_46_249 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image19761 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19761 : InImage map_46_249 image19761 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19761 : Bundle := named_bundle% "RealMapCertificates/relations/basis19761.json"
theorem reductionProof19761 : EqualModuloRelations reduction19761.relations reduction19761.input reduction19761.output := by lin_cert using reduction19761.terms
theorem substitutionProof19761 : IsMapEvaluation generatorImages reduction19761.relations [8,8,64,64,137] reduction19761.output := by lin_cert using reduction19761.terms
def image19762 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19762 : InImage map_46_249 image19762 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19762 : Bundle := named_bundle% "RealMapCertificates/relations/basis19762.json"
theorem reductionProof19762 : EqualModuloRelations reduction19762.relations reduction19762.input reduction19762.output := by lin_cert using reduction19762.terms
theorem substitutionProof19762 : IsMapEvaluation generatorImages reduction19762.relations [8,8,8,8,9,13,13,13,13,13,23] reduction19762.output := by lin_cert using reduction19762.terms
def image19763 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19763 : InImage map_46_249 image19763 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19763 : Bundle := named_bundle% "RealMapCertificates/relations/basis19763.json"
theorem reductionProof19763 : EqualModuloRelations reduction19763.relations reduction19763.input reduction19763.output := by lin_cert using reduction19763.terms
theorem substitutionProof19763 : IsMapEvaluation generatorImages reduction19763.relations [8,8,8,8,8,8,471] reduction19763.output := by lin_cert using reduction19763.terms
def image19764 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19764 : InImage map_46_249 image19764 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19764 : Bundle := named_bundle% "RealMapCertificates/relations/basis19764.json"
theorem reductionProof19764 : EqualModuloRelations reduction19764.relations reduction19764.input reduction19764.output := by lin_cert using reduction19764.terms
theorem substitutionProof19764 : IsMapEvaluation generatorImages reduction19764.relations [8,8,8,8,8,8,8,13,13,101] reduction19764.output := by lin_cert using reduction19764.terms
def image19765 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19765 : InImage map_46_249 image19765 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19765 : Bundle := named_bundle% "RealMapCertificates/relations/basis19765.json"
theorem reductionProof19765 : EqualModuloRelations reduction19765.relations reduction19765.input reduction19765.output := by lin_cert using reduction19765.terms
theorem substitutionProof19765 : IsMapEvaluation generatorImages reduction19765.relations [0,0,0,0,0,0,0,0,0,0,0,1926] reduction19765.output := by lin_cert using reduction19765.terms
def map_46_250 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19998 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19998 : InImage map_46_250 image19998 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19998 : Bundle := named_bundle% "RealMapCertificates/relations/basis19998.json"
theorem reductionProof19998 : EqualModuloRelations reduction19998.relations reduction19998.input reduction19998.output := by lin_cert using reduction19998.terms
theorem substitutionProof19998 : IsMapEvaluation generatorImages reduction19998.relations [149,623] reduction19998.output := by lin_cert using reduction19998.terms
def image19999 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19999 : InImage map_46_250 image19999 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19999 : Bundle := named_bundle% "RealMapCertificates/relations/basis19999.json"
theorem reductionProof19999 : EqualModuloRelations reduction19999.relations reduction19999.input reduction19999.output := by lin_cert using reduction19999.terms
theorem substitutionProof19999 : IsMapEvaluation generatorImages reduction19999.relations [8,8,8,1102] reduction19999.output := by lin_cert using reduction19999.terms
def image20000 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20000 : InImage map_46_250 image20000 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20000 : Bundle := named_bundle% "RealMapCertificates/relations/basis20000.json"
theorem reductionProof20000 : EqualModuloRelations reduction20000.relations reduction20000.input reduction20000.output := by lin_cert using reduction20000.terms
theorem substitutionProof20000 : IsMapEvaluation generatorImages reduction20000.relations [1,64,939] reduction20000.output := by lin_cert using reduction20000.terms
def image20001 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20001 : InImage map_46_250 image20001 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20001 : Bundle := named_bundle% "RealMapCertificates/relations/basis20001.json"
theorem reductionProof20001 : EqualModuloRelations reduction20001.relations reduction20001.input reduction20001.output := by lin_cert using reduction20001.terms
theorem substitutionProof20001 : IsMapEvaluation generatorImages reduction20001.relations [0,0,0,0,0,0,0,0,0,0,0,1967] reduction20001.output := by lin_cert using reduction20001.terms
def map_46_251 : Matrix 1 7 := fun i j => ([false,false,false,true,false,false,false] : List Bool)[i.val*7+j.val]!
def image20267 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20267 : InImage map_46_251 image20267 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20267 : Bundle := named_bundle% "RealMapCertificates/relations/basis20267.json"
theorem reductionProof20267 : EqualModuloRelations reduction20267.relations reduction20267.input reduction20267.output := by lin_cert using reduction20267.terms
theorem substitutionProof20267 : IsMapEvaluation generatorImages reduction20267.relations [64,971] reduction20267.output := by lin_cert using reduction20267.terms
def image20268 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20268 : InImage map_46_251 image20268 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20268 : Bundle := named_bundle% "RealMapCertificates/relations/basis20268.json"
theorem reductionProof20268 : EqualModuloRelations reduction20268.relations reduction20268.input reduction20268.output := by lin_cert using reduction20268.terms
theorem substitutionProof20268 : IsMapEvaluation generatorImages reduction20268.relations [17,113,491] reduction20268.output := by lin_cert using reduction20268.terms
def image20269 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20269 : InImage map_46_251 image20269 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20269 : Bundle := named_bundle% "RealMapCertificates/relations/basis20269.json"
theorem reductionProof20269 : EqualModuloRelations reduction20269.relations reduction20269.input reduction20269.output := by lin_cert using reduction20269.terms
theorem substitutionProof20269 : IsMapEvaluation generatorImages reduction20269.relations [8,8,8,8,8,16,347] reduction20269.output := by lin_cert using reduction20269.terms
def image20270 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20270 : InImage map_46_251 image20270 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20270 : Bundle := named_bundle% "RealMapCertificates/relations/basis20270.json"
theorem reductionProof20270 : EqualModuloRelations reduction20270.relations reduction20270.input reduction20270.output := by lin_cert using reduction20270.terms
theorem substitutionProof20270 : IsMapEvaluation generatorImages reduction20270.relations [8,8,8,8,8,9,13,248] reduction20270.output := by lin_cert using reduction20270.terms
def image20271 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20271 : InImage map_46_251 image20271 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20271 : Bundle := named_bundle% "RealMapCertificates/relations/basis20271.json"
theorem reductionProof20271 : EqualModuloRelations reduction20271.relations reduction20271.input reduction20271.output := by lin_cert using reduction20271.terms
theorem substitutionProof20271 : IsMapEvaluation generatorImages reduction20271.relations [8,8,8,8,8,8,8,291] reduction20271.output := by lin_cert using reduction20271.terms
def image20272 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20272 : InImage map_46_251 image20272 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20272 : Bundle := named_bundle% "RealMapCertificates/relations/basis20272.json"
theorem reductionProof20272 : EqualModuloRelations reduction20272.relations reduction20272.input reduction20272.output := by lin_cert using reduction20272.terms
theorem substitutionProof20272 : IsMapEvaluation generatorImages reduction20272.relations [0,0,0,0,64,149,149] reduction20272.output := by lin_cert using reduction20272.terms
def image20273 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20273 : InImage map_46_251 image20273 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20273 : Bundle := named_bundle% "RealMapCertificates/relations/basis20273.json"
theorem reductionProof20273 : EqualModuloRelations reduction20273.relations reduction20273.input reduction20273.output := by lin_cert using reduction20273.terms
theorem substitutionProof20273 : IsMapEvaluation generatorImages reduction20273.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1927] reduction20273.output := by lin_cert using reduction20273.terms
def map_46_252 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20571 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20571 : InImage map_46_252 image20571 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20571 : Bundle := named_bundle% "RealMapCertificates/relations/basis20571.json"
theorem reductionProof20571 : EqualModuloRelations reduction20571.relations reduction20571.input reduction20571.output := by lin_cert using reduction20571.terms
theorem substitutionProof20571 : IsMapEvaluation generatorImages reduction20571.relations [8,8,64,64,146] reduction20571.output := by lin_cert using reduction20571.terms
def image20572 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20572 : InImage map_46_252 image20572 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20572 : Bundle := named_bundle% "RealMapCertificates/relations/basis20572.json"
theorem reductionProof20572 : EqualModuloRelations reduction20572.relations reduction20572.input reduction20572.output := by lin_cert using reduction20572.terms
theorem substitutionProof20572 : IsMapEvaluation generatorImages reduction20572.relations [8,8,8,8,13,13,13,13,13,13,23] reduction20572.output := by lin_cert using reduction20572.terms
def image20573 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20573 : InImage map_46_252 image20573 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20573 : Bundle := named_bundle% "RealMapCertificates/relations/basis20573.json"
theorem reductionProof20573 : EqualModuloRelations reduction20573.relations reduction20573.input reduction20573.output := by lin_cert using reduction20573.terms
theorem substitutionProof20573 : IsMapEvaluation generatorImages reduction20573.relations [8,8,8,8,8,8,499] reduction20573.output := by lin_cert using reduction20573.terms
def image20574 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20574 : InImage map_46_252 image20574 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20574 : Bundle := named_bundle% "RealMapCertificates/relations/basis20574.json"
theorem reductionProof20574 : EqualModuloRelations reduction20574.relations reduction20574.input reduction20574.output := by lin_cert using reduction20574.terms
theorem substitutionProof20574 : IsMapEvaluation generatorImages reduction20574.relations [8,8,8,8,8,8,9,13,13,101] reduction20574.output := by lin_cert using reduction20574.terms
def image20575 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20575 : InImage map_46_252 image20575 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20575 : Bundle := named_bundle% "RealMapCertificates/relations/basis20575.json"
theorem reductionProof20575 : EqualModuloRelations reduction20575.relations reduction20575.input reduction20575.output := by lin_cert using reduction20575.terms
theorem substitutionProof20575 : IsMapEvaluation generatorImages reduction20575.relations [0,0,0,0,0,0,0,0,0,0,0,0,1994] reduction20575.output := by lin_cert using reduction20575.terms
def map_46_253 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image20829 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20829 : InImage map_46_253 image20829 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20829 : Bundle := named_bundle% "RealMapCertificates/relations/basis20829.json"
theorem reductionProof20829 : EqualModuloRelations reduction20829.relations reduction20829.input reduction20829.output := by lin_cert using reduction20829.terms
theorem substitutionProof20829 : IsMapEvaluation generatorImages reduction20829.relations [8,149,491] reduction20829.output := by lin_cert using reduction20829.terms
def image20830 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20830 : InImage map_46_253 image20830 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20830 : Bundle := named_bundle% "RealMapCertificates/relations/basis20830.json"
theorem reductionProof20830 : EqualModuloRelations reduction20830.relations reduction20830.input reduction20830.output := by lin_cert using reduction20830.terms
theorem substitutionProof20830 : IsMapEvaluation generatorImages reduction20830.relations [8,8,8,8,889] reduction20830.output := by lin_cert using reduction20830.terms
def map_46_254 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image21093 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21093 : InImage map_46_254 image21093 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21093 : Bundle := named_bundle% "RealMapCertificates/relations/basis21093.json"
theorem reductionProof21093 : EqualModuloRelations reduction21093.relations reduction21093.input reduction21093.output := by lin_cert using reduction21093.terms
theorem substitutionProof21093 : IsMapEvaluation generatorImages reduction21093.relations [64,1034] reduction21093.output := by lin_cert using reduction21093.terms
def image21094 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21094 : InImage map_46_254 image21094 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21094 : Bundle := named_bundle% "RealMapCertificates/relations/basis21094.json"
theorem reductionProof21094 : EqualModuloRelations reduction21094.relations reduction21094.input reduction21094.output := by lin_cert using reduction21094.terms
theorem substitutionProof21094 : IsMapEvaluation generatorImages reduction21094.relations [8,17,138,260] reduction21094.output := by lin_cert using reduction21094.terms
def image21095 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21095 : InImage map_46_254 image21095 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21095 : Bundle := named_bundle% "RealMapCertificates/relations/basis21095.json"
theorem reductionProof21095 : EqualModuloRelations reduction21095.relations reduction21095.input reduction21095.output := by lin_cert using reduction21095.terms
theorem substitutionProof21095 : IsMapEvaluation generatorImages reduction21095.relations [8,8,8,8,8,13,13,248] reduction21095.output := by lin_cert using reduction21095.terms
def image21096 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21096 : InImage map_46_254 image21096 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21096 : Bundle := named_bundle% "RealMapCertificates/relations/basis21096.json"
theorem reductionProof21096 : EqualModuloRelations reduction21096.relations reduction21096.input reduction21096.output := by lin_cert using reduction21096.terms
theorem substitutionProof21096 : IsMapEvaluation generatorImages reduction21096.relations [8,8,8,8,8,8,517] reduction21096.output := by lin_cert using reduction21096.terms
def image21097 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21097 : InImage map_46_254 image21097 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21097 : Bundle := named_bundle% "RealMapCertificates/relations/basis21097.json"
theorem reductionProof21097 : EqualModuloRelations reduction21097.relations reduction21097.input reduction21097.output := by lin_cert using reduction21097.terms
theorem substitutionProof21097 : IsMapEvaluation generatorImages reduction21097.relations [8,8,8,8,8,8,8,316] reduction21097.output := by lin_cert using reduction21097.terms
def image21098 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21098 : InImage map_46_254 image21098 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21098 : Bundle := named_bundle% "RealMapCertificates/relations/basis21098.json"
theorem reductionProof21098 : EqualModuloRelations reduction21098.relations reduction21098.input reduction21098.output := by lin_cert using reduction21098.terms
theorem substitutionProof21098 : IsMapEvaluation generatorImages reduction21098.relations [1,2402] reduction21098.output := by lin_cert using reduction21098.terms
def map_46_255 : Matrix 2 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21447 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21447 : InImage map_46_255 image21447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21447 : Bundle := named_bundle% "RealMapCertificates/relations/basis21447.json"
theorem reductionProof21447 : EqualModuloRelations reduction21447.relations reduction21447.input reduction21447.output := by lin_cert using reduction21447.terms
theorem substitutionProof21447 : IsMapEvaluation generatorImages reduction21447.relations [2540] reduction21447.output := by lin_cert using reduction21447.terms
def image21448 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21448 : InImage map_46_255 image21448 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21448 : Bundle := named_bundle% "RealMapCertificates/relations/basis21448.json"
theorem reductionProof21448 : EqualModuloRelations reduction21448.relations reduction21448.input reduction21448.output := by lin_cert using reduction21448.terms
theorem substitutionProof21448 : IsMapEvaluation generatorImages reduction21448.relations [8,8,16,64,64,64] reduction21448.output := by lin_cert using reduction21448.terms
def image21449 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21449 : InImage map_46_255 image21449 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21449 : Bundle := named_bundle% "RealMapCertificates/relations/basis21449.json"
theorem reductionProof21449 : EqualModuloRelations reduction21449.relations reduction21449.input reduction21449.output := by lin_cert using reduction21449.terms
theorem substitutionProof21449 : IsMapEvaluation generatorImages reduction21449.relations [8,8,8,9,13,13,13,13,13,13,23] reduction21449.output := by lin_cert using reduction21449.terms
def image21450 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21450 : InImage map_46_255 image21450 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21450 : Bundle := named_bundle% "RealMapCertificates/relations/basis21450.json"
theorem reductionProof21450 : EqualModuloRelations reduction21450.relations reduction21450.input reduction21450.output := by lin_cert using reduction21450.terms
theorem substitutionProof21450 : IsMapEvaluation generatorImages reduction21450.relations [8,8,8,8,8,8,17,255] reduction21450.output := by lin_cert using reduction21450.terms
def image21451 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21451 : InImage map_46_255 image21451 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21451 : Bundle := named_bundle% "RealMapCertificates/relations/basis21451.json"
theorem reductionProof21451 : EqualModuloRelations reduction21451.relations reduction21451.input reduction21451.output := by lin_cert using reduction21451.terms
theorem substitutionProof21451 : IsMapEvaluation generatorImages reduction21451.relations [8,8,8,8,8,8,13,13,13,101] reduction21451.output := by lin_cert using reduction21451.terms
def map_46_256 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image21721 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21721 : InImage map_46_256 image21721 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21721 : Bundle := named_bundle% "RealMapCertificates/relations/basis21721.json"
theorem reductionProof21721 : EqualModuloRelations reduction21721.relations reduction21721.input reduction21721.output := by lin_cert using reduction21721.terms
theorem substitutionProof21721 : IsMapEvaluation generatorImages reduction21721.relations [8,149,516] reduction21721.output := by lin_cert using reduction21721.terms
def image21722 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21722 : InImage map_46_256 image21722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21722 : Bundle := named_bundle% "RealMapCertificates/relations/basis21722.json"
theorem reductionProof21722 : EqualModuloRelations reduction21722.relations reduction21722.input reduction21722.output := by lin_cert using reduction21722.terms
theorem substitutionProof21722 : IsMapEvaluation generatorImages reduction21722.relations [8,8,8,8,928] reduction21722.output := by lin_cert using reduction21722.terms
def image21723 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21723 : InImage map_46_256 image21723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21723 : Bundle := named_bundle% "RealMapCertificates/relations/basis21723.json"
theorem reductionProof21723 : EqualModuloRelations reduction21723.relations reduction21723.input reduction21723.output := by lin_cert using reduction21723.terms
theorem substitutionProof21723 : IsMapEvaluation generatorImages reduction21723.relations [1,42,64,491] reduction21723.output := by lin_cert using reduction21723.terms
def map_46_257 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image22046 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22046 : InImage map_46_257 image22046 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22046 : Bundle := named_bundle% "RealMapCertificates/relations/basis22046.json"
theorem reductionProof22046 : EqualModuloRelations reduction22046.relations reduction22046.input reduction22046.output := by lin_cert using reduction22046.terms
theorem substitutionProof22046 : IsMapEvaluation generatorImages reduction22046.relations [8,64,830] reduction22046.output := by lin_cert using reduction22046.terms
def image22047 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22047 : InImage map_46_257 image22047 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22047 : Bundle := named_bundle% "RealMapCertificates/relations/basis22047.json"
theorem reductionProof22047 : EqualModuloRelations reduction22047.relations reduction22047.input reduction22047.output := by lin_cert using reduction22047.terms
theorem substitutionProof22047 : IsMapEvaluation generatorImages reduction22047.relations [8,17,138,278] reduction22047.output := by lin_cert using reduction22047.terms
def image22048 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22048 : InImage map_46_257 image22048 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22048 : Bundle := named_bundle% "RealMapCertificates/relations/basis22048.json"
theorem reductionProof22048 : EqualModuloRelations reduction22048.relations reduction22048.input reduction22048.output := by lin_cert using reduction22048.terms
theorem substitutionProof22048 : IsMapEvaluation generatorImages reduction22048.relations [8,8,8,8,9,13,13,248] reduction22048.output := by lin_cert using reduction22048.terms
def image22049 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22049 : InImage map_46_257 image22049 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22049 : Bundle := named_bundle% "RealMapCertificates/relations/basis22049.json"
theorem reductionProof22049 : EqualModuloRelations reduction22049.relations reduction22049.input reduction22049.output := by lin_cert using reduction22049.terms
theorem substitutionProof22049 : IsMapEvaluation generatorImages reduction22049.relations [8,8,8,8,8,8,8,347] reduction22049.output := by lin_cert using reduction22049.terms
def image22050 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22050 : InImage map_46_257 image22050 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22050 : Bundle := named_bundle% "RealMapCertificates/relations/basis22050.json"
theorem reductionProof22050 : EqualModuloRelations reduction22050.relations reduction22050.input reduction22050.output := by lin_cert using reduction22050.terms
theorem substitutionProof22050 : IsMapEvaluation generatorImages reduction22050.relations [8,8,8,8,8,8,8,346] reduction22050.output := by lin_cert using reduction22050.terms
def map_46_258 : Matrix 3 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22408 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation22408 : InImage map_46_258 image22408 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22408 : Bundle := named_bundle% "RealMapCertificates/relations/basis22408.json"
theorem reductionProof22408 : EqualModuloRelations reduction22408.relations reduction22408.input reduction22408.output := by lin_cert using reduction22408.terms
theorem substitutionProof22408 : IsMapEvaluation generatorImages reduction22408.relations [2675] reduction22408.output := by lin_cert using reduction22408.terms
def image22409 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22409 : InImage map_46_258 image22409 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22409 : Bundle := named_bundle% "RealMapCertificates/relations/basis22409.json"
theorem reductionProof22409 : EqualModuloRelations reduction22409.relations reduction22409.input reduction22409.output := by lin_cert using reduction22409.terms
theorem substitutionProof22409 : IsMapEvaluation generatorImages reduction22409.relations [8,8,8,64,64,112] reduction22409.output := by lin_cert using reduction22409.terms
def image22410 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation22410 : InImage map_46_258 image22410 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22410 : Bundle := named_bundle% "RealMapCertificates/relations/basis22410.json"
theorem reductionProof22410 : EqualModuloRelations reduction22410.relations reduction22410.input reduction22410.output := by lin_cert using reduction22410.terms
theorem substitutionProof22410 : IsMapEvaluation generatorImages reduction22410.relations [8,8,8,13,13,13,13,13,13,13,23] reduction22410.output := by lin_cert using reduction22410.terms
def image22411 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22411 : InImage map_46_258 image22411 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22411 : Bundle := named_bundle% "RealMapCertificates/relations/basis22411.json"
theorem reductionProof22411 : EqualModuloRelations reduction22411.relations reduction22411.input reduction22411.output := by lin_cert using reduction22411.terms
theorem substitutionProof22411 : IsMapEvaluation generatorImages reduction22411.relations [8,8,8,8,8,9,13,13,13,101] reduction22411.output := by lin_cert using reduction22411.terms
def image22412 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22412 : InImage map_46_258 image22412 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22412 : Bundle := named_bundle% "RealMapCertificates/relations/basis22412.json"
theorem reductionProof22412 : EqualModuloRelations reduction22412.relations reduction22412.input reduction22412.output := by lin_cert using reduction22412.terms
theorem substitutionProof22412 : IsMapEvaluation generatorImages reduction22412.relations [8,8,8,8,8,8,8,17,188] reduction22412.output := by lin_cert using reduction22412.terms
def map_46_259 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image22725 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22725 : InImage map_46_259 image22725 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22725 : Bundle := named_bundle% "RealMapCertificates/relations/basis22725.json"
theorem reductionProof22725 : EqualModuloRelations reduction22725.relations reduction22725.input reduction22725.output := by lin_cert using reduction22725.terms
theorem substitutionProof22725 : IsMapEvaluation generatorImages reduction22725.relations [2739] reduction22725.output := by lin_cert using reduction22725.terms
def image22726 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22726 : InImage map_46_259 image22726 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22726 : Bundle := named_bundle% "RealMapCertificates/relations/basis22726.json"
theorem reductionProof22726 : EqualModuloRelations reduction22726.relations reduction22726.input reduction22726.output := by lin_cert using reduction22726.terms
theorem substitutionProof22726 : IsMapEvaluation generatorImages reduction22726.relations [8,16,149,260] reduction22726.output := by lin_cert using reduction22726.terms
def image22727 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22727 : InImage map_46_259 image22727 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22727 : Bundle := named_bundle% "RealMapCertificates/relations/basis22727.json"
theorem reductionProof22727 : EqualModuloRelations reduction22727.relations reduction22727.input reduction22727.output := by lin_cert using reduction22727.terms
theorem substitutionProof22727 : IsMapEvaluation generatorImages reduction22727.relations [8,8,8,8,8,753] reduction22727.output := by lin_cert using reduction22727.terms
def map_46_260 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image23080 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23080 : InImage map_46_260 image23080 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23080 : Bundle := named_bundle% "RealMapCertificates/relations/basis23080.json"
theorem reductionProof23080 : EqualModuloRelations reduction23080.relations reduction23080.input reduction23080.output := by lin_cert using reduction23080.terms
theorem substitutionProof23080 : IsMapEvaluation generatorImages reduction23080.relations [8,64,64,245] reduction23080.output := by lin_cert using reduction23080.terms
def image23081 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23081 : InImage map_46_260 image23081 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23081 : Bundle := named_bundle% "RealMapCertificates/relations/basis23081.json"
theorem reductionProof23081 : EqualModuloRelations reduction23081.relations reduction23081.input reduction23081.output := by lin_cert using reduction23081.terms
theorem substitutionProof23081 : IsMapEvaluation generatorImages reduction23081.relations [8,16,17,897] reduction23081.output := by lin_cert using reduction23081.terms
def image23082 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23082 : InImage map_46_260 image23082 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23082 : Bundle := named_bundle% "RealMapCertificates/relations/basis23082.json"
theorem reductionProof23082 : EqualModuloRelations reduction23082.relations reduction23082.input reduction23082.output := by lin_cert using reduction23082.terms
theorem substitutionProof23082 : IsMapEvaluation generatorImages reduction23082.relations [8,8,8,8,13,13,13,248] reduction23082.output := by lin_cert using reduction23082.terms
def image23083 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23083 : InImage map_46_260 image23083 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23083 : Bundle := named_bundle% "RealMapCertificates/relations/basis23083.json"
theorem reductionProof23083 : EqualModuloRelations reduction23083.relations reduction23083.input reduction23083.output := by lin_cert using reduction23083.terms
theorem substitutionProof23083 : IsMapEvaluation generatorImages reduction23083.relations [8,8,8,8,8,8,9,346] reduction23083.output := by lin_cert using reduction23083.terms
def image23084 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23084 : InImage map_46_260 image23084 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23084 : Bundle := named_bundle% "RealMapCertificates/relations/basis23084.json"
theorem reductionProof23084 : EqualModuloRelations reduction23084.relations reduction23084.input reduction23084.output := by lin_cert using reduction23084.terms
theorem substitutionProof23084 : IsMapEvaluation generatorImages reduction23084.relations [8,8,8,8,8,8,8,382] reduction23084.output := by lin_cert using reduction23084.terms
def image23085 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23085 : InImage map_46_260 image23085 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23085 : Bundle := named_bundle% "RealMapCertificates/relations/basis23085.json"
theorem reductionProof23085 : EqualModuloRelations reduction23085.relations reduction23085.input reduction23085.output := by lin_cert using reduction23085.terms
theorem substitutionProof23085 : IsMapEvaluation generatorImages reduction23085.relations [0,2740] reduction23085.output := by lin_cert using reduction23085.terms
def map_46_261 : Matrix 2 5 := fun i j => ([false,true,false,false,false,true,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image23529 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation23529 : InImage map_46_261 image23529 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23529 : Bundle := named_bundle% "RealMapCertificates/relations/basis23529.json"
theorem reductionProof23529 : EqualModuloRelations reduction23529.relations reduction23529.input reduction23529.output := by lin_cert using reduction23529.terms
theorem substitutionProof23529 : IsMapEvaluation generatorImages reduction23529.relations [8,2092] reduction23529.output := by lin_cert using reduction23529.terms
def image23530 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23530 : InImage map_46_261 image23530 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23530 : Bundle := named_bundle% "RealMapCertificates/relations/basis23530.json"
theorem reductionProof23530 : EqualModuloRelations reduction23530.relations reduction23530.input reduction23530.output := by lin_cert using reduction23530.terms
theorem substitutionProof23530 : IsMapEvaluation generatorImages reduction23530.relations [8,8,9,13,13,13,13,13,13,13,23] reduction23530.output := by lin_cert using reduction23530.terms
def image23531 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23531 : InImage map_46_261 image23531 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23531 : Bundle := named_bundle% "RealMapCertificates/relations/basis23531.json"
theorem reductionProof23531 : EqualModuloRelations reduction23531.relations reduction23531.input reduction23531.output := by lin_cert using reduction23531.terms
theorem substitutionProof23531 : IsMapEvaluation generatorImages reduction23531.relations [8,8,8,8,64,64,64] reduction23531.output := by lin_cert using reduction23531.terms
def image23532 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23532 : InImage map_46_261 image23532 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23532 : Bundle := named_bundle% "RealMapCertificates/relations/basis23532.json"
theorem reductionProof23532 : EqualModuloRelations reduction23532.relations reduction23532.input reduction23532.output := by lin_cert using reduction23532.terms
theorem substitutionProof23532 : IsMapEvaluation generatorImages reduction23532.relations [8,8,8,8,8,13,13,13,13,101] reduction23532.output := by lin_cert using reduction23532.terms
def image23533 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23533 : InImage map_46_261 image23533 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23533 : Bundle := named_bundle% "RealMapCertificates/relations/basis23533.json"
theorem reductionProof23533 : EqualModuloRelations reduction23533.relations reduction23533.input reduction23533.output := by lin_cert using reduction23533.terms
theorem substitutionProof23533 : IsMapEvaluation generatorImages reduction23533.relations [8,8,8,8,8,8,8,20,188] reduction23533.output := by lin_cert using reduction23533.terms
def map_47_47 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image233 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation233 : InImage map_47_47 image233 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction233 : Bundle := named_bundle% "RealMapCertificates/relations/basis233.json"
theorem reductionProof233 : EqualModuloRelations reduction233.relations reduction233.input reduction233.output := by lin_cert using reduction233.terms
theorem substitutionProof233 : IsMapEvaluation generatorImages reduction233.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction233.output := by lin_cert using reduction233.terms
def map_47_138 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image2944 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation2944 : InImage map_47_138 image2944 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction2944 : Bundle := named_bundle% "RealMapCertificates/relations/basis2944.json"
theorem reductionProof2944 : EqualModuloRelations reduction2944.relations reduction2944.input reduction2944.output := by lin_cert using reduction2944.terms
theorem substitutionProof2944 : IsMapEvaluation generatorImages reduction2944.relations [0,0,416] reduction2944.output := by lin_cert using reduction2944.terms
def map_47_142 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3287 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3287 : InImage map_47_142 image3287 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3287 : Bundle := named_bundle% "RealMapCertificates/relations/basis3287.json"
theorem reductionProof3287 : EqualModuloRelations reduction3287.relations reduction3287.input reduction3287.output := by lin_cert using reduction3287.terms
theorem substitutionProof3287 : IsMapEvaluation generatorImages reduction3287.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction3287.output := by lin_cert using reduction3287.terms
def map_47_143 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image3363 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation3363 : InImage map_47_143 image3363 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3363 : Bundle := named_bundle% "RealMapCertificates/relations/basis3363.json"
theorem reductionProof3363 : EqualModuloRelations reduction3363.relations reduction3363.input reduction3363.output := by lin_cert using reduction3363.terms
theorem substitutionProof3363 : IsMapEvaluation generatorImages reduction3363.relations [487] reduction3363.output := by lin_cert using reduction3363.terms
def map_47_144 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3439 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3439 : InImage map_47_144 image3439 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3439 : Bundle := named_bundle% "RealMapCertificates/relations/basis3439.json"
theorem reductionProof3439 : EqualModuloRelations reduction3439.relations reduction3439.input reduction3439.output := by lin_cert using reduction3439.terms
theorem substitutionProof3439 : IsMapEvaluation generatorImages reduction3439.relations [0,0,0,469] reduction3439.output := by lin_cert using reduction3439.terms
def map_47_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3952 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3952 : InImage map_47_150 image3952 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3952 : Bundle := named_bundle% "RealMapCertificates/relations/basis3952.json"
theorem reductionProof3952 : EqualModuloRelations reduction3952.relations reduction3952.input reduction3952.output := by lin_cert using reduction3952.terms
theorem substitutionProof3952 : IsMapEvaluation generatorImages reduction3952.relations [554] reduction3952.output := by lin_cert using reduction3952.terms
def map_47_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4234 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4234 : InImage map_47_153 image4234 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4234 : Bundle := named_bundle% "RealMapCertificates/relations/basis4234.json"
theorem reductionProof4234 : EqualModuloRelations reduction4234.relations reduction4234.input reduction4234.output := by lin_cert using reduction4234.terms
theorem substitutionProof4234 : IsMapEvaluation generatorImages reduction4234.relations [579] reduction4234.output := by lin_cert using reduction4234.terms
def map_47_156 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4473 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4473 : InImage map_47_156 image4473 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4473 : Bundle := named_bundle% "RealMapCertificates/relations/basis4473.json"
theorem reductionProof4473 : EqualModuloRelations reduction4473.relations reduction4473.input reduction4473.output := by lin_cert using reduction4473.terms
theorem substitutionProof4473 : IsMapEvaluation generatorImages reduction4473.relations [16,296] reduction4473.output := by lin_cert using reduction4473.terms
def map_47_157 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4590 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4590 : InImage map_47_157 image4590 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4590 : Bundle := named_bundle% "RealMapCertificates/relations/basis4590.json"
theorem reductionProof4590 : EqualModuloRelations reduction4590.relations reduction4590.input reduction4590.output := by lin_cert using reduction4590.terms
theorem substitutionProof4590 : IsMapEvaluation generatorImages reduction4590.relations [0,17,296] reduction4590.output := by lin_cert using reduction4590.terms
def map_47_158 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4663 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4663 : InImage map_47_158 image4663 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4663 : Bundle := named_bundle% "RealMapCertificates/relations/basis4663.json"
theorem reductionProof4663 : EqualModuloRelations reduction4663.relations reduction4663.input reduction4663.output := by lin_cert using reduction4663.terms
theorem substitutionProof4663 : IsMapEvaluation generatorImages reduction4663.relations [0,0,606] reduction4663.output := by lin_cert using reduction4663.terms
def map_47_159 : Matrix 5 1 := fun i j => ([false,true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4743 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation4743 : InImage map_47_159 image4743 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4743 : Bundle := named_bundle% "RealMapCertificates/relations/basis4743.json"
theorem reductionProof4743 : EqualModuloRelations reduction4743.relations reduction4743.input reduction4743.output := by lin_cert using reduction4743.terms
theorem substitutionProof4743 : IsMapEvaluation generatorImages reduction4743.relations [8,470] reduction4743.output := by lin_cert using reduction4743.terms
def map_47_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4845 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4845 : InImage map_47_160 image4845 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4845 : Bundle := named_bundle% "RealMapCertificates/relations/basis4845.json"
theorem reductionProof4845 : EqualModuloRelations reduction4845.relations reduction4845.input reduction4845.output := by lin_cert using reduction4845.terms
theorem substitutionProof4845 : IsMapEvaluation generatorImages reduction4845.relations [0,17,326] reduction4845.output := by lin_cert using reduction4845.terms
def map_47_162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5012 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5012 : InImage map_47_162 image5012 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5012 : Bundle := named_bundle% "RealMapCertificates/relations/basis5012.json"
theorem reductionProof5012 : EqualModuloRelations reduction5012.relations reduction5012.input reduction5012.output := by lin_cert using reduction5012.terms
theorem substitutionProof5012 : IsMapEvaluation generatorImages reduction5012.relations [8,8,296] reduction5012.output := by lin_cert using reduction5012.terms
def map_47_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5212 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5212 : InImage map_47_164 image5212 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5212 : Bundle := named_bundle% "RealMapCertificates/relations/basis5212.json"
theorem reductionProof5212 : EqualModuloRelations reduction5212.relations reduction5212.input reduction5212.output := by lin_cert using reduction5212.terms
theorem substitutionProof5212 : IsMapEvaluation generatorImages reduction5212.relations [0,0,0,0,0,635] reduction5212.output := by lin_cert using reduction5212.terms
def map_47_165 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5314 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5314 : InImage map_47_165 image5314 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5314 : Bundle := named_bundle% "RealMapCertificates/relations/basis5314.json"
theorem reductionProof5314 : EqualModuloRelations reduction5314.relations reduction5314.input reduction5314.output := by lin_cert using reduction5314.terms
theorem substitutionProof5314 : IsMapEvaluation generatorImages reduction5314.relations [8,8,326] reduction5314.output := by lin_cert using reduction5314.terms
def image5315 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5315 : InImage map_47_165 image5315 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5315 : Bundle := named_bundle% "RealMapCertificates/relations/basis5315.json"
theorem reductionProof5315 : EqualModuloRelations reduction5315.relations reduction5315.input reduction5315.output := by lin_cert using reduction5315.terms
theorem substitutionProof5315 : IsMapEvaluation generatorImages reduction5315.relations [0,0,0,0,0,0,636] reduction5315.output := by lin_cert using reduction5315.terms
def map_47_168 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5630 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5630 : InImage map_47_168 image5630 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5630 : Bundle := named_bundle% "RealMapCertificates/relations/basis5630.json"
theorem reductionProof5630 : EqualModuloRelations reduction5630.relations reduction5630.input reduction5630.output := by lin_cert using reduction5630.terms
theorem substitutionProof5630 : IsMapEvaluation generatorImages reduction5630.relations [8,8,16,183] reduction5630.output := by lin_cert using reduction5630.terms
def map_47_171 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image5976 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation5976 : InImage map_47_171 image5976 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5976 : Bundle := named_bundle% "RealMapCertificates/relations/basis5976.json"
theorem reductionProof5976 : EqualModuloRelations reduction5976.relations reduction5976.input reduction5976.output := by lin_cert using reduction5976.terms
theorem substitutionProof5976 : IsMapEvaluation generatorImages reduction5976.relations [8,8,8,253] reduction5976.output := by lin_cert using reduction5976.terms
def map_47_173 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6198 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6198 : InImage map_47_173 image6198 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6198 : Bundle := named_bundle% "RealMapCertificates/relations/basis6198.json"
theorem reductionProof6198 : EqualModuloRelations reduction6198.relations reduction6198.input reduction6198.output := by lin_cert using reduction6198.terms
theorem substitutionProof6198 : IsMapEvaluation generatorImages reduction6198.relations [5,635] reduction6198.output := by lin_cert using reduction6198.terms
def image6199 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6199 : InImage map_47_173 image6199 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6199 : Bundle := named_bundle% "RealMapCertificates/relations/basis6199.json"
theorem reductionProof6199 : EqualModuloRelations reduction6199.relations reduction6199.input reduction6199.output := by lin_cert using reduction6199.terms
theorem substitutionProof6199 : IsMapEvaluation generatorImages reduction6199.relations [0,0,0,0,0,0,0,0,0,686] reduction6199.output := by lin_cert using reduction6199.terms
def map_47_174 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6299 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6299 : InImage map_47_174 image6299 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6299 : Bundle := named_bundle% "RealMapCertificates/relations/basis6299.json"
theorem reductionProof6299 : EqualModuloRelations reduction6299.relations reduction6299.input reduction6299.output := by lin_cert using reduction6299.terms
theorem substitutionProof6299 : IsMapEvaluation generatorImages reduction6299.relations [8,8,8,8,183] reduction6299.output := by lin_cert using reduction6299.terms
def image6300 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6300 : InImage map_47_174 image6300 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6300 : Bundle := named_bundle% "RealMapCertificates/relations/basis6300.json"
theorem reductionProof6300 : EqualModuloRelations reduction6300.relations reduction6300.input reduction6300.output := by lin_cert using reduction6300.terms
theorem substitutionProof6300 : IsMapEvaluation generatorImages reduction6300.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6300.output := by lin_cert using reduction6300.terms
def map_47_175 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6448 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6448 : InImage map_47_175 image6448 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6448 : Bundle := named_bundle% "RealMapCertificates/relations/basis6448.json"
theorem reductionProof6448 : EqualModuloRelations reduction6448.relations reduction6448.input reduction6448.output := by lin_cert using reduction6448.terms
theorem substitutionProof6448 : IsMapEvaluation generatorImages reduction6448.relations [0,805] reduction6448.output := by lin_cert using reduction6448.terms
def map_47_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6537 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6537 : InImage map_47_176 image6537 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6537 : Bundle := named_bundle% "RealMapCertificates/relations/basis6537.json"
theorem reductionProof6537 : EqualModuloRelations reduction6537.relations reduction6537.input reduction6537.output := by lin_cert using reduction6537.terms
theorem substitutionProof6537 : IsMapEvaluation generatorImages reduction6537.relations [0,0,806] reduction6537.output := by lin_cert using reduction6537.terms
def map_47_177 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6659 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6659 : InImage map_47_177 image6659 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6659 : Bundle := named_bundle% "RealMapCertificates/relations/basis6659.json"
theorem reductionProof6659 : EqualModuloRelations reduction6659.relations reduction6659.input reduction6659.output := by lin_cert using reduction6659.terms
theorem substitutionProof6659 : IsMapEvaluation generatorImages reduction6659.relations [8,8,8,8,200] reduction6659.output := by lin_cert using reduction6659.terms
def map_47_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6789 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6789 : InImage map_47_178 image6789 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6789 : Bundle := named_bundle% "RealMapCertificates/relations/basis6789.json"
theorem reductionProof6789 : EqualModuloRelations reduction6789.relations reduction6789.input reduction6789.output := by lin_cert using reduction6789.terms
theorem substitutionProof6789 : IsMapEvaluation generatorImages reduction6789.relations [0,8,635] reduction6789.output := by lin_cert using reduction6789.terms
end RealMapCertificates
