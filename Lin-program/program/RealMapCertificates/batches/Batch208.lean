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
  | 23 => [[7,7]]
  | 64 => []
  | 72 => []
  | 79 => []
  | 89 => []
  | 101 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 183 => [[4,4,4,4,4,4,4,7]]
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
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 257 => [[4,4,6,8,12]]
  | 258 => [[4,5,5,8,12]]
  | 260 => []
  | 277 => [[4,5,5,9,12]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 297 => []
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 343 => [[4,4,4,6,8,12]]
  | 380 => []
  | 404 => [[0,0,8,12,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 516 => []
  | 529 => [[0,0,4,8,12,12]]
  | 536 => [[2,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 557 => [[0,0,4,9,12,12]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 594 => [[3,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 606 => []
  | 623 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 637 => [[0,0,4,4,8,12,12]]
  | 664 => [[0,0,4,4,9,12,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 795 => []
  | 805 => []
  | 896 => []
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1287 => [[4,4,4,5,7,9,12,12]]
  | 1500 => [[4,4,4,4,5,7,9,12,12]]
  | 1551 => [[4,4,4,4,7,7,9,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1717 => [[4,4,4,4,4,5,7,9,12,12]]
  | 1737 => []
  | 2036 => [[4,4,4,4,4,4,5,7,9,12,12]]
  | 2119 => [[4,4,4,4,4,4,7,7,9,12,12]]
  | 2539 => [[4,4,4,4,6,8,12,12,12]]
  | _ => []
def map_50_241 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image17676 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17676 : InImage map_50_241 image17676 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17676 : Bundle := named_bundle% "RealMapCertificates/relations/basis17676.json"
theorem reductionProof17676 : EqualModuloRelations reduction17676.relations reduction17676.input reduction17676.output := by lin_cert using reduction17676.terms
theorem substitutionProof17676 : IsMapEvaluation generatorImages reduction17676.relations [2036] reduction17676.output := by lin_cert using reduction17676.terms
def image17677 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17677 : InImage map_50_241 image17677 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17677 : Bundle := named_bundle% "RealMapCertificates/relations/basis17677.json"
theorem reductionProof17677 : EqualModuloRelations reduction17677.relations reduction17677.input reduction17677.output := by lin_cert using reduction17677.terms
theorem substitutionProof17677 : IsMapEvaluation generatorImages reduction17677.relations [0,0,0,0,64,64,224] reduction17677.output := by lin_cert using reduction17677.terms
def image17678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17678 : InImage map_50_241 image17678 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17678 : Bundle := named_bundle% "RealMapCertificates/relations/basis17678.json"
theorem reductionProof17678 : EqualModuloRelations reduction17678.relations reduction17678.input reduction17678.output := by lin_cert using reduction17678.terms
theorem substitutionProof17678 : IsMapEvaluation generatorImages reduction17678.relations [0,0,0,0,0,0,0,0,0,0,0,1737] reduction17678.output := by lin_cert using reduction17678.terms
def map_50_242 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17896 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17896 : InImage map_50_242 image17896 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17896 : Bundle := named_bundle% "RealMapCertificates/relations/basis17896.json"
theorem reductionProof17896 : EqualModuloRelations reduction17896.relations reduction17896.input reduction17896.output := by lin_cert using reduction17896.terms
theorem substitutionProof17896 : IsMapEvaluation generatorImages reduction17896.relations [8,8,64,488] reduction17896.output := by lin_cert using reduction17896.terms
def image17897 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17897 : InImage map_50_242 image17897 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17897 : Bundle := named_bundle% "RealMapCertificates/relations/basis17897.json"
theorem reductionProof17897 : EqualModuloRelations reduction17897.relations reduction17897.input reduction17897.output := by lin_cert using reduction17897.terms
theorem substitutionProof17897 : IsMapEvaluation generatorImages reduction17897.relations [8,8,8,8,759] reduction17897.output := by lin_cert using reduction17897.terms
def image17898 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17898 : InImage map_50_242 image17898 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17898 : Bundle := named_bundle% "RealMapCertificates/relations/basis17898.json"
theorem reductionProof17898 : EqualModuloRelations reduction17898.relations reduction17898.input reduction17898.output := by lin_cert using reduction17898.terms
theorem substitutionProof17898 : IsMapEvaluation generatorImages reduction17898.relations [8,8,8,8,8,8,8,245] reduction17898.output := by lin_cert using reduction17898.terms
def image17899 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17899 : InImage map_50_242 image17899 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17899 : Bundle := named_bundle% "RealMapCertificates/relations/basis17899.json"
theorem reductionProof17899 : EqualModuloRelations reduction17899.relations reduction17899.input reduction17899.output := by lin_cert using reduction17899.terms
theorem substitutionProof17899 : IsMapEvaluation generatorImages reduction17899.relations [0,0,0,0,0,64,64,225] reduction17899.output := by lin_cert using reduction17899.terms
def map_50_243 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18183 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18183 : InImage map_50_243 image18183 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18183 : Bundle := named_bundle% "RealMapCertificates/relations/basis18183.json"
theorem reductionProof18183 : EqualModuloRelations reduction18183.relations reduction18183.input reduction18183.output := by lin_cert using reduction18183.terms
theorem substitutionProof18183 : IsMapEvaluation generatorImages reduction18183.relations [8,8,8,8,778] reduction18183.output := by lin_cert using reduction18183.terms
def image18184 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18184 : InImage map_50_243 image18184 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18184 : Bundle := named_bundle% "RealMapCertificates/relations/basis18184.json"
theorem reductionProof18184 : EqualModuloRelations reduction18184.relations reduction18184.input reduction18184.output := by lin_cert using reduction18184.terms
theorem substitutionProof18184 : IsMapEvaluation generatorImages reduction18184.relations [8,8,8,8,8,8,8,8,8,9,13,23] reduction18184.output := by lin_cert using reduction18184.terms
def image18185 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18185 : InImage map_50_243 image18185 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18185 : Bundle := named_bundle% "RealMapCertificates/relations/basis18185.json"
theorem reductionProof18185 : EqualModuloRelations reduction18185.relations reduction18185.input reduction18185.output := by lin_cert using reduction18185.terms
theorem substitutionProof18185 : IsMapEvaluation generatorImages reduction18185.relations [8,8,8,8,8,8,8,8,8,8,64] reduction18185.output := by lin_cert using reduction18185.terms
def map_50_244 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image18409 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18409 : InImage map_50_244 image18409 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18409 : Bundle := named_bundle% "RealMapCertificates/relations/basis18409.json"
theorem reductionProof18409 : EqualModuloRelations reduction18409.relations reduction18409.input reduction18409.output := by lin_cert using reduction18409.terms
theorem substitutionProof18409 : IsMapEvaluation generatorImages reduction18409.relations [2119] reduction18409.output := by lin_cert using reduction18409.terms
def map_50_245 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image18639 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18639 : InImage map_50_245 image18639 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18639 : Bundle := named_bundle% "RealMapCertificates/relations/basis18639.json"
theorem reductionProof18639 : EqualModuloRelations reduction18639.relations reduction18639.input reduction18639.output := by lin_cert using reduction18639.terms
theorem substitutionProof18639 : IsMapEvaluation generatorImages reduction18639.relations [8,8,16,64,244] reduction18639.output := by lin_cert using reduction18639.terms
def image18640 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18640 : InImage map_50_245 image18640 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18640 : Bundle := named_bundle% "RealMapCertificates/relations/basis18640.json"
theorem reductionProof18640 : EqualModuloRelations reduction18640.relations reduction18640.input reduction18640.output := by lin_cert using reduction18640.terms
theorem substitutionProof18640 : IsMapEvaluation generatorImages reduction18640.relations [8,8,8,8,16,491] reduction18640.output := by lin_cert using reduction18640.terms
def image18641 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18641 : InImage map_50_245 image18641 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18641 : Bundle := named_bundle% "RealMapCertificates/relations/basis18641.json"
theorem reductionProof18641 : EqualModuloRelations reduction18641.relations reduction18641.input reduction18641.output := by lin_cert using reduction18641.terms
theorem substitutionProof18641 : IsMapEvaluation generatorImages reduction18641.relations [8,8,8,8,8,8,8,258] reduction18641.output := by lin_cert using reduction18641.terms
def map_50_246 : Matrix 3 4 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18928 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18928 : InImage map_50_246 image18928 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18928 : Bundle := named_bundle% "RealMapCertificates/relations/basis18928.json"
theorem reductionProof18928 : EqualModuloRelations reduction18928.relations reduction18928.input reduction18928.output := by lin_cert using reduction18928.terms
theorem substitutionProof18928 : IsMapEvaluation generatorImages reduction18928.relations [8,8,8,8,138,138] reduction18928.output := by lin_cert using reduction18928.terms
def image18929 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation18929 : InImage map_50_246 image18929 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18929 : Bundle := named_bundle% "RealMapCertificates/relations/basis18929.json"
theorem reductionProof18929 : EqualModuloRelations reduction18929.relations reduction18929.input reduction18929.output := by lin_cert using reduction18929.terms
theorem substitutionProof18929 : IsMapEvaluation generatorImages reduction18929.relations [8,8,8,8,8,8,8,8,8,13,13,23] reduction18929.output := by lin_cert using reduction18929.terms
def image18930 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18930 : InImage map_50_246 image18930 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18930 : Bundle := named_bundle% "RealMapCertificates/relations/basis18930.json"
theorem reductionProof18930 : EqualModuloRelations reduction18930.relations reduction18930.input reduction18930.output := by lin_cert using reduction18930.terms
theorem substitutionProof18930 : IsMapEvaluation generatorImages reduction18930.relations [8,8,8,8,8,8,8,8,8,8,72] reduction18930.output := by lin_cert using reduction18930.terms
def image18931 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation18931 : InImage map_50_246 image18931 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18931 : Bundle := named_bundle% "RealMapCertificates/relations/basis18931.json"
theorem reductionProof18931 : EqualModuloRelations reduction18931.relations reduction18931.input reduction18931.output := by lin_cert using reduction18931.terms
theorem substitutionProof18931 : IsMapEvaluation generatorImages reduction18931.relations [1,5,64,725] reduction18931.output := by lin_cert using reduction18931.terms
def map_50_247 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image19207 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19207 : InImage map_50_247 image19207 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19207 : Bundle := named_bundle% "RealMapCertificates/relations/basis19207.json"
theorem reductionProof19207 : EqualModuloRelations reduction19207.relations reduction19207.input reduction19207.output := by lin_cert using reduction19207.terms
theorem substitutionProof19207 : IsMapEvaluation generatorImages reduction19207.relations [8,1717] reduction19207.output := by lin_cert using reduction19207.terms
def image19208 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19208 : InImage map_50_247 image19208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19208 : Bundle := named_bundle% "RealMapCertificates/relations/basis19208.json"
theorem reductionProof19208 : EqualModuloRelations reduction19208.relations reduction19208.input reduction19208.output := by lin_cert using reduction19208.terms
theorem substitutionProof19208 : IsMapEvaluation generatorImages reduction19208.relations [0,0,64,896] reduction19208.output := by lin_cert using reduction19208.terms
def map_50_248 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image19439 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19439 : InImage map_50_248 image19439 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19439 : Bundle := named_bundle% "RealMapCertificates/relations/basis19439.json"
theorem reductionProof19439 : EqualModuloRelations reduction19439.relations reduction19439.input reduction19439.output := by lin_cert using reduction19439.terms
theorem substitutionProof19439 : IsMapEvaluation generatorImages reduction19439.relations [8,8,8,64,343] reduction19439.output := by lin_cert using reduction19439.terms
def image19440 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19440 : InImage map_50_248 image19440 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19440 : Bundle := named_bundle% "RealMapCertificates/relations/basis19440.json"
theorem reductionProof19440 : EqualModuloRelations reduction19440.relations reduction19440.input reduction19440.output := by lin_cert using reduction19440.terms
theorem substitutionProof19440 : IsMapEvaluation generatorImages reduction19440.relations [8,8,8,8,8,623] reduction19440.output := by lin_cert using reduction19440.terms
def image19441 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation19441 : InImage map_50_248 image19441 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19441 : Bundle := named_bundle% "RealMapCertificates/relations/basis19441.json"
theorem reductionProof19441 : EqualModuloRelations reduction19441.relations reduction19441.input reduction19441.output := by lin_cert using reduction19441.terms
theorem substitutionProof19441 : IsMapEvaluation generatorImages reduction19441.relations [8,8,8,8,8,8,8,277] reduction19441.output := by lin_cert using reduction19441.terms
def image19442 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation19442 : InImage map_50_248 image19442 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19442 : Bundle := named_bundle% "RealMapCertificates/relations/basis19442.json"
theorem reductionProof19442 : EqualModuloRelations reduction19442.relations reduction19442.input reduction19442.output := by lin_cert using reduction19442.terms
theorem substitutionProof19442 : IsMapEvaluation generatorImages reduction19442.relations [0,0,0,0,0,0,64,64,244] reduction19442.output := by lin_cert using reduction19442.terms
def map_50_249 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image19744 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19744 : InImage map_50_249 image19744 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19744 : Bundle := named_bundle% "RealMapCertificates/relations/basis19744.json"
theorem reductionProof19744 : EqualModuloRelations reduction19744.relations reduction19744.input reduction19744.output := by lin_cert using reduction19744.terms
theorem substitutionProof19744 : IsMapEvaluation generatorImages reduction19744.relations [8,8,8,8,8,637] reduction19744.output := by lin_cert using reduction19744.terms
def image19745 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19745 : InImage map_50_249 image19745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19745 : Bundle := named_bundle% "RealMapCertificates/relations/basis19745.json"
theorem reductionProof19745 : EqualModuloRelations reduction19745.relations reduction19745.input reduction19745.output := by lin_cert using reduction19745.terms
theorem substitutionProof19745 : IsMapEvaluation generatorImages reduction19745.relations [8,8,8,8,8,8,8,8,9,13,13,23] reduction19745.output := by lin_cert using reduction19745.terms
def image19746 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19746 : InImage map_50_249 image19746 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19746 : Bundle := named_bundle% "RealMapCertificates/relations/basis19746.json"
theorem reductionProof19746 : EqualModuloRelations reduction19746.relations reduction19746.input reduction19746.output := by lin_cert using reduction19746.terms
theorem substitutionProof19746 : IsMapEvaluation generatorImages reduction19746.relations [8,8,8,8,8,8,8,8,8,8,79] reduction19746.output := by lin_cert using reduction19746.terms
def map_50_250 : Matrix 3 2 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image19991 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19991 : InImage map_50_250 image19991 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19991 : Bundle := named_bundle% "RealMapCertificates/relations/basis19991.json"
theorem reductionProof19991 : EqualModuloRelations reduction19991.relations reduction19991.input reduction19991.output := by lin_cert using reduction19991.terms
theorem substitutionProof19991 : IsMapEvaluation generatorImages reduction19991.relations [8,244,245] reduction19991.output := by lin_cert using reduction19991.terms
def image19992 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19992 : InImage map_50_250 image19992 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19992 : Bundle := named_bundle% "RealMapCertificates/relations/basis19992.json"
theorem reductionProof19992 : EqualModuloRelations reduction19992.relations reduction19992.input reduction19992.output := by lin_cert using reduction19992.terms
theorem substitutionProof19992 : IsMapEvaluation generatorImages reduction19992.relations [0,0,8,64,725] reduction19992.output := by lin_cert using reduction19992.terms
def map_50_251 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image20249 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20249 : InImage map_50_251 image20249 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20249 : Bundle := named_bundle% "RealMapCertificates/relations/basis20249.json"
theorem reductionProof20249 : EqualModuloRelations reduction20249.relations reduction20249.input reduction20249.output := by lin_cert using reduction20249.terms
theorem substitutionProof20249 : IsMapEvaluation generatorImages reduction20249.relations [8,8,8,8,64,244] reduction20249.output := by lin_cert using reduction20249.terms
def image20250 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20250 : InImage map_50_251 image20250 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20250 : Bundle := named_bundle% "RealMapCertificates/relations/basis20250.json"
theorem reductionProof20250 : EqualModuloRelations reduction20250.relations reduction20250.input reduction20250.output := by lin_cert using reduction20250.terms
theorem substitutionProof20250 : IsMapEvaluation generatorImages reduction20250.relations [8,8,8,8,8,8,491] reduction20250.output := by lin_cert using reduction20250.terms
def image20251 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20251 : InImage map_50_251 image20251 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20251 : Bundle := named_bundle% "RealMapCertificates/relations/basis20251.json"
theorem reductionProof20251 : EqualModuloRelations reduction20251.relations reduction20251.input reduction20251.output := by lin_cert using reduction20251.terms
theorem substitutionProof20251 : IsMapEvaluation generatorImages reduction20251.relations [8,8,8,8,8,8,8,8,207] reduction20251.output := by lin_cert using reduction20251.terms
def map_50_252 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image20549 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20549 : InImage map_50_252 image20549 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20549 : Bundle := named_bundle% "RealMapCertificates/relations/basis20549.json"
theorem reductionProof20549 : EqualModuloRelations reduction20549.relations reduction20549.input reduction20549.output := by lin_cert using reduction20549.terms
theorem substitutionProof20549 : IsMapEvaluation generatorImages reduction20549.relations [64,64,297] reduction20549.output := by lin_cert using reduction20549.terms
def image20550 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20550 : InImage map_50_252 image20550 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20550 : Bundle := named_bundle% "RealMapCertificates/relations/basis20550.json"
theorem reductionProof20550 : EqualModuloRelations reduction20550.relations reduction20550.input reduction20550.output := by lin_cert using reduction20550.terms
theorem substitutionProof20550 : IsMapEvaluation generatorImages reduction20550.relations [8,8,8,8,8,664] reduction20550.output := by lin_cert using reduction20550.terms
def image20551 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20551 : InImage map_50_252 image20551 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20551 : Bundle := named_bundle% "RealMapCertificates/relations/basis20551.json"
theorem reductionProof20551 : EqualModuloRelations reduction20551.relations reduction20551.input reduction20551.output := by lin_cert using reduction20551.terms
theorem substitutionProof20551 : IsMapEvaluation generatorImages reduction20551.relations [8,8,8,8,8,8,8,8,13,13,13,23] reduction20551.output := by lin_cert using reduction20551.terms
def image20552 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20552 : InImage map_50_252 image20552 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20552 : Bundle := named_bundle% "RealMapCertificates/relations/basis20552.json"
theorem reductionProof20552 : EqualModuloRelations reduction20552.relations reduction20552.input reduction20552.output := by lin_cert using reduction20552.terms
theorem substitutionProof20552 : IsMapEvaluation generatorImages reduction20552.relations [8,8,8,8,8,8,8,8,8,8,89] reduction20552.output := by lin_cert using reduction20552.terms
def map_50_253 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image20820 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20820 : InImage map_50_253 image20820 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20820 : Bundle := named_bundle% "RealMapCertificates/relations/basis20820.json"
theorem reductionProof20820 : EqualModuloRelations reduction20820.relations reduction20820.input reduction20820.output := by lin_cert using reduction20820.terms
theorem substitutionProof20820 : IsMapEvaluation generatorImages reduction20820.relations [8,8,1500] reduction20820.output := by lin_cert using reduction20820.terms
def image20821 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20821 : InImage map_50_253 image20821 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20821 : Bundle := named_bundle% "RealMapCertificates/relations/basis20821.json"
theorem reductionProof20821 : EqualModuloRelations reduction20821.relations reduction20821.input reduction20821.output := by lin_cert using reduction20821.terms
theorem substitutionProof20821 : IsMapEvaluation generatorImages reduction20821.relations [0,0,8,64,759] reduction20821.output := by lin_cert using reduction20821.terms
def map_50_254 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21077 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21077 : InImage map_50_254 image21077 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21077 : Bundle := named_bundle% "RealMapCertificates/relations/basis21077.json"
theorem reductionProof21077 : EqualModuloRelations reduction21077.relations reduction21077.input reduction21077.output := by lin_cert using reduction21077.terms
theorem substitutionProof21077 : IsMapEvaluation generatorImages reduction21077.relations [8,8,8,8,64,257] reduction21077.output := by lin_cert using reduction21077.terms
def image21078 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21078 : InImage map_50_254 image21078 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21078 : Bundle := named_bundle% "RealMapCertificates/relations/basis21078.json"
theorem reductionProof21078 : EqualModuloRelations reduction21078.relations reduction21078.input reduction21078.output := by lin_cert using reduction21078.terms
theorem substitutionProof21078 : IsMapEvaluation generatorImages reduction21078.relations [8,8,8,8,8,8,516] reduction21078.output := by lin_cert using reduction21078.terms
def image21079 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21079 : InImage map_50_254 image21079 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21079 : Bundle := named_bundle% "RealMapCertificates/relations/basis21079.json"
theorem reductionProof21079 : EqualModuloRelations reduction21079.relations reduction21079.input reduction21079.output := by lin_cert using reduction21079.terms
theorem substitutionProof21079 : IsMapEvaluation generatorImages reduction21079.relations [8,8,8,8,8,8,8,8,218] reduction21079.output := by lin_cert using reduction21079.terms
def map_50_255 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21427 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21427 : InImage map_50_255 image21427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21427 : Bundle := named_bundle% "RealMapCertificates/relations/basis21427.json"
theorem reductionProof21427 : EqualModuloRelations reduction21427.relations reduction21427.input reduction21427.output := by lin_cert using reduction21427.terms
theorem substitutionProof21427 : IsMapEvaluation generatorImages reduction21427.relations [8,64,64,224] reduction21427.output := by lin_cert using reduction21427.terms
def image21428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21428 : InImage map_50_255 image21428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21428 : Bundle := named_bundle% "RealMapCertificates/relations/basis21428.json"
theorem reductionProof21428 : EqualModuloRelations reduction21428.relations reduction21428.input reduction21428.output := by lin_cert using reduction21428.terms
theorem substitutionProof21428 : IsMapEvaluation generatorImages reduction21428.relations [8,8,8,8,8,8,529] reduction21428.output := by lin_cert using reduction21428.terms
def image21429 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21429 : InImage map_50_255 image21429 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21429 : Bundle := named_bundle% "RealMapCertificates/relations/basis21429.json"
theorem reductionProof21429 : EqualModuloRelations reduction21429.relations reduction21429.input reduction21429.output := by lin_cert using reduction21429.terms
theorem substitutionProof21429 : IsMapEvaluation generatorImages reduction21429.relations [8,8,8,8,8,8,8,9,13,13,13,23] reduction21429.output := by lin_cert using reduction21429.terms
def image21430 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21430 : InImage map_50_255 image21430 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21430 : Bundle := named_bundle% "RealMapCertificates/relations/basis21430.json"
theorem reductionProof21430 : EqualModuloRelations reduction21430.relations reduction21430.input reduction21430.output := by lin_cert using reduction21430.terms
theorem substitutionProof21430 : IsMapEvaluation generatorImages reduction21430.relations [8,8,8,8,8,8,8,8,8,8,101] reduction21430.output := by lin_cert using reduction21430.terms
def map_50_256 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image21710 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21710 : InImage map_50_256 image21710 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21710 : Bundle := named_bundle% "RealMapCertificates/relations/basis21710.json"
theorem reductionProof21710 : EqualModuloRelations reduction21710.relations reduction21710.input reduction21710.output := by lin_cert using reduction21710.terms
theorem substitutionProof21710 : IsMapEvaluation generatorImages reduction21710.relations [8,8,1551] reduction21710.output := by lin_cert using reduction21710.terms
def image21711 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21711 : InImage map_50_256 image21711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21711 : Bundle := named_bundle% "RealMapCertificates/relations/basis21711.json"
theorem reductionProof21711 : EqualModuloRelations reduction21711.relations reduction21711.input reduction21711.output := by lin_cert using reduction21711.terms
theorem substitutionProof21711 : IsMapEvaluation generatorImages reduction21711.relations [1,14,1686] reduction21711.output := by lin_cert using reduction21711.terms
def image21712 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21712 : InImage map_50_256 image21712 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21712 : Bundle := named_bundle% "RealMapCertificates/relations/basis21712.json"
theorem reductionProof21712 : EqualModuloRelations reduction21712.relations reduction21712.input reduction21712.output := by lin_cert using reduction21712.terms
theorem substitutionProof21712 : IsMapEvaluation generatorImages reduction21712.relations [0,0,8,16,64,491] reduction21712.output := by lin_cert using reduction21712.terms
def map_50_257 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22028 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22028 : InImage map_50_257 image22028 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22028 : Bundle := named_bundle% "RealMapCertificates/relations/basis22028.json"
theorem reductionProof22028 : EqualModuloRelations reduction22028.relations reduction22028.input reduction22028.output := by lin_cert using reduction22028.terms
theorem substitutionProof22028 : IsMapEvaluation generatorImages reduction22028.relations [8,8,8,8,16,64,149] reduction22028.output := by lin_cert using reduction22028.terms
def image22029 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22029 : InImage map_50_257 image22029 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22029 : Bundle := named_bundle% "RealMapCertificates/relations/basis22029.json"
theorem reductionProof22029 : EqualModuloRelations reduction22029.relations reduction22029.input reduction22029.output := by lin_cert using reduction22029.terms
theorem substitutionProof22029 : IsMapEvaluation generatorImages reduction22029.relations [8,8,8,8,8,8,16,260] reduction22029.output := by lin_cert using reduction22029.terms
def image22030 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22030 : InImage map_50_257 image22030 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22030 : Bundle := named_bundle% "RealMapCertificates/relations/basis22030.json"
theorem reductionProof22030 : EqualModuloRelations reduction22030.relations reduction22030.input reduction22030.output := by lin_cert using reduction22030.terms
theorem substitutionProof22030 : IsMapEvaluation generatorImages reduction22030.relations [8,8,8,8,8,8,8,8,233] reduction22030.output := by lin_cert using reduction22030.terms
def image22031 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22031 : InImage map_50_257 image22031 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22031 : Bundle := named_bundle% "RealMapCertificates/relations/basis22031.json"
theorem reductionProof22031 : EqualModuloRelations reduction22031.relations reduction22031.input reduction22031.output := by lin_cert using reduction22031.terms
theorem substitutionProof22031 : IsMapEvaluation generatorImages reduction22031.relations [0,0,2539] reduction22031.output := by lin_cert using reduction22031.terms
def map_50_258 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22386 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22386 : InImage map_50_258 image22386 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22386 : Bundle := named_bundle% "RealMapCertificates/relations/basis22386.json"
theorem reductionProof22386 : EqualModuloRelations reduction22386.relations reduction22386.input reduction22386.output := by lin_cert using reduction22386.terms
theorem substitutionProof22386 : IsMapEvaluation generatorImages reduction22386.relations [8,64,64,237] reduction22386.output := by lin_cert using reduction22386.terms
def image22387 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22387 : InImage map_50_258 image22387 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22387 : Bundle := named_bundle% "RealMapCertificates/relations/basis22387.json"
theorem reductionProof22387 : EqualModuloRelations reduction22387.relations reduction22387.input reduction22387.output := by lin_cert using reduction22387.terms
theorem substitutionProof22387 : IsMapEvaluation generatorImages reduction22387.relations [8,8,8,8,8,8,557] reduction22387.output := by lin_cert using reduction22387.terms
def image22388 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation22388 : InImage map_50_258 image22388 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22388 : Bundle := named_bundle% "RealMapCertificates/relations/basis22388.json"
theorem reductionProof22388 : EqualModuloRelations reduction22388.relations reduction22388.input reduction22388.output := by lin_cert using reduction22388.terms
theorem substitutionProof22388 : IsMapEvaluation generatorImages reduction22388.relations [8,8,8,8,8,8,8,13,13,13,13,23] reduction22388.output := by lin_cert using reduction22388.terms
def image22389 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22389 : InImage map_50_258 image22389 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22389 : Bundle := named_bundle% "RealMapCertificates/relations/basis22389.json"
theorem reductionProof22389 : EqualModuloRelations reduction22389.relations reduction22389.input reduction22389.output := by lin_cert using reduction22389.terms
theorem substitutionProof22389 : IsMapEvaluation generatorImages reduction22389.relations [8,8,8,8,8,8,8,8,8,9,101] reduction22389.output := by lin_cert using reduction22389.terms
def image22390 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation22390 : InImage map_50_258 image22390 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22390 : Bundle := named_bundle% "RealMapCertificates/relations/basis22390.json"
theorem reductionProof22390 : EqualModuloRelations reduction22390.relations reduction22390.input reduction22390.output := by lin_cert using reduction22390.terms
theorem substitutionProof22390 : IsMapEvaluation generatorImages reduction22390.relations [1,5,64,64,244] reduction22390.output := by lin_cert using reduction22390.terms
def map_50_259 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image22714 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22714 : InImage map_50_259 image22714 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22714 : Bundle := named_bundle% "RealMapCertificates/relations/basis22714.json"
theorem reductionProof22714 : EqualModuloRelations reduction22714.relations reduction22714.input reduction22714.output := by lin_cert using reduction22714.terms
theorem substitutionProof22714 : IsMapEvaluation generatorImages reduction22714.relations [149,725] reduction22714.output := by lin_cert using reduction22714.terms
def image22715 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22715 : InImage map_50_259 image22715 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22715 : Bundle := named_bundle% "RealMapCertificates/relations/basis22715.json"
theorem reductionProof22715 : EqualModuloRelations reduction22715.relations reduction22715.input reduction22715.output := by lin_cert using reduction22715.terms
theorem substitutionProof22715 : IsMapEvaluation generatorImages reduction22715.relations [8,8,8,1287] reduction22715.output := by lin_cert using reduction22715.terms
def map_50_260 : Matrix 2 5 := fun i j => ([false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image23056 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23056 : InImage map_50_260 image23056 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23056 : Bundle := named_bundle% "RealMapCertificates/relations/basis23056.json"
theorem reductionProof23056 : EqualModuloRelations reduction23056.relations reduction23056.input reduction23056.output := by lin_cert using reduction23056.terms
theorem substitutionProof23056 : IsMapEvaluation generatorImages reduction23056.relations [17,138,491] reduction23056.output := by lin_cert using reduction23056.terms
def image23057 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23057 : InImage map_50_260 image23057 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23057 : Bundle := named_bundle% "RealMapCertificates/relations/basis23057.json"
theorem reductionProof23057 : EqualModuloRelations reduction23057.relations reduction23057.input reduction23057.output := by lin_cert using reduction23057.terms
theorem substitutionProof23057 : IsMapEvaluation generatorImages reduction23057.relations [8,8,8,8,8,64,206] reduction23057.output := by lin_cert using reduction23057.terms
def image23058 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23058 : InImage map_50_260 image23058 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23058 : Bundle := named_bundle% "RealMapCertificates/relations/basis23058.json"
theorem reductionProof23058 : EqualModuloRelations reduction23058.relations reduction23058.input reduction23058.output := by lin_cert using reduction23058.terms
theorem substitutionProof23058 : IsMapEvaluation generatorImages reduction23058.relations [8,8,8,8,8,8,8,380] reduction23058.output := by lin_cert using reduction23058.terms
def image23059 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23059 : InImage map_50_260 image23059 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23059 : Bundle := named_bundle% "RealMapCertificates/relations/basis23059.json"
theorem reductionProof23059 : EqualModuloRelations reduction23059.relations reduction23059.input reduction23059.output := by lin_cert using reduction23059.terms
theorem substitutionProof23059 : IsMapEvaluation generatorImages reduction23059.relations [8,8,8,8,8,8,8,8,248] reduction23059.output := by lin_cert using reduction23059.terms
def image23060 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23060 : InImage map_50_260 image23060 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23060 : Bundle := named_bundle% "RealMapCertificates/relations/basis23060.json"
theorem reductionProof23060 : EqualModuloRelations reduction23060.relations reduction23060.input reduction23060.output := by lin_cert using reduction23060.terms
theorem substitutionProof23060 : IsMapEvaluation generatorImages reduction23060.relations [0,0,16,1686] reduction23060.output := by lin_cert using reduction23060.terms
def map_50_261 : Matrix 2 6 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23502 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23502 : InImage map_50_261 image23502 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23502 : Bundle := named_bundle% "RealMapCertificates/relations/basis23502.json"
theorem reductionProof23502 : EqualModuloRelations reduction23502.relations reduction23502.input reduction23502.output := by lin_cert using reduction23502.terms
theorem substitutionProof23502 : IsMapEvaluation generatorImages reduction23502.relations [8,16,64,64,137] reduction23502.output := by lin_cert using reduction23502.terms
def image23503 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23503 : InImage map_50_261 image23503 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23503 : Bundle := named_bundle% "RealMapCertificates/relations/basis23503.json"
theorem reductionProof23503 : EqualModuloRelations reduction23503.relations reduction23503.input reduction23503.output := by lin_cert using reduction23503.terms
theorem substitutionProof23503 : IsMapEvaluation generatorImages reduction23503.relations [8,8,8,8,8,8,9,13,13,13,13,23] reduction23503.output := by lin_cert using reduction23503.terms
def image23504 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23504 : InImage map_50_261 image23504 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23504 : Bundle := named_bundle% "RealMapCertificates/relations/basis23504.json"
theorem reductionProof23504 : EqualModuloRelations reduction23504.relations reduction23504.input reduction23504.output := by lin_cert using reduction23504.terms
theorem substitutionProof23504 : IsMapEvaluation generatorImages reduction23504.relations [8,8,8,8,8,8,8,404] reduction23504.output := by lin_cert using reduction23504.terms
def image23505 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23505 : InImage map_50_261 image23505 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23505 : Bundle := named_bundle% "RealMapCertificates/relations/basis23505.json"
theorem reductionProof23505 : EqualModuloRelations reduction23505.relations reduction23505.input reduction23505.output := by lin_cert using reduction23505.terms
theorem substitutionProof23505 : IsMapEvaluation generatorImages reduction23505.relations [8,8,8,8,8,8,8,8,8,13,101] reduction23505.output := by lin_cert using reduction23505.terms
def image23506 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23506 : InImage map_50_261 image23506 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23506 : Bundle := named_bundle% "RealMapCertificates/relations/basis23506.json"
theorem reductionProof23506 : EqualModuloRelations reduction23506.relations reduction23506.input reduction23506.output := by lin_cert using reduction23506.terms
theorem substitutionProof23506 : IsMapEvaluation generatorImages reduction23506.relations [0,137,795] reduction23506.output := by lin_cert using reduction23506.terms
def image23507 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23507 : InImage map_50_261 image23507 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23507 : Bundle := named_bundle% "RealMapCertificates/relations/basis23507.json"
theorem reductionProof23507 : EqualModuloRelations reduction23507.relations reduction23507.input reduction23507.output := by lin_cert using reduction23507.terms
theorem substitutionProof23507 : IsMapEvaluation generatorImages reduction23507.relations [0,0,0,17,1686] reduction23507.output := by lin_cert using reduction23507.terms
def map_51_51 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image266 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation266 : InImage map_51_51 image266 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction266 : Bundle := named_bundle% "RealMapCertificates/relations/basis266.json"
theorem reductionProof266 : EqualModuloRelations reduction266.relations reduction266.input reduction266.output := by lin_cert using reduction266.terms
theorem substitutionProof266 : IsMapEvaluation generatorImages reduction266.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction266.output := by lin_cert using reduction266.terms
def map_51_150 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image3950 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation3950 : InImage map_51_150 image3950 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction3950 : Bundle := named_bundle% "RealMapCertificates/relations/basis3950.json"
theorem reductionProof3950 : EqualModuloRelations reduction3950.relations reduction3950.input reduction3950.output := by lin_cert using reduction3950.terms
theorem substitutionProof3950 : IsMapEvaluation generatorImages reduction3950.relations [0,0,536] reduction3950.output := by lin_cert using reduction3950.terms
def map_51_154 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4323 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4323 : InImage map_51_154 image4323 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4323 : Bundle := named_bundle% "RealMapCertificates/relations/basis4323.json"
theorem reductionProof4323 : EqualModuloRelations reduction4323.relations reduction4323.input reduction4323.output := by lin_cert using reduction4323.terms
theorem substitutionProof4323 : IsMapEvaluation generatorImages reduction4323.relations [0,0,0,0,554] reduction4323.output := by lin_cert using reduction4323.terms
def map_51_155 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image4398 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation4398 : InImage map_51_155 image4398 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4398 : Bundle := named_bundle% "RealMapCertificates/relations/basis4398.json"
theorem reductionProof4398 : EqualModuloRelations reduction4398.relations reduction4398.input reduction4398.output := by lin_cert using reduction4398.terms
theorem substitutionProof4398 : IsMapEvaluation generatorImages reduction4398.relations [594] reduction4398.output := by lin_cert using reduction4398.terms
def map_51_156 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4471 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4471 : InImage map_51_156 image4471 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4471 : Bundle := named_bundle% "RealMapCertificates/relations/basis4471.json"
theorem reductionProof4471 : EqualModuloRelations reduction4471.relations reduction4471.input reduction4471.output := by lin_cert using reduction4471.terms
theorem substitutionProof4471 : IsMapEvaluation generatorImages reduction4471.relations [0,0,0,578] reduction4471.output := by lin_cert using reduction4471.terms
def map_51_161 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4920 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4920 : InImage map_51_161 image4920 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4920 : Bundle := named_bundle% "RealMapCertificates/relations/basis4920.json"
theorem reductionProof4920 : EqualModuloRelations reduction4920.relations reduction4920.input reduction4920.output := by lin_cert using reduction4920.terms
theorem substitutionProof4920 : IsMapEvaluation generatorImages reduction4920.relations [0,0,0,0,0,17,296] reduction4920.output := by lin_cert using reduction4920.terms
def map_51_162 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5010 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5010 : InImage map_51_162 image5010 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5010 : Bundle := named_bundle% "RealMapCertificates/relations/basis5010.json"
theorem reductionProof5010 : EqualModuloRelations reduction5010.relations reduction5010.input reduction5010.output := by lin_cert using reduction5010.terms
theorem substitutionProof5010 : IsMapEvaluation generatorImages reduction5010.relations [0,0,0,0,0,0,606] reduction5010.output := by lin_cert using reduction5010.terms
def map_51_165 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5311 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5311 : InImage map_51_165 image5311 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5311 : Bundle := named_bundle% "RealMapCertificates/relations/basis5311.json"
theorem reductionProof5311 : EqualModuloRelations reduction5311.relations reduction5311.input reduction5311.output := by lin_cert using reduction5311.terms
theorem substitutionProof5311 : IsMapEvaluation generatorImages reduction5311.relations [701] reduction5311.output := by lin_cert using reduction5311.terms
def map_51_168 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5627 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5627 : InImage map_51_168 image5627 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5627 : Bundle := named_bundle% "RealMapCertificates/relations/basis5627.json"
theorem reductionProof5627 : EqualModuloRelations reduction5627.relations reduction5627.input reduction5627.output := by lin_cert using reduction5627.terms
theorem substitutionProof5627 : IsMapEvaluation generatorImages reduction5627.relations [8,554] reduction5627.output := by lin_cert using reduction5627.terms
def map_51_171 : Matrix 6 1 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5972 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5972 : InImage map_51_171 image5972 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5972 : Bundle := named_bundle% "RealMapCertificates/relations/basis5972.json"
theorem reductionProof5972 : EqualModuloRelations reduction5972.relations reduction5972.input reduction5972.output := by lin_cert using reduction5972.terms
theorem substitutionProof5972 : IsMapEvaluation generatorImages reduction5972.relations [8,579] reduction5972.output := by lin_cert using reduction5972.terms
def map_51_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6109 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6109 : InImage map_51_172 image6109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6109 : Bundle := named_bundle% "RealMapCertificates/relations/basis6109.json"
theorem reductionProof6109 : EqualModuloRelations reduction6109.relations reduction6109.input reduction6109.output := by lin_cert using reduction6109.terms
theorem substitutionProof6109 : IsMapEvaluation generatorImages reduction6109.relations [0,17,470] reduction6109.output := by lin_cert using reduction6109.terms
def map_51_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6294 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6294 : InImage map_51_174 image6294 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6294 : Bundle := named_bundle% "RealMapCertificates/relations/basis6294.json"
theorem reductionProof6294 : EqualModuloRelations reduction6294.relations reduction6294.input reduction6294.output := by lin_cert using reduction6294.terms
theorem substitutionProof6294 : IsMapEvaluation generatorImages reduction6294.relations [8,16,296] reduction6294.output := by lin_cert using reduction6294.terms
def map_51_177 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image6652 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6652 : InImage map_51_177 image6652 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction6652 : Bundle := named_bundle% "RealMapCertificates/relations/basis6652.json"
theorem reductionProof6652 : EqualModuloRelations reduction6652.relations reduction6652.input reduction6652.output := by lin_cert using reduction6652.terms
theorem substitutionProof6652 : IsMapEvaluation generatorImages reduction6652.relations [8,8,470] reduction6652.output := by lin_cert using reduction6652.terms
def image6653 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6653 : InImage map_51_177 image6653 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction6653 : Bundle := named_bundle% "RealMapCertificates/relations/basis6653.json"
theorem reductionProof6653 : EqualModuloRelations reduction6653.relations reduction6653.input reduction6653.output := by lin_cert using reduction6653.terms
theorem substitutionProof6653 : IsMapEvaluation generatorImages reduction6653.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,686] reduction6653.output := by lin_cert using reduction6653.terms
def map_51_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6788 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6788 : InImage map_51_178 image6788 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6788 : Bundle := named_bundle% "RealMapCertificates/relations/basis6788.json"
theorem reductionProof6788 : EqualModuloRelations reduction6788.relations reduction6788.input reduction6788.output := by lin_cert using reduction6788.terms
theorem substitutionProof6788 : IsMapEvaluation generatorImages reduction6788.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6788.output := by lin_cert using reduction6788.terms
def map_51_180 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7012 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7012 : InImage map_51_180 image7012 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7012 : Bundle := named_bundle% "RealMapCertificates/relations/basis7012.json"
theorem reductionProof7012 : EqualModuloRelations reduction7012.relations reduction7012.input reduction7012.output := by lin_cert using reduction7012.terms
theorem substitutionProof7012 : IsMapEvaluation generatorImages reduction7012.relations [8,8,8,296] reduction7012.output := by lin_cert using reduction7012.terms
def map_51_183 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7376 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7376 : InImage map_51_183 image7376 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7376 : Bundle := named_bundle% "RealMapCertificates/relations/basis7376.json"
theorem reductionProof7376 : EqualModuloRelations reduction7376.relations reduction7376.input reduction7376.output := by lin_cert using reduction7376.terms
theorem substitutionProof7376 : IsMapEvaluation generatorImages reduction7376.relations [8,8,8,326] reduction7376.output := by lin_cert using reduction7376.terms
def map_51_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7517 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7517 : InImage map_51_184 image7517 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7517 : Bundle := named_bundle% "RealMapCertificates/relations/basis7517.json"
theorem reductionProof7517 : EqualModuloRelations reduction7517.relations reduction7517.input reduction7517.output := by lin_cert using reduction7517.terms
theorem substitutionProof7517 : IsMapEvaluation generatorImages reduction7517.relations [0,916] reduction7517.output := by lin_cert using reduction7517.terms
def map_51_185 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image7613 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7613 : InImage map_51_185 image7613 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7613 : Bundle := named_bundle% "RealMapCertificates/relations/basis7613.json"
theorem reductionProof7613 : EqualModuloRelations reduction7613.relations reduction7613.input reduction7613.output := by lin_cert using reduction7613.terms
theorem substitutionProof7613 : IsMapEvaluation generatorImages reduction7613.relations [1,916] reduction7613.output := by lin_cert using reduction7613.terms
def image7614 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7614 : InImage map_51_185 image7614 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7614 : Bundle := named_bundle% "RealMapCertificates/relations/basis7614.json"
theorem reductionProof7614 : EqualModuloRelations reduction7614.relations reduction7614.input reduction7614.output := by lin_cert using reduction7614.terms
theorem substitutionProof7614 : IsMapEvaluation generatorImages reduction7614.relations [0,0,917] reduction7614.output := by lin_cert using reduction7614.terms
def map_51_186 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7737 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7737 : InImage map_51_186 image7737 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7737 : Bundle := named_bundle% "RealMapCertificates/relations/basis7737.json"
theorem reductionProof7737 : EqualModuloRelations reduction7737.relations reduction7737.input reduction7737.output := by lin_cert using reduction7737.terms
theorem substitutionProof7737 : IsMapEvaluation generatorImages reduction7737.relations [8,8,8,16,183] reduction7737.output := by lin_cert using reduction7737.terms
def map_51_187 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7878 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7878 : InImage map_51_187 image7878 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7878 : Bundle := named_bundle% "RealMapCertificates/relations/basis7878.json"
theorem reductionProof7878 : EqualModuloRelations reduction7878.relations reduction7878.input reduction7878.output := by lin_cert using reduction7878.terms
theorem substitutionProof7878 : IsMapEvaluation generatorImages reduction7878.relations [0,952] reduction7878.output := by lin_cert using reduction7878.terms
def map_51_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7955 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7955 : InImage map_51_188 image7955 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7955 : Bundle := named_bundle% "RealMapCertificates/relations/basis7955.json"
theorem reductionProof7955 : EqualModuloRelations reduction7955.relations reduction7955.input reduction7955.output := by lin_cert using reduction7955.terms
theorem substitutionProof7955 : IsMapEvaluation generatorImages reduction7955.relations [0,0,953] reduction7955.output := by lin_cert using reduction7955.terms
def map_51_189 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8088 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8088 : InImage map_51_189 image8088 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8088 : Bundle := named_bundle% "RealMapCertificates/relations/basis8088.json"
theorem reductionProof8088 : EqualModuloRelations reduction8088.relations reduction8088.input reduction8088.output := by lin_cert using reduction8088.terms
theorem substitutionProof8088 : IsMapEvaluation generatorImages reduction8088.relations [8,8,8,8,253] reduction8088.output := by lin_cert using reduction8088.terms
def map_51_190 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8225 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8225 : InImage map_51_190 image8225 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8225 : Bundle := named_bundle% "RealMapCertificates/relations/basis8225.json"
theorem reductionProof8225 : EqualModuloRelations reduction8225.relations reduction8225.input reduction8225.output := by lin_cert using reduction8225.terms
theorem substitutionProof8225 : IsMapEvaluation generatorImages reduction8225.relations [0,16,635] reduction8225.output := by lin_cert using reduction8225.terms
def map_51_191 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8335 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8335 : InImage map_51_191 image8335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8335 : Bundle := named_bundle% "RealMapCertificates/relations/basis8335.json"
theorem reductionProof8335 : EqualModuloRelations reduction8335.relations reduction8335.input reduction8335.output := by lin_cert using reduction8335.terms
theorem substitutionProof8335 : IsMapEvaluation generatorImages reduction8335.relations [0,0,16,636] reduction8335.output := by lin_cert using reduction8335.terms
def image8336 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8336 : InImage map_51_191 image8336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8336 : Bundle := named_bundle% "RealMapCertificates/relations/basis8336.json"
theorem reductionProof8336 : EqualModuloRelations reduction8336.relations reduction8336.input reduction8336.output := by lin_cert using reduction8336.terms
theorem substitutionProof8336 : IsMapEvaluation generatorImages reduction8336.relations [0,0,0,969] reduction8336.output := by lin_cert using reduction8336.terms
def map_51_192 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8457 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8457 : InImage map_51_192 image8457 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8457 : Bundle := named_bundle% "RealMapCertificates/relations/basis8457.json"
theorem reductionProof8457 : EqualModuloRelations reduction8457.relations reduction8457.input reduction8457.output := by lin_cert using reduction8457.terms
theorem substitutionProof8457 : IsMapEvaluation generatorImages reduction8457.relations [8,8,8,8,8,183] reduction8457.output := by lin_cert using reduction8457.terms
def image8458 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8458 : InImage map_51_192 image8458 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8458 : Bundle := named_bundle% "RealMapCertificates/relations/basis8458.json"
theorem reductionProof8458 : EqualModuloRelations reduction8458.relations reduction8458.input reduction8458.output := by lin_cert using reduction8458.terms
theorem substitutionProof8458 : IsMapEvaluation generatorImages reduction8458.relations [0,0,0,17,636] reduction8458.output := by lin_cert using reduction8458.terms
def map_51_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8608 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8608 : InImage map_51_193 image8608 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8608 : Bundle := named_bundle% "RealMapCertificates/relations/basis8608.json"
theorem reductionProof8608 : EqualModuloRelations reduction8608.relations reduction8608.input reduction8608.output := by lin_cert using reduction8608.terms
theorem substitutionProof8608 : IsMapEvaluation generatorImages reduction8608.relations [0,8,805] reduction8608.output := by lin_cert using reduction8608.terms
end RealMapCertificates
