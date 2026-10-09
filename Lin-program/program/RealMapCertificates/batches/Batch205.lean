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
  | 88 => [[4,4,5,5,7]]
  | 100 => [[4,4,5,7,7]]
  | 113 => [[0,8,12]]
  | 118 => [[0,9,12]]
  | 125 => [[4,4,4,5,5,7]]
  | 136 => [[4,4,4,5,7,7]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 185 => [[0,4,4,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 257 => [[4,4,6,8,12]]
  | 259 => [[4,5,7,7,12]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 315 => [[4,4,5,5,7,12]]
  | 345 => [[4,4,5,7,7,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 453 => [[4,4,4,5,5,7,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 490 => [[4,4,4,5,7,7,12]]
  | 491 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 752 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 809 => []
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 873 => [[4,4,4,4,4,4,5,7,7,12]]
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 1032 => [[4,4,4,4,4,4,4,5,7,7,12]]
  | 1033 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1144 => [[0,0,4,4,4,4,5,8,12,12]]
  | 1241 => [[4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1301 => []
  | 1363 => [[0,0,4,4,4,4,4,5,8,12,12]]
  | 1566 => []
  | 1589 => []
  | 1590 => [[0,0,4,4,4,4,4,4,5,8,12,12]]
  | 1591 => []
  | 1619 => []
  | 1650 => []
  | 1651 => [[4,4,4,4,4,7,7,7,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1750 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1925 => [[4,4,4,4,4,4,7,7,7,12,12]]
  | 2037 => [[4,4,4,4,4,5,5,5,9,12,12]]
  | _ => []
def map_49_203 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10094 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10094 : InImage map_49_203 image10094 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10094 : Bundle := named_bundle% "RealMapCertificates/relations/basis10094.json"
theorem reductionProof10094 : EqualModuloRelations reduction10094.relations reduction10094.input reduction10094.output := by lin_cert using reduction10094.terms
theorem substitutionProof10094 : IsMapEvaluation generatorImages reduction10094.relations [1241] reduction10094.output := by lin_cert using reduction10094.terms
def image10095 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10095 : InImage map_49_203 image10095 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10095 : Bundle := named_bundle% "RealMapCertificates/relations/basis10095.json"
theorem reductionProof10095 : EqualModuloRelations reduction10095.relations reduction10095.input reduction10095.output := by lin_cert using reduction10095.terms
theorem substitutionProof10095 : IsMapEvaluation generatorImages reduction10095.relations [0,0,0,0,0,64,402] reduction10095.output := by lin_cert using reduction10095.terms
def map_49_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10284 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10284 : InImage map_49_204 image10284 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10284 : Bundle := named_bundle% "RealMapCertificates/relations/basis10284.json"
theorem reductionProof10284 : EqualModuloRelations reduction10284.relations reduction10284.input reduction10284.output := by lin_cert using reduction10284.terms
theorem substitutionProof10284 : IsMapEvaluation generatorImages reduction10284.relations [8,8,8,556] reduction10284.output := by lin_cert using reduction10284.terms
def image10285 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10285 : InImage map_49_204 image10285 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10285 : Bundle := named_bundle% "RealMapCertificates/relations/basis10285.json"
theorem reductionProof10285 : EqualModuloRelations reduction10285.relations reduction10285.input reduction10285.output := by lin_cert using reduction10285.terms
theorem substitutionProof10285 : IsMapEvaluation generatorImages reduction10285.relations [8,8,8,8,8,8,161] reduction10285.output := by lin_cert using reduction10285.terms
def image10286 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10286 : InImage map_49_204 image10286 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10286 : Bundle := named_bundle% "RealMapCertificates/relations/basis10286.json"
theorem reductionProof10286 : EqualModuloRelations reduction10286.relations reduction10286.input reduction10286.output := by lin_cert using reduction10286.terms
theorem substitutionProof10286 : IsMapEvaluation generatorImages reduction10286.relations [0,0,0,0,0,0,64,403] reduction10286.output := by lin_cert using reduction10286.terms
def map_49_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10620 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10620 : InImage map_49_206 image10620 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10620 : Bundle := named_bundle% "RealMapCertificates/relations/basis10620.json"
theorem reductionProof10620 : EqualModuloRelations reduction10620.relations reduction10620.input reduction10620.output := by lin_cert using reduction10620.terms
theorem substitutionProof10620 : IsMapEvaluation generatorImages reduction10620.relations [8,970] reduction10620.output := by lin_cert using reduction10620.terms
def map_49_207 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image10834 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10834 : InImage map_49_207 image10834 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10834 : Bundle := named_bundle% "RealMapCertificates/relations/basis10834.json"
theorem reductionProof10834 : EqualModuloRelations reduction10834.relations reduction10834.input reduction10834.output := by lin_cert using reduction10834.terms
theorem substitutionProof10834 : IsMapEvaluation generatorImages reduction10834.relations [8,8,8,8,403] reduction10834.output := by lin_cert using reduction10834.terms
def image10835 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10835 : InImage map_49_207 image10835 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10835 : Bundle := named_bundle% "RealMapCertificates/relations/basis10835.json"
theorem reductionProof10835 : EqualModuloRelations reduction10835.relations reduction10835.input reduction10835.output := by lin_cert using reduction10835.terms
theorem substitutionProof10835 : IsMapEvaluation generatorImages reduction10835.relations [8,8,8,8,8,8,171] reduction10835.output := by lin_cert using reduction10835.terms
def map_49_209 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11150 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11150 : InImage map_49_209 image11150 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11150 : Bundle := named_bundle% "RealMapCertificates/relations/basis11150.json"
theorem reductionProof11150 : EqualModuloRelations reduction11150.relations reduction11150.input reduction11150.output := by lin_cert using reduction11150.terms
theorem substitutionProof11150 : IsMapEvaluation generatorImages reduction11150.relations [8,1032] reduction11150.output := by lin_cert using reduction11150.terms
def image11151 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11151 : InImage map_49_209 image11151 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11151 : Bundle := named_bundle% "RealMapCertificates/relations/basis11151.json"
theorem reductionProof11151 : EqualModuloRelations reduction11151.relations reduction11151.input reduction11151.output := by lin_cert using reduction11151.terms
theorem substitutionProof11151 : IsMapEvaluation generatorImages reduction11151.relations [0,0,0,1301] reduction11151.output := by lin_cert using reduction11151.terms
def map_49_210 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image11342 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11342 : InImage map_49_210 image11342 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11342 : Bundle := named_bundle% "RealMapCertificates/relations/basis11342.json"
theorem reductionProof11342 : EqualModuloRelations reduction11342.relations reduction11342.input reduction11342.output := by lin_cert using reduction11342.terms
theorem substitutionProof11342 : IsMapEvaluation generatorImages reduction11342.relations [8,8,8,8,433] reduction11342.output := by lin_cert using reduction11342.terms
def image11343 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11343 : InImage map_49_210 image11343 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11343 : Bundle := named_bundle% "RealMapCertificates/relations/basis11343.json"
theorem reductionProof11343 : EqualModuloRelations reduction11343.relations reduction11343.input reduction11343.output := by lin_cert using reduction11343.terms
theorem substitutionProof11343 : IsMapEvaluation generatorImages reduction11343.relations [8,8,8,8,8,8,8,125] reduction11343.output := by lin_cert using reduction11343.terms
def map_49_212 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image11682 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11682 : InImage map_49_212 image11682 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11682 : Bundle := named_bundle% "RealMapCertificates/relations/basis11682.json"
theorem reductionProof11682 : EqualModuloRelations reduction11682.relations reduction11682.input reduction11682.output := by lin_cert using reduction11682.terms
theorem substitutionProof11682 : IsMapEvaluation generatorImages reduction11682.relations [8,8,829] reduction11682.output := by lin_cert using reduction11682.terms
def image11683 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11683 : InImage map_49_212 image11683 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11683 : Bundle := named_bundle% "RealMapCertificates/relations/basis11683.json"
theorem reductionProof11683 : EqualModuloRelations reduction11683.relations reduction11683.input reduction11683.output := by lin_cert using reduction11683.terms
theorem substitutionProof11683 : IsMapEvaluation generatorImages reduction11683.relations [5,64,402] reduction11683.output := by lin_cert using reduction11683.terms
def map_49_213 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11920 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11920 : InImage map_49_213 image11920 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11920 : Bundle := named_bundle% "RealMapCertificates/relations/basis11920.json"
theorem reductionProof11920 : EqualModuloRelations reduction11920.relations reduction11920.input reduction11920.output := by lin_cert using reduction11920.terms
theorem substitutionProof11920 : IsMapEvaluation generatorImages reduction11920.relations [8,8,8,8,16,225] reduction11920.output := by lin_cert using reduction11920.terms
def image11921 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11921 : InImage map_49_213 image11921 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11921 : Bundle := named_bundle% "RealMapCertificates/relations/basis11921.json"
theorem reductionProof11921 : EqualModuloRelations reduction11921.relations reduction11921.input reduction11921.output := by lin_cert using reduction11921.terms
theorem substitutionProof11921 : IsMapEvaluation generatorImages reduction11921.relations [8,8,8,8,8,8,8,136] reduction11921.output := by lin_cert using reduction11921.terms
def map_49_214 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12122 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12122 : InImage map_49_214 image12122 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12122 : Bundle := named_bundle% "RealMapCertificates/relations/basis12122.json"
theorem reductionProof12122 : EqualModuloRelations reduction12122.relations reduction12122.input reduction12122.output := by lin_cert using reduction12122.terms
theorem substitutionProof12122 : IsMapEvaluation generatorImages reduction12122.relations [0,64,555] reduction12122.output := by lin_cert using reduction12122.terms
def map_49_215 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image12287 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12287 : InImage map_49_215 image12287 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12287 : Bundle := named_bundle% "RealMapCertificates/relations/basis12287.json"
theorem reductionProof12287 : EqualModuloRelations reduction12287.relations reduction12287.input reduction12287.output := by lin_cert using reduction12287.terms
theorem substitutionProof12287 : IsMapEvaluation generatorImages reduction12287.relations [8,8,873] reduction12287.output := by lin_cert using reduction12287.terms
def image12288 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12288 : InImage map_49_215 image12288 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12288 : Bundle := named_bundle% "RealMapCertificates/relations/basis12288.json"
theorem reductionProof12288 : EqualModuloRelations reduction12288.relations reduction12288.input reduction12288.output := by lin_cert using reduction12288.terms
theorem substitutionProof12288 : IsMapEvaluation generatorImages reduction12288.relations [0,0,64,556] reduction12288.output := by lin_cert using reduction12288.terms
def map_49_216 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image12487 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12487 : InImage map_49_216 image12487 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12487 : Bundle := named_bundle% "RealMapCertificates/relations/basis12487.json"
theorem reductionProof12487 : EqualModuloRelations reduction12487.relations reduction12487.input reduction12487.output := by lin_cert using reduction12487.terms
theorem substitutionProof12487 : IsMapEvaluation generatorImages reduction12487.relations [8,8,8,8,8,298] reduction12487.output := by lin_cert using reduction12487.terms
def image12488 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12488 : InImage map_49_216 image12488 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12488 : Bundle := named_bundle% "RealMapCertificates/relations/basis12488.json"
theorem reductionProof12488 : EqualModuloRelations reduction12488.relations reduction12488.input reduction12488.output := by lin_cert using reduction12488.terms
theorem substitutionProof12488 : IsMapEvaluation generatorImages reduction12488.relations [8,8,8,8,8,8,8,8,88] reduction12488.output := by lin_cert using reduction12488.terms
def map_49_217 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image12693 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12693 : InImage map_49_217 image12693 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12693 : Bundle := named_bundle% "RealMapCertificates/relations/basis12693.json"
theorem reductionProof12693 : EqualModuloRelations reduction12693.relations reduction12693.input reduction12693.output := by lin_cert using reduction12693.terms
theorem substitutionProof12693 : IsMapEvaluation generatorImages reduction12693.relations [0,8,64,402] reduction12693.output := by lin_cert using reduction12693.terms
def map_49_218 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image12836 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12836 : InImage map_49_218 image12836 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12836 : Bundle := named_bundle% "RealMapCertificates/relations/basis12836.json"
theorem reductionProof12836 : EqualModuloRelations reduction12836.relations reduction12836.input reduction12836.output := by lin_cert using reduction12836.terms
theorem substitutionProof12836 : IsMapEvaluation generatorImages reduction12836.relations [8,8,8,687] reduction12836.output := by lin_cert using reduction12836.terms
def image12837 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12837 : InImage map_49_218 image12837 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12837 : Bundle := named_bundle% "RealMapCertificates/relations/basis12837.json"
theorem reductionProof12837 : EqualModuloRelations reduction12837.relations reduction12837.input reduction12837.output := by lin_cert using reduction12837.terms
theorem substitutionProof12837 : IsMapEvaluation generatorImages reduction12837.relations [0,0,8,64,403] reduction12837.output := by lin_cert using reduction12837.terms
def map_49_219 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image13073 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13073 : InImage map_49_219 image13073 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13073 : Bundle := named_bundle% "RealMapCertificates/relations/basis13073.json"
theorem reductionProof13073 : EqualModuloRelations reduction13073.relations reduction13073.input reduction13073.output := by lin_cert using reduction13073.terms
theorem substitutionProof13073 : IsMapEvaluation generatorImages reduction13073.relations [8,8,8,8,8,8,225] reduction13073.output := by lin_cert using reduction13073.terms
def image13074 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13074 : InImage map_49_219 image13074 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13074 : Bundle := named_bundle% "RealMapCertificates/relations/basis13074.json"
theorem reductionProof13074 : EqualModuloRelations reduction13074.relations reduction13074.input reduction13074.output := by lin_cert using reduction13074.terms
theorem substitutionProof13074 : IsMapEvaluation generatorImages reduction13074.relations [8,8,8,8,8,8,8,8,100] reduction13074.output := by lin_cert using reduction13074.terms
def map_49_221 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13407 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13407 : InImage map_49_221 image13407 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13407 : Bundle := named_bundle% "RealMapCertificates/relations/basis13407.json"
theorem reductionProof13407 : EqualModuloRelations reduction13407.relations reduction13407.input reduction13407.output := by lin_cert using reduction13407.terms
theorem substitutionProof13407 : IsMapEvaluation generatorImages reduction13407.relations [17,1033] reduction13407.output := by lin_cert using reduction13407.terms
def image13408 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation13408 : InImage map_49_221 image13408 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13408 : Bundle := named_bundle% "RealMapCertificates/relations/basis13408.json"
theorem reductionProof13408 : EqualModuloRelations reduction13408.relations reduction13408.input reduction13408.output := by lin_cert using reduction13408.terms
theorem substitutionProof13408 : IsMapEvaluation generatorImages reduction13408.relations [8,8,8,724] reduction13408.output := by lin_cert using reduction13408.terms
def map_49_222 : Matrix 2 5 := fun i j => ([false,false,false,false,true,false,true,false,false,false] : List Bool)[i.val*5+j.val]!
def image13622 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13622 : InImage map_49_222 image13622 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction13622 : Bundle := named_bundle% "RealMapCertificates/relations/basis13622.json"
theorem reductionProof13622 : EqualModuloRelations reduction13622.relations reduction13622.input reduction13622.output := by lin_cert using reduction13622.terms
theorem substitutionProof13622 : IsMapEvaluation generatorImages reduction13622.relations [1591] reduction13622.output := by lin_cert using reduction13622.terms
def image13623 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13623 : InImage map_49_222 image13623 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction13623 : Bundle := named_bundle% "RealMapCertificates/relations/basis13623.json"
theorem reductionProof13623 : EqualModuloRelations reduction13623.relations reduction13623.input reduction13623.output := by lin_cert using reduction13623.terms
theorem substitutionProof13623 : IsMapEvaluation generatorImages reduction13623.relations [1590] reduction13623.output := by lin_cert using reduction13623.terms
def image13624 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13624 : InImage map_49_222 image13624 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction13624 : Bundle := named_bundle% "RealMapCertificates/relations/basis13624.json"
theorem reductionProof13624 : EqualModuloRelations reduction13624.relations reduction13624.input reduction13624.output := by lin_cert using reduction13624.terms
theorem substitutionProof13624 : IsMapEvaluation generatorImages reduction13624.relations [1589] reduction13624.output := by lin_cert using reduction13624.terms
def image13625 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13625 : InImage map_49_222 image13625 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction13625 : Bundle := named_bundle% "RealMapCertificates/relations/basis13625.json"
theorem reductionProof13625 : EqualModuloRelations reduction13625.relations reduction13625.input reduction13625.output := by lin_cert using reduction13625.terms
theorem substitutionProof13625 : IsMapEvaluation generatorImages reduction13625.relations [8,8,8,8,8,8,238] reduction13625.output := by lin_cert using reduction13625.terms
def image13626 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13626 : InImage map_49_222 image13626 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction13626 : Bundle := named_bundle% "RealMapCertificates/relations/basis13626.json"
theorem reductionProof13626 : EqualModuloRelations reduction13626.relations reduction13626.input reduction13626.output := by lin_cert using reduction13626.terms
theorem substitutionProof13626 : IsMapEvaluation generatorImages reduction13626.relations [8,8,8,8,8,8,8,8,8,60] reduction13626.output := by lin_cert using reduction13626.terms
def map_49_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13820 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13820 : InImage map_49_223 image13820 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13820 : Bundle := named_bundle% "RealMapCertificates/relations/basis13820.json"
theorem reductionProof13820 : EqualModuloRelations reduction13820.relations reduction13820.input reduction13820.output := by lin_cert using reduction13820.terms
theorem substitutionProof13820 : IsMapEvaluation generatorImages reduction13820.relations [0,0,1566] reduction13820.output := by lin_cert using reduction13820.terms
def map_49_224 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13959 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13959 : InImage map_49_224 image13959 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13959 : Bundle := named_bundle% "RealMapCertificates/relations/basis13959.json"
theorem reductionProof13959 : EqualModuloRelations reduction13959.relations reduction13959.input reduction13959.output := by lin_cert using reduction13959.terms
theorem substitutionProof13959 : IsMapEvaluation generatorImages reduction13959.relations [17,1076] reduction13959.output := by lin_cert using reduction13959.terms
def image13960 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13960 : InImage map_49_224 image13960 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13960 : Bundle := named_bundle% "RealMapCertificates/relations/basis13960.json"
theorem reductionProof13960 : EqualModuloRelations reduction13960.relations reduction13960.input reduction13960.output := by lin_cert using reduction13960.terms
theorem substitutionProof13960 : IsMapEvaluation generatorImages reduction13960.relations [8,8,8,8,572] reduction13960.output := by lin_cert using reduction13960.terms
def map_49_225 : Matrix 4 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image14197 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation14197 : InImage map_49_225 image14197 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14197 : Bundle := named_bundle% "RealMapCertificates/relations/basis14197.json"
theorem reductionProof14197 : EqualModuloRelations reduction14197.relations reduction14197.input reduction14197.output := by lin_cert using reduction14197.terms
theorem substitutionProof14197 : IsMapEvaluation generatorImages reduction14197.relations [17,1093] reduction14197.output := by lin_cert using reduction14197.terms
def image14198 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14198 : InImage map_49_225 image14198 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14198 : Bundle := named_bundle% "RealMapCertificates/relations/basis14198.json"
theorem reductionProof14198 : EqualModuloRelations reduction14198.relations reduction14198.input reduction14198.output := by lin_cert using reduction14198.terms
theorem substitutionProof14198 : IsMapEvaluation generatorImages reduction14198.relations [8,8,8,8,8,8,16,138] reduction14198.output := by lin_cert using reduction14198.terms
def image14199 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14199 : InImage map_49_225 image14199 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14199 : Bundle := named_bundle% "RealMapCertificates/relations/basis14199.json"
theorem reductionProof14199 : EqualModuloRelations reduction14199.relations reduction14199.input reduction14199.output := by lin_cert using reduction14199.terms
theorem substitutionProof14199 : IsMapEvaluation generatorImages reduction14199.relations [8,8,8,8,8,8,8,8,8,63] reduction14199.output := by lin_cert using reduction14199.terms
def image14200 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14200 : InImage map_49_225 image14200 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14200 : Bundle := named_bundle% "RealMapCertificates/relations/basis14200.json"
theorem reductionProof14200 : EqualModuloRelations reduction14200.relations reduction14200.input reduction14200.output := by lin_cert using reduction14200.terms
theorem substitutionProof14200 : IsMapEvaluation generatorImages reduction14200.relations [0,1619] reduction14200.output := by lin_cert using reduction14200.terms
def map_49_227 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image14530 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation14530 : InImage map_49_227 image14530 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14530 : Bundle := named_bundle% "RealMapCertificates/relations/basis14530.json"
theorem reductionProof14530 : EqualModuloRelations reduction14530.relations reduction14530.input reduction14530.output := by lin_cert using reduction14530.terms
theorem substitutionProof14530 : IsMapEvaluation generatorImages reduction14530.relations [138,452] reduction14530.output := by lin_cert using reduction14530.terms
def image14531 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14531 : InImage map_49_227 image14531 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14531 : Bundle := named_bundle% "RealMapCertificates/relations/basis14531.json"
theorem reductionProof14531 : EqualModuloRelations reduction14531.relations reduction14531.input reduction14531.output := by lin_cert using reduction14531.terms
theorem substitutionProof14531 : IsMapEvaluation generatorImages reduction14531.relations [16,17,725] reduction14531.output := by lin_cert using reduction14531.terms
def image14532 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14532 : InImage map_49_227 image14532 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14532 : Bundle := named_bundle% "RealMapCertificates/relations/basis14532.json"
theorem reductionProof14532 : EqualModuloRelations reduction14532.relations reduction14532.input reduction14532.output := by lin_cert using reduction14532.terms
theorem substitutionProof14532 : IsMapEvaluation generatorImages reduction14532.relations [8,8,8,8,597] reduction14532.output := by lin_cert using reduction14532.terms
def map_49_228 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image14761 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14761 : InImage map_49_228 image14761 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14761 : Bundle := named_bundle% "RealMapCertificates/relations/basis14761.json"
theorem reductionProof14761 : EqualModuloRelations reduction14761.relations reduction14761.input reduction14761.output := by lin_cert using reduction14761.terms
theorem substitutionProof14761 : IsMapEvaluation generatorImages reduction14761.relations [8,1363] reduction14761.output := by lin_cert using reduction14761.terms
def image14762 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14762 : InImage map_49_228 image14762 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14762 : Bundle := named_bundle% "RealMapCertificates/relations/basis14762.json"
theorem reductionProof14762 : EqualModuloRelations reduction14762.relations reduction14762.input reduction14762.output := by lin_cert using reduction14762.terms
theorem substitutionProof14762 : IsMapEvaluation generatorImages reduction14762.relations [8,8,8,8,8,8,8,185] reduction14762.output := by lin_cert using reduction14762.terms
def image14763 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14763 : InImage map_49_228 image14763 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14763 : Bundle := named_bundle% "RealMapCertificates/relations/basis14763.json"
theorem reductionProof14763 : EqualModuloRelations reduction14763.relations reduction14763.input reduction14763.output := by lin_cert using reduction14763.terms
theorem substitutionProof14763 : IsMapEvaluation generatorImages reduction14763.relations [8,8,8,8,8,8,8,8,8,8,42] reduction14763.output := by lin_cert using reduction14763.terms
def image14764 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14764 : InImage map_49_228 image14764 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14764 : Bundle := named_bundle% "RealMapCertificates/relations/basis14764.json"
theorem reductionProof14764 : EqualModuloRelations reduction14764.relations reduction14764.input reduction14764.output := by lin_cert using reduction14764.terms
theorem substitutionProof14764 : IsMapEvaluation generatorImages reduction14764.relations [0,17,17,725] reduction14764.output := by lin_cert using reduction14764.terms
def map_49_229 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14972 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14972 : InImage map_49_229 image14972 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14972 : Bundle := named_bundle% "RealMapCertificates/relations/basis14972.json"
theorem reductionProof14972 : EqualModuloRelations reduction14972.relations reduction14972.input reduction14972.output := by lin_cert using reduction14972.terms
theorem substitutionProof14972 : IsMapEvaluation generatorImages reduction14972.relations [0,0,224,246] reduction14972.output := by lin_cert using reduction14972.terms
def image14973 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14973 : InImage map_49_229 image14973 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14973 : Bundle := named_bundle% "RealMapCertificates/relations/basis14973.json"
theorem reductionProof14973 : EqualModuloRelations reduction14973.relations reduction14973.input reduction14973.output := by lin_cert using reduction14973.terms
theorem substitutionProof14973 : IsMapEvaluation generatorImages reduction14973.relations [0,0,59,725] reduction14973.output := by lin_cert using reduction14973.terms
def map_49_230 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image15124 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15124 : InImage map_49_230 image15124 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15124 : Bundle := named_bundle% "RealMapCertificates/relations/basis15124.json"
theorem reductionProof15124 : EqualModuloRelations reduction15124.relations reduction15124.input reduction15124.output := by lin_cert using reduction15124.terms
theorem substitutionProof15124 : IsMapEvaluation generatorImages reduction15124.relations [138,488] reduction15124.output := by lin_cert using reduction15124.terms
def image15125 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15125 : InImage map_49_230 image15125 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15125 : Bundle := named_bundle% "RealMapCertificates/relations/basis15125.json"
theorem reductionProof15125 : EqualModuloRelations reduction15125.relations reduction15125.input reduction15125.output := by lin_cert using reduction15125.terms
theorem substitutionProof15125 : IsMapEvaluation generatorImages reduction15125.relations [8,17,896] reduction15125.output := by lin_cert using reduction15125.terms
def image15126 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15126 : InImage map_49_230 image15126 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15126 : Bundle := named_bundle% "RealMapCertificates/relations/basis15126.json"
theorem reductionProof15126 : EqualModuloRelations reduction15126.relations reduction15126.input reduction15126.output := by lin_cert using reduction15126.terms
theorem substitutionProof15126 : IsMapEvaluation generatorImages reduction15126.relations [8,8,8,8,8,453] reduction15126.output := by lin_cert using reduction15126.terms
def image15127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15127 : InImage map_49_230 image15127 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15127 : Bundle := named_bundle% "RealMapCertificates/relations/basis15127.json"
theorem reductionProof15127 : EqualModuloRelations reduction15127.relations reduction15127.input reduction15127.output := by lin_cert using reduction15127.terms
theorem substitutionProof15127 : IsMapEvaluation generatorImages reduction15127.relations [0,0,0,0,1650] reduction15127.output := by lin_cert using reduction15127.terms
def map_49_231 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image15385 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15385 : InImage map_49_231 image15385 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15385 : Bundle := named_bundle% "RealMapCertificates/relations/basis15385.json"
theorem reductionProof15385 : EqualModuloRelations reduction15385.relations reduction15385.input reduction15385.output := by lin_cert using reduction15385.terms
theorem substitutionProof15385 : IsMapEvaluation generatorImages reduction15385.relations [8,17,918] reduction15385.output := by lin_cert using reduction15385.terms
def image15386 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15386 : InImage map_49_231 image15386 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15386 : Bundle := named_bundle% "RealMapCertificates/relations/basis15386.json"
theorem reductionProof15386 : EqualModuloRelations reduction15386.relations reduction15386.input reduction15386.output := by lin_cert using reduction15386.terms
theorem substitutionProof15386 : IsMapEvaluation generatorImages reduction15386.relations [8,8,8,8,8,8,8,8,138] reduction15386.output := by lin_cert using reduction15386.terms
def image15387 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15387 : InImage map_49_231 image15387 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15387 : Bundle := named_bundle% "RealMapCertificates/relations/basis15387.json"
theorem reductionProof15387 : EqualModuloRelations reduction15387.relations reduction15387.input reduction15387.output := by lin_cert using reduction15387.terms
theorem substitutionProof15387 : IsMapEvaluation generatorImages reduction15387.relations [8,8,8,8,8,8,8,8,8,8,46] reduction15387.output := by lin_cert using reduction15387.terms
def image15388 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15388 : InImage map_49_231 image15388 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15388 : Bundle := named_bundle% "RealMapCertificates/relations/basis15388.json"
theorem reductionProof15388 : EqualModuloRelations reduction15388.relations reduction15388.input reduction15388.output := by lin_cert using reduction15388.terms
theorem substitutionProof15388 : IsMapEvaluation generatorImages reduction15388.relations [0,17,17,759] reduction15388.output := by lin_cert using reduction15388.terms
def map_49_233 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image15776 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15776 : InImage map_49_233 image15776 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15776 : Bundle := named_bundle% "RealMapCertificates/relations/basis15776.json"
theorem reductionProof15776 : EqualModuloRelations reduction15776.relations reduction15776.input reduction15776.output := by lin_cert using reduction15776.terms
theorem substitutionProof15776 : IsMapEvaluation generatorImages reduction15776.relations [16,138,244] reduction15776.output := by lin_cert using reduction15776.terms
def image15777 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15777 : InImage map_49_233 image15777 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15777 : Bundle := named_bundle% "RealMapCertificates/relations/basis15777.json"
theorem reductionProof15777 : EqualModuloRelations reduction15777.relations reduction15777.input reduction15777.output := by lin_cert using reduction15777.terms
theorem substitutionProof15777 : IsMapEvaluation generatorImages reduction15777.relations [8,8,17,725] reduction15777.output := by lin_cert using reduction15777.terms
def image15778 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation15778 : InImage map_49_233 image15778 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15778 : Bundle := named_bundle% "RealMapCertificates/relations/basis15778.json"
theorem reductionProof15778 : EqualModuloRelations reduction15778.relations reduction15778.input reduction15778.output := by lin_cert using reduction15778.terms
theorem substitutionProof15778 : IsMapEvaluation generatorImages reduction15778.relations [8,8,8,8,8,490] reduction15778.output := by lin_cert using reduction15778.terms
def image15779 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation15779 : InImage map_49_233 image15779 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15779 : Bundle := named_bundle% "RealMapCertificates/relations/basis15779.json"
theorem reductionProof15779 : EqualModuloRelations reduction15779.relations reduction15779.input reduction15779.output := by lin_cert using reduction15779.terms
theorem substitutionProof15779 : IsMapEvaluation generatorImages reduction15779.relations [0,149,452] reduction15779.output := by lin_cert using reduction15779.terms
def map_49_234 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16025 : InImage map_49_234 image16025 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16025 : Bundle := named_bundle% "RealMapCertificates/relations/basis16025.json"
theorem reductionProof16025 : EqualModuloRelations reduction16025.relations reduction16025.input reduction16025.output := by lin_cert using reduction16025.terms
theorem substitutionProof16025 : IsMapEvaluation generatorImages reduction16025.relations [8,8,1144] reduction16025.output := by lin_cert using reduction16025.terms
def image16026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16026 : InImage map_49_234 image16026 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16026 : Bundle := named_bundle% "RealMapCertificates/relations/basis16026.json"
theorem reductionProof16026 : EqualModuloRelations reduction16026.relations reduction16026.input reduction16026.output := by lin_cert using reduction16026.terms
theorem substitutionProof16026 : IsMapEvaluation generatorImages reduction16026.relations [8,8,8,8,8,8,8,8,147] reduction16026.output := by lin_cert using reduction16026.terms
def image16027 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16027 : InImage map_49_234 image16027 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16027 : Bundle := named_bundle% "RealMapCertificates/relations/basis16027.json"
theorem reductionProof16027 : EqualModuloRelations reduction16027.relations reduction16027.input reduction16027.output := by lin_cert using reduction16027.terms
theorem substitutionProof16027 : IsMapEvaluation generatorImages reduction16027.relations [8,8,8,8,8,8,8,8,8,8,51] reduction16027.output := by lin_cert using reduction16027.terms
def image16028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16028 : InImage map_49_234 image16028 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16028 : Bundle := named_bundle% "RealMapCertificates/relations/basis16028.json"
theorem reductionProof16028 : EqualModuloRelations reduction16028.relations reduction16028.input reduction16028.output := by lin_cert using reduction16028.terms
theorem substitutionProof16028 : IsMapEvaluation generatorImages reduction16028.relations [1,149,452] reduction16028.output := by lin_cert using reduction16028.terms
def image16029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16029 : InImage map_49_234 image16029 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16029 : Bundle := named_bundle% "RealMapCertificates/relations/basis16029.json"
theorem reductionProof16029 : EqualModuloRelations reduction16029.relations reduction16029.input reduction16029.output := by lin_cert using reduction16029.terms
theorem substitutionProof16029 : IsMapEvaluation generatorImages reduction16029.relations [0,0,1771] reduction16029.output := by lin_cert using reduction16029.terms
def map_49_235 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16252 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16252 : InImage map_49_235 image16252 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16252 : Bundle := named_bundle% "RealMapCertificates/relations/basis16252.json"
theorem reductionProof16252 : EqualModuloRelations reduction16252.relations reduction16252.input reduction16252.output := by lin_cert using reduction16252.terms
theorem substitutionProof16252 : IsMapEvaluation generatorImages reduction16252.relations [0,0,0,0,0,64,725] reduction16252.output := by lin_cert using reduction16252.terms
def map_49_236 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16442 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16442 : InImage map_49_236 image16442 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16442 : Bundle := named_bundle% "RealMapCertificates/relations/basis16442.json"
theorem reductionProof16442 : EqualModuloRelations reduction16442.relations reduction16442.input reduction16442.output := by lin_cert using reduction16442.terms
theorem substitutionProof16442 : IsMapEvaluation generatorImages reduction16442.relations [8,113,452] reduction16442.output := by lin_cert using reduction16442.terms
def image16443 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16443 : InImage map_49_236 image16443 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16443 : Bundle := named_bundle% "RealMapCertificates/relations/basis16443.json"
theorem reductionProof16443 : EqualModuloRelations reduction16443.relations reduction16443.input reduction16443.output := by lin_cert using reduction16443.terms
theorem substitutionProof16443 : IsMapEvaluation generatorImages reduction16443.relations [8,8,17,759] reduction16443.output := by lin_cert using reduction16443.terms
def image16444 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16444 : InImage map_49_236 image16444 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16444 : Bundle := named_bundle% "RealMapCertificates/relations/basis16444.json"
theorem reductionProof16444 : EqualModuloRelations reduction16444.relations reduction16444.input reduction16444.output := by lin_cert using reduction16444.terms
theorem substitutionProof16444 : IsMapEvaluation generatorImages reduction16444.relations [8,8,8,8,8,8,315] reduction16444.output := by lin_cert using reduction16444.terms
def image16445 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16445 : InImage map_49_236 image16445 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16445 : Bundle := named_bundle% "RealMapCertificates/relations/basis16445.json"
theorem reductionProof16445 : EqualModuloRelations reduction16445.relations reduction16445.input reduction16445.output := by lin_cert using reduction16445.terms
theorem substitutionProof16445 : IsMapEvaluation generatorImages reduction16445.relations [0,0,0,0,64,752] reduction16445.output := by lin_cert using reduction16445.terms
def image16446 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16446 : InImage map_49_236 image16446 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16446 : Bundle := named_bundle% "RealMapCertificates/relations/basis16446.json"
theorem reductionProof16446 : EqualModuloRelations reduction16446.relations reduction16446.input reduction16446.output := by lin_cert using reduction16446.terms
theorem substitutionProof16446 : IsMapEvaluation generatorImages reduction16446.relations [0,0,0,0,0,0,138,491] reduction16446.output := by lin_cert using reduction16446.terms
def map_49_237 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16701 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16701 : InImage map_49_237 image16701 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16701 : Bundle := named_bundle% "RealMapCertificates/relations/basis16701.json"
theorem reductionProof16701 : EqualModuloRelations reduction16701.relations reduction16701.input reduction16701.output := by lin_cert using reduction16701.terms
theorem substitutionProof16701 : IsMapEvaluation generatorImages reduction16701.relations [8,8,17,778] reduction16701.output := by lin_cert using reduction16701.terms
def image16702 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16702 : InImage map_49_237 image16702 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16702 : Bundle := named_bundle% "RealMapCertificates/relations/basis16702.json"
theorem reductionProof16702 : EqualModuloRelations reduction16702.relations reduction16702.input reduction16702.output := by lin_cert using reduction16702.terms
theorem substitutionProof16702 : IsMapEvaluation generatorImages reduction16702.relations [8,8,8,8,8,8,8,8,17,64] reduction16702.output := by lin_cert using reduction16702.terms
def image16703 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16703 : InImage map_49_237 image16703 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16703 : Bundle := named_bundle% "RealMapCertificates/relations/basis16703.json"
theorem reductionProof16703 : EqualModuloRelations reduction16703.relations reduction16703.input reduction16703.output := by lin_cert using reduction16703.terms
theorem substitutionProof16703 : IsMapEvaluation generatorImages reduction16703.relations [8,8,8,8,8,8,8,8,8,9,51] reduction16703.output := by lin_cert using reduction16703.terms
def image16704 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16704 : InImage map_49_237 image16704 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16704 : Bundle := named_bundle% "RealMapCertificates/relations/basis16704.json"
theorem reductionProof16704 : EqualModuloRelations reduction16704.relations reduction16704.input reduction16704.output := by lin_cert using reduction16704.terms
theorem substitutionProof16704 : IsMapEvaluation generatorImages reduction16704.relations [0,0,0,0,0,0,1750] reduction16704.output := by lin_cert using reduction16704.terms
def image16705 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16705 : InImage map_49_237 image16705 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16705 : Bundle := named_bundle% "RealMapCertificates/relations/basis16705.json"
theorem reductionProof16705 : EqualModuloRelations reduction16705.relations reduction16705.input reduction16705.output := by lin_cert using reduction16705.terms
theorem substitutionProof16705 : IsMapEvaluation generatorImages reduction16705.relations [0,0,0,0,0,0,0,0,0,1686] reduction16705.output := by lin_cert using reduction16705.terms
def map_49_238 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image16915 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16915 : InImage map_49_238 image16915 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16915 : Bundle := named_bundle% "RealMapCertificates/relations/basis16915.json"
theorem reductionProof16915 : EqualModuloRelations reduction16915.relations reduction16915.input reduction16915.output := by lin_cert using reduction16915.terms
theorem substitutionProof16915 : IsMapEvaluation generatorImages reduction16915.relations [1925] reduction16915.output := by lin_cert using reduction16915.terms
def image16916 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16916 : InImage map_49_238 image16916 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16916 : Bundle := named_bundle% "RealMapCertificates/relations/basis16916.json"
theorem reductionProof16916 : EqualModuloRelations reduction16916.relations reduction16916.input reduction16916.output := by lin_cert using reduction16916.terms
theorem substitutionProof16916 : IsMapEvaluation generatorImages reduction16916.relations [0,0,0,0,0,0,0,0,1735] reduction16916.output := by lin_cert using reduction16916.terms
def map_49_239 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17131 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17131 : InImage map_49_239 image17131 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17131 : Bundle := named_bundle% "RealMapCertificates/relations/basis17131.json"
theorem reductionProof17131 : EqualModuloRelations reduction17131.relations reduction17131.input reduction17131.output := by lin_cert using reduction17131.terms
theorem substitutionProof17131 : IsMapEvaluation generatorImages reduction17131.relations [8,8,138,244] reduction17131.output := by lin_cert using reduction17131.terms
def image17132 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17132 : InImage map_49_239 image17132 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17132 : Bundle := named_bundle% "RealMapCertificates/relations/basis17132.json"
theorem reductionProof17132 : EqualModuloRelations reduction17132.relations reduction17132.input reduction17132.output := by lin_cert using reduction17132.terms
theorem substitutionProof17132 : IsMapEvaluation generatorImages reduction17132.relations [8,8,16,17,491] reduction17132.output := by lin_cert using reduction17132.terms
def image17133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17133 : InImage map_49_239 image17133 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17133 : Bundle := named_bundle% "RealMapCertificates/relations/basis17133.json"
theorem reductionProof17133 : EqualModuloRelations reduction17133.relations reduction17133.input reduction17133.output := by lin_cert using reduction17133.terms
theorem substitutionProof17133 : IsMapEvaluation generatorImages reduction17133.relations [8,8,8,8,8,8,345] reduction17133.output := by lin_cert using reduction17133.terms
def image17134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17134 : InImage map_49_239 image17134 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17134 : Bundle := named_bundle% "RealMapCertificates/relations/basis17134.json"
theorem reductionProof17134 : EqualModuloRelations reduction17134.relations reduction17134.input reduction17134.output := by lin_cert using reduction17134.terms
theorem substitutionProof17134 : IsMapEvaluation generatorImages reduction17134.relations [0,0,0,0,0,0,0,0,0,1736] reduction17134.output := by lin_cert using reduction17134.terms
def map_49_240 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image17400 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17400 : InImage map_49_240 image17400 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17400 : Bundle := named_bundle% "RealMapCertificates/relations/basis17400.json"
theorem reductionProof17400 : EqualModuloRelations reduction17400.relations reduction17400.input reduction17400.output := by lin_cert using reduction17400.terms
theorem substitutionProof17400 : IsMapEvaluation generatorImages reduction17400.relations [8,8,8,955] reduction17400.output := by lin_cert using reduction17400.terms
def image17401 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17401 : InImage map_49_240 image17401 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17401 : Bundle := named_bundle% "RealMapCertificates/relations/basis17401.json"
theorem reductionProof17401 : EqualModuloRelations reduction17401.relations reduction17401.input reduction17401.output := by lin_cert using reduction17401.terms
theorem substitutionProof17401 : IsMapEvaluation generatorImages reduction17401.relations [8,8,8,8,8,8,8,8,8,113] reduction17401.output := by lin_cert using reduction17401.terms
def image17402 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17402 : InImage map_49_240 image17402 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17402 : Bundle := named_bundle% "RealMapCertificates/relations/basis17402.json"
theorem reductionProof17402 : EqualModuloRelations reduction17402.relations reduction17402.input reduction17402.output := by lin_cert using reduction17402.terms
theorem substitutionProof17402 : IsMapEvaluation generatorImages reduction17402.relations [8,8,8,8,8,8,8,8,8,13,51] reduction17402.output := by lin_cert using reduction17402.terms
def image17403 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17403 : InImage map_49_240 image17403 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17403 : Bundle := named_bundle% "RealMapCertificates/relations/basis17403.json"
theorem reductionProof17403 : EqualModuloRelations reduction17403.relations reduction17403.input reduction17403.output := by lin_cert using reduction17403.terms
theorem substitutionProof17403 : IsMapEvaluation generatorImages reduction17403.relations [0,0,0,64,64,224] reduction17403.output := by lin_cert using reduction17403.terms
def image17404 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17404 : InImage map_49_240 image17404 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17404 : Bundle := named_bundle% "RealMapCertificates/relations/basis17404.json"
theorem reductionProof17404 : EqualModuloRelations reduction17404.relations reduction17404.input reduction17404.output := by lin_cert using reduction17404.terms
theorem substitutionProof17404 : IsMapEvaluation generatorImages reduction17404.relations [0,0,0,0,0,0,0,0,0,0,1737] reduction17404.output := by lin_cert using reduction17404.terms
def map_49_241 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image17679 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17679 : InImage map_49_241 image17679 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17679 : Bundle := named_bundle% "RealMapCertificates/relations/basis17679.json"
theorem reductionProof17679 : EqualModuloRelations reduction17679.relations reduction17679.input reduction17679.output := by lin_cert using reduction17679.terms
theorem substitutionProof17679 : IsMapEvaluation generatorImages reduction17679.relations [2037] reduction17679.output := by lin_cert using reduction17679.terms
def image17680 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17680 : InImage map_49_241 image17680 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17680 : Bundle := named_bundle% "RealMapCertificates/relations/basis17680.json"
theorem reductionProof17680 : EqualModuloRelations reduction17680.relations reduction17680.input reduction17680.output := by lin_cert using reduction17680.terms
theorem substitutionProof17680 : IsMapEvaluation generatorImages reduction17680.relations [0,0,0,0,64,64,225] reduction17680.output := by lin_cert using reduction17680.terms
def map_49_242 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image17900 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17900 : InImage map_49_242 image17900 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17900 : Bundle := named_bundle% "RealMapCertificates/relations/basis17900.json"
theorem reductionProof17900 : EqualModuloRelations reduction17900.relations reduction17900.input reduction17900.output := by lin_cert using reduction17900.terms
theorem substitutionProof17900 : IsMapEvaluation generatorImages reduction17900.relations [8,8,138,257] reduction17900.output := by lin_cert using reduction17900.terms
def image17901 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17901 : InImage map_49_242 image17901 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17901 : Bundle := named_bundle% "RealMapCertificates/relations/basis17901.json"
theorem reductionProof17901 : EqualModuloRelations reduction17901.relations reduction17901.input reduction17901.output := by lin_cert using reduction17901.terms
theorem substitutionProof17901 : IsMapEvaluation generatorImages reduction17901.relations [8,8,8,17,623] reduction17901.output := by lin_cert using reduction17901.terms
def image17902 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17902 : InImage map_49_242 image17902 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17902 : Bundle := named_bundle% "RealMapCertificates/relations/basis17902.json"
theorem reductionProof17902 : EqualModuloRelations reduction17902.relations reduction17902.input reduction17902.output := by lin_cert using reduction17902.terms
theorem substitutionProof17902 : IsMapEvaluation generatorImages reduction17902.relations [8,8,8,8,8,8,8,247] reduction17902.output := by lin_cert using reduction17902.terms
def map_49_243 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image18186 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18186 : InImage map_49_243 image18186 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18186 : Bundle := named_bundle% "RealMapCertificates/relations/basis18186.json"
theorem reductionProof18186 : EqualModuloRelations reduction18186.relations reduction18186.input reduction18186.output := by lin_cert using reduction18186.terms
theorem substitutionProof18186 : IsMapEvaluation generatorImages reduction18186.relations [8,8,8,17,637] reduction18186.output := by lin_cert using reduction18186.terms
def image18187 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18187 : InImage map_49_243 image18187 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18187 : Bundle := named_bundle% "RealMapCertificates/relations/basis18187.json"
theorem reductionProof18187 : EqualModuloRelations reduction18187.relations reduction18187.input reduction18187.output := by lin_cert using reduction18187.terms
theorem substitutionProof18187 : IsMapEvaluation generatorImages reduction18187.relations [8,8,8,8,8,8,8,8,9,13,51] reduction18187.output := by lin_cert using reduction18187.terms
def image18188 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18188 : InImage map_49_243 image18188 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18188 : Bundle := named_bundle% "RealMapCertificates/relations/basis18188.json"
theorem reductionProof18188 : EqualModuloRelations reduction18188.relations reduction18188.input reduction18188.output := by lin_cert using reduction18188.terms
theorem substitutionProof18188 : IsMapEvaluation generatorImages reduction18188.relations [8,8,8,8,8,8,8,8,8,118] reduction18188.output := by lin_cert using reduction18188.terms
def image18189 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18189 : InImage map_49_243 image18189 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18189 : Bundle := named_bundle% "RealMapCertificates/relations/basis18189.json"
theorem reductionProof18189 : EqualModuloRelations reduction18189.relations reduction18189.input reduction18189.output := by lin_cert using reduction18189.terms
theorem substitutionProof18189 : IsMapEvaluation generatorImages reduction18189.relations [0,0,0,0,0,0,64,809] reduction18189.output := by lin_cert using reduction18189.terms
def map_49_244 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image18410 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18410 : InImage map_49_244 image18410 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18410 : Bundle := named_bundle% "RealMapCertificates/relations/basis18410.json"
theorem reductionProof18410 : EqualModuloRelations reduction18410.relations reduction18410.input reduction18410.output := by lin_cert using reduction18410.terms
theorem substitutionProof18410 : IsMapEvaluation generatorImages reduction18410.relations [8,1651] reduction18410.output := by lin_cert using reduction18410.terms
def image18411 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18411 : InImage map_49_244 image18411 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18411 : Bundle := named_bundle% "RealMapCertificates/relations/basis18411.json"
theorem reductionProof18411 : EqualModuloRelations reduction18411.relations reduction18411.input reduction18411.output := by lin_cert using reduction18411.terms
theorem substitutionProof18411 : IsMapEvaluation generatorImages reduction18411.relations [5,64,725] reduction18411.output := by lin_cert using reduction18411.terms
def map_49_245 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18642 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18642 : InImage map_49_245 image18642 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18642 : Bundle := named_bundle% "RealMapCertificates/relations/basis18642.json"
theorem reductionProof18642 : EqualModuloRelations reduction18642.relations reduction18642.input reduction18642.output := by lin_cert using reduction18642.terms
theorem substitutionProof18642 : IsMapEvaluation generatorImages reduction18642.relations [8,8,16,138,149] reduction18642.output := by lin_cert using reduction18642.terms
def image18643 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18643 : InImage map_49_245 image18643 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18643 : Bundle := named_bundle% "RealMapCertificates/relations/basis18643.json"
theorem reductionProof18643 : EqualModuloRelations reduction18643.relations reduction18643.input reduction18643.output := by lin_cert using reduction18643.terms
theorem substitutionProof18643 : IsMapEvaluation generatorImages reduction18643.relations [8,8,8,8,17,491] reduction18643.output := by lin_cert using reduction18643.terms
def image18644 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18644 : InImage map_49_245 image18644 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18644 : Bundle := named_bundle% "RealMapCertificates/relations/basis18644.json"
theorem reductionProof18644 : EqualModuloRelations reduction18644.relations reduction18644.input reduction18644.output := by lin_cert using reduction18644.terms
theorem substitutionProof18644 : IsMapEvaluation generatorImages reduction18644.relations [8,8,8,8,8,8,8,259] reduction18644.output := by lin_cert using reduction18644.terms
end RealMapCertificates
