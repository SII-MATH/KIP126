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
  | 22 => [[5,8]]
  | 59 => []
  | 64 => []
  | 80 => []
  | 112 => []
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 180 => [[5,10,12]]
  | 184 => []
  | 185 => [[0,4,4,8,12]]
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 260 => []
  | 297 => []
  | 343 => [[4,4,4,6,8,12]]
  | 380 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 516 => []
  | 623 => []
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 809 => []
  | 830 => []
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 971 => []
  | 1034 => []
  | 1180 => []
  | 1399 => []
  | 1472 => []
  | 1566 => []
  | 1619 => []
  | 1650 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1750 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1926 => []
  | 2090 => []
  | _ => []
def map_48_220 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image13250 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13250 : InImage map_48_220 image13250 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13250 : Bundle := named_bundle% "RealMapCertificates/relations/basis13250.json"
theorem reductionProof13250 : EqualModuloRelations reduction13250.relations reduction13250.input reduction13250.output := by lin_cert using reduction13250.terms
theorem substitutionProof13250 : IsMapEvaluation generatorImages reduction13250.relations [0,0,8,8,896] reduction13250.output := by lin_cert using reduction13250.terms
def map_48_221 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image13409 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13409 : InImage map_48_221 image13409 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13409 : Bundle := named_bundle% "RealMapCertificates/relations/basis13409.json"
theorem reductionProof13409 : EqualModuloRelations reduction13409.relations reduction13409.input reduction13409.output := by lin_cert using reduction13409.terms
theorem substitutionProof13409 : IsMapEvaluation generatorImages reduction13409.relations [8,8,8,8,8,343] reduction13409.output := by lin_cert using reduction13409.terms
def map_48_222 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13627 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13627 : InImage map_48_222 image13627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13627 : Bundle := named_bundle% "RealMapCertificates/relations/basis13627.json"
theorem reductionProof13627 : EqualModuloRelations reduction13627.relations reduction13627.input reduction13627.output := by lin_cert using reduction13627.terms
theorem substitutionProof13627 : IsMapEvaluation generatorImages reduction13627.relations [8,16,64,224] reduction13627.output := by lin_cert using reduction13627.terms
def image13628 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13628 : InImage map_48_222 image13628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13628 : Bundle := named_bundle% "RealMapCertificates/relations/basis13628.json"
theorem reductionProof13628 : EqualModuloRelations reduction13628.relations reduction13628.input reduction13628.output := by lin_cert using reduction13628.terms
theorem substitutionProof13628 : IsMapEvaluation generatorImages reduction13628.relations [8,8,8,8,8,17,185] reduction13628.output := by lin_cert using reduction13628.terms
def image13629 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13629 : InImage map_48_222 image13629 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13629 : Bundle := named_bundle% "RealMapCertificates/relations/basis13629.json"
theorem reductionProof13629 : EqualModuloRelations reduction13629.relations reduction13629.input reduction13629.output := by lin_cert using reduction13629.terms
theorem substitutionProof13629 : IsMapEvaluation generatorImages reduction13629.relations [8,8,8,8,8,8,8,8,8,8,8,13] reduction13629.output := by lin_cert using reduction13629.terms
def image13630 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13630 : InImage map_48_222 image13630 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13630 : Bundle := named_bundle% "RealMapCertificates/relations/basis13630.json"
theorem reductionProof13630 : EqualModuloRelations reduction13630.relations reduction13630.input reduction13630.output := by lin_cert using reduction13630.terms
theorem substitutionProof13630 : IsMapEvaluation generatorImages reduction13630.relations [0,1566] reduction13630.output := by lin_cert using reduction13630.terms
def map_48_223 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image13821 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13821 : InImage map_48_223 image13821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13821 : Bundle := named_bundle% "RealMapCertificates/relations/basis13821.json"
theorem reductionProof13821 : EqualModuloRelations reduction13821.relations reduction13821.input reduction13821.output := by lin_cert using reduction13821.terms
theorem substitutionProof13821 : IsMapEvaluation generatorImages reduction13821.relations [1,1566] reduction13821.output := by lin_cert using reduction13821.terms
def image13822 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13822 : InImage map_48_223 image13822 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13822 : Bundle := named_bundle% "RealMapCertificates/relations/basis13822.json"
theorem reductionProof13822 : EqualModuloRelations reduction13822.relations reduction13822.input reduction13822.output := by lin_cert using reduction13822.terms
theorem substitutionProof13822 : IsMapEvaluation generatorImages reduction13822.relations [0,0,8,8,8,725] reduction13822.output := by lin_cert using reduction13822.terms
def map_48_224 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13961 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13961 : InImage map_48_224 image13961 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13961 : Bundle := named_bundle% "RealMapCertificates/relations/basis13961.json"
theorem reductionProof13961 : EqualModuloRelations reduction13961.relations reduction13961.input reduction13961.output := by lin_cert using reduction13961.terms
theorem substitutionProof13961 : IsMapEvaluation generatorImages reduction13961.relations [1619] reduction13961.output := by lin_cert using reduction13961.terms
def image13962 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation13962 : InImage map_48_224 image13962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13962 : Bundle := named_bundle% "RealMapCertificates/relations/basis13962.json"
theorem reductionProof13962 : EqualModuloRelations reduction13962.relations reduction13962.input reduction13962.output := by lin_cert using reduction13962.terms
theorem substitutionProof13962 : IsMapEvaluation generatorImages reduction13962.relations [8,8,8,8,8,8,244] reduction13962.output := by lin_cert using reduction13962.terms
def map_48_225 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image14201 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14201 : InImage map_48_225 image14201 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14201 : Bundle := named_bundle% "RealMapCertificates/relations/basis14201.json"
theorem reductionProof14201 : EqualModuloRelations reduction14201.relations reduction14201.input reduction14201.output := by lin_cert using reduction14201.terms
theorem substitutionProof14201 : IsMapEvaluation generatorImages reduction14201.relations [8,8,64,297] reduction14201.output := by lin_cert using reduction14201.terms
def image14202 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14202 : InImage map_48_225 image14202 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14202 : Bundle := named_bundle% "RealMapCertificates/relations/basis14202.json"
theorem reductionProof14202 : EqualModuloRelations reduction14202.relations reduction14202.input reduction14202.output := by lin_cert using reduction14202.terms
theorem substitutionProof14202 : IsMapEvaluation generatorImages reduction14202.relations [8,8,8,8,8,8,17,138] reduction14202.output := by lin_cert using reduction14202.terms
def image14203 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14203 : InImage map_48_225 image14203 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14203 : Bundle := named_bundle% "RealMapCertificates/relations/basis14203.json"
theorem reductionProof14203 : EqualModuloRelations reduction14203.relations reduction14203.input reduction14203.output := by lin_cert using reduction14203.terms
theorem substitutionProof14203 : IsMapEvaluation generatorImages reduction14203.relations [8,8,8,8,8,8,8,8,8,8,9,13] reduction14203.output := by lin_cert using reduction14203.terms
def map_48_227 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image14533 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14533 : InImage map_48_227 image14533 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14533 : Bundle := named_bundle% "RealMapCertificates/relations/basis14533.json"
theorem reductionProof14533 : EqualModuloRelations reduction14533.relations reduction14533.input reduction14533.output := by lin_cert using reduction14533.terms
theorem substitutionProof14533 : IsMapEvaluation generatorImages reduction14533.relations [64,686] reduction14533.output := by lin_cert using reduction14533.terms
def image14534 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14534 : InImage map_48_227 image14534 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14534 : Bundle := named_bundle% "RealMapCertificates/relations/basis14534.json"
theorem reductionProof14534 : EqualModuloRelations reduction14534.relations reduction14534.input reduction14534.output := by lin_cert using reduction14534.terms
theorem substitutionProof14534 : IsMapEvaluation generatorImages reduction14534.relations [17,17,725] reduction14534.output := by lin_cert using reduction14534.terms
def image14535 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14535 : InImage map_48_227 image14535 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14535 : Bundle := named_bundle% "RealMapCertificates/relations/basis14535.json"
theorem reductionProof14535 : EqualModuloRelations reduction14535.relations reduction14535.input reduction14535.output := by lin_cert using reduction14535.terms
theorem substitutionProof14535 : IsMapEvaluation generatorImages reduction14535.relations [8,8,8,8,8,8,257] reduction14535.output := by lin_cert using reduction14535.terms
def map_48_228 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14765 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14765 : InImage map_48_228 image14765 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14765 : Bundle := named_bundle% "RealMapCertificates/relations/basis14765.json"
theorem reductionProof14765 : EqualModuloRelations reduction14765.relations reduction14765.input reduction14765.output := by lin_cert using reduction14765.terms
theorem substitutionProof14765 : IsMapEvaluation generatorImages reduction14765.relations [8,8,8,64,224] reduction14765.output := by lin_cert using reduction14765.terms
def image14766 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14766 : InImage map_48_228 image14766 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14766 : Bundle := named_bundle% "RealMapCertificates/relations/basis14766.json"
theorem reductionProof14766 : EqualModuloRelations reduction14766.relations reduction14766.input reduction14766.output := by lin_cert using reduction14766.terms
theorem substitutionProof14766 : IsMapEvaluation generatorImages reduction14766.relations [8,8,8,8,8,8,17,147] reduction14766.output := by lin_cert using reduction14766.terms
def image14767 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation14767 : InImage map_48_228 image14767 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14767 : Bundle := named_bundle% "RealMapCertificates/relations/basis14767.json"
theorem reductionProof14767 : EqualModuloRelations reduction14767.relations reduction14767.input reduction14767.output := by lin_cert using reduction14767.terms
theorem substitutionProof14767 : IsMapEvaluation generatorImages reduction14767.relations [8,8,8,8,8,8,8,8,8,8,13,13] reduction14767.output := by lin_cert using reduction14767.terms
def image14768 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14768 : InImage map_48_228 image14768 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14768 : Bundle := named_bundle% "RealMapCertificates/relations/basis14768.json"
theorem reductionProof14768 : EqualModuloRelations reduction14768.relations reduction14768.input reduction14768.output := by lin_cert using reduction14768.terms
theorem substitutionProof14768 : IsMapEvaluation generatorImages reduction14768.relations [0,224,246] reduction14768.output := by lin_cert using reduction14768.terms
def image14769 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14769 : InImage map_48_228 image14769 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14769 : Bundle := named_bundle% "RealMapCertificates/relations/basis14769.json"
theorem reductionProof14769 : EqualModuloRelations reduction14769.relations reduction14769.input reduction14769.output := by lin_cert using reduction14769.terms
theorem substitutionProof14769 : IsMapEvaluation generatorImages reduction14769.relations [0,59,725] reduction14769.output := by lin_cert using reduction14769.terms
def map_48_229 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image14974 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14974 : InImage map_48_229 image14974 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14974 : Bundle := named_bundle% "RealMapCertificates/relations/basis14974.json"
theorem reductionProof14974 : EqualModuloRelations reduction14974.relations reduction14974.input reduction14974.output := by lin_cert using reduction14974.terms
theorem substitutionProof14974 : IsMapEvaluation generatorImages reduction14974.relations [1,59,725] reduction14974.output := by lin_cert using reduction14974.terms
def image14975 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14975 : InImage map_48_229 image14975 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14975 : Bundle := named_bundle% "RealMapCertificates/relations/basis14975.json"
theorem reductionProof14975 : EqualModuloRelations reduction14975.relations reduction14975.input reduction14975.output := by lin_cert using reduction14975.terms
theorem substitutionProof14975 : IsMapEvaluation generatorImages reduction14975.relations [0,0,0,1650] reduction14975.output := by lin_cert using reduction14975.terms
def map_48_230 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image15128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15128 : InImage map_48_230 image15128 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15128 : Bundle := named_bundle% "RealMapCertificates/relations/basis15128.json"
theorem reductionProof15128 : EqualModuloRelations reduction15128.relations reduction15128.input reduction15128.output := by lin_cert using reduction15128.terms
theorem substitutionProof15128 : IsMapEvaluation generatorImages reduction15128.relations [17,17,759] reduction15128.output := by lin_cert using reduction15128.terms
def image15129 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15129 : InImage map_48_230 image15129 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15129 : Bundle := named_bundle% "RealMapCertificates/relations/basis15129.json"
theorem reductionProof15129 : EqualModuloRelations reduction15129.relations reduction15129.input reduction15129.output := by lin_cert using reduction15129.terms
theorem substitutionProof15129 : IsMapEvaluation generatorImages reduction15129.relations [8,1399] reduction15129.output := by lin_cert using reduction15129.terms
def image15130 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15130 : InImage map_48_230 image15130 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15130 : Bundle := named_bundle% "RealMapCertificates/relations/basis15130.json"
theorem reductionProof15130 : EqualModuloRelations reduction15130.relations reduction15130.input reduction15130.output := by lin_cert using reduction15130.terms
theorem substitutionProof15130 : IsMapEvaluation generatorImages reduction15130.relations [8,8,8,8,8,8,16,149] reduction15130.output := by lin_cert using reduction15130.terms
def map_48_231 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image15389 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15389 : InImage map_48_231 image15389 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15389 : Bundle := named_bundle% "RealMapCertificates/relations/basis15389.json"
theorem reductionProof15389 : EqualModuloRelations reduction15389.relations reduction15389.input reduction15389.output := by lin_cert using reduction15389.terms
theorem substitutionProof15389 : IsMapEvaluation generatorImages reduction15389.relations [8,8,8,64,237] reduction15389.output := by lin_cert using reduction15389.terms
def image15390 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15390 : InImage map_48_231 image15390 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15390 : Bundle := named_bundle% "RealMapCertificates/relations/basis15390.json"
theorem reductionProof15390 : EqualModuloRelations reduction15390.relations reduction15390.input reduction15390.output := by lin_cert using reduction15390.terms
theorem substitutionProof15390 : IsMapEvaluation generatorImages reduction15390.relations [8,8,8,8,8,8,16,154] reduction15390.output := by lin_cert using reduction15390.terms
def image15391 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15391 : InImage map_48_231 image15391 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15391 : Bundle := named_bundle% "RealMapCertificates/relations/basis15391.json"
theorem reductionProof15391 : EqualModuloRelations reduction15391.relations reduction15391.input reduction15391.output := by lin_cert using reduction15391.terms
theorem substitutionProof15391 : IsMapEvaluation generatorImages reduction15391.relations [8,8,8,8,8,8,8,8,8,9,13,13] reduction15391.output := by lin_cert using reduction15391.terms
def map_48_232 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image15589 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15589 : InImage map_48_232 image15589 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15589 : Bundle := named_bundle% "RealMapCertificates/relations/basis15589.json"
theorem reductionProof15589 : EqualModuloRelations reduction15589.relations reduction15589.input reduction15589.output := by lin_cert using reduction15589.terms
theorem substitutionProof15589 : IsMapEvaluation generatorImages reduction15589.relations [149,452] reduction15589.output := by lin_cert using reduction15589.terms
def map_48_233 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image15780 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15780 : InImage map_48_233 image15780 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15780 : Bundle := named_bundle% "RealMapCertificates/relations/basis15780.json"
theorem reductionProof15780 : EqualModuloRelations reduction15780.relations reduction15780.input reduction15780.output := by lin_cert using reduction15780.terms
theorem substitutionProof15780 : IsMapEvaluation generatorImages reduction15780.relations [16,17,17,491] reduction15780.output := by lin_cert using reduction15780.terms
def image15781 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15781 : InImage map_48_233 image15781 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15781 : Bundle := named_bundle% "RealMapCertificates/relations/basis15781.json"
theorem reductionProof15781 : EqualModuloRelations reduction15781.relations reduction15781.input reduction15781.output := by lin_cert using reduction15781.terms
theorem substitutionProof15781 : IsMapEvaluation generatorImages reduction15781.relations [8,1472] reduction15781.output := by lin_cert using reduction15781.terms
def image15782 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15782 : InImage map_48_233 image15782 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15782 : Bundle := named_bundle% "RealMapCertificates/relations/basis15782.json"
theorem reductionProof15782 : EqualModuloRelations reduction15782.relations reduction15782.input reduction15782.output := by lin_cert using reduction15782.terms
theorem substitutionProof15782 : IsMapEvaluation generatorImages reduction15782.relations [8,8,8,8,8,8,8,206] reduction15782.output := by lin_cert using reduction15782.terms
def image15783 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15783 : InImage map_48_233 image15783 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15783 : Bundle := named_bundle% "RealMapCertificates/relations/basis15783.json"
theorem reductionProof15783 : EqualModuloRelations reduction15783.relations reduction15783.input reduction15783.output := by lin_cert using reduction15783.terms
theorem substitutionProof15783 : IsMapEvaluation generatorImages reduction15783.relations [0,1771] reduction15783.output := by lin_cert using reduction15783.terms
def map_48_234 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16030 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16030 : InImage map_48_234 image16030 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16030 : Bundle := named_bundle% "RealMapCertificates/relations/basis16030.json"
theorem reductionProof16030 : EqualModuloRelations reduction16030.relations reduction16030.input reduction16030.output := by lin_cert using reduction16030.terms
theorem substitutionProof16030 : IsMapEvaluation generatorImages reduction16030.relations [8,8,8,16,64,137] reduction16030.output := by lin_cert using reduction16030.terms
def image16031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16031 : InImage map_48_234 image16031 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16031 : Bundle := named_bundle% "RealMapCertificates/relations/basis16031.json"
theorem reductionProof16031 : EqualModuloRelations reduction16031.relations reduction16031.input reduction16031.output := by lin_cert using reduction16031.terms
theorem substitutionProof16031 : IsMapEvaluation generatorImages reduction16031.relations [8,8,8,8,8,8,8,17,113] reduction16031.output := by lin_cert using reduction16031.terms
def image16032 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16032 : InImage map_48_234 image16032 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16032 : Bundle := named_bundle% "RealMapCertificates/relations/basis16032.json"
theorem reductionProof16032 : EqualModuloRelations reduction16032.relations reduction16032.input reduction16032.output := by lin_cert using reduction16032.terms
theorem substitutionProof16032 : IsMapEvaluation generatorImages reduction16032.relations [8,8,8,8,8,8,8,8,8,13,13,13] reduction16032.output := by lin_cert using reduction16032.terms
def image16033 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16033 : InImage map_48_234 image16033 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16033 : Bundle := named_bundle% "RealMapCertificates/relations/basis16033.json"
theorem reductionProof16033 : EqualModuloRelations reduction16033.relations reduction16033.input reduction16033.output := by lin_cert using reduction16033.terms
theorem substitutionProof16033 : IsMapEvaluation generatorImages reduction16033.relations [0,0,0,0,64,725] reduction16033.output := by lin_cert using reduction16033.terms
def map_48_235 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image16253 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16253 : InImage map_48_235 image16253 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16253 : Bundle := named_bundle% "RealMapCertificates/relations/basis16253.json"
theorem reductionProof16253 : EqualModuloRelations reduction16253.relations reduction16253.input reduction16253.output := by lin_cert using reduction16253.terms
theorem substitutionProof16253 : IsMapEvaluation generatorImages reduction16253.relations [149,488] reduction16253.output := by lin_cert using reduction16253.terms
def image16254 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16254 : InImage map_48_235 image16254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16254 : Bundle := named_bundle% "RealMapCertificates/relations/basis16254.json"
theorem reductionProof16254 : EqualModuloRelations reduction16254.relations reduction16254.input reduction16254.output := by lin_cert using reduction16254.terms
theorem substitutionProof16254 : IsMapEvaluation generatorImages reduction16254.relations [0,0,0,64,752] reduction16254.output := by lin_cert using reduction16254.terms
def image16255 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16255 : InImage map_48_235 image16255 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16255 : Bundle := named_bundle% "RealMapCertificates/relations/basis16255.json"
theorem reductionProof16255 : EqualModuloRelations reduction16255.relations reduction16255.input reduction16255.output := by lin_cert using reduction16255.terms
theorem substitutionProof16255 : IsMapEvaluation generatorImages reduction16255.relations [0,0,0,0,0,138,491] reduction16255.output := by lin_cert using reduction16255.terms
def map_48_236 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16447 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16447 : InImage map_48_236 image16447 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16447 : Bundle := named_bundle% "RealMapCertificates/relations/basis16447.json"
theorem reductionProof16447 : EqualModuloRelations reduction16447.relations reduction16447.input reduction16447.output := by lin_cert using reduction16447.terms
theorem substitutionProof16447 : IsMapEvaluation generatorImages reduction16447.relations [8,17,17,623] reduction16447.output := by lin_cert using reduction16447.terms
def image16448 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16448 : InImage map_48_236 image16448 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16448 : Bundle := named_bundle% "RealMapCertificates/relations/basis16448.json"
theorem reductionProof16448 : EqualModuloRelations reduction16448.relations reduction16448.input reduction16448.output := by lin_cert using reduction16448.terms
theorem substitutionProof16448 : IsMapEvaluation generatorImages reduction16448.relations [8,8,1180] reduction16448.output := by lin_cert using reduction16448.terms
def image16449 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16449 : InImage map_48_236 image16449 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16449 : Bundle := named_bundle% "RealMapCertificates/relations/basis16449.json"
theorem reductionProof16449 : EqualModuloRelations reduction16449.relations reduction16449.input reduction16449.output := by lin_cert using reduction16449.terms
theorem substitutionProof16449 : IsMapEvaluation generatorImages reduction16449.relations [8,8,8,8,8,8,8,8,149] reduction16449.output := by lin_cert using reduction16449.terms
def image16450 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16450 : InImage map_48_236 image16450 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16450 : Bundle := named_bundle% "RealMapCertificates/relations/basis16450.json"
theorem reductionProof16450 : EqualModuloRelations reduction16450.relations reduction16450.input reduction16450.output := by lin_cert using reduction16450.terms
theorem substitutionProof16450 : IsMapEvaluation generatorImages reduction16450.relations [0,0,0,0,0,1750] reduction16450.output := by lin_cert using reduction16450.terms
def image16451 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16451 : InImage map_48_236 image16451 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16451 : Bundle := named_bundle% "RealMapCertificates/relations/basis16451.json"
theorem reductionProof16451 : EqualModuloRelations reduction16451.relations reduction16451.input reduction16451.output := by lin_cert using reduction16451.terms
theorem substitutionProof16451 : IsMapEvaluation generatorImages reduction16451.relations [0,0,0,0,0,0,0,0,1686] reduction16451.output := by lin_cert using reduction16451.terms
def map_48_237 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16706 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16706 : InImage map_48_237 image16706 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16706 : Bundle := named_bundle% "RealMapCertificates/relations/basis16706.json"
theorem reductionProof16706 : EqualModuloRelations reduction16706.relations reduction16706.input reduction16706.output := by lin_cert using reduction16706.terms
theorem substitutionProof16706 : IsMapEvaluation generatorImages reduction16706.relations [8,8,8,8,64,184] reduction16706.output := by lin_cert using reduction16706.terms
def image16707 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16707 : InImage map_48_237 image16707 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16707 : Bundle := named_bundle% "RealMapCertificates/relations/basis16707.json"
theorem reductionProof16707 : EqualModuloRelations reduction16707.relations reduction16707.input reduction16707.output := by lin_cert using reduction16707.terms
theorem substitutionProof16707 : IsMapEvaluation generatorImages reduction16707.relations [8,8,8,8,8,8,8,8,154] reduction16707.output := by lin_cert using reduction16707.terms
def image16708 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16708 : InImage map_48_237 image16708 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16708 : Bundle := named_bundle% "RealMapCertificates/relations/basis16708.json"
theorem reductionProof16708 : EqualModuloRelations reduction16708.relations reduction16708.input reduction16708.output := by lin_cert using reduction16708.terms
theorem substitutionProof16708 : IsMapEvaluation generatorImages reduction16708.relations [8,8,8,8,8,8,8,8,9,13,13,13] reduction16708.output := by lin_cert using reduction16708.terms
def image16709 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16709 : InImage map_48_237 image16709 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16709 : Bundle := named_bundle% "RealMapCertificates/relations/basis16709.json"
theorem reductionProof16709 : EqualModuloRelations reduction16709.relations reduction16709.input reduction16709.output := by lin_cert using reduction16709.terms
theorem substitutionProof16709 : IsMapEvaluation generatorImages reduction16709.relations [0,0,0,0,0,0,0,1735] reduction16709.output := by lin_cert using reduction16709.terms
def map_48_238 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image16917 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16917 : InImage map_48_238 image16917 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16917 : Bundle := named_bundle% "RealMapCertificates/relations/basis16917.json"
theorem reductionProof16917 : EqualModuloRelations reduction16917.relations reduction16917.input reduction16917.output := by lin_cert using reduction16917.terms
theorem substitutionProof16917 : IsMapEvaluation generatorImages reduction16917.relations [16,149,244] reduction16917.output := by lin_cert using reduction16917.terms
def image16918 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16918 : InImage map_48_238 image16918 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16918 : Bundle := named_bundle% "RealMapCertificates/relations/basis16918.json"
theorem reductionProof16918 : EqualModuloRelations reduction16918.relations reduction16918.input reduction16918.output := by lin_cert using reduction16918.terms
theorem substitutionProof16918 : IsMapEvaluation generatorImages reduction16918.relations [0,0,0,0,0,0,0,0,1736] reduction16918.output := by lin_cert using reduction16918.terms
def map_48_239 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image17135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17135 : InImage map_48_239 image17135 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17135 : Bundle := named_bundle% "RealMapCertificates/relations/basis17135.json"
theorem reductionProof17135 : EqualModuloRelations reduction17135.relations reduction17135.input reduction17135.output := by lin_cert using reduction17135.terms
theorem substitutionProof17135 : IsMapEvaluation generatorImages reduction17135.relations [8,8,137,245] reduction17135.output := by lin_cert using reduction17135.terms
def image17136 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17136 : InImage map_48_239 image17136 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17136 : Bundle := named_bundle% "RealMapCertificates/relations/basis17136.json"
theorem reductionProof17136 : EqualModuloRelations reduction17136.relations reduction17136.input reduction17136.output := by lin_cert using reduction17136.terms
theorem substitutionProof17136 : IsMapEvaluation generatorImages reduction17136.relations [8,8,17,17,491] reduction17136.output := by lin_cert using reduction17136.terms
def image17137 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17137 : InImage map_48_239 image17137 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17137 : Bundle := named_bundle% "RealMapCertificates/relations/basis17137.json"
theorem reductionProof17137 : EqualModuloRelations reduction17137.relations reduction17137.input reduction17137.output := by lin_cert using reduction17137.terms
theorem substitutionProof17137 : IsMapEvaluation generatorImages reduction17137.relations [8,8,8,8,8,8,8,8,160] reduction17137.output := by lin_cert using reduction17137.terms
def image17138 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17138 : InImage map_48_239 image17138 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17138 : Bundle := named_bundle% "RealMapCertificates/relations/basis17138.json"
theorem reductionProof17138 : EqualModuloRelations reduction17138.relations reduction17138.input reduction17138.output := by lin_cert using reduction17138.terms
theorem substitutionProof17138 : IsMapEvaluation generatorImages reduction17138.relations [0,0,64,64,224] reduction17138.output := by lin_cert using reduction17138.terms
def image17139 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17139 : InImage map_48_239 image17139 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17139 : Bundle := named_bundle% "RealMapCertificates/relations/basis17139.json"
theorem reductionProof17139 : EqualModuloRelations reduction17139.relations reduction17139.input reduction17139.output := by lin_cert using reduction17139.terms
theorem substitutionProof17139 : IsMapEvaluation generatorImages reduction17139.relations [0,0,0,0,0,0,0,0,0,1737] reduction17139.output := by lin_cert using reduction17139.terms
def map_48_240 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17405 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17405 : InImage map_48_240 image17405 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17405 : Bundle := named_bundle% "RealMapCertificates/relations/basis17405.json"
theorem reductionProof17405 : EqualModuloRelations reduction17405.relations reduction17405.input reduction17405.output := by lin_cert using reduction17405.terms
theorem substitutionProof17405 : IsMapEvaluation generatorImages reduction17405.relations [8,8,8,8,8,64,137] reduction17405.output := by lin_cert using reduction17405.terms
def image17406 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17406 : InImage map_48_240 image17406 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17406 : Bundle := named_bundle% "RealMapCertificates/relations/basis17406.json"
theorem reductionProof17406 : EqualModuloRelations reduction17406.relations reduction17406.input reduction17406.output := by lin_cert using reduction17406.terms
theorem substitutionProof17406 : IsMapEvaluation generatorImages reduction17406.relations [8,8,8,8,8,8,8,8,162] reduction17406.output := by lin_cert using reduction17406.terms
def image17407 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17407 : InImage map_48_240 image17407 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17407 : Bundle := named_bundle% "RealMapCertificates/relations/basis17407.json"
theorem reductionProof17407 : EqualModuloRelations reduction17407.relations reduction17407.input reduction17407.output := by lin_cert using reduction17407.terms
theorem substitutionProof17407 : IsMapEvaluation generatorImages reduction17407.relations [8,8,8,8,8,8,8,8,13,13,13,13] reduction17407.output := by lin_cert using reduction17407.terms
def image17408 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17408 : InImage map_48_240 image17408 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17408 : Bundle := named_bundle% "RealMapCertificates/relations/basis17408.json"
theorem reductionProof17408 : EqualModuloRelations reduction17408.relations reduction17408.input reduction17408.output := by lin_cert using reduction17408.terms
theorem substitutionProof17408 : IsMapEvaluation generatorImages reduction17408.relations [0,0,0,64,64,225] reduction17408.output := by lin_cert using reduction17408.terms
def map_48_241 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image17681 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17681 : InImage map_48_241 image17681 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17681 : Bundle := named_bundle% "RealMapCertificates/relations/basis17681.json"
theorem reductionProof17681 : EqualModuloRelations reduction17681.relations reduction17681.input reduction17681.output := by lin_cert using reduction17681.terms
theorem substitutionProof17681 : IsMapEvaluation generatorImages reduction17681.relations [8,149,343] reduction17681.output := by lin_cert using reduction17681.terms
def image17682 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17682 : InImage map_48_241 image17682 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17682 : Bundle := named_bundle% "RealMapCertificates/relations/basis17682.json"
theorem reductionProof17682 : EqualModuloRelations reduction17682.relations reduction17682.input reduction17682.output := by lin_cert using reduction17682.terms
theorem substitutionProof17682 : IsMapEvaluation generatorImages reduction17682.relations [1,1,64,64,224] reduction17682.output := by lin_cert using reduction17682.terms
def image17683 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17683 : InImage map_48_241 image17683 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17683 : Bundle := named_bundle% "RealMapCertificates/relations/basis17683.json"
theorem reductionProof17683 : EqualModuloRelations reduction17683.relations reduction17683.input reduction17683.output := by lin_cert using reduction17683.terms
theorem substitutionProof17683 : IsMapEvaluation generatorImages reduction17683.relations [0,0,0,0,0,0,149,491] reduction17683.output := by lin_cert using reduction17683.terms
def map_48_242 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17903 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17903 : InImage map_48_242 image17903 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17903 : Bundle := named_bundle% "RealMapCertificates/relations/basis17903.json"
theorem reductionProof17903 : EqualModuloRelations reduction17903.relations reduction17903.input reduction17903.output := by lin_cert using reduction17903.terms
theorem substitutionProof17903 : IsMapEvaluation generatorImages reduction17903.relations [8,8,17,17,516] reduction17903.output := by lin_cert using reduction17903.terms
def image17904 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17904 : InImage map_48_242 image17904 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17904 : Bundle := named_bundle% "RealMapCertificates/relations/basis17904.json"
theorem reductionProof17904 : EqualModuloRelations reduction17904.relations reduction17904.input reduction17904.output := by lin_cert using reduction17904.terms
theorem substitutionProof17904 : IsMapEvaluation generatorImages reduction17904.relations [8,8,8,971] reduction17904.output := by lin_cert using reduction17904.terms
def image17905 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17905 : InImage map_48_242 image17905 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17905 : Bundle := named_bundle% "RealMapCertificates/relations/basis17905.json"
theorem reductionProof17905 : EqualModuloRelations reduction17905.relations reduction17905.input reduction17905.output := by lin_cert using reduction17905.terms
theorem substitutionProof17905 : IsMapEvaluation generatorImages reduction17905.relations [8,8,8,8,8,8,8,8,166] reduction17905.output := by lin_cert using reduction17905.terms
def image17906 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17906 : InImage map_48_242 image17906 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17906 : Bundle := named_bundle% "RealMapCertificates/relations/basis17906.json"
theorem reductionProof17906 : EqualModuloRelations reduction17906.relations reduction17906.input reduction17906.output := by lin_cert using reduction17906.terms
theorem substitutionProof17906 : IsMapEvaluation generatorImages reduction17906.relations [0,0,0,0,0,64,809] reduction17906.output := by lin_cert using reduction17906.terms
def map_48_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18190 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18190 : InImage map_48_243 image18190 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18190 : Bundle := named_bundle% "RealMapCertificates/relations/basis18190.json"
theorem reductionProof18190 : EqualModuloRelations reduction18190.relations reduction18190.input reduction18190.output := by lin_cert using reduction18190.terms
theorem substitutionProof18190 : IsMapEvaluation generatorImages reduction18190.relations [8,8,8,8,8,64,146] reduction18190.output := by lin_cert using reduction18190.terms
def image18191 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18191 : InImage map_48_243 image18191 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18191 : Bundle := named_bundle% "RealMapCertificates/relations/basis18191.json"
theorem reductionProof18191 : EqualModuloRelations reduction18191.relations reduction18191.input reduction18191.output := by lin_cert using reduction18191.terms
theorem substitutionProof18191 : IsMapEvaluation generatorImages reduction18191.relations [8,8,8,8,8,8,8,9,13,13,13,13] reduction18191.output := by lin_cert using reduction18191.terms
def image18192 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18192 : InImage map_48_243 image18192 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18192 : Bundle := named_bundle% "RealMapCertificates/relations/basis18192.json"
theorem reductionProof18192 : EqualModuloRelations reduction18192.relations reduction18192.input reduction18192.output := by lin_cert using reduction18192.terms
theorem substitutionProof18192 : IsMapEvaluation generatorImages reduction18192.relations [8,8,8,8,8,8,8,8,17,80] reduction18192.output := by lin_cert using reduction18192.terms
def map_48_244 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image18412 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18412 : InImage map_48_244 image18412 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18412 : Bundle := named_bundle% "RealMapCertificates/relations/basis18412.json"
theorem reductionProof18412 : EqualModuloRelations reduction18412.relations reduction18412.input reduction18412.output := by lin_cert using reduction18412.terms
theorem substitutionProof18412 : IsMapEvaluation generatorImages reduction18412.relations [8,8,149,244] reduction18412.output := by lin_cert using reduction18412.terms
def map_48_245 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image18645 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18645 : InImage map_48_245 image18645 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18645 : Bundle := named_bundle% "RealMapCertificates/relations/basis18645.json"
theorem reductionProof18645 : EqualModuloRelations reduction18645.relations reduction18645.input reduction18645.output := by lin_cert using reduction18645.terms
theorem substitutionProof18645 : IsMapEvaluation generatorImages reduction18645.relations [64,896] reduction18645.output := by lin_cert using reduction18645.terms
def image18646 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18646 : InImage map_48_245 image18646 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18646 : Bundle := named_bundle% "RealMapCertificates/relations/basis18646.json"
theorem reductionProof18646 : EqualModuloRelations reduction18646.relations reduction18646.input reduction18646.output := by lin_cert using reduction18646.terms
theorem substitutionProof18646 : IsMapEvaluation generatorImages reduction18646.relations [8,8,16,17,17,260] reduction18646.output := by lin_cert using reduction18646.terms
def image18647 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18647 : InImage map_48_245 image18647 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18647 : Bundle := named_bundle% "RealMapCertificates/relations/basis18647.json"
theorem reductionProof18647 : EqualModuloRelations reduction18647.relations reduction18647.input reduction18647.output := by lin_cert using reduction18647.terms
theorem substitutionProof18647 : IsMapEvaluation generatorImages reduction18647.relations [8,8,8,1034] reduction18647.output := by lin_cert using reduction18647.terms
def image18648 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18648 : InImage map_48_245 image18648 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18648 : Bundle := named_bundle% "RealMapCertificates/relations/basis18648.json"
theorem reductionProof18648 : EqualModuloRelations reduction18648.relations reduction18648.input reduction18648.output := by lin_cert using reduction18648.terms
theorem substitutionProof18648 : IsMapEvaluation generatorImages reduction18648.relations [8,8,8,8,8,8,8,8,180] reduction18648.output := by lin_cert using reduction18648.terms
def image18649 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18649 : InImage map_48_245 image18649 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18649 : Bundle := named_bundle% "RealMapCertificates/relations/basis18649.json"
theorem reductionProof18649 : EqualModuloRelations reduction18649.relations reduction18649.input reduction18649.output := by lin_cert using reduction18649.terms
theorem substitutionProof18649 : IsMapEvaluation generatorImages reduction18649.relations [1,2090] reduction18649.output := by lin_cert using reduction18649.terms
def map_48_246 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image18936 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18936 : InImage map_48_246 image18936 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction18936 : Bundle := named_bundle% "RealMapCertificates/relations/basis18936.json"
theorem reductionProof18936 : EqualModuloRelations reduction18936.relations reduction18936.input reduction18936.output := by lin_cert using reduction18936.terms
theorem substitutionProof18936 : IsMapEvaluation generatorImages reduction18936.relations [64,918] reduction18936.output := by lin_cert using reduction18936.terms
def image18937 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18937 : InImage map_48_246 image18937 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction18937 : Bundle := named_bundle% "RealMapCertificates/relations/basis18937.json"
theorem reductionProof18937 : EqualModuloRelations reduction18937.relations reduction18937.input reduction18937.output := by lin_cert using reduction18937.terms
theorem substitutionProof18937 : IsMapEvaluation generatorImages reduction18937.relations [8,8,8,8,8,16,64,64] reduction18937.output := by lin_cert using reduction18937.terms
def image18938 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18938 : InImage map_48_246 image18938 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction18938 : Bundle := named_bundle% "RealMapCertificates/relations/basis18938.json"
theorem reductionProof18938 : EqualModuloRelations reduction18938.relations reduction18938.input reduction18938.output := by lin_cert using reduction18938.terms
theorem substitutionProof18938 : IsMapEvaluation generatorImages reduction18938.relations [8,8,8,8,8,8,8,13,13,13,13,13] reduction18938.output := by lin_cert using reduction18938.terms
def image18939 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18939 : InImage map_48_246 image18939 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction18939 : Bundle := named_bundle% "RealMapCertificates/relations/basis18939.json"
theorem reductionProof18939 : EqualModuloRelations reduction18939.relations reduction18939.input reduction18939.output := by lin_cert using reduction18939.terms
theorem substitutionProof18939 : IsMapEvaluation generatorImages reduction18939.relations [8,8,8,8,8,8,8,8,20,80] reduction18939.output := by lin_cert using reduction18939.terms
def image18940 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18940 : InImage map_48_246 image18940 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction18940 : Bundle := named_bundle% "RealMapCertificates/relations/basis18940.json"
theorem reductionProof18940 : EqualModuloRelations reduction18940.relations reduction18940.input reduction18940.output := by lin_cert using reduction18940.terms
theorem substitutionProof18940 : IsMapEvaluation generatorImages reduction18940.relations [0,113,725] reduction18940.output := by lin_cert using reduction18940.terms
def image18941 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18941 : InImage map_48_246 image18941 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction18941 : Bundle := named_bundle% "RealMapCertificates/relations/basis18941.json"
theorem reductionProof18941 : EqualModuloRelations reduction18941.relations reduction18941.input reduction18941.output := by lin_cert using reduction18941.terms
theorem substitutionProof18941 : IsMapEvaluation generatorImages reduction18941.relations [0,0,0,0,64,64,244] reduction18941.output := by lin_cert using reduction18941.terms
def map_48_247 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image19213 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19213 : InImage map_48_247 image19213 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19213 : Bundle := named_bundle% "RealMapCertificates/relations/basis19213.json"
theorem reductionProof19213 : EqualModuloRelations reduction19213.relations reduction19213.input reduction19213.output := by lin_cert using reduction19213.terms
theorem substitutionProof19213 : IsMapEvaluation generatorImages reduction19213.relations [8,8,149,257] reduction19213.output := by lin_cert using reduction19213.terms
def image19214 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19214 : InImage map_48_247 image19214 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19214 : Bundle := named_bundle% "RealMapCertificates/relations/basis19214.json"
theorem reductionProof19214 : EqualModuloRelations reduction19214.relations reduction19214.input reduction19214.output := by lin_cert using reduction19214.terms
theorem substitutionProof19214 : IsMapEvaluation generatorImages reduction19214.relations [0,0,0,0,0,64,138,149] reduction19214.output := by lin_cert using reduction19214.terms
def map_48_248 : Matrix 3 4 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19447 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19447 : InImage map_48_248 image19447 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19447 : Bundle := named_bundle% "RealMapCertificates/relations/basis19447.json"
theorem reductionProof19447 : EqualModuloRelations reduction19447.relations reduction19447.input reduction19447.output := by lin_cert using reduction19447.terms
theorem substitutionProof19447 : IsMapEvaluation generatorImages reduction19447.relations [8,64,725] reduction19447.output := by lin_cert using reduction19447.terms
def image19448 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19448 : InImage map_48_248 image19448 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19448 : Bundle := named_bundle% "RealMapCertificates/relations/basis19448.json"
theorem reductionProof19448 : EqualModuloRelations reduction19448.relations reduction19448.input reduction19448.output := by lin_cert using reduction19448.terms
theorem substitutionProof19448 : IsMapEvaluation generatorImages reduction19448.relations [8,8,8,17,17,380] reduction19448.output := by lin_cert using reduction19448.terms
def image19449 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19449 : InImage map_48_248 image19449 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19449 : Bundle := named_bundle% "RealMapCertificates/relations/basis19449.json"
theorem reductionProof19449 : EqualModuloRelations reduction19449.relations reduction19449.input reduction19449.output := by lin_cert using reduction19449.terms
theorem substitutionProof19449 : IsMapEvaluation generatorImages reduction19449.relations [8,8,8,8,830] reduction19449.output := by lin_cert using reduction19449.terms
def image19450 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19450 : InImage map_48_248 image19450 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19450 : Bundle := named_bundle% "RealMapCertificates/relations/basis19450.json"
theorem reductionProof19450 : EqualModuloRelations reduction19450.relations reduction19450.input reduction19450.output := by lin_cert using reduction19450.terms
theorem substitutionProof19450 : IsMapEvaluation generatorImages reduction19450.relations [8,8,8,8,8,8,8,8,194] reduction19450.output := by lin_cert using reduction19450.terms
def map_48_249 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image19751 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19751 : InImage map_48_249 image19751 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction19751 : Bundle := named_bundle% "RealMapCertificates/relations/basis19751.json"
theorem reductionProof19751 : EqualModuloRelations reduction19751.relations reduction19751.input reduction19751.output := by lin_cert using reduction19751.terms
theorem substitutionProof19751 : IsMapEvaluation generatorImages reduction19751.relations [64,954] reduction19751.output := by lin_cert using reduction19751.terms
def image19752 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19752 : InImage map_48_249 image19752 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction19752 : Bundle := named_bundle% "RealMapCertificates/relations/basis19752.json"
theorem reductionProof19752 : EqualModuloRelations reduction19752.relations reduction19752.input reduction19752.output := by lin_cert using reduction19752.terms
theorem substitutionProof19752 : IsMapEvaluation generatorImages reduction19752.relations [8,8,8,8,8,8,64,112] reduction19752.output := by lin_cert using reduction19752.terms
def image19753 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19753 : InImage map_48_249 image19753 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction19753 : Bundle := named_bundle% "RealMapCertificates/relations/basis19753.json"
theorem reductionProof19753 : EqualModuloRelations reduction19753.relations reduction19753.input reduction19753.output := by lin_cert using reduction19753.terms
theorem substitutionProof19753 : IsMapEvaluation generatorImages reduction19753.relations [8,8,8,8,8,8,9,13,13,13,13,13] reduction19753.output := by lin_cert using reduction19753.terms
def image19754 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19754 : InImage map_48_249 image19754 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction19754 : Bundle := named_bundle% "RealMapCertificates/relations/basis19754.json"
theorem reductionProof19754 : EqualModuloRelations reduction19754.relations reduction19754.input reduction19754.output := by lin_cert using reduction19754.terms
theorem substitutionProof19754 : IsMapEvaluation generatorImages reduction19754.relations [8,8,8,8,8,8,8,8,22,80] reduction19754.output := by lin_cert using reduction19754.terms
def image19755 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19755 : InImage map_48_249 image19755 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction19755 : Bundle := named_bundle% "RealMapCertificates/relations/basis19755.json"
theorem reductionProof19755 : EqualModuloRelations reduction19755.relations reduction19755.input reduction19755.output := by lin_cert using reduction19755.terms
theorem substitutionProof19755 : IsMapEvaluation generatorImages reduction19755.relations [0,8,138,491] reduction19755.output := by lin_cert using reduction19755.terms
def map_48_250 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image19995 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19995 : InImage map_48_250 image19995 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19995 : Bundle := named_bundle% "RealMapCertificates/relations/basis19995.json"
theorem reductionProof19995 : EqualModuloRelations reduction19995.relations reduction19995.input reduction19995.output := by lin_cert using reduction19995.terms
theorem substitutionProof19995 : IsMapEvaluation generatorImages reduction19995.relations [8,8,16,149,149] reduction19995.output := by lin_cert using reduction19995.terms
def map_48_251 : Matrix 1 6 := fun i j => ([false,false,false,true,false,false] : List Bool)[i.val*6+j.val]!
def image20255 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20255 : InImage map_48_251 image20255 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20255 : Bundle := named_bundle% "RealMapCertificates/relations/basis20255.json"
theorem reductionProof20255 : EqualModuloRelations reduction20255.relations reduction20255.input reduction20255.output := by lin_cert using reduction20255.terms
theorem substitutionProof20255 : IsMapEvaluation generatorImages reduction20255.relations [8,64,759] reduction20255.output := by lin_cert using reduction20255.terms
def image20256 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20256 : InImage map_48_251 image20256 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20256 : Bundle := named_bundle% "RealMapCertificates/relations/basis20256.json"
theorem reductionProof20256 : EqualModuloRelations reduction20256.relations reduction20256.input reduction20256.output := by lin_cert using reduction20256.terms
theorem substitutionProof20256 : IsMapEvaluation generatorImages reduction20256.relations [8,8,8,8,64,245] reduction20256.output := by lin_cert using reduction20256.terms
def image20257 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20257 : InImage map_48_251 image20257 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20257 : Bundle := named_bundle% "RealMapCertificates/relations/basis20257.json"
theorem reductionProof20257 : EqualModuloRelations reduction20257.relations reduction20257.input reduction20257.output := by lin_cert using reduction20257.terms
theorem substitutionProof20257 : IsMapEvaluation generatorImages reduction20257.relations [8,8,8,8,17,17,260] reduction20257.output := by lin_cert using reduction20257.terms
def image20258 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20258 : InImage map_48_251 image20258 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20258 : Bundle := named_bundle% "RealMapCertificates/relations/basis20258.json"
theorem reductionProof20258 : EqualModuloRelations reduction20258.relations reduction20258.input reduction20258.output := by lin_cert using reduction20258.terms
theorem substitutionProof20258 : IsMapEvaluation generatorImages reduction20258.relations [8,8,8,8,8,8,8,9,194] reduction20258.output := by lin_cert using reduction20258.terms
def image20259 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20259 : InImage map_48_251 image20259 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20259 : Bundle := named_bundle% "RealMapCertificates/relations/basis20259.json"
theorem reductionProof20259 : EqualModuloRelations reduction20259.relations reduction20259.input reduction20259.output := by lin_cert using reduction20259.terms
theorem substitutionProof20259 : IsMapEvaluation generatorImages reduction20259.relations [1,5,149,491] reduction20259.output := by lin_cert using reduction20259.terms
def image20260 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20260 : InImage map_48_251 image20260 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20260 : Bundle := named_bundle% "RealMapCertificates/relations/basis20260.json"
theorem reductionProof20260 : EqualModuloRelations reduction20260.relations reduction20260.input reduction20260.output := by lin_cert using reduction20260.terms
theorem substitutionProof20260 : IsMapEvaluation generatorImages reduction20260.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1926] reduction20260.output := by lin_cert using reduction20260.terms
end RealMapCertificates
