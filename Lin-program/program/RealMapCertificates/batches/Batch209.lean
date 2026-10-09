import LinearCertificates.Checker
import RealMapCertificates.Substitution
namespace RealMapCertificates
open LinearCertificates LinProgramCertificates NamedElementCertificates
def generatorImageTable : Array Polynomial := #[[[0]],[[1]],[[2]],[],[[3]],[[1,4]],[[2,4]],[],[[6]],[[8]],[[2,7]],[],[[3,4]],[[9]],[[1,4,4]],[[2,4,4]],[[4,6]],[[4,7]],[],[[4,8]],[[5,6]],[[3,4,4]],[[5,8]],[[7,7]],[],[],[],[[1,4,4,4]],[],[[5,9]],[[2,4,4,4]],[[4,4,6]],[[7,9]],[],[],[],[],[],[],[[4,4,8]],[[4,5,6]],[[3,4,4,4]],[[5,5,7]],[],[[1,4,4,4,4]],[[5,5,8]],[[5,7,7]],[[2,4,4,4,4]],[],[[4,4,4,6]],[[4,4,4,7]],[[7,7,7]],[],[],[],[[4,4,4,8]],[[4,4,5,6]],[],[[3,4,4,4,4]],[],[[4,5,5,7]],[],[[1,4,4,4,4,4]],[[4,5,7,7]],[],[[2,4,4,4,4,4]],[[2,2,12]],[],[],[],[],[[4,4,4,4,6]],[],[],[],[],[],[[4,4,4,4,8]],[[4,4,4,5,6]],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4]],[[4,4,5,5,7]],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4]],[],[],[[4,4,5,7,7]],[],[[2,4,4,4,4,4,4]],[],[],[],[],[],[],[],[[4,4,4,4,4,6]],[[4,4,4,4,4,7]],[],[[0,8,12]],[],[],[[4,4,4,4,4,8]],[[4,4,4,4,5,6]],[[0,9,12]],[[1,9,12]],[],[],[],[[3,4,4,4,4,4,4]],[],[[4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4]],[[4,4,4,5,7,7]],[],[[0,4,6,12]],[],[[2,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,6]],[],[[0,4,8,12]],[],[[4,9,12]],[],[],[[4,4,4,4,4,4,8]],[[4,4,4,4,4,5,6]],[[0,5,8,12]],[],[],[],[],[[3,4,4,4,4,4,4,4]],[[6,8,12]],[[4,4,4,4,5,5,7]],[[0,5,9,12]],[],[],[[1,4,4,4,4,4,4,4,4]],[[6,9,12]],[[7,9,12]],[],[],[],[[4,4,4,4,5,7,7]],[],[],[],[[2,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,10,12]],[],[[4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,7]],[],[[0,4,4,8,12]],[],[],[],[],[],[],[],[[5,5,7,12]],[[7,10,12]],[],[],[],[],[[4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,5,6]],[],[],[],[],[[3,4,4,4,4,4,4,4,4]],[[4,6,8,12]],[[5,5,8,12]],[[5,7,7,12]],[],[],[[4,4,4,4,4,5,5,7]],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4]],[[5,5,9,12]],[[7,7,7,12]],[],[],[],[[4,4,4,4,4,5,7,7]],[],[[0,4,4,4,6,12]],[],[[2,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[5,6,9,12]],[[5,7,9,12]],[],[],[[4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,8,12]],[],[],[],[],[],[[4,4,4,9,12]],[[4,4,7,7,12]],[],[[4,5,5,7,12]],[[7,7,9,12]],[],[],[],[[4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,5,6]],[],[],[[3,4,4,4,4,4,4,4,4,4]],[[4,4,6,8,12]],[[4,5,5,8,12]],[[4,5,7,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,9,12]],[],[],[],[],[],[[4,4,4,4,4,4,5,7,7]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[[4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,8,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,6,8,12]],[[4,4,5,5,8,12]],[[4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,6,12]],[[0,0,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,8,12]],[[0,0,9,12,12]],[[1,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,9,12]],[[4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,6,8,12]],[[4,4,4,5,5,8,12]],[[4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,8,12,12]],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,8,12]],[[0,0,4,9,12,12]],[],[[0,0,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,5,7,12]],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,5,6]],[[0,0,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,6,8,12]],[[4,4,4,4,5,5,8,12]],[[4,4,4,4,5,7,7,12]],[[0,6,9,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,8,12,12]],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,9,12,12]],[[0,0,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[7,7,7,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[5,7,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,8,12,12]],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[5,5,5,7,12,12]],[[5,7,10,12,12]],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[[4,7,7,7,12,12]],[[7,7,10,12,12]],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[[4,5,7,9,12,12]],[[5,5,5,9,12,12]],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,5,5,10,12,12]],[[4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,9,12,12]],[[0,0,4,4,4,5,8,12,12]],[],[],[],[],[],[],[[4,5,7,10,12,12]],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,9,12,12]],[[4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[1,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,8,12,12]],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,7,7,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,5,8,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,9,12,12]],[[4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,5,8,12,12,12]],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,8,12,12]],[],[],[[6,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,5,5,10,12,12]],[[0,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,5,8,12,12]],[],[[6,9,12,12,12]],[[7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,7,7,12]],[],[[4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[5,5,7,12,12,12]],[[7,10,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,9,12,12]],[[4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,8,12,12]],[],[[4,6,8,12,12,12]],[[5,5,8,12,12,12]],[[5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,7,7,9,12,12]],[[0,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,5,8,12,12]],[],[[4,6,9,12,12,12]],[[5,5,9,12,12,12]],[[7,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[[5,6,9,12,12,12]],[[5,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,9,12,12,12]],[[4,5,5,7,12,12,12]],[[7,7,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[[0,0,4,4,5,8,12,12,12]],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,6,8,12,12,12]],[[4,5,5,8,12,12,12]],[[4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,5,5,10,12,12]],[[0,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,6,9,12,12,12]],[[4,4,7,9,12,12,12]],[[4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,5,7,10,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,7,7,7,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[[0,0,4,4,4,4,4,4,4,4,4,8,12,12]],[],[[4,4,4,6,8,12,12,12]],[[4,4,5,5,8,12,12,12]],[[4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,7,7,9,12,12]],[[0,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[],[[0,0,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,5,7,10,12,12]],[],[[0,0,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,7,7,7,12,12]],[[0,0,9,12,12,12,12]],[[1,9,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,6,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,5,8,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,5,7,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7]],[[4,4,4,5,5,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,9,12,12]],[[4,4,4,4,4,4,5,5,5,9,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,7,7]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,8,12,12]],[],[],[[4,4,4,4,6,8,12,12,12]],[[4,4,4,5,5,8,12,12,12]],[[4,4,4,5,7,7,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]],[[4,4,4,4,4,4,4,5,5,10,12,12]],[[0,4,4,4,4,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,6]],[],[[0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8,12]],[[0,0,4,4,4,4,4,4,4,4,4,4,9,12,12]],[[0,0,4,4,4,4,4,4,4,4,4,5,8,12,12]],[[4,4,4,5,5,9,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,5,7,10,12,12]],[],[],[],[[0,0,4,8,12,12,12,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,12]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,7,12]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,8]],[[4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,6]],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
def generatorImages : Nat → Polynomial
  | 0 => [[0]]
  | 1 => [[1]]
  | 8 => [[6]]
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
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 185 => [[0,4,4,8,12]]
  | 200 => [[4,4,4,4,4,4,5,6]]
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
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 752 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 896 => []
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1076 => []
  | 1240 => [[4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1471 => []
  | 1499 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1566 => []
  | 1567 => []
  | 1589 => []
  | 1591 => []
  | 1620 => []
  | 1650 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1812 => []
  | 1891 => []
  | 2036 => [[4,4,4,4,4,4,5,7,9,12,12]]
  | _ => []
def map_51_194 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image8709 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8709 : InImage map_51_194 image8709 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8709 : Bundle := named_bundle% "RealMapCertificates/relations/basis8709.json"
theorem reductionProof8709 : EqualModuloRelations reduction8709.relations reduction8709.input reduction8709.output := by lin_cert using reduction8709.terms
theorem substitutionProof8709 : IsMapEvaluation generatorImages reduction8709.relations [0,0,8,806] reduction8709.output := by lin_cert using reduction8709.terms
def image8710 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8710 : InImage map_51_194 image8710 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8710 : Bundle := named_bundle% "RealMapCertificates/relations/basis8710.json"
theorem reductionProof8710 : EqualModuloRelations reduction8710.relations reduction8710.input reduction8710.output := by lin_cert using reduction8710.terms
theorem substitutionProof8710 : IsMapEvaluation generatorImages reduction8710.relations [0,0,0,1030] reduction8710.output := by lin_cert using reduction8710.terms
def map_51_195 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8858 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8858 : InImage map_51_195 image8858 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8858 : Bundle := named_bundle% "RealMapCertificates/relations/basis8858.json"
theorem reductionProof8858 : EqualModuloRelations reduction8858.relations reduction8858.input reduction8858.output := by lin_cert using reduction8858.terms
theorem substitutionProof8858 : IsMapEvaluation generatorImages reduction8858.relations [8,8,8,8,8,200] reduction8858.output := by lin_cert using reduction8858.terms
def map_51_196 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9010 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9010 : InImage map_51_196 image9010 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9010 : Bundle := named_bundle% "RealMapCertificates/relations/basis9010.json"
theorem reductionProof9010 : EqualModuloRelations reduction9010.relations reduction9010.input reduction9010.output := by lin_cert using reduction9010.terms
theorem substitutionProof9010 : IsMapEvaluation generatorImages reduction9010.relations [0,8,8,635] reduction9010.output := by lin_cert using reduction9010.terms
def map_51_197 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9134 : InImage map_51_197 image9134 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9134 : Bundle := named_bundle% "RealMapCertificates/relations/basis9134.json"
theorem reductionProof9134 : EqualModuloRelations reduction9134.relations reduction9134.input reduction9134.output := by lin_cert using reduction9134.terms
theorem substitutionProof9134 : IsMapEvaluation generatorImages reduction9134.relations [0,0,8,8,636] reduction9134.output := by lin_cert using reduction9134.terms
def map_51_198 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image9296 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9296 : InImage map_51_198 image9296 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9296 : Bundle := named_bundle% "RealMapCertificates/relations/basis9296.json"
theorem reductionProof9296 : EqualModuloRelations reduction9296.relations reduction9296.input reduction9296.output := by lin_cert using reduction9296.terms
theorem substitutionProof9296 : IsMapEvaluation generatorImages reduction9296.relations [8,8,8,8,8,16,111] reduction9296.output := by lin_cert using reduction9296.terms
def image9297 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation9297 : InImage map_51_198 image9297 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9297 : Bundle := named_bundle% "RealMapCertificates/relations/basis9297.json"
theorem reductionProof9297 : EqualModuloRelations reduction9297.relations reduction9297.input reduction9297.output := by lin_cert using reduction9297.terms
theorem substitutionProof9297 : IsMapEvaluation generatorImages reduction9297.relations [0,0,0,0,17,685] reduction9297.output := by lin_cert using reduction9297.terms
def map_51_199 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9477 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9477 : InImage map_51_199 image9477 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9477 : Bundle := named_bundle% "RealMapCertificates/relations/basis9477.json"
theorem reductionProof9477 : EqualModuloRelations reduction9477.relations reduction9477.input reduction9477.output := by lin_cert using reduction9477.terms
theorem substitutionProof9477 : IsMapEvaluation generatorImages reduction9477.relations [0,8,8,662] reduction9477.output := by lin_cert using reduction9477.terms
def image9478 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation9478 : InImage map_51_199 image9478 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9478 : Bundle := named_bundle% "RealMapCertificates/relations/basis9478.json"
theorem reductionProof9478 : EqualModuloRelations reduction9478.relations reduction9478.input reduction9478.output := by lin_cert using reduction9478.terms
theorem substitutionProof9478 : IsMapEvaluation generatorImages reduction9478.relations [0,0,0,0,17,17,403] reduction9478.output := by lin_cert using reduction9478.terms
def map_51_200 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9599 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9599 : InImage map_51_200 image9599 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9599 : Bundle := named_bundle% "RealMapCertificates/relations/basis9599.json"
theorem reductionProof9599 : EqualModuloRelations reduction9599.relations reduction9599.input reduction9599.output := by lin_cert using reduction9599.terms
theorem substitutionProof9599 : IsMapEvaluation generatorImages reduction9599.relations [0,0,8,8,663] reduction9599.output := by lin_cert using reduction9599.terms
def map_51_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9787 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9787 : InImage map_51_201 image9787 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9787 : Bundle := named_bundle% "RealMapCertificates/relations/basis9787.json"
theorem reductionProof9787 : EqualModuloRelations reduction9787.relations reduction9787.input reduction9787.output := by lin_cert using reduction9787.terms
theorem substitutionProof9787 : IsMapEvaluation generatorImages reduction9787.relations [8,8,8,8,8,8,153] reduction9787.output := by lin_cert using reduction9787.terms
def map_51_202 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9952 : InImage map_51_202 image9952 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9952 : Bundle := named_bundle% "RealMapCertificates/relations/basis9952.json"
theorem reductionProof9952 : EqualModuloRelations reduction9952.relations reduction9952.input reduction9952.output := by lin_cert using reduction9952.terms
theorem substitutionProof9952 : IsMapEvaluation generatorImages reduction9952.relations [0,8,8,16,402] reduction9952.output := by lin_cert using reduction9952.terms
def map_51_203 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10092 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10092 : InImage map_51_203 image10092 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10092 : Bundle := named_bundle% "RealMapCertificates/relations/basis10092.json"
theorem reductionProof10092 : EqualModuloRelations reduction10092.relations reduction10092.input reduction10092.output := by lin_cert using reduction10092.terms
theorem substitutionProof10092 : IsMapEvaluation generatorImages reduction10092.relations [0,0,8,8,16,403] reduction10092.output := by lin_cert using reduction10092.terms
def map_51_204 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image10279 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10279 : InImage map_51_204 image10279 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10279 : Bundle := named_bundle% "RealMapCertificates/relations/basis10279.json"
theorem reductionProof10279 : EqualModuloRelations reduction10279.relations reduction10279.input reduction10279.output := by lin_cert using reduction10279.terms
theorem substitutionProof10279 : IsMapEvaluation generatorImages reduction10279.relations [8,8,8,8,8,8,8,111] reduction10279.output := by lin_cert using reduction10279.terms
def image10280 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10280 : InImage map_51_204 image10280 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10280 : Bundle := named_bundle% "RealMapCertificates/relations/basis10280.json"
theorem reductionProof10280 : EqualModuloRelations reduction10280.relations reduction10280.input reduction10280.output := by lin_cert using reduction10280.terms
theorem substitutionProof10280 : IsMapEvaluation generatorImages reduction10280.relations [0,1240] reduction10280.output := by lin_cert using reduction10280.terms
def map_51_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10478 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10478 : InImage map_51_205 image10478 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10478 : Bundle := named_bundle% "RealMapCertificates/relations/basis10478.json"
theorem reductionProof10478 : EqualModuloRelations reduction10478.relations reduction10478.input reduction10478.output := by lin_cert using reduction10478.terms
theorem substitutionProof10478 : IsMapEvaluation generatorImages reduction10478.relations [0,0,0,0,0,0,0,64,402] reduction10478.output := by lin_cert using reduction10478.terms
def map_51_206 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image10618 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10618 : InImage map_51_206 image10618 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10618 : Bundle := named_bundle% "RealMapCertificates/relations/basis10618.json"
theorem reductionProof10618 : EqualModuloRelations reduction10618.relations reduction10618.input reduction10618.output := by lin_cert using reduction10618.terms
theorem substitutionProof10618 : IsMapEvaluation generatorImages reduction10618.relations [0,0,0,0,0,0,0,0,64,403] reduction10618.output := by lin_cert using reduction10618.terms
def map_51_207 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image10830 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation10830 : InImage map_51_207 image10830 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10830 : Bundle := named_bundle% "RealMapCertificates/relations/basis10830.json"
theorem reductionProof10830 : EqualModuloRelations reduction10830.relations reduction10830.input reduction10830.output := by lin_cert using reduction10830.terms
theorem substitutionProof10830 : IsMapEvaluation generatorImages reduction10830.relations [42,635] reduction10830.output := by lin_cert using reduction10830.terms
def image10831 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10831 : InImage map_51_207 image10831 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10831 : Bundle := named_bundle% "RealMapCertificates/relations/basis10831.json"
theorem reductionProof10831 : EqualModuloRelations reduction10831.relations reduction10831.input reduction10831.output := by lin_cert using reduction10831.terms
theorem substitutionProof10831 : IsMapEvaluation generatorImages reduction10831.relations [8,8,8,8,8,8,8,117] reduction10831.output := by lin_cert using reduction10831.terms
def map_51_209 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11148 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11148 : InImage map_51_209 image11148 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11148 : Bundle := named_bundle% "RealMapCertificates/relations/basis11148.json"
theorem reductionProof11148 : EqualModuloRelations reduction11148.relations reduction11148.input reduction11148.output := by lin_cert using reduction11148.terms
theorem substitutionProof11148 : IsMapEvaluation generatorImages reduction11148.relations [17,871] reduction11148.output := by lin_cert using reduction11148.terms
def map_51_210 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11338 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11338 : InImage map_51_210 image11338 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11338 : Bundle := named_bundle% "RealMapCertificates/relations/basis11338.json"
theorem reductionProof11338 : EqualModuloRelations reduction11338.relations reduction11338.input reduction11338.output := by lin_cert using reduction11338.terms
theorem substitutionProof11338 : IsMapEvaluation generatorImages reduction11338.relations [17,17,556] reduction11338.output := by lin_cert using reduction11338.terms
def image11339 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11339 : InImage map_51_210 image11339 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11339 : Bundle := named_bundle% "RealMapCertificates/relations/basis11339.json"
theorem reductionProof11339 : EqualModuloRelations reduction11339.relations reduction11339.input reduction11339.output := by lin_cert using reduction11339.terms
theorem substitutionProof11339 : IsMapEvaluation generatorImages reduction11339.relations [8,8,8,8,8,8,8,16,50] reduction11339.output := by lin_cert using reduction11339.terms
def map_51_212 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11680 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11680 : InImage map_51_212 image11680 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11680 : Bundle := named_bundle% "RealMapCertificates/relations/basis11680.json"
theorem reductionProof11680 : EqualModuloRelations reduction11680.relations reduction11680.input reduction11680.output := by lin_cert using reduction11680.terms
theorem substitutionProof11680 : IsMapEvaluation generatorImages reduction11680.relations [8,17,685] reduction11680.output := by lin_cert using reduction11680.terms
def map_51_213 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11916 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11916 : InImage map_51_213 image11916 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11916 : Bundle := named_bundle% "RealMapCertificates/relations/basis11916.json"
theorem reductionProof11916 : EqualModuloRelations reduction11916.relations reduction11916.input reduction11916.output := by lin_cert using reduction11916.terms
theorem substitutionProof11916 : IsMapEvaluation generatorImages reduction11916.relations [8,17,17,403] reduction11916.output := by lin_cert using reduction11916.terms
def image11917 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11917 : InImage map_51_213 image11917 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11917 : Bundle := named_bundle% "RealMapCertificates/relations/basis11917.json"
theorem reductionProof11917 : EqualModuloRelations reduction11917.relations reduction11917.input reduction11917.output := by lin_cert using reduction11917.terms
theorem substitutionProof11917 : IsMapEvaluation generatorImages reduction11917.relations [8,8,8,8,8,8,8,8,78] reduction11917.output := by lin_cert using reduction11917.terms
def map_51_215 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image12284 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12284 : InImage map_51_215 image12284 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12284 : Bundle := named_bundle% "RealMapCertificates/relations/basis12284.json"
theorem reductionProof12284 : EqualModuloRelations reduction12284.relations reduction12284.input reduction12284.output := by lin_cert using reduction12284.terms
theorem substitutionProof12284 : IsMapEvaluation generatorImages reduction12284.relations [8,17,722] reduction12284.output := by lin_cert using reduction12284.terms
def map_51_216 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image12482 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12482 : InImage map_51_216 image12482 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction12482 : Bundle := named_bundle% "RealMapCertificates/relations/basis12482.json"
theorem reductionProof12482 : EqualModuloRelations reduction12482.relations reduction12482.input reduction12482.output := by lin_cert using reduction12482.terms
theorem substitutionProof12482 : IsMapEvaluation generatorImages reduction12482.relations [8,17,17,433] reduction12482.output := by lin_cert using reduction12482.terms
def image12483 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12483 : InImage map_51_216 image12483 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction12483 : Bundle := named_bundle% "RealMapCertificates/relations/basis12483.json"
theorem reductionProof12483 : EqualModuloRelations reduction12483.relations reduction12483.input reduction12483.output := by lin_cert using reduction12483.terms
theorem substitutionProof12483 : IsMapEvaluation generatorImages reduction12483.relations [8,8,8,8,8,8,8,8,8,50] reduction12483.output := by lin_cert using reduction12483.terms
def image12484 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12484 : InImage map_51_216 image12484 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction12484 : Bundle := named_bundle% "RealMapCertificates/relations/basis12484.json"
theorem reductionProof12484 : EqualModuloRelations reduction12484.relations reduction12484.input reduction12484.output := by lin_cert using reduction12484.terms
theorem substitutionProof12484 : IsMapEvaluation generatorImages reduction12484.relations [0,1471] reduction12484.output := by lin_cert using reduction12484.terms
def map_51_217 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12691 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12691 : InImage map_51_217 image12691 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12691 : Bundle := named_bundle% "RealMapCertificates/relations/basis12691.json"
theorem reductionProof12691 : EqualModuloRelations reduction12691.relations reduction12691.input reduction12691.output := by lin_cert using reduction12691.terms
theorem substitutionProof12691 : IsMapEvaluation generatorImages reduction12691.relations [1499] reduction12691.output := by lin_cert using reduction12691.terms
def image12692 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12692 : InImage map_51_217 image12692 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12692 : Bundle := named_bundle% "RealMapCertificates/relations/basis12692.json"
theorem reductionProof12692 : EqualModuloRelations reduction12692.relations reduction12692.input reduction12692.output := by lin_cert using reduction12692.terms
theorem substitutionProof12692 : IsMapEvaluation generatorImages reduction12692.relations [1,1471] reduction12692.output := by lin_cert using reduction12692.terms
def map_51_218 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12833 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12833 : InImage map_51_218 image12833 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12833 : Bundle := named_bundle% "RealMapCertificates/relations/basis12833.json"
theorem reductionProof12833 : EqualModuloRelations reduction12833.relations reduction12833.input reduction12833.output := by lin_cert using reduction12833.terms
theorem substitutionProof12833 : IsMapEvaluation generatorImages reduction12833.relations [8,16,17,452] reduction12833.output := by lin_cert using reduction12833.terms
def map_51_219 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13067 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13067 : InImage map_51_219 image13067 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13067 : Bundle := named_bundle% "RealMapCertificates/relations/basis13067.json"
theorem reductionProof13067 : EqualModuloRelations reduction13067.relations reduction13067.input reduction13067.output := by lin_cert using reduction13067.terms
theorem substitutionProof13067 : IsMapEvaluation generatorImages reduction13067.relations [8,8,42,402] reduction13067.output := by lin_cert using reduction13067.terms
def image13068 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13068 : InImage map_51_219 image13068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13068 : Bundle := named_bundle% "RealMapCertificates/relations/basis13068.json"
theorem reductionProof13068 : EqualModuloRelations reduction13068.relations reduction13068.input reduction13068.output := by lin_cert using reduction13068.terms
theorem substitutionProof13068 : IsMapEvaluation generatorImages reduction13068.relations [8,8,8,8,8,8,8,8,8,56] reduction13068.output := by lin_cert using reduction13068.terms
def image13069 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13069 : InImage map_51_219 image13069 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13069 : Bundle := named_bundle% "RealMapCertificates/relations/basis13069.json"
theorem reductionProof13069 : EqualModuloRelations reduction13069.relations reduction13069.input reduction13069.output := by lin_cert using reduction13069.terms
theorem substitutionProof13069 : IsMapEvaluation generatorImages reduction13069.relations [0,1514] reduction13069.output := by lin_cert using reduction13069.terms
def map_51_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13249 : InImage map_51_220 image13249 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13249 : Bundle := named_bundle% "RealMapCertificates/relations/basis13249.json"
theorem reductionProof13249 : EqualModuloRelations reduction13249.relations reduction13249.input reduction13249.output := by lin_cert using reduction13249.terms
theorem substitutionProof13249 : IsMapEvaluation generatorImages reduction13249.relations [0,1534] reduction13249.output := by lin_cert using reduction13249.terms
def map_51_221 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13404 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13404 : InImage map_51_221 image13404 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13404 : Bundle := named_bundle% "RealMapCertificates/relations/basis13404.json"
theorem reductionProof13404 : EqualModuloRelations reduction13404.relations reduction13404.input reduction13404.output := by lin_cert using reduction13404.terms
theorem substitutionProof13404 : IsMapEvaluation generatorImages reduction13404.relations [8,8,17,595] reduction13404.output := by lin_cert using reduction13404.terms
def map_51_222 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image13614 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13614 : InImage map_51_222 image13614 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction13614 : Bundle := named_bundle% "RealMapCertificates/relations/basis13614.json"
theorem reductionProof13614 : EqualModuloRelations reduction13614.relations reduction13614.input reduction13614.output := by lin_cert using reduction13614.terms
theorem substitutionProof13614 : IsMapEvaluation generatorImages reduction13614.relations [64,636] reduction13614.output := by lin_cert using reduction13614.terms
def image13615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13615 : InImage map_51_222 image13615 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction13615 : Bundle := named_bundle% "RealMapCertificates/relations/basis13615.json"
theorem reductionProof13615 : EqualModuloRelations reduction13615.relations reduction13615.input reduction13615.output := by lin_cert using reduction13615.terms
theorem substitutionProof13615 : IsMapEvaluation generatorImages reduction13615.relations [8,8,17,17,298] reduction13615.output := by lin_cert using reduction13615.terms
def image13616 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13616 : InImage map_51_222 image13616 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction13616 : Bundle := named_bundle% "RealMapCertificates/relations/basis13616.json"
theorem reductionProof13616 : EqualModuloRelations reduction13616.relations reduction13616.input reduction13616.output := by lin_cert using reduction13616.terms
theorem substitutionProof13616 : IsMapEvaluation generatorImages reduction13616.relations [8,8,8,8,8,8,8,8,8,16,17] reduction13616.output := by lin_cert using reduction13616.terms
def image13617 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13617 : InImage map_51_222 image13617 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction13617 : Bundle := named_bundle% "RealMapCertificates/relations/basis13617.json"
theorem reductionProof13617 : EqualModuloRelations reduction13617.relations reduction13617.input reduction13617.output := by lin_cert using reduction13617.terms
theorem substitutionProof13617 : IsMapEvaluation generatorImages reduction13617.relations [0,16,1033] reduction13617.output := by lin_cert using reduction13617.terms
def map_51_223 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13816 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13816 : InImage map_51_223 image13816 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13816 : Bundle := named_bundle% "RealMapCertificates/relations/basis13816.json"
theorem reductionProof13816 : EqualModuloRelations reduction13816.relations reduction13816.input reduction13816.output := by lin_cert using reduction13816.terms
theorem substitutionProof13816 : IsMapEvaluation generatorImages reduction13816.relations [0,138,403] reduction13816.output := by lin_cert using reduction13816.terms
def image13817 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation13817 : InImage map_51_223 image13817 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13817 : Bundle := named_bundle% "RealMapCertificates/relations/basis13817.json"
theorem reductionProof13817 : EqualModuloRelations reduction13817.relations reduction13817.input reduction13817.output := by lin_cert using reduction13817.terms
theorem substitutionProof13817 : IsMapEvaluation generatorImages reduction13817.relations [0,0,17,1033] reduction13817.output := by lin_cert using reduction13817.terms
def map_51_224 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image13952 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13952 : InImage map_51_224 image13952 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13952 : Bundle := named_bundle% "RealMapCertificates/relations/basis13952.json"
theorem reductionProof13952 : EqualModuloRelations reduction13952.relations reduction13952.input reduction13952.output := by lin_cert using reduction13952.terms
theorem substitutionProof13952 : IsMapEvaluation generatorImages reduction13952.relations [8,8,8,17,452] reduction13952.output := by lin_cert using reduction13952.terms
def image13953 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13953 : InImage map_51_224 image13953 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13953 : Bundle := named_bundle% "RealMapCertificates/relations/basis13953.json"
theorem reductionProof13953 : EqualModuloRelations reduction13953.relations reduction13953.input reduction13953.output := by lin_cert using reduction13953.terms
theorem substitutionProof13953 : IsMapEvaluation generatorImages reduction13953.relations [0,0,1591] reduction13953.output := by lin_cert using reduction13953.terms
def image13954 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13954 : InImage map_51_224 image13954 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13954 : Bundle := named_bundle% "RealMapCertificates/relations/basis13954.json"
theorem reductionProof13954 : EqualModuloRelations reduction13954.relations reduction13954.input reduction13954.output := by lin_cert using reduction13954.terms
theorem substitutionProof13954 : IsMapEvaluation generatorImages reduction13954.relations [0,0,1589] reduction13954.output := by lin_cert using reduction13954.terms
def map_51_225 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image14188 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14188 : InImage map_51_225 image14188 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14188 : Bundle := named_bundle% "RealMapCertificates/relations/basis14188.json"
theorem reductionProof14188 : EqualModuloRelations reduction14188.relations reduction14188.input reduction14188.output := by lin_cert using reduction14188.terms
theorem substitutionProof14188 : IsMapEvaluation generatorImages reduction14188.relations [64,663] reduction14188.output := by lin_cert using reduction14188.terms
def image14189 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14189 : InImage map_51_225 image14189 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14189 : Bundle := named_bundle% "RealMapCertificates/relations/basis14189.json"
theorem reductionProof14189 : EqualModuloRelations reduction14189.relations reduction14189.input reduction14189.output := by lin_cert using reduction14189.terms
theorem substitutionProof14189 : IsMapEvaluation generatorImages reduction14189.relations [8,8,8,17,17,225] reduction14189.output := by lin_cert using reduction14189.terms
def image14190 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14190 : InImage map_51_225 image14190 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14190 : Bundle := named_bundle% "RealMapCertificates/relations/basis14190.json"
theorem reductionProof14190 : EqualModuloRelations reduction14190.relations reduction14190.input reduction14190.output := by lin_cert using reduction14190.terms
theorem substitutionProof14190 : IsMapEvaluation generatorImages reduction14190.relations [8,8,8,8,8,8,8,8,8,8,40] reduction14190.output := by lin_cert using reduction14190.terms
def image14191 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14191 : InImage map_51_225 image14191 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14191 : Bundle := named_bundle% "RealMapCertificates/relations/basis14191.json"
theorem reductionProof14191 : EqualModuloRelations reduction14191.relations reduction14191.input reduction14191.output := by lin_cert using reduction14191.terms
theorem substitutionProof14191 : IsMapEvaluation generatorImages reduction14191.relations [0,8,1301] reduction14191.output := by lin_cert using reduction14191.terms
def image14192 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14192 : InImage map_51_225 image14192 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14192 : Bundle := named_bundle% "RealMapCertificates/relations/basis14192.json"
theorem reductionProof14192 : EqualModuloRelations reduction14192.relations reduction14192.input reduction14192.output := by lin_cert using reduction14192.terms
theorem substitutionProof14192 : IsMapEvaluation generatorImages reduction14192.relations [0,0,0,0,1566] reduction14192.output := by lin_cert using reduction14192.terms
def map_51_226 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image14373 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14373 : InImage map_51_226 image14373 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14373 : Bundle := named_bundle% "RealMapCertificates/relations/basis14373.json"
theorem reductionProof14373 : EqualModuloRelations reduction14373.relations reduction14373.input reduction14373.output := by lin_cert using reduction14373.terms
theorem substitutionProof14373 : IsMapEvaluation generatorImages reduction14373.relations [0,8,1314] reduction14373.output := by lin_cert using reduction14373.terms
def image14374 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14374 : InImage map_51_226 image14374 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14374 : Bundle := named_bundle% "RealMapCertificates/relations/basis14374.json"
theorem reductionProof14374 : EqualModuloRelations reduction14374.relations reduction14374.input reduction14374.output := by lin_cert using reduction14374.terms
theorem substitutionProof14374 : IsMapEvaluation generatorImages reduction14374.relations [0,0,17,1076] reduction14374.output := by lin_cert using reduction14374.terms
def map_51_227 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image14526 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14526 : InImage map_51_227 image14526 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14526 : Bundle := named_bundle% "RealMapCertificates/relations/basis14526.json"
theorem reductionProof14526 : EqualModuloRelations reduction14526.relations reduction14526.input reduction14526.output := by lin_cert using reduction14526.terms
theorem substitutionProof14526 : IsMapEvaluation generatorImages reduction14526.relations [8,8,8,17,488] reduction14526.output := by lin_cert using reduction14526.terms
def map_51_228 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image14751 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14751 : InImage map_51_228 image14751 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14751 : Bundle := named_bundle% "RealMapCertificates/relations/basis14751.json"
theorem reductionProof14751 : EqualModuloRelations reduction14751.relations reduction14751.input reduction14751.output := by lin_cert using reduction14751.terms
theorem substitutionProof14751 : IsMapEvaluation generatorImages reduction14751.relations [16,64,403] reduction14751.output := by lin_cert using reduction14751.terms
def image14752 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14752 : InImage map_51_228 image14752 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14752 : Bundle := named_bundle% "RealMapCertificates/relations/basis14752.json"
theorem reductionProof14752 : EqualModuloRelations reduction14752.relations reduction14752.input reduction14752.output := by lin_cert using reduction14752.terms
theorem substitutionProof14752 : IsMapEvaluation generatorImages reduction14752.relations [8,8,8,17,17,238] reduction14752.output := by lin_cert using reduction14752.terms
def image14753 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14753 : InImage map_51_228 image14753 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14753 : Bundle := named_bundle% "RealMapCertificates/relations/basis14753.json"
theorem reductionProof14753 : EqualModuloRelations reduction14753.relations reduction14753.input reduction14753.output := by lin_cert using reduction14753.terms
theorem substitutionProof14753 : IsMapEvaluation generatorImages reduction14753.relations [8,8,8,8,8,8,8,8,8,8,8,17] reduction14753.output := by lin_cert using reduction14753.terms
def image14754 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14754 : InImage map_51_228 image14754 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14754 : Bundle := named_bundle% "RealMapCertificates/relations/basis14754.json"
theorem reductionProof14754 : EqualModuloRelations reduction14754.relations reduction14754.input reduction14754.output := by lin_cert using reduction14754.terms
theorem substitutionProof14754 : IsMapEvaluation generatorImages reduction14754.relations [0,64,685] reduction14754.output := by lin_cert using reduction14754.terms
def image14755 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14755 : InImage map_51_228 image14755 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14755 : Bundle := named_bundle% "RealMapCertificates/relations/basis14755.json"
theorem reductionProof14755 : EqualModuloRelations reduction14755.relations reduction14755.input reduction14755.output := by lin_cert using reduction14755.terms
theorem substitutionProof14755 : IsMapEvaluation generatorImages reduction14755.relations [0,8,8,1033] reduction14755.output := by lin_cert using reduction14755.terms
def map_51_229 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image14968 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14968 : InImage map_51_229 image14968 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14968 : Bundle := named_bundle% "RealMapCertificates/relations/basis14968.json"
theorem reductionProof14968 : EqualModuloRelations reduction14968.relations reduction14968.input reduction14968.output := by lin_cert using reduction14968.terms
theorem substitutionProof14968 : IsMapEvaluation generatorImages reduction14968.relations [1,64,685] reduction14968.output := by lin_cert using reduction14968.terms
def image14969 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14969 : InImage map_51_229 image14969 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14969 : Bundle := named_bundle% "RealMapCertificates/relations/basis14969.json"
theorem reductionProof14969 : EqualModuloRelations reduction14969.relations reduction14969.input reduction14969.output := by lin_cert using reduction14969.terms
theorem substitutionProof14969 : IsMapEvaluation generatorImages reduction14969.relations [0,0,138,452] reduction14969.output := by lin_cert using reduction14969.terms
def image14970 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14970 : InImage map_51_229 image14970 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14970 : Bundle := named_bundle% "RealMapCertificates/relations/basis14970.json"
theorem reductionProof14970 : EqualModuloRelations reduction14970.relations reduction14970.input reduction14970.output := by lin_cert using reduction14970.terms
theorem substitutionProof14970 : IsMapEvaluation generatorImages reduction14970.relations [0,0,16,17,725] reduction14970.output := by lin_cert using reduction14970.terms
def map_51_230 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image15117 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15117 : InImage map_51_230 image15117 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15117 : Bundle := named_bundle% "RealMapCertificates/relations/basis15117.json"
theorem reductionProof15117 : EqualModuloRelations reduction15117.relations reduction15117.input reduction15117.output := by lin_cert using reduction15117.terms
theorem substitutionProof15117 : IsMapEvaluation generatorImages reduction15117.relations [8,8,8,16,17,244] reduction15117.output := by lin_cert using reduction15117.terms
def image15118 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15118 : InImage map_51_230 image15118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15118 : Bundle := named_bundle% "RealMapCertificates/relations/basis15118.json"
theorem reductionProof15118 : EqualModuloRelations reduction15118.relations reduction15118.input reduction15118.output := by lin_cert using reduction15118.terms
theorem substitutionProof15118 : IsMapEvaluation generatorImages reduction15118.relations [0,0,0,17,17,725] reduction15118.output := by lin_cert using reduction15118.terms
def map_51_231 : Matrix 4 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image15374 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15374 : InImage map_51_231 image15374 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction15374 : Bundle := named_bundle% "RealMapCertificates/relations/basis15374.json"
theorem reductionProof15374 : EqualModuloRelations reduction15374.relations reduction15374.input reduction15374.output := by lin_cert using reduction15374.terms
theorem substitutionProof15374 : IsMapEvaluation generatorImages reduction15374.relations [8,64,556] reduction15374.output := by lin_cert using reduction15374.terms
def image15375 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15375 : InImage map_51_231 image15375 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction15375 : Bundle := named_bundle% "RealMapCertificates/relations/basis15375.json"
theorem reductionProof15375 : EqualModuloRelations reduction15375.relations reduction15375.input reduction15375.output := by lin_cert using reduction15375.terms
theorem substitutionProof15375 : IsMapEvaluation generatorImages reduction15375.relations [8,8,8,8,42,224] reduction15375.output := by lin_cert using reduction15375.terms
def image15376 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15376 : InImage map_51_231 image15376 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction15376 : Bundle := named_bundle% "RealMapCertificates/relations/basis15376.json"
theorem reductionProof15376 : EqualModuloRelations reduction15376.relations reduction15376.input reduction15376.output := by lin_cert using reduction15376.terms
theorem substitutionProof15376 : IsMapEvaluation generatorImages reduction15376.relations [8,8,8,8,8,8,8,8,8,8,8,20] reduction15376.output := by lin_cert using reduction15376.terms
def image15377 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15377 : InImage map_51_231 image15377 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction15377 : Bundle := named_bundle% "RealMapCertificates/relations/basis15377.json"
theorem reductionProof15377 : EqualModuloRelations reduction15377.relations reduction15377.input reduction15377.output := by lin_cert using reduction15377.terms
theorem substitutionProof15377 : IsMapEvaluation generatorImages reduction15377.relations [0,8,8,1076] reduction15377.output := by lin_cert using reduction15377.terms
def image15378 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15378 : InImage map_51_231 image15378 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction15378 : Bundle := named_bundle% "RealMapCertificates/relations/basis15378.json"
theorem reductionProof15378 : EqualModuloRelations reduction15378.relations reduction15378.input reduction15378.output := by lin_cert using reduction15378.terms
theorem substitutionProof15378 : IsMapEvaluation generatorImages reduction15378.relations [0,0,0,0,224,246] reduction15378.output := by lin_cert using reduction15378.terms
def image15379 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15379 : InImage map_51_231 image15379 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction15379 : Bundle := named_bundle% "RealMapCertificates/relations/basis15379.json"
theorem reductionProof15379 : EqualModuloRelations reduction15379.relations reduction15379.input reduction15379.output := by lin_cert using reduction15379.terms
theorem substitutionProof15379 : IsMapEvaluation generatorImages reduction15379.relations [0,0,0,0,59,725] reduction15379.output := by lin_cert using reduction15379.terms
def map_51_232 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image15587 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15587 : InImage map_51_232 image15587 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15587 : Bundle := named_bundle% "RealMapCertificates/relations/basis15587.json"
theorem reductionProof15587 : EqualModuloRelations reduction15587.relations reduction15587.input reduction15587.output := by lin_cert using reduction15587.terms
theorem substitutionProof15587 : IsMapEvaluation generatorImages reduction15587.relations [0,0,8,17,896] reduction15587.output := by lin_cert using reduction15587.terms
def image15588 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15588 : InImage map_51_232 image15588 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15588 : Bundle := named_bundle% "RealMapCertificates/relations/basis15588.json"
theorem reductionProof15588 : EqualModuloRelations reduction15588.relations reduction15588.input reduction15588.output := by lin_cert using reduction15588.terms
theorem substitutionProof15588 : IsMapEvaluation generatorImages reduction15588.relations [0,0,0,0,0,0,1650] reduction15588.output := by lin_cert using reduction15588.terms
def map_51_233 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15771 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15771 : InImage map_51_233 image15771 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15771 : Bundle := named_bundle% "RealMapCertificates/relations/basis15771.json"
theorem reductionProof15771 : EqualModuloRelations reduction15771.relations reduction15771.input reduction15771.output := by lin_cert using reduction15771.terms
theorem substitutionProof15771 : IsMapEvaluation generatorImages reduction15771.relations [1812] reduction15771.output := by lin_cert using reduction15771.terms
def image15772 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15772 : InImage map_51_233 image15772 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15772 : Bundle := named_bundle% "RealMapCertificates/relations/basis15772.json"
theorem reductionProof15772 : EqualModuloRelations reduction15772.relations reduction15772.input reduction15772.output := by lin_cert using reduction15772.terms
theorem substitutionProof15772 : IsMapEvaluation generatorImages reduction15772.relations [8,8,8,8,17,343] reduction15772.output := by lin_cert using reduction15772.terms
def map_51_234 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16016 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16016 : InImage map_51_234 image16016 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16016 : Bundle := named_bundle% "RealMapCertificates/relations/basis16016.json"
theorem reductionProof16016 : EqualModuloRelations reduction16016.relations reduction16016.input reduction16016.output := by lin_cert using reduction16016.terms
theorem substitutionProof16016 : IsMapEvaluation generatorImages reduction16016.relations [8,8,64,403] reduction16016.output := by lin_cert using reduction16016.terms
def image16017 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16017 : InImage map_51_234 image16017 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16017 : Bundle := named_bundle% "RealMapCertificates/relations/basis16017.json"
theorem reductionProof16017 : EqualModuloRelations reduction16017.relations reduction16017.input reduction16017.output := by lin_cert using reduction16017.terms
theorem substitutionProof16017 : IsMapEvaluation generatorImages reduction16017.relations [8,8,8,8,17,17,185] reduction16017.output := by lin_cert using reduction16017.terms
def image16018 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16018 : InImage map_51_234 image16018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16018 : Bundle := named_bundle% "RealMapCertificates/relations/basis16018.json"
theorem reductionProof16018 : EqualModuloRelations reduction16018.relations reduction16018.input reduction16018.output := by lin_cert using reduction16018.terms
theorem substitutionProof16018 : IsMapEvaluation generatorImages reduction16018.relations [8,8,8,8,8,8,8,8,8,8,8,22] reduction16018.output := by lin_cert using reduction16018.terms
def image16019 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16019 : InImage map_51_234 image16019 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16019 : Bundle := named_bundle% "RealMapCertificates/relations/basis16019.json"
theorem reductionProof16019 : EqualModuloRelations reduction16019.relations reduction16019.input reduction16019.output := by lin_cert using reduction16019.terms
theorem substitutionProof16019 : IsMapEvaluation generatorImages reduction16019.relations [0,8,8,16,725] reduction16019.output := by lin_cert using reduction16019.terms
def map_51_235 : Matrix 4 2 := fun i j => ([false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image16249 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16249 : InImage map_51_235 image16249 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16249 : Bundle := named_bundle% "RealMapCertificates/relations/basis16249.json"
theorem reductionProof16249 : EqualModuloRelations reduction16249.relations reduction16249.input reduction16249.output := by lin_cert using reduction16249.terms
theorem substitutionProof16249 : IsMapEvaluation generatorImages reduction16249.relations [0,0,8,8,17,725] reduction16249.output := by lin_cert using reduction16249.terms
def image16250 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16250 : InImage map_51_235 image16250 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16250 : Bundle := named_bundle% "RealMapCertificates/relations/basis16250.json"
theorem reductionProof16250 : EqualModuloRelations reduction16250.relations reduction16250.input reduction16250.output := by lin_cert using reduction16250.terms
theorem substitutionProof16250 : IsMapEvaluation generatorImages reduction16250.relations [0,0,0,149,452] reduction16250.output := by lin_cert using reduction16250.terms
def map_51_236 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16434 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16434 : InImage map_51_236 image16434 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16434 : Bundle := named_bundle% "RealMapCertificates/relations/basis16434.json"
theorem reductionProof16434 : EqualModuloRelations reduction16434.relations reduction16434.input reduction16434.output := by lin_cert using reduction16434.terms
theorem substitutionProof16434 : IsMapEvaluation generatorImages reduction16434.relations [1891] reduction16434.output := by lin_cert using reduction16434.terms
def image16435 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16435 : InImage map_51_236 image16435 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16435 : Bundle := named_bundle% "RealMapCertificates/relations/basis16435.json"
theorem reductionProof16435 : EqualModuloRelations reduction16435.relations reduction16435.input reduction16435.output := by lin_cert using reduction16435.terms
theorem substitutionProof16435 : IsMapEvaluation generatorImages reduction16435.relations [8,8,8,8,8,17,244] reduction16435.output := by lin_cert using reduction16435.terms
def image16436 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16436 : InImage map_51_236 image16436 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16436 : Bundle := named_bundle% "RealMapCertificates/relations/basis16436.json"
theorem reductionProof16436 : EqualModuloRelations reduction16436.relations reduction16436.input reduction16436.output := by lin_cert using reduction16436.terms
theorem substitutionProof16436 : IsMapEvaluation generatorImages reduction16436.relations [0,0,0,0,1771] reduction16436.output := by lin_cert using reduction16436.terms
def map_51_237 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16692 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16692 : InImage map_51_237 image16692 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16692 : Bundle := named_bundle% "RealMapCertificates/relations/basis16692.json"
theorem reductionProof16692 : EqualModuloRelations reduction16692.relations reduction16692.input reduction16692.output := by lin_cert using reduction16692.terms
theorem substitutionProof16692 : IsMapEvaluation generatorImages reduction16692.relations [8,8,64,433] reduction16692.output := by lin_cert using reduction16692.terms
def image16693 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16693 : InImage map_51_237 image16693 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16693 : Bundle := named_bundle% "RealMapCertificates/relations/basis16693.json"
theorem reductionProof16693 : EqualModuloRelations reduction16693.relations reduction16693.input reduction16693.output := by lin_cert using reduction16693.terms
theorem substitutionProof16693 : IsMapEvaluation generatorImages reduction16693.relations [8,8,8,8,8,17,17,138] reduction16693.output := by lin_cert using reduction16693.terms
def image16694 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16694 : InImage map_51_237 image16694 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16694 : Bundle := named_bundle% "RealMapCertificates/relations/basis16694.json"
theorem reductionProof16694 : EqualModuloRelations reduction16694.relations reduction16694.input reduction16694.output := by lin_cert using reduction16694.terms
theorem substitutionProof16694 : IsMapEvaluation generatorImages reduction16694.relations [8,8,8,8,8,8,8,8,8,8,8,29] reduction16694.output := by lin_cert using reduction16694.terms
def image16695 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16695 : InImage map_51_237 image16695 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16695 : Bundle := named_bundle% "RealMapCertificates/relations/basis16695.json"
theorem reductionProof16695 : EqualModuloRelations reduction16695.relations reduction16695.input reduction16695.output := by lin_cert using reduction16695.terms
theorem substitutionProof16695 : IsMapEvaluation generatorImages reduction16695.relations [0,0,0,0,0,0,0,64,725] reduction16695.output := by lin_cert using reduction16695.terms
def map_51_238 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image16912 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16912 : InImage map_51_238 image16912 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16912 : Bundle := named_bundle% "RealMapCertificates/relations/basis16912.json"
theorem reductionProof16912 : EqualModuloRelations reduction16912.relations reduction16912.input reduction16912.output := by lin_cert using reduction16912.terms
theorem substitutionProof16912 : IsMapEvaluation generatorImages reduction16912.relations [0,0,0,0,0,0,64,752] reduction16912.output := by lin_cert using reduction16912.terms
def image16913 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16913 : InImage map_51_238 image16913 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16913 : Bundle := named_bundle% "RealMapCertificates/relations/basis16913.json"
theorem reductionProof16913 : EqualModuloRelations reduction16913.relations reduction16913.input reduction16913.output := by lin_cert using reduction16913.terms
theorem substitutionProof16913 : IsMapEvaluation generatorImages reduction16913.relations [0,0,0,0,0,0,0,0,138,491] reduction16913.output := by lin_cert using reduction16913.terms
def map_51_239 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17123 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17123 : InImage map_51_239 image17123 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17123 : Bundle := named_bundle% "RealMapCertificates/relations/basis17123.json"
theorem reductionProof17123 : EqualModuloRelations reduction17123.relations reduction17123.input reduction17123.output := by lin_cert using reduction17123.terms
theorem substitutionProof17123 : IsMapEvaluation generatorImages reduction17123.relations [42,1033] reduction17123.output := by lin_cert using reduction17123.terms
def image17124 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17124 : InImage map_51_239 image17124 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17124 : Bundle := named_bundle% "RealMapCertificates/relations/basis17124.json"
theorem reductionProof17124 : EqualModuloRelations reduction17124.relations reduction17124.input reduction17124.output := by lin_cert using reduction17124.terms
theorem substitutionProof17124 : IsMapEvaluation generatorImages reduction17124.relations [8,1567] reduction17124.output := by lin_cert using reduction17124.terms
def image17125 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17125 : InImage map_51_239 image17125 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17125 : Bundle := named_bundle% "RealMapCertificates/relations/basis17125.json"
theorem reductionProof17125 : EqualModuloRelations reduction17125.relations reduction17125.input reduction17125.output := by lin_cert using reduction17125.terms
theorem substitutionProof17125 : IsMapEvaluation generatorImages reduction17125.relations [8,8,8,8,8,17,257] reduction17125.output := by lin_cert using reduction17125.terms
def image17126 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17126 : InImage map_51_239 image17126 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17126 : Bundle := named_bundle% "RealMapCertificates/relations/basis17126.json"
theorem reductionProof17126 : EqualModuloRelations reduction17126.relations reduction17126.input reduction17126.output := by lin_cert using reduction17126.terms
theorem substitutionProof17126 : IsMapEvaluation generatorImages reduction17126.relations [0,0,0,0,0,0,0,0,0,0,0,1686] reduction17126.output := by lin_cert using reduction17126.terms
def map_51_240 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17391 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17391 : InImage map_51_240 image17391 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17391 : Bundle := named_bundle% "RealMapCertificates/relations/basis17391.json"
theorem reductionProof17391 : EqualModuloRelations reduction17391.relations reduction17391.input reduction17391.output := by lin_cert using reduction17391.terms
theorem substitutionProof17391 : IsMapEvaluation generatorImages reduction17391.relations [8,8,16,64,225] reduction17391.output := by lin_cert using reduction17391.terms
def image17392 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17392 : InImage map_51_240 image17392 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17392 : Bundle := named_bundle% "RealMapCertificates/relations/basis17392.json"
theorem reductionProof17392 : EqualModuloRelations reduction17392.relations reduction17392.input reduction17392.output := by lin_cert using reduction17392.terms
theorem substitutionProof17392 : IsMapEvaluation generatorImages reduction17392.relations [8,8,8,8,8,17,17,147] reduction17392.output := by lin_cert using reduction17392.terms
def image17393 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17393 : InImage map_51_240 image17393 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17393 : Bundle := named_bundle% "RealMapCertificates/relations/basis17393.json"
theorem reductionProof17393 : EqualModuloRelations reduction17393.relations reduction17393.input reduction17393.output := by lin_cert using reduction17393.terms
theorem substitutionProof17393 : IsMapEvaluation generatorImages reduction17393.relations [8,8,8,8,8,8,8,8,8,8,8,32] reduction17393.output := by lin_cert using reduction17393.terms
def image17394 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17394 : InImage map_51_240 image17394 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17394 : Bundle := named_bundle% "RealMapCertificates/relations/basis17394.json"
theorem reductionProof17394 : EqualModuloRelations reduction17394.relations reduction17394.input reduction17394.output := by lin_cert using reduction17394.terms
theorem substitutionProof17394 : IsMapEvaluation generatorImages reduction17394.relations [0,0,0,0,0,0,0,0,0,0,1735] reduction17394.output := by lin_cert using reduction17394.terms
def map_51_241 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image17675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17675 : InImage map_51_241 image17675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17675 : Bundle := named_bundle% "RealMapCertificates/relations/basis17675.json"
theorem reductionProof17675 : EqualModuloRelations reduction17675.relations reduction17675.input reduction17675.output := by lin_cert using reduction17675.terms
theorem substitutionProof17675 : IsMapEvaluation generatorImages reduction17675.relations [0,0,0,0,0,0,0,0,0,0,0,1736] reduction17675.output := by lin_cert using reduction17675.terms
def map_51_242 : Matrix 1 6 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*6+j.val]!
def image17890 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17890 : InImage map_51_242 image17890 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction17890 : Bundle := named_bundle% "RealMapCertificates/relations/basis17890.json"
theorem reductionProof17890 : EqualModuloRelations reduction17890.relations reduction17890.input reduction17890.output := by lin_cert using reduction17890.terms
theorem substitutionProof17890 : IsMapEvaluation generatorImages reduction17890.relations [42,1076] reduction17890.output := by lin_cert using reduction17890.terms
def image17891 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17891 : InImage map_51_242 image17891 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction17891 : Bundle := named_bundle% "RealMapCertificates/relations/basis17891.json"
theorem reductionProof17891 : EqualModuloRelations reduction17891.relations reduction17891.input reduction17891.output := by lin_cert using reduction17891.terms
theorem substitutionProof17891 : IsMapEvaluation generatorImages reduction17891.relations [8,1620] reduction17891.output := by lin_cert using reduction17891.terms
def image17892 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17892 : InImage map_51_242 image17892 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction17892 : Bundle := named_bundle% "RealMapCertificates/relations/basis17892.json"
theorem reductionProof17892 : EqualModuloRelations reduction17892.relations reduction17892.input reduction17892.output := by lin_cert using reduction17892.terms
theorem substitutionProof17892 : IsMapEvaluation generatorImages reduction17892.relations [8,8,8,8,8,16,17,149] reduction17892.output := by lin_cert using reduction17892.terms
def image17893 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17893 : InImage map_51_242 image17893 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction17893 : Bundle := named_bundle% "RealMapCertificates/relations/basis17893.json"
theorem reductionProof17893 : EqualModuloRelations reduction17893.relations reduction17893.input reduction17893.output := by lin_cert using reduction17893.terms
theorem substitutionProof17893 : IsMapEvaluation generatorImages reduction17893.relations [0,2036] reduction17893.output := by lin_cert using reduction17893.terms
def image17894 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17894 : InImage map_51_242 image17894 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction17894 : Bundle := named_bundle% "RealMapCertificates/relations/basis17894.json"
theorem reductionProof17894 : EqualModuloRelations reduction17894.relations reduction17894.input reduction17894.output := by lin_cert using reduction17894.terms
theorem substitutionProof17894 : IsMapEvaluation generatorImages reduction17894.relations [0,0,0,0,0,64,64,224] reduction17894.output := by lin_cert using reduction17894.terms
def image17895 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17895 : InImage map_51_242 image17895 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction17895 : Bundle := named_bundle% "RealMapCertificates/relations/basis17895.json"
theorem reductionProof17895 : EqualModuloRelations reduction17895.relations reduction17895.input reduction17895.output := by lin_cert using reduction17895.terms
theorem substitutionProof17895 : IsMapEvaluation generatorImages reduction17895.relations [0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction17895.output := by lin_cert using reduction17895.terms
end RealMapCertificates
