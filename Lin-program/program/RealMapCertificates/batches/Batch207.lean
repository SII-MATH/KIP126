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
  | 56 => [[4,4,5,6]]
  | 59 => []
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 184 => []
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 245 => [[4,4,7,7,12]]
  | 246 => []
  | 297 => []
  | 344 => [[4,4,5,5,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 489 => [[4,4,4,5,5,8,12]]
  | 491 => []
  | 555 => []
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 725 => []
  | 752 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1031 => [[4,4,4,4,4,4,4,5,5,8,12]]
  | 1033 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1179 => [[4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1240 => [[4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1362 => [[0,0,4,4,4,4,4,4,9,12,12]]
  | 1471 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1566 => []
  | 1589 => []
  | 1591 => []
  | 1650 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1925 => [[4,4,4,4,4,4,7,7,7,12,12]]
  | _ => []
def map_50_193 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image8609 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8609 : InImage map_50_193 image8609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8609 : Bundle := named_bundle% "RealMapCertificates/relations/basis8609.json"
theorem reductionProof8609 : EqualModuloRelations reduction8609.relations reduction8609.input reduction8609.output := by lin_cert using reduction8609.terms
theorem substitutionProof8609 : IsMapEvaluation generatorImages reduction8609.relations [0,8,806] reduction8609.output := by lin_cert using reduction8609.terms
def image8610 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8610 : InImage map_50_193 image8610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8610 : Bundle := named_bundle% "RealMapCertificates/relations/basis8610.json"
theorem reductionProof8610 : EqualModuloRelations reduction8610.relations reduction8610.input reduction8610.output := by lin_cert using reduction8610.terms
theorem substitutionProof8610 : IsMapEvaluation generatorImages reduction8610.relations [0,0,1030] reduction8610.output := by lin_cert using reduction8610.terms
def map_50_195 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image8859 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8859 : InImage map_50_195 image8859 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8859 : Bundle := named_bundle% "RealMapCertificates/relations/basis8859.json"
theorem reductionProof8859 : EqualModuloRelations reduction8859.relations reduction8859.input reduction8859.output := by lin_cert using reduction8859.terms
theorem substitutionProof8859 : IsMapEvaluation generatorImages reduction8859.relations [8,8,635] reduction8859.output := by lin_cert using reduction8859.terms
def image8860 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8860 : InImage map_50_195 image8860 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8860 : Bundle := named_bundle% "RealMapCertificates/relations/basis8860.json"
theorem reductionProof8860 : EqualModuloRelations reduction8860.relations reduction8860.input reduction8860.output := by lin_cert using reduction8860.terms
theorem substitutionProof8860 : IsMapEvaluation generatorImages reduction8860.relations [8,8,8,8,17,153] reduction8860.output := by lin_cert using reduction8860.terms
def map_50_196 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image9011 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9011 : InImage map_50_196 image9011 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9011 : Bundle := named_bundle% "RealMapCertificates/relations/basis9011.json"
theorem reductionProof9011 : EqualModuloRelations reduction9011.relations reduction9011.input reduction9011.output := by lin_cert using reduction9011.terms
theorem substitutionProof9011 : IsMapEvaluation generatorImages reduction9011.relations [0,8,8,636] reduction9011.output := by lin_cert using reduction9011.terms
def image9012 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9012 : InImage map_50_196 image9012 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9012 : Bundle := named_bundle% "RealMapCertificates/relations/basis9012.json"
theorem reductionProof9012 : EqualModuloRelations reduction9012.relations reduction9012.input reduction9012.output := by lin_cert using reduction9012.terms
theorem substitutionProof9012 : IsMapEvaluation generatorImages reduction9012.relations [0,0,16,685] reduction9012.output := by lin_cert using reduction9012.terms
def map_50_197 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9135 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9135 : InImage map_50_197 image9135 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9135 : Bundle := named_bundle% "RealMapCertificates/relations/basis9135.json"
theorem reductionProof9135 : EqualModuloRelations reduction9135.relations reduction9135.input reduction9135.output := by lin_cert using reduction9135.terms
theorem substitutionProof9135 : IsMapEvaluation generatorImages reduction9135.relations [0,0,0,17,685] reduction9135.output := by lin_cert using reduction9135.terms
def map_50_198 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image9298 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9298 : InImage map_50_198 image9298 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction9298 : Bundle := named_bundle% "RealMapCertificates/relations/basis9298.json"
theorem reductionProof9298 : EqualModuloRelations reduction9298.relations reduction9298.input reduction9298.output := by lin_cert using reduction9298.terms
theorem substitutionProof9298 : IsMapEvaluation generatorImages reduction9298.relations [8,8,662] reduction9298.output := by lin_cert using reduction9298.terms
def image9299 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9299 : InImage map_50_198 image9299 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction9299 : Bundle := named_bundle% "RealMapCertificates/relations/basis9299.json"
theorem reductionProof9299 : EqualModuloRelations reduction9299.relations reduction9299.input reduction9299.output := by lin_cert using reduction9299.terms
theorem substitutionProof9299 : IsMapEvaluation generatorImages reduction9299.relations [8,8,8,8,8,17,111] reduction9299.output := by lin_cert using reduction9299.terms
def image9300 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9300 : InImage map_50_198 image9300 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction9300 : Bundle := named_bundle% "RealMapCertificates/relations/basis9300.json"
theorem reductionProof9300 : EqualModuloRelations reduction9300.relations reduction9300.input reduction9300.output := by lin_cert using reduction9300.terms
theorem substitutionProof9300 : IsMapEvaluation generatorImages reduction9300.relations [0,0,0,17,17,403] reduction9300.output := by lin_cert using reduction9300.terms
def map_50_199 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image9479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9479 : InImage map_50_199 image9479 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9479 : Bundle := named_bundle% "RealMapCertificates/relations/basis9479.json"
theorem reductionProof9479 : EqualModuloRelations reduction9479.relations reduction9479.input reduction9479.output := by lin_cert using reduction9479.terms
theorem substitutionProof9479 : IsMapEvaluation generatorImages reduction9479.relations [0,8,8,663] reduction9479.output := by lin_cert using reduction9479.terms
def image9480 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9480 : InImage map_50_199 image9480 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9480 : Bundle := named_bundle% "RealMapCertificates/relations/basis9480.json"
theorem reductionProof9480 : EqualModuloRelations reduction9480.relations reduction9480.input reduction9480.output := by lin_cert using reduction9480.terms
theorem substitutionProof9480 : IsMapEvaluation generatorImages reduction9480.relations [0,0,0,0,0,0,0,0,1033] reduction9480.output := by lin_cert using reduction9480.terms
def map_50_201 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9788 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9788 : InImage map_50_201 image9788 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9788 : Bundle := named_bundle% "RealMapCertificates/relations/basis9788.json"
theorem reductionProof9788 : EqualModuloRelations reduction9788.relations reduction9788.input reduction9788.output := by lin_cert using reduction9788.terms
theorem substitutionProof9788 : IsMapEvaluation generatorImages reduction9788.relations [8,8,16,402] reduction9788.output := by lin_cert using reduction9788.terms
def image9789 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9789 : InImage map_50_201 image9789 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9789 : Bundle := named_bundle% "RealMapCertificates/relations/basis9789.json"
theorem reductionProof9789 : EqualModuloRelations reduction9789.relations reduction9789.input reduction9789.output := by lin_cert using reduction9789.terms
theorem substitutionProof9789 : IsMapEvaluation generatorImages reduction9789.relations [8,8,8,8,8,17,117] reduction9789.output := by lin_cert using reduction9789.terms
def map_50_202 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9953 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9953 : InImage map_50_202 image9953 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9953 : Bundle := named_bundle% "RealMapCertificates/relations/basis9953.json"
theorem reductionProof9953 : EqualModuloRelations reduction9953.relations reduction9953.input reduction9953.output := by lin_cert using reduction9953.terms
theorem substitutionProof9953 : IsMapEvaluation generatorImages reduction9953.relations [1,1179] reduction9953.output := by lin_cert using reduction9953.terms
def image9954 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9954 : InImage map_50_202 image9954 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9954 : Bundle := named_bundle% "RealMapCertificates/relations/basis9954.json"
theorem reductionProof9954 : EqualModuloRelations reduction9954.relations reduction9954.input reduction9954.output := by lin_cert using reduction9954.terms
theorem substitutionProof9954 : IsMapEvaluation generatorImages reduction9954.relations [0,8,8,16,403] reduction9954.output := by lin_cert using reduction9954.terms
def map_50_203 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10093 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10093 : InImage map_50_203 image10093 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10093 : Bundle := named_bundle% "RealMapCertificates/relations/basis10093.json"
theorem reductionProof10093 : EqualModuloRelations reduction10093.relations reduction10093.input reduction10093.output := by lin_cert using reduction10093.terms
theorem substitutionProof10093 : IsMapEvaluation generatorImages reduction10093.relations [1240] reduction10093.output := by lin_cert using reduction10093.terms
def map_50_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10281 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10281 : InImage map_50_204 image10281 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10281 : Bundle := named_bundle% "RealMapCertificates/relations/basis10281.json"
theorem reductionProof10281 : EqualModuloRelations reduction10281.relations reduction10281.input reduction10281.output := by lin_cert using reduction10281.terms
theorem substitutionProof10281 : IsMapEvaluation generatorImages reduction10281.relations [8,8,8,555] reduction10281.output := by lin_cert using reduction10281.terms
def image10282 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10282 : InImage map_50_204 image10282 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10282 : Bundle := named_bundle% "RealMapCertificates/relations/basis10282.json"
theorem reductionProof10282 : EqualModuloRelations reduction10282.relations reduction10282.input reduction10282.output := by lin_cert using reduction10282.terms
theorem substitutionProof10282 : IsMapEvaluation generatorImages reduction10282.relations [8,8,8,8,8,16,17,50] reduction10282.output := by lin_cert using reduction10282.terms
def image10283 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10283 : InImage map_50_204 image10283 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10283 : Bundle := named_bundle% "RealMapCertificates/relations/basis10283.json"
theorem reductionProof10283 : EqualModuloRelations reduction10283.relations reduction10283.input reduction10283.output := by lin_cert using reduction10283.terms
theorem substitutionProof10283 : IsMapEvaluation generatorImages reduction10283.relations [0,0,0,0,0,0,64,402] reduction10283.output := by lin_cert using reduction10283.terms
def map_50_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10479 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10479 : InImage map_50_205 image10479 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10479 : Bundle := named_bundle% "RealMapCertificates/relations/basis10479.json"
theorem reductionProof10479 : EqualModuloRelations reduction10479.relations reduction10479.input reduction10479.output := by lin_cert using reduction10479.terms
theorem substitutionProof10479 : IsMapEvaluation generatorImages reduction10479.relations [0,0,0,0,0,0,0,64,403] reduction10479.output := by lin_cert using reduction10479.terms
def map_50_206 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image10619 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10619 : InImage map_50_206 image10619 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10619 : Bundle := named_bundle% "RealMapCertificates/relations/basis10619.json"
theorem reductionProof10619 : EqualModuloRelations reduction10619.relations reduction10619.input reduction10619.output := by lin_cert using reduction10619.terms
theorem substitutionProof10619 : IsMapEvaluation generatorImages reduction10619.relations [31,686] reduction10619.output := by lin_cert using reduction10619.terms
def map_50_207 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image10832 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10832 : InImage map_50_207 image10832 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10832 : Bundle := named_bundle% "RealMapCertificates/relations/basis10832.json"
theorem reductionProof10832 : EqualModuloRelations reduction10832.relations reduction10832.input reduction10832.output := by lin_cert using reduction10832.terms
theorem substitutionProof10832 : IsMapEvaluation generatorImages reduction10832.relations [8,8,8,8,402] reduction10832.output := by lin_cert using reduction10832.terms
def image10833 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10833 : InImage map_50_207 image10833 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10833 : Bundle := named_bundle% "RealMapCertificates/relations/basis10833.json"
theorem reductionProof10833 : EqualModuloRelations reduction10833.relations reduction10833.input reduction10833.output := by lin_cert using reduction10833.terms
theorem substitutionProof10833 : IsMapEvaluation generatorImages reduction10833.relations [8,8,8,8,8,8,17,78] reduction10833.output := by lin_cert using reduction10833.terms
def map_50_209 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11149 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11149 : InImage map_50_209 image11149 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11149 : Bundle := named_bundle% "RealMapCertificates/relations/basis11149.json"
theorem reductionProof11149 : EqualModuloRelations reduction11149.relations reduction11149.input reduction11149.output := by lin_cert using reduction11149.terms
theorem substitutionProof11149 : IsMapEvaluation generatorImages reduction11149.relations [8,1031] reduction11149.output := by lin_cert using reduction11149.terms
def map_50_210 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11340 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11340 : InImage map_50_210 image11340 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11340 : Bundle := named_bundle% "RealMapCertificates/relations/basis11340.json"
theorem reductionProof11340 : EqualModuloRelations reduction11340.relations reduction11340.input reduction11340.output := by lin_cert using reduction11340.terms
theorem substitutionProof11340 : IsMapEvaluation generatorImages reduction11340.relations [8,8,8,8,432] reduction11340.output := by lin_cert using reduction11340.terms
def image11341 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11341 : InImage map_50_210 image11341 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11341 : Bundle := named_bundle% "RealMapCertificates/relations/basis11341.json"
theorem reductionProof11341 : EqualModuloRelations reduction11341.relations reduction11341.input reduction11341.output := by lin_cert using reduction11341.terms
theorem substitutionProof11341 : IsMapEvaluation generatorImages reduction11341.relations [8,8,8,8,8,8,8,17,50] reduction11341.output := by lin_cert using reduction11341.terms
def map_50_212 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11681 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11681 : InImage map_50_212 image11681 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11681 : Bundle := named_bundle% "RealMapCertificates/relations/basis11681.json"
theorem reductionProof11681 : EqualModuloRelations reduction11681.relations reduction11681.input reduction11681.output := by lin_cert using reduction11681.terms
theorem substitutionProof11681 : IsMapEvaluation generatorImages reduction11681.relations [8,16,686] reduction11681.output := by lin_cert using reduction11681.terms
def map_50_213 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image11918 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation11918 : InImage map_50_213 image11918 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11918 : Bundle := named_bundle% "RealMapCertificates/relations/basis11918.json"
theorem reductionProof11918 : EqualModuloRelations reduction11918.relations reduction11918.input reduction11918.output := by lin_cert using reduction11918.terms
theorem substitutionProof11918 : IsMapEvaluation generatorImages reduction11918.relations [8,8,8,8,16,224] reduction11918.output := by lin_cert using reduction11918.terms
def image11919 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11919 : InImage map_50_213 image11919 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11919 : Bundle := named_bundle% "RealMapCertificates/relations/basis11919.json"
theorem reductionProof11919 : EqualModuloRelations reduction11919.relations reduction11919.input reduction11919.output := by lin_cert using reduction11919.terms
theorem substitutionProof11919 : IsMapEvaluation generatorImages reduction11919.relations [8,8,8,8,8,8,8,17,56] reduction11919.output := by lin_cert using reduction11919.terms
def map_50_214 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image12121 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12121 : InImage map_50_214 image12121 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12121 : Bundle := named_bundle% "RealMapCertificates/relations/basis12121.json"
theorem reductionProof12121 : EqualModuloRelations reduction12121.relations reduction12121.input reduction12121.output := by lin_cert using reduction12121.terms
theorem substitutionProof12121 : IsMapEvaluation generatorImages reduction12121.relations [1,5,64,402] reduction12121.output := by lin_cert using reduction12121.terms
def map_50_215 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12285 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12285 : InImage map_50_215 image12285 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12285 : Bundle := named_bundle% "RealMapCertificates/relations/basis12285.json"
theorem reductionProof12285 : EqualModuloRelations reduction12285.relations reduction12285.input reduction12285.output := by lin_cert using reduction12285.terms
theorem substitutionProof12285 : IsMapEvaluation generatorImages reduction12285.relations [1471] reduction12285.output := by lin_cert using reduction12285.terms
def image12286 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12286 : InImage map_50_215 image12286 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12286 : Bundle := named_bundle% "RealMapCertificates/relations/basis12286.json"
theorem reductionProof12286 : EqualModuloRelations reduction12286.relations reduction12286.input reduction12286.output := by lin_cert using reduction12286.terms
theorem substitutionProof12286 : IsMapEvaluation generatorImages reduction12286.relations [8,8,872] reduction12286.output := by lin_cert using reduction12286.terms
def map_50_216 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image12485 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation12485 : InImage map_50_216 image12485 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12485 : Bundle := named_bundle% "RealMapCertificates/relations/basis12485.json"
theorem reductionProof12485 : EqualModuloRelations reduction12485.relations reduction12485.input reduction12485.output := by lin_cert using reduction12485.terms
theorem substitutionProof12485 : IsMapEvaluation generatorImages reduction12485.relations [8,8,8,8,8,297] reduction12485.output := by lin_cert using reduction12485.terms
def image12486 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation12486 : InImage map_50_216 image12486 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12486 : Bundle := named_bundle% "RealMapCertificates/relations/basis12486.json"
theorem reductionProof12486 : EqualModuloRelations reduction12486.relations reduction12486.input reduction12486.output := by lin_cert using reduction12486.terms
theorem substitutionProof12486 : IsMapEvaluation generatorImages reduction12486.relations [8,8,8,8,8,8,8,16,17,17] reduction12486.output := by lin_cert using reduction12486.terms
def map_50_218 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12834 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation12834 : InImage map_50_218 image12834 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12834 : Bundle := named_bundle% "RealMapCertificates/relations/basis12834.json"
theorem reductionProof12834 : EqualModuloRelations reduction12834.relations reduction12834.input reduction12834.output := by lin_cert using reduction12834.terms
theorem substitutionProof12834 : IsMapEvaluation generatorImages reduction12834.relations [1514] reduction12834.output := by lin_cert using reduction12834.terms
def image12835 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12835 : InImage map_50_218 image12835 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12835 : Bundle := named_bundle% "RealMapCertificates/relations/basis12835.json"
theorem reductionProof12835 : EqualModuloRelations reduction12835.relations reduction12835.input reduction12835.output := by lin_cert using reduction12835.terms
theorem substitutionProof12835 : IsMapEvaluation generatorImages reduction12835.relations [8,8,8,686] reduction12835.output := by lin_cert using reduction12835.terms
def map_50_219 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image13070 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation13070 : InImage map_50_219 image13070 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13070 : Bundle := named_bundle% "RealMapCertificates/relations/basis13070.json"
theorem reductionProof13070 : EqualModuloRelations reduction13070.relations reduction13070.input reduction13070.output := by lin_cert using reduction13070.terms
theorem substitutionProof13070 : IsMapEvaluation generatorImages reduction13070.relations [1534] reduction13070.output := by lin_cert using reduction13070.terms
def image13071 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13071 : InImage map_50_219 image13071 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13071 : Bundle := named_bundle% "RealMapCertificates/relations/basis13071.json"
theorem reductionProof13071 : EqualModuloRelations reduction13071.relations reduction13071.input reduction13071.output := by lin_cert using reduction13071.terms
theorem substitutionProof13071 : IsMapEvaluation generatorImages reduction13071.relations [8,8,8,8,8,8,224] reduction13071.output := by lin_cert using reduction13071.terms
def image13072 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13072 : InImage map_50_219 image13072 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13072 : Bundle := named_bundle% "RealMapCertificates/relations/basis13072.json"
theorem reductionProof13072 : EqualModuloRelations reduction13072.relations reduction13072.input reduction13072.output := by lin_cert using reduction13072.terms
theorem substitutionProof13072 : IsMapEvaluation generatorImages reduction13072.relations [8,8,8,8,8,8,8,8,17,40] reduction13072.output := by lin_cert using reduction13072.terms
def map_50_221 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13405 : InImage map_50_221 image13405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13405 : Bundle := named_bundle% "RealMapCertificates/relations/basis13405.json"
theorem reductionProof13405 : EqualModuloRelations reduction13405.relations reduction13405.input reduction13405.output := by lin_cert using reduction13405.terms
theorem substitutionProof13405 : IsMapEvaluation generatorImages reduction13405.relations [16,1033] reduction13405.output := by lin_cert using reduction13405.terms
def image13406 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13406 : InImage map_50_221 image13406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13406 : Bundle := named_bundle% "RealMapCertificates/relations/basis13406.json"
theorem reductionProof13406 : EqualModuloRelations reduction13406.relations reduction13406.input reduction13406.output := by lin_cert using reduction13406.terms
theorem substitutionProof13406 : IsMapEvaluation generatorImages reduction13406.relations [8,8,8,723] reduction13406.output := by lin_cert using reduction13406.terms
def map_50_222 : Matrix 4 4 := fun i j => ([false,false,true,false,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image13618 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation13618 : InImage map_50_222 image13618 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13618 : Bundle := named_bundle% "RealMapCertificates/relations/basis13618.json"
theorem reductionProof13618 : EqualModuloRelations reduction13618.relations reduction13618.input reduction13618.output := by lin_cert using reduction13618.terms
theorem substitutionProof13618 : IsMapEvaluation generatorImages reduction13618.relations [138,403] reduction13618.output := by lin_cert using reduction13618.terms
def image13619 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13619 : InImage map_50_222 image13619 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13619 : Bundle := named_bundle% "RealMapCertificates/relations/basis13619.json"
theorem reductionProof13619 : EqualModuloRelations reduction13619.relations reduction13619.input reduction13619.output := by lin_cert using reduction13619.terms
theorem substitutionProof13619 : IsMapEvaluation generatorImages reduction13619.relations [8,8,8,8,8,8,237] reduction13619.output := by lin_cert using reduction13619.terms
def image13620 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation13620 : InImage map_50_222 image13620 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13620 : Bundle := named_bundle% "RealMapCertificates/relations/basis13620.json"
theorem reductionProof13620 : EqualModuloRelations reduction13620.relations reduction13620.input reduction13620.output := by lin_cert using reduction13620.terms
theorem substitutionProof13620 : IsMapEvaluation generatorImages reduction13620.relations [8,8,8,8,8,8,8,8,8,17,17] reduction13620.output := by lin_cert using reduction13620.terms
def image13621 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13621 : InImage map_50_222 image13621 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13621 : Bundle := named_bundle% "RealMapCertificates/relations/basis13621.json"
theorem reductionProof13621 : EqualModuloRelations reduction13621.relations reduction13621.input reduction13621.output := by lin_cert using reduction13621.terms
theorem substitutionProof13621 : IsMapEvaluation generatorImages reduction13621.relations [0,17,1033] reduction13621.output := by lin_cert using reduction13621.terms
def map_50_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13818 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13818 : InImage map_50_223 image13818 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13818 : Bundle := named_bundle% "RealMapCertificates/relations/basis13818.json"
theorem reductionProof13818 : EqualModuloRelations reduction13818.relations reduction13818.input reduction13818.output := by lin_cert using reduction13818.terms
theorem substitutionProof13818 : IsMapEvaluation generatorImages reduction13818.relations [0,1591] reduction13818.output := by lin_cert using reduction13818.terms
def image13819 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13819 : InImage map_50_223 image13819 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13819 : Bundle := named_bundle% "RealMapCertificates/relations/basis13819.json"
theorem reductionProof13819 : EqualModuloRelations reduction13819.relations reduction13819.input reduction13819.output := by lin_cert using reduction13819.terms
theorem substitutionProof13819 : IsMapEvaluation generatorImages reduction13819.relations [0,1589] reduction13819.output := by lin_cert using reduction13819.terms
def map_50_224 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image13955 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13955 : InImage map_50_224 image13955 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13955 : Bundle := named_bundle% "RealMapCertificates/relations/basis13955.json"
theorem reductionProof13955 : EqualModuloRelations reduction13955.relations reduction13955.input reduction13955.output := by lin_cert using reduction13955.terms
theorem substitutionProof13955 : IsMapEvaluation generatorImages reduction13955.relations [8,1301] reduction13955.output := by lin_cert using reduction13955.terms
def image13956 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13956 : InImage map_50_224 image13956 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13956 : Bundle := named_bundle% "RealMapCertificates/relations/basis13956.json"
theorem reductionProof13956 : EqualModuloRelations reduction13956.relations reduction13956.input reduction13956.output := by lin_cert using reduction13956.terms
theorem substitutionProof13956 : IsMapEvaluation generatorImages reduction13956.relations [8,8,8,49,245] reduction13956.output := by lin_cert using reduction13956.terms
def image13957 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13957 : InImage map_50_224 image13957 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13957 : Bundle := named_bundle% "RealMapCertificates/relations/basis13957.json"
theorem reductionProof13957 : EqualModuloRelations reduction13957.relations reduction13957.input reduction13957.output := by lin_cert using reduction13957.terms
theorem substitutionProof13957 : IsMapEvaluation generatorImages reduction13957.relations [1,1589] reduction13957.output := by lin_cert using reduction13957.terms
def image13958 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13958 : InImage map_50_224 image13958 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13958 : Bundle := named_bundle% "RealMapCertificates/relations/basis13958.json"
theorem reductionProof13958 : EqualModuloRelations reduction13958.relations reduction13958.input reduction13958.output := by lin_cert using reduction13958.terms
theorem substitutionProof13958 : IsMapEvaluation generatorImages reduction13958.relations [0,0,0,1566] reduction13958.output := by lin_cert using reduction13958.terms
def map_50_225 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image14193 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14193 : InImage map_50_225 image14193 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14193 : Bundle := named_bundle% "RealMapCertificates/relations/basis14193.json"
theorem reductionProof14193 : EqualModuloRelations reduction14193.relations reduction14193.input reduction14193.output := by lin_cert using reduction14193.terms
theorem substitutionProof14193 : IsMapEvaluation generatorImages reduction14193.relations [8,1314] reduction14193.output := by lin_cert using reduction14193.terms
def image14194 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14194 : InImage map_50_225 image14194 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14194 : Bundle := named_bundle% "RealMapCertificates/relations/basis14194.json"
theorem reductionProof14194 : EqualModuloRelations reduction14194.relations reduction14194.input reduction14194.output := by lin_cert using reduction14194.terms
theorem substitutionProof14194 : IsMapEvaluation generatorImages reduction14194.relations [8,8,8,8,8,8,16,137] reduction14194.output := by lin_cert using reduction14194.terms
def image14195 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14195 : InImage map_50_225 image14195 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14195 : Bundle := named_bundle% "RealMapCertificates/relations/basis14195.json"
theorem reductionProof14195 : EqualModuloRelations reduction14195.relations reduction14195.input reduction14195.output := by lin_cert using reduction14195.terms
theorem substitutionProof14195 : IsMapEvaluation generatorImages reduction14195.relations [8,8,8,8,8,8,8,8,8,17,20] reduction14195.output := by lin_cert using reduction14195.terms
def image14196 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14196 : InImage map_50_225 image14196 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14196 : Bundle := named_bundle% "RealMapCertificates/relations/basis14196.json"
theorem reductionProof14196 : EqualModuloRelations reduction14196.relations reduction14196.input reduction14196.output := by lin_cert using reduction14196.terms
theorem substitutionProof14196 : IsMapEvaluation generatorImages reduction14196.relations [0,17,1076] reduction14196.output := by lin_cert using reduction14196.terms
def map_50_227 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image14527 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14527 : InImage map_50_227 image14527 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14527 : Bundle := named_bundle% "RealMapCertificates/relations/basis14527.json"
theorem reductionProof14527 : EqualModuloRelations reduction14527.relations reduction14527.input reduction14527.output := by lin_cert using reduction14527.terms
theorem substitutionProof14527 : IsMapEvaluation generatorImages reduction14527.relations [64,685] reduction14527.output := by lin_cert using reduction14527.terms
def image14528 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14528 : InImage map_50_227 image14528 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14528 : Bundle := named_bundle% "RealMapCertificates/relations/basis14528.json"
theorem reductionProof14528 : EqualModuloRelations reduction14528.relations reduction14528.input reduction14528.output := by lin_cert using reduction14528.terms
theorem substitutionProof14528 : IsMapEvaluation generatorImages reduction14528.relations [8,8,1033] reduction14528.output := by lin_cert using reduction14528.terms
def image14529 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14529 : InImage map_50_227 image14529 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14529 : Bundle := named_bundle% "RealMapCertificates/relations/basis14529.json"
theorem reductionProof14529 : EqualModuloRelations reduction14529.relations reduction14529.input reduction14529.output := by lin_cert using reduction14529.terms
theorem substitutionProof14529 : IsMapEvaluation generatorImages reduction14529.relations [8,8,8,8,596] reduction14529.output := by lin_cert using reduction14529.terms
def map_50_228 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image14756 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14756 : InImage map_50_228 image14756 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14756 : Bundle := named_bundle% "RealMapCertificates/relations/basis14756.json"
theorem reductionProof14756 : EqualModuloRelations reduction14756.relations reduction14756.input reduction14756.output := by lin_cert using reduction14756.terms
theorem substitutionProof14756 : IsMapEvaluation generatorImages reduction14756.relations [8,1362] reduction14756.output := by lin_cert using reduction14756.terms
def image14757 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14757 : InImage map_50_228 image14757 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14757 : Bundle := named_bundle% "RealMapCertificates/relations/basis14757.json"
theorem reductionProof14757 : EqualModuloRelations reduction14757.relations reduction14757.input reduction14757.output := by lin_cert using reduction14757.terms
theorem substitutionProof14757 : IsMapEvaluation generatorImages reduction14757.relations [8,8,8,8,8,8,8,184] reduction14757.output := by lin_cert using reduction14757.terms
def image14758 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14758 : InImage map_50_228 image14758 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14758 : Bundle := named_bundle% "RealMapCertificates/relations/basis14758.json"
theorem reductionProof14758 : EqualModuloRelations reduction14758.relations reduction14758.input reduction14758.output := by lin_cert using reduction14758.terms
theorem substitutionProof14758 : IsMapEvaluation generatorImages reduction14758.relations [8,8,8,8,8,8,8,8,8,16,23] reduction14758.output := by lin_cert using reduction14758.terms
def image14759 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14759 : InImage map_50_228 image14759 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14759 : Bundle := named_bundle% "RealMapCertificates/relations/basis14759.json"
theorem reductionProof14759 : EqualModuloRelations reduction14759.relations reduction14759.input reduction14759.output := by lin_cert using reduction14759.terms
theorem substitutionProof14759 : IsMapEvaluation generatorImages reduction14759.relations [0,138,452] reduction14759.output := by lin_cert using reduction14759.terms
def image14760 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14760 : InImage map_50_228 image14760 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14760 : Bundle := named_bundle% "RealMapCertificates/relations/basis14760.json"
theorem reductionProof14760 : EqualModuloRelations reduction14760.relations reduction14760.input reduction14760.output := by lin_cert using reduction14760.terms
theorem substitutionProof14760 : IsMapEvaluation generatorImages reduction14760.relations [0,16,17,725] reduction14760.output := by lin_cert using reduction14760.terms
def map_50_229 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image14971 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14971 : InImage map_50_229 image14971 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14971 : Bundle := named_bundle% "RealMapCertificates/relations/basis14971.json"
theorem reductionProof14971 : EqualModuloRelations reduction14971.relations reduction14971.input reduction14971.output := by lin_cert using reduction14971.terms
theorem substitutionProof14971 : IsMapEvaluation generatorImages reduction14971.relations [0,0,17,17,725] reduction14971.output := by lin_cert using reduction14971.terms
def map_50_230 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image15119 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15119 : InImage map_50_230 image15119 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15119 : Bundle := named_bundle% "RealMapCertificates/relations/basis15119.json"
theorem reductionProof15119 : EqualModuloRelations reduction15119.relations reduction15119.input reduction15119.output := by lin_cert using reduction15119.terms
theorem substitutionProof15119 : IsMapEvaluation generatorImages reduction15119.relations [64,722] reduction15119.output := by lin_cert using reduction15119.terms
def image15120 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15120 : InImage map_50_230 image15120 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15120 : Bundle := named_bundle% "RealMapCertificates/relations/basis15120.json"
theorem reductionProof15120 : EqualModuloRelations reduction15120.relations reduction15120.input reduction15120.output := by lin_cert using reduction15120.terms
theorem substitutionProof15120 : IsMapEvaluation generatorImages reduction15120.relations [8,8,1076] reduction15120.output := by lin_cert using reduction15120.terms
def image15121 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15121 : InImage map_50_230 image15121 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15121 : Bundle := named_bundle% "RealMapCertificates/relations/basis15121.json"
theorem reductionProof15121 : EqualModuloRelations reduction15121.relations reduction15121.input reduction15121.output := by lin_cert using reduction15121.terms
theorem substitutionProof15121 : IsMapEvaluation generatorImages reduction15121.relations [8,8,8,8,31,245] reduction15121.output := by lin_cert using reduction15121.terms
def image15122 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15122 : InImage map_50_230 image15122 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15122 : Bundle := named_bundle% "RealMapCertificates/relations/basis15122.json"
theorem reductionProof15122 : EqualModuloRelations reduction15122.relations reduction15122.input reduction15122.output := by lin_cert using reduction15122.terms
theorem substitutionProof15122 : IsMapEvaluation generatorImages reduction15122.relations [0,0,0,224,246] reduction15122.output := by lin_cert using reduction15122.terms
def image15123 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15123 : InImage map_50_230 image15123 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15123 : Bundle := named_bundle% "RealMapCertificates/relations/basis15123.json"
theorem reductionProof15123 : EqualModuloRelations reduction15123.relations reduction15123.input reduction15123.output := by lin_cert using reduction15123.terms
theorem substitutionProof15123 : IsMapEvaluation generatorImages reduction15123.relations [0,0,0,59,725] reduction15123.output := by lin_cert using reduction15123.terms
def map_50_231 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image15380 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15380 : InImage map_50_231 image15380 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15380 : Bundle := named_bundle% "RealMapCertificates/relations/basis15380.json"
theorem reductionProof15380 : EqualModuloRelations reduction15380.relations reduction15380.input reduction15380.output := by lin_cert using reduction15380.terms
theorem substitutionProof15380 : IsMapEvaluation generatorImages reduction15380.relations [8,8,1093] reduction15380.output := by lin_cert using reduction15380.terms
def image15381 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15381 : InImage map_50_231 image15381 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15381 : Bundle := named_bundle% "RealMapCertificates/relations/basis15381.json"
theorem reductionProof15381 : EqualModuloRelations reduction15381.relations reduction15381.input reduction15381.output := by lin_cert using reduction15381.terms
theorem substitutionProof15381 : IsMapEvaluation generatorImages reduction15381.relations [8,8,8,8,8,8,8,8,137] reduction15381.output := by lin_cert using reduction15381.terms
def image15382 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15382 : InImage map_50_231 image15382 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15382 : Bundle := named_bundle% "RealMapCertificates/relations/basis15382.json"
theorem reductionProof15382 : EqualModuloRelations reduction15382.relations reduction15382.input reduction15382.output := by lin_cert using reduction15382.terms
theorem substitutionProof15382 : IsMapEvaluation generatorImages reduction15382.relations [8,8,8,8,8,8,8,8,8,8,45] reduction15382.output := by lin_cert using reduction15382.terms
def image15383 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15383 : InImage map_50_231 image15383 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15383 : Bundle := named_bundle% "RealMapCertificates/relations/basis15383.json"
theorem reductionProof15383 : EqualModuloRelations reduction15383.relations reduction15383.input reduction15383.output := by lin_cert using reduction15383.terms
theorem substitutionProof15383 : IsMapEvaluation generatorImages reduction15383.relations [0,8,17,896] reduction15383.output := by lin_cert using reduction15383.terms
def image15384 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15384 : InImage map_50_231 image15384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15384 : Bundle := named_bundle% "RealMapCertificates/relations/basis15384.json"
theorem reductionProof15384 : EqualModuloRelations reduction15384.relations reduction15384.input reduction15384.output := by lin_cert using reduction15384.terms
theorem substitutionProof15384 : IsMapEvaluation generatorImages reduction15384.relations [0,0,0,0,0,1650] reduction15384.output := by lin_cert using reduction15384.terms
def map_50_233 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image15773 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15773 : InImage map_50_233 image15773 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15773 : Bundle := named_bundle% "RealMapCertificates/relations/basis15773.json"
theorem reductionProof15773 : EqualModuloRelations reduction15773.relations reduction15773.input reduction15773.output := by lin_cert using reduction15773.terms
theorem substitutionProof15773 : IsMapEvaluation generatorImages reduction15773.relations [16,64,452] reduction15773.output := by lin_cert using reduction15773.terms
def image15774 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15774 : InImage map_50_233 image15774 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15774 : Bundle := named_bundle% "RealMapCertificates/relations/basis15774.json"
theorem reductionProof15774 : EqualModuloRelations reduction15774.relations reduction15774.input reduction15774.output := by lin_cert using reduction15774.terms
theorem substitutionProof15774 : IsMapEvaluation generatorImages reduction15774.relations [8,8,16,725] reduction15774.output := by lin_cert using reduction15774.terms
def image15775 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15775 : InImage map_50_233 image15775 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15775 : Bundle := named_bundle% "RealMapCertificates/relations/basis15775.json"
theorem reductionProof15775 : EqualModuloRelations reduction15775.relations reduction15775.input reduction15775.output := by lin_cert using reduction15775.terms
theorem substitutionProof15775 : IsMapEvaluation generatorImages reduction15775.relations [8,8,8,8,8,489] reduction15775.output := by lin_cert using reduction15775.terms
def map_50_234 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16020 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16020 : InImage map_50_234 image16020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16020 : Bundle := named_bundle% "RealMapCertificates/relations/basis16020.json"
theorem reductionProof16020 : EqualModuloRelations reduction16020.relations reduction16020.input reduction16020.output := by lin_cert using reduction16020.terms
theorem substitutionProof16020 : IsMapEvaluation generatorImages reduction16020.relations [8,8,138,225] reduction16020.output := by lin_cert using reduction16020.terms
def image16021 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16021 : InImage map_50_234 image16021 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16021 : Bundle := named_bundle% "RealMapCertificates/relations/basis16021.json"
theorem reductionProof16021 : EqualModuloRelations reduction16021.relations reduction16021.input reduction16021.output := by lin_cert using reduction16021.terms
theorem substitutionProof16021 : IsMapEvaluation generatorImages reduction16021.relations [8,8,8,8,8,8,8,8,146] reduction16021.output := by lin_cert using reduction16021.terms
def image16022 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation16022 : InImage map_50_234 image16022 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16022 : Bundle := named_bundle% "RealMapCertificates/relations/basis16022.json"
theorem reductionProof16022 : EqualModuloRelations reduction16022.relations reduction16022.input reduction16022.output := by lin_cert using reduction16022.terms
theorem substitutionProof16022 : IsMapEvaluation generatorImages reduction16022.relations [8,8,8,8,8,8,8,8,8,8,8,23] reduction16022.output := by lin_cert using reduction16022.terms
def image16023 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16023 : InImage map_50_234 image16023 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16023 : Bundle := named_bundle% "RealMapCertificates/relations/basis16023.json"
theorem reductionProof16023 : EqualModuloRelations reduction16023.relations reduction16023.input reduction16023.output := by lin_cert using reduction16023.terms
theorem substitutionProof16023 : IsMapEvaluation generatorImages reduction16023.relations [0,8,8,17,725] reduction16023.output := by lin_cert using reduction16023.terms
def image16024 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16024 : InImage map_50_234 image16024 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16024 : Bundle := named_bundle% "RealMapCertificates/relations/basis16024.json"
theorem reductionProof16024 : EqualModuloRelations reduction16024.relations reduction16024.input reduction16024.output := by lin_cert using reduction16024.terms
theorem substitutionProof16024 : IsMapEvaluation generatorImages reduction16024.relations [0,0,149,452] reduction16024.output := by lin_cert using reduction16024.terms
def map_50_235 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16251 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16251 : InImage map_50_235 image16251 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16251 : Bundle := named_bundle% "RealMapCertificates/relations/basis16251.json"
theorem reductionProof16251 : EqualModuloRelations reduction16251.relations reduction16251.input reduction16251.output := by lin_cert using reduction16251.terms
theorem substitutionProof16251 : IsMapEvaluation generatorImages reduction16251.relations [0,0,0,1771] reduction16251.output := by lin_cert using reduction16251.terms
def map_50_236 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16437 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16437 : InImage map_50_236 image16437 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16437 : Bundle := named_bundle% "RealMapCertificates/relations/basis16437.json"
theorem reductionProof16437 : EqualModuloRelations reduction16437.relations reduction16437.input reduction16437.output := by lin_cert using reduction16437.terms
theorem substitutionProof16437 : IsMapEvaluation generatorImages reduction16437.relations [8,64,595] reduction16437.output := by lin_cert using reduction16437.terms
def image16438 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16438 : InImage map_50_236 image16438 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16438 : Bundle := named_bundle% "RealMapCertificates/relations/basis16438.json"
theorem reductionProof16438 : EqualModuloRelations reduction16438.relations reduction16438.input reduction16438.output := by lin_cert using reduction16438.terms
theorem substitutionProof16438 : IsMapEvaluation generatorImages reduction16438.relations [8,8,8,896] reduction16438.output := by lin_cert using reduction16438.terms
def image16439 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16439 : InImage map_50_236 image16439 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16439 : Bundle := named_bundle% "RealMapCertificates/relations/basis16439.json"
theorem reductionProof16439 : EqualModuloRelations reduction16439.relations reduction16439.input reduction16439.output := by lin_cert using reduction16439.terms
theorem substitutionProof16439 : IsMapEvaluation generatorImages reduction16439.relations [8,8,8,8,8,16,245] reduction16439.output := by lin_cert using reduction16439.terms
def image16440 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16440 : InImage map_50_236 image16440 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16440 : Bundle := named_bundle% "RealMapCertificates/relations/basis16440.json"
theorem reductionProof16440 : EqualModuloRelations reduction16440.relations reduction16440.input reduction16440.output := by lin_cert using reduction16440.terms
theorem substitutionProof16440 : IsMapEvaluation generatorImages reduction16440.relations [1,1,149,452] reduction16440.output := by lin_cert using reduction16440.terms
def image16441 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16441 : InImage map_50_236 image16441 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16441 : Bundle := named_bundle% "RealMapCertificates/relations/basis16441.json"
theorem reductionProof16441 : EqualModuloRelations reduction16441.relations reduction16441.input reduction16441.output := by lin_cert using reduction16441.terms
theorem substitutionProof16441 : IsMapEvaluation generatorImages reduction16441.relations [0,0,0,0,0,0,64,725] reduction16441.output := by lin_cert using reduction16441.terms
def map_50_237 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image16696 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16696 : InImage map_50_237 image16696 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16696 : Bundle := named_bundle% "RealMapCertificates/relations/basis16696.json"
theorem reductionProof16696 : EqualModuloRelations reduction16696.relations reduction16696.input reduction16696.output := by lin_cert using reduction16696.terms
theorem substitutionProof16696 : IsMapEvaluation generatorImages reduction16696.relations [8,8,8,918] reduction16696.output := by lin_cert using reduction16696.terms
def image16697 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16697 : InImage map_50_237 image16697 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16697 : Bundle := named_bundle% "RealMapCertificates/relations/basis16697.json"
theorem reductionProof16697 : EqualModuloRelations reduction16697.relations reduction16697.input reduction16697.output := by lin_cert using reduction16697.terms
theorem substitutionProof16697 : IsMapEvaluation generatorImages reduction16697.relations [8,8,8,8,8,8,8,8,16,64] reduction16697.output := by lin_cert using reduction16697.terms
def image16698 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16698 : InImage map_50_237 image16698 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16698 : Bundle := named_bundle% "RealMapCertificates/relations/basis16698.json"
theorem reductionProof16698 : EqualModuloRelations reduction16698.relations reduction16698.input reduction16698.output := by lin_cert using reduction16698.terms
theorem substitutionProof16698 : IsMapEvaluation generatorImages reduction16698.relations [8,8,8,8,8,8,8,8,8,8,9,23] reduction16698.output := by lin_cert using reduction16698.terms
def image16699 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16699 : InImage map_50_237 image16699 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16699 : Bundle := named_bundle% "RealMapCertificates/relations/basis16699.json"
theorem reductionProof16699 : EqualModuloRelations reduction16699.relations reduction16699.input reduction16699.output := by lin_cert using reduction16699.terms
theorem substitutionProof16699 : IsMapEvaluation generatorImages reduction16699.relations [0,0,0,0,0,64,752] reduction16699.output := by lin_cert using reduction16699.terms
def image16700 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16700 : InImage map_50_237 image16700 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16700 : Bundle := named_bundle% "RealMapCertificates/relations/basis16700.json"
theorem reductionProof16700 : EqualModuloRelations reduction16700.relations reduction16700.input reduction16700.output := by lin_cert using reduction16700.terms
theorem substitutionProof16700 : IsMapEvaluation generatorImages reduction16700.relations [0,0,0,0,0,0,0,138,491] reduction16700.output := by lin_cert using reduction16700.terms
def map_50_238 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image16914 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16914 : InImage map_50_238 image16914 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16914 : Bundle := named_bundle% "RealMapCertificates/relations/basis16914.json"
theorem reductionProof16914 : EqualModuloRelations reduction16914.relations reduction16914.input reduction16914.output := by lin_cert using reduction16914.terms
theorem substitutionProof16914 : IsMapEvaluation generatorImages reduction16914.relations [0,0,0,0,0,0,0,0,0,0,1686] reduction16914.output := by lin_cert using reduction16914.terms
def map_50_239 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17127 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17127 : InImage map_50_239 image17127 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17127 : Bundle := named_bundle% "RealMapCertificates/relations/basis17127.json"
theorem reductionProof17127 : EqualModuloRelations reduction17127.relations reduction17127.input reduction17127.output := by lin_cert using reduction17127.terms
theorem substitutionProof17127 : IsMapEvaluation generatorImages reduction17127.relations [8,8,64,452] reduction17127.output := by lin_cert using reduction17127.terms
def image17128 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17128 : InImage map_50_239 image17128 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17128 : Bundle := named_bundle% "RealMapCertificates/relations/basis17128.json"
theorem reductionProof17128 : EqualModuloRelations reduction17128.relations reduction17128.input reduction17128.output := by lin_cert using reduction17128.terms
theorem substitutionProof17128 : IsMapEvaluation generatorImages reduction17128.relations [8,8,8,8,725] reduction17128.output := by lin_cert using reduction17128.terms
def image17129 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17129 : InImage map_50_239 image17129 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17129 : Bundle := named_bundle% "RealMapCertificates/relations/basis17129.json"
theorem reductionProof17129 : EqualModuloRelations reduction17129.relations reduction17129.input reduction17129.output := by lin_cert using reduction17129.terms
theorem substitutionProof17129 : IsMapEvaluation generatorImages reduction17129.relations [8,8,8,8,8,8,344] reduction17129.output := by lin_cert using reduction17129.terms
def image17130 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17130 : InImage map_50_239 image17130 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17130 : Bundle := named_bundle% "RealMapCertificates/relations/basis17130.json"
theorem reductionProof17130 : EqualModuloRelations reduction17130.relations reduction17130.input reduction17130.output := by lin_cert using reduction17130.terms
theorem substitutionProof17130 : IsMapEvaluation generatorImages reduction17130.relations [0,0,0,0,0,0,0,0,0,1735] reduction17130.output := by lin_cert using reduction17130.terms
def map_50_240 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image17395 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17395 : InImage map_50_240 image17395 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction17395 : Bundle := named_bundle% "RealMapCertificates/relations/basis17395.json"
theorem reductionProof17395 : EqualModuloRelations reduction17395.relations reduction17395.input reduction17395.output := by lin_cert using reduction17395.terms
theorem substitutionProof17395 : IsMapEvaluation generatorImages reduction17395.relations [8,8,8,954] reduction17395.output := by lin_cert using reduction17395.terms
def image17396 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17396 : InImage map_50_240 image17396 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction17396 : Bundle := named_bundle% "RealMapCertificates/relations/basis17396.json"
theorem reductionProof17396 : EqualModuloRelations reduction17396.relations reduction17396.input reduction17396.output := by lin_cert using reduction17396.terms
theorem substitutionProof17396 : IsMapEvaluation generatorImages reduction17396.relations [8,8,8,8,8,8,8,8,8,112] reduction17396.output := by lin_cert using reduction17396.terms
def image17397 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17397 : InImage map_50_240 image17397 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction17397 : Bundle := named_bundle% "RealMapCertificates/relations/basis17397.json"
theorem reductionProof17397 : EqualModuloRelations reduction17397.relations reduction17397.input reduction17397.output := by lin_cert using reduction17397.terms
theorem substitutionProof17397 : IsMapEvaluation generatorImages reduction17397.relations [8,8,8,8,8,8,8,8,8,8,13,23] reduction17397.output := by lin_cert using reduction17397.terms
def image17398 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17398 : InImage map_50_240 image17398 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction17398 : Bundle := named_bundle% "RealMapCertificates/relations/basis17398.json"
theorem reductionProof17398 : EqualModuloRelations reduction17398.relations reduction17398.input reduction17398.output := by lin_cert using reduction17398.terms
theorem substitutionProof17398 : IsMapEvaluation generatorImages reduction17398.relations [1,1925] reduction17398.output := by lin_cert using reduction17398.terms
def image17399 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17399 : InImage map_50_240 image17399 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction17399 : Bundle := named_bundle% "RealMapCertificates/relations/basis17399.json"
theorem reductionProof17399 : EqualModuloRelations reduction17399.relations reduction17399.input reduction17399.output := by lin_cert using reduction17399.terms
theorem substitutionProof17399 : IsMapEvaluation generatorImages reduction17399.relations [0,0,0,0,0,0,0,0,0,0,1736] reduction17399.output := by lin_cert using reduction17399.terms
end RealMapCertificates
