import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
  | 9 => [[8]]
  | 13 => [[9]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 89 => []
  | 101 => []
  | 113 => [[0,8,12]]
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 187 => []
  | 194 => [[7,10,12]]
  | 206 => [[4,6,8,12]]
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 254 => []
  | 260 => []
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 278 => []
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 292 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 454 => []
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 491 => []
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 515 => [[1,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 516 => []
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 536 => [[2,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 573 => []
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 606 => []
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 623 => []
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 637 => [[0,0,4,4,8,12,12]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 688 => []
  | 726 => []
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1059 => []
  | 1179 => [[4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1927 => []
  | 1967 => []
  | 2091 => [[4,4,4,6,8,12,12,12]]
  | 2539 => [[4,4,4,4,6,8,12,12,12]]
  | 2580 => [[0,4,4,4,4,5,9,12,12,12]]
  | 2739 => []
  | _ => []
def map_48_252 : Matrix 4 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image20558 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20558 : InImage map_48_252 image20558 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction20558 : Bundle := named_bundle% "RealMapCertificates/relations/basis20558.json"
theorem reductionProof20558 : EqualModuloRelations reduction20558.relations reduction20558.input reduction20558.output := by lin_cert using reduction20558.terms
theorem substitutionProof20558 : IsMapEvaluation generatorImages reduction20558.relations [8,64,778] reduction20558.output := by lin_cert using reduction20558.terms
def image20559 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation20559 : InImage map_48_252 image20559 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction20559 : Bundle := named_bundle% "RealMapCertificates/relations/basis20559.json"
theorem reductionProof20559 : EqualModuloRelations reduction20559.relations reduction20559.input reduction20559.output := by lin_cert using reduction20559.terms
theorem substitutionProof20559 : IsMapEvaluation generatorImages reduction20559.relations [8,8,8,8,8,8,13,13,13,13,13,13] reduction20559.output := by lin_cert using reduction20559.terms
def image20560 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20560 : InImage map_48_252 image20560 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction20560 : Bundle := named_bundle% "RealMapCertificates/relations/basis20560.json"
theorem reductionProof20560 : EqualModuloRelations reduction20560.relations reduction20560.input reduction20560.output := by lin_cert using reduction20560.terms
theorem substitutionProof20560 : IsMapEvaluation generatorImages reduction20560.relations [8,8,8,8,8,8,8,64,64] reduction20560.output := by lin_cert using reduction20560.terms
def image20561 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20561 : InImage map_48_252 image20561 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction20561 : Bundle := named_bundle% "RealMapCertificates/relations/basis20561.json"
theorem reductionProof20561 : EqualModuloRelations reduction20561.relations reduction20561.input reduction20561.output := by lin_cert using reduction20561.terms
theorem substitutionProof20561 : IsMapEvaluation generatorImages reduction20561.relations [8,8,8,8,8,8,8,8,23,89] reduction20561.output := by lin_cert using reduction20561.terms
def image20562 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20562 : InImage map_48_252 image20562 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction20562 : Bundle := named_bundle% "RealMapCertificates/relations/basis20562.json"
theorem reductionProof20562 : EqualModuloRelations reduction20562.relations reduction20562.input reduction20562.output := by lin_cert using reduction20562.terms
theorem substitutionProof20562 : IsMapEvaluation generatorImages reduction20562.relations [0,8,138,516] reduction20562.output := by lin_cert using reduction20562.terms
def image20563 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20563 : InImage map_48_252 image20563 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction20563 : Bundle := named_bundle% "RealMapCertificates/relations/basis20563.json"
theorem reductionProof20563 : EqualModuloRelations reduction20563.relations reduction20563.input reduction20563.output := by lin_cert using reduction20563.terms
theorem substitutionProof20563 : IsMapEvaluation generatorImages reduction20563.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1967] reduction20563.output := by lin_cert using reduction20563.terms
def map_48_253 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image20825 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20825 : InImage map_48_253 image20825 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20825 : Bundle := named_bundle% "RealMapCertificates/relations/basis20825.json"
theorem reductionProof20825 : EqualModuloRelations reduction20825.relations reduction20825.input reduction20825.output := by lin_cert using reduction20825.terms
theorem substitutionProof20825 : IsMapEvaluation generatorImages reduction20825.relations [8,8,8,149,206] reduction20825.output := by lin_cert using reduction20825.terms
def image20826 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20826 : InImage map_48_253 image20826 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20826 : Bundle := named_bundle% "RealMapCertificates/relations/basis20826.json"
theorem reductionProof20826 : EqualModuloRelations reduction20826.relations reduction20826.input reduction20826.output := by lin_cert using reduction20826.terms
theorem substitutionProof20826 : IsMapEvaluation generatorImages reduction20826.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1927] reduction20826.output := by lin_cert using reduction20826.terms
def map_48_254 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image21084 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21084 : InImage map_48_254 image21084 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21084 : Bundle := named_bundle% "RealMapCertificates/relations/basis21084.json"
theorem reductionProof21084 : EqualModuloRelations reduction21084.relations reduction21084.input reduction21084.output := by lin_cert using reduction21084.terms
theorem substitutionProof21084 : IsMapEvaluation generatorImages reduction21084.relations [8,16,64,491] reduction21084.output := by lin_cert using reduction21084.terms
def image21085 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21085 : InImage map_48_254 image21085 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21085 : Bundle := named_bundle% "RealMapCertificates/relations/basis21085.json"
theorem reductionProof21085 : EqualModuloRelations reduction21085.relations reduction21085.input reduction21085.output := by lin_cert using reduction21085.terms
theorem substitutionProof21085 : IsMapEvaluation generatorImages reduction21085.relations [8,8,8,8,17,17,278] reduction21085.output := by lin_cert using reduction21085.terms
def image21086 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21086 : InImage map_48_254 image21086 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21086 : Bundle := named_bundle% "RealMapCertificates/relations/basis21086.json"
theorem reductionProof21086 : EqualModuloRelations reduction21086.relations reduction21086.input reduction21086.output := by lin_cert using reduction21086.terms
theorem substitutionProof21086 : IsMapEvaluation generatorImages reduction21086.relations [8,8,8,8,8,688] reduction21086.output := by lin_cert using reduction21086.terms
def image21087 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21087 : InImage map_48_254 image21087 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21087 : Bundle := named_bundle% "RealMapCertificates/relations/basis21087.json"
theorem reductionProof21087 : EqualModuloRelations reduction21087.relations reduction21087.input reduction21087.output := by lin_cert using reduction21087.terms
theorem substitutionProof21087 : IsMapEvaluation generatorImages reduction21087.relations [8,8,8,8,8,8,8,13,194] reduction21087.output := by lin_cert using reduction21087.terms
def map_48_255 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image21436 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21436 : InImage map_48_255 image21436 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction21436 : Bundle := named_bundle% "RealMapCertificates/relations/basis21436.json"
theorem reductionProof21436 : EqualModuloRelations reduction21436.relations reduction21436.input reduction21436.output := by lin_cert using reduction21436.terms
theorem substitutionProof21436 : IsMapEvaluation generatorImages reduction21436.relations [2539] reduction21436.output := by lin_cert using reduction21436.terms
def image21437 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21437 : InImage map_48_255 image21437 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction21437 : Bundle := named_bundle% "RealMapCertificates/relations/basis21437.json"
theorem reductionProof21437 : EqualModuloRelations reduction21437.relations reduction21437.input reduction21437.output := by lin_cert using reduction21437.terms
theorem substitutionProof21437 : IsMapEvaluation generatorImages reduction21437.relations [8,64,138,138] reduction21437.output := by lin_cert using reduction21437.terms
def image21438 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21438 : InImage map_48_255 image21438 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction21438 : Bundle := named_bundle% "RealMapCertificates/relations/basis21438.json"
theorem reductionProof21438 : EqualModuloRelations reduction21438.relations reduction21438.input reduction21438.output := by lin_cert using reduction21438.terms
theorem substitutionProof21438 : IsMapEvaluation generatorImages reduction21438.relations [8,8,8,8,8,9,13,13,13,13,13,13] reduction21438.output := by lin_cert using reduction21438.terms
def image21439 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21439 : InImage map_48_255 image21439 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction21439 : Bundle := named_bundle% "RealMapCertificates/relations/basis21439.json"
theorem reductionProof21439 : EqualModuloRelations reduction21439.relations reduction21439.input reduction21439.output := by lin_cert using reduction21439.terms
theorem substitutionProof21439 : IsMapEvaluation generatorImages reduction21439.relations [8,8,8,8,8,8,8,64,72] reduction21439.output := by lin_cert using reduction21439.terms
def image21440 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21440 : InImage map_48_255 image21440 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction21440 : Bundle := named_bundle% "RealMapCertificates/relations/basis21440.json"
theorem reductionProof21440 : EqualModuloRelations reduction21440.relations reduction21440.input reduction21440.output := by lin_cert using reduction21440.terms
theorem substitutionProof21440 : IsMapEvaluation generatorImages reduction21440.relations [8,8,8,8,8,8,8,8,23,101] reduction21440.output := by lin_cert using reduction21440.terms
def image21441 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21441 : InImage map_48_255 image21441 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction21441 : Bundle := named_bundle% "RealMapCertificates/relations/basis21441.json"
theorem reductionProof21441 : EqualModuloRelations reduction21441.relations reduction21441.input reduction21441.output := by lin_cert using reduction21441.terms
theorem substitutionProof21441 : IsMapEvaluation generatorImages reduction21441.relations [0,8,16,138,260] reduction21441.output := by lin_cert using reduction21441.terms
def map_48_256 : Matrix 3 2 := fun i j => ([false,true,true,false,false,false] : List Bool)[i.val*2+j.val]!
def image21717 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation21717 : InImage map_48_256 image21717 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21717 : Bundle := named_bundle% "RealMapCertificates/relations/basis21717.json"
theorem reductionProof21717 : EqualModuloRelations reduction21717.relations reduction21717.input reduction21717.output := by lin_cert using reduction21717.terms
theorem substitutionProof21717 : IsMapEvaluation generatorImages reduction21717.relations [2580] reduction21717.output := by lin_cert using reduction21717.terms
def image21718 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation21718 : InImage map_48_256 image21718 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21718 : Bundle := named_bundle% "RealMapCertificates/relations/basis21718.json"
theorem reductionProof21718 : EqualModuloRelations reduction21718.relations reduction21718.input reduction21718.output := by lin_cert using reduction21718.terms
theorem substitutionProof21718 : IsMapEvaluation generatorImages reduction21718.relations [8,8,8,8,149,149] reduction21718.output := by lin_cert using reduction21718.terms
def map_48_257 : Matrix 2 5 := fun i j => ([false,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22036 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22036 : InImage map_48_257 image22036 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22036 : Bundle := named_bundle% "RealMapCertificates/relations/basis22036.json"
theorem reductionProof22036 : EqualModuloRelations reduction22036.relations reduction22036.input reduction22036.output := by lin_cert using reduction22036.terms
theorem substitutionProof22036 : IsMapEvaluation generatorImages reduction22036.relations [64,64,343] reduction22036.output := by lin_cert using reduction22036.terms
def image22037 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22037 : InImage map_48_257 image22037 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22037 : Bundle := named_bundle% "RealMapCertificates/relations/basis22037.json"
theorem reductionProof22037 : EqualModuloRelations reduction22037.relations reduction22037.input reduction22037.output := by lin_cert using reduction22037.terms
theorem substitutionProof22037 : IsMapEvaluation generatorImages reduction22037.relations [8,8,64,623] reduction22037.output := by lin_cert using reduction22037.terms
def image22038 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22038 : InImage map_48_257 image22038 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22038 : Bundle := named_bundle% "RealMapCertificates/relations/basis22038.json"
theorem reductionProof22038 : EqualModuloRelations reduction22038.relations reduction22038.input reduction22038.output := by lin_cert using reduction22038.terms
theorem substitutionProof22038 : IsMapEvaluation generatorImages reduction22038.relations [8,8,8,8,16,17,292] reduction22038.output := by lin_cert using reduction22038.terms
def image22039 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22039 : InImage map_48_257 image22039 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22039 : Bundle := named_bundle% "RealMapCertificates/relations/basis22039.json"
theorem reductionProof22039 : EqualModuloRelations reduction22039.relations reduction22039.input reduction22039.output := by lin_cert using reduction22039.terms
theorem substitutionProof22039 : IsMapEvaluation generatorImages reduction22039.relations [8,8,8,8,8,726] reduction22039.output := by lin_cert using reduction22039.terms
def image22040 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22040 : InImage map_48_257 image22040 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22040 : Bundle := named_bundle% "RealMapCertificates/relations/basis22040.json"
theorem reductionProof22040 : EqualModuloRelations reduction22040.relations reduction22040.input reduction22040.output := by lin_cert using reduction22040.terms
theorem substitutionProof22040 : IsMapEvaluation generatorImages reduction22040.relations [8,8,8,8,8,8,9,13,194] reduction22040.output := by lin_cert using reduction22040.terms
def map_48_258 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,true,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image22396 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22396 : InImage map_48_258 image22396 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction22396 : Bundle := named_bundle% "RealMapCertificates/relations/basis22396.json"
theorem reductionProof22396 : EqualModuloRelations reduction22396.relations reduction22396.input reduction22396.output := by lin_cert using reduction22396.terms
theorem substitutionProof22396 : IsMapEvaluation generatorImages reduction22396.relations [16,1686] reduction22396.output := by lin_cert using reduction22396.terms
def image22397 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22397 : InImage map_48_258 image22397 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction22397 : Bundle := named_bundle% "RealMapCertificates/relations/basis22397.json"
theorem reductionProof22397 : EqualModuloRelations reduction22397.relations reduction22397.input reduction22397.output := by lin_cert using reduction22397.terms
theorem substitutionProof22397 : IsMapEvaluation generatorImages reduction22397.relations [8,8,64,637] reduction22397.output := by lin_cert using reduction22397.terms
def image22398 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22398 : InImage map_48_258 image22398 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction22398 : Bundle := named_bundle% "RealMapCertificates/relations/basis22398.json"
theorem reductionProof22398 : EqualModuloRelations reduction22398.relations reduction22398.input reduction22398.output := by lin_cert using reduction22398.terms
theorem substitutionProof22398 : IsMapEvaluation generatorImages reduction22398.relations [8,8,8,8,8,13,13,13,13,13,13,13] reduction22398.output := by lin_cert using reduction22398.terms
def image22399 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22399 : InImage map_48_258 image22399 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction22399 : Bundle := named_bundle% "RealMapCertificates/relations/basis22399.json"
theorem reductionProof22399 : EqualModuloRelations reduction22399.relations reduction22399.input reduction22399.output := by lin_cert using reduction22399.terms
theorem substitutionProof22399 : IsMapEvaluation generatorImages reduction22399.relations [8,8,8,8,8,8,8,16,187] reduction22399.output := by lin_cert using reduction22399.terms
def image22400 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22400 : InImage map_48_258 image22400 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction22400 : Bundle := named_bundle% "RealMapCertificates/relations/basis22400.json"
theorem reductionProof22400 : EqualModuloRelations reduction22400.relations reduction22400.input reduction22400.output := by lin_cert using reduction22400.terms
theorem substitutionProof22400 : IsMapEvaluation generatorImages reduction22400.relations [8,8,8,8,8,8,8,9,23,101] reduction22400.output := by lin_cert using reduction22400.terms
def image22401 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22401 : InImage map_48_258 image22401 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction22401 : Bundle := named_bundle% "RealMapCertificates/relations/basis22401.json"
theorem reductionProof22401 : EqualModuloRelations reduction22401.relations reduction22401.input reduction22401.output := by lin_cert using reduction22401.terms
theorem substitutionProof22401 : IsMapEvaluation generatorImages reduction22401.relations [0,8,8,113,491] reduction22401.output := by lin_cert using reduction22401.terms
def map_48_259 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image22719 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22719 : InImage map_48_259 image22719 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22719 : Bundle := named_bundle% "RealMapCertificates/relations/basis22719.json"
theorem reductionProof22719 : EqualModuloRelations reduction22719.relations reduction22719.input reduction22719.output := by lin_cert using reduction22719.terms
theorem substitutionProof22719 : IsMapEvaluation generatorImages reduction22719.relations [245,491] reduction22719.output := by lin_cert using reduction22719.terms
def image22720 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22720 : InImage map_48_259 image22720 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22720 : Bundle := named_bundle% "RealMapCertificates/relations/basis22720.json"
theorem reductionProof22720 : EqualModuloRelations reduction22720.relations reduction22720.input reduction22720.output := by lin_cert using reduction22720.terms
theorem substitutionProof22720 : IsMapEvaluation generatorImages reduction22720.relations [8,8,8,8,149,160] reduction22720.output := by lin_cert using reduction22720.terms
def image22721 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22721 : InImage map_48_259 image22721 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22721 : Bundle := named_bundle% "RealMapCertificates/relations/basis22721.json"
theorem reductionProof22721 : EqualModuloRelations reduction22721.relations reduction22721.input reduction22721.output := by lin_cert using reduction22721.terms
theorem substitutionProof22721 : IsMapEvaluation generatorImages reduction22721.relations [0,17,1686] reduction22721.output := by lin_cert using reduction22721.terms
def map_48_260 : Matrix 2 6 := fun i j => ([false,false,false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23068 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23068 : InImage map_48_260 image23068 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23068 : Bundle := named_bundle% "RealMapCertificates/relations/basis23068.json"
theorem reductionProof23068 : EqualModuloRelations reduction23068.relations reduction23068.input reduction23068.output := by lin_cert using reduction23068.terms
theorem substitutionProof23068 : IsMapEvaluation generatorImages reduction23068.relations [8,64,64,244] reduction23068.output := by lin_cert using reduction23068.terms
def image23069 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23069 : InImage map_48_260 image23069 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23069 : Bundle := named_bundle% "RealMapCertificates/relations/basis23069.json"
theorem reductionProof23069 : EqualModuloRelations reduction23069.relations reduction23069.input reduction23069.output := by lin_cert using reduction23069.terms
theorem substitutionProof23069 : IsMapEvaluation generatorImages reduction23069.relations [8,8,8,64,491] reduction23069.output := by lin_cert using reduction23069.terms
def image23070 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23070 : InImage map_48_260 image23070 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23070 : Bundle := named_bundle% "RealMapCertificates/relations/basis23070.json"
theorem reductionProof23070 : EqualModuloRelations reduction23070.relations reduction23070.input reduction23070.output := by lin_cert using reduction23070.terms
theorem substitutionProof23070 : IsMapEvaluation generatorImages reduction23070.relations [8,8,8,8,8,17,454] reduction23070.output := by lin_cert using reduction23070.terms
def image23071 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23071 : InImage map_48_260 image23071 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23071 : Bundle := named_bundle% "RealMapCertificates/relations/basis23071.json"
theorem reductionProof23071 : EqualModuloRelations reduction23071.relations reduction23071.input reduction23071.output := by lin_cert using reduction23071.terms
theorem substitutionProof23071 : IsMapEvaluation generatorImages reduction23071.relations [8,8,8,8,8,8,573] reduction23071.output := by lin_cert using reduction23071.terms
def image23072 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23072 : InImage map_48_260 image23072 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23072 : Bundle := named_bundle% "RealMapCertificates/relations/basis23072.json"
theorem reductionProof23072 : EqualModuloRelations reduction23072.relations reduction23072.input reduction23072.output := by lin_cert using reduction23072.terms
theorem substitutionProof23072 : IsMapEvaluation generatorImages reduction23072.relations [8,8,8,8,8,8,13,13,194] reduction23072.output := by lin_cert using reduction23072.terms
def image23073 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23073 : InImage map_48_260 image23073 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23073 : Bundle := named_bundle% "RealMapCertificates/relations/basis23073.json"
theorem reductionProof23073 : EqualModuloRelations reduction23073.relations reduction23073.input reduction23073.output := by lin_cert using reduction23073.terms
theorem substitutionProof23073 : IsMapEvaluation generatorImages reduction23073.relations [0,246,491] reduction23073.output := by lin_cert using reduction23073.terms
def map_48_261 : Matrix 2 8 := fun i j => ([false,false,true,false,false,false,false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*8+j.val]!
def image23514 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation23514 : InImage map_48_261 image23514 := by lin_cert using (fun j : Fin 8 => decide (j.val = 0))
def reduction23514 : Bundle := named_bundle% "RealMapCertificates/relations/basis23514.json"
theorem reductionProof23514 : EqualModuloRelations reduction23514.relations reduction23514.input reduction23514.output := by lin_cert using reduction23514.terms
theorem substitutionProof23514 : IsMapEvaluation generatorImages reduction23514.relations [8,2091] reduction23514.output := by lin_cert using reduction23514.terms
def image23515 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23515 : InImage map_48_261 image23515 := by lin_cert using (fun j : Fin 8 => decide (j.val = 1))
def reduction23515 : Bundle := named_bundle% "RealMapCertificates/relations/basis23515.json"
theorem reductionProof23515 : EqualModuloRelations reduction23515.relations reduction23515.input reduction23515.output := by lin_cert using reduction23515.terms
theorem substitutionProof23515 : IsMapEvaluation generatorImages reduction23515.relations [8,8,64,664] reduction23515.output := by lin_cert using reduction23515.terms
def image23516 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23516 : InImage map_48_261 image23516 := by lin_cert using (fun j : Fin 8 => decide (j.val = 2))
def reduction23516 : Bundle := named_bundle% "RealMapCertificates/relations/basis23516.json"
theorem reductionProof23516 : EqualModuloRelations reduction23516.relations reduction23516.input reduction23516.output := by lin_cert using reduction23516.terms
theorem substitutionProof23516 : IsMapEvaluation generatorImages reduction23516.relations [8,8,8,8,9,13,13,13,13,13,13,13] reduction23516.output := by lin_cert using reduction23516.terms
def image23517 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23517 : InImage map_48_261 image23517 := by lin_cert using (fun j : Fin 8 => decide (j.val = 3))
def reduction23517 : Bundle := named_bundle% "RealMapCertificates/relations/basis23517.json"
theorem reductionProof23517 : EqualModuloRelations reduction23517.relations reduction23517.input reduction23517.output := by lin_cert using reduction23517.terms
theorem substitutionProof23517 : IsMapEvaluation generatorImages reduction23517.relations [8,8,8,8,8,8,8,13,23,101] reduction23517.output := by lin_cert using reduction23517.terms
def image23518 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23518 : InImage map_48_261 image23518 := by lin_cert using (fun j : Fin 8 => decide (j.val = 4))
def reduction23518 : Bundle := named_bundle% "RealMapCertificates/relations/basis23518.json"
theorem reductionProof23518 : EqualModuloRelations reduction23518.relations reduction23518.input reduction23518.output := by lin_cert using reduction23518.terms
theorem substitutionProof23518 : IsMapEvaluation generatorImages reduction23518.relations [8,8,8,8,8,8,8,8,254] reduction23518.output := by lin_cert using reduction23518.terms
def image23519 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23519 : InImage map_48_261 image23519 := by lin_cert using (fun j : Fin 8 => decide (j.val = 5))
def reduction23519 : Bundle := named_bundle% "RealMapCertificates/relations/basis23519.json"
theorem reductionProof23519 : EqualModuloRelations reduction23519.relations reduction23519.input reduction23519.output := by lin_cert using reduction23519.terms
theorem substitutionProof23519 : IsMapEvaluation generatorImages reduction23519.relations [1,246,491] reduction23519.output := by lin_cert using reduction23519.terms
def image23520 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23520 : InImage map_48_261 image23520 := by lin_cert using (fun j : Fin 8 => decide (j.val = 6))
def reduction23520 : Bundle := named_bundle% "RealMapCertificates/relations/basis23520.json"
theorem reductionProof23520 : EqualModuloRelations reduction23520.relations reduction23520.input reduction23520.output := by lin_cert using reduction23520.terms
theorem substitutionProof23520 : IsMapEvaluation generatorImages reduction23520.relations [0,8,8,8,138,260] reduction23520.output := by lin_cert using reduction23520.terms
def image23521 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23521 : InImage map_48_261 image23521 := by lin_cert using (fun j : Fin 8 => decide (j.val = 7))
def reduction23521 : Bundle := named_bundle% "RealMapCertificates/relations/basis23521.json"
theorem reductionProof23521 : EqualModuloRelations reduction23521.relations reduction23521.input reduction23521.output := by lin_cert using reduction23521.terms
theorem substitutionProof23521 : IsMapEvaluation generatorImages reduction23521.relations [0,0,2739] reduction23521.output := by lin_cert using reduction23521.terms
def map_49_49 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image250 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation250 : InImage map_49_49 image250 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction250 : Bundle := named_bundle% "RealMapCertificates/relations/basis250.json"
theorem reductionProof250 : EqualModuloRelations reduction250.relations reduction250.input reduction250.output := by lin_cert using reduction250.terms
theorem substitutionProof250 : IsMapEvaluation generatorImages reduction250.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction250.output := by lin_cert using reduction250.terms
def map_49_146 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3602 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3602 : InImage map_49_146 image3602 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3602 : Bundle := named_bundle% "RealMapCertificates/relations/basis3602.json"
theorem reductionProof3602 : EqualModuloRelations reduction3602.relations reduction3602.input reduction3602.output := by lin_cert using reduction3602.terms
theorem substitutionProof3602 : IsMapEvaluation generatorImages reduction3602.relations [515] reduction3602.output := by lin_cert using reduction3602.terms
def map_49_148 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3796 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3796 : InImage map_49_148 image3796 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3796 : Bundle := named_bundle% "RealMapCertificates/relations/basis3796.json"
theorem reductionProof3796 : EqualModuloRelations reduction3796.relations reduction3796.input reduction3796.output := by lin_cert using reduction3796.terms
theorem substitutionProof3796 : IsMapEvaluation generatorImages reduction3796.relations [536] reduction3796.output := by lin_cert using reduction3796.terms
def map_49_151 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4073 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4073 : InImage map_49_151 image4073 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4073 : Bundle := named_bundle% "RealMapCertificates/relations/basis4073.json"
theorem reductionProof4073 : EqualModuloRelations reduction4073.relations reduction4073.input reduction4073.output := by lin_cert using reduction4073.terms
theorem substitutionProof4073 : IsMapEvaluation generatorImages reduction4073.relations [0,553] reduction4073.output := by lin_cert using reduction4073.terms
def map_49_152 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image4144 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4144 : InImage map_49_152 image4144 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4144 : Bundle := named_bundle% "RealMapCertificates/relations/basis4144.json"
theorem reductionProof4144 : EqualModuloRelations reduction4144.relations reduction4144.input reduction4144.output := by lin_cert using reduction4144.terms
theorem substitutionProof4144 : IsMapEvaluation generatorImages reduction4144.relations [1,553] reduction4144.output := by lin_cert using reduction4144.terms
def image4145 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4145 : InImage map_49_152 image4145 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4145 : Bundle := named_bundle% "RealMapCertificates/relations/basis4145.json"
theorem reductionProof4145 : EqualModuloRelations reduction4145.relations reduction4145.input reduction4145.output := by lin_cert using reduction4145.terms
theorem substitutionProof4145 : IsMapEvaluation generatorImages reduction4145.relations [0,0,554] reduction4145.output := by lin_cert using reduction4145.terms
def map_49_154 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4325 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4325 : InImage map_49_154 image4325 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4325 : Bundle := named_bundle% "RealMapCertificates/relations/basis4325.json"
theorem reductionProof4325 : EqualModuloRelations reduction4325.relations reduction4325.input reduction4325.output := by lin_cert using reduction4325.terms
theorem substitutionProof4325 : IsMapEvaluation generatorImages reduction4325.relations [0,578] reduction4325.output := by lin_cert using reduction4325.terms
def map_49_155 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4400 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4400 : InImage map_49_155 image4400 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4400 : Bundle := named_bundle% "RealMapCertificates/relations/basis4400.json"
theorem reductionProof4400 : EqualModuloRelations reduction4400.relations reduction4400.input reduction4400.output := by lin_cert using reduction4400.terms
theorem substitutionProof4400 : IsMapEvaluation generatorImages reduction4400.relations [0,0,579] reduction4400.output := by lin_cert using reduction4400.terms
def map_49_157 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4588 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation4588 : InImage map_49_157 image4588 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4588 : Bundle := named_bundle% "RealMapCertificates/relations/basis4588.json"
theorem reductionProof4588 : EqualModuloRelations reduction4588.relations reduction4588.input reduction4588.output := by lin_cert using reduction4588.terms
theorem substitutionProof4588 : IsMapEvaluation generatorImages reduction4588.relations [0,8,431] reduction4588.output := by lin_cert using reduction4588.terms
def map_49_158 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4661 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4661 : InImage map_49_158 image4661 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4661 : Bundle := named_bundle% "RealMapCertificates/relations/basis4661.json"
theorem reductionProof4661 : EqualModuloRelations reduction4661.relations reduction4661.input reduction4661.output := by lin_cert using reduction4661.terms
theorem substitutionProof4661 : IsMapEvaluation generatorImages reduction4661.relations [0,0,16,296] reduction4661.output := by lin_cert using reduction4661.terms
def map_49_159 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4740 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4740 : InImage map_49_159 image4740 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4740 : Bundle := named_bundle% "RealMapCertificates/relations/basis4740.json"
theorem reductionProof4740 : EqualModuloRelations reduction4740.relations reduction4740.input reduction4740.output := by lin_cert using reduction4740.terms
theorem substitutionProof4740 : IsMapEvaluation generatorImages reduction4740.relations [0,0,0,17,296] reduction4740.output := by lin_cert using reduction4740.terms
def map_49_160 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4842 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4842 : InImage map_49_160 image4842 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4842 : Bundle := named_bundle% "RealMapCertificates/relations/basis4842.json"
theorem reductionProof4842 : EqualModuloRelations reduction4842.relations reduction4842.input reduction4842.output := by lin_cert using reduction4842.terms
theorem substitutionProof4842 : IsMapEvaluation generatorImages reduction4842.relations [0,8,469] reduction4842.output := by lin_cert using reduction4842.terms
def image4843 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4843 : InImage map_49_160 image4843 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4843 : Bundle := named_bundle% "RealMapCertificates/relations/basis4843.json"
theorem reductionProof4843 : EqualModuloRelations reduction4843.relations reduction4843.input reduction4843.output := by lin_cert using reduction4843.terms
theorem substitutionProof4843 : IsMapEvaluation generatorImages reduction4843.relations [0,0,0,0,606] reduction4843.output := by lin_cert using reduction4843.terms
def map_49_161 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image4923 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation4923 : InImage map_49_161 image4923 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4923 : Bundle := named_bundle% "RealMapCertificates/relations/basis4923.json"
theorem reductionProof4923 : EqualModuloRelations reduction4923.relations reduction4923.input reduction4923.output := by lin_cert using reduction4923.terms
theorem substitutionProof4923 : IsMapEvaluation generatorImages reduction4923.relations [0,0,8,470] reduction4923.output := by lin_cert using reduction4923.terms
def map_49_163 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5135 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5135 : InImage map_49_163 image5135 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5135 : Bundle := named_bundle% "RealMapCertificates/relations/basis5135.json"
theorem reductionProof5135 : EqualModuloRelations reduction5135.relations reduction5135.input reduction5135.output := by lin_cert using reduction5135.terms
theorem substitutionProof5135 : IsMapEvaluation generatorImages reduction5135.relations [0,8,8,295] reduction5135.output := by lin_cert using reduction5135.terms
def map_49_164 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5211 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5211 : InImage map_49_164 image5211 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5211 : Bundle := named_bundle% "RealMapCertificates/relations/basis5211.json"
theorem reductionProof5211 : EqualModuloRelations reduction5211.relations reduction5211.input reduction5211.output := by lin_cert using reduction5211.terms
theorem substitutionProof5211 : IsMapEvaluation generatorImages reduction5211.relations [0,0,8,8,296] reduction5211.output := by lin_cert using reduction5211.terms
def map_49_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5436 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5436 : InImage map_49_166 image5436 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5436 : Bundle := named_bundle% "RealMapCertificates/relations/basis5436.json"
theorem reductionProof5436 : EqualModuloRelations reduction5436.relations reduction5436.input reduction5436.output := by lin_cert using reduction5436.terms
theorem substitutionProof5436 : IsMapEvaluation generatorImages reduction5436.relations [0,0,0,0,0,0,0,635] reduction5436.output := by lin_cert using reduction5436.terms
def map_49_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5536 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5536 : InImage map_49_167 image5536 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5536 : Bundle := named_bundle% "RealMapCertificates/relations/basis5536.json"
theorem reductionProof5536 : EqualModuloRelations reduction5536.relations reduction5536.input reduction5536.output := by lin_cert using reduction5536.terms
theorem substitutionProof5536 : IsMapEvaluation generatorImages reduction5536.relations [0,0,0,0,0,0,0,0,636] reduction5536.output := by lin_cert using reduction5536.terms
def map_49_168 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5628 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5628 : InImage map_49_168 image5628 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5628 : Bundle := named_bundle% "RealMapCertificates/relations/basis5628.json"
theorem reductionProof5628 : EqualModuloRelations reduction5628.relations reduction5628.input reduction5628.output := by lin_cert using reduction5628.terms
theorem substitutionProof5628 : IsMapEvaluation generatorImages reduction5628.relations [736] reduction5628.output := by lin_cert using reduction5628.terms
def map_49_171 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5974 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5974 : InImage map_49_171 image5974 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5974 : Bundle := named_bundle% "RealMapCertificates/relations/basis5974.json"
theorem reductionProof5974 : EqualModuloRelations reduction5974.relations reduction5974.input reduction5974.output := by lin_cert using reduction5974.terms
theorem substitutionProof5974 : IsMapEvaluation generatorImages reduction5974.relations [777] reduction5974.output := by lin_cert using reduction5974.terms
def map_49_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6296 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6296 : InImage map_49_174 image6296 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6296 : Bundle := named_bundle% "RealMapCertificates/relations/basis6296.json"
theorem reductionProof6296 : EqualModuloRelations reduction6296.relations reduction6296.input reduction6296.output := by lin_cert using reduction6296.terms
theorem substitutionProof6296 : IsMapEvaluation generatorImages reduction6296.relations [8,607] reduction6296.output := by lin_cert using reduction6296.terms
def map_49_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6445 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6445 : InImage map_49_175 image6445 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6445 : Bundle := named_bundle% "RealMapCertificates/relations/basis6445.json"
theorem reductionProof6445 : EqualModuloRelations reduction6445.relations reduction6445.input reduction6445.output := by lin_cert using reduction6445.terms
theorem substitutionProof6445 : IsMapEvaluation generatorImages reduction6445.relations [0,0,0,0,0,0,0,0,0,0,0,686] reduction6445.output := by lin_cert using reduction6445.terms
def map_49_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6535 : InImage map_49_176 image6535 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6535 : Bundle := named_bundle% "RealMapCertificates/relations/basis6535.json"
theorem reductionProof6535 : EqualModuloRelations reduction6535.relations reduction6535.input reduction6535.output := by lin_cert using reduction6535.terms
theorem substitutionProof6535 : IsMapEvaluation generatorImages reduction6535.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6535.output := by lin_cert using reduction6535.terms
def map_49_177 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image6656 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6656 : InImage map_49_177 image6656 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6656 : Bundle := named_bundle% "RealMapCertificates/relations/basis6656.json"
theorem reductionProof6656 : EqualModuloRelations reduction6656.relations reduction6656.input reduction6656.output := by lin_cert using reduction6656.terms
theorem substitutionProof6656 : IsMapEvaluation generatorImages reduction6656.relations [8,634] reduction6656.output := by lin_cert using reduction6656.terms
def image6657 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6657 : InImage map_49_177 image6657 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6657 : Bundle := named_bundle% "RealMapCertificates/relations/basis6657.json"
theorem reductionProof6657 : EqualModuloRelations reduction6657.relations reduction6657.input reduction6657.output := by lin_cert using reduction6657.terms
theorem substitutionProof6657 : IsMapEvaluation generatorImages reduction6657.relations [0,0,0,805] reduction6657.output := by lin_cert using reduction6657.terms
def map_49_180 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7014 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7014 : InImage map_49_180 image7014 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7014 : Bundle := named_bundle% "RealMapCertificates/relations/basis7014.json"
theorem reductionProof7014 : EqualModuloRelations reduction7014.relations reduction7014.input reduction7014.output := by lin_cert using reduction7014.terms
theorem substitutionProof7014 : IsMapEvaluation generatorImages reduction7014.relations [8,8,498] reduction7014.output := by lin_cert using reduction7014.terms
def map_49_183 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image7379 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7379 : InImage map_49_183 image7379 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7379 : Bundle := named_bundle% "RealMapCertificates/relations/basis7379.json"
theorem reductionProof7379 : EqualModuloRelations reduction7379.relations reduction7379.input reduction7379.output := by lin_cert using reduction7379.terms
theorem substitutionProof7379 : IsMapEvaluation generatorImages reduction7379.relations [917] reduction7379.output := by lin_cert using reduction7379.terms
def image7380 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7380 : InImage map_49_183 image7380 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7380 : Bundle := named_bundle% "RealMapCertificates/relations/basis7380.json"
theorem reductionProof7380 : EqualModuloRelations reduction7380.relations reduction7380.input reduction7380.output := by lin_cert using reduction7380.terms
theorem substitutionProof7380 : IsMapEvaluation generatorImages reduction7380.relations [8,8,528] reduction7380.output := by lin_cert using reduction7380.terms
def map_49_186 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image7740 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation7740 : InImage map_49_186 image7740 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7740 : Bundle := named_bundle% "RealMapCertificates/relations/basis7740.json"
theorem reductionProof7740 : EqualModuloRelations reduction7740.relations reduction7740.input reduction7740.output := by lin_cert using reduction7740.terms
theorem substitutionProof7740 : IsMapEvaluation generatorImages reduction7740.relations [953] reduction7740.output := by lin_cert using reduction7740.terms
def image7741 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7741 : InImage map_49_186 image7741 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7741 : Bundle := named_bundle% "RealMapCertificates/relations/basis7741.json"
theorem reductionProof7741 : EqualModuloRelations reduction7741.relations reduction7741.input reduction7741.output := by lin_cert using reduction7741.terms
theorem substitutionProof7741 : IsMapEvaluation generatorImages reduction7741.relations [8,8,8,354] reduction7741.output := by lin_cert using reduction7741.terms
def map_49_189 : Matrix 5 3 := fun i j => ([false,true,false,true,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image8091 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation8091 : InImage map_49_189 image8091 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8091 : Bundle := named_bundle% "RealMapCertificates/relations/basis8091.json"
theorem reductionProof8091 : EqualModuloRelations reduction8091.relations reduction8091.input reduction8091.output := by lin_cert using reduction8091.terms
theorem substitutionProof8091 : IsMapEvaluation generatorImages reduction8091.relations [16,636] reduction8091.output := by lin_cert using reduction8091.terms
def image8092 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8092 : InImage map_49_189 image8092 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8092 : Bundle := named_bundle% "RealMapCertificates/relations/basis8092.json"
theorem reductionProof8092 : EqualModuloRelations reduction8092.relations reduction8092.input reduction8092.output := by lin_cert using reduction8092.terms
theorem substitutionProof8092 : IsMapEvaluation generatorImages reduction8092.relations [8,8,8,401] reduction8092.output := by lin_cert using reduction8092.terms
def image8093 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation8093 : InImage map_49_189 image8093 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8093 : Bundle := named_bundle% "RealMapCertificates/relations/basis8093.json"
theorem reductionProof8093 : EqualModuloRelations reduction8093.relations reduction8093.input reduction8093.output := by lin_cert using reduction8093.terms
theorem substitutionProof8093 : IsMapEvaluation generatorImages reduction8093.relations [0,969] reduction8093.output := by lin_cert using reduction8093.terms
def map_49_190 : Matrix 1 2 := fun i j => ([true,true] : List Bool)[i.val*2+j.val]!
def image8228 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8228 : InImage map_49_190 image8228 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8228 : Bundle := named_bundle% "RealMapCertificates/relations/basis8228.json"
theorem reductionProof8228 : EqualModuloRelations reduction8228.relations reduction8228.input reduction8228.output := by lin_cert using reduction8228.terms
theorem substitutionProof8228 : IsMapEvaluation generatorImages reduction8228.relations [1,969] reduction8228.output := by lin_cert using reduction8228.terms
def image8229 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8229 : InImage map_49_190 image8229 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8229 : Bundle := named_bundle% "RealMapCertificates/relations/basis8229.json"
theorem reductionProof8229 : EqualModuloRelations reduction8229.relations reduction8229.input reduction8229.output := by lin_cert using reduction8229.terms
theorem substitutionProof8229 : IsMapEvaluation generatorImages reduction8229.relations [0,17,636] reduction8229.output := by lin_cert using reduction8229.terms
def map_49_192 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8462 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8462 : InImage map_49_192 image8462 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8462 : Bundle := named_bundle% "RealMapCertificates/relations/basis8462.json"
theorem reductionProof8462 : EqualModuloRelations reduction8462.relations reduction8462.input reduction8462.output := by lin_cert using reduction8462.terms
theorem substitutionProof8462 : IsMapEvaluation generatorImages reduction8462.relations [8,806] reduction8462.output := by lin_cert using reduction8462.terms
def image8463 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8463 : InImage map_49_192 image8463 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8463 : Bundle := named_bundle% "RealMapCertificates/relations/basis8463.json"
theorem reductionProof8463 : EqualModuloRelations reduction8463.relations reduction8463.input reduction8463.output := by lin_cert using reduction8463.terms
theorem substitutionProof8463 : IsMapEvaluation generatorImages reduction8463.relations [8,8,8,8,265] reduction8463.output := by lin_cert using reduction8463.terms
def image8464 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8464 : InImage map_49_192 image8464 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8464 : Bundle := named_bundle% "RealMapCertificates/relations/basis8464.json"
theorem reductionProof8464 : EqualModuloRelations reduction8464.relations reduction8464.input reduction8464.output := by lin_cert using reduction8464.terms
theorem substitutionProof8464 : IsMapEvaluation generatorImages reduction8464.relations [0,1030] reduction8464.output := by lin_cert using reduction8464.terms
def map_49_193 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image8611 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation8611 : InImage map_49_193 image8611 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8611 : Bundle := named_bundle% "RealMapCertificates/relations/basis8611.json"
theorem reductionProof8611 : EqualModuloRelations reduction8611.relations reduction8611.input reduction8611.output := by lin_cert using reduction8611.terms
theorem substitutionProof8611 : IsMapEvaluation generatorImages reduction8611.relations [0,17,663] reduction8611.output := by lin_cert using reduction8611.terms
def map_49_195 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image8861 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation8861 : InImage map_49_195 image8861 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8861 : Bundle := named_bundle% "RealMapCertificates/relations/basis8861.json"
theorem reductionProof8861 : EqualModuloRelations reduction8861.relations reduction8861.input reduction8861.output := by lin_cert using reduction8861.terms
theorem substitutionProof8861 : IsMapEvaluation generatorImages reduction8861.relations [8,8,636] reduction8861.output := by lin_cert using reduction8861.terms
def image8862 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8862 : InImage map_49_195 image8862 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8862 : Bundle := named_bundle% "RealMapCertificates/relations/basis8862.json"
theorem reductionProof8862 : EqualModuloRelations reduction8862.relations reduction8862.input reduction8862.output := by lin_cert using reduction8862.terms
theorem substitutionProof8862 : IsMapEvaluation generatorImages reduction8862.relations [8,8,8,8,283] reduction8862.output := by lin_cert using reduction8862.terms
def image8863 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation8863 : InImage map_49_195 image8863 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8863 : Bundle := named_bundle% "RealMapCertificates/relations/basis8863.json"
theorem reductionProof8863 : EqualModuloRelations reduction8863.relations reduction8863.input reduction8863.output := by lin_cert using reduction8863.terms
theorem substitutionProof8863 : IsMapEvaluation generatorImages reduction8863.relations [0,16,685] reduction8863.output := by lin_cert using reduction8863.terms
def map_49_196 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9013 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9013 : InImage map_49_196 image9013 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9013 : Bundle := named_bundle% "RealMapCertificates/relations/basis9013.json"
theorem reductionProof9013 : EqualModuloRelations reduction9013.relations reduction9013.input reduction9013.output := by lin_cert using reduction9013.terms
theorem substitutionProof9013 : IsMapEvaluation generatorImages reduction9013.relations [0,16,17,403] reduction9013.output := by lin_cert using reduction9013.terms
def image9014 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9014 : InImage map_49_196 image9014 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9014 : Bundle := named_bundle% "RealMapCertificates/relations/basis9014.json"
theorem reductionProof9014 : EqualModuloRelations reduction9014.relations reduction9014.input reduction9014.output := by lin_cert using reduction9014.terms
theorem substitutionProof9014 : IsMapEvaluation generatorImages reduction9014.relations [0,0,17,685] reduction9014.output := by lin_cert using reduction9014.terms
def map_49_197 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image9136 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9136 : InImage map_49_197 image9136 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9136 : Bundle := named_bundle% "RealMapCertificates/relations/basis9136.json"
theorem reductionProof9136 : EqualModuloRelations reduction9136.relations reduction9136.input reduction9136.output := by lin_cert using reduction9136.terms
theorem substitutionProof9136 : IsMapEvaluation generatorImages reduction9136.relations [0,0,17,17,403] reduction9136.output := by lin_cert using reduction9136.terms
def map_49_198 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image9301 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9301 : InImage map_49_198 image9301 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9301 : Bundle := named_bundle% "RealMapCertificates/relations/basis9301.json"
theorem reductionProof9301 : EqualModuloRelations reduction9301.relations reduction9301.input reduction9301.output := by lin_cert using reduction9301.terms
theorem substitutionProof9301 : IsMapEvaluation generatorImages reduction9301.relations [8,8,663] reduction9301.output := by lin_cert using reduction9301.terms
def image9302 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9302 : InImage map_49_198 image9302 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9302 : Bundle := named_bundle% "RealMapCertificates/relations/basis9302.json"
theorem reductionProof9302 : EqualModuloRelations reduction9302.relations reduction9302.input reduction9302.output := by lin_cert using reduction9302.terms
theorem substitutionProof9302 : IsMapEvaluation generatorImages reduction9302.relations [8,8,8,8,8,211] reduction9302.output := by lin_cert using reduction9302.terms
def image9303 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9303 : InImage map_49_198 image9303 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9303 : Bundle := named_bundle% "RealMapCertificates/relations/basis9303.json"
theorem reductionProof9303 : EqualModuloRelations reduction9303.relations reduction9303.input reduction9303.output := by lin_cert using reduction9303.terms
theorem substitutionProof9303 : IsMapEvaluation generatorImages reduction9303.relations [0,0,0,0,0,0,0,1033] reduction9303.output := by lin_cert using reduction9303.terms
def map_49_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9481 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9481 : InImage map_49_199 image9481 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9481 : Bundle := named_bundle% "RealMapCertificates/relations/basis9481.json"
theorem reductionProof9481 : EqualModuloRelations reduction9481.relations reduction9481.input reduction9481.output := by lin_cert using reduction9481.terms
theorem substitutionProof9481 : IsMapEvaluation generatorImages reduction9481.relations [0,8,17,556] reduction9481.output := by lin_cert using reduction9481.terms
def image9482 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9482 : InImage map_49_199 image9482 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9482 : Bundle := named_bundle% "RealMapCertificates/relations/basis9482.json"
theorem reductionProof9482 : EqualModuloRelations reduction9482.relations reduction9482.input reduction9482.output := by lin_cert using reduction9482.terms
theorem substitutionProof9482 : IsMapEvaluation generatorImages reduction9482.relations [0,0,0,0,0,0,1059] reduction9482.output := by lin_cert using reduction9482.terms
def map_49_200 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9600 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9600 : InImage map_49_200 image9600 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9600 : Bundle := named_bundle% "RealMapCertificates/relations/basis9600.json"
theorem reductionProof9600 : EqualModuloRelations reduction9600.relations reduction9600.input reduction9600.output := by lin_cert using reduction9600.terms
theorem substitutionProof9600 : IsMapEvaluation generatorImages reduction9600.relations [1179] reduction9600.output := by lin_cert using reduction9600.terms
def map_49_201 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9790 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9790 : InImage map_49_201 image9790 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9790 : Bundle := named_bundle% "RealMapCertificates/relations/basis9790.json"
theorem reductionProof9790 : EqualModuloRelations reduction9790.relations reduction9790.input reduction9790.output := by lin_cert using reduction9790.terms
theorem substitutionProof9790 : IsMapEvaluation generatorImages reduction9790.relations [8,8,16,403] reduction9790.output := by lin_cert using reduction9790.terms
def image9791 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9791 : InImage map_49_201 image9791 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9791 : Bundle := named_bundle% "RealMapCertificates/relations/basis9791.json"
theorem reductionProof9791 : EqualModuloRelations reduction9791.relations reduction9791.input reduction9791.output := by lin_cert using reduction9791.terms
theorem substitutionProof9791 : IsMapEvaluation generatorImages reduction9791.relations [8,8,8,8,8,223] reduction9791.output := by lin_cert using reduction9791.terms
end RealMapCertificates
