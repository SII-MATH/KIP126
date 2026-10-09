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
  | 64 => []
  | 80 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 154 => [[0,5,8,12]]
  | 160 => [[6,8,12]]
  | 161 => [[4,4,4,4,5,5,7]]
  | 162 => [[0,5,9,12]]
  | 166 => [[6,9,12]]
  | 171 => [[4,4,4,4,5,7,7]]
  | 184 => []
  | 211 => [[4,4,4,4,4,5,5,7]]
  | 223 => [[4,4,4,4,4,5,7,7]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 244 => [[4,4,4,9,12]]
  | 245 => [[4,4,7,7,12]]
  | 265 => [[4,4,4,4,4,4,5,5,7]]
  | 283 => [[4,4,4,4,4,4,5,7,7]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 324 => []
  | 343 => [[4,4,4,6,8,12]]
  | 354 => [[4,4,4,4,4,4,4,5,5,7]]
  | 401 => [[4,4,4,4,4,4,4,5,7,7]]
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 491 => []
  | 498 => [[4,4,4,4,4,4,4,4,5,5,7]]
  | 516 => []
  | 528 => [[4,4,4,4,4,4,4,4,5,7,7]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 606 => []
  | 607 => [[4,4,4,4,4,4,4,4,4,5,5,7]]
  | 622 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 623 => []
  | 634 => [[4,4,4,4,4,4,4,4,4,5,7,7]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 641 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 662 => []
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 725 => []
  | 736 => [[4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 759 => []
  | 777 => [[4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 915 => [[4,4,4,4,4,4,4,4,4,4,4,5,7,7]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 970 => [[4,4,4,4,4,4,4,5,5,7,12]]
  | 971 => []
  | 1033 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1179 => [[4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1180 => []
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1241 => [[4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1397 => []
  | 1398 => [[4,4,4,4,4,4,4,4,4,5,5,7,12]]
  | 1470 => [[4,4,4,4,4,4,4,4,4,5,7,7,12]]
  | 1471 => []
  | 1499 => []
  | 1514 => []
  | 1589 => []
  | 1591 => []
  | 2537 => []
  | _ => []
def map_52_253 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image20817 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation20817 : InImage map_52_253 image20817 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction20817 : Bundle := named_bundle% "RealMapCertificates/relations/basis20817.json"
theorem reductionProof20817 : EqualModuloRelations reduction20817.relations reduction20817.input reduction20817.output := by lin_cert using reduction20817.terms
theorem substitutionProof20817 : IsMapEvaluation generatorImages reduction20817.relations [8,149,488] reduction20817.output := by lin_cert using reduction20817.terms
def image20818 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation20818 : InImage map_52_253 image20818 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction20818 : Bundle := named_bundle% "RealMapCertificates/relations/basis20818.json"
theorem reductionProof20818 : EqualModuloRelations reduction20818.relations reduction20818.input reduction20818.output := by lin_cert using reduction20818.terms
theorem substitutionProof20818 : IsMapEvaluation generatorImages reduction20818.relations [1,5,64,64,224] reduction20818.output := by lin_cert using reduction20818.terms
def map_52_254 : Matrix 1 4 := fun i j => ([false,false,false,true] : List Bool)[i.val*4+j.val]!
def image21069 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21069 : InImage map_52_254 image21069 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21069 : Bundle := named_bundle% "RealMapCertificates/relations/basis21069.json"
theorem reductionProof21069 : EqualModuloRelations reduction21069.relations reduction21069.input reduction21069.output := by lin_cert using reduction21069.terms
theorem substitutionProof21069 : IsMapEvaluation generatorImages reduction21069.relations [64,1033] reduction21069.output := by lin_cert using reduction21069.terms
def image21070 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21070 : InImage map_52_254 image21070 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21070 : Bundle := named_bundle% "RealMapCertificates/relations/basis21070.json"
theorem reductionProof21070 : EqualModuloRelations reduction21070.relations reduction21070.input reduction21070.output := by lin_cert using reduction21070.terms
theorem substitutionProof21070 : IsMapEvaluation generatorImages reduction21070.relations [8,8,17,17,623] reduction21070.output := by lin_cert using reduction21070.terms
def image21071 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21071 : InImage map_52_254 image21071 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21071 : Bundle := named_bundle% "RealMapCertificates/relations/basis21071.json"
theorem reductionProof21071 : EqualModuloRelations reduction21071.relations reduction21071.input reduction21071.output := by lin_cert using reduction21071.terms
theorem substitutionProof21071 : IsMapEvaluation generatorImages reduction21071.relations [8,8,8,1180] reduction21071.output := by lin_cert using reduction21071.terms
def image21072 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21072 : InImage map_52_254 image21072 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21072 : Bundle := named_bundle% "RealMapCertificates/relations/basis21072.json"
theorem reductionProof21072 : EqualModuloRelations reduction21072.relations reduction21072.input reduction21072.output := by lin_cert using reduction21072.terms
theorem substitutionProof21072 : IsMapEvaluation generatorImages reduction21072.relations [8,8,8,8,8,8,8,8,8,149] reduction21072.output := by lin_cert using reduction21072.terms
def map_52_255 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21418 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21418 : InImage map_52_255 image21418 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21418 : Bundle := named_bundle% "RealMapCertificates/relations/basis21418.json"
theorem reductionProof21418 : EqualModuloRelations reduction21418.relations reduction21418.input reduction21418.output := by lin_cert using reduction21418.terms
theorem substitutionProof21418 : IsMapEvaluation generatorImages reduction21418.relations [8,8,8,8,8,64,184] reduction21418.output := by lin_cert using reduction21418.terms
def image21419 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21419 : InImage map_52_255 image21419 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21419 : Bundle := named_bundle% "RealMapCertificates/relations/basis21419.json"
theorem reductionProof21419 : EqualModuloRelations reduction21419.relations reduction21419.input reduction21419.output := by lin_cert using reduction21419.terms
theorem substitutionProof21419 : IsMapEvaluation generatorImages reduction21419.relations [8,8,8,8,8,8,8,8,8,154] reduction21419.output := by lin_cert using reduction21419.terms
def image21420 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21420 : InImage map_52_255 image21420 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21420 : Bundle := named_bundle% "RealMapCertificates/relations/basis21420.json"
theorem reductionProof21420 : EqualModuloRelations reduction21420.relations reduction21420.input reduction21420.output := by lin_cert using reduction21420.terms
theorem substitutionProof21420 : IsMapEvaluation generatorImages reduction21420.relations [8,8,8,8,8,8,8,8,8,9,13,13,13] reduction21420.output := by lin_cert using reduction21420.terms
def image21421 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21421 : InImage map_52_255 image21421 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21421 : Bundle := named_bundle% "RealMapCertificates/relations/basis21421.json"
theorem reductionProof21421 : EqualModuloRelations reduction21421.relations reduction21421.input reduction21421.output := by lin_cert using reduction21421.terms
theorem substitutionProof21421 : IsMapEvaluation generatorImages reduction21421.relations [0,138,725] reduction21421.output := by lin_cert using reduction21421.terms
def map_52_256 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image21707 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21707 : InImage map_52_256 image21707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21707 : Bundle := named_bundle% "RealMapCertificates/relations/basis21707.json"
theorem reductionProof21707 : EqualModuloRelations reduction21707.relations reduction21707.input reduction21707.output := by lin_cert using reduction21707.terms
theorem substitutionProof21707 : IsMapEvaluation generatorImages reduction21707.relations [8,16,149,244] reduction21707.output := by lin_cert using reduction21707.terms
def image21708 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21708 : InImage map_52_256 image21708 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21708 : Bundle := named_bundle% "RealMapCertificates/relations/basis21708.json"
theorem reductionProof21708 : EqualModuloRelations reduction21708.relations reduction21708.input reduction21708.output := by lin_cert using reduction21708.terms
theorem substitutionProof21708 : IsMapEvaluation generatorImages reduction21708.relations [0,2537] reduction21708.output := by lin_cert using reduction21708.terms
def map_52_257 : Matrix 1 5 := fun i j => ([false,false,false,true,false] : List Bool)[i.val*5+j.val]!
def image22019 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22019 : InImage map_52_257 image22019 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22019 : Bundle := named_bundle% "RealMapCertificates/relations/basis22019.json"
theorem reductionProof22019 : EqualModuloRelations reduction22019.relations reduction22019.input reduction22019.output := by lin_cert using reduction22019.terms
theorem substitutionProof22019 : IsMapEvaluation generatorImages reduction22019.relations [64,1076] reduction22019.output := by lin_cert using reduction22019.terms
def image22020 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22020 : InImage map_52_257 image22020 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22020 : Bundle := named_bundle% "RealMapCertificates/relations/basis22020.json"
theorem reductionProof22020 : EqualModuloRelations reduction22020.relations reduction22020.input reduction22020.output := by lin_cert using reduction22020.terms
theorem substitutionProof22020 : IsMapEvaluation generatorImages reduction22020.relations [8,8,8,137,245] reduction22020.output := by lin_cert using reduction22020.terms
def image22021 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22021 : InImage map_52_257 image22021 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22021 : Bundle := named_bundle% "RealMapCertificates/relations/basis22021.json"
theorem reductionProof22021 : EqualModuloRelations reduction22021.relations reduction22021.input reduction22021.output := by lin_cert using reduction22021.terms
theorem substitutionProof22021 : IsMapEvaluation generatorImages reduction22021.relations [8,8,8,17,17,491] reduction22021.output := by lin_cert using reduction22021.terms
def image22022 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22022 : InImage map_52_257 image22022 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22022 : Bundle := named_bundle% "RealMapCertificates/relations/basis22022.json"
theorem reductionProof22022 : EqualModuloRelations reduction22022.relations reduction22022.input reduction22022.output := by lin_cert using reduction22022.terms
theorem substitutionProof22022 : IsMapEvaluation generatorImages reduction22022.relations [8,8,8,8,8,8,8,8,8,160] reduction22022.output := by lin_cert using reduction22022.terms
def image22023 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22023 : InImage map_52_257 image22023 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22023 : Bundle := named_bundle% "RealMapCertificates/relations/basis22023.json"
theorem reductionProof22023 : EqualModuloRelations reduction22023.relations reduction22023.input reduction22023.output := by lin_cert using reduction22023.terms
theorem substitutionProof22023 : IsMapEvaluation generatorImages reduction22023.relations [1,2537] reduction22023.output := by lin_cert using reduction22023.terms
def map_52_258 : Matrix 2 5 := fun i j => ([false,false,false,true,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22376 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22376 : InImage map_52_258 image22376 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22376 : Bundle := named_bundle% "RealMapCertificates/relations/basis22376.json"
theorem reductionProof22376 : EqualModuloRelations reduction22376.relations reduction22376.input reduction22376.output := by lin_cert using reduction22376.terms
theorem substitutionProof22376 : IsMapEvaluation generatorImages reduction22376.relations [64,1093] reduction22376.output := by lin_cert using reduction22376.terms
def image22377 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22377 : InImage map_52_258 image22377 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22377 : Bundle := named_bundle% "RealMapCertificates/relations/basis22377.json"
theorem reductionProof22377 : EqualModuloRelations reduction22377.relations reduction22377.input reduction22377.output := by lin_cert using reduction22377.terms
theorem substitutionProof22377 : IsMapEvaluation generatorImages reduction22377.relations [8,8,8,8,8,8,64,137] reduction22377.output := by lin_cert using reduction22377.terms
def image22378 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22378 : InImage map_52_258 image22378 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22378 : Bundle := named_bundle% "RealMapCertificates/relations/basis22378.json"
theorem reductionProof22378 : EqualModuloRelations reduction22378.relations reduction22378.input reduction22378.output := by lin_cert using reduction22378.terms
theorem substitutionProof22378 : IsMapEvaluation generatorImages reduction22378.relations [8,8,8,8,8,8,8,8,8,162] reduction22378.output := by lin_cert using reduction22378.terms
def image22379 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22379 : InImage map_52_258 image22379 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22379 : Bundle := named_bundle% "RealMapCertificates/relations/basis22379.json"
theorem reductionProof22379 : EqualModuloRelations reduction22379.relations reduction22379.input reduction22379.output := by lin_cert using reduction22379.terms
theorem substitutionProof22379 : IsMapEvaluation generatorImages reduction22379.relations [8,8,8,8,8,8,8,8,8,13,13,13,13] reduction22379.output := by lin_cert using reduction22379.terms
def image22380 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22380 : InImage map_52_258 image22380 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22380 : Bundle := named_bundle% "RealMapCertificates/relations/basis22380.json"
theorem reductionProof22380 : EqualModuloRelations reduction22380.relations reduction22380.input reduction22380.output := by lin_cert using reduction22380.terms
theorem substitutionProof22380 : IsMapEvaluation generatorImages reduction22380.relations [0,138,759] reduction22380.output := by lin_cert using reduction22380.terms
def map_52_259 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image22712 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22712 : InImage map_52_259 image22712 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction22712 : Bundle := named_bundle% "RealMapCertificates/relations/basis22712.json"
theorem reductionProof22712 : EqualModuloRelations reduction22712.relations reduction22712.input reduction22712.output := by lin_cert using reduction22712.terms
theorem substitutionProof22712 : IsMapEvaluation generatorImages reduction22712.relations [8,8,149,343] reduction22712.output := by lin_cert using reduction22712.terms
def map_52_260 : Matrix 3 4 := fun i j => ([false,false,false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image23047 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23047 : InImage map_52_260 image23047 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23047 : Bundle := named_bundle% "RealMapCertificates/relations/basis23047.json"
theorem reductionProof23047 : EqualModuloRelations reduction23047.relations reduction23047.input reduction23047.output := by lin_cert using reduction23047.terms
theorem substitutionProof23047 : IsMapEvaluation generatorImages reduction23047.relations [16,64,725] reduction23047.output := by lin_cert using reduction23047.terms
def image23048 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23048 : InImage map_52_260 image23048 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23048 : Bundle := named_bundle% "RealMapCertificates/relations/basis23048.json"
theorem reductionProof23048 : EqualModuloRelations reduction23048.relations reduction23048.input reduction23048.output := by lin_cert using reduction23048.terms
theorem substitutionProof23048 : IsMapEvaluation generatorImages reduction23048.relations [8,8,8,17,17,516] reduction23048.output := by lin_cert using reduction23048.terms
def image23049 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23049 : InImage map_52_260 image23049 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23049 : Bundle := named_bundle% "RealMapCertificates/relations/basis23049.json"
theorem reductionProof23049 : EqualModuloRelations reduction23049.relations reduction23049.input reduction23049.output := by lin_cert using reduction23049.terms
theorem substitutionProof23049 : IsMapEvaluation generatorImages reduction23049.relations [8,8,8,8,971] reduction23049.output := by lin_cert using reduction23049.terms
def image23050 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation23050 : InImage map_52_260 image23050 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23050 : Bundle := named_bundle% "RealMapCertificates/relations/basis23050.json"
theorem reductionProof23050 : EqualModuloRelations reduction23050.relations reduction23050.input reduction23050.output := by lin_cert using reduction23050.terms
theorem substitutionProof23050 : IsMapEvaluation generatorImages reduction23050.relations [8,8,8,8,8,8,8,8,8,166] reduction23050.output := by lin_cert using reduction23050.terms
def map_52_261 : Matrix 2 6 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*6+j.val]!
def image23489 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23489 : InImage map_52_261 image23489 := by lin_cert using (fun j : Fin 6 => decide (j.val = 0))
def reduction23489 : Bundle := named_bundle% "RealMapCertificates/relations/basis23489.json"
theorem reductionProof23489 : EqualModuloRelations reduction23489.relations reduction23489.input reduction23489.output := by lin_cert using reduction23489.terms
theorem substitutionProof23489 : IsMapEvaluation generatorImages reduction23489.relations [64,138,225] reduction23489.output := by lin_cert using reduction23489.terms
def image23490 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23490 : InImage map_52_261 image23490 := by lin_cert using (fun j : Fin 6 => decide (j.val = 1))
def reduction23490 : Bundle := named_bundle% "RealMapCertificates/relations/basis23490.json"
theorem reductionProof23490 : EqualModuloRelations reduction23490.relations reduction23490.input reduction23490.output := by lin_cert using reduction23490.terms
theorem substitutionProof23490 : IsMapEvaluation generatorImages reduction23490.relations [8,8,8,8,8,8,64,146] reduction23490.output := by lin_cert using reduction23490.terms
def image23491 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23491 : InImage map_52_261 image23491 := by lin_cert using (fun j : Fin 6 => decide (j.val = 2))
def reduction23491 : Bundle := named_bundle% "RealMapCertificates/relations/basis23491.json"
theorem reductionProof23491 : EqualModuloRelations reduction23491.relations reduction23491.input reduction23491.output := by lin_cert using reduction23491.terms
theorem substitutionProof23491 : IsMapEvaluation generatorImages reduction23491.relations [8,8,8,8,8,8,8,8,9,13,13,13,13] reduction23491.output := by lin_cert using reduction23491.terms
def image23492 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23492 : InImage map_52_261 image23492 := by lin_cert using (fun j : Fin 6 => decide (j.val = 3))
def reduction23492 : Bundle := named_bundle% "RealMapCertificates/relations/basis23492.json"
theorem reductionProof23492 : EqualModuloRelations reduction23492.relations reduction23492.input reduction23492.output := by lin_cert using reduction23492.terms
theorem substitutionProof23492 : IsMapEvaluation generatorImages reduction23492.relations [8,8,8,8,8,8,8,8,8,17,80] reduction23492.output := by lin_cert using reduction23492.terms
def image23493 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23493 : InImage map_52_261 image23493 := by lin_cert using (fun j : Fin 6 => decide (j.val = 4))
def reduction23493 : Bundle := named_bundle% "RealMapCertificates/relations/basis23493.json"
theorem reductionProof23493 : EqualModuloRelations reduction23493.relations reduction23493.input reduction23493.output := by lin_cert using reduction23493.terms
theorem substitutionProof23493 : IsMapEvaluation generatorImages reduction23493.relations [0,16,138,491] reduction23493.output := by lin_cert using reduction23493.terms
def image23494 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23494 : InImage map_52_261 image23494 := by lin_cert using (fun j : Fin 6 => decide (j.val = 5))
def reduction23494 : Bundle := named_bundle% "RealMapCertificates/relations/basis23494.json"
theorem reductionProof23494 : EqualModuloRelations reduction23494.relations reduction23494.input reduction23494.output := by lin_cert using reduction23494.terms
theorem substitutionProof23494 : IsMapEvaluation generatorImages reduction23494.relations [0,0,149,725] reduction23494.output := by lin_cert using reduction23494.terms
def map_53_53 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image282 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation282 : InImage map_53_53 image282 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction282 : Bundle := named_bundle% "RealMapCertificates/relations/basis282.json"
theorem reductionProof282 : EqualModuloRelations reduction282.relations reduction282.input reduction282.output := by lin_cert using reduction282.terms
theorem substitutionProof282 : IsMapEvaluation generatorImages reduction282.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction282.output := by lin_cert using reduction282.terms
def map_53_158 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4659 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4659 : InImage map_53_158 image4659 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4659 : Bundle := named_bundle% "RealMapCertificates/relations/basis4659.json"
theorem reductionProof4659 : EqualModuloRelations reduction4659.relations reduction4659.input reduction4659.output := by lin_cert using reduction4659.terms
theorem substitutionProof4659 : IsMapEvaluation generatorImages reduction4659.relations [622] reduction4659.output := by lin_cert using reduction4659.terms
def map_53_160 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4840 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4840 : InImage map_53_160 image4840 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4840 : Bundle := named_bundle% "RealMapCertificates/relations/basis4840.json"
theorem reductionProof4840 : EqualModuloRelations reduction4840.relations reduction4840.input reduction4840.output := by lin_cert using reduction4840.terms
theorem substitutionProof4840 : IsMapEvaluation generatorImages reduction4840.relations [641] reduction4840.output := by lin_cert using reduction4840.terms
def map_53_163 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5133 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5133 : InImage map_53_163 image5133 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5133 : Bundle := named_bundle% "RealMapCertificates/relations/basis5133.json"
theorem reductionProof5133 : EqualModuloRelations reduction5133.relations reduction5133.input reduction5133.output := by lin_cert using reduction5133.terms
theorem substitutionProof5133 : IsMapEvaluation generatorImages reduction5133.relations [0,661] reduction5133.output := by lin_cert using reduction5133.terms
def map_53_164 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image5208 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5208 : InImage map_53_164 image5208 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction5208 : Bundle := named_bundle% "RealMapCertificates/relations/basis5208.json"
theorem reductionProof5208 : EqualModuloRelations reduction5208.relations reduction5208.input reduction5208.output := by lin_cert using reduction5208.terms
theorem substitutionProof5208 : IsMapEvaluation generatorImages reduction5208.relations [1,661] reduction5208.output := by lin_cert using reduction5208.terms
def image5209 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation5209 : InImage map_53_164 image5209 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction5209 : Bundle := named_bundle% "RealMapCertificates/relations/basis5209.json"
theorem reductionProof5209 : EqualModuloRelations reduction5209.relations reduction5209.input reduction5209.output := by lin_cert using reduction5209.terms
theorem substitutionProof5209 : IsMapEvaluation generatorImages reduction5209.relations [0,0,0,0,0,0,0,0,606] reduction5209.output := by lin_cert using reduction5209.terms
def map_53_166 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5434 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5434 : InImage map_53_166 image5434 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5434 : Bundle := named_bundle% "RealMapCertificates/relations/basis5434.json"
theorem reductionProof5434 : EqualModuloRelations reduction5434.relations reduction5434.input reduction5434.output := by lin_cert using reduction5434.terms
theorem substitutionProof5434 : IsMapEvaluation generatorImages reduction5434.relations [0,700] reduction5434.output := by lin_cert using reduction5434.terms
def map_53_167 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5534 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5534 : InImage map_53_167 image5534 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5534 : Bundle := named_bundle% "RealMapCertificates/relations/basis5534.json"
theorem reductionProof5534 : EqualModuloRelations reduction5534.relations reduction5534.input reduction5534.output := by lin_cert using reduction5534.terms
theorem substitutionProof5534 : IsMapEvaluation generatorImages reduction5534.relations [0,0,701] reduction5534.output := by lin_cert using reduction5534.terms
def map_53_169 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5769 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5769 : InImage map_53_169 image5769 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5769 : Bundle := named_bundle% "RealMapCertificates/relations/basis5769.json"
theorem reductionProof5769 : EqualModuloRelations reduction5769.relations reduction5769.input reduction5769.output := by lin_cert using reduction5769.terms
theorem substitutionProof5769 : IsMapEvaluation generatorImages reduction5769.relations [0,8,553] reduction5769.output := by lin_cert using reduction5769.terms
def map_53_170 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5859 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5859 : InImage map_53_170 image5859 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5859 : Bundle := named_bundle% "RealMapCertificates/relations/basis5859.json"
theorem reductionProof5859 : EqualModuloRelations reduction5859.relations reduction5859.input reduction5859.output := by lin_cert using reduction5859.terms
theorem substitutionProof5859 : IsMapEvaluation generatorImages reduction5859.relations [0,0,8,554] reduction5859.output := by lin_cert using reduction5859.terms
def map_53_172 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6107 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6107 : InImage map_53_172 image6107 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6107 : Bundle := named_bundle% "RealMapCertificates/relations/basis6107.json"
theorem reductionProof6107 : EqualModuloRelations reduction6107.relations reduction6107.input reduction6107.output := by lin_cert using reduction6107.terms
theorem substitutionProof6107 : IsMapEvaluation generatorImages reduction6107.relations [0,8,578] reduction6107.output := by lin_cert using reduction6107.terms
def map_53_173 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image6197 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation6197 : InImage map_53_173 image6197 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6197 : Bundle := named_bundle% "RealMapCertificates/relations/basis6197.json"
theorem reductionProof6197 : EqualModuloRelations reduction6197.relations reduction6197.input reduction6197.output := by lin_cert using reduction6197.terms
theorem substitutionProof6197 : IsMapEvaluation generatorImages reduction6197.relations [0,0,8,579] reduction6197.output := by lin_cert using reduction6197.terms
def map_53_175 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6443 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6443 : InImage map_53_175 image6443 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6443 : Bundle := named_bundle% "RealMapCertificates/relations/basis6443.json"
theorem reductionProof6443 : EqualModuloRelations reduction6443.relations reduction6443.input reduction6443.output := by lin_cert using reduction6443.terms
theorem substitutionProof6443 : IsMapEvaluation generatorImages reduction6443.relations [0,8,8,431] reduction6443.output := by lin_cert using reduction6443.terms
def map_53_176 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6533 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6533 : InImage map_53_176 image6533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6533 : Bundle := named_bundle% "RealMapCertificates/relations/basis6533.json"
theorem reductionProof6533 : EqualModuloRelations reduction6533.relations reduction6533.input reduction6533.output := by lin_cert using reduction6533.terms
theorem substitutionProof6533 : IsMapEvaluation generatorImages reduction6533.relations [0,0,8,16,296] reduction6533.output := by lin_cert using reduction6533.terms
def map_53_179 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6893 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6893 : InImage map_53_179 image6893 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6893 : Bundle := named_bundle% "RealMapCertificates/relations/basis6893.json"
theorem reductionProof6893 : EqualModuloRelations reduction6893.relations reduction6893.input reduction6893.output := by lin_cert using reduction6893.terms
theorem substitutionProof6893 : IsMapEvaluation generatorImages reduction6893.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,686] reduction6893.output := by lin_cert using reduction6893.terms
def map_53_180 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7009 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7009 : InImage map_53_180 image7009 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7009 : Bundle := named_bundle% "RealMapCertificates/relations/basis7009.json"
theorem reductionProof7009 : EqualModuloRelations reduction7009.relations reduction7009.input reduction7009.output := by lin_cert using reduction7009.terms
theorem substitutionProof7009 : IsMapEvaluation generatorImages reduction7009.relations [886] reduction7009.output := by lin_cert using reduction7009.terms
def image7010 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7010 : InImage map_53_180 image7010 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7010 : Bundle := named_bundle% "RealMapCertificates/relations/basis7010.json"
theorem reductionProof7010 : EqualModuloRelations reduction7010.relations reduction7010.input reduction7010.output := by lin_cert using reduction7010.terms
theorem substitutionProof7010 : IsMapEvaluation generatorImages reduction7010.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7010.output := by lin_cert using reduction7010.terms
def map_53_183 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7374 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7374 : InImage map_53_183 image7374 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7374 : Bundle := named_bundle% "RealMapCertificates/relations/basis7374.json"
theorem reductionProof7374 : EqualModuloRelations reduction7374.relations reduction7374.input reduction7374.output := by lin_cert using reduction7374.terms
theorem substitutionProof7374 : IsMapEvaluation generatorImages reduction7374.relations [915] reduction7374.output := by lin_cert using reduction7374.terms
def map_53_186 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image7733 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7733 : InImage map_53_186 image7733 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction7733 : Bundle := named_bundle% "RealMapCertificates/relations/basis7733.json"
theorem reductionProof7733 : EqualModuloRelations reduction7733.relations reduction7733.input reduction7733.output := by lin_cert using reduction7733.terms
theorem substitutionProof7733 : IsMapEvaluation generatorImages reduction7733.relations [8,736] reduction7733.output := by lin_cert using reduction7733.terms
def image7734 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation7734 : InImage map_53_186 image7734 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction7734 : Bundle := named_bundle% "RealMapCertificates/relations/basis7734.json"
theorem reductionProof7734 : EqualModuloRelations reduction7734.relations reduction7734.input reduction7734.output := by lin_cert using reduction7734.terms
theorem substitutionProof7734 : IsMapEvaluation generatorImages reduction7734.relations [0,0,0,916] reduction7734.output := by lin_cert using reduction7734.terms
def map_53_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7876 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7876 : InImage map_53_187 image7876 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7876 : Bundle := named_bundle% "RealMapCertificates/relations/basis7876.json"
theorem reductionProof7876 : EqualModuloRelations reduction7876.relations reduction7876.input reduction7876.output := by lin_cert using reduction7876.terms
theorem substitutionProof7876 : IsMapEvaluation generatorImages reduction7876.relations [0,0,0,0,917] reduction7876.output := by lin_cert using reduction7876.terms
def map_53_189 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image8085 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8085 : InImage map_53_189 image8085 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8085 : Bundle := named_bundle% "RealMapCertificates/relations/basis8085.json"
theorem reductionProof8085 : EqualModuloRelations reduction8085.relations reduction8085.input reduction8085.output := by lin_cert using reduction8085.terms
theorem substitutionProof8085 : IsMapEvaluation generatorImages reduction8085.relations [8,777] reduction8085.output := by lin_cert using reduction8085.terms
def image8086 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8086 : InImage map_53_189 image8086 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8086 : Bundle := named_bundle% "RealMapCertificates/relations/basis8086.json"
theorem reductionProof8086 : EqualModuloRelations reduction8086.relations reduction8086.input reduction8086.output := by lin_cert using reduction8086.terms
theorem substitutionProof8086 : IsMapEvaluation generatorImages reduction8086.relations [0,0,0,952] reduction8086.output := by lin_cert using reduction8086.terms
def map_53_192 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8454 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8454 : InImage map_53_192 image8454 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8454 : Bundle := named_bundle% "RealMapCertificates/relations/basis8454.json"
theorem reductionProof8454 : EqualModuloRelations reduction8454.relations reduction8454.input reduction8454.output := by lin_cert using reduction8454.terms
theorem substitutionProof8454 : IsMapEvaluation generatorImages reduction8454.relations [8,8,607] reduction8454.output := by lin_cert using reduction8454.terms
def map_53_193 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8606 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8606 : InImage map_53_193 image8606 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8606 : Bundle := named_bundle% "RealMapCertificates/relations/basis8606.json"
theorem reductionProof8606 : EqualModuloRelations reduction8606.relations reduction8606.input reduction8606.output := by lin_cert using reduction8606.terms
theorem substitutionProof8606 : IsMapEvaluation generatorImages reduction8606.relations [0,0,0,0,0,969] reduction8606.output := by lin_cert using reduction8606.terms
def map_53_194 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image8707 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation8707 : InImage map_53_194 image8707 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8707 : Bundle := named_bundle% "RealMapCertificates/relations/basis8707.json"
theorem reductionProof8707 : EqualModuloRelations reduction8707.relations reduction8707.input reduction8707.output := by lin_cert using reduction8707.terms
theorem substitutionProof8707 : IsMapEvaluation generatorImages reduction8707.relations [0,0,0,0,0,17,636] reduction8707.output := by lin_cert using reduction8707.terms
def map_53_195 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8856 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8856 : InImage map_53_195 image8856 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8856 : Bundle := named_bundle% "RealMapCertificates/relations/basis8856.json"
theorem reductionProof8856 : EqualModuloRelations reduction8856.relations reduction8856.input reduction8856.output := by lin_cert using reduction8856.terms
theorem substitutionProof8856 : IsMapEvaluation generatorImages reduction8856.relations [8,8,634] reduction8856.output := by lin_cert using reduction8856.terms
def map_53_198 : Matrix 2 2 := fun i j => ([false,true,true,false] : List Bool)[i.val*2+j.val]!
def image9293 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation9293 : InImage map_53_198 image9293 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9293 : Bundle := named_bundle% "RealMapCertificates/relations/basis9293.json"
theorem reductionProof9293 : EqualModuloRelations reduction9293.relations reduction9293.input reduction9293.output := by lin_cert using reduction9293.terms
theorem substitutionProof9293 : IsMapEvaluation generatorImages reduction9293.relations [1142] reduction9293.output := by lin_cert using reduction9293.terms
def image9294 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation9294 : InImage map_53_198 image9294 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9294 : Bundle := named_bundle% "RealMapCertificates/relations/basis9294.json"
theorem reductionProof9294 : EqualModuloRelations reduction9294.relations reduction9294.input reduction9294.output := by lin_cert using reduction9294.terms
theorem substitutionProof9294 : IsMapEvaluation generatorImages reduction9294.relations [8,8,8,498] reduction9294.output := by lin_cert using reduction9294.terms
def map_53_201 : Matrix 5 2 := fun i j => ([false,true,true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9784 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation9784 : InImage map_53_201 image9784 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9784 : Bundle := named_bundle% "RealMapCertificates/relations/basis9784.json"
theorem reductionProof9784 : EqualModuloRelations reduction9784.relations reduction9784.input reduction9784.output := by lin_cert using reduction9784.terms
theorem substitutionProof9784 : IsMapEvaluation generatorImages reduction9784.relations [8,917] reduction9784.output := by lin_cert using reduction9784.terms
def image9785 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9785 : InImage map_53_201 image9785 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9785 : Bundle := named_bundle% "RealMapCertificates/relations/basis9785.json"
theorem reductionProof9785 : EqualModuloRelations reduction9785.relations reduction9785.input reduction9785.output := by lin_cert using reduction9785.terms
theorem substitutionProof9785 : IsMapEvaluation generatorImages reduction9785.relations [8,8,8,528] reduction9785.output := by lin_cert using reduction9785.terms
def map_53_202 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9951 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9951 : InImage map_53_202 image9951 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9951 : Bundle := named_bundle% "RealMapCertificates/relations/basis9951.json"
theorem reductionProof9951 : EqualModuloRelations reduction9951.relations reduction9951.input reduction9951.output := by lin_cert using reduction9951.terms
theorem substitutionProof9951 : IsMapEvaluation generatorImages reduction9951.relations [5,969] reduction9951.output := by lin_cert using reduction9951.terms
def map_53_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10274 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10274 : InImage map_53_204 image10274 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10274 : Bundle := named_bundle% "RealMapCertificates/relations/basis10274.json"
theorem reductionProof10274 : EqualModuloRelations reduction10274.relations reduction10274.input reduction10274.output := by lin_cert using reduction10274.terms
theorem substitutionProof10274 : IsMapEvaluation generatorImages reduction10274.relations [8,953] reduction10274.output := by lin_cert using reduction10274.terms
def image10275 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10275 : InImage map_53_204 image10275 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10275 : Bundle := named_bundle% "RealMapCertificates/relations/basis10275.json"
theorem reductionProof10275 : EqualModuloRelations reduction10275.relations reduction10275.input reduction10275.output := by lin_cert using reduction10275.terms
theorem substitutionProof10275 : IsMapEvaluation generatorImages reduction10275.relations [8,8,8,8,354] reduction10275.output := by lin_cert using reduction10275.terms
def image10276 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10276 : InImage map_53_204 image10276 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10276 : Bundle := named_bundle% "RealMapCertificates/relations/basis10276.json"
theorem reductionProof10276 : EqualModuloRelations reduction10276.relations reduction10276.input reduction10276.output := by lin_cert using reduction10276.terms
theorem substitutionProof10276 : IsMapEvaluation generatorImages reduction10276.relations [0,1239] reduction10276.output := by lin_cert using reduction10276.terms
def map_53_205 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image10477 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation10477 : InImage map_53_205 image10477 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10477 : Bundle := named_bundle% "RealMapCertificates/relations/basis10477.json"
theorem reductionProof10477 : EqualModuloRelations reduction10477.relations reduction10477.input reduction10477.output := by lin_cert using reduction10477.terms
theorem substitutionProof10477 : IsMapEvaluation generatorImages reduction10477.relations [0,17,806] reduction10477.output := by lin_cert using reduction10477.terms
def map_53_207 : Matrix 2 3 := fun i j => ([false,true,false,true,false,true] : List Bool)[i.val*3+j.val]!
def image10825 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10825 : InImage map_53_207 image10825 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10825 : Bundle := named_bundle% "RealMapCertificates/relations/basis10825.json"
theorem reductionProof10825 : EqualModuloRelations reduction10825.relations reduction10825.input reduction10825.output := by lin_cert using reduction10825.terms
theorem substitutionProof10825 : IsMapEvaluation generatorImages reduction10825.relations [8,16,636] reduction10825.output := by lin_cert using reduction10825.terms
def image10826 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation10826 : InImage map_53_207 image10826 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10826 : Bundle := named_bundle% "RealMapCertificates/relations/basis10826.json"
theorem reductionProof10826 : EqualModuloRelations reduction10826.relations reduction10826.input reduction10826.output := by lin_cert using reduction10826.terms
theorem substitutionProof10826 : IsMapEvaluation generatorImages reduction10826.relations [8,8,8,8,401] reduction10826.output := by lin_cert using reduction10826.terms
def image10827 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation10827 : InImage map_53_207 image10827 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10827 : Bundle := named_bundle% "RealMapCertificates/relations/basis10827.json"
theorem reductionProof10827 : EqualModuloRelations reduction10827.relations reduction10827.input reduction10827.output := by lin_cert using reduction10827.terms
theorem substitutionProof10827 : IsMapEvaluation generatorImages reduction10827.relations [0,8,969] reduction10827.output := by lin_cert using reduction10827.terms
def map_53_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10997 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10997 : InImage map_53_208 image10997 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10997 : Bundle := named_bundle% "RealMapCertificates/relations/basis10997.json"
theorem reductionProof10997 : EqualModuloRelations reduction10997.relations reduction10997.input reduction10997.output := by lin_cert using reduction10997.terms
theorem substitutionProof10997 : IsMapEvaluation generatorImages reduction10997.relations [0,8,17,636] reduction10997.output := by lin_cert using reduction10997.terms
def map_53_210 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image11334 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11334 : InImage map_53_210 image11334 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11334 : Bundle := named_bundle% "RealMapCertificates/relations/basis11334.json"
theorem reductionProof11334 : EqualModuloRelations reduction11334.relations reduction11334.input reduction11334.output := by lin_cert using reduction11334.terms
theorem substitutionProof11334 : IsMapEvaluation generatorImages reduction11334.relations [8,8,806] reduction11334.output := by lin_cert using reduction11334.terms
def image11335 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11335 : InImage map_53_210 image11335 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11335 : Bundle := named_bundle% "RealMapCertificates/relations/basis11335.json"
theorem reductionProof11335 : EqualModuloRelations reduction11335.relations reduction11335.input reduction11335.output := by lin_cert using reduction11335.terms
theorem substitutionProof11335 : IsMapEvaluation generatorImages reduction11335.relations [8,8,8,8,8,265] reduction11335.output := by lin_cert using reduction11335.terms
def map_53_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11544 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11544 : InImage map_53_211 image11544 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11544 : Bundle := named_bundle% "RealMapCertificates/relations/basis11544.json"
theorem reductionProof11544 : EqualModuloRelations reduction11544.relations reduction11544.input reduction11544.output := by lin_cert using reduction11544.terms
theorem substitutionProof11544 : IsMapEvaluation generatorImages reduction11544.relations [0,8,17,663] reduction11544.output := by lin_cert using reduction11544.terms
def map_53_212 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11677 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11677 : InImage map_53_212 image11677 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11677 : Bundle := named_bundle% "RealMapCertificates/relations/basis11677.json"
theorem reductionProof11677 : EqualModuloRelations reduction11677.relations reduction11677.input reduction11677.output := by lin_cert using reduction11677.terms
theorem substitutionProof11677 : IsMapEvaluation generatorImages reduction11677.relations [1398] reduction11677.output := by lin_cert using reduction11677.terms
def image11678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11678 : InImage map_53_212 image11678 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11678 : Bundle := named_bundle% "RealMapCertificates/relations/basis11678.json"
theorem reductionProof11678 : EqualModuloRelations reduction11678.relations reduction11678.input reduction11678.output := by lin_cert using reduction11678.terms
theorem substitutionProof11678 : IsMapEvaluation generatorImages reduction11678.relations [1397] reduction11678.output := by lin_cert using reduction11678.terms
def map_53_213 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11912 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11912 : InImage map_53_213 image11912 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11912 : Bundle := named_bundle% "RealMapCertificates/relations/basis11912.json"
theorem reductionProof11912 : EqualModuloRelations reduction11912.relations reduction11912.input reduction11912.output := by lin_cert using reduction11912.terms
theorem substitutionProof11912 : IsMapEvaluation generatorImages reduction11912.relations [8,8,8,636] reduction11912.output := by lin_cert using reduction11912.terms
def image11913 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation11913 : InImage map_53_213 image11913 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11913 : Bundle := named_bundle% "RealMapCertificates/relations/basis11913.json"
theorem reductionProof11913 : EqualModuloRelations reduction11913.relations reduction11913.input reduction11913.output := by lin_cert using reduction11913.terms
theorem substitutionProof11913 : IsMapEvaluation generatorImages reduction11913.relations [8,8,8,8,8,283] reduction11913.output := by lin_cert using reduction11913.terms
def map_53_215 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12282 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12282 : InImage map_53_215 image12282 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12282 : Bundle := named_bundle% "RealMapCertificates/relations/basis12282.json"
theorem reductionProof12282 : EqualModuloRelations reduction12282.relations reduction12282.input reduction12282.output := by lin_cert using reduction12282.terms
theorem substitutionProof12282 : IsMapEvaluation generatorImages reduction12282.relations [1470] reduction12282.output := by lin_cert using reduction12282.terms
def map_53_216 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12478 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12478 : InImage map_53_216 image12478 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12478 : Bundle := named_bundle% "RealMapCertificates/relations/basis12478.json"
theorem reductionProof12478 : EqualModuloRelations reduction12478.relations reduction12478.input reduction12478.output := by lin_cert using reduction12478.terms
theorem substitutionProof12478 : IsMapEvaluation generatorImages reduction12478.relations [8,8,8,663] reduction12478.output := by lin_cert using reduction12478.terms
def image12479 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12479 : InImage map_53_216 image12479 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12479 : Bundle := named_bundle% "RealMapCertificates/relations/basis12479.json"
theorem reductionProof12479 : EqualModuloRelations reduction12479.relations reduction12479.input reduction12479.output := by lin_cert using reduction12479.terms
theorem substitutionProof12479 : IsMapEvaluation generatorImages reduction12479.relations [8,8,8,8,8,8,211] reduction12479.output := by lin_cert using reduction12479.terms
def map_53_218 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12829 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12829 : InImage map_53_218 image12829 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12829 : Bundle := named_bundle% "RealMapCertificates/relations/basis12829.json"
theorem reductionProof12829 : EqualModuloRelations reduction12829.relations reduction12829.input reduction12829.output := by lin_cert using reduction12829.terms
theorem substitutionProof12829 : IsMapEvaluation generatorImages reduction12829.relations [8,1179] reduction12829.output := by lin_cert using reduction12829.terms
def image12830 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12830 : InImage map_53_218 image12830 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12830 : Bundle := named_bundle% "RealMapCertificates/relations/basis12830.json"
theorem reductionProof12830 : EqualModuloRelations reduction12830.relations reduction12830.input reduction12830.output := by lin_cert using reduction12830.terms
theorem substitutionProof12830 : IsMapEvaluation generatorImages reduction12830.relations [0,0,0,1471] reduction12830.output := by lin_cert using reduction12830.terms
def map_53_219 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13061 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13061 : InImage map_53_219 image13061 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13061 : Bundle := named_bundle% "RealMapCertificates/relations/basis13061.json"
theorem reductionProof13061 : EqualModuloRelations reduction13061.relations reduction13061.input reduction13061.output := by lin_cert using reduction13061.terms
theorem substitutionProof13061 : IsMapEvaluation generatorImages reduction13061.relations [8,8,8,16,403] reduction13061.output := by lin_cert using reduction13061.terms
def image13062 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13062 : InImage map_53_219 image13062 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13062 : Bundle := named_bundle% "RealMapCertificates/relations/basis13062.json"
theorem reductionProof13062 : EqualModuloRelations reduction13062.relations reduction13062.input reduction13062.output := by lin_cert using reduction13062.terms
theorem substitutionProof13062 : IsMapEvaluation generatorImages reduction13062.relations [8,8,8,8,8,8,223] reduction13062.output := by lin_cert using reduction13062.terms
def image13063 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13063 : InImage map_53_219 image13063 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13063 : Bundle := named_bundle% "RealMapCertificates/relations/basis13063.json"
theorem reductionProof13063 : EqualModuloRelations reduction13063.relations reduction13063.input reduction13063.output := by lin_cert using reduction13063.terms
theorem substitutionProof13063 : IsMapEvaluation generatorImages reduction13063.relations [0,0,1499] reduction13063.output := by lin_cert using reduction13063.terms
def map_53_221 : Matrix 5 2 := fun i j => ([true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13401 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13401 : InImage map_53_221 image13401 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13401 : Bundle := named_bundle% "RealMapCertificates/relations/basis13401.json"
theorem reductionProof13401 : EqualModuloRelations reduction13401.relations reduction13401.input reduction13401.output := by lin_cert using reduction13401.terms
theorem substitutionProof13401 : IsMapEvaluation generatorImages reduction13401.relations [8,1241] reduction13401.output := by lin_cert using reduction13401.terms
def image13402 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13402 : InImage map_53_221 image13402 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13402 : Bundle := named_bundle% "RealMapCertificates/relations/basis13402.json"
theorem reductionProof13402 : EqualModuloRelations reduction13402.relations reduction13402.input reduction13402.output := by lin_cert using reduction13402.terms
theorem substitutionProof13402 : IsMapEvaluation generatorImages reduction13402.relations [0,0,0,1514] reduction13402.output := by lin_cert using reduction13402.terms
def map_53_222 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image13609 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13609 : InImage map_53_222 image13609 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13609 : Bundle := named_bundle% "RealMapCertificates/relations/basis13609.json"
theorem reductionProof13609 : EqualModuloRelations reduction13609.relations reduction13609.input reduction13609.output := by lin_cert using reduction13609.terms
theorem substitutionProof13609 : IsMapEvaluation generatorImages reduction13609.relations [8,8,8,8,556] reduction13609.output := by lin_cert using reduction13609.terms
def image13610 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13610 : InImage map_53_222 image13610 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13610 : Bundle := named_bundle% "RealMapCertificates/relations/basis13610.json"
theorem reductionProof13610 : EqualModuloRelations reduction13610.relations reduction13610.input reduction13610.output := by lin_cert using reduction13610.terms
theorem substitutionProof13610 : IsMapEvaluation generatorImages reduction13610.relations [8,8,8,8,8,8,8,161] reduction13610.output := by lin_cert using reduction13610.terms
def map_53_223 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13813 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13813 : InImage map_53_223 image13813 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13813 : Bundle := named_bundle% "RealMapCertificates/relations/basis13813.json"
theorem reductionProof13813 : EqualModuloRelations reduction13813.relations reduction13813.input reduction13813.output := by lin_cert using reduction13813.terms
theorem substitutionProof13813 : IsMapEvaluation generatorImages reduction13813.relations [0,64,635] reduction13813.output := by lin_cert using reduction13813.terms
def map_53_224 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13947 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13947 : InImage map_53_224 image13947 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13947 : Bundle := named_bundle% "RealMapCertificates/relations/basis13947.json"
theorem reductionProof13947 : EqualModuloRelations reduction13947.relations reduction13947.input reduction13947.output := by lin_cert using reduction13947.terms
theorem substitutionProof13947 : IsMapEvaluation generatorImages reduction13947.relations [8,8,970] reduction13947.output := by lin_cert using reduction13947.terms
def image13948 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13948 : InImage map_53_224 image13948 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13948 : Bundle := named_bundle% "RealMapCertificates/relations/basis13948.json"
theorem reductionProof13948 : EqualModuloRelations reduction13948.relations reduction13948.input reduction13948.output := by lin_cert using reduction13948.terms
theorem substitutionProof13948 : IsMapEvaluation generatorImages reduction13948.relations [1,64,635] reduction13948.output := by lin_cert using reduction13948.terms
def image13949 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13949 : InImage map_53_224 image13949 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13949 : Bundle := named_bundle% "RealMapCertificates/relations/basis13949.json"
theorem reductionProof13949 : EqualModuloRelations reduction13949.relations reduction13949.input reduction13949.output := by lin_cert using reduction13949.terms
theorem substitutionProof13949 : IsMapEvaluation generatorImages reduction13949.relations [0,0,64,636] reduction13949.output := by lin_cert using reduction13949.terms
def map_53_225 : Matrix 4 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14180 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14180 : InImage map_53_225 image14180 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14180 : Bundle := named_bundle% "RealMapCertificates/relations/basis14180.json"
theorem reductionProof14180 : EqualModuloRelations reduction14180.relations reduction14180.input reduction14180.output := by lin_cert using reduction14180.terms
theorem substitutionProof14180 : IsMapEvaluation generatorImages reduction14180.relations [8,8,8,8,8,403] reduction14180.output := by lin_cert using reduction14180.terms
def image14181 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14181 : InImage map_53_225 image14181 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14181 : Bundle := named_bundle% "RealMapCertificates/relations/basis14181.json"
theorem reductionProof14181 : EqualModuloRelations reduction14181.relations reduction14181.input reduction14181.output := by lin_cert using reduction14181.terms
theorem substitutionProof14181 : IsMapEvaluation generatorImages reduction14181.relations [8,8,8,8,8,8,8,171] reduction14181.output := by lin_cert using reduction14181.terms
def image14182 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation14182 : InImage map_53_225 image14182 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14182 : Bundle := named_bundle% "RealMapCertificates/relations/basis14182.json"
theorem reductionProof14182 : EqualModuloRelations reduction14182.relations reduction14182.input reduction14182.output := by lin_cert using reduction14182.terms
theorem substitutionProof14182 : IsMapEvaluation generatorImages reduction14182.relations [0,0,0,0,17,1033] reduction14182.output := by lin_cert using reduction14182.terms
def map_53_226 : Matrix 0 3 := fun i j => ([] : List Bool)[i.val*3+j.val]!
def image14367 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14367 : InImage map_53_226 image14367 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14367 : Bundle := named_bundle% "RealMapCertificates/relations/basis14367.json"
theorem reductionProof14367 : EqualModuloRelations reduction14367.relations reduction14367.input reduction14367.output := by lin_cert using reduction14367.terms
theorem substitutionProof14367 : IsMapEvaluation generatorImages reduction14367.relations [0,64,662] reduction14367.output := by lin_cert using reduction14367.terms
def image14368 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14368 : InImage map_53_226 image14368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14368 : Bundle := named_bundle% "RealMapCertificates/relations/basis14368.json"
theorem reductionProof14368 : EqualModuloRelations reduction14368.relations reduction14368.input reduction14368.output := by lin_cert using reduction14368.terms
theorem substitutionProof14368 : IsMapEvaluation generatorImages reduction14368.relations [0,0,0,0,1591] reduction14368.output := by lin_cert using reduction14368.terms
def image14369 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14369 : InImage map_53_226 image14369 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14369 : Bundle := named_bundle% "RealMapCertificates/relations/basis14369.json"
theorem reductionProof14369 : EqualModuloRelations reduction14369.relations reduction14369.input reduction14369.output := by lin_cert using reduction14369.terms
theorem substitutionProof14369 : IsMapEvaluation generatorImages reduction14369.relations [0,0,0,0,1589] reduction14369.output := by lin_cert using reduction14369.terms
end RealMapCertificates
