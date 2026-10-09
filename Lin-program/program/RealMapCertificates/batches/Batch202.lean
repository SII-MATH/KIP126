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
  | 19 => [[4,8]]
  | 23 => [[7,7]]
  | 31 => [[4,4,6]]
  | 32 => [[7,9]]
  | 39 => [[4,4,8]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 80 => []
  | 110 => [[4,4,4,4,4,6]]
  | 116 => [[4,4,4,4,4,8]]
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 167 => [[7,9,12]]
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 225 => [[0,4,4,4,6,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 255 => []
  | 260 => []
  | 278 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 487 => [[3,4,4,4,4,4,4,4,4,4,4,4]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 574 => []
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 606 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 805 => []
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 962 => [[4,5,7,10,12,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1301 => []
  | 1316 => []
  | 1752 => [[4,4,6,8,12,12,12]]
  | 2739 => []
  | 2740 => []
  | _ => []
def map_47_259 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image22722 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22722 : InImage map_47_259 image22722 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22722 : Bundle := named_bundle% "RealMapCertificates/relations/basis22722.json"
theorem reductionProof22722 : EqualModuloRelations reduction22722.relations reduction22722.input reduction22722.output := by lin_cert using reduction22722.terms
theorem substitutionProof22722 : IsMapEvaluation generatorImages reduction22722.relations [247,491] reduction22722.output := by lin_cert using reduction22722.terms
def image22723 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22723 : InImage map_47_259 image22723 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22723 : Bundle := named_bundle% "RealMapCertificates/relations/basis22723.json"
theorem reductionProof22723 : EqualModuloRelations reduction22723.relations reduction22723.input reduction22723.output := by lin_cert using reduction22723.terms
theorem substitutionProof22723 : IsMapEvaluation generatorImages reduction22723.relations [246,491] reduction22723.output := by lin_cert using reduction22723.terms
def image22724 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22724 : InImage map_47_259 image22724 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22724 : Bundle := named_bundle% "RealMapCertificates/relations/basis22724.json"
theorem reductionProof22724 : EqualModuloRelations reduction22724.relations reduction22724.input reduction22724.output := by lin_cert using reduction22724.terms
theorem substitutionProof22724 : IsMapEvaluation generatorImages reduction22724.relations [8,8,8,8,962] reduction22724.output := by lin_cert using reduction22724.terms
def map_47_260 : Matrix 1 6 := fun i j => ([false,false,false,true,false,false] : List Bool)[i.val*6+j.val]!
def image23074 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23074 : InImage map_47_260 image23074 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23074 : Bundle := named_bundle% "RealMapCertificates/relations/basis23074.json"
theorem reductionProof23074 : EqualModuloRelations reduction23074.relations reduction23074.input reduction23074.output := by lin_cert using reduction23074.terms
theorem substitutionProof23074 : IsMapEvaluation generatorImages reduction23074.relations [8,64,138,149] reduction23074.output := by lin_cert using reduction23074.terms
def image23075 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23075 : InImage map_47_260 image23075 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23075 : Bundle := named_bundle% "RealMapCertificates/relations/basis23075.json"
theorem reductionProof23075 : EqualModuloRelations reduction23075.relations reduction23075.input reduction23075.output := by lin_cert using reduction23075.terms
theorem substitutionProof23075 : IsMapEvaluation generatorImages reduction23075.relations [8,8,8,138,260] reduction23075.output := by lin_cert using reduction23075.terms
def image23076 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23076 : InImage map_47_260 image23076 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23076 : Bundle := named_bundle% "RealMapCertificates/relations/basis23076.json"
theorem reductionProof23076 : EqualModuloRelations reduction23076.relations reduction23076.input reduction23076.output := by lin_cert using reduction23076.terms
theorem substitutionProof23076 : IsMapEvaluation generatorImages reduction23076.relations [8,8,8,8,8,42,278] reduction23076.output := by lin_cert using reduction23076.terms
def image23077 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23077 : InImage map_47_260 image23077 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23077 : Bundle := named_bundle% "RealMapCertificates/relations/basis23077.json"
theorem reductionProof23077 : EqualModuloRelations reduction23077.relations reduction23077.input reduction23077.output := by lin_cert using reduction23077.terms
theorem substitutionProof23077 : IsMapEvaluation generatorImages reduction23077.relations [8,8,8,8,8,13,13,13,167] reduction23077.output := by lin_cert using reduction23077.terms
def image23078 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23078 : InImage map_47_260 image23078 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23078 : Bundle := named_bundle% "RealMapCertificates/relations/basis23078.json"
theorem reductionProof23078 : EqualModuloRelations reduction23078.relations reduction23078.input reduction23078.output := by lin_cert using reduction23078.terms
theorem substitutionProof23078 : IsMapEvaluation generatorImages reduction23078.relations [8,8,8,8,8,8,574] reduction23078.output := by lin_cert using reduction23078.terms
def image23079 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23079 : InImage map_47_260 image23079 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23079 : Bundle := named_bundle% "RealMapCertificates/relations/basis23079.json"
theorem reductionProof23079 : EqualModuloRelations reduction23079.relations reduction23079.input reduction23079.output := by lin_cert using reduction23079.terms
theorem substitutionProof23079 : IsMapEvaluation generatorImages reduction23079.relations [0,2739] reduction23079.output := by lin_cert using reduction23079.terms
def map_47_261 : Matrix 2 7 := fun i j => ([false,false,true,false,false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image23522 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation23522 : InImage map_47_261 image23522 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23522 : Bundle := named_bundle% "RealMapCertificates/relations/basis23522.json"
theorem reductionProof23522 : EqualModuloRelations reduction23522.relations reduction23522.input reduction23522.output := by lin_cert using reduction23522.terms
theorem substitutionProof23522 : IsMapEvaluation generatorImages reduction23522.relations [17,1752] reduction23522.output := by lin_cert using reduction23522.terms
def image23523 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23523 : InImage map_47_261 image23523 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23523 : Bundle := named_bundle% "RealMapCertificates/relations/basis23523.json"
theorem reductionProof23523 : EqualModuloRelations reduction23523.relations reduction23523.input reduction23523.output := by lin_cert using reduction23523.terms
theorem substitutionProof23523 : IsMapEvaluation generatorImages reduction23523.relations [8,8,8,1316] reduction23523.output := by lin_cert using reduction23523.terms
def image23524 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23524 : InImage map_47_261 image23524 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23524 : Bundle := named_bundle% "RealMapCertificates/relations/basis23524.json"
theorem reductionProof23524 : EqualModuloRelations reduction23524.relations reduction23524.input reduction23524.output := by lin_cert using reduction23524.terms
theorem substitutionProof23524 : IsMapEvaluation generatorImages reduction23524.relations [8,8,8,9,13,13,13,13,13,13,32] reduction23524.output := by lin_cert using reduction23524.terms
def image23525 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23525 : InImage map_47_261 image23525 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23525 : Bundle := named_bundle% "RealMapCertificates/relations/basis23525.json"
theorem reductionProof23525 : EqualModuloRelations reduction23525.relations reduction23525.input reduction23525.output := by lin_cert using reduction23525.terms
theorem substitutionProof23525 : IsMapEvaluation generatorImages reduction23525.relations [8,8,8,8,8,8,13,13,23,80] reduction23525.output := by lin_cert using reduction23525.terms
def image23526 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23526 : InImage map_47_261 image23526 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23526 : Bundle := named_bundle% "RealMapCertificates/relations/basis23526.json"
theorem reductionProof23526 : EqualModuloRelations reduction23526.relations reduction23526.input reduction23526.output := by lin_cert using reduction23526.terms
theorem substitutionProof23526 : IsMapEvaluation generatorImages reduction23526.relations [8,8,8,8,8,8,8,8,255] reduction23526.output := by lin_cert using reduction23526.terms
def image23527 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23527 : InImage map_47_261 image23527 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23527 : Bundle := named_bundle% "RealMapCertificates/relations/basis23527.json"
theorem reductionProof23527 : EqualModuloRelations reduction23527.relations reduction23527.input reduction23527.output := by lin_cert using reduction23527.terms
theorem substitutionProof23527 : IsMapEvaluation generatorImages reduction23527.relations [1,2739] reduction23527.output := by lin_cert using reduction23527.terms
def image23528 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23528 : InImage map_47_261 image23528 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23528 : Bundle := named_bundle% "RealMapCertificates/relations/basis23528.json"
theorem reductionProof23528 : EqualModuloRelations reduction23528.relations reduction23528.input reduction23528.output := by lin_cert using reduction23528.terms
theorem substitutionProof23528 : IsMapEvaluation generatorImages reduction23528.relations [0,0,2740] reduction23528.output := by lin_cert using reduction23528.terms
def map_48_48 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image240 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation240 : InImage map_48_48 image240 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction240 : Bundle := named_bundle% "RealMapCertificates/relations/basis240.json"
theorem reductionProof240 : EqualModuloRelations reduction240.relations reduction240.input reduction240.output := by lin_cert using reduction240.terms
theorem substitutionProof240 : IsMapEvaluation generatorImages reduction240.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction240.output := by lin_cert using reduction240.terms
def map_48_143 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image3362 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation3362 : InImage map_48_143 image3362 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3362 : Bundle := named_bundle% "RealMapCertificates/relations/basis3362.json"
theorem reductionProof3362 : EqualModuloRelations reduction3362.relations reduction3362.input reduction3362.output := by lin_cert using reduction3362.terms
theorem substitutionProof3362 : IsMapEvaluation generatorImages reduction3362.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246] reduction3362.output := by lin_cert using reduction3362.terms
def map_48_145 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3537 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3537 : InImage map_48_145 image3537 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3537 : Bundle := named_bundle% "RealMapCertificates/relations/basis3537.json"
theorem reductionProof3537 : EqualModuloRelations reduction3537.relations reduction3537.input reduction3537.output := by lin_cert using reduction3537.terms
theorem substitutionProof3537 : IsMapEvaluation generatorImages reduction3537.relations [1,487] reduction3537.output := by lin_cert using reduction3537.terms
def map_48_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3951 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3951 : InImage map_48_150 image3951 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3951 : Bundle := named_bundle% "RealMapCertificates/relations/basis3951.json"
theorem reductionProof3951 : EqualModuloRelations reduction3951.relations reduction3951.input reduction3951.output := by lin_cert using reduction3951.terms
theorem substitutionProof3951 : IsMapEvaluation generatorImages reduction3951.relations [553] reduction3951.output := by lin_cert using reduction3951.terms
def map_48_151 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4074 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4074 : InImage map_48_151 image4074 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4074 : Bundle := named_bundle% "RealMapCertificates/relations/basis4074.json"
theorem reductionProof4074 : EqualModuloRelations reduction4074.relations reduction4074.input reduction4074.output := by lin_cert using reduction4074.terms
theorem substitutionProof4074 : IsMapEvaluation generatorImages reduction4074.relations [0,554] reduction4074.output := by lin_cert using reduction4074.terms
def map_48_153 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4233 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4233 : InImage map_48_153 image4233 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4233 : Bundle := named_bundle% "RealMapCertificates/relations/basis4233.json"
theorem reductionProof4233 : EqualModuloRelations reduction4233.relations reduction4233.input reduction4233.output := by lin_cert using reduction4233.terms
theorem substitutionProof4233 : IsMapEvaluation generatorImages reduction4233.relations [578] reduction4233.output := by lin_cert using reduction4233.terms
def map_48_154 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4326 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4326 : InImage map_48_154 image4326 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4326 : Bundle := named_bundle% "RealMapCertificates/relations/basis4326.json"
theorem reductionProof4326 : EqualModuloRelations reduction4326.relations reduction4326.input reduction4326.output := by lin_cert using reduction4326.terms
theorem substitutionProof4326 : IsMapEvaluation generatorImages reduction4326.relations [0,579] reduction4326.output := by lin_cert using reduction4326.terms
def map_48_156 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4472 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation4472 : InImage map_48_156 image4472 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4472 : Bundle := named_bundle% "RealMapCertificates/relations/basis4472.json"
theorem reductionProof4472 : EqualModuloRelations reduction4472.relations reduction4472.input reduction4472.output := by lin_cert using reduction4472.terms
theorem substitutionProof4472 : IsMapEvaluation generatorImages reduction4472.relations [8,431] reduction4472.output := by lin_cert using reduction4472.terms
def map_48_157 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4589 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4589 : InImage map_48_157 image4589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4589 : Bundle := named_bundle% "RealMapCertificates/relations/basis4589.json"
theorem reductionProof4589 : EqualModuloRelations reduction4589.relations reduction4589.input reduction4589.output := by lin_cert using reduction4589.terms
theorem substitutionProof4589 : IsMapEvaluation generatorImages reduction4589.relations [0,16,296] reduction4589.output := by lin_cert using reduction4589.terms
def map_48_158 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4662 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4662 : InImage map_48_158 image4662 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4662 : Bundle := named_bundle% "RealMapCertificates/relations/basis4662.json"
theorem reductionProof4662 : EqualModuloRelations reduction4662.relations reduction4662.input reduction4662.output := by lin_cert using reduction4662.terms
theorem substitutionProof4662 : IsMapEvaluation generatorImages reduction4662.relations [0,0,17,296] reduction4662.output := by lin_cert using reduction4662.terms
def map_48_159 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image4741 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4741 : InImage map_48_159 image4741 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4741 : Bundle := named_bundle% "RealMapCertificates/relations/basis4741.json"
theorem reductionProof4741 : EqualModuloRelations reduction4741.relations reduction4741.input reduction4741.output := by lin_cert using reduction4741.terms
theorem substitutionProof4741 : IsMapEvaluation generatorImages reduction4741.relations [8,469] reduction4741.output := by lin_cert using reduction4741.terms
def image4742 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation4742 : InImage map_48_159 image4742 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4742 : Bundle := named_bundle% "RealMapCertificates/relations/basis4742.json"
theorem reductionProof4742 : EqualModuloRelations reduction4742.relations reduction4742.input reduction4742.output := by lin_cert using reduction4742.terms
theorem substitutionProof4742 : IsMapEvaluation generatorImages reduction4742.relations [0,0,0,606] reduction4742.output := by lin_cert using reduction4742.terms
def map_48_160 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4844 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4844 : InImage map_48_160 image4844 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4844 : Bundle := named_bundle% "RealMapCertificates/relations/basis4844.json"
theorem reductionProof4844 : EqualModuloRelations reduction4844.relations reduction4844.input reduction4844.output := by lin_cert using reduction4844.terms
theorem substitutionProof4844 : IsMapEvaluation generatorImages reduction4844.relations [0,8,470] reduction4844.output := by lin_cert using reduction4844.terms
def map_48_162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5011 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5011 : InImage map_48_162 image5011 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5011 : Bundle := named_bundle% "RealMapCertificates/relations/basis5011.json"
theorem reductionProof5011 : EqualModuloRelations reduction5011.relations reduction5011.input reduction5011.output := by lin_cert using reduction5011.terms
theorem substitutionProof5011 : IsMapEvaluation generatorImages reduction5011.relations [8,8,295] reduction5011.output := by lin_cert using reduction5011.terms
def map_48_163 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5136 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5136 : InImage map_48_163 image5136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5136 : Bundle := named_bundle% "RealMapCertificates/relations/basis5136.json"
theorem reductionProof5136 : EqualModuloRelations reduction5136.relations reduction5136.input reduction5136.output := by lin_cert using reduction5136.terms
theorem substitutionProof5136 : IsMapEvaluation generatorImages reduction5136.relations [0,8,8,296] reduction5136.output := by lin_cert using reduction5136.terms
def map_48_165 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5312 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5312 : InImage map_48_165 image5312 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5312 : Bundle := named_bundle% "RealMapCertificates/relations/basis5312.json"
theorem reductionProof5312 : EqualModuloRelations reduction5312.relations reduction5312.input reduction5312.output := by lin_cert using reduction5312.terms
theorem substitutionProof5312 : IsMapEvaluation generatorImages reduction5312.relations [8,8,325] reduction5312.output := by lin_cert using reduction5312.terms
def image5313 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5313 : InImage map_48_165 image5313 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5313 : Bundle := named_bundle% "RealMapCertificates/relations/basis5313.json"
theorem reductionProof5313 : EqualModuloRelations reduction5313.relations reduction5313.input reduction5313.output := by lin_cert using reduction5313.terms
theorem substitutionProof5313 : IsMapEvaluation generatorImages reduction5313.relations [0,0,0,0,0,0,635] reduction5313.output := by lin_cert using reduction5313.terms
def map_48_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5437 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5437 : InImage map_48_166 image5437 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5437 : Bundle := named_bundle% "RealMapCertificates/relations/basis5437.json"
theorem reductionProof5437 : EqualModuloRelations reduction5437.relations reduction5437.input reduction5437.output := by lin_cert using reduction5437.terms
theorem substitutionProof5437 : IsMapEvaluation generatorImages reduction5437.relations [0,0,0,0,0,0,0,636] reduction5437.output := by lin_cert using reduction5437.terms
def map_48_168 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5629 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5629 : InImage map_48_168 image5629 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5629 : Bundle := named_bundle% "RealMapCertificates/relations/basis5629.json"
theorem reductionProof5629 : EqualModuloRelations reduction5629.relations reduction5629.input reduction5629.output := by lin_cert using reduction5629.terms
theorem substitutionProof5629 : IsMapEvaluation generatorImages reduction5629.relations [8,8,8,236] reduction5629.output := by lin_cert using reduction5629.terms
def map_48_171 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5975 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5975 : InImage map_48_171 image5975 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5975 : Bundle := named_bundle% "RealMapCertificates/relations/basis5975.json"
theorem reductionProof5975 : EqualModuloRelations reduction5975.relations reduction5975.input reduction5975.output := by lin_cert using reduction5975.terms
theorem substitutionProof5975 : IsMapEvaluation generatorImages reduction5975.relations [8,8,8,252] reduction5975.output := by lin_cert using reduction5975.terms
def map_48_174 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6297 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6297 : InImage map_48_174 image6297 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6297 : Bundle := named_bundle% "RealMapCertificates/relations/basis6297.json"
theorem reductionProof6297 : EqualModuloRelations reduction6297.relations reduction6297.input reduction6297.output := by lin_cert using reduction6297.terms
theorem substitutionProof6297 : IsMapEvaluation generatorImages reduction6297.relations [8,8,8,8,182] reduction6297.output := by lin_cert using reduction6297.terms
def image6298 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6298 : InImage map_48_174 image6298 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6298 : Bundle := named_bundle% "RealMapCertificates/relations/basis6298.json"
theorem reductionProof6298 : EqualModuloRelations reduction6298.relations reduction6298.input reduction6298.output := by lin_cert using reduction6298.terms
theorem substitutionProof6298 : IsMapEvaluation generatorImages reduction6298.relations [0,0,0,0,0,0,0,0,0,0,686] reduction6298.output := by lin_cert using reduction6298.terms
def map_48_175 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image6446 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6446 : InImage map_48_175 image6446 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6446 : Bundle := named_bundle% "RealMapCertificates/relations/basis6446.json"
theorem reductionProof6446 : EqualModuloRelations reduction6446.relations reduction6446.input reduction6446.output := by lin_cert using reduction6446.terms
theorem substitutionProof6446 : IsMapEvaluation generatorImages reduction6446.relations [1,5,635] reduction6446.output := by lin_cert using reduction6446.terms
def image6447 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6447 : InImage map_48_175 image6447 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6447 : Bundle := named_bundle% "RealMapCertificates/relations/basis6447.json"
theorem reductionProof6447 : EqualModuloRelations reduction6447.relations reduction6447.input reduction6447.output := by lin_cert using reduction6447.terms
theorem substitutionProof6447 : IsMapEvaluation generatorImages reduction6447.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6447.output := by lin_cert using reduction6447.terms
def map_48_176 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6536 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation6536 : InImage map_48_176 image6536 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6536 : Bundle := named_bundle% "RealMapCertificates/relations/basis6536.json"
theorem reductionProof6536 : EqualModuloRelations reduction6536.relations reduction6536.input reduction6536.output := by lin_cert using reduction6536.terms
theorem substitutionProof6536 : IsMapEvaluation generatorImages reduction6536.relations [0,0,805] reduction6536.output := by lin_cert using reduction6536.terms
def map_48_177 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image6658 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation6658 : InImage map_48_177 image6658 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6658 : Bundle := named_bundle% "RealMapCertificates/relations/basis6658.json"
theorem reductionProof6658 : EqualModuloRelations reduction6658.relations reduction6658.input reduction6658.output := by lin_cert using reduction6658.terms
theorem substitutionProof6658 : IsMapEvaluation generatorImages reduction6658.relations [8,8,8,8,199] reduction6658.output := by lin_cert using reduction6658.terms
def map_48_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6895 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6895 : InImage map_48_179 image6895 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6895 : Bundle := named_bundle% "RealMapCertificates/relations/basis6895.json"
theorem reductionProof6895 : EqualModuloRelations reduction6895.relations reduction6895.input reduction6895.output := by lin_cert using reduction6895.terms
theorem substitutionProof6895 : IsMapEvaluation generatorImages reduction6895.relations [0,0,8,635] reduction6895.output := by lin_cert using reduction6895.terms
def map_48_180 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7015 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7015 : InImage map_48_180 image7015 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7015 : Bundle := named_bundle% "RealMapCertificates/relations/basis7015.json"
theorem reductionProof7015 : EqualModuloRelations reduction7015.relations reduction7015.input reduction7015.output := by lin_cert using reduction7015.terms
theorem substitutionProof7015 : IsMapEvaluation generatorImages reduction7015.relations [8,8,8,8,8,145] reduction7015.output := by lin_cert using reduction7015.terms
def map_48_182 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7251 : InImage map_48_182 image7251 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7251 : Bundle := named_bundle% "RealMapCertificates/relations/basis7251.json"
theorem reductionProof7251 : EqualModuloRelations reduction7251.relations reduction7251.input reduction7251.output := by lin_cert using reduction7251.terms
theorem substitutionProof7251 : IsMapEvaluation generatorImages reduction7251.relations [0,0,8,662] reduction7251.output := by lin_cert using reduction7251.terms
def map_48_183 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7381 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7381 : InImage map_48_183 image7381 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7381 : Bundle := named_bundle% "RealMapCertificates/relations/basis7381.json"
theorem reductionProof7381 : EqualModuloRelations reduction7381.relations reduction7381.input reduction7381.output := by lin_cert using reduction7381.terms
theorem substitutionProof7381 : IsMapEvaluation generatorImages reduction7381.relations [8,8,8,8,8,152] reduction7381.output := by lin_cert using reduction7381.terms
def map_48_185 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image7615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7615 : InImage map_48_185 image7615 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7615 : Bundle := named_bundle% "RealMapCertificates/relations/basis7615.json"
theorem reductionProof7615 : EqualModuloRelations reduction7615.relations reduction7615.input reduction7615.output := by lin_cert using reduction7615.terms
theorem substitutionProof7615 : IsMapEvaluation generatorImages reduction7615.relations [0,0,8,16,402] reduction7615.output := by lin_cert using reduction7615.terms
def map_48_186 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7742 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7742 : InImage map_48_186 image7742 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7742 : Bundle := named_bundle% "RealMapCertificates/relations/basis7742.json"
theorem reductionProof7742 : EqualModuloRelations reduction7742.relations reduction7742.input reduction7742.output := by lin_cert using reduction7742.terms
theorem substitutionProof7742 : IsMapEvaluation generatorImages reduction7742.relations [8,8,8,8,8,8,110] reduction7742.output := by lin_cert using reduction7742.terms
def map_48_188 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image7956 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7956 : InImage map_48_188 image7956 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7956 : Bundle := named_bundle% "RealMapCertificates/relations/basis7956.json"
theorem reductionProof7956 : EqualModuloRelations reduction7956.relations reduction7956.input reduction7956.output := by lin_cert using reduction7956.terms
theorem substitutionProof7956 : IsMapEvaluation generatorImages reduction7956.relations [969] reduction7956.output := by lin_cert using reduction7956.terms
def map_48_189 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image8094 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation8094 : InImage map_48_189 image8094 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8094 : Bundle := named_bundle% "RealMapCertificates/relations/basis8094.json"
theorem reductionProof8094 : EqualModuloRelations reduction8094.relations reduction8094.input reduction8094.output := by lin_cert using reduction8094.terms
theorem substitutionProof8094 : IsMapEvaluation generatorImages reduction8094.relations [17,636] reduction8094.output := by lin_cert using reduction8094.terms
def image8095 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8095 : InImage map_48_189 image8095 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8095 : Bundle := named_bundle% "RealMapCertificates/relations/basis8095.json"
theorem reductionProof8095 : EqualModuloRelations reduction8095.relations reduction8095.input reduction8095.output := by lin_cert using reduction8095.terms
theorem substitutionProof8095 : IsMapEvaluation generatorImages reduction8095.relations [8,8,8,8,8,8,116] reduction8095.output := by lin_cert using reduction8095.terms
def map_48_191 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8338 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8338 : InImage map_48_191 image8338 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8338 : Bundle := named_bundle% "RealMapCertificates/relations/basis8338.json"
theorem reductionProof8338 : EqualModuloRelations reduction8338.relations reduction8338.input reduction8338.output := by lin_cert using reduction8338.terms
theorem substitutionProof8338 : IsMapEvaluation generatorImages reduction8338.relations [1030] reduction8338.output := by lin_cert using reduction8338.terms
def map_48_192 : Matrix 5 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8465 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation8465 : InImage map_48_192 image8465 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8465 : Bundle := named_bundle% "RealMapCertificates/relations/basis8465.json"
theorem reductionProof8465 : EqualModuloRelations reduction8465.relations reduction8465.input reduction8465.output := by lin_cert using reduction8465.terms
theorem substitutionProof8465 : IsMapEvaluation generatorImages reduction8465.relations [17,663] reduction8465.output := by lin_cert using reduction8465.terms
def image8466 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8466 : InImage map_48_192 image8466 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8466 : Bundle := named_bundle% "RealMapCertificates/relations/basis8466.json"
theorem reductionProof8466 : EqualModuloRelations reduction8466.relations reduction8466.input reduction8466.output := by lin_cert using reduction8466.terms
theorem substitutionProof8466 : IsMapEvaluation generatorImages reduction8466.relations [8,8,8,8,8,8,8,71] reduction8466.output := by lin_cert using reduction8466.terms
def map_48_194 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8711 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8711 : InImage map_48_194 image8711 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8711 : Bundle := named_bundle% "RealMapCertificates/relations/basis8711.json"
theorem reductionProof8711 : EqualModuloRelations reduction8711.relations reduction8711.input reduction8711.output := by lin_cert using reduction8711.terms
theorem substitutionProof8711 : IsMapEvaluation generatorImages reduction8711.relations [16,685] reduction8711.output := by lin_cert using reduction8711.terms
def map_48_195 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8864 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8864 : InImage map_48_195 image8864 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8864 : Bundle := named_bundle% "RealMapCertificates/relations/basis8864.json"
theorem reductionProof8864 : EqualModuloRelations reduction8864.relations reduction8864.input reduction8864.output := by lin_cert using reduction8864.terms
theorem substitutionProof8864 : IsMapEvaluation generatorImages reduction8864.relations [16,17,403] reduction8864.output := by lin_cert using reduction8864.terms
def image8865 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8865 : InImage map_48_195 image8865 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8865 : Bundle := named_bundle% "RealMapCertificates/relations/basis8865.json"
theorem reductionProof8865 : EqualModuloRelations reduction8865.relations reduction8865.input reduction8865.output := by lin_cert using reduction8865.terms
theorem substitutionProof8865 : IsMapEvaluation generatorImages reduction8865.relations [8,8,8,8,8,8,8,77] reduction8865.output := by lin_cert using reduction8865.terms
def image8866 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8866 : InImage map_48_195 image8866 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8866 : Bundle := named_bundle% "RealMapCertificates/relations/basis8866.json"
theorem reductionProof8866 : EqualModuloRelations reduction8866.relations reduction8866.input reduction8866.output := by lin_cert using reduction8866.terms
theorem substitutionProof8866 : IsMapEvaluation generatorImages reduction8866.relations [0,17,685] reduction8866.output := by lin_cert using reduction8866.terms
def map_48_196 : Matrix 2 1 := fun i j => ([false,false] : List Bool)[i.val*1+j.val]!
def image9015 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9015 : InImage map_48_196 image9015 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9015 : Bundle := named_bundle% "RealMapCertificates/relations/basis9015.json"
theorem reductionProof9015 : EqualModuloRelations reduction9015.relations reduction9015.input reduction9015.output := by lin_cert using reduction9015.terms
theorem substitutionProof9015 : IsMapEvaluation generatorImages reduction9015.relations [0,17,17,403] reduction9015.output := by lin_cert using reduction9015.terms
def map_48_197 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image9137 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9137 : InImage map_48_197 image9137 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9137 : Bundle := named_bundle% "RealMapCertificates/relations/basis9137.json"
theorem reductionProof9137 : EqualModuloRelations reduction9137.relations reduction9137.input reduction9137.output := by lin_cert using reduction9137.terms
theorem substitutionProof9137 : IsMapEvaluation generatorImages reduction9137.relations [8,871] reduction9137.output := by lin_cert using reduction9137.terms
def image9138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9138 : InImage map_48_197 image9138 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9138 : Bundle := named_bundle% "RealMapCertificates/relations/basis9138.json"
theorem reductionProof9138 : EqualModuloRelations reduction9138.relations reduction9138.input reduction9138.output := by lin_cert using reduction9138.terms
theorem substitutionProof9138 : IsMapEvaluation generatorImages reduction9138.relations [1,59,402] reduction9138.output := by lin_cert using reduction9138.terms
def image9139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9139 : InImage map_48_197 image9139 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9139 : Bundle := named_bundle% "RealMapCertificates/relations/basis9139.json"
theorem reductionProof9139 : EqualModuloRelations reduction9139.relations reduction9139.input reduction9139.output := by lin_cert using reduction9139.terms
theorem substitutionProof9139 : IsMapEvaluation generatorImages reduction9139.relations [0,0,0,0,0,0,1033] reduction9139.output := by lin_cert using reduction9139.terms
def map_48_198 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image9304 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9304 : InImage map_48_198 image9304 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9304 : Bundle := named_bundle% "RealMapCertificates/relations/basis9304.json"
theorem reductionProof9304 : EqualModuloRelations reduction9304.relations reduction9304.input reduction9304.output := by lin_cert using reduction9304.terms
theorem substitutionProof9304 : IsMapEvaluation generatorImages reduction9304.relations [8,17,556] reduction9304.output := by lin_cert using reduction9304.terms
def image9305 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9305 : InImage map_48_198 image9305 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9305 : Bundle := named_bundle% "RealMapCertificates/relations/basis9305.json"
theorem reductionProof9305 : EqualModuloRelations reduction9305.relations reduction9305.input reduction9305.output := by lin_cert using reduction9305.terms
theorem substitutionProof9305 : IsMapEvaluation generatorImages reduction9305.relations [8,8,8,8,8,8,8,8,49] reduction9305.output := by lin_cert using reduction9305.terms
def image9306 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9306 : InImage map_48_198 image9306 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9306 : Bundle := named_bundle% "RealMapCertificates/relations/basis9306.json"
theorem reductionProof9306 : EqualModuloRelations reduction9306.relations reduction9306.input reduction9306.output := by lin_cert using reduction9306.terms
theorem substitutionProof9306 : IsMapEvaluation generatorImages reduction9306.relations [0,0,0,0,0,1059] reduction9306.output := by lin_cert using reduction9306.terms
def map_48_200 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image9601 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9601 : InImage map_48_200 image9601 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9601 : Bundle := named_bundle% "RealMapCertificates/relations/basis9601.json"
theorem reductionProof9601 : EqualModuloRelations reduction9601.relations reduction9601.input reduction9601.output := by lin_cert using reduction9601.terms
theorem substitutionProof9601 : IsMapEvaluation generatorImages reduction9601.relations [8,8,685] reduction9601.output := by lin_cert using reduction9601.terms
def map_48_201 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9792 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9792 : InImage map_48_201 image9792 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9792 : Bundle := named_bundle% "RealMapCertificates/relations/basis9792.json"
theorem reductionProof9792 : EqualModuloRelations reduction9792.relations reduction9792.input reduction9792.output := by lin_cert using reduction9792.terms
theorem substitutionProof9792 : IsMapEvaluation generatorImages reduction9792.relations [8,8,17,403] reduction9792.output := by lin_cert using reduction9792.terms
def image9793 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9793 : InImage map_48_201 image9793 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9793 : Bundle := named_bundle% "RealMapCertificates/relations/basis9793.json"
theorem reductionProof9793 : EqualModuloRelations reduction9793.relations reduction9793.input reduction9793.output := by lin_cert using reduction9793.terms
theorem substitutionProof9793 : IsMapEvaluation generatorImages reduction9793.relations [8,8,8,8,8,8,8,8,55] reduction9793.output := by lin_cert using reduction9793.terms
def map_48_202 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9955 : InImage map_48_202 image9955 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9955 : Bundle := named_bundle% "RealMapCertificates/relations/basis9955.json"
theorem reductionProof9955 : EqualModuloRelations reduction9955.relations reduction9955.input reduction9955.output := by lin_cert using reduction9955.terms
theorem substitutionProof9955 : IsMapEvaluation generatorImages reduction9955.relations [0,0,0,0,64,402] reduction9955.output := by lin_cert using reduction9955.terms
def map_48_203 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10096 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10096 : InImage map_48_203 image10096 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10096 : Bundle := named_bundle% "RealMapCertificates/relations/basis10096.json"
theorem reductionProof10096 : EqualModuloRelations reduction10096.relations reduction10096.input reduction10096.output := by lin_cert using reduction10096.terms
theorem substitutionProof10096 : IsMapEvaluation generatorImages reduction10096.relations [8,8,722] reduction10096.output := by lin_cert using reduction10096.terms
def image10097 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10097 : InImage map_48_203 image10097 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10097 : Bundle := named_bundle% "RealMapCertificates/relations/basis10097.json"
theorem reductionProof10097 : EqualModuloRelations reduction10097.relations reduction10097.input reduction10097.output := by lin_cert using reduction10097.terms
theorem substitutionProof10097 : IsMapEvaluation generatorImages reduction10097.relations [0,0,0,0,0,64,403] reduction10097.output := by lin_cert using reduction10097.terms
def map_48_204 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image10287 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation10287 : InImage map_48_204 image10287 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10287 : Bundle := named_bundle% "RealMapCertificates/relations/basis10287.json"
theorem reductionProof10287 : EqualModuloRelations reduction10287.relations reduction10287.input reduction10287.output := by lin_cert using reduction10287.terms
theorem substitutionProof10287 : IsMapEvaluation generatorImages reduction10287.relations [8,8,17,433] reduction10287.output := by lin_cert using reduction10287.terms
def image10288 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10288 : InImage map_48_204 image10288 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10288 : Bundle := named_bundle% "RealMapCertificates/relations/basis10288.json"
theorem reductionProof10288 : EqualModuloRelations reduction10288.relations reduction10288.input reduction10288.output := by lin_cert using reduction10288.terms
theorem substitutionProof10288 : IsMapEvaluation generatorImages reduction10288.relations [8,8,8,8,8,8,8,8,8,31] reduction10288.output := by lin_cert using reduction10288.terms
def map_48_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10621 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10621 : InImage map_48_206 image10621 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10621 : Bundle := named_bundle% "RealMapCertificates/relations/basis10621.json"
theorem reductionProof10621 : EqualModuloRelations reduction10621.relations reduction10621.input reduction10621.output := by lin_cert using reduction10621.terms
theorem substitutionProof10621 : IsMapEvaluation generatorImages reduction10621.relations [8,8,16,452] reduction10621.output := by lin_cert using reduction10621.terms
def map_48_207 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10836 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10836 : InImage map_48_207 image10836 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10836 : Bundle := named_bundle% "RealMapCertificates/relations/basis10836.json"
theorem reductionProof10836 : EqualModuloRelations reduction10836.relations reduction10836.input reduction10836.output := by lin_cert using reduction10836.terms
theorem substitutionProof10836 : IsMapEvaluation generatorImages reduction10836.relations [8,8,16,17,225] reduction10836.output := by lin_cert using reduction10836.terms
def image10837 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10837 : InImage map_48_207 image10837 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10837 : Bundle := named_bundle% "RealMapCertificates/relations/basis10837.json"
theorem reductionProof10837 : EqualModuloRelations reduction10837.relations reduction10837.input reduction10837.output := by lin_cert using reduction10837.terms
theorem substitutionProof10837 : IsMapEvaluation generatorImages reduction10837.relations [8,8,8,8,8,8,8,8,8,39] reduction10837.output := by lin_cert using reduction10837.terms
def image10838 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10838 : InImage map_48_207 image10838 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10838 : Bundle := named_bundle% "RealMapCertificates/relations/basis10838.json"
theorem reductionProof10838 : EqualModuloRelations reduction10838.relations reduction10838.input reduction10838.output := by lin_cert using reduction10838.terms
theorem substitutionProof10838 : IsMapEvaluation generatorImages reduction10838.relations [1,5,1033] reduction10838.output := by lin_cert using reduction10838.terms
def map_48_208 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image10998 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation10998 : InImage map_48_208 image10998 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10998 : Bundle := named_bundle% "RealMapCertificates/relations/basis10998.json"
theorem reductionProof10998 : EqualModuloRelations reduction10998.relations reduction10998.input reduction10998.output := by lin_cert using reduction10998.terms
theorem substitutionProof10998 : IsMapEvaluation generatorImages reduction10998.relations [0,0,1301] reduction10998.output := by lin_cert using reduction10998.terms
def map_48_209 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image11152 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11152 : InImage map_48_209 image11152 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11152 : Bundle := named_bundle% "RealMapCertificates/relations/basis11152.json"
theorem reductionProof11152 : EqualModuloRelations reduction11152.relations reduction11152.input reduction11152.output := by lin_cert using reduction11152.terms
theorem substitutionProof11152 : IsMapEvaluation generatorImages reduction11152.relations [8,8,8,595] reduction11152.output := by lin_cert using reduction11152.terms
def image11153 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11153 : InImage map_48_209 image11153 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11153 : Bundle := named_bundle% "RealMapCertificates/relations/basis11153.json"
theorem reductionProof11153 : EqualModuloRelations reduction11153.relations reduction11153.input reduction11153.output := by lin_cert using reduction11153.terms
theorem substitutionProof11153 : IsMapEvaluation generatorImages reduction11153.relations [0,0,0,0,0,0,64,452] reduction11153.output := by lin_cert using reduction11153.terms
def map_48_210 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11344 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11344 : InImage map_48_210 image11344 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11344 : Bundle := named_bundle% "RealMapCertificates/relations/basis11344.json"
theorem reductionProof11344 : EqualModuloRelations reduction11344.relations reduction11344.input reduction11344.output := by lin_cert using reduction11344.terms
theorem substitutionProof11344 : IsMapEvaluation generatorImages reduction11344.relations [8,8,8,17,298] reduction11344.output := by lin_cert using reduction11344.terms
def image11345 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11345 : InImage map_48_210 image11345 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11345 : Bundle := named_bundle% "RealMapCertificates/relations/basis11345.json"
theorem reductionProof11345 : EqualModuloRelations reduction11345.relations reduction11345.input reduction11345.output := by lin_cert using reduction11345.terms
theorem substitutionProof11345 : IsMapEvaluation generatorImages reduction11345.relations [8,8,8,8,8,8,8,8,8,8,16] reduction11345.output := by lin_cert using reduction11345.terms
def map_48_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11545 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11545 : InImage map_48_211 image11545 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11545 : Bundle := named_bundle% "RealMapCertificates/relations/basis11545.json"
theorem reductionProof11545 : EqualModuloRelations reduction11545.relations reduction11545.input reduction11545.output := by lin_cert using reduction11545.terms
theorem substitutionProof11545 : IsMapEvaluation generatorImages reduction11545.relations [0,0,8,1033] reduction11545.output := by lin_cert using reduction11545.terms
def map_48_212 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image11684 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11684 : InImage map_48_212 image11684 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11684 : Bundle := named_bundle% "RealMapCertificates/relations/basis11684.json"
theorem reductionProof11684 : EqualModuloRelations reduction11684.relations reduction11684.input reduction11684.output := by lin_cert using reduction11684.terms
theorem substitutionProof11684 : IsMapEvaluation generatorImages reduction11684.relations [8,8,8,8,452] reduction11684.output := by lin_cert using reduction11684.terms
def map_48_213 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image11922 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11922 : InImage map_48_213 image11922 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11922 : Bundle := named_bundle% "RealMapCertificates/relations/basis11922.json"
theorem reductionProof11922 : EqualModuloRelations reduction11922.relations reduction11922.input reduction11922.output := by lin_cert using reduction11922.terms
theorem substitutionProof11922 : IsMapEvaluation generatorImages reduction11922.relations [64,555] reduction11922.output := by lin_cert using reduction11922.terms
def image11923 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11923 : InImage map_48_213 image11923 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11923 : Bundle := named_bundle% "RealMapCertificates/relations/basis11923.json"
theorem reductionProof11923 : EqualModuloRelations reduction11923.relations reduction11923.input reduction11923.output := by lin_cert using reduction11923.terms
theorem substitutionProof11923 : IsMapEvaluation generatorImages reduction11923.relations [8,8,8,8,17,225] reduction11923.output := by lin_cert using reduction11923.terms
def image11924 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11924 : InImage map_48_213 image11924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11924 : Bundle := named_bundle% "RealMapCertificates/relations/basis11924.json"
theorem reductionProof11924 : EqualModuloRelations reduction11924.relations reduction11924.input reduction11924.output := by lin_cert using reduction11924.terms
theorem substitutionProof11924 : IsMapEvaluation generatorImages reduction11924.relations [8,8,8,8,8,8,8,8,8,8,19] reduction11924.output := by lin_cert using reduction11924.terms
def map_48_214 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12123 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12123 : InImage map_48_214 image12123 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12123 : Bundle := named_bundle% "RealMapCertificates/relations/basis12123.json"
theorem reductionProof12123 : EqualModuloRelations reduction12123.relations reduction12123.input reduction12123.output := by lin_cert using reduction12123.terms
theorem substitutionProof12123 : IsMapEvaluation generatorImages reduction12123.relations [0,64,556] reduction12123.output := by lin_cert using reduction12123.terms
def image12124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12124 : InImage map_48_214 image12124 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12124 : Bundle := named_bundle% "RealMapCertificates/relations/basis12124.json"
theorem reductionProof12124 : EqualModuloRelations reduction12124.relations reduction12124.input reduction12124.output := by lin_cert using reduction12124.terms
theorem substitutionProof12124 : IsMapEvaluation generatorImages reduction12124.relations [0,0,8,1076] reduction12124.output := by lin_cert using reduction12124.terms
def map_48_215 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12289 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12289 : InImage map_48_215 image12289 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12289 : Bundle := named_bundle% "RealMapCertificates/relations/basis12289.json"
theorem reductionProof12289 : EqualModuloRelations reduction12289.relations reduction12289.input reduction12289.output := by lin_cert using reduction12289.terms
theorem substitutionProof12289 : IsMapEvaluation generatorImages reduction12289.relations [8,8,8,8,488] reduction12289.output := by lin_cert using reduction12289.terms
def map_48_216 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image12489 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation12489 : InImage map_48_216 image12489 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12489 : Bundle := named_bundle% "RealMapCertificates/relations/basis12489.json"
theorem reductionProof12489 : EqualModuloRelations reduction12489.relations reduction12489.input reduction12489.output := by lin_cert using reduction12489.terms
theorem substitutionProof12489 : IsMapEvaluation generatorImages reduction12489.relations [8,64,402] reduction12489.output := by lin_cert using reduction12489.terms
def image12490 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation12490 : InImage map_48_216 image12490 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12490 : Bundle := named_bundle% "RealMapCertificates/relations/basis12490.json"
theorem reductionProof12490 : EqualModuloRelations reduction12490.relations reduction12490.input reduction12490.output := by lin_cert using reduction12490.terms
theorem substitutionProof12490 : IsMapEvaluation generatorImages reduction12490.relations [8,8,8,8,17,238] reduction12490.output := by lin_cert using reduction12490.terms
def image12491 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12491 : InImage map_48_216 image12491 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12491 : Bundle := named_bundle% "RealMapCertificates/relations/basis12491.json"
theorem reductionProof12491 : EqualModuloRelations reduction12491.relations reduction12491.input reduction12491.output := by lin_cert using reduction12491.terms
theorem substitutionProof12491 : IsMapEvaluation generatorImages reduction12491.relations [8,8,8,8,8,8,8,8,8,8,8,8] reduction12491.output := by lin_cert using reduction12491.terms
def map_48_217 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image12694 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12694 : InImage map_48_217 image12694 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12694 : Bundle := named_bundle% "RealMapCertificates/relations/basis12694.json"
theorem reductionProof12694 : EqualModuloRelations reduction12694.relations reduction12694.input reduction12694.output := by lin_cert using reduction12694.terms
theorem substitutionProof12694 : IsMapEvaluation generatorImages reduction12694.relations [0,8,64,403] reduction12694.output := by lin_cert using reduction12694.terms
def image12695 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12695 : InImage map_48_217 image12695 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12695 : Bundle := named_bundle% "RealMapCertificates/relations/basis12695.json"
theorem reductionProof12695 : EqualModuloRelations reduction12695.relations reduction12695.input reduction12695.output := by lin_cert using reduction12695.terms
theorem substitutionProof12695 : IsMapEvaluation generatorImages reduction12695.relations [0,0,8,16,725] reduction12695.output := by lin_cert using reduction12695.terms
def map_48_218 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image12838 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12838 : InImage map_48_218 image12838 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12838 : Bundle := named_bundle% "RealMapCertificates/relations/basis12838.json"
theorem reductionProof12838 : EqualModuloRelations reduction12838.relations reduction12838.input reduction12838.output := by lin_cert using reduction12838.terms
theorem substitutionProof12838 : IsMapEvaluation generatorImages reduction12838.relations [8,8,8,8,16,244] reduction12838.output := by lin_cert using reduction12838.terms
def map_48_219 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13075 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13075 : InImage map_48_219 image13075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13075 : Bundle := named_bundle% "RealMapCertificates/relations/basis13075.json"
theorem reductionProof13075 : EqualModuloRelations reduction13075.relations reduction13075.input reduction13075.output := by lin_cert using reduction13075.terms
theorem substitutionProof13075 : IsMapEvaluation generatorImages reduction13075.relations [8,64,432] reduction13075.output := by lin_cert using reduction13075.terms
def image13076 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13076 : InImage map_48_219 image13076 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13076 : Bundle := named_bundle% "RealMapCertificates/relations/basis13076.json"
theorem reductionProof13076 : EqualModuloRelations reduction13076.relations reduction13076.input reduction13076.output := by lin_cert using reduction13076.terms
theorem substitutionProof13076 : IsMapEvaluation generatorImages reduction13076.relations [8,8,8,8,16,17,138] reduction13076.output := by lin_cert using reduction13076.terms
def image13077 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13077 : InImage map_48_219 image13077 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13077 : Bundle := named_bundle% "RealMapCertificates/relations/basis13077.json"
theorem reductionProof13077 : EqualModuloRelations reduction13077.relations reduction13077.input reduction13077.output := by lin_cert using reduction13077.terms
theorem substitutionProof13077 : IsMapEvaluation generatorImages reduction13077.relations [8,8,8,8,8,8,8,8,8,8,8,9] reduction13077.output := by lin_cert using reduction13077.terms
def image13078 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13078 : InImage map_48_219 image13078 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13078 : Bundle := named_bundle% "RealMapCertificates/relations/basis13078.json"
theorem reductionProof13078 : EqualModuloRelations reduction13078.relations reduction13078.input reduction13078.output := by lin_cert using reduction13078.terms
theorem substitutionProof13078 : IsMapEvaluation generatorImages reduction13078.relations [1,5,64,452] reduction13078.output := by lin_cert using reduction13078.terms
end RealMapCertificates
