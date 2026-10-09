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
  | 32 => [[7,9]]
  | 42 => [[5,5,7]]
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 80 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 185 => [[0,4,4,8,12]]
  | 186 => []
  | 188 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 232 => [[5,6,9,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 260 => []
  | 278 => []
  | 299 => []
  | 327 => []
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 549 => []
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 653 => []
  | 689 => []
  | 725 => []
  | 752 => []
  | 759 => []
  | 795 => []
  | 796 => []
  | 809 => []
  | 831 => []
  | 927 => [[4,5,5,10,12,12]]
  | 939 => []
  | 971 => []
  | 972 => []
  | 1167 => [[4,4,5,7,10,12,12]]
  | 1181 => []
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1381 => [[4,4,4,5,7,10,12,12]]
  | 1535 => []
  | 1604 => [[4,4,4,4,5,7,10,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1750 => []
  | 1751 => []
  | 1854 => [[4,4,4,4,4,5,7,10,12,12]]
  | 1926 => []
  | 1927 => []
  | 1967 => []
  | 1994 => []
  | 2090 => []
  | 2091 => [[4,4,4,6,8,12,12,12]]
  | 2540 => [[4,4,4,5,5,8,12,12,12]]
  | _ => []
def map_47_234 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16034 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16034 : InImage map_47_234 image16034 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16034 : Bundle := named_bundle% "RealMapCertificates/relations/basis16034.json"
theorem reductionProof16034 : EqualModuloRelations reduction16034.relations reduction16034.input reduction16034.output := by lin_cert using reduction16034.terms
theorem substitutionProof16034 : IsMapEvaluation generatorImages reduction16034.relations [8,8,8,16,64,138] reduction16034.output := by lin_cert using reduction16034.terms
def image16035 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16035 : InImage map_47_234 image16035 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16035 : Bundle := named_bundle% "RealMapCertificates/relations/basis16035.json"
theorem reductionProof16035 : EqualModuloRelations reduction16035.relations reduction16035.input reduction16035.output := by lin_cert using reduction16035.terms
theorem substitutionProof16035 : IsMapEvaluation generatorImages reduction16035.relations [8,8,8,8,8,8,17,162] reduction16035.output := by lin_cert using reduction16035.terms
def image16036 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16036 : InImage map_47_234 image16036 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16036 : Bundle := named_bundle% "RealMapCertificates/relations/basis16036.json"
theorem reductionProof16036 : EqualModuloRelations reduction16036.relations reduction16036.input reduction16036.output := by lin_cert using reduction16036.terms
theorem substitutionProof16036 : IsMapEvaluation generatorImages reduction16036.relations [8,8,8,8,8,8,8,8,13,13,32] reduction16036.output := by lin_cert using reduction16036.terms
def image16037 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16037 : InImage map_47_234 image16037 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16037 : Bundle := named_bundle% "RealMapCertificates/relations/basis16037.json"
theorem reductionProof16037 : EqualModuloRelations reduction16037.relations reduction16037.input reduction16037.output := by lin_cert using reduction16037.terms
theorem substitutionProof16037 : IsMapEvaluation generatorImages reduction16037.relations [0,0,64,752] reduction16037.output := by lin_cert using reduction16037.terms
def image16038 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16038 : InImage map_47_234 image16038 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16038 : Bundle := named_bundle% "RealMapCertificates/relations/basis16038.json"
theorem reductionProof16038 : EqualModuloRelations reduction16038.relations reduction16038.input reduction16038.output := by lin_cert using reduction16038.terms
theorem substitutionProof16038 : IsMapEvaluation generatorImages reduction16038.relations [0,0,0,0,138,491] reduction16038.output := by lin_cert using reduction16038.terms
def map_47_235 : Matrix 3 3 := fun i j => ([true,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16256 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16256 : InImage map_47_235 image16256 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16256 : Bundle := named_bundle% "RealMapCertificates/relations/basis16256.json"
theorem reductionProof16256 : EqualModuloRelations reduction16256.relations reduction16256.input reduction16256.output := by lin_cert using reduction16256.terms
theorem substitutionProof16256 : IsMapEvaluation generatorImages reduction16256.relations [1854] reduction16256.output := by lin_cert using reduction16256.terms
def image16257 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16257 : InImage map_47_235 image16257 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16257 : Bundle := named_bundle% "RealMapCertificates/relations/basis16257.json"
theorem reductionProof16257 : EqualModuloRelations reduction16257.relations reduction16257.input reduction16257.output := by lin_cert using reduction16257.terms
theorem substitutionProof16257 : IsMapEvaluation generatorImages reduction16257.relations [0,0,0,0,1750] reduction16257.output := by lin_cert using reduction16257.terms
def image16258 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16258 : InImage map_47_235 image16258 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16258 : Bundle := named_bundle% "RealMapCertificates/relations/basis16258.json"
theorem reductionProof16258 : EqualModuloRelations reduction16258.relations reduction16258.input reduction16258.output := by lin_cert using reduction16258.terms
theorem substitutionProof16258 : IsMapEvaluation generatorImages reduction16258.relations [0,0,0,0,0,0,0,1686] reduction16258.output := by lin_cert using reduction16258.terms
def map_47_236 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16452 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16452 : InImage map_47_236 image16452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16452 : Bundle := named_bundle% "RealMapCertificates/relations/basis16452.json"
theorem reductionProof16452 : EqualModuloRelations reduction16452.relations reduction16452.input reduction16452.output := by lin_cert using reduction16452.terms
theorem substitutionProof16452 : IsMapEvaluation generatorImages reduction16452.relations [8,42,759] reduction16452.output := by lin_cert using reduction16452.terms
def image16453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16453 : InImage map_47_236 image16453 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16453 : Bundle := named_bundle% "RealMapCertificates/relations/basis16453.json"
theorem reductionProof16453 : EqualModuloRelations reduction16453.relations reduction16453.input reduction16453.output := by lin_cert using reduction16453.terms
theorem substitutionProof16453 : IsMapEvaluation generatorImages reduction16453.relations [8,8,1181] reduction16453.output := by lin_cert using reduction16453.terms
def image16454 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16454 : InImage map_47_236 image16454 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16454 : Bundle := named_bundle% "RealMapCertificates/relations/basis16454.json"
theorem reductionProof16454 : EqualModuloRelations reduction16454.relations reduction16454.input reduction16454.output := by lin_cert using reduction16454.terms
theorem substitutionProof16454 : IsMapEvaluation generatorImages reduction16454.relations [8,8,8,8,8,8,16,167] reduction16454.output := by lin_cert using reduction16454.terms
def image16455 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16455 : InImage map_47_236 image16455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16455 : Bundle := named_bundle% "RealMapCertificates/relations/basis16455.json"
theorem reductionProof16455 : EqualModuloRelations reduction16455.relations reduction16455.input reduction16455.output := by lin_cert using reduction16455.terms
theorem substitutionProof16455 : IsMapEvaluation generatorImages reduction16455.relations [0,0,0,64,759] reduction16455.output := by lin_cert using reduction16455.terms
def image16456 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16456 : InImage map_47_236 image16456 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16456 : Bundle := named_bundle% "RealMapCertificates/relations/basis16456.json"
theorem reductionProof16456 : EqualModuloRelations reduction16456.relations reduction16456.input reduction16456.output := by lin_cert using reduction16456.terms
theorem substitutionProof16456 : IsMapEvaluation generatorImages reduction16456.relations [0,0,0,0,0,0,1735] reduction16456.output := by lin_cert using reduction16456.terms
def map_47_237 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16710 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16710 : InImage map_47_237 image16710 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16710 : Bundle := named_bundle% "RealMapCertificates/relations/basis16710.json"
theorem reductionProof16710 : EqualModuloRelations reduction16710.relations reduction16710.input reduction16710.output := by lin_cert using reduction16710.terms
theorem substitutionProof16710 : IsMapEvaluation generatorImages reduction16710.relations [8,8,8,8,64,185] reduction16710.output := by lin_cert using reduction16710.terms
def image16711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16711 : InImage map_47_237 image16711 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16711 : Bundle := named_bundle% "RealMapCertificates/relations/basis16711.json"
theorem reductionProof16711 : EqualModuloRelations reduction16711.relations reduction16711.input reduction16711.output := by lin_cert using reduction16711.terms
theorem substitutionProof16711 : IsMapEvaluation generatorImages reduction16711.relations [8,8,8,8,8,8,8,42,64] reduction16711.output := by lin_cert using reduction16711.terms
def image16712 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16712 : InImage map_47_237 image16712 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16712 : Bundle := named_bundle% "RealMapCertificates/relations/basis16712.json"
theorem reductionProof16712 : EqualModuloRelations reduction16712.relations reduction16712.input reduction16712.output := by lin_cert using reduction16712.terms
theorem substitutionProof16712 : IsMapEvaluation generatorImages reduction16712.relations [8,8,8,8,8,8,8,9,13,13,32] reduction16712.output := by lin_cert using reduction16712.terms
def image16713 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16713 : InImage map_47_237 image16713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16713 : Bundle := named_bundle% "RealMapCertificates/relations/basis16713.json"
theorem reductionProof16713 : EqualModuloRelations reduction16713.relations reduction16713.input reduction16713.output := by lin_cert using reduction16713.terms
theorem substitutionProof16713 : IsMapEvaluation generatorImages reduction16713.relations [0,0,0,0,0,0,0,1736] reduction16713.output := by lin_cert using reduction16713.terms
def map_47_238 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16919 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16919 : InImage map_47_238 image16919 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16919 : Bundle := named_bundle% "RealMapCertificates/relations/basis16919.json"
theorem reductionProof16919 : EqualModuloRelations reduction16919.relations reduction16919.input reduction16919.output := by lin_cert using reduction16919.terms
theorem substitutionProof16919 : IsMapEvaluation generatorImages reduction16919.relations [16,1335] reduction16919.output := by lin_cert using reduction16919.terms
def image16920 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16920 : InImage map_47_238 image16920 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16920 : Bundle := named_bundle% "RealMapCertificates/relations/basis16920.json"
theorem reductionProof16920 : EqualModuloRelations reduction16920.relations reduction16920.input reduction16920.output := by lin_cert using reduction16920.terms
theorem substitutionProof16920 : IsMapEvaluation generatorImages reduction16920.relations [0,64,64,224] reduction16920.output := by lin_cert using reduction16920.terms
def image16921 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16921 : InImage map_47_238 image16921 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16921 : Bundle := named_bundle% "RealMapCertificates/relations/basis16921.json"
theorem reductionProof16921 : EqualModuloRelations reduction16921.relations reduction16921.input reduction16921.output := by lin_cert using reduction16921.terms
theorem substitutionProof16921 : IsMapEvaluation generatorImages reduction16921.relations [0,0,0,0,0,0,0,0,1737] reduction16921.output := by lin_cert using reduction16921.terms
def map_47_239 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image17140 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17140 : InImage map_47_239 image17140 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17140 : Bundle := named_bundle% "RealMapCertificates/relations/basis17140.json"
theorem reductionProof17140 : EqualModuloRelations reduction17140.relations reduction17140.input reduction17140.output := by lin_cert using reduction17140.terms
theorem substitutionProof17140 : IsMapEvaluation generatorImages reduction17140.relations [8,8,60,491] reduction17140.output := by lin_cert using reduction17140.terms
def image17141 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17141 : InImage map_47_239 image17141 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17141 : Bundle := named_bundle% "RealMapCertificates/relations/basis17141.json"
theorem reductionProof17141 : EqualModuloRelations reduction17141.relations reduction17141.input reduction17141.output := by lin_cert using reduction17141.terms
theorem substitutionProof17141 : IsMapEvaluation generatorImages reduction17141.relations [8,8,8,939] reduction17141.output := by lin_cert using reduction17141.terms
def image17142 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17142 : InImage map_47_239 image17142 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17142 : Bundle := named_bundle% "RealMapCertificates/relations/basis17142.json"
theorem reductionProof17142 : EqualModuloRelations reduction17142.relations reduction17142.input reduction17142.output := by lin_cert using reduction17142.terms
theorem substitutionProof17142 : IsMapEvaluation generatorImages reduction17142.relations [8,8,8,8,8,8,8,232] reduction17142.output := by lin_cert using reduction17142.terms
def image17143 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17143 : InImage map_47_239 image17143 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17143 : Bundle := named_bundle% "RealMapCertificates/relations/basis17143.json"
theorem reductionProof17143 : EqualModuloRelations reduction17143.relations reduction17143.input reduction17143.output := by lin_cert using reduction17143.terms
theorem substitutionProof17143 : IsMapEvaluation generatorImages reduction17143.relations [1,64,64,224] reduction17143.output := by lin_cert using reduction17143.terms
def image17144 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17144 : InImage map_47_239 image17144 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17144 : Bundle := named_bundle% "RealMapCertificates/relations/basis17144.json"
theorem reductionProof17144 : EqualModuloRelations reduction17144.relations reduction17144.input reduction17144.output := by lin_cert using reduction17144.terms
theorem substitutionProof17144 : IsMapEvaluation generatorImages reduction17144.relations [0,0,64,64,225] reduction17144.output := by lin_cert using reduction17144.terms
def map_47_240 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17409 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17409 : InImage map_47_240 image17409 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17409 : Bundle := named_bundle% "RealMapCertificates/relations/basis17409.json"
theorem reductionProof17409 : EqualModuloRelations reduction17409.relations reduction17409.input reduction17409.output := by lin_cert using reduction17409.terms
theorem substitutionProof17409 : IsMapEvaluation generatorImages reduction17409.relations [8,8,8,8,8,64,138] reduction17409.output := by lin_cert using reduction17409.terms
def image17410 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17410 : InImage map_47_240 image17410 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17410 : Bundle := named_bundle% "RealMapCertificates/relations/basis17410.json"
theorem reductionProof17410 : EqualModuloRelations reduction17410.relations reduction17410.input reduction17410.output := by lin_cert using reduction17410.terms
theorem substitutionProof17410 : IsMapEvaluation generatorImages reduction17410.relations [8,8,8,8,8,8,8,23,113] reduction17410.output := by lin_cert using reduction17410.terms
def image17411 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17411 : InImage map_47_240 image17411 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17411 : Bundle := named_bundle% "RealMapCertificates/relations/basis17411.json"
theorem reductionProof17411 : EqualModuloRelations reduction17411.relations reduction17411.input reduction17411.output := by lin_cert using reduction17411.terms
theorem substitutionProof17411 : IsMapEvaluation generatorImages reduction17411.relations [8,8,8,8,8,8,8,13,13,13,32] reduction17411.output := by lin_cert using reduction17411.terms
def image17412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17412 : InImage map_47_240 image17412 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17412 : Bundle := named_bundle% "RealMapCertificates/relations/basis17412.json"
theorem reductionProof17412 : EqualModuloRelations reduction17412.relations reduction17412.input reduction17412.output := by lin_cert using reduction17412.terms
theorem substitutionProof17412 : IsMapEvaluation generatorImages reduction17412.relations [0,0,0,0,0,149,491] reduction17412.output := by lin_cert using reduction17412.terms
def map_47_241 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image17684 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17684 : InImage map_47_241 image17684 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17684 : Bundle := named_bundle% "RealMapCertificates/relations/basis17684.json"
theorem reductionProof17684 : EqualModuloRelations reduction17684.relations reduction17684.input reduction17684.output := by lin_cert using reduction17684.terms
theorem substitutionProof17684 : IsMapEvaluation generatorImages reduction17684.relations [8,1604] reduction17684.output := by lin_cert using reduction17684.terms
def image17685 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17685 : InImage map_47_241 image17685 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17685 : Bundle := named_bundle% "RealMapCertificates/relations/basis17685.json"
theorem reductionProof17685 : EqualModuloRelations reduction17685.relations reduction17685.input reduction17685.output := by lin_cert using reduction17685.terms
theorem substitutionProof17685 : IsMapEvaluation generatorImages reduction17685.relations [0,0,0,0,64,809] reduction17685.output := by lin_cert using reduction17685.terms
def image17686 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17686 : InImage map_47_241 image17686 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17686 : Bundle := named_bundle% "RealMapCertificates/relations/basis17686.json"
theorem reductionProof17686 : EqualModuloRelations reduction17686.relations reduction17686.input reduction17686.output := by lin_cert using reduction17686.terms
theorem substitutionProof17686 : IsMapEvaluation generatorImages reduction17686.relations [0,0,0,0,0,17,138,260] reduction17686.output := by lin_cert using reduction17686.terms
def map_47_242 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17907 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17907 : InImage map_47_242 image17907 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17907 : Bundle := named_bundle% "RealMapCertificates/relations/basis17907.json"
theorem reductionProof17907 : EqualModuloRelations reduction17907.relations reduction17907.input reduction17907.output := by lin_cert using reduction17907.terms
theorem substitutionProof17907 : IsMapEvaluation generatorImages reduction17907.relations [8,8,42,623] reduction17907.output := by lin_cert using reduction17907.terms
def image17908 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17908 : InImage map_47_242 image17908 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17908 : Bundle := named_bundle% "RealMapCertificates/relations/basis17908.json"
theorem reductionProof17908 : EqualModuloRelations reduction17908.relations reduction17908.input reduction17908.output := by lin_cert using reduction17908.terms
theorem substitutionProof17908 : IsMapEvaluation generatorImages reduction17908.relations [8,8,8,972] reduction17908.output := by lin_cert using reduction17908.terms
def image17909 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17909 : InImage map_47_242 image17909 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17909 : Bundle := named_bundle% "RealMapCertificates/relations/basis17909.json"
theorem reductionProof17909 : EqualModuloRelations reduction17909.relations reduction17909.input reduction17909.output := by lin_cert using reduction17909.terms
theorem substitutionProof17909 : IsMapEvaluation generatorImages reduction17909.relations [8,8,8,8,8,8,8,8,167] reduction17909.output := by lin_cert using reduction17909.terms
def image17910 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17910 : InImage map_47_242 image17910 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17910 : Bundle := named_bundle% "RealMapCertificates/relations/basis17910.json"
theorem reductionProof17910 : EqualModuloRelations reduction17910.relations reduction17910.input reduction17910.output := by lin_cert using reduction17910.terms
theorem substitutionProof17910 : IsMapEvaluation generatorImages reduction17910.relations [0,0,0,0,0,0,64,795] reduction17910.output := by lin_cert using reduction17910.terms
def map_47_243 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18193 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18193 : InImage map_47_243 image18193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18193 : Bundle := named_bundle% "RealMapCertificates/relations/basis18193.json"
theorem reductionProof18193 : EqualModuloRelations reduction18193.relations reduction18193.input reduction18193.output := by lin_cert using reduction18193.terms
theorem substitutionProof18193 : IsMapEvaluation generatorImages reduction18193.relations [2090] reduction18193.output := by lin_cert using reduction18193.terms
def image18194 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18194 : InImage map_47_243 image18194 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18194 : Bundle := named_bundle% "RealMapCertificates/relations/basis18194.json"
theorem reductionProof18194 : EqualModuloRelations reduction18194.relations reduction18194.input reduction18194.output := by lin_cert using reduction18194.terms
theorem substitutionProof18194 : IsMapEvaluation generatorImages reduction18194.relations [8,8,8,8,8,64,147] reduction18194.output := by lin_cert using reduction18194.terms
def image18195 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18195 : InImage map_47_243 image18195 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18195 : Bundle := named_bundle% "RealMapCertificates/relations/basis18195.json"
theorem reductionProof18195 : EqualModuloRelations reduction18195.relations reduction18195.input reduction18195.output := by lin_cert using reduction18195.terms
theorem substitutionProof18195 : IsMapEvaluation generatorImages reduction18195.relations [8,8,8,8,8,8,9,13,13,13,32] reduction18195.output := by lin_cert using reduction18195.terms
def image18196 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18196 : InImage map_47_243 image18196 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18196 : Bundle := named_bundle% "RealMapCertificates/relations/basis18196.json"
theorem reductionProof18196 : EqualModuloRelations reduction18196.relations reduction18196.input reduction18196.output := by lin_cert using reduction18196.terms
theorem substitutionProof18196 : IsMapEvaluation generatorImages reduction18196.relations [8,8,8,8,8,8,8,8,173] reduction18196.output := by lin_cert using reduction18196.terms
def map_47_244 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image18413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18413 : InImage map_47_244 image18413 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18413 : Bundle := named_bundle% "RealMapCertificates/relations/basis18413.json"
theorem reductionProof18413 : EqualModuloRelations reduction18413.relations reduction18413.input reduction18413.output := by lin_cert using reduction18413.terms
theorem substitutionProof18413 : IsMapEvaluation generatorImages reduction18413.relations [8,8,1335] reduction18413.output := by lin_cert using reduction18413.terms
def map_47_245 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image18650 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18650 : InImage map_47_245 image18650 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18650 : Bundle := named_bundle% "RealMapCertificates/relations/basis18650.json"
theorem reductionProof18650 : EqualModuloRelations reduction18650.relations reduction18650.input reduction18650.output := by lin_cert using reduction18650.terms
theorem substitutionProof18650 : IsMapEvaluation generatorImages reduction18650.relations [113,725] reduction18650.output := by lin_cert using reduction18650.terms
def image18651 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18651 : InImage map_47_245 image18651 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18651 : Bundle := named_bundle% "RealMapCertificates/relations/basis18651.json"
theorem reductionProof18651 : EqualModuloRelations reduction18651.relations reduction18651.input reduction18651.output := by lin_cert using reduction18651.terms
theorem substitutionProof18651 : IsMapEvaluation generatorImages reduction18651.relations [8,8,8,42,491] reduction18651.output := by lin_cert using reduction18651.terms
def image18652 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18652 : InImage map_47_245 image18652 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18652 : Bundle := named_bundle% "RealMapCertificates/relations/basis18652.json"
theorem reductionProof18652 : EqualModuloRelations reduction18652.relations reduction18652.input reduction18652.output := by lin_cert using reduction18652.terms
theorem substitutionProof18652 : IsMapEvaluation generatorImages reduction18652.relations [8,8,8,8,796] reduction18652.output := by lin_cert using reduction18652.terms
def image18653 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18653 : InImage map_47_245 image18653 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18653 : Bundle := named_bundle% "RealMapCertificates/relations/basis18653.json"
theorem reductionProof18653 : EqualModuloRelations reduction18653.relations reduction18653.input reduction18653.output := by lin_cert using reduction18653.terms
theorem substitutionProof18653 : IsMapEvaluation generatorImages reduction18653.relations [8,8,8,8,8,8,8,9,167] reduction18653.output := by lin_cert using reduction18653.terms
def image18654 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18654 : InImage map_47_245 image18654 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18654 : Bundle := named_bundle% "RealMapCertificates/relations/basis18654.json"
theorem reductionProof18654 : EqualModuloRelations reduction18654.relations reduction18654.input reduction18654.output := by lin_cert using reduction18654.terms
theorem substitutionProof18654 : IsMapEvaluation generatorImages reduction18654.relations [0,0,0,64,64,244] reduction18654.output := by lin_cert using reduction18654.terms
def map_47_246 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18942 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18942 : InImage map_47_246 image18942 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18942 : Bundle := named_bundle% "RealMapCertificates/relations/basis18942.json"
theorem reductionProof18942 : EqualModuloRelations reduction18942.relations reduction18942.input reduction18942.output := by lin_cert using reduction18942.terms
theorem substitutionProof18942 : IsMapEvaluation generatorImages reduction18942.relations [138,637] reduction18942.output := by lin_cert using reduction18942.terms
def image18943 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18943 : InImage map_47_246 image18943 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18943 : Bundle := named_bundle% "RealMapCertificates/relations/basis18943.json"
theorem reductionProof18943 : EqualModuloRelations reduction18943.relations reduction18943.input reduction18943.output := by lin_cert using reduction18943.terms
theorem substitutionProof18943 : IsMapEvaluation generatorImages reduction18943.relations [8,8,8,8,8,16,299] reduction18943.output := by lin_cert using reduction18943.terms
def image18944 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18944 : InImage map_47_246 image18944 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18944 : Bundle := named_bundle% "RealMapCertificates/relations/basis18944.json"
theorem reductionProof18944 : EqualModuloRelations reduction18944.relations reduction18944.input reduction18944.output := by lin_cert using reduction18944.terms
theorem substitutionProof18944 : IsMapEvaluation generatorImages reduction18944.relations [8,8,8,8,8,8,13,13,13,13,32] reduction18944.output := by lin_cert using reduction18944.terms
def image18945 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18945 : InImage map_47_246 image18945 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18945 : Bundle := named_bundle% "RealMapCertificates/relations/basis18945.json"
theorem reductionProof18945 : EqualModuloRelations reduction18945.relations reduction18945.input reduction18945.output := by lin_cert using reduction18945.terms
theorem substitutionProof18945 : IsMapEvaluation generatorImages reduction18945.relations [8,8,8,8,8,8,8,8,186] reduction18945.output := by lin_cert using reduction18945.terms
def image18946 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18946 : InImage map_47_246 image18946 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18946 : Bundle := named_bundle% "RealMapCertificates/relations/basis18946.json"
theorem reductionProof18946 : EqualModuloRelations reduction18946.relations reduction18946.input reduction18946.output := by lin_cert using reduction18946.terms
theorem substitutionProof18946 : IsMapEvaluation generatorImages reduction18946.relations [0,0,0,2091] reduction18946.output := by lin_cert using reduction18946.terms
def image18947 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18947 : InImage map_47_246 image18947 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18947 : Bundle := named_bundle% "RealMapCertificates/relations/basis18947.json"
theorem reductionProof18947 : EqualModuloRelations reduction18947.relations reduction18947.input reduction18947.output := by lin_cert using reduction18947.terms
theorem substitutionProof18947 : IsMapEvaluation generatorImages reduction18947.relations [0,0,0,0,64,138,149] reduction18947.output := by lin_cert using reduction18947.terms
def map_47_247 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image19215 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19215 : InImage map_47_247 image19215 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19215 : Bundle := named_bundle% "RealMapCertificates/relations/basis19215.json"
theorem reductionProof19215 : EqualModuloRelations reduction19215.relations reduction19215.input reduction19215.output := by lin_cert using reduction19215.terms
theorem substitutionProof19215 : IsMapEvaluation generatorImages reduction19215.relations [8,8,1381] reduction19215.output := by lin_cert using reduction19215.terms
def map_47_248 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image19451 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19451 : InImage map_47_248 image19451 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19451 : Bundle := named_bundle% "RealMapCertificates/relations/basis19451.json"
theorem reductionProof19451 : EqualModuloRelations reduction19451.relations reduction19451.input reduction19451.output := by lin_cert using reduction19451.terms
theorem substitutionProof19451 : IsMapEvaluation generatorImages reduction19451.relations [8,138,491] reduction19451.output := by lin_cert using reduction19451.terms
def image19452 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19452 : InImage map_47_248 image19452 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19452 : Bundle := named_bundle% "RealMapCertificates/relations/basis19452.json"
theorem reductionProof19452 : EqualModuloRelations reduction19452.relations reduction19452.input reduction19452.output := by lin_cert using reduction19452.terms
theorem substitutionProof19452 : IsMapEvaluation generatorImages reduction19452.relations [8,8,8,42,516] reduction19452.output := by lin_cert using reduction19452.terms
def image19453 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19453 : InImage map_47_248 image19453 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19453 : Bundle := named_bundle% "RealMapCertificates/relations/basis19453.json"
theorem reductionProof19453 : EqualModuloRelations reduction19453.relations reduction19453.input reduction19453.output := by lin_cert using reduction19453.terms
theorem substitutionProof19453 : IsMapEvaluation generatorImages reduction19453.relations [8,8,8,8,831] reduction19453.output := by lin_cert using reduction19453.terms
def image19454 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19454 : InImage map_47_248 image19454 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19454 : Bundle := named_bundle% "RealMapCertificates/relations/basis19454.json"
theorem reductionProof19454 : EqualModuloRelations reduction19454.relations reduction19454.input reduction19454.output := by lin_cert using reduction19454.terms
theorem substitutionProof19454 : IsMapEvaluation generatorImages reduction19454.relations [8,8,8,8,8,8,8,13,167] reduction19454.output := by lin_cert using reduction19454.terms
def image19455 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19455 : InImage map_47_248 image19455 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19455 : Bundle := named_bundle% "RealMapCertificates/relations/basis19455.json"
theorem reductionProof19455 : EqualModuloRelations reduction19455.relations reduction19455.input reduction19455.output := by lin_cert using reduction19455.terms
theorem substitutionProof19455 : IsMapEvaluation generatorImages reduction19455.relations [0,0,0,0,0,0,64,64,246] reduction19455.output := by lin_cert using reduction19455.terms
def map_47_249 : Matrix 2 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image19756 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19756 : InImage map_47_249 image19756 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19756 : Bundle := named_bundle% "RealMapCertificates/relations/basis19756.json"
theorem reductionProof19756 : EqualModuloRelations reduction19756.relations reduction19756.input reduction19756.output := by lin_cert using reduction19756.terms
theorem substitutionProof19756 : IsMapEvaluation generatorImages reduction19756.relations [8,1751] reduction19756.output := by lin_cert using reduction19756.terms
def image19757 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19757 : InImage map_47_249 image19757 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19757 : Bundle := named_bundle% "RealMapCertificates/relations/basis19757.json"
theorem reductionProof19757 : EqualModuloRelations reduction19757.relations reduction19757.input reduction19757.output := by lin_cert using reduction19757.terms
theorem substitutionProof19757 : IsMapEvaluation generatorImages reduction19757.relations [8,8,8,8,8,9,13,13,13,13,32] reduction19757.output := by lin_cert using reduction19757.terms
def image19758 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19758 : InImage map_47_249 image19758 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19758 : Bundle := named_bundle% "RealMapCertificates/relations/basis19758.json"
theorem reductionProof19758 : EqualModuloRelations reduction19758.relations reduction19758.input reduction19758.output := by lin_cert using reduction19758.terms
theorem substitutionProof19758 : IsMapEvaluation generatorImages reduction19758.relations [8,8,8,8,8,8,64,113] reduction19758.output := by lin_cert using reduction19758.terms
def image19759 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19759 : InImage map_47_249 image19759 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19759 : Bundle := named_bundle% "RealMapCertificates/relations/basis19759.json"
theorem reductionProof19759 : EqualModuloRelations reduction19759.relations reduction19759.input reduction19759.output := by lin_cert using reduction19759.terms
theorem substitutionProof19759 : IsMapEvaluation generatorImages reduction19759.relations [8,8,8,8,8,8,8,8,23,80] reduction19759.output := by lin_cert using reduction19759.terms
def image19760 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19760 : InImage map_47_249 image19760 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19760 : Bundle := named_bundle% "RealMapCertificates/relations/basis19760.json"
theorem reductionProof19760 : EqualModuloRelations reduction19760.relations reduction19760.input reduction19760.output := by lin_cert using reduction19760.terms
theorem substitutionProof19760 : IsMapEvaluation generatorImages reduction19760.relations [5,149,491] reduction19760.output := by lin_cert using reduction19760.terms
def map_47_250 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image19996 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19996 : InImage map_47_250 image19996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19996 : Bundle := named_bundle% "RealMapCertificates/relations/basis19996.json"
theorem reductionProof19996 : EqualModuloRelations reduction19996.relations reduction19996.input reduction19996.output := by lin_cert using reduction19996.terms
theorem substitutionProof19996 : IsMapEvaluation generatorImages reduction19996.relations [8,8,16,927] reduction19996.output := by lin_cert using reduction19996.terms
def image19997 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19997 : InImage map_47_250 image19997 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19997 : Bundle := named_bundle% "RealMapCertificates/relations/basis19997.json"
theorem reductionProof19997 : EqualModuloRelations reduction19997.relations reduction19997.input reduction19997.output := by lin_cert using reduction19997.terms
theorem substitutionProof19997 : IsMapEvaluation generatorImages reduction19997.relations [0,0,0,0,0,0,0,0,0,0,0,0,1926] reduction19997.output := by lin_cert using reduction19997.terms
def map_47_251 : Matrix 3 6 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20261 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20261 : InImage map_47_251 image20261 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20261 : Bundle := named_bundle% "RealMapCertificates/relations/basis20261.json"
theorem reductionProof20261 : EqualModuloRelations reduction20261.relations reduction20261.input reduction20261.output := by lin_cert using reduction20261.terms
theorem substitutionProof20261 : IsMapEvaluation generatorImages reduction20261.relations [8,138,516] reduction20261.output := by lin_cert using reduction20261.terms
def image20262 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20262 : InImage map_47_251 image20262 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20262 : Bundle := named_bundle% "RealMapCertificates/relations/basis20262.json"
theorem reductionProof20262 : EqualModuloRelations reduction20262.relations reduction20262.input reduction20262.output := by lin_cert using reduction20262.terms
theorem substitutionProof20262 : IsMapEvaluation generatorImages reduction20262.relations [8,8,8,8,60,260] reduction20262.output := by lin_cert using reduction20262.terms
def image20263 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20263 : InImage map_47_251 image20263 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20263 : Bundle := named_bundle% "RealMapCertificates/relations/basis20263.json"
theorem reductionProof20263 : EqualModuloRelations reduction20263.relations reduction20263.input reduction20263.output := by lin_cert using reduction20263.terms
theorem substitutionProof20263 : IsMapEvaluation generatorImages reduction20263.relations [8,8,8,8,8,653] reduction20263.output := by lin_cert using reduction20263.terms
def image20264 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation20264 : InImage map_47_251 image20264 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20264 : Bundle := named_bundle% "RealMapCertificates/relations/basis20264.json"
theorem reductionProof20264 : EqualModuloRelations reduction20264.relations reduction20264.input reduction20264.output := by lin_cert using reduction20264.terms
theorem substitutionProof20264 : IsMapEvaluation generatorImages reduction20264.relations [8,8,8,8,8,8,9,13,167] reduction20264.output := by lin_cert using reduction20264.terms
def image20265 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20265 : InImage map_47_251 image20265 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20265 : Bundle := named_bundle% "RealMapCertificates/relations/basis20265.json"
theorem reductionProof20265 : EqualModuloRelations reduction20265.relations reduction20265.input reduction20265.output := by lin_cert using reduction20265.terms
theorem substitutionProof20265 : IsMapEvaluation generatorImages reduction20265.relations [0,149,623] reduction20265.output := by lin_cert using reduction20265.terms
def image20266 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20266 : InImage map_47_251 image20266 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20266 : Bundle := named_bundle% "RealMapCertificates/relations/basis20266.json"
theorem reductionProof20266 : EqualModuloRelations reduction20266.relations reduction20266.input reduction20266.output := by lin_cert using reduction20266.terms
theorem substitutionProof20266 : IsMapEvaluation generatorImages reduction20266.relations [0,0,0,0,0,0,0,0,0,0,0,0,1967] reduction20266.output := by lin_cert using reduction20266.terms
def map_47_252 : Matrix 2 7 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image20564 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20564 : InImage map_47_252 image20564 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction20564 : Bundle := named_bundle% "RealMapCertificates/relations/basis20564.json"
theorem reductionProof20564 : EqualModuloRelations reduction20564.relations reduction20564.input reduction20564.output := by lin_cert using reduction20564.terms
theorem substitutionProof20564 : IsMapEvaluation generatorImages reduction20564.relations [8,138,529] reduction20564.output := by lin_cert using reduction20564.terms
def image20565 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20565 : InImage map_47_252 image20565 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction20565 : Bundle := named_bundle% "RealMapCertificates/relations/basis20565.json"
theorem reductionProof20565 : EqualModuloRelations reduction20565.relations reduction20565.input reduction20565.output := by lin_cert using reduction20565.terms
theorem substitutionProof20565 : IsMapEvaluation generatorImages reduction20565.relations [8,8,8,8,8,13,13,13,13,13,32] reduction20565.output := by lin_cert using reduction20565.terms
def image20566 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20566 : InImage map_47_252 image20566 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction20566 : Bundle := named_bundle% "RealMapCertificates/relations/basis20566.json"
theorem reductionProof20566 : EqualModuloRelations reduction20566.relations reduction20566.input reduction20566.output := by lin_cert using reduction20566.terms
theorem substitutionProof20566 : IsMapEvaluation generatorImages reduction20566.relations [8,8,8,8,8,8,8,299] reduction20566.output := by lin_cert using reduction20566.terms
def image20567 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20567 : InImage map_47_252 image20567 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction20567 : Bundle := named_bundle% "RealMapCertificates/relations/basis20567.json"
theorem reductionProof20567 : EqualModuloRelations reduction20567.relations reduction20567.input reduction20567.output := by lin_cert using reduction20567.terms
theorem substitutionProof20567 : IsMapEvaluation generatorImages reduction20567.relations [8,8,8,8,8,8,8,9,23,80] reduction20567.output := by lin_cert using reduction20567.terms
def image20568 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20568 : InImage map_47_252 image20568 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction20568 : Bundle := named_bundle% "RealMapCertificates/relations/basis20568.json"
theorem reductionProof20568 : EqualModuloRelations reduction20568.relations reduction20568.input reduction20568.output := by lin_cert using reduction20568.terms
theorem substitutionProof20568 : IsMapEvaluation generatorImages reduction20568.relations [0,64,971] reduction20568.output := by lin_cert using reduction20568.terms
def image20569 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20569 : InImage map_47_252 image20569 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction20569 : Bundle := named_bundle% "RealMapCertificates/relations/basis20569.json"
theorem reductionProof20569 : EqualModuloRelations reduction20569.relations reduction20569.input reduction20569.output := by lin_cert using reduction20569.terms
theorem substitutionProof20569 : IsMapEvaluation generatorImages reduction20569.relations [0,17,113,491] reduction20569.output := by lin_cert using reduction20569.terms
def image20570 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20570 : InImage map_47_252 image20570 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction20570 : Bundle := named_bundle% "RealMapCertificates/relations/basis20570.json"
theorem reductionProof20570 : EqualModuloRelations reduction20570.relations reduction20570.input reduction20570.output := by lin_cert using reduction20570.terms
theorem substitutionProof20570 : IsMapEvaluation generatorImages reduction20570.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1927] reduction20570.output := by lin_cert using reduction20570.terms
def map_47_253 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20827 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20827 : InImage map_47_253 image20827 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20827 : Bundle := named_bundle% "RealMapCertificates/relations/basis20827.json"
theorem reductionProof20827 : EqualModuloRelations reduction20827.relations reduction20827.input reduction20827.output := by lin_cert using reduction20827.terms
theorem substitutionProof20827 : IsMapEvaluation generatorImages reduction20827.relations [8,8,8,1167] reduction20827.output := by lin_cert using reduction20827.terms
def image20828 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20828 : InImage map_47_253 image20828 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20828 : Bundle := named_bundle% "RealMapCertificates/relations/basis20828.json"
theorem reductionProof20828 : EqualModuloRelations reduction20828.relations reduction20828.input reduction20828.output := by lin_cert using reduction20828.terms
theorem substitutionProof20828 : IsMapEvaluation generatorImages reduction20828.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1994] reduction20828.output := by lin_cert using reduction20828.terms
def map_47_254 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image21088 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21088 : InImage map_47_254 image21088 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21088 : Bundle := named_bundle% "RealMapCertificates/relations/basis21088.json"
theorem reductionProof21088 : EqualModuloRelations reduction21088.relations reduction21088.input reduction21088.output := by lin_cert using reduction21088.terms
theorem substitutionProof21088 : IsMapEvaluation generatorImages reduction21088.relations [8,16,138,260] reduction21088.output := by lin_cert using reduction21088.terms
def image21089 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21089 : InImage map_47_254 image21089 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21089 : Bundle := named_bundle% "RealMapCertificates/relations/basis21089.json"
theorem reductionProof21089 : EqualModuloRelations reduction21089.relations reduction21089.input reduction21089.output := by lin_cert using reduction21089.terms
theorem substitutionProof21089 : IsMapEvaluation generatorImages reduction21089.relations [8,8,8,8,42,380] reduction21089.output := by lin_cert using reduction21089.terms
def image21090 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21090 : InImage map_47_254 image21090 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21090 : Bundle := named_bundle% "RealMapCertificates/relations/basis21090.json"
theorem reductionProof21090 : EqualModuloRelations reduction21090.relations reduction21090.input reduction21090.output := by lin_cert using reduction21090.terms
theorem substitutionProof21090 : IsMapEvaluation generatorImages reduction21090.relations [8,8,8,8,8,689] reduction21090.output := by lin_cert using reduction21090.terms
def image21091 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21091 : InImage map_47_254 image21091 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21091 : Bundle := named_bundle% "RealMapCertificates/relations/basis21091.json"
theorem reductionProof21091 : EqualModuloRelations reduction21091.relations reduction21091.input reduction21091.output := by lin_cert using reduction21091.terms
theorem substitutionProof21091 : IsMapEvaluation generatorImages reduction21091.relations [8,8,8,8,8,8,13,13,167] reduction21091.output := by lin_cert using reduction21091.terms
def image21092 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21092 : InImage map_47_254 image21092 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21092 : Bundle := named_bundle% "RealMapCertificates/relations/basis21092.json"
theorem reductionProof21092 : EqualModuloRelations reduction21092.relations reduction21092.input reduction21092.output := by lin_cert using reduction21092.terms
theorem substitutionProof21092 : IsMapEvaluation generatorImages reduction21092.relations [0,8,149,491] reduction21092.output := by lin_cert using reduction21092.terms
def map_47_255 : Matrix 4 5 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21442 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21442 : InImage map_47_255 image21442 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21442 : Bundle := named_bundle% "RealMapCertificates/relations/basis21442.json"
theorem reductionProof21442 : EqualModuloRelations reduction21442.relations reduction21442.input reduction21442.output := by lin_cert using reduction21442.terms
theorem substitutionProof21442 : IsMapEvaluation generatorImages reduction21442.relations [8,8,1535] reduction21442.output := by lin_cert using reduction21442.terms
def image21443 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21443 : InImage map_47_255 image21443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21443 : Bundle := named_bundle% "RealMapCertificates/relations/basis21443.json"
theorem reductionProof21443 : EqualModuloRelations reduction21443.relations reduction21443.input reduction21443.output := by lin_cert using reduction21443.terms
theorem substitutionProof21443 : IsMapEvaluation generatorImages reduction21443.relations [8,8,8,8,9,13,13,13,13,13,32] reduction21443.output := by lin_cert using reduction21443.terms
def image21444 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21444 : InImage map_47_255 image21444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21444 : Bundle := named_bundle% "RealMapCertificates/relations/basis21444.json"
theorem reductionProof21444 : EqualModuloRelations reduction21444.relations reduction21444.input reduction21444.output := by lin_cert using reduction21444.terms
theorem substitutionProof21444 : IsMapEvaluation generatorImages reduction21444.relations [8,8,8,8,8,8,8,327] reduction21444.output := by lin_cert using reduction21444.terms
def image21445 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21445 : InImage map_47_255 image21445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21445 : Bundle := named_bundle% "RealMapCertificates/relations/basis21445.json"
theorem reductionProof21445 : EqualModuloRelations reduction21445.relations reduction21445.input reduction21445.output := by lin_cert using reduction21445.terms
theorem substitutionProof21445 : IsMapEvaluation generatorImages reduction21445.relations [8,8,8,8,8,8,8,13,23,80] reduction21445.output := by lin_cert using reduction21445.terms
def image21446 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21446 : InImage map_47_255 image21446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21446 : Bundle := named_bundle% "RealMapCertificates/relations/basis21446.json"
theorem reductionProof21446 : EqualModuloRelations reduction21446.relations reduction21446.input reduction21446.output := by lin_cert using reduction21446.terms
theorem substitutionProof21446 : IsMapEvaluation generatorImages reduction21446.relations [0,8,17,138,260] reduction21446.output := by lin_cert using reduction21446.terms
def map_47_256 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image21719 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21719 : InImage map_47_256 image21719 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21719 : Bundle := named_bundle% "RealMapCertificates/relations/basis21719.json"
theorem reductionProof21719 : EqualModuloRelations reduction21719.relations reduction21719.input reduction21719.output := by lin_cert using reduction21719.terms
theorem substitutionProof21719 : IsMapEvaluation generatorImages reduction21719.relations [8,8,8,8,927] reduction21719.output := by lin_cert using reduction21719.terms
def image21720 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21720 : InImage map_47_256 image21720 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21720 : Bundle := named_bundle% "RealMapCertificates/relations/basis21720.json"
theorem reductionProof21720 : EqualModuloRelations reduction21720.relations reduction21720.input reduction21720.output := by lin_cert using reduction21720.terms
theorem substitutionProof21720 : IsMapEvaluation generatorImages reduction21720.relations [0,2540] reduction21720.output := by lin_cert using reduction21720.terms
def map_47_257 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image22041 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22041 : InImage map_47_257 image22041 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22041 : Bundle := named_bundle% "RealMapCertificates/relations/basis22041.json"
theorem reductionProof22041 : EqualModuloRelations reduction22041.relations reduction22041.input reduction22041.output := by lin_cert using reduction22041.terms
theorem substitutionProof22041 : IsMapEvaluation generatorImages reduction22041.relations [64,113,244] reduction22041.output := by lin_cert using reduction22041.terms
def image22042 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22042 : InImage map_47_257 image22042 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22042 : Bundle := named_bundle% "RealMapCertificates/relations/basis22042.json"
theorem reductionProof22042 : EqualModuloRelations reduction22042.relations reduction22042.input reduction22042.output := by lin_cert using reduction22042.terms
theorem substitutionProof22042 : IsMapEvaluation generatorImages reduction22042.relations [8,8,113,491] reduction22042.output := by lin_cert using reduction22042.terms
def image22043 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22043 : InImage map_47_257 image22043 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22043 : Bundle := named_bundle% "RealMapCertificates/relations/basis22043.json"
theorem reductionProof22043 : EqualModuloRelations reduction22043.relations reduction22043.input reduction22043.output := by lin_cert using reduction22043.terms
theorem substitutionProof22043 : IsMapEvaluation generatorImages reduction22043.relations [8,8,8,8,8,42,260] reduction22043.output := by lin_cert using reduction22043.terms
def image22044 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22044 : InImage map_47_257 image22044 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22044 : Bundle := named_bundle% "RealMapCertificates/relations/basis22044.json"
theorem reductionProof22044 : EqualModuloRelations reduction22044.relations reduction22044.input reduction22044.output := by lin_cert using reduction22044.terms
theorem substitutionProof22044 : IsMapEvaluation generatorImages reduction22044.relations [8,8,8,8,8,9,13,13,167] reduction22044.output := by lin_cert using reduction22044.terms
def image22045 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22045 : InImage map_47_257 image22045 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22045 : Bundle := named_bundle% "RealMapCertificates/relations/basis22045.json"
theorem reductionProof22045 : EqualModuloRelations reduction22045.relations reduction22045.input reduction22045.output := by lin_cert using reduction22045.terms
theorem substitutionProof22045 : IsMapEvaluation generatorImages reduction22045.relations [8,8,8,8,8,8,549] reduction22045.output := by lin_cert using reduction22045.terms
def map_47_258 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22402 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22402 : InImage map_47_258 image22402 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22402 : Bundle := named_bundle% "RealMapCertificates/relations/basis22402.json"
theorem reductionProof22402 : EqualModuloRelations reduction22402.relations reduction22402.input reduction22402.output := by lin_cert using reduction22402.terms
theorem substitutionProof22402 : IsMapEvaluation generatorImages reduction22402.relations [17,1686] reduction22402.output := by lin_cert using reduction22402.terms
def image22403 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22403 : InImage map_47_258 image22403 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22403 : Bundle := named_bundle% "RealMapCertificates/relations/basis22403.json"
theorem reductionProof22403 : EqualModuloRelations reduction22403.relations reduction22403.input reduction22403.output := by lin_cert using reduction22403.terms
theorem substitutionProof22403 : IsMapEvaluation generatorImages reduction22403.relations [8,8,138,404] reduction22403.output := by lin_cert using reduction22403.terms
def image22404 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22404 : InImage map_47_258 image22404 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22404 : Bundle := named_bundle% "RealMapCertificates/relations/basis22404.json"
theorem reductionProof22404 : EqualModuloRelations reduction22404.relations reduction22404.input reduction22404.output := by lin_cert using reduction22404.terms
theorem substitutionProof22404 : IsMapEvaluation generatorImages reduction22404.relations [8,8,8,8,13,13,13,13,13,13,32] reduction22404.output := by lin_cert using reduction22404.terms
def image22405 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22405 : InImage map_47_258 image22405 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22405 : Bundle := named_bundle% "RealMapCertificates/relations/basis22405.json"
theorem reductionProof22405 : EqualModuloRelations reduction22405.relations reduction22405.input reduction22405.output := by lin_cert using reduction22405.terms
theorem substitutionProof22405 : IsMapEvaluation generatorImages reduction22405.relations [8,8,8,8,8,8,9,13,23,80] reduction22405.output := by lin_cert using reduction22405.terms
def image22406 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22406 : InImage map_47_258 image22406 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22406 : Bundle := named_bundle% "RealMapCertificates/relations/basis22406.json"
theorem reductionProof22406 : EqualModuloRelations reduction22406.relations reduction22406.input reduction22406.output := by lin_cert using reduction22406.terms
theorem substitutionProof22406 : IsMapEvaluation generatorImages reduction22406.relations [8,8,8,8,8,8,8,16,188] reduction22406.output := by lin_cert using reduction22406.terms
def image22407 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22407 : InImage map_47_258 image22407 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22407 : Bundle := named_bundle% "RealMapCertificates/relations/basis22407.json"
theorem reductionProof22407 : EqualModuloRelations reduction22407.relations reduction22407.input reduction22407.output := by lin_cert using reduction22407.terms
theorem substitutionProof22407 : IsMapEvaluation generatorImages reduction22407.relations [0,8,17,138,278] reduction22407.output := by lin_cert using reduction22407.terms
end RealMapCertificates
