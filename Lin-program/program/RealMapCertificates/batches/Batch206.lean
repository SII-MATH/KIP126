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
  | 14 => [[1,4,4]]
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 51 => [[7,7,7]]
  | 64 => []
  | 80 => []
  | 111 => [[4,4,4,4,4,7]]
  | 113 => [[0,8,12]]
  | 127 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 160 => [[6,8,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 193 => [[5,5,7,12]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 208 => [[5,7,7,12]]
  | 219 => [[7,7,7,12]]
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 260 => []
  | 278 => []
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 491 => []
  | 515 => [[1,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 536 => [[2,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 559 => [[0,0,5,8,12,12]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 580 => [[0,0,5,9,12,12]]
  | 598 => [[0,6,9,12,12]]
  | 606 => []
  | 623 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 665 => [[0,0,4,5,8,12,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 725 => []
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 759 => []
  | 795 => []
  | 805 => []
  | 808 => [[0,0,4,4,5,8,12,12]]
  | 896 => []
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1121 => []
  | 1219 => [[4,4,4,7,7,7,12,12]]
  | 1288 => [[4,4,5,5,5,9,12,12]]
  | 1438 => [[4,4,4,4,7,7,7,12,12]]
  | 1501 => [[4,4,4,5,5,5,9,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1718 => [[4,4,4,4,5,5,5,9,12,12]]
  | 1967 => []
  | 2539 => [[4,4,4,4,6,8,12,12,12]]
  | 2580 => [[0,4,4,4,4,5,9,12,12,12]]
  | _ => []
def map_49_246 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image18932 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18932 : InImage map_49_246 image18932 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18932 : Bundle := named_bundle% "RealMapCertificates/relations/basis18932.json"
theorem reductionProof18932 : EqualModuloRelations reduction18932.relations reduction18932.input reduction18932.output := by lin_cert using reduction18932.terms
theorem substitutionProof18932 : IsMapEvaluation generatorImages reduction18932.relations [8,8,8,8,808] reduction18932.output := by lin_cert using reduction18932.terms
def image18933 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18933 : InImage map_49_246 image18933 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18933 : Bundle := named_bundle% "RealMapCertificates/relations/basis18933.json"
theorem reductionProof18933 : EqualModuloRelations reduction18933.relations reduction18933.input reduction18933.output := by lin_cert using reduction18933.terms
theorem substitutionProof18933 : IsMapEvaluation generatorImages reduction18933.relations [8,8,8,8,8,8,8,8,13,13,51] reduction18933.output := by lin_cert using reduction18933.terms
def image18934 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18934 : InImage map_49_246 image18934 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18934 : Bundle := named_bundle% "RealMapCertificates/relations/basis18934.json"
theorem reductionProof18934 : EqualModuloRelations reduction18934.relations reduction18934.input reduction18934.output := by lin_cert using reduction18934.terms
theorem substitutionProof18934 : IsMapEvaluation generatorImages reduction18934.relations [8,8,8,8,8,8,8,8,8,127] reduction18934.output := by lin_cert using reduction18934.terms
def image18935 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18935 : InImage map_49_246 image18935 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18935 : Bundle := named_bundle% "RealMapCertificates/relations/basis18935.json"
theorem reductionProof18935 : EqualModuloRelations reduction18935.relations reduction18935.input reduction18935.output := by lin_cert using reduction18935.terms
theorem substitutionProof18935 : IsMapEvaluation generatorImages reduction18935.relations [0,64,896] reduction18935.output := by lin_cert using reduction18935.terms
def map_49_247 : Matrix 2 4 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19209 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19209 : InImage map_49_247 image19209 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19209 : Bundle := named_bundle% "RealMapCertificates/relations/basis19209.json"
theorem reductionProof19209 : EqualModuloRelations reduction19209.relations reduction19209.input reduction19209.output := by lin_cert using reduction19209.terms
theorem substitutionProof19209 : IsMapEvaluation generatorImages reduction19209.relations [8,1718] reduction19209.output := by lin_cert using reduction19209.terms
def image19210 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19210 : InImage map_49_247 image19210 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19210 : Bundle := named_bundle% "RealMapCertificates/relations/basis19210.json"
theorem reductionProof19210 : EqualModuloRelations reduction19210.relations reduction19210.input reduction19210.output := by lin_cert using reduction19210.terms
theorem substitutionProof19210 : IsMapEvaluation generatorImages reduction19210.relations [0,64,918] reduction19210.output := by lin_cert using reduction19210.terms
def image19211 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19211 : InImage map_49_247 image19211 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19211 : Bundle := named_bundle% "RealMapCertificates/relations/basis19211.json"
theorem reductionProof19211 : EqualModuloRelations reduction19211.relations reduction19211.input reduction19211.output := by lin_cert using reduction19211.terms
theorem substitutionProof19211 : IsMapEvaluation generatorImages reduction19211.relations [0,0,113,725] reduction19211.output := by lin_cert using reduction19211.terms
def image19212 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19212 : InImage map_49_247 image19212 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19212 : Bundle := named_bundle% "RealMapCertificates/relations/basis19212.json"
theorem reductionProof19212 : EqualModuloRelations reduction19212.relations reduction19212.input reduction19212.output := by lin_cert using reduction19212.terms
theorem substitutionProof19212 : IsMapEvaluation generatorImages reduction19212.relations [0,0,0,0,0,64,64,244] reduction19212.output := by lin_cert using reduction19212.terms
def map_49_248 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19443 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19443 : InImage map_49_248 image19443 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19443 : Bundle := named_bundle% "RealMapCertificates/relations/basis19443.json"
theorem reductionProof19443 : EqualModuloRelations reduction19443.relations reduction19443.input reduction19443.output := by lin_cert using reduction19443.terms
theorem substitutionProof19443 : IsMapEvaluation generatorImages reduction19443.relations [8,8,8,113,244] reduction19443.output := by lin_cert using reduction19443.terms
def image19444 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19444 : InImage map_49_248 image19444 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19444 : Bundle := named_bundle% "RealMapCertificates/relations/basis19444.json"
theorem reductionProof19444 : EqualModuloRelations reduction19444.relations reduction19444.input reduction19444.output := by lin_cert using reduction19444.terms
theorem substitutionProof19444 : IsMapEvaluation generatorImages reduction19444.relations [8,8,8,8,17,516] reduction19444.output := by lin_cert using reduction19444.terms
def image19445 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19445 : InImage map_49_248 image19445 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19445 : Bundle := named_bundle% "RealMapCertificates/relations/basis19445.json"
theorem reductionProof19445 : EqualModuloRelations reduction19445.relations reduction19445.input reduction19445.output := by lin_cert using reduction19445.terms
theorem substitutionProof19445 : IsMapEvaluation generatorImages reduction19445.relations [8,8,8,8,8,8,8,8,193] reduction19445.output := by lin_cert using reduction19445.terms
def image19446 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19446 : InImage map_49_248 image19446 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19446 : Bundle := named_bundle% "RealMapCertificates/relations/basis19446.json"
theorem reductionProof19446 : EqualModuloRelations reduction19446.relations reduction19446.input reduction19446.output := by lin_cert using reduction19446.terms
theorem substitutionProof19446 : IsMapEvaluation generatorImages reduction19446.relations [0,0,0,0,0,0,64,138,149] reduction19446.output := by lin_cert using reduction19446.terms
def map_49_249 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19747 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19747 : InImage map_49_249 image19747 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19747 : Bundle := named_bundle% "RealMapCertificates/relations/basis19747.json"
theorem reductionProof19747 : EqualModuloRelations reduction19747.relations reduction19747.input reduction19747.output := by lin_cert using reduction19747.terms
theorem substitutionProof19747 : IsMapEvaluation generatorImages reduction19747.relations [8,8,8,8,17,529] reduction19747.output := by lin_cert using reduction19747.terms
def image19748 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19748 : InImage map_49_249 image19748 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19748 : Bundle := named_bundle% "RealMapCertificates/relations/basis19748.json"
theorem reductionProof19748 : EqualModuloRelations reduction19748.relations reduction19748.input reduction19748.output := by lin_cert using reduction19748.terms
theorem substitutionProof19748 : IsMapEvaluation generatorImages reduction19748.relations [8,8,8,8,8,8,8,9,13,13,51] reduction19748.output := by lin_cert using reduction19748.terms
def image19749 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19749 : InImage map_49_249 image19749 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19749 : Bundle := named_bundle% "RealMapCertificates/relations/basis19749.json"
theorem reductionProof19749 : EqualModuloRelations reduction19749.relations reduction19749.input reduction19749.output := by lin_cert using reduction19749.terms
theorem substitutionProof19749 : IsMapEvaluation generatorImages reduction19749.relations [8,8,8,8,8,8,8,8,8,8,80] reduction19749.output := by lin_cert using reduction19749.terms
def image19750 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19750 : InImage map_49_249 image19750 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19750 : Bundle := named_bundle% "RealMapCertificates/relations/basis19750.json"
theorem reductionProof19750 : EqualModuloRelations reduction19750.relations reduction19750.input reduction19750.output := by lin_cert using reduction19750.terms
theorem substitutionProof19750 : IsMapEvaluation generatorImages reduction19750.relations [0,8,64,725] reduction19750.output := by lin_cert using reduction19750.terms
def map_49_250 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image19993 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19993 : InImage map_49_250 image19993 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19993 : Bundle := named_bundle% "RealMapCertificates/relations/basis19993.json"
theorem reductionProof19993 : EqualModuloRelations reduction19993.relations reduction19993.input reduction19993.output := by lin_cert using reduction19993.terms
theorem substitutionProof19993 : IsMapEvaluation generatorImages reduction19993.relations [8,8,1438] reduction19993.output := by lin_cert using reduction19993.terms
def image19994 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19994 : InImage map_49_250 image19994 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19994 : Bundle := named_bundle% "RealMapCertificates/relations/basis19994.json"
theorem reductionProof19994 : EqualModuloRelations reduction19994.relations reduction19994.input reduction19994.output := by lin_cert using reduction19994.terms
theorem substitutionProof19994 : IsMapEvaluation generatorImages reduction19994.relations [0,0,8,138,491] reduction19994.output := by lin_cert using reduction19994.terms
def map_49_251 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image20252 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20252 : InImage map_49_251 image20252 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20252 : Bundle := named_bundle% "RealMapCertificates/relations/basis20252.json"
theorem reductionProof20252 : EqualModuloRelations reduction20252.relations reduction20252.input reduction20252.output := by lin_cert using reduction20252.terms
theorem substitutionProof20252 : IsMapEvaluation generatorImages reduction20252.relations [8,8,8,8,138,149] reduction20252.output := by lin_cert using reduction20252.terms
def image20253 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20253 : InImage map_49_251 image20253 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20253 : Bundle := named_bundle% "RealMapCertificates/relations/basis20253.json"
theorem reductionProof20253 : EqualModuloRelations reduction20253.relations reduction20253.input reduction20253.output := by lin_cert using reduction20253.terms
theorem substitutionProof20253 : IsMapEvaluation generatorImages reduction20253.relations [8,8,8,8,16,17,260] reduction20253.output := by lin_cert using reduction20253.terms
def image20254 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20254 : InImage map_49_251 image20254 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20254 : Bundle := named_bundle% "RealMapCertificates/relations/basis20254.json"
theorem reductionProof20254 : EqualModuloRelations reduction20254.relations reduction20254.input reduction20254.output := by lin_cert using reduction20254.terms
theorem substitutionProof20254 : IsMapEvaluation generatorImages reduction20254.relations [8,8,8,8,8,8,8,8,208] reduction20254.output := by lin_cert using reduction20254.terms
def map_49_252 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image20553 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20553 : InImage map_49_252 image20553 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20553 : Bundle := named_bundle% "RealMapCertificates/relations/basis20553.json"
theorem reductionProof20553 : EqualModuloRelations reduction20553.relations reduction20553.input reduction20553.output := by lin_cert using reduction20553.terms
theorem substitutionProof20553 : IsMapEvaluation generatorImages reduction20553.relations [64,64,298] reduction20553.output := by lin_cert using reduction20553.terms
def image20554 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20554 : InImage map_49_252 image20554 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20554 : Bundle := named_bundle% "RealMapCertificates/relations/basis20554.json"
theorem reductionProof20554 : EqualModuloRelations reduction20554.relations reduction20554.input reduction20554.output := by lin_cert using reduction20554.terms
theorem substitutionProof20554 : IsMapEvaluation generatorImages reduction20554.relations [8,8,8,8,8,665] reduction20554.output := by lin_cert using reduction20554.terms
def image20555 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20555 : InImage map_49_252 image20555 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20555 : Bundle := named_bundle% "RealMapCertificates/relations/basis20555.json"
theorem reductionProof20555 : EqualModuloRelations reduction20555.relations reduction20555.input reduction20555.output := by lin_cert using reduction20555.terms
theorem substitutionProof20555 : IsMapEvaluation generatorImages reduction20555.relations [8,8,8,8,8,8,8,13,13,13,51] reduction20555.output := by lin_cert using reduction20555.terms
def image20556 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20556 : InImage map_49_252 image20556 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20556 : Bundle := named_bundle% "RealMapCertificates/relations/basis20556.json"
theorem reductionProof20556 : EqualModuloRelations reduction20556.relations reduction20556.input reduction20556.output := by lin_cert using reduction20556.terms
theorem substitutionProof20556 : IsMapEvaluation generatorImages reduction20556.relations [8,8,8,8,8,8,8,8,8,9,80] reduction20556.output := by lin_cert using reduction20556.terms
def image20557 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20557 : InImage map_49_252 image20557 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20557 : Bundle := named_bundle% "RealMapCertificates/relations/basis20557.json"
theorem reductionProof20557 : EqualModuloRelations reduction20557.relations reduction20557.input reduction20557.output := by lin_cert using reduction20557.terms
theorem substitutionProof20557 : IsMapEvaluation generatorImages reduction20557.relations [0,8,64,759] reduction20557.output := by lin_cert using reduction20557.terms
def map_49_253 : Matrix 4 3 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20822 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation20822 : InImage map_49_253 image20822 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20822 : Bundle := named_bundle% "RealMapCertificates/relations/basis20822.json"
theorem reductionProof20822 : EqualModuloRelations reduction20822.relations reduction20822.input reduction20822.output := by lin_cert using reduction20822.terms
theorem substitutionProof20822 : IsMapEvaluation generatorImages reduction20822.relations [8,8,1501] reduction20822.output := by lin_cert using reduction20822.terms
def image20823 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20823 : InImage map_49_253 image20823 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20823 : Bundle := named_bundle% "RealMapCertificates/relations/basis20823.json"
theorem reductionProof20823 : EqualModuloRelations reduction20823.relations reduction20823.input reduction20823.output := by lin_cert using reduction20823.terms
theorem substitutionProof20823 : IsMapEvaluation generatorImages reduction20823.relations [0,0,8,138,516] reduction20823.output := by lin_cert using reduction20823.terms
def image20824 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20824 : InImage map_49_253 image20824 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20824 : Bundle := named_bundle% "RealMapCertificates/relations/basis20824.json"
theorem reductionProof20824 : EqualModuloRelations reduction20824.relations reduction20824.input reduction20824.output := by lin_cert using reduction20824.terms
theorem substitutionProof20824 : IsMapEvaluation generatorImages reduction20824.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1967] reduction20824.output := by lin_cert using reduction20824.terms
def map_49_254 : Matrix 2 4 := fun i j => ([false,false,false,true,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image21080 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation21080 : InImage map_49_254 image21080 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21080 : Bundle := named_bundle% "RealMapCertificates/relations/basis21080.json"
theorem reductionProof21080 : EqualModuloRelations reduction21080.relations reduction21080.input reduction21080.output := by lin_cert using reduction21080.terms
theorem substitutionProof21080 : IsMapEvaluation generatorImages reduction21080.relations [14,1686] reduction21080.output := by lin_cert using reduction21080.terms
def image21081 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21081 : InImage map_49_254 image21081 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21081 : Bundle := named_bundle% "RealMapCertificates/relations/basis21081.json"
theorem reductionProof21081 : EqualModuloRelations reduction21081.relations reduction21081.input reduction21081.output := by lin_cert using reduction21081.terms
theorem substitutionProof21081 : IsMapEvaluation generatorImages reduction21081.relations [8,8,8,8,138,160] reduction21081.output := by lin_cert using reduction21081.terms
def image21082 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21082 : InImage map_49_254 image21082 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21082 : Bundle := named_bundle% "RealMapCertificates/relations/basis21082.json"
theorem reductionProof21082 : EqualModuloRelations reduction21082.relations reduction21082.input reduction21082.output := by lin_cert using reduction21082.terms
theorem substitutionProof21082 : IsMapEvaluation generatorImages reduction21082.relations [8,8,8,8,8,17,380] reduction21082.output := by lin_cert using reduction21082.terms
def image21083 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21083 : InImage map_49_254 image21083 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21083 : Bundle := named_bundle% "RealMapCertificates/relations/basis21083.json"
theorem reductionProof21083 : EqualModuloRelations reduction21083.relations reduction21083.input reduction21083.output := by lin_cert using reduction21083.terms
theorem substitutionProof21083 : IsMapEvaluation generatorImages reduction21083.relations [8,8,8,8,8,8,8,8,219] reduction21083.output := by lin_cert using reduction21083.terms
def map_49_255 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image21431 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21431 : InImage map_49_255 image21431 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21431 : Bundle := named_bundle% "RealMapCertificates/relations/basis21431.json"
theorem reductionProof21431 : EqualModuloRelations reduction21431.relations reduction21431.input reduction21431.output := by lin_cert using reduction21431.terms
theorem substitutionProof21431 : IsMapEvaluation generatorImages reduction21431.relations [8,64,64,225] reduction21431.output := by lin_cert using reduction21431.terms
def image21432 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21432 : InImage map_49_255 image21432 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21432 : Bundle := named_bundle% "RealMapCertificates/relations/basis21432.json"
theorem reductionProof21432 : EqualModuloRelations reduction21432.relations reduction21432.input reduction21432.output := by lin_cert using reduction21432.terms
theorem substitutionProof21432 : IsMapEvaluation generatorImages reduction21432.relations [8,8,8,8,8,17,404] reduction21432.output := by lin_cert using reduction21432.terms
def image21433 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21433 : InImage map_49_255 image21433 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21433 : Bundle := named_bundle% "RealMapCertificates/relations/basis21433.json"
theorem reductionProof21433 : EqualModuloRelations reduction21433.relations reduction21433.input reduction21433.output := by lin_cert using reduction21433.terms
theorem substitutionProof21433 : IsMapEvaluation generatorImages reduction21433.relations [8,8,8,8,8,8,9,13,13,13,51] reduction21433.output := by lin_cert using reduction21433.terms
def image21434 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21434 : InImage map_49_255 image21434 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21434 : Bundle := named_bundle% "RealMapCertificates/relations/basis21434.json"
theorem reductionProof21434 : EqualModuloRelations reduction21434.relations reduction21434.input reduction21434.output := by lin_cert using reduction21434.terms
theorem substitutionProof21434 : IsMapEvaluation generatorImages reduction21434.relations [8,8,8,8,8,8,8,8,8,13,80] reduction21434.output := by lin_cert using reduction21434.terms
def image21435 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21435 : InImage map_49_255 image21435 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21435 : Bundle := named_bundle% "RealMapCertificates/relations/basis21435.json"
theorem reductionProof21435 : EqualModuloRelations reduction21435.relations reduction21435.input reduction21435.output := by lin_cert using reduction21435.terms
theorem substitutionProof21435 : IsMapEvaluation generatorImages reduction21435.relations [0,8,16,64,491] reduction21435.output := by lin_cert using reduction21435.terms
def map_49_256 : Matrix 1 4 := fun i j => ([true,false,false,false] : List Bool)[i.val*4+j.val]!
def image21713 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21713 : InImage map_49_256 image21713 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21713 : Bundle := named_bundle% "RealMapCertificates/relations/basis21713.json"
theorem reductionProof21713 : EqualModuloRelations reduction21713.relations reduction21713.input reduction21713.output := by lin_cert using reduction21713.terms
theorem substitutionProof21713 : IsMapEvaluation generatorImages reduction21713.relations [8,8,8,1219] reduction21713.output := by lin_cert using reduction21713.terms
def image21714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21714 : InImage map_49_256 image21714 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21714 : Bundle := named_bundle% "RealMapCertificates/relations/basis21714.json"
theorem reductionProof21714 : EqualModuloRelations reduction21714.relations reduction21714.input reduction21714.output := by lin_cert using reduction21714.terms
theorem substitutionProof21714 : IsMapEvaluation generatorImages reduction21714.relations [5,64,64,244] reduction21714.output := by lin_cert using reduction21714.terms
def image21715 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21715 : InImage map_49_256 image21715 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21715 : Bundle := named_bundle% "RealMapCertificates/relations/basis21715.json"
theorem reductionProof21715 : EqualModuloRelations reduction21715.relations reduction21715.input reduction21715.output := by lin_cert using reduction21715.terms
theorem substitutionProof21715 : IsMapEvaluation generatorImages reduction21715.relations [0,2539] reduction21715.output := by lin_cert using reduction21715.terms
def image21716 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21716 : InImage map_49_256 image21716 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21716 : Bundle := named_bundle% "RealMapCertificates/relations/basis21716.json"
theorem reductionProof21716 : EqualModuloRelations reduction21716.relations reduction21716.input reduction21716.output := by lin_cert using reduction21716.terms
theorem substitutionProof21716 : IsMapEvaluation generatorImages reduction21716.relations [0,0,8,16,138,260] reduction21716.output := by lin_cert using reduction21716.terms
def map_49_257 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,true,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image22032 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22032 : InImage map_49_257 image22032 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22032 : Bundle := named_bundle% "RealMapCertificates/relations/basis22032.json"
theorem reductionProof22032 : EqualModuloRelations reduction22032.relations reduction22032.input reduction22032.output := by lin_cert using reduction22032.terms
theorem substitutionProof22032 : IsMapEvaluation generatorImages reduction22032.relations [8,8,8,8,16,598] reduction22032.output := by lin_cert using reduction22032.terms
def image22033 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22033 : InImage map_49_257 image22033 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22033 : Bundle := named_bundle% "RealMapCertificates/relations/basis22033.json"
theorem reductionProof22033 : EqualModuloRelations reduction22033.relations reduction22033.input reduction22033.output := by lin_cert using reduction22033.terms
theorem substitutionProof22033 : IsMapEvaluation generatorImages reduction22033.relations [8,8,8,8,8,8,17,260] reduction22033.output := by lin_cert using reduction22033.terms
def image22034 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation22034 : InImage map_49_257 image22034 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22034 : Bundle := named_bundle% "RealMapCertificates/relations/basis22034.json"
theorem reductionProof22034 : EqualModuloRelations reduction22034.relations reduction22034.input reduction22034.output := by lin_cert using reduction22034.terms
theorem substitutionProof22034 : IsMapEvaluation generatorImages reduction22034.relations [8,8,8,8,8,8,8,9,219] reduction22034.output := by lin_cert using reduction22034.terms
def image22035 : Vec 3 := fun i => ([false,true,false] : List Bool)[i.val]!
theorem evaluation22035 : InImage map_49_257 image22035 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22035 : Bundle := named_bundle% "RealMapCertificates/relations/basis22035.json"
theorem reductionProof22035 : EqualModuloRelations reduction22035.relations reduction22035.input reduction22035.output := by lin_cert using reduction22035.terms
theorem substitutionProof22035 : IsMapEvaluation generatorImages reduction22035.relations [0,2580] reduction22035.output := by lin_cert using reduction22035.terms
def map_49_258 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22391 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22391 : InImage map_49_258 image22391 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22391 : Bundle := named_bundle% "RealMapCertificates/relations/basis22391.json"
theorem reductionProof22391 : EqualModuloRelations reduction22391.relations reduction22391.input reduction22391.output := by lin_cert using reduction22391.terms
theorem substitutionProof22391 : IsMapEvaluation generatorImages reduction22391.relations [8,64,64,238] reduction22391.output := by lin_cert using reduction22391.terms
def image22392 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22392 : InImage map_49_258 image22392 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22392 : Bundle := named_bundle% "RealMapCertificates/relations/basis22392.json"
theorem reductionProof22392 : EqualModuloRelations reduction22392.relations reduction22392.input reduction22392.output := by lin_cert using reduction22392.terms
theorem substitutionProof22392 : IsMapEvaluation generatorImages reduction22392.relations [8,8,8,8,8,8,559] reduction22392.output := by lin_cert using reduction22392.terms
def image22393 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22393 : InImage map_49_258 image22393 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22393 : Bundle := named_bundle% "RealMapCertificates/relations/basis22393.json"
theorem reductionProof22393 : EqualModuloRelations reduction22393.relations reduction22393.input reduction22393.output := by lin_cert using reduction22393.terms
theorem substitutionProof22393 : IsMapEvaluation generatorImages reduction22393.relations [8,8,8,8,8,8,13,13,13,13,51] reduction22393.output := by lin_cert using reduction22393.terms
def image22394 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22394 : InImage map_49_258 image22394 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22394 : Bundle := named_bundle% "RealMapCertificates/relations/basis22394.json"
theorem reductionProof22394 : EqualModuloRelations reduction22394.relations reduction22394.input reduction22394.output := by lin_cert using reduction22394.terms
theorem substitutionProof22394 : IsMapEvaluation generatorImages reduction22394.relations [8,8,8,8,8,8,8,8,9,13,80] reduction22394.output := by lin_cert using reduction22394.terms
def image22395 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22395 : InImage map_49_258 image22395 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22395 : Bundle := named_bundle% "RealMapCertificates/relations/basis22395.json"
theorem reductionProof22395 : EqualModuloRelations reduction22395.relations reduction22395.input reduction22395.output := by lin_cert using reduction22395.terms
theorem substitutionProof22395 : IsMapEvaluation generatorImages reduction22395.relations [0,8,8,64,623] reduction22395.output := by lin_cert using reduction22395.terms
def map_49_259 : Matrix 2 3 := fun i j => ([true,false,false,false,true,false] : List Bool)[i.val*3+j.val]!
def image22716 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22716 : InImage map_49_259 image22716 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22716 : Bundle := named_bundle% "RealMapCertificates/relations/basis22716.json"
theorem reductionProof22716 : EqualModuloRelations reduction22716.relations reduction22716.input reduction22716.output := by lin_cert using reduction22716.terms
theorem substitutionProof22716 : IsMapEvaluation generatorImages reduction22716.relations [8,8,8,1288] reduction22716.output := by lin_cert using reduction22716.terms
def image22717 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation22717 : InImage map_49_259 image22717 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22717 : Bundle := named_bundle% "RealMapCertificates/relations/basis22717.json"
theorem reductionProof22717 : EqualModuloRelations reduction22717.relations reduction22717.input reduction22717.output := by lin_cert using reduction22717.terms
theorem substitutionProof22717 : IsMapEvaluation generatorImages reduction22717.relations [0,16,1686] reduction22717.output := by lin_cert using reduction22717.terms
def image22718 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22718 : InImage map_49_259 image22718 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22718 : Bundle := named_bundle% "RealMapCertificates/relations/basis22718.json"
theorem reductionProof22718 : EqualModuloRelations reduction22718.relations reduction22718.input reduction22718.output := by lin_cert using reduction22718.terms
theorem substitutionProof22718 : IsMapEvaluation generatorImages reduction22718.relations [0,0,8,8,113,491] reduction22718.output := by lin_cert using reduction22718.terms
def map_49_260 : Matrix 1 7 := fun i j => ([false,false,false,false,true,false,false] : List Bool)[i.val*7+j.val]!
def image23061 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23061 : InImage map_49_260 image23061 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23061 : Bundle := named_bundle% "RealMapCertificates/relations/basis23061.json"
theorem reductionProof23061 : EqualModuloRelations reduction23061.relations reduction23061.input reduction23061.output := by lin_cert using reduction23061.terms
theorem substitutionProof23061 : IsMapEvaluation generatorImages reduction23061.relations [137,795] reduction23061.output := by lin_cert using reduction23061.terms
def image23062 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23062 : InImage map_49_260 image23062 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23062 : Bundle := named_bundle% "RealMapCertificates/relations/basis23062.json"
theorem reductionProof23062 : EqualModuloRelations reduction23062.relations reduction23062.input reduction23062.output := by lin_cert using reduction23062.terms
theorem substitutionProof23062 : IsMapEvaluation generatorImages reduction23062.relations [64,1121] reduction23062.output := by lin_cert using reduction23062.terms
def image23063 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23063 : InImage map_49_260 image23063 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23063 : Bundle := named_bundle% "RealMapCertificates/relations/basis23063.json"
theorem reductionProof23063 : EqualModuloRelations reduction23063.relations reduction23063.input reduction23063.output := by lin_cert using reduction23063.terms
theorem substitutionProof23063 : IsMapEvaluation generatorImages reduction23063.relations [8,8,8,8,8,113,149] reduction23063.output := by lin_cert using reduction23063.terms
def image23064 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23064 : InImage map_49_260 image23064 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23064 : Bundle := named_bundle% "RealMapCertificates/relations/basis23064.json"
theorem reductionProof23064 : EqualModuloRelations reduction23064.relations reduction23064.input reduction23064.output := by lin_cert using reduction23064.terms
theorem substitutionProof23064 : IsMapEvaluation generatorImages reduction23064.relations [8,8,8,8,8,8,17,278] reduction23064.output := by lin_cert using reduction23064.terms
def image23065 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23065 : InImage map_49_260 image23065 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23065 : Bundle := named_bundle% "RealMapCertificates/relations/basis23065.json"
theorem reductionProof23065 : EqualModuloRelations reduction23065.relations reduction23065.input reduction23065.output := by lin_cert using reduction23065.terms
theorem substitutionProof23065 : IsMapEvaluation generatorImages reduction23065.relations [8,8,8,8,8,8,8,13,219] reduction23065.output := by lin_cert using reduction23065.terms
def image23066 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23066 : InImage map_49_260 image23066 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23066 : Bundle := named_bundle% "RealMapCertificates/relations/basis23066.json"
theorem reductionProof23066 : EqualModuloRelations reduction23066.relations reduction23066.input reduction23066.output := by lin_cert using reduction23066.terms
theorem substitutionProof23066 : IsMapEvaluation generatorImages reduction23066.relations [0,245,491] reduction23066.output := by lin_cert using reduction23066.terms
def image23067 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23067 : InImage map_49_260 image23067 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23067 : Bundle := named_bundle% "RealMapCertificates/relations/basis23067.json"
theorem reductionProof23067 : EqualModuloRelations reduction23067.relations reduction23067.input reduction23067.output := by lin_cert using reduction23067.terms
theorem substitutionProof23067 : IsMapEvaluation generatorImages reduction23067.relations [0,0,17,1686] reduction23067.output := by lin_cert using reduction23067.terms
def map_49_261 : Matrix 3 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23508 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23508 : InImage map_49_261 image23508 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23508 : Bundle := named_bundle% "RealMapCertificates/relations/basis23508.json"
theorem reductionProof23508 : EqualModuloRelations reduction23508.relations reduction23508.input reduction23508.output := by lin_cert using reduction23508.terms
theorem substitutionProof23508 : IsMapEvaluation generatorImages reduction23508.relations [8,16,64,64,138] reduction23508.output := by lin_cert using reduction23508.terms
def image23509 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation23509 : InImage map_49_261 image23509 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23509 : Bundle := named_bundle% "RealMapCertificates/relations/basis23509.json"
theorem reductionProof23509 : EqualModuloRelations reduction23509.relations reduction23509.input reduction23509.output := by lin_cert using reduction23509.terms
theorem substitutionProof23509 : IsMapEvaluation generatorImages reduction23509.relations [8,8,8,8,8,9,13,13,13,13,51] reduction23509.output := by lin_cert using reduction23509.terms
def image23510 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23510 : InImage map_49_261 image23510 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23510 : Bundle := named_bundle% "RealMapCertificates/relations/basis23510.json"
theorem reductionProof23510 : EqualModuloRelations reduction23510.relations reduction23510.input reduction23510.output := by lin_cert using reduction23510.terms
theorem substitutionProof23510 : IsMapEvaluation generatorImages reduction23510.relations [8,8,8,8,8,8,580] reduction23510.output := by lin_cert using reduction23510.terms
def image23511 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23511 : InImage map_49_261 image23511 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23511 : Bundle := named_bundle% "RealMapCertificates/relations/basis23511.json"
theorem reductionProof23511 : EqualModuloRelations reduction23511.relations reduction23511.input reduction23511.output := by lin_cert using reduction23511.terms
theorem substitutionProof23511 : IsMapEvaluation generatorImages reduction23511.relations [8,8,8,8,8,8,8,8,13,13,80] reduction23511.output := by lin_cert using reduction23511.terms
def image23512 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23512 : InImage map_49_261 image23512 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23512 : Bundle := named_bundle% "RealMapCertificates/relations/basis23512.json"
theorem reductionProof23512 : EqualModuloRelations reduction23512.relations reduction23512.input reduction23512.output := by lin_cert using reduction23512.terms
theorem substitutionProof23512 : IsMapEvaluation generatorImages reduction23512.relations [0,8,8,8,64,491] reduction23512.output := by lin_cert using reduction23512.terms
def image23513 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23513 : InImage map_49_261 image23513 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23513 : Bundle := named_bundle% "RealMapCertificates/relations/basis23513.json"
theorem reductionProof23513 : EqualModuloRelations reduction23513.relations reduction23513.input reduction23513.output := by lin_cert using reduction23513.terms
theorem substitutionProof23513 : IsMapEvaluation generatorImages reduction23513.relations [0,0,246,491] reduction23513.output := by lin_cert using reduction23513.terms
def map_50_50 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image257 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation257 : InImage map_50_50 image257 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction257 : Bundle := named_bundle% "RealMapCertificates/relations/basis257.json"
theorem reductionProof257 : EqualModuloRelations reduction257.relations reduction257.input reduction257.output := by lin_cert using reduction257.terms
theorem substitutionProof257 : IsMapEvaluation generatorImages reduction257.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction257.output := by lin_cert using reduction257.terms
def map_50_148 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3795 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3795 : InImage map_50_148 image3795 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3795 : Bundle := named_bundle% "RealMapCertificates/relations/basis3795.json"
theorem reductionProof3795 : EqualModuloRelations reduction3795.relations reduction3795.input reduction3795.output := by lin_cert using reduction3795.terms
theorem substitutionProof3795 : IsMapEvaluation generatorImages reduction3795.relations [1,515] reduction3795.output := by lin_cert using reduction3795.terms
def map_50_149 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3873 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3873 : InImage map_50_149 image3873 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3873 : Bundle := named_bundle% "RealMapCertificates/relations/basis3873.json"
theorem reductionProof3873 : EqualModuloRelations reduction3873.relations reduction3873.input reduction3873.output := by lin_cert using reduction3873.terms
theorem substitutionProof3873 : IsMapEvaluation generatorImages reduction3873.relations [0,536] reduction3873.output := by lin_cert using reduction3873.terms
def map_50_152 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4143 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4143 : InImage map_50_152 image4143 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4143 : Bundle := named_bundle% "RealMapCertificates/relations/basis4143.json"
theorem reductionProof4143 : EqualModuloRelations reduction4143.relations reduction4143.input reduction4143.output := by lin_cert using reduction4143.terms
theorem substitutionProof4143 : IsMapEvaluation generatorImages reduction4143.relations [0,0,553] reduction4143.output := by lin_cert using reduction4143.terms
def map_50_153 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4232 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4232 : InImage map_50_153 image4232 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4232 : Bundle := named_bundle% "RealMapCertificates/relations/basis4232.json"
theorem reductionProof4232 : EqualModuloRelations reduction4232.relations reduction4232.input reduction4232.output := by lin_cert using reduction4232.terms
theorem substitutionProof4232 : IsMapEvaluation generatorImages reduction4232.relations [0,0,0,554] reduction4232.output := by lin_cert using reduction4232.terms
def map_50_154 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4324 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation4324 : InImage map_50_154 image4324 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4324 : Bundle := named_bundle% "RealMapCertificates/relations/basis4324.json"
theorem reductionProof4324 : EqualModuloRelations reduction4324.relations reduction4324.input reduction4324.output := by lin_cert using reduction4324.terms
theorem substitutionProof4324 : IsMapEvaluation generatorImages reduction4324.relations [1,1,553] reduction4324.output := by lin_cert using reduction4324.terms
def map_50_155 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4399 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4399 : InImage map_50_155 image4399 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4399 : Bundle := named_bundle% "RealMapCertificates/relations/basis4399.json"
theorem reductionProof4399 : EqualModuloRelations reduction4399.relations reduction4399.input reduction4399.output := by lin_cert using reduction4399.terms
theorem substitutionProof4399 : IsMapEvaluation generatorImages reduction4399.relations [0,0,578] reduction4399.output := by lin_cert using reduction4399.terms
def map_50_158 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4660 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation4660 : InImage map_50_158 image4660 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4660 : Bundle := named_bundle% "RealMapCertificates/relations/basis4660.json"
theorem reductionProof4660 : EqualModuloRelations reduction4660.relations reduction4660.input reduction4660.output := by lin_cert using reduction4660.terms
theorem substitutionProof4660 : IsMapEvaluation generatorImages reduction4660.relations [0,0,8,431] reduction4660.output := by lin_cert using reduction4660.terms
def map_50_160 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4841 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4841 : InImage map_50_160 image4841 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4841 : Bundle := named_bundle% "RealMapCertificates/relations/basis4841.json"
theorem reductionProof4841 : EqualModuloRelations reduction4841.relations reduction4841.input reduction4841.output := by lin_cert using reduction4841.terms
theorem substitutionProof4841 : IsMapEvaluation generatorImages reduction4841.relations [0,0,0,0,17,296] reduction4841.output := by lin_cert using reduction4841.terms
def map_50_161 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image4921 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4921 : InImage map_50_161 image4921 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction4921 : Bundle := named_bundle% "RealMapCertificates/relations/basis4921.json"
theorem reductionProof4921 : EqualModuloRelations reduction4921.relations reduction4921.input reduction4921.output := by lin_cert using reduction4921.terms
theorem substitutionProof4921 : IsMapEvaluation generatorImages reduction4921.relations [0,0,8,469] reduction4921.output := by lin_cert using reduction4921.terms
def image4922 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4922 : InImage map_50_161 image4922 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction4922 : Bundle := named_bundle% "RealMapCertificates/relations/basis4922.json"
theorem reductionProof4922 : EqualModuloRelations reduction4922.relations reduction4922.input reduction4922.output := by lin_cert using reduction4922.terms
theorem substitutionProof4922 : IsMapEvaluation generatorImages reduction4922.relations [0,0,0,0,0,606] reduction4922.output := by lin_cert using reduction4922.terms
def map_50_164 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5210 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5210 : InImage map_50_164 image5210 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5210 : Bundle := named_bundle% "RealMapCertificates/relations/basis5210.json"
theorem reductionProof5210 : EqualModuloRelations reduction5210.relations reduction5210.input reduction5210.output := by lin_cert using reduction5210.terms
theorem substitutionProof5210 : IsMapEvaluation generatorImages reduction5210.relations [0,0,8,8,295] reduction5210.output := by lin_cert using reduction5210.terms
def map_50_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5535 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5535 : InImage map_50_167 image5535 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5535 : Bundle := named_bundle% "RealMapCertificates/relations/basis5535.json"
theorem reductionProof5535 : EqualModuloRelations reduction5535.relations reduction5535.input reduction5535.output := by lin_cert using reduction5535.terms
theorem substitutionProof5535 : IsMapEvaluation generatorImages reduction5535.relations [0,0,0,0,0,0,0,0,635] reduction5535.output := by lin_cert using reduction5535.terms
def map_50_170 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5860 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5860 : InImage map_50_170 image5860 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5860 : Bundle := named_bundle% "RealMapCertificates/relations/basis5860.json"
theorem reductionProof5860 : EqualModuloRelations reduction5860.relations reduction5860.input reduction5860.output := by lin_cert using reduction5860.terms
theorem substitutionProof5860 : IsMapEvaluation generatorImages reduction5860.relations [1,736] reduction5860.output := by lin_cert using reduction5860.terms
def map_50_171 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5973 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5973 : InImage map_50_171 image5973 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5973 : Bundle := named_bundle% "RealMapCertificates/relations/basis5973.json"
theorem reductionProof5973 : EqualModuloRelations reduction5973.relations reduction5973.input reduction5973.output := by lin_cert using reduction5973.terms
theorem substitutionProof5973 : IsMapEvaluation generatorImages reduction5973.relations [17,470] reduction5973.output := by lin_cert using reduction5973.terms
def map_50_174 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image6295 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation6295 : InImage map_50_174 image6295 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6295 : Bundle := named_bundle% "RealMapCertificates/relations/basis6295.json"
theorem reductionProof6295 : EqualModuloRelations reduction6295.relations reduction6295.input reduction6295.output := by lin_cert using reduction6295.terms
theorem substitutionProof6295 : IsMapEvaluation generatorImages reduction6295.relations [8,17,296] reduction6295.output := by lin_cert using reduction6295.terms
def map_50_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6534 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6534 : InImage map_50_176 image6534 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6534 : Bundle := named_bundle% "RealMapCertificates/relations/basis6534.json"
theorem reductionProof6534 : EqualModuloRelations reduction6534.relations reduction6534.input reduction6534.output := by lin_cert using reduction6534.terms
theorem substitutionProof6534 : IsMapEvaluation generatorImages reduction6534.relations [0,0,0,0,0,0,0,0,0,0,0,0,686] reduction6534.output := by lin_cert using reduction6534.terms
def map_50_177 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6654 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6654 : InImage map_50_177 image6654 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6654 : Bundle := named_bundle% "RealMapCertificates/relations/basis6654.json"
theorem reductionProof6654 : EqualModuloRelations reduction6654.relations reduction6654.input reduction6654.output := by lin_cert using reduction6654.terms
theorem substitutionProof6654 : IsMapEvaluation generatorImages reduction6654.relations [8,17,326] reduction6654.output := by lin_cert using reduction6654.terms
def image6655 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6655 : InImage map_50_177 image6655 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6655 : Bundle := named_bundle% "RealMapCertificates/relations/basis6655.json"
theorem reductionProof6655 : EqualModuloRelations reduction6655.relations reduction6655.input reduction6655.output := by lin_cert using reduction6655.terms
theorem substitutionProof6655 : IsMapEvaluation generatorImages reduction6655.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6655.output := by lin_cert using reduction6655.terms
def map_50_180 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image7013 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation7013 : InImage map_50_180 image7013 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7013 : Bundle := named_bundle% "RealMapCertificates/relations/basis7013.json"
theorem reductionProof7013 : EqualModuloRelations reduction7013.relations reduction7013.input reduction7013.output := by lin_cert using reduction7013.terms
theorem substitutionProof7013 : IsMapEvaluation generatorImages reduction7013.relations [8,16,17,183] reduction7013.output := by lin_cert using reduction7013.terms
def map_50_183 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image7377 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7377 : InImage map_50_183 image7377 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7377 : Bundle := named_bundle% "RealMapCertificates/relations/basis7377.json"
theorem reductionProof7377 : EqualModuloRelations reduction7377.relations reduction7377.input reduction7377.output := by lin_cert using reduction7377.terms
theorem substitutionProof7377 : IsMapEvaluation generatorImages reduction7377.relations [916] reduction7377.output := by lin_cert using reduction7377.terms
def image7378 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7378 : InImage map_50_183 image7378 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7378 : Bundle := named_bundle% "RealMapCertificates/relations/basis7378.json"
theorem reductionProof7378 : EqualModuloRelations reduction7378.relations reduction7378.input reduction7378.output := by lin_cert using reduction7378.terms
theorem substitutionProof7378 : IsMapEvaluation generatorImages reduction7378.relations [8,8,17,253] reduction7378.output := by lin_cert using reduction7378.terms
def map_50_184 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7518 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7518 : InImage map_50_184 image7518 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7518 : Bundle := named_bundle% "RealMapCertificates/relations/basis7518.json"
theorem reductionProof7518 : EqualModuloRelations reduction7518.relations reduction7518.input reduction7518.output := by lin_cert using reduction7518.terms
theorem substitutionProof7518 : IsMapEvaluation generatorImages reduction7518.relations [0,917] reduction7518.output := by lin_cert using reduction7518.terms
def map_50_186 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image7738 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7738 : InImage map_50_186 image7738 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7738 : Bundle := named_bundle% "RealMapCertificates/relations/basis7738.json"
theorem reductionProof7738 : EqualModuloRelations reduction7738.relations reduction7738.input reduction7738.output := by lin_cert using reduction7738.terms
theorem substitutionProof7738 : IsMapEvaluation generatorImages reduction7738.relations [952] reduction7738.output := by lin_cert using reduction7738.terms
def image7739 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation7739 : InImage map_50_186 image7739 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7739 : Bundle := named_bundle% "RealMapCertificates/relations/basis7739.json"
theorem reductionProof7739 : EqualModuloRelations reduction7739.relations reduction7739.input reduction7739.output := by lin_cert using reduction7739.terms
theorem substitutionProof7739 : IsMapEvaluation generatorImages reduction7739.relations [8,8,8,17,183] reduction7739.output := by lin_cert using reduction7739.terms
def map_50_187 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7879 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7879 : InImage map_50_187 image7879 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7879 : Bundle := named_bundle% "RealMapCertificates/relations/basis7879.json"
theorem reductionProof7879 : EqualModuloRelations reduction7879.relations reduction7879.input reduction7879.output := by lin_cert using reduction7879.terms
theorem substitutionProof7879 : IsMapEvaluation generatorImages reduction7879.relations [0,953] reduction7879.output := by lin_cert using reduction7879.terms
def map_50_189 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8089 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8089 : InImage map_50_189 image8089 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8089 : Bundle := named_bundle% "RealMapCertificates/relations/basis8089.json"
theorem reductionProof8089 : EqualModuloRelations reduction8089.relations reduction8089.input reduction8089.output := by lin_cert using reduction8089.terms
theorem substitutionProof8089 : IsMapEvaluation generatorImages reduction8089.relations [16,635] reduction8089.output := by lin_cert using reduction8089.terms
def image8090 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8090 : InImage map_50_189 image8090 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8090 : Bundle := named_bundle% "RealMapCertificates/relations/basis8090.json"
theorem reductionProof8090 : EqualModuloRelations reduction8090.relations reduction8090.input reduction8090.output := by lin_cert using reduction8090.terms
theorem substitutionProof8090 : IsMapEvaluation generatorImages reduction8090.relations [8,8,8,17,200] reduction8090.output := by lin_cert using reduction8090.terms
def map_50_190 : Matrix 4 2 := fun i j => ([true,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8226 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation8226 : InImage map_50_190 image8226 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8226 : Bundle := named_bundle% "RealMapCertificates/relations/basis8226.json"
theorem reductionProof8226 : EqualModuloRelations reduction8226.relations reduction8226.input reduction8226.output := by lin_cert using reduction8226.terms
theorem substitutionProof8226 : IsMapEvaluation generatorImages reduction8226.relations [0,16,636] reduction8226.output := by lin_cert using reduction8226.terms
def image8227 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation8227 : InImage map_50_190 image8227 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8227 : Bundle := named_bundle% "RealMapCertificates/relations/basis8227.json"
theorem reductionProof8227 : EqualModuloRelations reduction8227.relations reduction8227.input reduction8227.output := by lin_cert using reduction8227.terms
theorem substitutionProof8227 : IsMapEvaluation generatorImages reduction8227.relations [0,0,969] reduction8227.output := by lin_cert using reduction8227.terms
def map_50_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8337 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8337 : InImage map_50_191 image8337 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8337 : Bundle := named_bundle% "RealMapCertificates/relations/basis8337.json"
theorem reductionProof8337 : EqualModuloRelations reduction8337.relations reduction8337.input reduction8337.output := by lin_cert using reduction8337.terms
theorem substitutionProof8337 : IsMapEvaluation generatorImages reduction8337.relations [0,0,17,636] reduction8337.output := by lin_cert using reduction8337.terms
def map_50_192 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image8459 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8459 : InImage map_50_192 image8459 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction8459 : Bundle := named_bundle% "RealMapCertificates/relations/basis8459.json"
theorem reductionProof8459 : EqualModuloRelations reduction8459.relations reduction8459.input reduction8459.output := by lin_cert using reduction8459.terms
theorem substitutionProof8459 : IsMapEvaluation generatorImages reduction8459.relations [8,805] reduction8459.output := by lin_cert using reduction8459.terms
def image8460 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8460 : InImage map_50_192 image8460 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction8460 : Bundle := named_bundle% "RealMapCertificates/relations/basis8460.json"
theorem reductionProof8460 : EqualModuloRelations reduction8460.relations reduction8460.input reduction8460.output := by lin_cert using reduction8460.terms
theorem substitutionProof8460 : IsMapEvaluation generatorImages reduction8460.relations [8,8,8,16,17,111] reduction8460.output := by lin_cert using reduction8460.terms
def image8461 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8461 : InImage map_50_192 image8461 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction8461 : Bundle := named_bundle% "RealMapCertificates/relations/basis8461.json"
theorem reductionProof8461 : EqualModuloRelations reduction8461.relations reduction8461.input reduction8461.output := by lin_cert using reduction8461.terms
theorem substitutionProof8461 : IsMapEvaluation generatorImages reduction8461.relations [1,1,969] reduction8461.output := by lin_cert using reduction8461.terms
end RealMapCertificates
