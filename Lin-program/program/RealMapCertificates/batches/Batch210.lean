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
  | 110 => [[4,4,4,4,4,6]]
  | 113 => [[0,8,12]]
  | 116 => [[4,4,4,4,4,8]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 145 => [[4,4,4,4,4,4,6]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 152 => [[4,4,4,4,4,4,8]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 162 => [[0,5,9,12]]
  | 167 => [[7,9,12]]
  | 173 => []
  | 182 => [[4,4,4,4,4,4,4,6]]
  | 185 => [[0,4,4,8,12]]
  | 199 => [[4,4,4,4,4,4,4,8]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 232 => [[5,6,9,12]]
  | 236 => [[4,4,4,4,4,4,4,4,6]]
  | 238 => [[0,4,4,4,8,12]]
  | 252 => [[4,4,4,4,4,4,4,4,8]]
  | 295 => [[4,4,4,4,4,4,4,4,4,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 298 => [[0,4,4,4,4,8,12]]
  | 324 => []
  | 325 => [[4,4,4,4,4,4,4,4,4,8]]
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 469 => [[4,4,4,4,4,4,4,4,4,4,8]]
  | 491 => []
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 594 => [[3,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 606 => []
  | 623 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 896 => []
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 939 => []
  | 952 => []
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 972 => []
  | 1121 => []
  | 1143 => []
  | 1181 => []
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1335 => [[4,4,4,5,5,10,12,12]]
  | 1349 => []
  | 1400 => []
  | 1604 => [[4,4,4,4,5,7,10,12,12]]
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1854 => [[4,4,4,4,4,5,7,10,12,12]]
  | 2090 => []
  | 2237 => [[4,4,4,4,4,4,5,7,10,12,12]]
  | 2537 => []
  | 2538 => []
  | 2539 => [[4,4,4,4,6,8,12,12,12]]
  | _ => []
def map_51_243 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18179 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18179 : InImage map_51_243 image18179 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18179 : Bundle := named_bundle% "RealMapCertificates/relations/basis18179.json"
theorem reductionProof18179 : EqualModuloRelations reduction18179.relations reduction18179.input reduction18179.output := by lin_cert using reduction18179.terms
theorem substitutionProof18179 : IsMapEvaluation generatorImages reduction18179.relations [8,8,8,64,298] reduction18179.output := by lin_cert using reduction18179.terms
def image18180 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18180 : InImage map_51_243 image18180 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18180 : Bundle := named_bundle% "RealMapCertificates/relations/basis18180.json"
theorem reductionProof18180 : EqualModuloRelations reduction18180.relations reduction18180.input reduction18180.output := by lin_cert using reduction18180.terms
theorem substitutionProof18180 : IsMapEvaluation generatorImages reduction18180.relations [8,8,8,8,8,8,42,137] reduction18180.output := by lin_cert using reduction18180.terms
def image18181 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation18181 : InImage map_51_243 image18181 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18181 : Bundle := named_bundle% "RealMapCertificates/relations/basis18181.json"
theorem reductionProof18181 : EqualModuloRelations reduction18181.relations reduction18181.input reduction18181.output := by lin_cert using reduction18181.terms
theorem substitutionProof18181 : IsMapEvaluation generatorImages reduction18181.relations [8,8,8,8,8,8,8,8,8,8,9,32] reduction18181.output := by lin_cert using reduction18181.terms
def image18182 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18182 : InImage map_51_243 image18182 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18182 : Bundle := named_bundle% "RealMapCertificates/relations/basis18182.json"
theorem reductionProof18182 : EqualModuloRelations reduction18182.relations reduction18182.input reduction18182.output := by lin_cert using reduction18182.terms
theorem substitutionProof18182 : IsMapEvaluation generatorImages reduction18182.relations [0,0,0,0,0,0,64,64,225] reduction18182.output := by lin_cert using reduction18182.terms
def map_51_245 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image18636 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18636 : InImage map_51_245 image18636 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18636 : Bundle := named_bundle% "RealMapCertificates/relations/basis18636.json"
theorem reductionProof18636 : EqualModuloRelations reduction18636.relations reduction18636.input reduction18636.output := by lin_cert using reduction18636.terms
theorem substitutionProof18636 : IsMapEvaluation generatorImages reduction18636.relations [8,60,725] reduction18636.output := by lin_cert using reduction18636.terms
def image18637 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18637 : InImage map_51_245 image18637 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18637 : Bundle := named_bundle% "RealMapCertificates/relations/basis18637.json"
theorem reductionProof18637 : EqualModuloRelations reduction18637.relations reduction18637.input reduction18637.output := by lin_cert using reduction18637.terms
theorem substitutionProof18637 : IsMapEvaluation generatorImages reduction18637.relations [8,8,1349] reduction18637.output := by lin_cert using reduction18637.terms
def image18638 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18638 : InImage map_51_245 image18638 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18638 : Bundle := named_bundle% "RealMapCertificates/relations/basis18638.json"
theorem reductionProof18638 : EqualModuloRelations reduction18638.relations reduction18638.input reduction18638.output := by lin_cert using reduction18638.terms
theorem substitutionProof18638 : IsMapEvaluation generatorImages reduction18638.relations [8,8,8,8,8,8,17,206] reduction18638.output := by lin_cert using reduction18638.terms
def map_51_246 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image18925 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18925 : InImage map_51_246 image18925 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18925 : Bundle := named_bundle% "RealMapCertificates/relations/basis18925.json"
theorem reductionProof18925 : EqualModuloRelations reduction18925.relations reduction18925.input reduction18925.output := by lin_cert using reduction18925.terms
theorem substitutionProof18925 : IsMapEvaluation generatorImages reduction18925.relations [8,8,8,8,64,225] reduction18925.output := by lin_cert using reduction18925.terms
def image18926 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation18926 : InImage map_51_246 image18926 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18926 : Bundle := named_bundle% "RealMapCertificates/relations/basis18926.json"
theorem reductionProof18926 : EqualModuloRelations reduction18926.relations reduction18926.input reduction18926.output := by lin_cert using reduction18926.terms
theorem substitutionProof18926 : IsMapEvaluation generatorImages reduction18926.relations [8,8,8,8,8,8,17,17,113] reduction18926.output := by lin_cert using reduction18926.terms
def image18927 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation18927 : InImage map_51_246 image18927 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18927 : Bundle := named_bundle% "RealMapCertificates/relations/basis18927.json"
theorem reductionProof18927 : EqualModuloRelations reduction18927.relations reduction18927.input reduction18927.output := by lin_cert using reduction18927.terms
theorem substitutionProof18927 : IsMapEvaluation generatorImages reduction18927.relations [8,8,8,8,8,8,8,8,8,8,13,32] reduction18927.output := by lin_cert using reduction18927.terms
def map_51_247 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image19206 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19206 : InImage map_51_247 image19206 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19206 : Bundle := named_bundle% "RealMapCertificates/relations/basis19206.json"
theorem reductionProof19206 : EqualModuloRelations reduction19206.relations reduction19206.input reduction19206.output := by lin_cert using reduction19206.terms
theorem substitutionProof19206 : IsMapEvaluation generatorImages reduction19206.relations [2237] reduction19206.output := by lin_cert using reduction19206.terms
def map_51_248 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image19435 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19435 : InImage map_51_248 image19435 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19435 : Bundle := named_bundle% "RealMapCertificates/relations/basis19435.json"
theorem reductionProof19435 : EqualModuloRelations reduction19435.relations reduction19435.input reduction19435.output := by lin_cert using reduction19435.terms
theorem substitutionProof19435 : IsMapEvaluation generatorImages reduction19435.relations [8,42,896] reduction19435.output := by lin_cert using reduction19435.terms
def image19436 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19436 : InImage map_51_248 image19436 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19436 : Bundle := named_bundle% "RealMapCertificates/relations/basis19436.json"
theorem reductionProof19436 : EqualModuloRelations reduction19436.relations reduction19436.input reduction19436.output := by lin_cert using reduction19436.terms
theorem substitutionProof19436 : IsMapEvaluation generatorImages reduction19436.relations [8,8,1400] reduction19436.output := by lin_cert using reduction19436.terms
def image19437 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19437 : InImage map_51_248 image19437 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19437 : Bundle := named_bundle% "RealMapCertificates/relations/basis19437.json"
theorem reductionProof19437 : EqualModuloRelations reduction19437.relations reduction19437.input reduction19437.output := by lin_cert using reduction19437.terms
theorem substitutionProof19437 : IsMapEvaluation generatorImages reduction19437.relations [8,8,8,8,8,8,8,17,149] reduction19437.output := by lin_cert using reduction19437.terms
def image19438 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19438 : InImage map_51_248 image19438 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19438 : Bundle := named_bundle% "RealMapCertificates/relations/basis19438.json"
theorem reductionProof19438 : EqualModuloRelations reduction19438.relations reduction19438.input reduction19438.output := by lin_cert using reduction19438.terms
theorem substitutionProof19438 : IsMapEvaluation generatorImages reduction19438.relations [0,0,0,64,896] reduction19438.output := by lin_cert using reduction19438.terms
def map_51_249 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image19741 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19741 : InImage map_51_249 image19741 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19741 : Bundle := named_bundle% "RealMapCertificates/relations/basis19741.json"
theorem reductionProof19741 : EqualModuloRelations reduction19741.relations reduction19741.input reduction19741.output := by lin_cert using reduction19741.terms
theorem substitutionProof19741 : IsMapEvaluation generatorImages reduction19741.relations [8,8,8,8,64,238] reduction19741.output := by lin_cert using reduction19741.terms
def image19742 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19742 : InImage map_51_249 image19742 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19742 : Bundle := named_bundle% "RealMapCertificates/relations/basis19742.json"
theorem reductionProof19742 : EqualModuloRelations reduction19742.relations reduction19742.input reduction19742.output := by lin_cert using reduction19742.terms
theorem substitutionProof19742 : IsMapEvaluation generatorImages reduction19742.relations [8,8,8,8,8,8,8,17,154] reduction19742.output := by lin_cert using reduction19742.terms
def image19743 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19743 : InImage map_51_249 image19743 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19743 : Bundle := named_bundle% "RealMapCertificates/relations/basis19743.json"
theorem reductionProof19743 : EqualModuloRelations reduction19743.relations reduction19743.input reduction19743.output := by lin_cert using reduction19743.terms
theorem substitutionProof19743 : IsMapEvaluation generatorImages reduction19743.relations [8,8,8,8,8,8,8,8,8,9,13,32] reduction19743.output := by lin_cert using reduction19743.terms
def map_51_250 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19990 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19990 : InImage map_51_250 image19990 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19990 : Bundle := named_bundle% "RealMapCertificates/relations/basis19990.json"
theorem reductionProof19990 : EqualModuloRelations reduction19990.relations reduction19990.input reduction19990.output := by lin_cert using reduction19990.terms
theorem substitutionProof19990 : IsMapEvaluation generatorImages reduction19990.relations [8,1771] reduction19990.output := by lin_cert using reduction19990.terms
def map_51_251 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image20245 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20245 : InImage map_51_251 image20245 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20245 : Bundle := named_bundle% "RealMapCertificates/relations/basis20245.json"
theorem reductionProof20245 : EqualModuloRelations reduction20245.relations reduction20245.input reduction20245.output := by lin_cert using reduction20245.terms
theorem substitutionProof20245 : IsMapEvaluation generatorImages reduction20245.relations [8,8,42,725] reduction20245.output := by lin_cert using reduction20245.terms
def image20246 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20246 : InImage map_51_251 image20246 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20246 : Bundle := named_bundle% "RealMapCertificates/relations/basis20246.json"
theorem reductionProof20246 : EqualModuloRelations reduction20246.relations reduction20246.input reduction20246.output := by lin_cert using reduction20246.terms
theorem substitutionProof20246 : IsMapEvaluation generatorImages reduction20246.relations [8,8,8,1121] reduction20246.output := by lin_cert using reduction20246.terms
def image20247 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation20247 : InImage map_51_251 image20247 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20247 : Bundle := named_bundle% "RealMapCertificates/relations/basis20247.json"
theorem reductionProof20247 : EqualModuloRelations reduction20247.relations reduction20247.input reduction20247.output := by lin_cert using reduction20247.terms
theorem substitutionProof20247 : IsMapEvaluation generatorImages reduction20247.relations [8,8,8,8,8,8,8,17,160] reduction20247.output := by lin_cert using reduction20247.terms
def image20248 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20248 : InImage map_51_251 image20248 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20248 : Bundle := named_bundle% "RealMapCertificates/relations/basis20248.json"
theorem reductionProof20248 : EqualModuloRelations reduction20248.relations reduction20248.input reduction20248.output := by lin_cert using reduction20248.terms
theorem substitutionProof20248 : IsMapEvaluation generatorImages reduction20248.relations [5,64,64,224] reduction20248.output := by lin_cert using reduction20248.terms
def map_51_252 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20546 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20546 : InImage map_51_252 image20546 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20546 : Bundle := named_bundle% "RealMapCertificates/relations/basis20546.json"
theorem reductionProof20546 : EqualModuloRelations reduction20546.relations reduction20546.input reduction20546.output := by lin_cert using reduction20546.terms
theorem substitutionProof20546 : IsMapEvaluation generatorImages reduction20546.relations [8,8,8,8,16,64,138] reduction20546.output := by lin_cert using reduction20546.terms
def image20547 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20547 : InImage map_51_252 image20547 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20547 : Bundle := named_bundle% "RealMapCertificates/relations/basis20547.json"
theorem reductionProof20547 : EqualModuloRelations reduction20547.relations reduction20547.input reduction20547.output := by lin_cert using reduction20547.terms
theorem substitutionProof20547 : IsMapEvaluation generatorImages reduction20547.relations [8,8,8,8,8,8,8,17,162] reduction20547.output := by lin_cert using reduction20547.terms
def image20548 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20548 : InImage map_51_252 image20548 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20548 : Bundle := named_bundle% "RealMapCertificates/relations/basis20548.json"
theorem reductionProof20548 : EqualModuloRelations reduction20548.relations reduction20548.input reduction20548.output := by lin_cert using reduction20548.terms
theorem substitutionProof20548 : IsMapEvaluation generatorImages reduction20548.relations [8,8,8,8,8,8,8,8,8,13,13,32] reduction20548.output := by lin_cert using reduction20548.terms
def map_51_253 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20819 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20819 : InImage map_51_253 image20819 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20819 : Bundle := named_bundle% "RealMapCertificates/relations/basis20819.json"
theorem reductionProof20819 : EqualModuloRelations reduction20819.relations reduction20819.input reduction20819.output := by lin_cert using reduction20819.terms
theorem substitutionProof20819 : IsMapEvaluation generatorImages reduction20819.relations [8,1854] reduction20819.output := by lin_cert using reduction20819.terms
def map_51_254 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image21073 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21073 : InImage map_51_254 image21073 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21073 : Bundle := named_bundle% "RealMapCertificates/relations/basis21073.json"
theorem reductionProof21073 : EqualModuloRelations reduction21073.relations reduction21073.input reduction21073.output := by lin_cert using reduction21073.terms
theorem substitutionProof21073 : IsMapEvaluation generatorImages reduction21073.relations [138,725] reduction21073.output := by lin_cert using reduction21073.terms
def image21074 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21074 : InImage map_51_254 image21074 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21074 : Bundle := named_bundle% "RealMapCertificates/relations/basis21074.json"
theorem reductionProof21074 : EqualModuloRelations reduction21074.relations reduction21074.input reduction21074.output := by lin_cert using reduction21074.terms
theorem substitutionProof21074 : IsMapEvaluation generatorImages reduction21074.relations [8,8,42,759] reduction21074.output := by lin_cert using reduction21074.terms
def image21075 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21075 : InImage map_51_254 image21075 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21075 : Bundle := named_bundle% "RealMapCertificates/relations/basis21075.json"
theorem reductionProof21075 : EqualModuloRelations reduction21075.relations reduction21075.input reduction21075.output := by lin_cert using reduction21075.terms
theorem substitutionProof21075 : IsMapEvaluation generatorImages reduction21075.relations [8,8,8,1181] reduction21075.output := by lin_cert using reduction21075.terms
def image21076 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21076 : InImage map_51_254 image21076 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21076 : Bundle := named_bundle% "RealMapCertificates/relations/basis21076.json"
theorem reductionProof21076 : EqualModuloRelations reduction21076.relations reduction21076.input reduction21076.output := by lin_cert using reduction21076.terms
theorem substitutionProof21076 : IsMapEvaluation generatorImages reduction21076.relations [8,8,8,8,8,8,8,16,167] reduction21076.output := by lin_cert using reduction21076.terms
def map_51_255 : Matrix 4 5 := fun i j => ([false,false,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image21422 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21422 : InImage map_51_255 image21422 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction21422 : Bundle := named_bundle% "RealMapCertificates/relations/basis21422.json"
theorem reductionProof21422 : EqualModuloRelations reduction21422.relations reduction21422.input reduction21422.output := by lin_cert using reduction21422.terms
theorem substitutionProof21422 : IsMapEvaluation generatorImages reduction21422.relations [2538] reduction21422.output := by lin_cert using reduction21422.terms
def image21423 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21423 : InImage map_51_255 image21423 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction21423 : Bundle := named_bundle% "RealMapCertificates/relations/basis21423.json"
theorem reductionProof21423 : EqualModuloRelations reduction21423.relations reduction21423.input reduction21423.output := by lin_cert using reduction21423.terms
theorem substitutionProof21423 : IsMapEvaluation generatorImages reduction21423.relations [2537] reduction21423.output := by lin_cert using reduction21423.terms
def image21424 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21424 : InImage map_51_255 image21424 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction21424 : Bundle := named_bundle% "RealMapCertificates/relations/basis21424.json"
theorem reductionProof21424 : EqualModuloRelations reduction21424.relations reduction21424.input reduction21424.output := by lin_cert using reduction21424.terms
theorem substitutionProof21424 : IsMapEvaluation generatorImages reduction21424.relations [8,8,8,8,8,64,185] reduction21424.output := by lin_cert using reduction21424.terms
def image21425 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21425 : InImage map_51_255 image21425 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction21425 : Bundle := named_bundle% "RealMapCertificates/relations/basis21425.json"
theorem reductionProof21425 : EqualModuloRelations reduction21425.relations reduction21425.input reduction21425.output := by lin_cert using reduction21425.terms
theorem substitutionProof21425 : IsMapEvaluation generatorImages reduction21425.relations [8,8,8,8,8,8,8,8,42,64] reduction21425.output := by lin_cert using reduction21425.terms
def image21426 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21426 : InImage map_51_255 image21426 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction21426 : Bundle := named_bundle% "RealMapCertificates/relations/basis21426.json"
theorem reductionProof21426 : EqualModuloRelations reduction21426.relations reduction21426.input reduction21426.output := by lin_cert using reduction21426.terms
theorem substitutionProof21426 : IsMapEvaluation generatorImages reduction21426.relations [8,8,8,8,8,8,8,8,9,13,13,32] reduction21426.output := by lin_cert using reduction21426.terms
def map_51_256 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21709 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21709 : InImage map_51_256 image21709 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21709 : Bundle := named_bundle% "RealMapCertificates/relations/basis21709.json"
theorem reductionProof21709 : EqualModuloRelations reduction21709.relations reduction21709.input reduction21709.output := by lin_cert using reduction21709.terms
theorem substitutionProof21709 : IsMapEvaluation generatorImages reduction21709.relations [8,16,1335] reduction21709.output := by lin_cert using reduction21709.terms
def map_51_257 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image22024 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22024 : InImage map_51_257 image22024 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22024 : Bundle := named_bundle% "RealMapCertificates/relations/basis22024.json"
theorem reductionProof22024 : EqualModuloRelations reduction22024.relations reduction22024.input reduction22024.output := by lin_cert using reduction22024.terms
theorem substitutionProof22024 : IsMapEvaluation generatorImages reduction22024.relations [138,759] reduction22024.output := by lin_cert using reduction22024.terms
def image22025 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22025 : InImage map_51_257 image22025 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22025 : Bundle := named_bundle% "RealMapCertificates/relations/basis22025.json"
theorem reductionProof22025 : EqualModuloRelations reduction22025.relations reduction22025.input reduction22025.output := by lin_cert using reduction22025.terms
theorem substitutionProof22025 : IsMapEvaluation generatorImages reduction22025.relations [8,8,8,60,491] reduction22025.output := by lin_cert using reduction22025.terms
def image22026 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22026 : InImage map_51_257 image22026 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22026 : Bundle := named_bundle% "RealMapCertificates/relations/basis22026.json"
theorem reductionProof22026 : EqualModuloRelations reduction22026.relations reduction22026.input reduction22026.output := by lin_cert using reduction22026.terms
theorem substitutionProof22026 : IsMapEvaluation generatorImages reduction22026.relations [8,8,8,8,939] reduction22026.output := by lin_cert using reduction22026.terms
def image22027 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22027 : InImage map_51_257 image22027 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22027 : Bundle := named_bundle% "RealMapCertificates/relations/basis22027.json"
theorem reductionProof22027 : EqualModuloRelations reduction22027.relations reduction22027.input reduction22027.output := by lin_cert using reduction22027.terms
theorem substitutionProof22027 : IsMapEvaluation generatorImages reduction22027.relations [8,8,8,8,8,8,8,8,232] reduction22027.output := by lin_cert using reduction22027.terms
def map_51_258 : Matrix 2 5 := fun i j => ([false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22381 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22381 : InImage map_51_258 image22381 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22381 : Bundle := named_bundle% "RealMapCertificates/relations/basis22381.json"
theorem reductionProof22381 : EqualModuloRelations reduction22381.relations reduction22381.input reduction22381.output := by lin_cert using reduction22381.terms
theorem substitutionProof22381 : IsMapEvaluation generatorImages reduction22381.relations [138,778] reduction22381.output := by lin_cert using reduction22381.terms
def image22382 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22382 : InImage map_51_258 image22382 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22382 : Bundle := named_bundle% "RealMapCertificates/relations/basis22382.json"
theorem reductionProof22382 : EqualModuloRelations reduction22382.relations reduction22382.input reduction22382.output := by lin_cert using reduction22382.terms
theorem substitutionProof22382 : IsMapEvaluation generatorImages reduction22382.relations [8,8,8,8,8,8,64,138] reduction22382.output := by lin_cert using reduction22382.terms
def image22383 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22383 : InImage map_51_258 image22383 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22383 : Bundle := named_bundle% "RealMapCertificates/relations/basis22383.json"
theorem reductionProof22383 : EqualModuloRelations reduction22383.relations reduction22383.input reduction22383.output := by lin_cert using reduction22383.terms
theorem substitutionProof22383 : IsMapEvaluation generatorImages reduction22383.relations [8,8,8,8,8,8,8,8,23,113] reduction22383.output := by lin_cert using reduction22383.terms
def image22384 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22384 : InImage map_51_258 image22384 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22384 : Bundle := named_bundle% "RealMapCertificates/relations/basis22384.json"
theorem reductionProof22384 : EqualModuloRelations reduction22384.relations reduction22384.input reduction22384.output := by lin_cert using reduction22384.terms
theorem substitutionProof22384 : IsMapEvaluation generatorImages reduction22384.relations [8,8,8,8,8,8,8,8,13,13,13,32] reduction22384.output := by lin_cert using reduction22384.terms
def image22385 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22385 : InImage map_51_258 image22385 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22385 : Bundle := named_bundle% "RealMapCertificates/relations/basis22385.json"
theorem reductionProof22385 : EqualModuloRelations reduction22385.relations reduction22385.input reduction22385.output := by lin_cert using reduction22385.terms
theorem substitutionProof22385 : IsMapEvaluation generatorImages reduction22385.relations [0,0,0,2539] reduction22385.output := by lin_cert using reduction22385.terms
def map_51_259 : Matrix 3 1 := fun i j => ([true,false,false] : List Bool)[i.val*1+j.val]!
def image22713 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation22713 : InImage map_51_259 image22713 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22713 : Bundle := named_bundle% "RealMapCertificates/relations/basis22713.json"
theorem reductionProof22713 : EqualModuloRelations reduction22713.relations reduction22713.input reduction22713.output := by lin_cert using reduction22713.terms
theorem substitutionProof22713 : IsMapEvaluation generatorImages reduction22713.relations [8,8,1604] reduction22713.output := by lin_cert using reduction22713.terms
def map_51_260 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image23051 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23051 : InImage map_51_260 image23051 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23051 : Bundle := named_bundle% "RealMapCertificates/relations/basis23051.json"
theorem reductionProof23051 : EqualModuloRelations reduction23051.relations reduction23051.input reduction23051.output := by lin_cert using reduction23051.terms
theorem substitutionProof23051 : IsMapEvaluation generatorImages reduction23051.relations [16,138,491] reduction23051.output := by lin_cert using reduction23051.terms
def image23052 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23052 : InImage map_51_260 image23052 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23052 : Bundle := named_bundle% "RealMapCertificates/relations/basis23052.json"
theorem reductionProof23052 : EqualModuloRelations reduction23052.relations reduction23052.input reduction23052.output := by lin_cert using reduction23052.terms
theorem substitutionProof23052 : IsMapEvaluation generatorImages reduction23052.relations [8,8,8,42,623] reduction23052.output := by lin_cert using reduction23052.terms
def image23053 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23053 : InImage map_51_260 image23053 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23053 : Bundle := named_bundle% "RealMapCertificates/relations/basis23053.json"
theorem reductionProof23053 : EqualModuloRelations reduction23053.relations reduction23053.input reduction23053.output := by lin_cert using reduction23053.terms
theorem substitutionProof23053 : IsMapEvaluation generatorImages reduction23053.relations [8,8,8,8,972] reduction23053.output := by lin_cert using reduction23053.terms
def image23054 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23054 : InImage map_51_260 image23054 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23054 : Bundle := named_bundle% "RealMapCertificates/relations/basis23054.json"
theorem reductionProof23054 : EqualModuloRelations reduction23054.relations reduction23054.input reduction23054.output := by lin_cert using reduction23054.terms
theorem substitutionProof23054 : IsMapEvaluation generatorImages reduction23054.relations [8,8,8,8,8,8,8,8,8,167] reduction23054.output := by lin_cert using reduction23054.terms
def image23055 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23055 : InImage map_51_260 image23055 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23055 : Bundle := named_bundle% "RealMapCertificates/relations/basis23055.json"
theorem reductionProof23055 : EqualModuloRelations reduction23055.relations reduction23055.input reduction23055.output := by lin_cert using reduction23055.terms
theorem substitutionProof23055 : IsMapEvaluation generatorImages reduction23055.relations [0,149,725] reduction23055.output := by lin_cert using reduction23055.terms
def map_51_261 : Matrix 2 7 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*7+j.val]!
def image23495 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23495 : InImage map_51_261 image23495 := by lin_cert using (fun j : Fin 7 => decide (j.val = 0))
def reduction23495 : Bundle := named_bundle% "RealMapCertificates/relations/basis23495.json"
theorem reductionProof23495 : EqualModuloRelations reduction23495.relations reduction23495.input reduction23495.output := by lin_cert using reduction23495.terms
theorem substitutionProof23495 : IsMapEvaluation generatorImages reduction23495.relations [64,1143] reduction23495.output := by lin_cert using reduction23495.terms
def image23496 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23496 : InImage map_51_261 image23496 := by lin_cert using (fun j : Fin 7 => decide (j.val = 1))
def reduction23496 : Bundle := named_bundle% "RealMapCertificates/relations/basis23496.json"
theorem reductionProof23496 : EqualModuloRelations reduction23496.relations reduction23496.input reduction23496.output := by lin_cert using reduction23496.terms
theorem substitutionProof23496 : IsMapEvaluation generatorImages reduction23496.relations [8,2090] reduction23496.output := by lin_cert using reduction23496.terms
def image23497 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23497 : InImage map_51_261 image23497 := by lin_cert using (fun j : Fin 7 => decide (j.val = 2))
def reduction23497 : Bundle := named_bundle% "RealMapCertificates/relations/basis23497.json"
theorem reductionProof23497 : EqualModuloRelations reduction23497.relations reduction23497.input reduction23497.output := by lin_cert using reduction23497.terms
theorem substitutionProof23497 : IsMapEvaluation generatorImages reduction23497.relations [8,8,8,8,8,8,64,147] reduction23497.output := by lin_cert using reduction23497.terms
def image23498 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23498 : InImage map_51_261 image23498 := by lin_cert using (fun j : Fin 7 => decide (j.val = 3))
def reduction23498 : Bundle := named_bundle% "RealMapCertificates/relations/basis23498.json"
theorem reductionProof23498 : EqualModuloRelations reduction23498.relations reduction23498.input reduction23498.output := by lin_cert using reduction23498.terms
theorem substitutionProof23498 : IsMapEvaluation generatorImages reduction23498.relations [8,8,8,8,8,8,8,9,13,13,13,32] reduction23498.output := by lin_cert using reduction23498.terms
def image23499 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23499 : InImage map_51_261 image23499 := by lin_cert using (fun j : Fin 7 => decide (j.val = 4))
def reduction23499 : Bundle := named_bundle% "RealMapCertificates/relations/basis23499.json"
theorem reductionProof23499 : EqualModuloRelations reduction23499.relations reduction23499.input reduction23499.output := by lin_cert using reduction23499.terms
theorem substitutionProof23499 : IsMapEvaluation generatorImages reduction23499.relations [8,8,8,8,8,8,8,8,8,173] reduction23499.output := by lin_cert using reduction23499.terms
def image23500 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23500 : InImage map_51_261 image23500 := by lin_cert using (fun j : Fin 7 => decide (j.val = 5))
def reduction23500 : Bundle := named_bundle% "RealMapCertificates/relations/basis23500.json"
theorem reductionProof23500 : EqualModuloRelations reduction23500.relations reduction23500.input reduction23500.output := by lin_cert using reduction23500.terms
theorem substitutionProof23500 : IsMapEvaluation generatorImages reduction23500.relations [1,149,725] reduction23500.output := by lin_cert using reduction23500.terms
def image23501 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23501 : InImage map_51_261 image23501 := by lin_cert using (fun j : Fin 7 => decide (j.val = 6))
def reduction23501 : Bundle := named_bundle% "RealMapCertificates/relations/basis23501.json"
theorem reductionProof23501 : EqualModuloRelations reduction23501.relations reduction23501.input reduction23501.output := by lin_cert using reduction23501.terms
theorem substitutionProof23501 : IsMapEvaluation generatorImages reduction23501.relations [0,17,138,491] reduction23501.output := by lin_cert using reduction23501.terms
def map_52_52 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image272 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation272 : InImage map_52_52 image272 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction272 : Bundle := named_bundle% "RealMapCertificates/relations/basis272.json"
theorem reductionProof272 : EqualModuloRelations reduction272.relations reduction272.input reduction272.output := by lin_cert using reduction272.terms
theorem substitutionProof272 : IsMapEvaluation generatorImages reduction272.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction272.output := by lin_cert using reduction272.terms
def map_52_155 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image4397 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation4397 : InImage map_52_155 image4397 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4397 : Bundle := named_bundle% "RealMapCertificates/relations/basis4397.json"
theorem reductionProof4397 : EqualModuloRelations reduction4397.relations reduction4397.input reduction4397.output := by lin_cert using reduction4397.terms
theorem substitutionProof4397 : IsMapEvaluation generatorImages reduction4397.relations [0,0,0,0,0,554] reduction4397.output := by lin_cert using reduction4397.terms
def map_52_157 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4587 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4587 : InImage map_52_157 image4587 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4587 : Bundle := named_bundle% "RealMapCertificates/relations/basis4587.json"
theorem reductionProof4587 : EqualModuloRelations reduction4587.relations reduction4587.input reduction4587.output := by lin_cert using reduction4587.terms
theorem substitutionProof4587 : IsMapEvaluation generatorImages reduction4587.relations [1,594] reduction4587.output := by lin_cert using reduction4587.terms
def map_52_162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5009 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5009 : InImage map_52_162 image5009 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5009 : Bundle := named_bundle% "RealMapCertificates/relations/basis5009.json"
theorem reductionProof5009 : EqualModuloRelations reduction5009.relations reduction5009.input reduction5009.output := by lin_cert using reduction5009.terms
theorem substitutionProof5009 : IsMapEvaluation generatorImages reduction5009.relations [661] reduction5009.output := by lin_cert using reduction5009.terms
def map_52_163 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image5134 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5134 : InImage map_52_163 image5134 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5134 : Bundle := named_bundle% "RealMapCertificates/relations/basis5134.json"
theorem reductionProof5134 : EqualModuloRelations reduction5134.relations reduction5134.input reduction5134.output := by lin_cert using reduction5134.terms
theorem substitutionProof5134 : IsMapEvaluation generatorImages reduction5134.relations [0,0,0,0,0,0,0,606] reduction5134.output := by lin_cert using reduction5134.terms
def map_52_165 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5310 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5310 : InImage map_52_165 image5310 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5310 : Bundle := named_bundle% "RealMapCertificates/relations/basis5310.json"
theorem reductionProof5310 : EqualModuloRelations reduction5310.relations reduction5310.input reduction5310.output := by lin_cert using reduction5310.terms
theorem substitutionProof5310 : IsMapEvaluation generatorImages reduction5310.relations [700] reduction5310.output := by lin_cert using reduction5310.terms
def map_52_166 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5435 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5435 : InImage map_52_166 image5435 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5435 : Bundle := named_bundle% "RealMapCertificates/relations/basis5435.json"
theorem reductionProof5435 : EqualModuloRelations reduction5435.relations reduction5435.input reduction5435.output := by lin_cert using reduction5435.terms
theorem substitutionProof5435 : IsMapEvaluation generatorImages reduction5435.relations [0,701] reduction5435.output := by lin_cert using reduction5435.terms
def map_52_168 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5626 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5626 : InImage map_52_168 image5626 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5626 : Bundle := named_bundle% "RealMapCertificates/relations/basis5626.json"
theorem reductionProof5626 : EqualModuloRelations reduction5626.relations reduction5626.input reduction5626.output := by lin_cert using reduction5626.terms
theorem substitutionProof5626 : IsMapEvaluation generatorImages reduction5626.relations [8,553] reduction5626.output := by lin_cert using reduction5626.terms
def map_52_169 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5770 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5770 : InImage map_52_169 image5770 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5770 : Bundle := named_bundle% "RealMapCertificates/relations/basis5770.json"
theorem reductionProof5770 : EqualModuloRelations reduction5770.relations reduction5770.input reduction5770.output := by lin_cert using reduction5770.terms
theorem substitutionProof5770 : IsMapEvaluation generatorImages reduction5770.relations [0,8,554] reduction5770.output := by lin_cert using reduction5770.terms
def map_52_171 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5971 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5971 : InImage map_52_171 image5971 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5971 : Bundle := named_bundle% "RealMapCertificates/relations/basis5971.json"
theorem reductionProof5971 : EqualModuloRelations reduction5971.relations reduction5971.input reduction5971.output := by lin_cert using reduction5971.terms
theorem substitutionProof5971 : IsMapEvaluation generatorImages reduction5971.relations [8,578] reduction5971.output := by lin_cert using reduction5971.terms
def map_52_172 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6108 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6108 : InImage map_52_172 image6108 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6108 : Bundle := named_bundle% "RealMapCertificates/relations/basis6108.json"
theorem reductionProof6108 : EqualModuloRelations reduction6108.relations reduction6108.input reduction6108.output := by lin_cert using reduction6108.terms
theorem substitutionProof6108 : IsMapEvaluation generatorImages reduction6108.relations [0,8,579] reduction6108.output := by lin_cert using reduction6108.terms
def map_52_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6293 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6293 : InImage map_52_174 image6293 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6293 : Bundle := named_bundle% "RealMapCertificates/relations/basis6293.json"
theorem reductionProof6293 : EqualModuloRelations reduction6293.relations reduction6293.input reduction6293.output := by lin_cert using reduction6293.terms
theorem substitutionProof6293 : IsMapEvaluation generatorImages reduction6293.relations [8,8,431] reduction6293.output := by lin_cert using reduction6293.terms
def map_52_175 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6444 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6444 : InImage map_52_175 image6444 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6444 : Bundle := named_bundle% "RealMapCertificates/relations/basis6444.json"
theorem reductionProof6444 : EqualModuloRelations reduction6444.relations reduction6444.input reduction6444.output := by lin_cert using reduction6444.terms
theorem substitutionProof6444 : IsMapEvaluation generatorImages reduction6444.relations [0,8,16,296] reduction6444.output := by lin_cert using reduction6444.terms
def map_52_177 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6651 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6651 : InImage map_52_177 image6651 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6651 : Bundle := named_bundle% "RealMapCertificates/relations/basis6651.json"
theorem reductionProof6651 : EqualModuloRelations reduction6651.relations reduction6651.input reduction6651.output := by lin_cert using reduction6651.terms
theorem substitutionProof6651 : IsMapEvaluation generatorImages reduction6651.relations [8,8,469] reduction6651.output := by lin_cert using reduction6651.terms
def map_52_178 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6787 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6787 : InImage map_52_178 image6787 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6787 : Bundle := named_bundle% "RealMapCertificates/relations/basis6787.json"
theorem reductionProof6787 : EqualModuloRelations reduction6787.relations reduction6787.input reduction6787.output := by lin_cert using reduction6787.terms
theorem substitutionProof6787 : IsMapEvaluation generatorImages reduction6787.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,686] reduction6787.output := by lin_cert using reduction6787.terms
def map_52_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6894 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6894 : InImage map_52_179 image6894 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6894 : Bundle := named_bundle% "RealMapCertificates/relations/basis6894.json"
theorem reductionProof6894 : EqualModuloRelations reduction6894.relations reduction6894.input reduction6894.output := by lin_cert using reduction6894.terms
theorem substitutionProof6894 : IsMapEvaluation generatorImages reduction6894.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction6894.output := by lin_cert using reduction6894.terms
def map_52_180 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7011 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7011 : InImage map_52_180 image7011 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7011 : Bundle := named_bundle% "RealMapCertificates/relations/basis7011.json"
theorem reductionProof7011 : EqualModuloRelations reduction7011.relations reduction7011.input reduction7011.output := by lin_cert using reduction7011.terms
theorem substitutionProof7011 : IsMapEvaluation generatorImages reduction7011.relations [8,8,8,295] reduction7011.output := by lin_cert using reduction7011.terms
def map_52_183 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7375 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7375 : InImage map_52_183 image7375 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7375 : Bundle := named_bundle% "RealMapCertificates/relations/basis7375.json"
theorem reductionProof7375 : EqualModuloRelations reduction7375.relations reduction7375.input reduction7375.output := by lin_cert using reduction7375.terms
theorem substitutionProof7375 : IsMapEvaluation generatorImages reduction7375.relations [8,8,8,325] reduction7375.output := by lin_cert using reduction7375.terms
def map_52_185 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7612 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7612 : InImage map_52_185 image7612 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7612 : Bundle := named_bundle% "RealMapCertificates/relations/basis7612.json"
theorem reductionProof7612 : EqualModuloRelations reduction7612.relations reduction7612.input reduction7612.output := by lin_cert using reduction7612.terms
theorem substitutionProof7612 : IsMapEvaluation generatorImages reduction7612.relations [0,0,916] reduction7612.output := by lin_cert using reduction7612.terms
def map_52_186 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7735 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7735 : InImage map_52_186 image7735 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7735 : Bundle := named_bundle% "RealMapCertificates/relations/basis7735.json"
theorem reductionProof7735 : EqualModuloRelations reduction7735.relations reduction7735.input reduction7735.output := by lin_cert using reduction7735.terms
theorem substitutionProof7735 : IsMapEvaluation generatorImages reduction7735.relations [8,8,8,8,236] reduction7735.output := by lin_cert using reduction7735.terms
def image7736 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7736 : InImage map_52_186 image7736 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7736 : Bundle := named_bundle% "RealMapCertificates/relations/basis7736.json"
theorem reductionProof7736 : EqualModuloRelations reduction7736.relations reduction7736.input reduction7736.output := by lin_cert using reduction7736.terms
theorem substitutionProof7736 : IsMapEvaluation generatorImages reduction7736.relations [0,0,0,917] reduction7736.output := by lin_cert using reduction7736.terms
def map_52_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7877 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7877 : InImage map_52_187 image7877 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7877 : Bundle := named_bundle% "RealMapCertificates/relations/basis7877.json"
theorem reductionProof7877 : EqualModuloRelations reduction7877.relations reduction7877.input reduction7877.output := by lin_cert using reduction7877.terms
theorem substitutionProof7877 : IsMapEvaluation generatorImages reduction7877.relations [1,1,916] reduction7877.output := by lin_cert using reduction7877.terms
def map_52_188 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7954 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7954 : InImage map_52_188 image7954 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7954 : Bundle := named_bundle% "RealMapCertificates/relations/basis7954.json"
theorem reductionProof7954 : EqualModuloRelations reduction7954.relations reduction7954.input reduction7954.output := by lin_cert using reduction7954.terms
theorem substitutionProof7954 : IsMapEvaluation generatorImages reduction7954.relations [0,0,952] reduction7954.output := by lin_cert using reduction7954.terms
def map_52_189 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8087 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8087 : InImage map_52_189 image8087 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8087 : Bundle := named_bundle% "RealMapCertificates/relations/basis8087.json"
theorem reductionProof8087 : EqualModuloRelations reduction8087.relations reduction8087.input reduction8087.output := by lin_cert using reduction8087.terms
theorem substitutionProof8087 : IsMapEvaluation generatorImages reduction8087.relations [8,8,8,8,252] reduction8087.output := by lin_cert using reduction8087.terms
def map_52_191 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8334 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8334 : InImage map_52_191 image8334 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8334 : Bundle := named_bundle% "RealMapCertificates/relations/basis8334.json"
theorem reductionProof8334 : EqualModuloRelations reduction8334.relations reduction8334.input reduction8334.output := by lin_cert using reduction8334.terms
theorem substitutionProof8334 : IsMapEvaluation generatorImages reduction8334.relations [0,0,16,635] reduction8334.output := by lin_cert using reduction8334.terms
def map_52_192 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8455 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8455 : InImage map_52_192 image8455 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8455 : Bundle := named_bundle% "RealMapCertificates/relations/basis8455.json"
theorem reductionProof8455 : EqualModuloRelations reduction8455.relations reduction8455.input reduction8455.output := by lin_cert using reduction8455.terms
theorem substitutionProof8455 : IsMapEvaluation generatorImages reduction8455.relations [8,8,8,8,8,182] reduction8455.output := by lin_cert using reduction8455.terms
def image8456 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8456 : InImage map_52_192 image8456 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8456 : Bundle := named_bundle% "RealMapCertificates/relations/basis8456.json"
theorem reductionProof8456 : EqualModuloRelations reduction8456.relations reduction8456.input reduction8456.output := by lin_cert using reduction8456.terms
theorem substitutionProof8456 : IsMapEvaluation generatorImages reduction8456.relations [0,0,0,0,969] reduction8456.output := by lin_cert using reduction8456.terms
def map_52_193 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8607 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8607 : InImage map_52_193 image8607 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8607 : Bundle := named_bundle% "RealMapCertificates/relations/basis8607.json"
theorem reductionProof8607 : EqualModuloRelations reduction8607.relations reduction8607.input reduction8607.output := by lin_cert using reduction8607.terms
theorem substitutionProof8607 : IsMapEvaluation generatorImages reduction8607.relations [0,0,0,0,17,636] reduction8607.output := by lin_cert using reduction8607.terms
def map_52_194 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image8708 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8708 : InImage map_52_194 image8708 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8708 : Bundle := named_bundle% "RealMapCertificates/relations/basis8708.json"
theorem reductionProof8708 : EqualModuloRelations reduction8708.relations reduction8708.input reduction8708.output := by lin_cert using reduction8708.terms
theorem substitutionProof8708 : IsMapEvaluation generatorImages reduction8708.relations [0,0,8,805] reduction8708.output := by lin_cert using reduction8708.terms
def map_52_195 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8857 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8857 : InImage map_52_195 image8857 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8857 : Bundle := named_bundle% "RealMapCertificates/relations/basis8857.json"
theorem reductionProof8857 : EqualModuloRelations reduction8857.relations reduction8857.input reduction8857.output := by lin_cert using reduction8857.terms
theorem substitutionProof8857 : IsMapEvaluation generatorImages reduction8857.relations [8,8,8,8,8,199] reduction8857.output := by lin_cert using reduction8857.terms
def map_52_197 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image9133 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9133 : InImage map_52_197 image9133 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9133 : Bundle := named_bundle% "RealMapCertificates/relations/basis9133.json"
theorem reductionProof9133 : EqualModuloRelations reduction9133.relations reduction9133.input reduction9133.output := by lin_cert using reduction9133.terms
theorem substitutionProof9133 : IsMapEvaluation generatorImages reduction9133.relations [0,0,8,8,635] reduction9133.output := by lin_cert using reduction9133.terms
def map_52_198 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9295 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9295 : InImage map_52_198 image9295 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9295 : Bundle := named_bundle% "RealMapCertificates/relations/basis9295.json"
theorem reductionProof9295 : EqualModuloRelations reduction9295.relations reduction9295.input reduction9295.output := by lin_cert using reduction9295.terms
theorem substitutionProof9295 : IsMapEvaluation generatorImages reduction9295.relations [8,8,8,8,8,8,145] reduction9295.output := by lin_cert using reduction9295.terms
def map_52_199 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9476 : InImage map_52_199 image9476 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9476 : Bundle := named_bundle% "RealMapCertificates/relations/basis9476.json"
theorem reductionProof9476 : EqualModuloRelations reduction9476.relations reduction9476.input reduction9476.output := by lin_cert using reduction9476.terms
theorem substitutionProof9476 : IsMapEvaluation generatorImages reduction9476.relations [0,0,0,0,0,17,685] reduction9476.output := by lin_cert using reduction9476.terms
def map_52_200 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9598 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation9598 : InImage map_52_200 image9598 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9598 : Bundle := named_bundle% "RealMapCertificates/relations/basis9598.json"
theorem reductionProof9598 : EqualModuloRelations reduction9598.relations reduction9598.input reduction9598.output := by lin_cert using reduction9598.terms
theorem substitutionProof9598 : IsMapEvaluation generatorImages reduction9598.relations [0,0,0,0,0,17,17,403] reduction9598.output := by lin_cert using reduction9598.terms
def map_52_201 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image9786 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9786 : InImage map_52_201 image9786 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9786 : Bundle := named_bundle% "RealMapCertificates/relations/basis9786.json"
theorem reductionProof9786 : EqualModuloRelations reduction9786.relations reduction9786.input reduction9786.output := by lin_cert using reduction9786.terms
theorem substitutionProof9786 : IsMapEvaluation generatorImages reduction9786.relations [8,8,8,8,8,8,152] reduction9786.output := by lin_cert using reduction9786.terms
def map_52_203 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10091 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10091 : InImage map_52_203 image10091 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10091 : Bundle := named_bundle% "RealMapCertificates/relations/basis10091.json"
theorem reductionProof10091 : EqualModuloRelations reduction10091.relations reduction10091.input reduction10091.output := by lin_cert using reduction10091.terms
theorem substitutionProof10091 : IsMapEvaluation generatorImages reduction10091.relations [1239] reduction10091.output := by lin_cert using reduction10091.terms
def map_52_204 : Matrix 5 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image10277 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation10277 : InImage map_52_204 image10277 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10277 : Bundle := named_bundle% "RealMapCertificates/relations/basis10277.json"
theorem reductionProof10277 : EqualModuloRelations reduction10277.relations reduction10277.input reduction10277.output := by lin_cert using reduction10277.terms
theorem substitutionProof10277 : IsMapEvaluation generatorImages reduction10277.relations [17,806] reduction10277.output := by lin_cert using reduction10277.terms
def image10278 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10278 : InImage map_52_204 image10278 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10278 : Bundle := named_bundle% "RealMapCertificates/relations/basis10278.json"
theorem reductionProof10278 : EqualModuloRelations reduction10278.relations reduction10278.input reduction10278.output := by lin_cert using reduction10278.terms
theorem substitutionProof10278 : IsMapEvaluation generatorImages reduction10278.relations [8,8,8,8,8,8,8,110] reduction10278.output := by lin_cert using reduction10278.terms
def map_52_206 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10617 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10617 : InImage map_52_206 image10617 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10617 : Bundle := named_bundle% "RealMapCertificates/relations/basis10617.json"
theorem reductionProof10617 : EqualModuloRelations reduction10617.relations reduction10617.input reduction10617.output := by lin_cert using reduction10617.terms
theorem substitutionProof10617 : IsMapEvaluation generatorImages reduction10617.relations [8,969] reduction10617.output := by lin_cert using reduction10617.terms
def map_52_207 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image10828 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10828 : InImage map_52_207 image10828 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10828 : Bundle := named_bundle% "RealMapCertificates/relations/basis10828.json"
theorem reductionProof10828 : EqualModuloRelations reduction10828.relations reduction10828.input reduction10828.output := by lin_cert using reduction10828.terms
theorem substitutionProof10828 : IsMapEvaluation generatorImages reduction10828.relations [8,17,636] reduction10828.output := by lin_cert using reduction10828.terms
def image10829 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10829 : InImage map_52_207 image10829 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10829 : Bundle := named_bundle% "RealMapCertificates/relations/basis10829.json"
theorem reductionProof10829 : EqualModuloRelations reduction10829.relations reduction10829.input reduction10829.output := by lin_cert using reduction10829.terms
theorem substitutionProof10829 : IsMapEvaluation generatorImages reduction10829.relations [8,8,8,8,8,8,8,116] reduction10829.output := by lin_cert using reduction10829.terms
end RealMapCertificates
