import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 5 => [[1,4]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 22 => [[5,8]]
  | 29 => [[5,9]]
  | 32 => [[7,9]]
  | 40 => [[4,5,6]]
  | 42 => [[5,5,7]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 343 => [[4,4,4,6,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 759 => []
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 896 => []
  | 1031 => [[4,4,4,4,4,4,4,5,5,8,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1121 => []
  | 1143 => []
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1349 => []
  | 1362 => [[0,0,4,4,4,4,4,4,9,12,12]]
  | 1400 => []
  | 1566 => []
  | 1567 => []
  | 1620 => []
  | 1650 => []
  | 1717 => [[4,4,4,4,4,5,7,9,12,12]]
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | _ => []
def map_47_179 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6896 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6896 : InImage map_47_179 image6896 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6896 : Bundle := named_bundle% "RealMapCertificates/relations/basis6896.json"
theorem reductionProof6896 : EqualModuloRelations reduction6896.relations reduction6896.input reduction6896.output := by lin_cert using reduction6896.terms
theorem substitutionProof6896 : IsMapEvaluation generatorImages reduction6896.relations [0,0,8,636] reduction6896.output := by lin_cert using reduction6896.terms
def map_47_180 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7016 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7016 : InImage map_47_180 image7016 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7016 : Bundle := named_bundle% "RealMapCertificates/relations/basis7016.json"
theorem reductionProof7016 : EqualModuloRelations reduction7016.relations reduction7016.input reduction7016.output := by lin_cert using reduction7016.terms
theorem substitutionProof7016 : IsMapEvaluation generatorImages reduction7016.relations [8,8,8,8,16,111] reduction7016.output := by lin_cert using reduction7016.terms
def map_47_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7165 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7165 : InImage map_47_181 image7165 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7165 : Bundle := named_bundle% "RealMapCertificates/relations/basis7165.json"
theorem reductionProof7165 : EqualModuloRelations reduction7165.relations reduction7165.input reduction7165.output := by lin_cert using reduction7165.terms
theorem substitutionProof7165 : IsMapEvaluation generatorImages reduction7165.relations [0,8,662] reduction7165.output := by lin_cert using reduction7165.terms
def map_47_182 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image7252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7252 : InImage map_47_182 image7252 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7252 : Bundle := named_bundle% "RealMapCertificates/relations/basis7252.json"
theorem reductionProof7252 : EqualModuloRelations reduction7252.relations reduction7252.input reduction7252.output := by lin_cert using reduction7252.terms
theorem substitutionProof7252 : IsMapEvaluation generatorImages reduction7252.relations [0,0,8,663] reduction7252.output := by lin_cert using reduction7252.terms
def image7253 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7253 : InImage map_47_182 image7253 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7253 : Bundle := named_bundle% "RealMapCertificates/relations/basis7253.json"
theorem reductionProof7253 : EqualModuloRelations reduction7253.relations reduction7253.input reduction7253.output := by lin_cert using reduction7253.terms
theorem substitutionProof7253 : IsMapEvaluation generatorImages reduction7253.relations [0,0,0,871] reduction7253.output := by lin_cert using reduction7253.terms
def map_47_183 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image7382 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7382 : InImage map_47_183 image7382 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7382 : Bundle := named_bundle% "RealMapCertificates/relations/basis7382.json"
theorem reductionProof7382 : EqualModuloRelations reduction7382.relations reduction7382.input reduction7382.output := by lin_cert using reduction7382.terms
theorem substitutionProof7382 : IsMapEvaluation generatorImages reduction7382.relations [8,8,8,8,8,153] reduction7382.output := by lin_cert using reduction7382.terms
def map_47_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7519 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7519 : InImage map_47_184 image7519 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7519 : Bundle := named_bundle% "RealMapCertificates/relations/basis7519.json"
theorem reductionProof7519 : EqualModuloRelations reduction7519.relations reduction7519.input reduction7519.output := by lin_cert using reduction7519.terms
theorem substitutionProof7519 : IsMapEvaluation generatorImages reduction7519.relations [0,8,16,402] reduction7519.output := by lin_cert using reduction7519.terms
def map_47_185 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7616 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7616 : InImage map_47_185 image7616 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7616 : Bundle := named_bundle% "RealMapCertificates/relations/basis7616.json"
theorem reductionProof7616 : EqualModuloRelations reduction7616.relations reduction7616.input reduction7616.output := by lin_cert using reduction7616.terms
theorem substitutionProof7616 : IsMapEvaluation generatorImages reduction7616.relations [0,0,8,16,403] reduction7616.output := by lin_cert using reduction7616.terms
def map_47_186 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7743 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7743 : InImage map_47_186 image7743 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7743 : Bundle := named_bundle% "RealMapCertificates/relations/basis7743.json"
theorem reductionProof7743 : EqualModuloRelations reduction7743.relations reduction7743.input reduction7743.output := by lin_cert using reduction7743.terms
theorem substitutionProof7743 : IsMapEvaluation generatorImages reduction7743.relations [8,8,8,8,8,8,111] reduction7743.output := by lin_cert using reduction7743.terms
def map_47_187 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image7880 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation7880 : InImage map_47_187 image7880 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7880 : Bundle := named_bundle% "RealMapCertificates/relations/basis7880.json"
theorem reductionProof7880 : EqualModuloRelations reduction7880.relations reduction7880.input reduction7880.output := by lin_cert using reduction7880.terms
theorem substitutionProof7880 : IsMapEvaluation generatorImages reduction7880.relations [0,8,8,555] reduction7880.output := by lin_cert using reduction7880.terms
def map_47_188 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7957 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7957 : InImage map_47_188 image7957 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7957 : Bundle := named_bundle% "RealMapCertificates/relations/basis7957.json"
theorem reductionProof7957 : EqualModuloRelations reduction7957.relations reduction7957.input reduction7957.output := by lin_cert using reduction7957.terms
theorem substitutionProof7957 : IsMapEvaluation generatorImages reduction7957.relations [0,0,8,8,556] reduction7957.output := by lin_cert using reduction7957.terms
def map_47_189 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8096 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8096 : InImage map_47_189 image8096 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8096 : Bundle := named_bundle% "RealMapCertificates/relations/basis8096.json"
theorem reductionProof8096 : EqualModuloRelations reduction8096.relations reduction8096.input reduction8096.output := by lin_cert using reduction8096.terms
theorem substitutionProof8096 : IsMapEvaluation generatorImages reduction8096.relations [8,8,8,8,8,8,117] reduction8096.output := by lin_cert using reduction8096.terms
def map_47_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8230 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8230 : InImage map_47_190 image8230 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8230 : Bundle := named_bundle% "RealMapCertificates/relations/basis8230.json"
theorem reductionProof8230 : EqualModuloRelations reduction8230.relations reduction8230.input reduction8230.output := by lin_cert using reduction8230.terms
theorem substitutionProof8230 : IsMapEvaluation generatorImages reduction8230.relations [0,8,8,8,402] reduction8230.output := by lin_cert using reduction8230.terms
def map_47_191 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8339 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8339 : InImage map_47_191 image8339 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8339 : Bundle := named_bundle% "RealMapCertificates/relations/basis8339.json"
theorem reductionProof8339 : EqualModuloRelations reduction8339.relations reduction8339.input reduction8339.output := by lin_cert using reduction8339.terms
theorem substitutionProof8339 : IsMapEvaluation generatorImages reduction8339.relations [0,0,8,8,8,403] reduction8339.output := by lin_cert using reduction8339.terms
def map_47_192 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8467 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8467 : InImage map_47_192 image8467 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8467 : Bundle := named_bundle% "RealMapCertificates/relations/basis8467.json"
theorem reductionProof8467 : EqualModuloRelations reduction8467.relations reduction8467.input reduction8467.output := by lin_cert using reduction8467.terms
theorem substitutionProof8467 : IsMapEvaluation generatorImages reduction8467.relations [8,8,8,8,8,8,16,50] reduction8467.output := by lin_cert using reduction8467.terms
def image8468 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8468 : InImage map_47_192 image8468 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8468 : Bundle := named_bundle% "RealMapCertificates/relations/basis8468.json"
theorem reductionProof8468 : EqualModuloRelations reduction8468.relations reduction8468.input reduction8468.output := by lin_cert using reduction8468.terms
theorem substitutionProof8468 : IsMapEvaluation generatorImages reduction8468.relations [0,1031] reduction8468.output := by lin_cert using reduction8468.terms
def map_47_194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8712 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8712 : InImage map_47_194 image8712 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8712 : Bundle := named_bundle% "RealMapCertificates/relations/basis8712.json"
theorem reductionProof8712 : EqualModuloRelations reduction8712.relations reduction8712.input reduction8712.output := by lin_cert using reduction8712.terms
theorem substitutionProof8712 : IsMapEvaluation generatorImages reduction8712.relations [17,685] reduction8712.output := by lin_cert using reduction8712.terms
def map_47_195 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8867 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8867 : InImage map_47_195 image8867 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8867 : Bundle := named_bundle% "RealMapCertificates/relations/basis8867.json"
theorem reductionProof8867 : EqualModuloRelations reduction8867.relations reduction8867.input reduction8867.output := by lin_cert using reduction8867.terms
theorem substitutionProof8867 : IsMapEvaluation generatorImages reduction8867.relations [59,402] reduction8867.output := by lin_cert using reduction8867.terms
def image8868 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation8868 : InImage map_47_195 image8868 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8868 : Bundle := named_bundle% "RealMapCertificates/relations/basis8868.json"
theorem reductionProof8868 : EqualModuloRelations reduction8868.relations reduction8868.input reduction8868.output := by lin_cert using reduction8868.terms
theorem substitutionProof8868 : IsMapEvaluation generatorImages reduction8868.relations [17,17,403] reduction8868.output := by lin_cert using reduction8868.terms
def image8869 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation8869 : InImage map_47_195 image8869 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8869 : Bundle := named_bundle% "RealMapCertificates/relations/basis8869.json"
theorem reductionProof8869 : EqualModuloRelations reduction8869.relations reduction8869.input reduction8869.output := by lin_cert using reduction8869.terms
theorem substitutionProof8869 : IsMapEvaluation generatorImages reduction8869.relations [8,8,8,8,8,8,8,78] reduction8869.output := by lin_cert using reduction8869.terms
def map_47_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9016 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9016 : InImage map_47_196 image9016 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9016 : Bundle := named_bundle% "RealMapCertificates/relations/basis9016.json"
theorem reductionProof9016 : EqualModuloRelations reduction9016.relations reduction9016.input reduction9016.output := by lin_cert using reduction9016.terms
theorem substitutionProof9016 : IsMapEvaluation generatorImages reduction9016.relations [0,0,0,0,0,1033] reduction9016.output := by lin_cert using reduction9016.terms
def map_47_197 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image9140 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9140 : InImage map_47_197 image9140 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9140 : Bundle := named_bundle% "RealMapCertificates/relations/basis9140.json"
theorem reductionProof9140 : EqualModuloRelations reduction9140.relations reduction9140.input reduction9140.output := by lin_cert using reduction9140.terms
theorem substitutionProof9140 : IsMapEvaluation generatorImages reduction9140.relations [17,722] reduction9140.output := by lin_cert using reduction9140.terms
def image9141 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9141 : InImage map_47_197 image9141 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9141 : Bundle := named_bundle% "RealMapCertificates/relations/basis9141.json"
theorem reductionProof9141 : EqualModuloRelations reduction9141.relations reduction9141.input reduction9141.output := by lin_cert using reduction9141.terms
theorem substitutionProof9141 : IsMapEvaluation generatorImages reduction9141.relations [0,0,0,0,1059] reduction9141.output := by lin_cert using reduction9141.terms
def map_47_198 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9307 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9307 : InImage map_47_198 image9307 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9307 : Bundle := named_bundle% "RealMapCertificates/relations/basis9307.json"
theorem reductionProof9307 : EqualModuloRelations reduction9307.relations reduction9307.input reduction9307.output := by lin_cert using reduction9307.terms
theorem substitutionProof9307 : IsMapEvaluation generatorImages reduction9307.relations [17,17,433] reduction9307.output := by lin_cert using reduction9307.terms
def image9308 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9308 : InImage map_47_198 image9308 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9308 : Bundle := named_bundle% "RealMapCertificates/relations/basis9308.json"
theorem reductionProof9308 : EqualModuloRelations reduction9308.relations reduction9308.input reduction9308.output := by lin_cert using reduction9308.terms
theorem substitutionProof9308 : IsMapEvaluation generatorImages reduction9308.relations [8,8,8,8,8,8,8,8,50] reduction9308.output := by lin_cert using reduction9308.terms
def map_47_200 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9602 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9602 : InImage map_47_200 image9602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9602 : Bundle := named_bundle% "RealMapCertificates/relations/basis9602.json"
theorem reductionProof9602 : EqualModuloRelations reduction9602.relations reduction9602.input reduction9602.output := by lin_cert using reduction9602.terms
theorem substitutionProof9602 : IsMapEvaluation generatorImages reduction9602.relations [16,17,452] reduction9602.output := by lin_cert using reduction9602.terms
def map_47_201 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image9794 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9794 : InImage map_47_201 image9794 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9794 : Bundle := named_bundle% "RealMapCertificates/relations/basis9794.json"
theorem reductionProof9794 : EqualModuloRelations reduction9794.relations reduction9794.input reduction9794.output := by lin_cert using reduction9794.terms
theorem substitutionProof9794 : IsMapEvaluation generatorImages reduction9794.relations [8,42,402] reduction9794.output := by lin_cert using reduction9794.terms
def image9795 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9795 : InImage map_47_201 image9795 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9795 : Bundle := named_bundle% "RealMapCertificates/relations/basis9795.json"
theorem reductionProof9795 : EqualModuloRelations reduction9795.relations reduction9795.input reduction9795.output := by lin_cert using reduction9795.terms
theorem substitutionProof9795 : IsMapEvaluation generatorImages reduction9795.relations [8,8,8,8,8,8,8,8,56] reduction9795.output := by lin_cert using reduction9795.terms
def image9796 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9796 : InImage map_47_201 image9796 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9796 : Bundle := named_bundle% "RealMapCertificates/relations/basis9796.json"
theorem reductionProof9796 : EqualModuloRelations reduction9796.relations reduction9796.input reduction9796.output := by lin_cert using reduction9796.terms
theorem substitutionProof9796 : IsMapEvaluation generatorImages reduction9796.relations [0,0,0,64,402] reduction9796.output := by lin_cert using reduction9796.terms
def map_47_202 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9956 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9956 : InImage map_47_202 image9956 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9956 : Bundle := named_bundle% "RealMapCertificates/relations/basis9956.json"
theorem reductionProof9956 : EqualModuloRelations reduction9956.relations reduction9956.input reduction9956.output := by lin_cert using reduction9956.terms
theorem substitutionProof9956 : IsMapEvaluation generatorImages reduction9956.relations [0,0,0,0,64,403] reduction9956.output := by lin_cert using reduction9956.terms
def map_47_203 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image10098 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10098 : InImage map_47_203 image10098 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10098 : Bundle := named_bundle% "RealMapCertificates/relations/basis10098.json"
theorem reductionProof10098 : EqualModuloRelations reduction10098.relations reduction10098.input reduction10098.output := by lin_cert using reduction10098.terms
theorem substitutionProof10098 : IsMapEvaluation generatorImages reduction10098.relations [8,17,595] reduction10098.output := by lin_cert using reduction10098.terms
def map_47_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10289 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10289 : InImage map_47_204 image10289 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10289 : Bundle := named_bundle% "RealMapCertificates/relations/basis10289.json"
theorem reductionProof10289 : EqualModuloRelations reduction10289.relations reduction10289.input reduction10289.output := by lin_cert using reduction10289.terms
theorem substitutionProof10289 : IsMapEvaluation generatorImages reduction10289.relations [8,17,17,298] reduction10289.output := by lin_cert using reduction10289.terms
def image10290 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10290 : InImage map_47_204 image10290 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10290 : Bundle := named_bundle% "RealMapCertificates/relations/basis10290.json"
theorem reductionProof10290 : EqualModuloRelations reduction10290.relations reduction10290.input reduction10290.output := by lin_cert using reduction10290.terms
theorem substitutionProof10290 : IsMapEvaluation generatorImages reduction10290.relations [8,8,8,8,8,8,8,8,16,17] reduction10290.output := by lin_cert using reduction10290.terms
def image10291 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10291 : InImage map_47_204 image10291 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10291 : Bundle := named_bundle% "RealMapCertificates/relations/basis10291.json"
theorem reductionProof10291 : EqualModuloRelations reduction10291.relations reduction10291.input reduction10291.output := by lin_cert using reduction10291.terms
theorem substitutionProof10291 : IsMapEvaluation generatorImages reduction10291.relations [0,0,0,0,0,0,1143] reduction10291.output := by lin_cert using reduction10291.terms
def map_47_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10480 : InImage map_47_205 image10480 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10480 : Bundle := named_bundle% "RealMapCertificates/relations/basis10480.json"
theorem reductionProof10480 : EqualModuloRelations reduction10480.relations reduction10480.input reduction10480.output := by lin_cert using reduction10480.terms
theorem substitutionProof10480 : IsMapEvaluation generatorImages reduction10480.relations [5,1033] reduction10480.output := by lin_cert using reduction10480.terms
def map_47_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10622 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10622 : InImage map_47_206 image10622 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10622 : Bundle := named_bundle% "RealMapCertificates/relations/basis10622.json"
theorem reductionProof10622 : EqualModuloRelations reduction10622.relations reduction10622.input reduction10622.output := by lin_cert using reduction10622.terms
theorem substitutionProof10622 : IsMapEvaluation generatorImages reduction10622.relations [8,8,17,452] reduction10622.output := by lin_cert using reduction10622.terms
def map_47_207 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image10839 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation10839 : InImage map_47_207 image10839 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10839 : Bundle := named_bundle% "RealMapCertificates/relations/basis10839.json"
theorem reductionProof10839 : EqualModuloRelations reduction10839.relations reduction10839.input reduction10839.output := by lin_cert using reduction10839.terms
theorem substitutionProof10839 : IsMapEvaluation generatorImages reduction10839.relations [8,8,17,17,225] reduction10839.output := by lin_cert using reduction10839.terms
def image10840 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10840 : InImage map_47_207 image10840 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10840 : Bundle := named_bundle% "RealMapCertificates/relations/basis10840.json"
theorem reductionProof10840 : EqualModuloRelations reduction10840.relations reduction10840.input reduction10840.output := by lin_cert using reduction10840.terms
theorem substitutionProof10840 : IsMapEvaluation generatorImages reduction10840.relations [8,8,8,8,8,8,8,8,8,40] reduction10840.output := by lin_cert using reduction10840.terms
def image10841 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation10841 : InImage map_47_207 image10841 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10841 : Bundle := named_bundle% "RealMapCertificates/relations/basis10841.json"
theorem reductionProof10841 : EqualModuloRelations reduction10841.relations reduction10841.input reduction10841.output := by lin_cert using reduction10841.terms
theorem substitutionProof10841 : IsMapEvaluation generatorImages reduction10841.relations [0,1301] reduction10841.output := by lin_cert using reduction10841.terms
def map_47_208 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10999 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10999 : InImage map_47_208 image10999 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10999 : Bundle := named_bundle% "RealMapCertificates/relations/basis10999.json"
theorem reductionProof10999 : EqualModuloRelations reduction10999.relations reduction10999.input reduction10999.output := by lin_cert using reduction10999.terms
theorem substitutionProof10999 : IsMapEvaluation generatorImages reduction10999.relations [0,1314] reduction10999.output := by lin_cert using reduction10999.terms
def image11000 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11000 : InImage map_47_208 image11000 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11000 : Bundle := named_bundle% "RealMapCertificates/relations/basis11000.json"
theorem reductionProof11000 : EqualModuloRelations reduction11000.relations reduction11000.input reduction11000.output := by lin_cert using reduction11000.terms
theorem substitutionProof11000 : IsMapEvaluation generatorImages reduction11000.relations [0,0,0,0,0,64,452] reduction11000.output := by lin_cert using reduction11000.terms
def map_47_209 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11154 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11154 : InImage map_47_209 image11154 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11154 : Bundle := named_bundle% "RealMapCertificates/relations/basis11154.json"
theorem reductionProof11154 : EqualModuloRelations reduction11154.relations reduction11154.input reduction11154.output := by lin_cert using reduction11154.terms
theorem substitutionProof11154 : IsMapEvaluation generatorImages reduction11154.relations [8,8,17,488] reduction11154.output := by lin_cert using reduction11154.terms
def image11155 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11155 : InImage map_47_209 image11155 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11155 : Bundle := named_bundle% "RealMapCertificates/relations/basis11155.json"
theorem reductionProof11155 : EqualModuloRelations reduction11155.relations reduction11155.input reduction11155.output := by lin_cert using reduction11155.terms
theorem substitutionProof11155 : IsMapEvaluation generatorImages reduction11155.relations [0,0,0,0,0,0,138,244] reduction11155.output := by lin_cert using reduction11155.terms
def map_47_210 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image11346 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11346 : InImage map_47_210 image11346 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11346 : Bundle := named_bundle% "RealMapCertificates/relations/basis11346.json"
theorem reductionProof11346 : EqualModuloRelations reduction11346.relations reduction11346.input reduction11346.output := by lin_cert using reduction11346.terms
theorem substitutionProof11346 : IsMapEvaluation generatorImages reduction11346.relations [8,8,17,17,238] reduction11346.output := by lin_cert using reduction11346.terms
def image11347 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11347 : InImage map_47_210 image11347 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11347 : Bundle := named_bundle% "RealMapCertificates/relations/basis11347.json"
theorem reductionProof11347 : EqualModuloRelations reduction11347.relations reduction11347.input reduction11347.output := by lin_cert using reduction11347.terms
theorem substitutionProof11347 : IsMapEvaluation generatorImages reduction11347.relations [8,8,8,8,8,8,8,8,8,8,17] reduction11347.output := by lin_cert using reduction11347.terms
def image11348 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11348 : InImage map_47_210 image11348 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11348 : Bundle := named_bundle% "RealMapCertificates/relations/basis11348.json"
theorem reductionProof11348 : EqualModuloRelations reduction11348.relations reduction11348.input reduction11348.output := by lin_cert using reduction11348.terms
theorem substitutionProof11348 : IsMapEvaluation generatorImages reduction11348.relations [0,8,1033] reduction11348.output := by lin_cert using reduction11348.terms
def map_47_211 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image11546 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation11546 : InImage map_47_211 image11546 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11546 : Bundle := named_bundle% "RealMapCertificates/relations/basis11546.json"
theorem reductionProof11546 : EqualModuloRelations reduction11546.relations reduction11546.input reduction11546.output := by lin_cert using reduction11546.terms
theorem substitutionProof11546 : IsMapEvaluation generatorImages reduction11546.relations [0,1362] reduction11546.output := by lin_cert using reduction11546.terms
def map_47_212 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11685 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11685 : InImage map_47_212 image11685 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11685 : Bundle := named_bundle% "RealMapCertificates/relations/basis11685.json"
theorem reductionProof11685 : EqualModuloRelations reduction11685.relations reduction11685.input reduction11685.output := by lin_cert using reduction11685.terms
theorem substitutionProof11685 : IsMapEvaluation generatorImages reduction11685.relations [8,8,16,17,244] reduction11685.output := by lin_cert using reduction11685.terms
def map_47_213 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image11925 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11925 : InImage map_47_213 image11925 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction11925 : Bundle := named_bundle% "RealMapCertificates/relations/basis11925.json"
theorem reductionProof11925 : EqualModuloRelations reduction11925.relations reduction11925.input reduction11925.output := by lin_cert using reduction11925.terms
theorem substitutionProof11925 : IsMapEvaluation generatorImages reduction11925.relations [64,556] reduction11925.output := by lin_cert using reduction11925.terms
def image11926 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11926 : InImage map_47_213 image11926 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction11926 : Bundle := named_bundle% "RealMapCertificates/relations/basis11926.json"
theorem reductionProof11926 : EqualModuloRelations reduction11926.relations reduction11926.input reduction11926.output := by lin_cert using reduction11926.terms
theorem substitutionProof11926 : IsMapEvaluation generatorImages reduction11926.relations [8,8,8,42,224] reduction11926.output := by lin_cert using reduction11926.terms
def image11927 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11927 : InImage map_47_213 image11927 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction11927 : Bundle := named_bundle% "RealMapCertificates/relations/basis11927.json"
theorem reductionProof11927 : EqualModuloRelations reduction11927.relations reduction11927.input reduction11927.output := by lin_cert using reduction11927.terms
theorem substitutionProof11927 : IsMapEvaluation generatorImages reduction11927.relations [8,8,8,8,8,8,8,8,8,8,20] reduction11927.output := by lin_cert using reduction11927.terms
def image11928 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11928 : InImage map_47_213 image11928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction11928 : Bundle := named_bundle% "RealMapCertificates/relations/basis11928.json"
theorem reductionProof11928 : EqualModuloRelations reduction11928.relations reduction11928.input reduction11928.output := by lin_cert using reduction11928.terms
theorem substitutionProof11928 : IsMapEvaluation generatorImages reduction11928.relations [0,8,1076] reduction11928.output := by lin_cert using reduction11928.terms
def map_47_214 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12125 : InImage map_47_214 image12125 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12125 : Bundle := named_bundle% "RealMapCertificates/relations/basis12125.json"
theorem reductionProof12125 : EqualModuloRelations reduction12125.relations reduction12125.input reduction12125.output := by lin_cert using reduction12125.terms
theorem substitutionProof12125 : IsMapEvaluation generatorImages reduction12125.relations [0,8,1093] reduction12125.output := by lin_cert using reduction12125.terms
def image12126 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12126 : InImage map_47_214 image12126 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12126 : Bundle := named_bundle% "RealMapCertificates/relations/basis12126.json"
theorem reductionProof12126 : EqualModuloRelations reduction12126.relations reduction12126.input reduction12126.output := by lin_cert using reduction12126.terms
theorem substitutionProof12126 : IsMapEvaluation generatorImages reduction12126.relations [0,0,17,896] reduction12126.output := by lin_cert using reduction12126.terms
def map_47_215 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image12290 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12290 : InImage map_47_215 image12290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12290 : Bundle := named_bundle% "RealMapCertificates/relations/basis12290.json"
theorem reductionProof12290 : EqualModuloRelations reduction12290.relations reduction12290.input reduction12290.output := by lin_cert using reduction12290.terms
theorem substitutionProof12290 : IsMapEvaluation generatorImages reduction12290.relations [8,8,8,17,343] reduction12290.output := by lin_cert using reduction12290.terms
def map_47_216 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image12492 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12492 : InImage map_47_216 image12492 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction12492 : Bundle := named_bundle% "RealMapCertificates/relations/basis12492.json"
theorem reductionProof12492 : EqualModuloRelations reduction12492.relations reduction12492.input reduction12492.output := by lin_cert using reduction12492.terms
theorem substitutionProof12492 : IsMapEvaluation generatorImages reduction12492.relations [8,64,403] reduction12492.output := by lin_cert using reduction12492.terms
def image12493 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12493 : InImage map_47_216 image12493 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction12493 : Bundle := named_bundle% "RealMapCertificates/relations/basis12493.json"
theorem reductionProof12493 : EqualModuloRelations reduction12493.relations reduction12493.input reduction12493.output := by lin_cert using reduction12493.terms
theorem substitutionProof12493 : IsMapEvaluation generatorImages reduction12493.relations [8,8,8,17,17,185] reduction12493.output := by lin_cert using reduction12493.terms
def image12494 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12494 : InImage map_47_216 image12494 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction12494 : Bundle := named_bundle% "RealMapCertificates/relations/basis12494.json"
theorem reductionProof12494 : EqualModuloRelations reduction12494.relations reduction12494.input reduction12494.output := by lin_cert using reduction12494.terms
theorem substitutionProof12494 : IsMapEvaluation generatorImages reduction12494.relations [8,8,8,8,8,8,8,8,8,8,22] reduction12494.output := by lin_cert using reduction12494.terms
def image12495 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12495 : InImage map_47_216 image12495 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction12495 : Bundle := named_bundle% "RealMapCertificates/relations/basis12495.json"
theorem reductionProof12495 : EqualModuloRelations reduction12495.relations reduction12495.input reduction12495.output := by lin_cert using reduction12495.terms
theorem substitutionProof12495 : IsMapEvaluation generatorImages reduction12495.relations [0,8,16,725] reduction12495.output := by lin_cert using reduction12495.terms
def map_47_217 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12696 : InImage map_47_217 image12696 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12696 : Bundle := named_bundle% "RealMapCertificates/relations/basis12696.json"
theorem reductionProof12696 : EqualModuloRelations reduction12696.relations reduction12696.input reduction12696.output := by lin_cert using reduction12696.terms
theorem substitutionProof12696 : IsMapEvaluation generatorImages reduction12696.relations [5,64,452] reduction12696.output := by lin_cert using reduction12696.terms
def image12697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12697 : InImage map_47_217 image12697 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12697 : Bundle := named_bundle% "RealMapCertificates/relations/basis12697.json"
theorem reductionProof12697 : EqualModuloRelations reduction12697.relations reduction12697.input reduction12697.output := by lin_cert using reduction12697.terms
theorem substitutionProof12697 : IsMapEvaluation generatorImages reduction12697.relations [0,0,8,17,725] reduction12697.output := by lin_cert using reduction12697.terms
def map_47_218 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12839 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12839 : InImage map_47_218 image12839 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12839 : Bundle := named_bundle% "RealMapCertificates/relations/basis12839.json"
theorem reductionProof12839 : EqualModuloRelations reduction12839.relations reduction12839.input reduction12839.output := by lin_cert using reduction12839.terms
theorem substitutionProof12839 : IsMapEvaluation generatorImages reduction12839.relations [8,8,8,8,17,244] reduction12839.output := by lin_cert using reduction12839.terms
def map_47_219 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13079 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13079 : InImage map_47_219 image13079 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13079 : Bundle := named_bundle% "RealMapCertificates/relations/basis13079.json"
theorem reductionProof13079 : EqualModuloRelations reduction13079.relations reduction13079.input reduction13079.output := by lin_cert using reduction13079.terms
theorem substitutionProof13079 : IsMapEvaluation generatorImages reduction13079.relations [8,64,433] reduction13079.output := by lin_cert using reduction13079.terms
def image13080 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13080 : InImage map_47_219 image13080 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13080 : Bundle := named_bundle% "RealMapCertificates/relations/basis13080.json"
theorem reductionProof13080 : EqualModuloRelations reduction13080.relations reduction13080.input reduction13080.output := by lin_cert using reduction13080.terms
theorem substitutionProof13080 : IsMapEvaluation generatorImages reduction13080.relations [8,8,8,8,17,17,138] reduction13080.output := by lin_cert using reduction13080.terms
def image13081 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation13081 : InImage map_47_219 image13081 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13081 : Bundle := named_bundle% "RealMapCertificates/relations/basis13081.json"
theorem reductionProof13081 : EqualModuloRelations reduction13081.relations reduction13081.input reduction13081.output := by lin_cert using reduction13081.terms
theorem substitutionProof13081 : IsMapEvaluation generatorImages reduction13081.relations [8,8,8,8,8,8,8,8,8,8,29] reduction13081.output := by lin_cert using reduction13081.terms
def image13082 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13082 : InImage map_47_219 image13082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13082 : Bundle := named_bundle% "RealMapCertificates/relations/basis13082.json"
theorem reductionProof13082 : EqualModuloRelations reduction13082.relations reduction13082.input reduction13082.output := by lin_cert using reduction13082.terms
theorem substitutionProof13082 : IsMapEvaluation generatorImages reduction13082.relations [0,8,8,896] reduction13082.output := by lin_cert using reduction13082.terms
def map_47_220 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image13251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13251 : InImage map_47_220 image13251 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13251 : Bundle := named_bundle% "RealMapCertificates/relations/basis13251.json"
theorem reductionProof13251 : EqualModuloRelations reduction13251.relations reduction13251.input reduction13251.output := by lin_cert using reduction13251.terms
theorem substitutionProof13251 : IsMapEvaluation generatorImages reduction13251.relations [0,0,8,17,759] reduction13251.output := by lin_cert using reduction13251.terms
def map_47_221 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13410 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13410 : InImage map_47_221 image13410 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13410 : Bundle := named_bundle% "RealMapCertificates/relations/basis13410.json"
theorem reductionProof13410 : EqualModuloRelations reduction13410.relations reduction13410.input reduction13410.output := by lin_cert using reduction13410.terms
theorem substitutionProof13410 : IsMapEvaluation generatorImages reduction13410.relations [1567] reduction13410.output := by lin_cert using reduction13410.terms
def image13411 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13411 : InImage map_47_221 image13411 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13411 : Bundle := named_bundle% "RealMapCertificates/relations/basis13411.json"
theorem reductionProof13411 : EqualModuloRelations reduction13411.relations reduction13411.input reduction13411.output := by lin_cert using reduction13411.terms
theorem substitutionProof13411 : IsMapEvaluation generatorImages reduction13411.relations [1566] reduction13411.output := by lin_cert using reduction13411.terms
def image13412 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13412 : InImage map_47_221 image13412 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13412 : Bundle := named_bundle% "RealMapCertificates/relations/basis13412.json"
theorem reductionProof13412 : EqualModuloRelations reduction13412.relations reduction13412.input reduction13412.output := by lin_cert using reduction13412.terms
theorem substitutionProof13412 : IsMapEvaluation generatorImages reduction13412.relations [8,8,8,8,17,257] reduction13412.output := by lin_cert using reduction13412.terms
def map_47_222 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13631 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13631 : InImage map_47_222 image13631 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13631 : Bundle := named_bundle% "RealMapCertificates/relations/basis13631.json"
theorem reductionProof13631 : EqualModuloRelations reduction13631.relations reduction13631.input reduction13631.output := by lin_cert using reduction13631.terms
theorem substitutionProof13631 : IsMapEvaluation generatorImages reduction13631.relations [8,16,64,225] reduction13631.output := by lin_cert using reduction13631.terms
def image13632 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13632 : InImage map_47_222 image13632 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13632 : Bundle := named_bundle% "RealMapCertificates/relations/basis13632.json"
theorem reductionProof13632 : EqualModuloRelations reduction13632.relations reduction13632.input reduction13632.output := by lin_cert using reduction13632.terms
theorem substitutionProof13632 : IsMapEvaluation generatorImages reduction13632.relations [8,8,8,8,17,17,147] reduction13632.output := by lin_cert using reduction13632.terms
def image13633 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13633 : InImage map_47_222 image13633 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13633 : Bundle := named_bundle% "RealMapCertificates/relations/basis13633.json"
theorem reductionProof13633 : EqualModuloRelations reduction13633.relations reduction13633.input reduction13633.output := by lin_cert using reduction13633.terms
theorem substitutionProof13633 : IsMapEvaluation generatorImages reduction13633.relations [8,8,8,8,8,8,8,8,8,8,32] reduction13633.output := by lin_cert using reduction13633.terms
def image13634 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13634 : InImage map_47_222 image13634 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13634 : Bundle := named_bundle% "RealMapCertificates/relations/basis13634.json"
theorem reductionProof13634 : EqualModuloRelations reduction13634.relations reduction13634.input reduction13634.output := by lin_cert using reduction13634.terms
theorem substitutionProof13634 : IsMapEvaluation generatorImages reduction13634.relations [0,8,8,8,725] reduction13634.output := by lin_cert using reduction13634.terms
def map_47_223 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13823 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13823 : InImage map_47_223 image13823 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13823 : Bundle := named_bundle% "RealMapCertificates/relations/basis13823.json"
theorem reductionProof13823 : EqualModuloRelations reduction13823.relations reduction13823.input reduction13823.output := by lin_cert using reduction13823.terms
theorem substitutionProof13823 : IsMapEvaluation generatorImages reduction13823.relations [0,0,8,16,17,491] reduction13823.output := by lin_cert using reduction13823.terms
def map_47_224 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13963 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13963 : InImage map_47_224 image13963 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13963 : Bundle := named_bundle% "RealMapCertificates/relations/basis13963.json"
theorem reductionProof13963 : EqualModuloRelations reduction13963.relations reduction13963.input reduction13963.output := by lin_cert using reduction13963.terms
theorem substitutionProof13963 : IsMapEvaluation generatorImages reduction13963.relations [1620] reduction13963.output := by lin_cert using reduction13963.terms
def image13964 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13964 : InImage map_47_224 image13964 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13964 : Bundle := named_bundle% "RealMapCertificates/relations/basis13964.json"
theorem reductionProof13964 : EqualModuloRelations reduction13964.relations reduction13964.input reduction13964.output := by lin_cert using reduction13964.terms
theorem substitutionProof13964 : IsMapEvaluation generatorImages reduction13964.relations [8,8,8,8,16,17,149] reduction13964.output := by lin_cert using reduction13964.terms
def map_47_225 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image14204 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14204 : InImage map_47_225 image14204 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14204 : Bundle := named_bundle% "RealMapCertificates/relations/basis14204.json"
theorem reductionProof14204 : EqualModuloRelations reduction14204.relations reduction14204.input reduction14204.output := by lin_cert using reduction14204.terms
theorem substitutionProof14204 : IsMapEvaluation generatorImages reduction14204.relations [8,8,64,298] reduction14204.output := by lin_cert using reduction14204.terms
def image14205 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14205 : InImage map_47_225 image14205 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14205 : Bundle := named_bundle% "RealMapCertificates/relations/basis14205.json"
theorem reductionProof14205 : EqualModuloRelations reduction14205.relations reduction14205.input reduction14205.output := by lin_cert using reduction14205.terms
theorem substitutionProof14205 : IsMapEvaluation generatorImages reduction14205.relations [8,8,8,8,8,42,137] reduction14205.output := by lin_cert using reduction14205.terms
def image14206 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14206 : InImage map_47_225 image14206 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14206 : Bundle := named_bundle% "RealMapCertificates/relations/basis14206.json"
theorem reductionProof14206 : EqualModuloRelations reduction14206.relations reduction14206.input reduction14206.output := by lin_cert using reduction14206.terms
theorem substitutionProof14206 : IsMapEvaluation generatorImages reduction14206.relations [8,8,8,8,8,8,8,8,8,9,32] reduction14206.output := by lin_cert using reduction14206.terms
def map_47_227 : Matrix 3 5 := fun i j => ([false,false,false,false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14536 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14536 : InImage map_47_227 image14536 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14536 : Bundle := named_bundle% "RealMapCertificates/relations/basis14536.json"
theorem reductionProof14536 : EqualModuloRelations reduction14536.relations reduction14536.input reduction14536.output := by lin_cert using reduction14536.terms
theorem substitutionProof14536 : IsMapEvaluation generatorImages reduction14536.relations [224,246] reduction14536.output := by lin_cert using reduction14536.terms
def image14537 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14537 : InImage map_47_227 image14537 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14537 : Bundle := named_bundle% "RealMapCertificates/relations/basis14537.json"
theorem reductionProof14537 : EqualModuloRelations reduction14537.relations reduction14537.input reduction14537.output := by lin_cert using reduction14537.terms
theorem substitutionProof14537 : IsMapEvaluation generatorImages reduction14537.relations [60,725] reduction14537.output := by lin_cert using reduction14537.terms
def image14538 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14538 : InImage map_47_227 image14538 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14538 : Bundle := named_bundle% "RealMapCertificates/relations/basis14538.json"
theorem reductionProof14538 : EqualModuloRelations reduction14538.relations reduction14538.input reduction14538.output := by lin_cert using reduction14538.terms
theorem substitutionProof14538 : IsMapEvaluation generatorImages reduction14538.relations [59,725] reduction14538.output := by lin_cert using reduction14538.terms
def image14539 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14539 : InImage map_47_227 image14539 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14539 : Bundle := named_bundle% "RealMapCertificates/relations/basis14539.json"
theorem reductionProof14539 : EqualModuloRelations reduction14539.relations reduction14539.input reduction14539.output := by lin_cert using reduction14539.terms
theorem substitutionProof14539 : IsMapEvaluation generatorImages reduction14539.relations [8,1349] reduction14539.output := by lin_cert using reduction14539.terms
def image14540 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14540 : InImage map_47_227 image14540 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14540 : Bundle := named_bundle% "RealMapCertificates/relations/basis14540.json"
theorem reductionProof14540 : EqualModuloRelations reduction14540.relations reduction14540.input reduction14540.output := by lin_cert using reduction14540.terms
theorem substitutionProof14540 : IsMapEvaluation generatorImages reduction14540.relations [8,8,8,8,8,17,206] reduction14540.output := by lin_cert using reduction14540.terms
def map_47_228 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image14770 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14770 : InImage map_47_228 image14770 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14770 : Bundle := named_bundle% "RealMapCertificates/relations/basis14770.json"
theorem reductionProof14770 : EqualModuloRelations reduction14770.relations reduction14770.input reduction14770.output := by lin_cert using reduction14770.terms
theorem substitutionProof14770 : IsMapEvaluation generatorImages reduction14770.relations [8,8,8,64,225] reduction14770.output := by lin_cert using reduction14770.terms
def image14771 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14771 : InImage map_47_228 image14771 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14771 : Bundle := named_bundle% "RealMapCertificates/relations/basis14771.json"
theorem reductionProof14771 : EqualModuloRelations reduction14771.relations reduction14771.input reduction14771.output := by lin_cert using reduction14771.terms
theorem substitutionProof14771 : IsMapEvaluation generatorImages reduction14771.relations [8,8,8,8,8,17,17,113] reduction14771.output := by lin_cert using reduction14771.terms
def image14772 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14772 : InImage map_47_228 image14772 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14772 : Bundle := named_bundle% "RealMapCertificates/relations/basis14772.json"
theorem reductionProof14772 : EqualModuloRelations reduction14772.relations reduction14772.input reduction14772.output := by lin_cert using reduction14772.terms
theorem substitutionProof14772 : IsMapEvaluation generatorImages reduction14772.relations [8,8,8,8,8,8,8,8,8,13,32] reduction14772.output := by lin_cert using reduction14772.terms
def image14773 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14773 : InImage map_47_228 image14773 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14773 : Bundle := named_bundle% "RealMapCertificates/relations/basis14773.json"
theorem reductionProof14773 : EqualModuloRelations reduction14773.relations reduction14773.input reduction14773.output := by lin_cert using reduction14773.terms
theorem substitutionProof14773 : IsMapEvaluation generatorImages reduction14773.relations [0,0,1650] reduction14773.output := by lin_cert using reduction14773.terms
def map_47_230 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image15131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15131 : InImage map_47_230 image15131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15131 : Bundle := named_bundle% "RealMapCertificates/relations/basis15131.json"
theorem reductionProof15131 : EqualModuloRelations reduction15131.relations reduction15131.input reduction15131.output := by lin_cert using reduction15131.terms
theorem substitutionProof15131 : IsMapEvaluation generatorImages reduction15131.relations [42,896] reduction15131.output := by lin_cert using reduction15131.terms
def image15132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15132 : InImage map_47_230 image15132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15132 : Bundle := named_bundle% "RealMapCertificates/relations/basis15132.json"
theorem reductionProof15132 : EqualModuloRelations reduction15132.relations reduction15132.input reduction15132.output := by lin_cert using reduction15132.terms
theorem substitutionProof15132 : IsMapEvaluation generatorImages reduction15132.relations [8,1400] reduction15132.output := by lin_cert using reduction15132.terms
def image15133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15133 : InImage map_47_230 image15133 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15133 : Bundle := named_bundle% "RealMapCertificates/relations/basis15133.json"
theorem reductionProof15133 : EqualModuloRelations reduction15133.relations reduction15133.input reduction15133.output := by lin_cert using reduction15133.terms
theorem substitutionProof15133 : IsMapEvaluation generatorImages reduction15133.relations [8,8,8,8,8,8,17,149] reduction15133.output := by lin_cert using reduction15133.terms
def image15134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15134 : InImage map_47_230 image15134 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15134 : Bundle := named_bundle% "RealMapCertificates/relations/basis15134.json"
theorem reductionProof15134 : EqualModuloRelations reduction15134.relations reduction15134.input reduction15134.output := by lin_cert using reduction15134.terms
theorem substitutionProof15134 : IsMapEvaluation generatorImages reduction15134.relations [0,1717] reduction15134.output := by lin_cert using reduction15134.terms
def map_47_231 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15392 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15392 : InImage map_47_231 image15392 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15392 : Bundle := named_bundle% "RealMapCertificates/relations/basis15392.json"
theorem reductionProof15392 : EqualModuloRelations reduction15392.relations reduction15392.input reduction15392.output := by lin_cert using reduction15392.terms
theorem substitutionProof15392 : IsMapEvaluation generatorImages reduction15392.relations [8,8,8,64,238] reduction15392.output := by lin_cert using reduction15392.terms
def image15393 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15393 : InImage map_47_231 image15393 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15393 : Bundle := named_bundle% "RealMapCertificates/relations/basis15393.json"
theorem reductionProof15393 : EqualModuloRelations reduction15393.relations reduction15393.input reduction15393.output := by lin_cert using reduction15393.terms
theorem substitutionProof15393 : IsMapEvaluation generatorImages reduction15393.relations [8,8,8,8,8,8,17,154] reduction15393.output := by lin_cert using reduction15393.terms
def image15394 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15394 : InImage map_47_231 image15394 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15394 : Bundle := named_bundle% "RealMapCertificates/relations/basis15394.json"
theorem reductionProof15394 : EqualModuloRelations reduction15394.relations reduction15394.input reduction15394.output := by lin_cert using reduction15394.terms
theorem substitutionProof15394 : IsMapEvaluation generatorImages reduction15394.relations [8,8,8,8,8,8,8,8,9,13,32] reduction15394.output := by lin_cert using reduction15394.terms
def map_47_232 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15590 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15590 : InImage map_47_232 image15590 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15590 : Bundle := named_bundle% "RealMapCertificates/relations/basis15590.json"
theorem reductionProof15590 : EqualModuloRelations reduction15590.relations reduction15590.input reduction15590.output := by lin_cert using reduction15590.terms
theorem substitutionProof15590 : IsMapEvaluation generatorImages reduction15590.relations [1771] reduction15590.output := by lin_cert using reduction15590.terms
def map_47_233 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image15784 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15784 : InImage map_47_233 image15784 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15784 : Bundle := named_bundle% "RealMapCertificates/relations/basis15784.json"
theorem reductionProof15784 : EqualModuloRelations reduction15784.relations reduction15784.input reduction15784.output := by lin_cert using reduction15784.terms
theorem substitutionProof15784 : IsMapEvaluation generatorImages reduction15784.relations [8,42,725] reduction15784.output := by lin_cert using reduction15784.terms
def image15785 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15785 : InImage map_47_233 image15785 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15785 : Bundle := named_bundle% "RealMapCertificates/relations/basis15785.json"
theorem reductionProof15785 : EqualModuloRelations reduction15785.relations reduction15785.input reduction15785.output := by lin_cert using reduction15785.terms
theorem substitutionProof15785 : IsMapEvaluation generatorImages reduction15785.relations [8,8,1121] reduction15785.output := by lin_cert using reduction15785.terms
def image15786 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15786 : InImage map_47_233 image15786 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15786 : Bundle := named_bundle% "RealMapCertificates/relations/basis15786.json"
theorem reductionProof15786 : EqualModuloRelations reduction15786.relations reduction15786.input reduction15786.output := by lin_cert using reduction15786.terms
theorem substitutionProof15786 : IsMapEvaluation generatorImages reduction15786.relations [8,8,8,8,8,8,17,160] reduction15786.output := by lin_cert using reduction15786.terms
def image15787 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15787 : InImage map_47_233 image15787 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15787 : Bundle := named_bundle% "RealMapCertificates/relations/basis15787.json"
theorem reductionProof15787 : EqualModuloRelations reduction15787.relations reduction15787.input reduction15787.output := by lin_cert using reduction15787.terms
theorem substitutionProof15787 : IsMapEvaluation generatorImages reduction15787.relations [0,0,0,64,725] reduction15787.output := by lin_cert using reduction15787.terms
end RealMapCertificates
