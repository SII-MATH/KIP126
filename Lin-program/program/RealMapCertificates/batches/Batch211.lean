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
  | 19 => [[4,8]]
  | 31 => [[4,4,6]]
  | 39 => [[4,4,8]]
  | 42 => [[5,5,7]]
  | 49 => [[4,4,4,6]]
  | 55 => [[4,4,4,8]]
  | 59 => []
  | 64 => []
  | 71 => [[4,4,4,4,6]]
  | 77 => [[4,4,4,4,8]]
  | 113 => [[0,8,12]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 185 => [[0,4,4,8,12]]
  | 206 => [[4,6,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 237 => []
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 257 => [[4,4,6,8,12]]
  | 297 => []
  | 298 => [[0,4,4,4,4,8,12]]
  | 343 => [[4,4,4,6,8,12]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 432 => []
  | 433 => [[0,4,4,4,4,4,8,12]]
  | 452 => [[4,4,4,4,4,9,12]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 555 => []
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 759 => []
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 896 => []
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1076 => []
  | 1301 => []
  | 1399 => []
  | 1471 => []
  | 1472 => []
  | 1499 => []
  | 1514 => []
  | 1566 => []
  | 1589 => []
  | 1591 => []
  | 1619 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1812 => []
  | 1890 => []
  | 1966 => []
  | _ => []
def map_52_209 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11146 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11146 : InImage map_52_209 image11146 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11146 : Bundle := named_bundle% "RealMapCertificates/relations/basis11146.json"
theorem reductionProof11146 : EqualModuloRelations reduction11146.relations reduction11146.input reduction11146.output := by lin_cert using reduction11146.terms
theorem substitutionProof11146 : IsMapEvaluation generatorImages reduction11146.relations [8,1030] reduction11146.output := by lin_cert using reduction11146.terms
def image11147 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11147 : InImage map_52_209 image11147 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11147 : Bundle := named_bundle% "RealMapCertificates/relations/basis11147.json"
theorem reductionProof11147 : EqualModuloRelations reduction11147.relations reduction11147.input reduction11147.output := by lin_cert using reduction11147.terms
theorem substitutionProof11147 : IsMapEvaluation generatorImages reduction11147.relations [1,42,635] reduction11147.output := by lin_cert using reduction11147.terms
def map_52_210 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11336 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11336 : InImage map_52_210 image11336 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11336 : Bundle := named_bundle% "RealMapCertificates/relations/basis11336.json"
theorem reductionProof11336 : EqualModuloRelations reduction11336.relations reduction11336.input reduction11336.output := by lin_cert using reduction11336.terms
theorem substitutionProof11336 : IsMapEvaluation generatorImages reduction11336.relations [8,17,663] reduction11336.output := by lin_cert using reduction11336.terms
def image11337 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11337 : InImage map_52_210 image11337 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11337 : Bundle := named_bundle% "RealMapCertificates/relations/basis11337.json"
theorem reductionProof11337 : EqualModuloRelations reduction11337.relations reduction11337.input reduction11337.output := by lin_cert using reduction11337.terms
theorem substitutionProof11337 : IsMapEvaluation generatorImages reduction11337.relations [8,8,8,8,8,8,8,8,71] reduction11337.output := by lin_cert using reduction11337.terms
def map_52_212 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image11679 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11679 : InImage map_52_212 image11679 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11679 : Bundle := named_bundle% "RealMapCertificates/relations/basis11679.json"
theorem reductionProof11679 : EqualModuloRelations reduction11679.relations reduction11679.input reduction11679.output := by lin_cert using reduction11679.terms
theorem substitutionProof11679 : IsMapEvaluation generatorImages reduction11679.relations [8,16,685] reduction11679.output := by lin_cert using reduction11679.terms
def map_52_213 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11914 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11914 : InImage map_52_213 image11914 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11914 : Bundle := named_bundle% "RealMapCertificates/relations/basis11914.json"
theorem reductionProof11914 : EqualModuloRelations reduction11914.relations reduction11914.input reduction11914.output := by lin_cert using reduction11914.terms
theorem substitutionProof11914 : IsMapEvaluation generatorImages reduction11914.relations [8,16,17,403] reduction11914.output := by lin_cert using reduction11914.terms
def image11915 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11915 : InImage map_52_213 image11915 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11915 : Bundle := named_bundle% "RealMapCertificates/relations/basis11915.json"
theorem reductionProof11915 : EqualModuloRelations reduction11915.relations reduction11915.input reduction11915.output := by lin_cert using reduction11915.terms
theorem substitutionProof11915 : IsMapEvaluation generatorImages reduction11915.relations [8,8,8,8,8,8,8,8,77] reduction11915.output := by lin_cert using reduction11915.terms
def map_52_215 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12283 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12283 : InImage map_52_215 image12283 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12283 : Bundle := named_bundle% "RealMapCertificates/relations/basis12283.json"
theorem reductionProof12283 : EqualModuloRelations reduction12283.relations reduction12283.input reduction12283.output := by lin_cert using reduction12283.terms
theorem substitutionProof12283 : IsMapEvaluation generatorImages reduction12283.relations [8,8,871] reduction12283.output := by lin_cert using reduction12283.terms
def map_52_216 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12480 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation12480 : InImage map_52_216 image12480 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12480 : Bundle := named_bundle% "RealMapCertificates/relations/basis12480.json"
theorem reductionProof12480 : EqualModuloRelations reduction12480.relations reduction12480.input reduction12480.output := by lin_cert using reduction12480.terms
theorem substitutionProof12480 : IsMapEvaluation generatorImages reduction12480.relations [8,8,17,556] reduction12480.output := by lin_cert using reduction12480.terms
def image12481 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12481 : InImage map_52_216 image12481 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12481 : Bundle := named_bundle% "RealMapCertificates/relations/basis12481.json"
theorem reductionProof12481 : EqualModuloRelations reduction12481.relations reduction12481.input reduction12481.output := by lin_cert using reduction12481.terms
theorem substitutionProof12481 : IsMapEvaluation generatorImages reduction12481.relations [8,8,8,8,8,8,8,8,8,49] reduction12481.output := by lin_cert using reduction12481.terms
def map_52_217 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image12690 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12690 : InImage map_52_217 image12690 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12690 : Bundle := named_bundle% "RealMapCertificates/relations/basis12690.json"
theorem reductionProof12690 : EqualModuloRelations reduction12690.relations reduction12690.input reduction12690.output := by lin_cert using reduction12690.terms
theorem substitutionProof12690 : IsMapEvaluation generatorImages reduction12690.relations [0,0,1471] reduction12690.output := by lin_cert using reduction12690.terms
def map_52_218 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12831 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12831 : InImage map_52_218 image12831 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12831 : Bundle := named_bundle% "RealMapCertificates/relations/basis12831.json"
theorem reductionProof12831 : EqualModuloRelations reduction12831.relations reduction12831.input reduction12831.output := by lin_cert using reduction12831.terms
theorem substitutionProof12831 : IsMapEvaluation generatorImages reduction12831.relations [8,8,8,685] reduction12831.output := by lin_cert using reduction12831.terms
def image12832 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12832 : InImage map_52_218 image12832 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12832 : Bundle := named_bundle% "RealMapCertificates/relations/basis12832.json"
theorem reductionProof12832 : EqualModuloRelations reduction12832.relations reduction12832.input reduction12832.output := by lin_cert using reduction12832.terms
theorem substitutionProof12832 : IsMapEvaluation generatorImages reduction12832.relations [0,1499] reduction12832.output := by lin_cert using reduction12832.terms
def map_52_219 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13064 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13064 : InImage map_52_219 image13064 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13064 : Bundle := named_bundle% "RealMapCertificates/relations/basis13064.json"
theorem reductionProof13064 : EqualModuloRelations reduction13064.relations reduction13064.input reduction13064.output := by lin_cert using reduction13064.terms
theorem substitutionProof13064 : IsMapEvaluation generatorImages reduction13064.relations [8,8,8,17,403] reduction13064.output := by lin_cert using reduction13064.terms
def image13065 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13065 : InImage map_52_219 image13065 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13065 : Bundle := named_bundle% "RealMapCertificates/relations/basis13065.json"
theorem reductionProof13065 : EqualModuloRelations reduction13065.relations reduction13065.input reduction13065.output := by lin_cert using reduction13065.terms
theorem substitutionProof13065 : IsMapEvaluation generatorImages reduction13065.relations [8,8,8,8,8,8,8,8,8,55] reduction13065.output := by lin_cert using reduction13065.terms
def image13066 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13066 : InImage map_52_219 image13066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13066 : Bundle := named_bundle% "RealMapCertificates/relations/basis13066.json"
theorem reductionProof13066 : EqualModuloRelations reduction13066.relations reduction13066.input reduction13066.output := by lin_cert using reduction13066.terms
theorem substitutionProof13066 : IsMapEvaluation generatorImages reduction13066.relations [1,1,1471] reduction13066.output := by lin_cert using reduction13066.terms
def map_52_220 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image13248 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13248 : InImage map_52_220 image13248 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13248 : Bundle := named_bundle% "RealMapCertificates/relations/basis13248.json"
theorem reductionProof13248 : EqualModuloRelations reduction13248.relations reduction13248.input reduction13248.output := by lin_cert using reduction13248.terms
theorem substitutionProof13248 : IsMapEvaluation generatorImages reduction13248.relations [0,0,1514] reduction13248.output := by lin_cert using reduction13248.terms
def map_52_221 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image13403 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13403 : InImage map_52_221 image13403 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13403 : Bundle := named_bundle% "RealMapCertificates/relations/basis13403.json"
theorem reductionProof13403 : EqualModuloRelations reduction13403.relations reduction13403.input reduction13403.output := by lin_cert using reduction13403.terms
theorem substitutionProof13403 : IsMapEvaluation generatorImages reduction13403.relations [8,8,8,722] reduction13403.output := by lin_cert using reduction13403.terms
def map_52_222 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image13611 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13611 : InImage map_52_222 image13611 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13611 : Bundle := named_bundle% "RealMapCertificates/relations/basis13611.json"
theorem reductionProof13611 : EqualModuloRelations reduction13611.relations reduction13611.input reduction13611.output := by lin_cert using reduction13611.terms
theorem substitutionProof13611 : IsMapEvaluation generatorImages reduction13611.relations [64,635] reduction13611.output := by lin_cert using reduction13611.terms
def image13612 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13612 : InImage map_52_222 image13612 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13612 : Bundle := named_bundle% "RealMapCertificates/relations/basis13612.json"
theorem reductionProof13612 : EqualModuloRelations reduction13612.relations reduction13612.input reduction13612.output := by lin_cert using reduction13612.terms
theorem substitutionProof13612 : IsMapEvaluation generatorImages reduction13612.relations [8,8,8,17,433] reduction13612.output := by lin_cert using reduction13612.terms
def image13613 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13613 : InImage map_52_222 image13613 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13613 : Bundle := named_bundle% "RealMapCertificates/relations/basis13613.json"
theorem reductionProof13613 : EqualModuloRelations reduction13613.relations reduction13613.input reduction13613.output := by lin_cert using reduction13613.terms
theorem substitutionProof13613 : IsMapEvaluation generatorImages reduction13613.relations [8,8,8,8,8,8,8,8,8,8,31] reduction13613.output := by lin_cert using reduction13613.terms
def map_52_223 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image13814 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13814 : InImage map_52_223 image13814 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13814 : Bundle := named_bundle% "RealMapCertificates/relations/basis13814.json"
theorem reductionProof13814 : EqualModuloRelations reduction13814.relations reduction13814.input reduction13814.output := by lin_cert using reduction13814.terms
theorem substitutionProof13814 : IsMapEvaluation generatorImages reduction13814.relations [0,64,636] reduction13814.output := by lin_cert using reduction13814.terms
def image13815 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13815 : InImage map_52_223 image13815 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13815 : Bundle := named_bundle% "RealMapCertificates/relations/basis13815.json"
theorem reductionProof13815 : EqualModuloRelations reduction13815.relations reduction13815.input reduction13815.output := by lin_cert using reduction13815.terms
theorem substitutionProof13815 : IsMapEvaluation generatorImages reduction13815.relations [0,0,16,1033] reduction13815.output := by lin_cert using reduction13815.terms
def map_52_224 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13950 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation13950 : InImage map_52_224 image13950 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13950 : Bundle := named_bundle% "RealMapCertificates/relations/basis13950.json"
theorem reductionProof13950 : EqualModuloRelations reduction13950.relations reduction13950.input reduction13950.output := by lin_cert using reduction13950.terms
theorem substitutionProof13950 : IsMapEvaluation generatorImages reduction13950.relations [8,8,8,16,452] reduction13950.output := by lin_cert using reduction13950.terms
def image13951 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13951 : InImage map_52_224 image13951 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13951 : Bundle := named_bundle% "RealMapCertificates/relations/basis13951.json"
theorem reductionProof13951 : EqualModuloRelations reduction13951.relations reduction13951.input reduction13951.output := by lin_cert using reduction13951.terms
theorem substitutionProof13951 : IsMapEvaluation generatorImages reduction13951.relations [0,0,0,17,1033] reduction13951.output := by lin_cert using reduction13951.terms
def map_52_225 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image14183 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14183 : InImage map_52_225 image14183 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction14183 : Bundle := named_bundle% "RealMapCertificates/relations/basis14183.json"
theorem reductionProof14183 : EqualModuloRelations reduction14183.relations reduction14183.input reduction14183.output := by lin_cert using reduction14183.terms
theorem substitutionProof14183 : IsMapEvaluation generatorImages reduction14183.relations [64,662] reduction14183.output := by lin_cert using reduction14183.terms
def image14184 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14184 : InImage map_52_225 image14184 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction14184 : Bundle := named_bundle% "RealMapCertificates/relations/basis14184.json"
theorem reductionProof14184 : EqualModuloRelations reduction14184.relations reduction14184.input reduction14184.output := by lin_cert using reduction14184.terms
theorem substitutionProof14184 : IsMapEvaluation generatorImages reduction14184.relations [8,8,8,16,17,225] reduction14184.output := by lin_cert using reduction14184.terms
def image14185 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14185 : InImage map_52_225 image14185 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction14185 : Bundle := named_bundle% "RealMapCertificates/relations/basis14185.json"
theorem reductionProof14185 : EqualModuloRelations reduction14185.relations reduction14185.input reduction14185.output := by lin_cert using reduction14185.terms
theorem substitutionProof14185 : IsMapEvaluation generatorImages reduction14185.relations [8,8,8,8,8,8,8,8,8,8,39] reduction14185.output := by lin_cert using reduction14185.terms
def image14186 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14186 : InImage map_52_225 image14186 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction14186 : Bundle := named_bundle% "RealMapCertificates/relations/basis14186.json"
theorem reductionProof14186 : EqualModuloRelations reduction14186.relations reduction14186.input reduction14186.output := by lin_cert using reduction14186.terms
theorem substitutionProof14186 : IsMapEvaluation generatorImages reduction14186.relations [0,0,0,1591] reduction14186.output := by lin_cert using reduction14186.terms
def image14187 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14187 : InImage map_52_225 image14187 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction14187 : Bundle := named_bundle% "RealMapCertificates/relations/basis14187.json"
theorem reductionProof14187 : EqualModuloRelations reduction14187.relations reduction14187.input reduction14187.output := by lin_cert using reduction14187.terms
theorem substitutionProof14187 : IsMapEvaluation generatorImages reduction14187.relations [0,0,0,1589] reduction14187.output := by lin_cert using reduction14187.terms
def map_52_226 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image14370 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14370 : InImage map_52_226 image14370 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14370 : Bundle := named_bundle% "RealMapCertificates/relations/basis14370.json"
theorem reductionProof14370 : EqualModuloRelations reduction14370.relations reduction14370.input reduction14370.output := by lin_cert using reduction14370.terms
theorem substitutionProof14370 : IsMapEvaluation generatorImages reduction14370.relations [0,64,663] reduction14370.output := by lin_cert using reduction14370.terms
def image14371 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14371 : InImage map_52_226 image14371 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14371 : Bundle := named_bundle% "RealMapCertificates/relations/basis14371.json"
theorem reductionProof14371 : EqualModuloRelations reduction14371.relations reduction14371.input reduction14371.output := by lin_cert using reduction14371.terms
theorem substitutionProof14371 : IsMapEvaluation generatorImages reduction14371.relations [0,0,8,1301] reduction14371.output := by lin_cert using reduction14371.terms
def image14372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14372 : InImage map_52_226 image14372 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14372 : Bundle := named_bundle% "RealMapCertificates/relations/basis14372.json"
theorem reductionProof14372 : EqualModuloRelations reduction14372.relations reduction14372.input reduction14372.output := by lin_cert using reduction14372.terms
theorem substitutionProof14372 : IsMapEvaluation generatorImages reduction14372.relations [0,0,0,0,0,1566] reduction14372.output := by lin_cert using reduction14372.terms
def map_52_227 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image14525 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14525 : InImage map_52_227 image14525 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14525 : Bundle := named_bundle% "RealMapCertificates/relations/basis14525.json"
theorem reductionProof14525 : EqualModuloRelations reduction14525.relations reduction14525.input reduction14525.output := by lin_cert using reduction14525.terms
theorem substitutionProof14525 : IsMapEvaluation generatorImages reduction14525.relations [8,8,8,8,595] reduction14525.output := by lin_cert using reduction14525.terms
def map_52_228 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14748 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14748 : InImage map_52_228 image14748 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14748 : Bundle := named_bundle% "RealMapCertificates/relations/basis14748.json"
theorem reductionProof14748 : EqualModuloRelations reduction14748.relations reduction14748.input reduction14748.output := by lin_cert using reduction14748.terms
theorem substitutionProof14748 : IsMapEvaluation generatorImages reduction14748.relations [16,64,402] reduction14748.output := by lin_cert using reduction14748.terms
def image14749 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14749 : InImage map_52_228 image14749 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14749 : Bundle := named_bundle% "RealMapCertificates/relations/basis14749.json"
theorem reductionProof14749 : EqualModuloRelations reduction14749.relations reduction14749.input reduction14749.output := by lin_cert using reduction14749.terms
theorem substitutionProof14749 : IsMapEvaluation generatorImages reduction14749.relations [8,8,8,8,17,298] reduction14749.output := by lin_cert using reduction14749.terms
def image14750 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14750 : InImage map_52_228 image14750 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14750 : Bundle := named_bundle% "RealMapCertificates/relations/basis14750.json"
theorem reductionProof14750 : EqualModuloRelations reduction14750.relations reduction14750.input reduction14750.output := by lin_cert using reduction14750.terms
theorem substitutionProof14750 : IsMapEvaluation generatorImages reduction14750.relations [8,8,8,8,8,8,8,8,8,8,8,16] reduction14750.output := by lin_cert using reduction14750.terms
def map_52_229 : Matrix 1 3 := fun i j => ([false,false,false] : List Bool)[i.val*3+j.val]!
def image14965 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14965 : InImage map_52_229 image14965 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14965 : Bundle := named_bundle% "RealMapCertificates/relations/basis14965.json"
theorem reductionProof14965 : EqualModuloRelations reduction14965.relations reduction14965.input reduction14965.output := by lin_cert using reduction14965.terms
theorem substitutionProof14965 : IsMapEvaluation generatorImages reduction14965.relations [0,16,64,403] reduction14965.output := by lin_cert using reduction14965.terms
def image14966 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14966 : InImage map_52_229 image14966 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14966 : Bundle := named_bundle% "RealMapCertificates/relations/basis14966.json"
theorem reductionProof14966 : EqualModuloRelations reduction14966.relations reduction14966.input reduction14966.output := by lin_cert using reduction14966.terms
theorem substitutionProof14966 : IsMapEvaluation generatorImages reduction14966.relations [0,0,64,685] reduction14966.output := by lin_cert using reduction14966.terms
def image14967 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14967 : InImage map_52_229 image14967 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14967 : Bundle := named_bundle% "RealMapCertificates/relations/basis14967.json"
theorem reductionProof14967 : EqualModuloRelations reduction14967.relations reduction14967.input reduction14967.output := by lin_cert using reduction14967.terms
theorem substitutionProof14967 : IsMapEvaluation generatorImages reduction14967.relations [0,0,8,8,1033] reduction14967.output := by lin_cert using reduction14967.terms
def map_52_230 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image15115 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15115 : InImage map_52_230 image15115 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15115 : Bundle := named_bundle% "RealMapCertificates/relations/basis15115.json"
theorem reductionProof15115 : EqualModuloRelations reduction15115.relations reduction15115.input reduction15115.output := by lin_cert using reduction15115.terms
theorem substitutionProof15115 : IsMapEvaluation generatorImages reduction15115.relations [8,8,8,8,8,452] reduction15115.output := by lin_cert using reduction15115.terms
def image15116 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15116 : InImage map_52_230 image15116 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15116 : Bundle := named_bundle% "RealMapCertificates/relations/basis15116.json"
theorem reductionProof15116 : EqualModuloRelations reduction15116.relations reduction15116.input reduction15116.output := by lin_cert using reduction15116.terms
theorem substitutionProof15116 : IsMapEvaluation generatorImages reduction15116.relations [0,0,0,138,452] reduction15116.output := by lin_cert using reduction15116.terms
def map_52_231 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image15369 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15369 : InImage map_52_231 image15369 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction15369 : Bundle := named_bundle% "RealMapCertificates/relations/basis15369.json"
theorem reductionProof15369 : EqualModuloRelations reduction15369.relations reduction15369.input reduction15369.output := by lin_cert using reduction15369.terms
theorem substitutionProof15369 : IsMapEvaluation generatorImages reduction15369.relations [8,64,555] reduction15369.output := by lin_cert using reduction15369.terms
def image15370 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15370 : InImage map_52_231 image15370 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction15370 : Bundle := named_bundle% "RealMapCertificates/relations/basis15370.json"
theorem reductionProof15370 : EqualModuloRelations reduction15370.relations reduction15370.input reduction15370.output := by lin_cert using reduction15370.terms
theorem substitutionProof15370 : IsMapEvaluation generatorImages reduction15370.relations [8,8,8,8,8,17,225] reduction15370.output := by lin_cert using reduction15370.terms
def image15371 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15371 : InImage map_52_231 image15371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction15371 : Bundle := named_bundle% "RealMapCertificates/relations/basis15371.json"
theorem reductionProof15371 : EqualModuloRelations reduction15371.relations reduction15371.input reduction15371.output := by lin_cert using reduction15371.terms
theorem substitutionProof15371 : IsMapEvaluation generatorImages reduction15371.relations [8,8,8,8,8,8,8,8,8,8,8,19] reduction15371.output := by lin_cert using reduction15371.terms
def image15372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15372 : InImage map_52_231 image15372 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction15372 : Bundle := named_bundle% "RealMapCertificates/relations/basis15372.json"
theorem reductionProof15372 : EqualModuloRelations reduction15372.relations reduction15372.input reduction15372.output := by lin_cert using reduction15372.terms
theorem substitutionProof15372 : IsMapEvaluation generatorImages reduction15372.relations [1,1,64,685] reduction15372.output := by lin_cert using reduction15372.terms
def image15373 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15373 : InImage map_52_231 image15373 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction15373 : Bundle := named_bundle% "RealMapCertificates/relations/basis15373.json"
theorem reductionProof15373 : EqualModuloRelations reduction15373.relations reduction15373.input reduction15373.output := by lin_cert using reduction15373.terms
theorem substitutionProof15373 : IsMapEvaluation generatorImages reduction15373.relations [0,0,0,0,17,17,725] reduction15373.output := by lin_cert using reduction15373.terms
def map_52_232 : Matrix 4 3 := fun i j => ([false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15584 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15584 : InImage map_52_232 image15584 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15584 : Bundle := named_bundle% "RealMapCertificates/relations/basis15584.json"
theorem reductionProof15584 : EqualModuloRelations reduction15584.relations reduction15584.input reduction15584.output := by lin_cert using reduction15584.terms
theorem substitutionProof15584 : IsMapEvaluation generatorImages reduction15584.relations [0,0,8,8,1076] reduction15584.output := by lin_cert using reduction15584.terms
def image15585 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15585 : InImage map_52_232 image15585 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15585 : Bundle := named_bundle% "RealMapCertificates/relations/basis15585.json"
theorem reductionProof15585 : EqualModuloRelations reduction15585.relations reduction15585.input reduction15585.output := by lin_cert using reduction15585.terms
theorem substitutionProof15585 : IsMapEvaluation generatorImages reduction15585.relations [0,0,0,0,0,224,246] reduction15585.output := by lin_cert using reduction15585.terms
def image15586 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15586 : InImage map_52_232 image15586 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15586 : Bundle := named_bundle% "RealMapCertificates/relations/basis15586.json"
theorem reductionProof15586 : EqualModuloRelations reduction15586.relations reduction15586.input reduction15586.output := by lin_cert using reduction15586.terms
theorem substitutionProof15586 : IsMapEvaluation generatorImages reduction15586.relations [0,0,0,0,0,59,725] reduction15586.output := by lin_cert using reduction15586.terms
def map_52_233 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image15770 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15770 : InImage map_52_233 image15770 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15770 : Bundle := named_bundle% "RealMapCertificates/relations/basis15770.json"
theorem reductionProof15770 : EqualModuloRelations reduction15770.relations reduction15770.input reduction15770.output := by lin_cert using reduction15770.terms
theorem substitutionProof15770 : IsMapEvaluation generatorImages reduction15770.relations [8,8,8,8,8,488] reduction15770.output := by lin_cert using reduction15770.terms
def map_52_234 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image16013 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16013 : InImage map_52_234 image16013 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16013 : Bundle := named_bundle% "RealMapCertificates/relations/basis16013.json"
theorem reductionProof16013 : EqualModuloRelations reduction16013.relations reduction16013.input reduction16013.output := by lin_cert using reduction16013.terms
theorem substitutionProof16013 : IsMapEvaluation generatorImages reduction16013.relations [8,8,64,402] reduction16013.output := by lin_cert using reduction16013.terms
def image16014 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16014 : InImage map_52_234 image16014 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16014 : Bundle := named_bundle% "RealMapCertificates/relations/basis16014.json"
theorem reductionProof16014 : EqualModuloRelations reduction16014.relations reduction16014.input reduction16014.output := by lin_cert using reduction16014.terms
theorem substitutionProof16014 : IsMapEvaluation generatorImages reduction16014.relations [8,8,8,8,8,17,238] reduction16014.output := by lin_cert using reduction16014.terms
def image16015 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16015 : InImage map_52_234 image16015 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16015 : Bundle := named_bundle% "RealMapCertificates/relations/basis16015.json"
theorem reductionProof16015 : EqualModuloRelations reduction16015.relations reduction16015.input reduction16015.output := by lin_cert using reduction16015.terms
theorem substitutionProof16015 : IsMapEvaluation generatorImages reduction16015.relations [8,8,8,8,8,8,8,8,8,8,8,8,8] reduction16015.output := by lin_cert using reduction16015.terms
def map_52_235 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image16247 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16247 : InImage map_52_235 image16247 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16247 : Bundle := named_bundle% "RealMapCertificates/relations/basis16247.json"
theorem reductionProof16247 : EqualModuloRelations reduction16247.relations reduction16247.input reduction16247.output := by lin_cert using reduction16247.terms
theorem substitutionProof16247 : IsMapEvaluation generatorImages reduction16247.relations [1,1812] reduction16247.output := by lin_cert using reduction16247.terms
def image16248 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16248 : InImage map_52_235 image16248 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16248 : Bundle := named_bundle% "RealMapCertificates/relations/basis16248.json"
theorem reductionProof16248 : EqualModuloRelations reduction16248.relations reduction16248.input reduction16248.output := by lin_cert using reduction16248.terms
theorem substitutionProof16248 : IsMapEvaluation generatorImages reduction16248.relations [0,0,8,8,16,725] reduction16248.output := by lin_cert using reduction16248.terms
def map_52_236 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16431 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16431 : InImage map_52_236 image16431 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16431 : Bundle := named_bundle% "RealMapCertificates/relations/basis16431.json"
theorem reductionProof16431 : EqualModuloRelations reduction16431.relations reduction16431.input reduction16431.output := by lin_cert using reduction16431.terms
theorem substitutionProof16431 : IsMapEvaluation generatorImages reduction16431.relations [1890] reduction16431.output := by lin_cert using reduction16431.terms
def image16432 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation16432 : InImage map_52_236 image16432 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16432 : Bundle := named_bundle% "RealMapCertificates/relations/basis16432.json"
theorem reductionProof16432 : EqualModuloRelations reduction16432.relations reduction16432.input reduction16432.output := by lin_cert using reduction16432.terms
theorem substitutionProof16432 : IsMapEvaluation generatorImages reduction16432.relations [8,8,8,8,8,16,244] reduction16432.output := by lin_cert using reduction16432.terms
def image16433 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16433 : InImage map_52_236 image16433 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16433 : Bundle := named_bundle% "RealMapCertificates/relations/basis16433.json"
theorem reductionProof16433 : EqualModuloRelations reduction16433.relations reduction16433.input reduction16433.output := by lin_cert using reduction16433.terms
theorem substitutionProof16433 : IsMapEvaluation generatorImages reduction16433.relations [0,0,0,0,149,452] reduction16433.output := by lin_cert using reduction16433.terms
def map_52_237 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image16688 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16688 : InImage map_52_237 image16688 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16688 : Bundle := named_bundle% "RealMapCertificates/relations/basis16688.json"
theorem reductionProof16688 : EqualModuloRelations reduction16688.relations reduction16688.input reduction16688.output := by lin_cert using reduction16688.terms
theorem substitutionProof16688 : IsMapEvaluation generatorImages reduction16688.relations [8,8,64,432] reduction16688.output := by lin_cert using reduction16688.terms
def image16689 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16689 : InImage map_52_237 image16689 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16689 : Bundle := named_bundle% "RealMapCertificates/relations/basis16689.json"
theorem reductionProof16689 : EqualModuloRelations reduction16689.relations reduction16689.input reduction16689.output := by lin_cert using reduction16689.terms
theorem substitutionProof16689 : IsMapEvaluation generatorImages reduction16689.relations [8,8,8,8,8,16,17,138] reduction16689.output := by lin_cert using reduction16689.terms
def image16690 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16690 : InImage map_52_237 image16690 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16690 : Bundle := named_bundle% "RealMapCertificates/relations/basis16690.json"
theorem reductionProof16690 : EqualModuloRelations reduction16690.relations reduction16690.input reduction16690.output := by lin_cert using reduction16690.terms
theorem substitutionProof16690 : IsMapEvaluation generatorImages reduction16690.relations [8,8,8,8,8,8,8,8,8,8,8,8,9] reduction16690.output := by lin_cert using reduction16690.terms
def image16691 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16691 : InImage map_52_237 image16691 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16691 : Bundle := named_bundle% "RealMapCertificates/relations/basis16691.json"
theorem reductionProof16691 : EqualModuloRelations reduction16691.relations reduction16691.input reduction16691.output := by lin_cert using reduction16691.terms
theorem substitutionProof16691 : IsMapEvaluation generatorImages reduction16691.relations [0,0,0,0,0,1771] reduction16691.output := by lin_cert using reduction16691.terms
def map_52_238 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16911 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16911 : InImage map_52_238 image16911 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16911 : Bundle := named_bundle% "RealMapCertificates/relations/basis16911.json"
theorem reductionProof16911 : EqualModuloRelations reduction16911.relations reduction16911.input reduction16911.output := by lin_cert using reduction16911.terms
theorem substitutionProof16911 : IsMapEvaluation generatorImages reduction16911.relations [0,0,0,0,0,0,0,0,64,725] reduction16911.output := by lin_cert using reduction16911.terms
def map_52_239 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17121 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17121 : InImage map_52_239 image17121 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17121 : Bundle := named_bundle% "RealMapCertificates/relations/basis17121.json"
theorem reductionProof17121 : EqualModuloRelations reduction17121.relations reduction17121.input reduction17121.output := by lin_cert using reduction17121.terms
theorem substitutionProof17121 : IsMapEvaluation generatorImages reduction17121.relations [1966] reduction17121.output := by lin_cert using reduction17121.terms
def image17122 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17122 : InImage map_52_239 image17122 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17122 : Bundle := named_bundle% "RealMapCertificates/relations/basis17122.json"
theorem reductionProof17122 : EqualModuloRelations reduction17122.relations reduction17122.input reduction17122.output := by lin_cert using reduction17122.terms
theorem substitutionProof17122 : IsMapEvaluation generatorImages reduction17122.relations [8,8,8,8,8,8,343] reduction17122.output := by lin_cert using reduction17122.terms
def map_52_240 : Matrix 3 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17387 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17387 : InImage map_52_240 image17387 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17387 : Bundle := named_bundle% "RealMapCertificates/relations/basis17387.json"
theorem reductionProof17387 : EqualModuloRelations reduction17387.relations reduction17387.input reduction17387.output := by lin_cert using reduction17387.terms
theorem substitutionProof17387 : IsMapEvaluation generatorImages reduction17387.relations [8,8,16,64,224] reduction17387.output := by lin_cert using reduction17387.terms
def image17388 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17388 : InImage map_52_240 image17388 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17388 : Bundle := named_bundle% "RealMapCertificates/relations/basis17388.json"
theorem reductionProof17388 : EqualModuloRelations reduction17388.relations reduction17388.input reduction17388.output := by lin_cert using reduction17388.terms
theorem substitutionProof17388 : IsMapEvaluation generatorImages reduction17388.relations [8,8,8,8,8,8,17,185] reduction17388.output := by lin_cert using reduction17388.terms
def image17389 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation17389 : InImage map_52_240 image17389 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17389 : Bundle := named_bundle% "RealMapCertificates/relations/basis17389.json"
theorem reductionProof17389 : EqualModuloRelations reduction17389.relations reduction17389.input reduction17389.output := by lin_cert using reduction17389.terms
theorem substitutionProof17389 : IsMapEvaluation generatorImages reduction17389.relations [8,8,8,8,8,8,8,8,8,8,8,8,13] reduction17389.output := by lin_cert using reduction17389.terms
def image17390 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17390 : InImage map_52_240 image17390 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17390 : Bundle := named_bundle% "RealMapCertificates/relations/basis17390.json"
theorem reductionProof17390 : EqualModuloRelations reduction17390.relations reduction17390.input reduction17390.output := by lin_cert using reduction17390.terms
theorem substitutionProof17390 : IsMapEvaluation generatorImages reduction17390.relations [0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction17390.output := by lin_cert using reduction17390.terms
def map_52_241 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image17673 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17673 : InImage map_52_241 image17673 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17673 : Bundle := named_bundle% "RealMapCertificates/relations/basis17673.json"
theorem reductionProof17673 : EqualModuloRelations reduction17673.relations reduction17673.input reduction17673.output := by lin_cert using reduction17673.terms
theorem substitutionProof17673 : IsMapEvaluation generatorImages reduction17673.relations [1,42,1033] reduction17673.output := by lin_cert using reduction17673.terms
def image17674 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17674 : InImage map_52_241 image17674 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17674 : Bundle := named_bundle% "RealMapCertificates/relations/basis17674.json"
theorem reductionProof17674 : EqualModuloRelations reduction17674.relations reduction17674.input reduction17674.output := by lin_cert using reduction17674.terms
theorem substitutionProof17674 : IsMapEvaluation generatorImages reduction17674.relations [0,0,0,0,0,0,0,0,0,0,0,1735] reduction17674.output := by lin_cert using reduction17674.terms
def map_52_242 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17886 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17886 : InImage map_52_242 image17886 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17886 : Bundle := named_bundle% "RealMapCertificates/relations/basis17886.json"
theorem reductionProof17886 : EqualModuloRelations reduction17886.relations reduction17886.input reduction17886.output := by lin_cert using reduction17886.terms
theorem substitutionProof17886 : IsMapEvaluation generatorImages reduction17886.relations [17,17,896] reduction17886.output := by lin_cert using reduction17886.terms
def image17887 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17887 : InImage map_52_242 image17887 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17887 : Bundle := named_bundle% "RealMapCertificates/relations/basis17887.json"
theorem reductionProof17887 : EqualModuloRelations reduction17887.relations reduction17887.input reduction17887.output := by lin_cert using reduction17887.terms
theorem substitutionProof17887 : IsMapEvaluation generatorImages reduction17887.relations [8,1619] reduction17887.output := by lin_cert using reduction17887.terms
def image17888 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17888 : InImage map_52_242 image17888 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17888 : Bundle := named_bundle% "RealMapCertificates/relations/basis17888.json"
theorem reductionProof17888 : EqualModuloRelations reduction17888.relations reduction17888.input reduction17888.output := by lin_cert using reduction17888.terms
theorem substitutionProof17888 : IsMapEvaluation generatorImages reduction17888.relations [8,8,8,8,8,8,8,244] reduction17888.output := by lin_cert using reduction17888.terms
def image17889 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17889 : InImage map_52_242 image17889 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17889 : Bundle := named_bundle% "RealMapCertificates/relations/basis17889.json"
theorem reductionProof17889 : EqualModuloRelations reduction17889.relations reduction17889.input reduction17889.output := by lin_cert using reduction17889.terms
theorem substitutionProof17889 : IsMapEvaluation generatorImages reduction17889.relations [0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction17889.output := by lin_cert using reduction17889.terms
def map_52_243 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image18174 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18174 : InImage map_52_243 image18174 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18174 : Bundle := named_bundle% "RealMapCertificates/relations/basis18174.json"
theorem reductionProof18174 : EqualModuloRelations reduction18174.relations reduction18174.input reduction18174.output := by lin_cert using reduction18174.terms
theorem substitutionProof18174 : IsMapEvaluation generatorImages reduction18174.relations [8,8,8,64,297] reduction18174.output := by lin_cert using reduction18174.terms
def image18175 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18175 : InImage map_52_243 image18175 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18175 : Bundle := named_bundle% "RealMapCertificates/relations/basis18175.json"
theorem reductionProof18175 : EqualModuloRelations reduction18175.relations reduction18175.input reduction18175.output := by lin_cert using reduction18175.terms
theorem substitutionProof18175 : IsMapEvaluation generatorImages reduction18175.relations [8,8,8,8,8,8,8,17,138] reduction18175.output := by lin_cert using reduction18175.terms
def image18176 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18176 : InImage map_52_243 image18176 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18176 : Bundle := named_bundle% "RealMapCertificates/relations/basis18176.json"
theorem reductionProof18176 : EqualModuloRelations reduction18176.relations reduction18176.input reduction18176.output := by lin_cert using reduction18176.terms
theorem substitutionProof18176 : IsMapEvaluation generatorImages reduction18176.relations [8,8,8,8,8,8,8,8,8,8,8,9,13] reduction18176.output := by lin_cert using reduction18176.terms
def image18177 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18177 : InImage map_52_243 image18177 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18177 : Bundle := named_bundle% "RealMapCertificates/relations/basis18177.json"
theorem reductionProof18177 : EqualModuloRelations reduction18177.relations reduction18177.input reduction18177.output := by lin_cert using reduction18177.terms
theorem substitutionProof18177 : IsMapEvaluation generatorImages reduction18177.relations [0,0,0,0,0,0,64,64,224] reduction18177.output := by lin_cert using reduction18177.terms
def image18178 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18178 : InImage map_52_243 image18178 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18178 : Bundle := named_bundle% "RealMapCertificates/relations/basis18178.json"
theorem reductionProof18178 : EqualModuloRelations reduction18178.relations reduction18178.input reduction18178.output := by lin_cert using reduction18178.terms
theorem substitutionProof18178 : IsMapEvaluation generatorImages reduction18178.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction18178.output := by lin_cert using reduction18178.terms
def map_52_245 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image18633 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18633 : InImage map_52_245 image18633 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18633 : Bundle := named_bundle% "RealMapCertificates/relations/basis18633.json"
theorem reductionProof18633 : EqualModuloRelations reduction18633.relations reduction18633.input reduction18633.output := by lin_cert using reduction18633.terms
theorem substitutionProof18633 : IsMapEvaluation generatorImages reduction18633.relations [8,64,686] reduction18633.output := by lin_cert using reduction18633.terms
def image18634 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18634 : InImage map_52_245 image18634 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18634 : Bundle := named_bundle% "RealMapCertificates/relations/basis18634.json"
theorem reductionProof18634 : EqualModuloRelations reduction18634.relations reduction18634.input reduction18634.output := by lin_cert using reduction18634.terms
theorem substitutionProof18634 : IsMapEvaluation generatorImages reduction18634.relations [8,17,17,725] reduction18634.output := by lin_cert using reduction18634.terms
def image18635 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18635 : InImage map_52_245 image18635 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18635 : Bundle := named_bundle% "RealMapCertificates/relations/basis18635.json"
theorem reductionProof18635 : EqualModuloRelations reduction18635.relations reduction18635.input reduction18635.output := by lin_cert using reduction18635.terms
theorem substitutionProof18635 : IsMapEvaluation generatorImages reduction18635.relations [8,8,8,8,8,8,8,257] reduction18635.output := by lin_cert using reduction18635.terms
def map_52_246 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image18922 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18922 : InImage map_52_246 image18922 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18922 : Bundle := named_bundle% "RealMapCertificates/relations/basis18922.json"
theorem reductionProof18922 : EqualModuloRelations reduction18922.relations reduction18922.input reduction18922.output := by lin_cert using reduction18922.terms
theorem substitutionProof18922 : IsMapEvaluation generatorImages reduction18922.relations [8,8,8,8,64,224] reduction18922.output := by lin_cert using reduction18922.terms
def image18923 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18923 : InImage map_52_246 image18923 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18923 : Bundle := named_bundle% "RealMapCertificates/relations/basis18923.json"
theorem reductionProof18923 : EqualModuloRelations reduction18923.relations reduction18923.input reduction18923.output := by lin_cert using reduction18923.terms
theorem substitutionProof18923 : IsMapEvaluation generatorImages reduction18923.relations [8,8,8,8,8,8,8,17,147] reduction18923.output := by lin_cert using reduction18923.terms
def image18924 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18924 : InImage map_52_246 image18924 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18924 : Bundle := named_bundle% "RealMapCertificates/relations/basis18924.json"
theorem reductionProof18924 : EqualModuloRelations reduction18924.relations reduction18924.input reduction18924.output := by lin_cert using reduction18924.terms
theorem substitutionProof18924 : IsMapEvaluation generatorImages reduction18924.relations [8,8,8,8,8,8,8,8,8,8,8,13,13] reduction18924.output := by lin_cert using reduction18924.terms
def map_52_247 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19205 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19205 : InImage map_52_247 image19205 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19205 : Bundle := named_bundle% "RealMapCertificates/relations/basis19205.json"
theorem reductionProof19205 : EqualModuloRelations reduction19205.relations reduction19205.input reduction19205.output := by lin_cert using reduction19205.terms
theorem substitutionProof19205 : IsMapEvaluation generatorImages reduction19205.relations [149,595] reduction19205.output := by lin_cert using reduction19205.terms
def map_52_248 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19432 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19432 : InImage map_52_248 image19432 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19432 : Bundle := named_bundle% "RealMapCertificates/relations/basis19432.json"
theorem reductionProof19432 : EqualModuloRelations reduction19432.relations reduction19432.input reduction19432.output := by lin_cert using reduction19432.terms
theorem substitutionProof19432 : IsMapEvaluation generatorImages reduction19432.relations [8,17,17,759] reduction19432.output := by lin_cert using reduction19432.terms
def image19433 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19433 : InImage map_52_248 image19433 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19433 : Bundle := named_bundle% "RealMapCertificates/relations/basis19433.json"
theorem reductionProof19433 : EqualModuloRelations reduction19433.relations reduction19433.input reduction19433.output := by lin_cert using reduction19433.terms
theorem substitutionProof19433 : IsMapEvaluation generatorImages reduction19433.relations [8,8,1399] reduction19433.output := by lin_cert using reduction19433.terms
def image19434 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19434 : InImage map_52_248 image19434 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19434 : Bundle := named_bundle% "RealMapCertificates/relations/basis19434.json"
theorem reductionProof19434 : EqualModuloRelations reduction19434.relations reduction19434.input reduction19434.output := by lin_cert using reduction19434.terms
theorem substitutionProof19434 : IsMapEvaluation generatorImages reduction19434.relations [8,8,8,8,8,8,8,16,149] reduction19434.output := by lin_cert using reduction19434.terms
def map_52_249 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image19738 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19738 : InImage map_52_249 image19738 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19738 : Bundle := named_bundle% "RealMapCertificates/relations/basis19738.json"
theorem reductionProof19738 : EqualModuloRelations reduction19738.relations reduction19738.input reduction19738.output := by lin_cert using reduction19738.terms
theorem substitutionProof19738 : IsMapEvaluation generatorImages reduction19738.relations [8,8,8,8,64,237] reduction19738.output := by lin_cert using reduction19738.terms
def image19739 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19739 : InImage map_52_249 image19739 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19739 : Bundle := named_bundle% "RealMapCertificates/relations/basis19739.json"
theorem reductionProof19739 : EqualModuloRelations reduction19739.relations reduction19739.input reduction19739.output := by lin_cert using reduction19739.terms
theorem substitutionProof19739 : IsMapEvaluation generatorImages reduction19739.relations [8,8,8,8,8,8,8,16,154] reduction19739.output := by lin_cert using reduction19739.terms
def image19740 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19740 : InImage map_52_249 image19740 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19740 : Bundle := named_bundle% "RealMapCertificates/relations/basis19740.json"
theorem reductionProof19740 : EqualModuloRelations reduction19740.relations reduction19740.input reduction19740.output := by lin_cert using reduction19740.terms
theorem substitutionProof19740 : IsMapEvaluation generatorImages reduction19740.relations [8,8,8,8,8,8,8,8,8,8,9,13,13] reduction19740.output := by lin_cert using reduction19740.terms
def map_52_250 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image19989 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19989 : InImage map_52_250 image19989 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19989 : Bundle := named_bundle% "RealMapCertificates/relations/basis19989.json"
theorem reductionProof19989 : EqualModuloRelations reduction19989.relations reduction19989.input reduction19989.output := by lin_cert using reduction19989.terms
theorem substitutionProof19989 : IsMapEvaluation generatorImages reduction19989.relations [8,149,452] reduction19989.output := by lin_cert using reduction19989.terms
def map_52_251 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20242 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20242 : InImage map_52_251 image20242 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20242 : Bundle := named_bundle% "RealMapCertificates/relations/basis20242.json"
theorem reductionProof20242 : EqualModuloRelations reduction20242.relations reduction20242.input reduction20242.output := by lin_cert using reduction20242.terms
theorem substitutionProof20242 : IsMapEvaluation generatorImages reduction20242.relations [8,16,17,17,491] reduction20242.output := by lin_cert using reduction20242.terms
def image20243 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20243 : InImage map_52_251 image20243 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20243 : Bundle := named_bundle% "RealMapCertificates/relations/basis20243.json"
theorem reductionProof20243 : EqualModuloRelations reduction20243.relations reduction20243.input reduction20243.output := by lin_cert using reduction20243.terms
theorem substitutionProof20243 : IsMapEvaluation generatorImages reduction20243.relations [8,8,1472] reduction20243.output := by lin_cert using reduction20243.terms
def image20244 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20244 : InImage map_52_251 image20244 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20244 : Bundle := named_bundle% "RealMapCertificates/relations/basis20244.json"
theorem reductionProof20244 : EqualModuloRelations reduction20244.relations reduction20244.input reduction20244.output := by lin_cert using reduction20244.terms
theorem substitutionProof20244 : IsMapEvaluation generatorImages reduction20244.relations [8,8,8,8,8,8,8,8,206] reduction20244.output := by lin_cert using reduction20244.terms
def map_52_252 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image20543 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20543 : InImage map_52_252 image20543 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20543 : Bundle := named_bundle% "RealMapCertificates/relations/basis20543.json"
theorem reductionProof20543 : EqualModuloRelations reduction20543.relations reduction20543.input reduction20543.output := by lin_cert using reduction20543.terms
theorem substitutionProof20543 : IsMapEvaluation generatorImages reduction20543.relations [8,8,8,8,16,64,137] reduction20543.output := by lin_cert using reduction20543.terms
def image20544 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation20544 : InImage map_52_252 image20544 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20544 : Bundle := named_bundle% "RealMapCertificates/relations/basis20544.json"
theorem reductionProof20544 : EqualModuloRelations reduction20544.relations reduction20544.input reduction20544.output := by lin_cert using reduction20544.terms
theorem substitutionProof20544 : IsMapEvaluation generatorImages reduction20544.relations [8,8,8,8,8,8,8,8,17,113] reduction20544.output := by lin_cert using reduction20544.terms
def image20545 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation20545 : InImage map_52_252 image20545 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20545 : Bundle := named_bundle% "RealMapCertificates/relations/basis20545.json"
theorem reductionProof20545 : EqualModuloRelations reduction20545.relations reduction20545.input reduction20545.output := by lin_cert using reduction20545.terms
theorem substitutionProof20545 : IsMapEvaluation generatorImages reduction20545.relations [8,8,8,8,8,8,8,8,8,8,13,13,13] reduction20545.output := by lin_cert using reduction20545.terms
end RealMapCertificates
