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
  | 185 => [[0,4,4,8,12]]
  | 224 => []
  | 225 => [[0,4,4,4,6,12]]
  | 238 => [[0,4,4,4,8,12]]
  | 244 => [[4,4,4,9,12]]
  | 246 => []
  | 247 => [[4,5,5,7,12]]
  | 257 => [[4,4,6,8,12]]
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
  | 572 => [[4,4,4,4,5,5,7,12]]
  | 597 => [[4,4,4,4,5,7,7,12]]
  | 606 => []
  | 622 => [[1,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 623 => []
  | 637 => [[0,0,4,4,8,12,12]]
  | 641 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 687 => [[4,4,4,4,4,5,5,7,12]]
  | 724 => [[4,4,4,4,4,5,7,7,12]]
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 829 => [[4,4,4,4,4,4,5,5,7,12]]
  | 873 => [[4,4,4,4,4,4,5,7,7,12]]
  | 896 => []
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 955 => [[0,0,4,4,4,5,8,12,12]]
  | 1032 => [[4,4,4,4,4,4,4,5,7,7,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1144 => [[0,0,4,4,4,4,5,8,12,12]]
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1363 => [[0,0,4,4,4,4,4,5,8,12,12]]
  | 1566 => []
  | 1590 => [[0,0,4,4,4,4,4,4,5,8,12,12]]
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1771 => [[4,4,4,4,4,5,5,10,12,12]]
  | 1830 => [[0,0,4,4,4,4,4,4,4,5,8,12,12]]
  | 1890 => []
  | 1925 => [[4,4,4,4,4,4,7,7,7,12,12]]
  | 2037 => [[4,4,4,4,4,5,5,5,9,12,12]]
  | 2330 => []
  | 2331 => [[4,4,4,4,4,4,4,7,7,7,12,12]]
  | 2436 => [[4,4,4,4,4,4,5,5,5,9,12,12]]
  | 2537 => []
  | _ => []
def map_53_227 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14522 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14522 : InImage map_53_227 image14522 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14522 : Bundle := named_bundle% "RealMapCertificates/relations/basis14522.json"
theorem reductionProof14522 : EqualModuloRelations reduction14522.relations reduction14522.input reduction14522.output := by lin_cert using reduction14522.terms
theorem substitutionProof14522 : IsMapEvaluation generatorImages reduction14522.relations [8,8,1032] reduction14522.output := by lin_cert using reduction14522.terms
def image14523 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14523 : InImage map_53_227 image14523 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14523 : Bundle := named_bundle% "RealMapCertificates/relations/basis14523.json"
theorem reductionProof14523 : EqualModuloRelations reduction14523.relations reduction14523.input reduction14523.output := by lin_cert using reduction14523.terms
theorem substitutionProof14523 : IsMapEvaluation generatorImages reduction14523.relations [0,0,64,663] reduction14523.output := by lin_cert using reduction14523.terms
def image14524 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14524 : InImage map_53_227 image14524 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14524 : Bundle := named_bundle% "RealMapCertificates/relations/basis14524.json"
theorem reductionProof14524 : EqualModuloRelations reduction14524.relations reduction14524.input reduction14524.output := by lin_cert using reduction14524.terms
theorem substitutionProof14524 : IsMapEvaluation generatorImages reduction14524.relations [0,0,0,0,0,0,1566] reduction14524.output := by lin_cert using reduction14524.terms
def map_53_228 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image14746 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14746 : InImage map_53_228 image14746 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14746 : Bundle := named_bundle% "RealMapCertificates/relations/basis14746.json"
theorem reductionProof14746 : EqualModuloRelations reduction14746.relations reduction14746.input reduction14746.output := by lin_cert using reduction14746.terms
theorem substitutionProof14746 : IsMapEvaluation generatorImages reduction14746.relations [8,8,8,8,8,433] reduction14746.output := by lin_cert using reduction14746.terms
def image14747 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14747 : InImage map_53_228 image14747 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14747 : Bundle := named_bundle% "RealMapCertificates/relations/basis14747.json"
theorem reductionProof14747 : EqualModuloRelations reduction14747.relations reduction14747.input reduction14747.output := by lin_cert using reduction14747.terms
theorem substitutionProof14747 : IsMapEvaluation generatorImages reduction14747.relations [8,8,8,8,8,8,8,8,125] reduction14747.output := by lin_cert using reduction14747.terms
def map_53_229 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image14964 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14964 : InImage map_53_229 image14964 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14964 : Bundle := named_bundle% "RealMapCertificates/relations/basis14964.json"
theorem reductionProof14964 : EqualModuloRelations reduction14964.relations reduction14964.input reduction14964.output := by lin_cert using reduction14964.terms
theorem substitutionProof14964 : IsMapEvaluation generatorImages reduction14964.relations [0,16,64,402] reduction14964.output := by lin_cert using reduction14964.terms
def map_53_230 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15112 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15112 : InImage map_53_230 image15112 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15112 : Bundle := named_bundle% "RealMapCertificates/relations/basis15112.json"
theorem reductionProof15112 : EqualModuloRelations reduction15112.relations reduction15112.input reduction15112.output := by lin_cert using reduction15112.terms
theorem substitutionProof15112 : IsMapEvaluation generatorImages reduction15112.relations [8,8,8,829] reduction15112.output := by lin_cert using reduction15112.terms
def image15113 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15113 : InImage map_53_230 image15113 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15113 : Bundle := named_bundle% "RealMapCertificates/relations/basis15113.json"
theorem reductionProof15113 : EqualModuloRelations reduction15113.relations reduction15113.input reduction15113.output := by lin_cert using reduction15113.terms
theorem substitutionProof15113 : IsMapEvaluation generatorImages reduction15113.relations [0,0,16,64,403] reduction15113.output := by lin_cert using reduction15113.terms
def image15114 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15114 : InImage map_53_230 image15114 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15114 : Bundle := named_bundle% "RealMapCertificates/relations/basis15114.json"
theorem reductionProof15114 : EqualModuloRelations reduction15114.relations reduction15114.input reduction15114.output := by lin_cert using reduction15114.terms
theorem substitutionProof15114 : IsMapEvaluation generatorImages reduction15114.relations [0,0,0,64,685] reduction15114.output := by lin_cert using reduction15114.terms
def map_53_231 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15366 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15366 : InImage map_53_231 image15366 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15366 : Bundle := named_bundle% "RealMapCertificates/relations/basis15366.json"
theorem reductionProof15366 : EqualModuloRelations reduction15366.relations reduction15366.input reduction15366.output := by lin_cert using reduction15366.terms
theorem substitutionProof15366 : IsMapEvaluation generatorImages reduction15366.relations [8,8,8,8,8,16,225] reduction15366.output := by lin_cert using reduction15366.terms
def image15367 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15367 : InImage map_53_231 image15367 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15367 : Bundle := named_bundle% "RealMapCertificates/relations/basis15367.json"
theorem reductionProof15367 : EqualModuloRelations reduction15367.relations reduction15367.input reduction15367.output := by lin_cert using reduction15367.terms
theorem substitutionProof15367 : IsMapEvaluation generatorImages reduction15367.relations [8,8,8,8,8,8,8,8,136] reduction15367.output := by lin_cert using reduction15367.terms
def image15368 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15368 : InImage map_53_231 image15368 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15368 : Bundle := named_bundle% "RealMapCertificates/relations/basis15368.json"
theorem reductionProof15368 : EqualModuloRelations reduction15368.relations reduction15368.input reduction15368.output := by lin_cert using reduction15368.terms
theorem substitutionProof15368 : IsMapEvaluation generatorImages reduction15368.relations [0,0,0,0,138,452] reduction15368.output := by lin_cert using reduction15368.terms
def map_53_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15583 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15583 : InImage map_53_232 image15583 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15583 : Bundle := named_bundle% "RealMapCertificates/relations/basis15583.json"
theorem reductionProof15583 : EqualModuloRelations reduction15583.relations reduction15583.input reduction15583.output := by lin_cert using reduction15583.terms
theorem substitutionProof15583 : IsMapEvaluation generatorImages reduction15583.relations [0,0,0,0,0,17,17,725] reduction15583.output := by lin_cert using reduction15583.terms
def map_53_233 : Matrix 5 3 := fun i j => ([true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15767 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15767 : InImage map_53_233 image15767 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15767 : Bundle := named_bundle% "RealMapCertificates/relations/basis15767.json"
theorem reductionProof15767 : EqualModuloRelations reduction15767.relations reduction15767.input reduction15767.output := by lin_cert using reduction15767.terms
theorem substitutionProof15767 : IsMapEvaluation generatorImages reduction15767.relations [8,8,8,873] reduction15767.output := by lin_cert using reduction15767.terms
def image15768 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15768 : InImage map_53_233 image15768 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15768 : Bundle := named_bundle% "RealMapCertificates/relations/basis15768.json"
theorem reductionProof15768 : EqualModuloRelations reduction15768.relations reduction15768.input reduction15768.output := by lin_cert using reduction15768.terms
theorem substitutionProof15768 : IsMapEvaluation generatorImages reduction15768.relations [0,0,0,0,0,0,224,246] reduction15768.output := by lin_cert using reduction15768.terms
def image15769 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15769 : InImage map_53_233 image15769 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15769 : Bundle := named_bundle% "RealMapCertificates/relations/basis15769.json"
theorem reductionProof15769 : EqualModuloRelations reduction15769.relations reduction15769.input reduction15769.output := by lin_cert using reduction15769.terms
theorem substitutionProof15769 : IsMapEvaluation generatorImages reduction15769.relations [0,0,0,0,0,0,59,725] reduction15769.output := by lin_cert using reduction15769.terms
def map_53_234 : Matrix 2 3 := fun i j => ([false,false,true,true,false,false] : List Bool)[i.val*3+j.val]!
def image16010 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation16010 : InImage map_53_234 image16010 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16010 : Bundle := named_bundle% "RealMapCertificates/relations/basis16010.json"
theorem reductionProof16010 : EqualModuloRelations reduction16010.relations reduction16010.input reduction16010.output := by lin_cert using reduction16010.terms
theorem substitutionProof16010 : IsMapEvaluation generatorImages reduction16010.relations [1830] reduction16010.output := by lin_cert using reduction16010.terms
def image16011 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation16011 : InImage map_53_234 image16011 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16011 : Bundle := named_bundle% "RealMapCertificates/relations/basis16011.json"
theorem reductionProof16011 : EqualModuloRelations reduction16011.relations reduction16011.input reduction16011.output := by lin_cert using reduction16011.terms
theorem substitutionProof16011 : IsMapEvaluation generatorImages reduction16011.relations [8,8,8,8,8,8,298] reduction16011.output := by lin_cert using reduction16011.terms
def image16012 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation16012 : InImage map_53_234 image16012 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16012 : Bundle := named_bundle% "RealMapCertificates/relations/basis16012.json"
theorem reductionProof16012 : EqualModuloRelations reduction16012.relations reduction16012.input reduction16012.output := by lin_cert using reduction16012.terms
theorem substitutionProof16012 : IsMapEvaluation generatorImages reduction16012.relations [8,8,8,8,8,8,8,8,8,88] reduction16012.output := by lin_cert using reduction16012.terms
def map_53_236 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image16429 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16429 : InImage map_53_236 image16429 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16429 : Bundle := named_bundle% "RealMapCertificates/relations/basis16429.json"
theorem reductionProof16429 : EqualModuloRelations reduction16429.relations reduction16429.input reduction16429.output := by lin_cert using reduction16429.terms
theorem substitutionProof16429 : IsMapEvaluation generatorImages reduction16429.relations [17,1301] reduction16429.output := by lin_cert using reduction16429.terms
def image16430 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16430 : InImage map_53_236 image16430 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16430 : Bundle := named_bundle% "RealMapCertificates/relations/basis16430.json"
theorem reductionProof16430 : EqualModuloRelations reduction16430.relations reduction16430.input reduction16430.output := by lin_cert using reduction16430.terms
theorem substitutionProof16430 : IsMapEvaluation generatorImages reduction16430.relations [8,8,8,8,687] reduction16430.output := by lin_cert using reduction16430.terms
def map_53_237 : Matrix 4 5 := fun i j => ([false,false,true,false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image16683 : Vec 4 := fun i => ([false,true,false,false] : List Bool)[i.val]!
theorem evaluation16683 : InImage map_53_237 image16683 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction16683 : Bundle := named_bundle% "RealMapCertificates/relations/basis16683.json"
theorem reductionProof16683 : EqualModuloRelations reduction16683.relations reduction16683.input reduction16683.output := by lin_cert using reduction16683.terms
theorem substitutionProof16683 : IsMapEvaluation generatorImages reduction16683.relations [17,1314] reduction16683.output := by lin_cert using reduction16683.terms
def image16684 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16684 : InImage map_53_237 image16684 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction16684 : Bundle := named_bundle% "RealMapCertificates/relations/basis16684.json"
theorem reductionProof16684 : EqualModuloRelations reduction16684.relations reduction16684.input reduction16684.output := by lin_cert using reduction16684.terms
theorem substitutionProof16684 : IsMapEvaluation generatorImages reduction16684.relations [8,8,8,8,8,8,8,225] reduction16684.output := by lin_cert using reduction16684.terms
def image16685 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation16685 : InImage map_53_237 image16685 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction16685 : Bundle := named_bundle% "RealMapCertificates/relations/basis16685.json"
theorem reductionProof16685 : EqualModuloRelations reduction16685.relations reduction16685.input reduction16685.output := by lin_cert using reduction16685.terms
theorem substitutionProof16685 : IsMapEvaluation generatorImages reduction16685.relations [8,8,8,8,8,8,8,8,8,100] reduction16685.output := by lin_cert using reduction16685.terms
def image16686 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16686 : InImage map_53_237 image16686 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction16686 : Bundle := named_bundle% "RealMapCertificates/relations/basis16686.json"
theorem reductionProof16686 : EqualModuloRelations reduction16686.relations reduction16686.input reduction16686.output := by lin_cert using reduction16686.terms
theorem substitutionProof16686 : IsMapEvaluation generatorImages reduction16686.relations [0,1890] reduction16686.output := by lin_cert using reduction16686.terms
def image16687 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16687 : InImage map_53_237 image16687 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction16687 : Bundle := named_bundle% "RealMapCertificates/relations/basis16687.json"
theorem reductionProof16687 : EqualModuloRelations reduction16687.relations reduction16687.input reduction16687.output := by lin_cert using reduction16687.terms
theorem substitutionProof16687 : IsMapEvaluation generatorImages reduction16687.relations [0,0,0,0,0,149,452] reduction16687.output := by lin_cert using reduction16687.terms
def map_53_238 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image16910 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16910 : InImage map_53_238 image16910 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16910 : Bundle := named_bundle% "RealMapCertificates/relations/basis16910.json"
theorem reductionProof16910 : EqualModuloRelations reduction16910.relations reduction16910.input reduction16910.output := by lin_cert using reduction16910.terms
theorem substitutionProof16910 : IsMapEvaluation generatorImages reduction16910.relations [0,0,0,0,0,0,1771] reduction16910.output := by lin_cert using reduction16910.terms
def map_53_239 : Matrix 2 2 := fun i j => ([false,true,false,false] : List Bool)[i.val*2+j.val]!
def image17119 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17119 : InImage map_53_239 image17119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17119 : Bundle := named_bundle% "RealMapCertificates/relations/basis17119.json"
theorem reductionProof17119 : EqualModuloRelations reduction17119.relations reduction17119.input reduction17119.output := by lin_cert using reduction17119.terms
theorem substitutionProof17119 : IsMapEvaluation generatorImages reduction17119.relations [8,17,1033] reduction17119.output := by lin_cert using reduction17119.terms
def image17120 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17120 : InImage map_53_239 image17120 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17120 : Bundle := named_bundle% "RealMapCertificates/relations/basis17120.json"
theorem reductionProof17120 : EqualModuloRelations reduction17120.relations reduction17120.input reduction17120.output := by lin_cert using reduction17120.terms
theorem substitutionProof17120 : IsMapEvaluation generatorImages reduction17120.relations [8,8,8,8,724] reduction17120.output := by lin_cert using reduction17120.terms
def map_53_240 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image17384 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17384 : InImage map_53_240 image17384 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction17384 : Bundle := named_bundle% "RealMapCertificates/relations/basis17384.json"
theorem reductionProof17384 : EqualModuloRelations reduction17384.relations reduction17384.input reduction17384.output := by lin_cert using reduction17384.terms
theorem substitutionProof17384 : IsMapEvaluation generatorImages reduction17384.relations [8,1590] reduction17384.output := by lin_cert using reduction17384.terms
def image17385 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17385 : InImage map_53_240 image17385 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction17385 : Bundle := named_bundle% "RealMapCertificates/relations/basis17385.json"
theorem reductionProof17385 : EqualModuloRelations reduction17385.relations reduction17385.input reduction17385.output := by lin_cert using reduction17385.terms
theorem substitutionProof17385 : IsMapEvaluation generatorImages reduction17385.relations [8,8,8,8,8,8,8,238] reduction17385.output := by lin_cert using reduction17385.terms
def image17386 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17386 : InImage map_53_240 image17386 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction17386 : Bundle := named_bundle% "RealMapCertificates/relations/basis17386.json"
theorem reductionProof17386 : EqualModuloRelations reduction17386.relations reduction17386.input reduction17386.output := by lin_cert using reduction17386.terms
theorem substitutionProof17386 : IsMapEvaluation generatorImages reduction17386.relations [8,8,8,8,8,8,8,8,8,8,60] reduction17386.output := by lin_cert using reduction17386.terms
def map_53_241 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image17672 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation17672 : InImage map_53_241 image17672 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17672 : Bundle := named_bundle% "RealMapCertificates/relations/basis17672.json"
theorem reductionProof17672 : EqualModuloRelations reduction17672.relations reduction17672.input reduction17672.output := by lin_cert using reduction17672.terms
theorem substitutionProof17672 : IsMapEvaluation generatorImages reduction17672.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction17672.output := by lin_cert using reduction17672.terms
def map_53_242 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17882 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17882 : InImage map_53_242 image17882 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17882 : Bundle := named_bundle% "RealMapCertificates/relations/basis17882.json"
theorem reductionProof17882 : EqualModuloRelations reduction17882.relations reduction17882.input reduction17882.output := by lin_cert using reduction17882.terms
theorem substitutionProof17882 : IsMapEvaluation generatorImages reduction17882.relations [113,685] reduction17882.output := by lin_cert using reduction17882.terms
def image17883 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17883 : InImage map_53_242 image17883 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17883 : Bundle := named_bundle% "RealMapCertificates/relations/basis17883.json"
theorem reductionProof17883 : EqualModuloRelations reduction17883.relations reduction17883.input reduction17883.output := by lin_cert using reduction17883.terms
theorem substitutionProof17883 : IsMapEvaluation generatorImages reduction17883.relations [8,17,1076] reduction17883.output := by lin_cert using reduction17883.terms
def image17884 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17884 : InImage map_53_242 image17884 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17884 : Bundle := named_bundle% "RealMapCertificates/relations/basis17884.json"
theorem reductionProof17884 : EqualModuloRelations reduction17884.relations reduction17884.input reduction17884.output := by lin_cert using reduction17884.terms
theorem substitutionProof17884 : IsMapEvaluation generatorImages reduction17884.relations [8,8,8,8,8,572] reduction17884.output := by lin_cert using reduction17884.terms
def image17885 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17885 : InImage map_53_242 image17885 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17885 : Bundle := named_bundle% "RealMapCertificates/relations/basis17885.json"
theorem reductionProof17885 : EqualModuloRelations reduction17885.relations reduction17885.input reduction17885.output := by lin_cert using reduction17885.terms
theorem substitutionProof17885 : IsMapEvaluation generatorImages reduction17885.relations [0,0,0,0,0,0,0,0,0,0,0,0,1735] reduction17885.output := by lin_cert using reduction17885.terms
def map_53_243 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image18169 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18169 : InImage map_53_243 image18169 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18169 : Bundle := named_bundle% "RealMapCertificates/relations/basis18169.json"
theorem reductionProof18169 : EqualModuloRelations reduction18169.relations reduction18169.input reduction18169.output := by lin_cert using reduction18169.terms
theorem substitutionProof18169 : IsMapEvaluation generatorImages reduction18169.relations [8,17,1093] reduction18169.output := by lin_cert using reduction18169.terms
def image18170 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18170 : InImage map_53_243 image18170 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18170 : Bundle := named_bundle% "RealMapCertificates/relations/basis18170.json"
theorem reductionProof18170 : EqualModuloRelations reduction18170.relations reduction18170.input reduction18170.output := by lin_cert using reduction18170.terms
theorem substitutionProof18170 : IsMapEvaluation generatorImages reduction18170.relations [8,8,8,8,8,8,8,16,138] reduction18170.output := by lin_cert using reduction18170.terms
def image18171 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18171 : InImage map_53_243 image18171 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18171 : Bundle := named_bundle% "RealMapCertificates/relations/basis18171.json"
theorem reductionProof18171 : EqualModuloRelations reduction18171.relations reduction18171.input reduction18171.output := by lin_cert using reduction18171.terms
theorem substitutionProof18171 : IsMapEvaluation generatorImages reduction18171.relations [8,8,8,8,8,8,8,8,8,8,63] reduction18171.output := by lin_cert using reduction18171.terms
def image18172 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18172 : InImage map_53_243 image18172 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18172 : Bundle := named_bundle% "RealMapCertificates/relations/basis18172.json"
theorem reductionProof18172 : EqualModuloRelations reduction18172.relations reduction18172.input reduction18172.output := by lin_cert using reduction18172.terms
theorem substitutionProof18172 : IsMapEvaluation generatorImages reduction18172.relations [0,17,17,896] reduction18172.output := by lin_cert using reduction18172.terms
def image18173 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18173 : InImage map_53_243 image18173 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18173 : Bundle := named_bundle% "RealMapCertificates/relations/basis18173.json"
theorem reductionProof18173 : EqualModuloRelations reduction18173.relations reduction18173.input reduction18173.output := by lin_cert using reduction18173.terms
theorem substitutionProof18173 : IsMapEvaluation generatorImages reduction18173.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction18173.output := by lin_cert using reduction18173.terms
def map_53_244 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image18408 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18408 : InImage map_53_244 image18408 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18408 : Bundle := named_bundle% "RealMapCertificates/relations/basis18408.json"
theorem reductionProof18408 : EqualModuloRelations reduction18408.relations reduction18408.input reduction18408.output := by lin_cert using reduction18408.terms
theorem substitutionProof18408 : IsMapEvaluation generatorImages reduction18408.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction18408.output := by lin_cert using reduction18408.terms
def map_53_245 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image18630 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18630 : InImage map_53_245 image18630 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18630 : Bundle := named_bundle% "RealMapCertificates/relations/basis18630.json"
theorem reductionProof18630 : EqualModuloRelations reduction18630.relations reduction18630.input reduction18630.output := by lin_cert using reduction18630.terms
theorem substitutionProof18630 : IsMapEvaluation generatorImages reduction18630.relations [8,138,452] reduction18630.output := by lin_cert using reduction18630.terms
def image18631 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18631 : InImage map_53_245 image18631 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18631 : Bundle := named_bundle% "RealMapCertificates/relations/basis18631.json"
theorem reductionProof18631 : EqualModuloRelations reduction18631.relations reduction18631.input reduction18631.output := by lin_cert using reduction18631.terms
theorem substitutionProof18631 : IsMapEvaluation generatorImages reduction18631.relations [8,16,17,725] reduction18631.output := by lin_cert using reduction18631.terms
def image18632 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation18632 : InImage map_53_245 image18632 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18632 : Bundle := named_bundle% "RealMapCertificates/relations/basis18632.json"
theorem reductionProof18632 : EqualModuloRelations reduction18632.relations reduction18632.input reduction18632.output := by lin_cert using reduction18632.terms
theorem substitutionProof18632 : IsMapEvaluation generatorImages reduction18632.relations [8,8,8,8,8,597] reduction18632.output := by lin_cert using reduction18632.terms
def map_53_246 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image18918 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18918 : InImage map_53_246 image18918 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18918 : Bundle := named_bundle% "RealMapCertificates/relations/basis18918.json"
theorem reductionProof18918 : EqualModuloRelations reduction18918.relations reduction18918.input reduction18918.output := by lin_cert using reduction18918.terms
theorem substitutionProof18918 : IsMapEvaluation generatorImages reduction18918.relations [8,8,1363] reduction18918.output := by lin_cert using reduction18918.terms
def image18919 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18919 : InImage map_53_246 image18919 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18919 : Bundle := named_bundle% "RealMapCertificates/relations/basis18919.json"
theorem reductionProof18919 : EqualModuloRelations reduction18919.relations reduction18919.input reduction18919.output := by lin_cert using reduction18919.terms
theorem substitutionProof18919 : IsMapEvaluation generatorImages reduction18919.relations [8,8,8,8,8,8,8,8,185] reduction18919.output := by lin_cert using reduction18919.terms
def image18920 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18920 : InImage map_53_246 image18920 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18920 : Bundle := named_bundle% "RealMapCertificates/relations/basis18920.json"
theorem reductionProof18920 : EqualModuloRelations reduction18920.relations reduction18920.input reduction18920.output := by lin_cert using reduction18920.terms
theorem substitutionProof18920 : IsMapEvaluation generatorImages reduction18920.relations [8,8,8,8,8,8,8,8,8,8,8,42] reduction18920.output := by lin_cert using reduction18920.terms
def image18921 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18921 : InImage map_53_246 image18921 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18921 : Bundle := named_bundle% "RealMapCertificates/relations/basis18921.json"
theorem reductionProof18921 : EqualModuloRelations reduction18921.relations reduction18921.input reduction18921.output := by lin_cert using reduction18921.terms
theorem substitutionProof18921 : IsMapEvaluation generatorImages reduction18921.relations [5,149,452] reduction18921.output := by lin_cert using reduction18921.terms
def map_53_248 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image19429 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19429 : InImage map_53_248 image19429 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19429 : Bundle := named_bundle% "RealMapCertificates/relations/basis19429.json"
theorem reductionProof19429 : EqualModuloRelations reduction19429.relations reduction19429.input reduction19429.output := by lin_cert using reduction19429.terms
theorem substitutionProof19429 : IsMapEvaluation generatorImages reduction19429.relations [8,138,488] reduction19429.output := by lin_cert using reduction19429.terms
def image19430 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19430 : InImage map_53_248 image19430 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19430 : Bundle := named_bundle% "RealMapCertificates/relations/basis19430.json"
theorem reductionProof19430 : EqualModuloRelations reduction19430.relations reduction19430.input reduction19430.output := by lin_cert using reduction19430.terms
theorem substitutionProof19430 : IsMapEvaluation generatorImages reduction19430.relations [8,8,17,896] reduction19430.output := by lin_cert using reduction19430.terms
def image19431 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19431 : InImage map_53_248 image19431 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19431 : Bundle := named_bundle% "RealMapCertificates/relations/basis19431.json"
theorem reductionProof19431 : EqualModuloRelations reduction19431.relations reduction19431.input reduction19431.output := by lin_cert using reduction19431.terms
theorem substitutionProof19431 : IsMapEvaluation generatorImages reduction19431.relations [8,8,8,8,8,8,453] reduction19431.output := by lin_cert using reduction19431.terms
def map_53_249 : Matrix 3 3 := fun i j => ([false,false,true,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image19735 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19735 : InImage map_53_249 image19735 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19735 : Bundle := named_bundle% "RealMapCertificates/relations/basis19735.json"
theorem reductionProof19735 : EqualModuloRelations reduction19735.relations reduction19735.input reduction19735.output := by lin_cert using reduction19735.terms
theorem substitutionProof19735 : IsMapEvaluation generatorImages reduction19735.relations [8,8,17,918] reduction19735.output := by lin_cert using reduction19735.terms
def image19736 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation19736 : InImage map_53_249 image19736 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19736 : Bundle := named_bundle% "RealMapCertificates/relations/basis19736.json"
theorem reductionProof19736 : EqualModuloRelations reduction19736.relations reduction19736.input reduction19736.output := by lin_cert using reduction19736.terms
theorem substitutionProof19736 : IsMapEvaluation generatorImages reduction19736.relations [8,8,8,8,8,8,8,8,8,138] reduction19736.output := by lin_cert using reduction19736.terms
def image19737 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation19737 : InImage map_53_249 image19737 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19737 : Bundle := named_bundle% "RealMapCertificates/relations/basis19737.json"
theorem reductionProof19737 : EqualModuloRelations reduction19737.relations reduction19737.input reduction19737.output := by lin_cert using reduction19737.terms
theorem substitutionProof19737 : IsMapEvaluation generatorImages reduction19737.relations [8,8,8,8,8,8,8,8,8,8,8,46] reduction19737.output := by lin_cert using reduction19737.terms
def map_53_250 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image19987 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19987 : InImage map_53_250 image19987 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19987 : Bundle := named_bundle% "RealMapCertificates/relations/basis19987.json"
theorem reductionProof19987 : EqualModuloRelations reduction19987.relations reduction19987.input reduction19987.output := by lin_cert using reduction19987.terms
theorem substitutionProof19987 : IsMapEvaluation generatorImages reduction19987.relations [2331] reduction19987.output := by lin_cert using reduction19987.terms
def image19988 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19988 : InImage map_53_250 image19988 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19988 : Bundle := named_bundle% "RealMapCertificates/relations/basis19988.json"
theorem reductionProof19988 : EqualModuloRelations reduction19988.relations reduction19988.input reduction19988.output := by lin_cert using reduction19988.terms
theorem substitutionProof19988 : IsMapEvaluation generatorImages reduction19988.relations [2330] reduction19988.output := by lin_cert using reduction19988.terms
def map_53_251 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20239 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20239 : InImage map_53_251 image20239 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20239 : Bundle := named_bundle% "RealMapCertificates/relations/basis20239.json"
theorem reductionProof20239 : EqualModuloRelations reduction20239.relations reduction20239.input reduction20239.output := by lin_cert using reduction20239.terms
theorem substitutionProof20239 : IsMapEvaluation generatorImages reduction20239.relations [8,16,138,244] reduction20239.output := by lin_cert using reduction20239.terms
def image20240 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20240 : InImage map_53_251 image20240 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20240 : Bundle := named_bundle% "RealMapCertificates/relations/basis20240.json"
theorem reductionProof20240 : EqualModuloRelations reduction20240.relations reduction20240.input reduction20240.output := by lin_cert using reduction20240.terms
theorem substitutionProof20240 : IsMapEvaluation generatorImages reduction20240.relations [8,8,8,17,725] reduction20240.output := by lin_cert using reduction20240.terms
def image20241 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20241 : InImage map_53_251 image20241 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20241 : Bundle := named_bundle% "RealMapCertificates/relations/basis20241.json"
theorem reductionProof20241 : EqualModuloRelations reduction20241.relations reduction20241.input reduction20241.output := by lin_cert using reduction20241.terms
theorem substitutionProof20241 : IsMapEvaluation generatorImages reduction20241.relations [8,8,8,8,8,8,490] reduction20241.output := by lin_cert using reduction20241.terms
def map_53_252 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image20540 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20540 : InImage map_53_252 image20540 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction20540 : Bundle := named_bundle% "RealMapCertificates/relations/basis20540.json"
theorem reductionProof20540 : EqualModuloRelations reduction20540.relations reduction20540.input reduction20540.output := by lin_cert using reduction20540.terms
theorem substitutionProof20540 : IsMapEvaluation generatorImages reduction20540.relations [8,8,8,1144] reduction20540.output := by lin_cert using reduction20540.terms
def image20541 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20541 : InImage map_53_252 image20541 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction20541 : Bundle := named_bundle% "RealMapCertificates/relations/basis20541.json"
theorem reductionProof20541 : EqualModuloRelations reduction20541.relations reduction20541.input reduction20541.output := by lin_cert using reduction20541.terms
theorem substitutionProof20541 : IsMapEvaluation generatorImages reduction20541.relations [8,8,8,8,8,8,8,8,8,147] reduction20541.output := by lin_cert using reduction20541.terms
def image20542 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20542 : InImage map_53_252 image20542 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction20542 : Bundle := named_bundle% "RealMapCertificates/relations/basis20542.json"
theorem reductionProof20542 : EqualModuloRelations reduction20542.relations reduction20542.input reduction20542.output := by lin_cert using reduction20542.terms
theorem substitutionProof20542 : IsMapEvaluation generatorImages reduction20542.relations [8,8,8,8,8,8,8,8,8,8,8,51] reduction20542.output := by lin_cert using reduction20542.terms
def map_53_253 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image20816 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation20816 : InImage map_53_253 image20816 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20816 : Bundle := named_bundle% "RealMapCertificates/relations/basis20816.json"
theorem reductionProof20816 : EqualModuloRelations reduction20816.relations reduction20816.input reduction20816.output := by lin_cert using reduction20816.terms
theorem substitutionProof20816 : IsMapEvaluation generatorImages reduction20816.relations [2436] reduction20816.output := by lin_cert using reduction20816.terms
def map_53_254 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image21066 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21066 : InImage map_53_254 image21066 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21066 : Bundle := named_bundle% "RealMapCertificates/relations/basis21066.json"
theorem reductionProof21066 : EqualModuloRelations reduction21066.relations reduction21066.input reduction21066.output := by lin_cert using reduction21066.terms
theorem substitutionProof21066 : IsMapEvaluation generatorImages reduction21066.relations [8,8,113,452] reduction21066.output := by lin_cert using reduction21066.terms
def image21067 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21067 : InImage map_53_254 image21067 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21067 : Bundle := named_bundle% "RealMapCertificates/relations/basis21067.json"
theorem reductionProof21067 : EqualModuloRelations reduction21067.relations reduction21067.input reduction21067.output := by lin_cert using reduction21067.terms
theorem substitutionProof21067 : IsMapEvaluation generatorImages reduction21067.relations [8,8,8,17,759] reduction21067.output := by lin_cert using reduction21067.terms
def image21068 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21068 : InImage map_53_254 image21068 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21068 : Bundle := named_bundle% "RealMapCertificates/relations/basis21068.json"
theorem reductionProof21068 : EqualModuloRelations reduction21068.relations reduction21068.input reduction21068.output := by lin_cert using reduction21068.terms
theorem substitutionProof21068 : IsMapEvaluation generatorImages reduction21068.relations [8,8,8,8,8,8,8,315] reduction21068.output := by lin_cert using reduction21068.terms
def map_53_255 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21414 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21414 : InImage map_53_255 image21414 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21414 : Bundle := named_bundle% "RealMapCertificates/relations/basis21414.json"
theorem reductionProof21414 : EqualModuloRelations reduction21414.relations reduction21414.input reduction21414.output := by lin_cert using reduction21414.terms
theorem substitutionProof21414 : IsMapEvaluation generatorImages reduction21414.relations [8,8,8,17,778] reduction21414.output := by lin_cert using reduction21414.terms
def image21415 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21415 : InImage map_53_255 image21415 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21415 : Bundle := named_bundle% "RealMapCertificates/relations/basis21415.json"
theorem reductionProof21415 : EqualModuloRelations reduction21415.relations reduction21415.input reduction21415.output := by lin_cert using reduction21415.terms
theorem substitutionProof21415 : IsMapEvaluation generatorImages reduction21415.relations [8,8,8,8,8,8,8,8,8,17,64] reduction21415.output := by lin_cert using reduction21415.terms
def image21416 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21416 : InImage map_53_255 image21416 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21416 : Bundle := named_bundle% "RealMapCertificates/relations/basis21416.json"
theorem reductionProof21416 : EqualModuloRelations reduction21416.relations reduction21416.input reduction21416.output := by lin_cert using reduction21416.terms
theorem substitutionProof21416 : IsMapEvaluation generatorImages reduction21416.relations [8,8,8,8,8,8,8,8,8,8,9,51] reduction21416.output := by lin_cert using reduction21416.terms
def image21417 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21417 : InImage map_53_255 image21417 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21417 : Bundle := named_bundle% "RealMapCertificates/relations/basis21417.json"
theorem reductionProof21417 : EqualModuloRelations reduction21417.relations reduction21417.input reduction21417.output := by lin_cert using reduction21417.terms
theorem substitutionProof21417 : IsMapEvaluation generatorImages reduction21417.relations [0,64,1033] reduction21417.output := by lin_cert using reduction21417.terms
def map_53_256 : Matrix 2 4 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image21703 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21703 : InImage map_53_256 image21703 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21703 : Bundle := named_bundle% "RealMapCertificates/relations/basis21703.json"
theorem reductionProof21703 : EqualModuloRelations reduction21703.relations reduction21703.input reduction21703.output := by lin_cert using reduction21703.terms
theorem substitutionProof21703 : IsMapEvaluation generatorImages reduction21703.relations [64,1059] reduction21703.output := by lin_cert using reduction21703.terms
def image21704 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21704 : InImage map_53_256 image21704 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21704 : Bundle := named_bundle% "RealMapCertificates/relations/basis21704.json"
theorem reductionProof21704 : EqualModuloRelations reduction21704.relations reduction21704.input reduction21704.output := by lin_cert using reduction21704.terms
theorem substitutionProof21704 : IsMapEvaluation generatorImages reduction21704.relations [8,1925] reduction21704.output := by lin_cert using reduction21704.terms
def image21705 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21705 : InImage map_53_256 image21705 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21705 : Bundle := named_bundle% "RealMapCertificates/relations/basis21705.json"
theorem reductionProof21705 : EqualModuloRelations reduction21705.relations reduction21705.input reduction21705.output := by lin_cert using reduction21705.terms
theorem substitutionProof21705 : IsMapEvaluation generatorImages reduction21705.relations [1,64,1033] reduction21705.output := by lin_cert using reduction21705.terms
def image21706 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21706 : InImage map_53_256 image21706 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21706 : Bundle := named_bundle% "RealMapCertificates/relations/basis21706.json"
theorem reductionProof21706 : EqualModuloRelations reduction21706.relations reduction21706.input reduction21706.output := by lin_cert using reduction21706.terms
theorem substitutionProof21706 : IsMapEvaluation generatorImages reduction21706.relations [0,0,138,725] reduction21706.output := by lin_cert using reduction21706.terms
def map_53_257 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image22015 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22015 : InImage map_53_257 image22015 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22015 : Bundle := named_bundle% "RealMapCertificates/relations/basis22015.json"
theorem reductionProof22015 : EqualModuloRelations reduction22015.relations reduction22015.input reduction22015.output := by lin_cert using reduction22015.terms
theorem substitutionProof22015 : IsMapEvaluation generatorImages reduction22015.relations [8,8,8,138,244] reduction22015.output := by lin_cert using reduction22015.terms
def image22016 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22016 : InImage map_53_257 image22016 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22016 : Bundle := named_bundle% "RealMapCertificates/relations/basis22016.json"
theorem reductionProof22016 : EqualModuloRelations reduction22016.relations reduction22016.input reduction22016.output := by lin_cert using reduction22016.terms
theorem substitutionProof22016 : IsMapEvaluation generatorImages reduction22016.relations [8,8,8,16,17,491] reduction22016.output := by lin_cert using reduction22016.terms
def image22017 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation22017 : InImage map_53_257 image22017 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22017 : Bundle := named_bundle% "RealMapCertificates/relations/basis22017.json"
theorem reductionProof22017 : EqualModuloRelations reduction22017.relations reduction22017.input reduction22017.output := by lin_cert using reduction22017.terms
theorem substitutionProof22017 : IsMapEvaluation generatorImages reduction22017.relations [8,8,8,8,8,8,8,345] reduction22017.output := by lin_cert using reduction22017.terms
def image22018 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22018 : InImage map_53_257 image22018 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22018 : Bundle := named_bundle% "RealMapCertificates/relations/basis22018.json"
theorem reductionProof22018 : EqualModuloRelations reduction22018.relations reduction22018.input reduction22018.output := by lin_cert using reduction22018.terms
theorem substitutionProof22018 : IsMapEvaluation generatorImages reduction22018.relations [0,0,2537] reduction22018.output := by lin_cert using reduction22018.terms
def map_53_258 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22372 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22372 : InImage map_53_258 image22372 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22372 : Bundle := named_bundle% "RealMapCertificates/relations/basis22372.json"
theorem reductionProof22372 : EqualModuloRelations reduction22372.relations reduction22372.input reduction22372.output := by lin_cert using reduction22372.terms
theorem substitutionProof22372 : IsMapEvaluation generatorImages reduction22372.relations [8,8,8,8,955] reduction22372.output := by lin_cert using reduction22372.terms
def image22373 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22373 : InImage map_53_258 image22373 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22373 : Bundle := named_bundle% "RealMapCertificates/relations/basis22373.json"
theorem reductionProof22373 : EqualModuloRelations reduction22373.relations reduction22373.input reduction22373.output := by lin_cert using reduction22373.terms
theorem substitutionProof22373 : IsMapEvaluation generatorImages reduction22373.relations [8,8,8,8,8,8,8,8,8,8,113] reduction22373.output := by lin_cert using reduction22373.terms
def image22374 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22374 : InImage map_53_258 image22374 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22374 : Bundle := named_bundle% "RealMapCertificates/relations/basis22374.json"
theorem reductionProof22374 : EqualModuloRelations reduction22374.relations reduction22374.input reduction22374.output := by lin_cert using reduction22374.terms
theorem substitutionProof22374 : IsMapEvaluation generatorImages reduction22374.relations [8,8,8,8,8,8,8,8,8,8,13,51] reduction22374.output := by lin_cert using reduction22374.terms
def image22375 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22375 : InImage map_53_258 image22375 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22375 : Bundle := named_bundle% "RealMapCertificates/relations/basis22375.json"
theorem reductionProof22375 : EqualModuloRelations reduction22375.relations reduction22375.input reduction22375.output := by lin_cert using reduction22375.terms
theorem substitutionProof22375 : IsMapEvaluation generatorImages reduction22375.relations [0,64,1076] reduction22375.output := by lin_cert using reduction22375.terms
def map_53_259 : Matrix 2 3 := fun i j => ([true,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image22709 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22709 : InImage map_53_259 image22709 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction22709 : Bundle := named_bundle% "RealMapCertificates/relations/basis22709.json"
theorem reductionProof22709 : EqualModuloRelations reduction22709.relations reduction22709.input reduction22709.output := by lin_cert using reduction22709.terms
theorem substitutionProof22709 : IsMapEvaluation generatorImages reduction22709.relations [8,2037] reduction22709.output := by lin_cert using reduction22709.terms
def image22710 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22710 : InImage map_53_259 image22710 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction22710 : Bundle := named_bundle% "RealMapCertificates/relations/basis22710.json"
theorem reductionProof22710 : EqualModuloRelations reduction22710.relations reduction22710.input reduction22710.output := by lin_cert using reduction22710.terms
theorem substitutionProof22710 : IsMapEvaluation generatorImages reduction22710.relations [0,64,1093] reduction22710.output := by lin_cert using reduction22710.terms
def image22711 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22711 : InImage map_53_259 image22711 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction22711 : Bundle := named_bundle% "RealMapCertificates/relations/basis22711.json"
theorem reductionProof22711 : EqualModuloRelations reduction22711.relations reduction22711.input reduction22711.output := by lin_cert using reduction22711.terms
theorem substitutionProof22711 : IsMapEvaluation generatorImages reduction22711.relations [0,0,138,759] reduction22711.output := by lin_cert using reduction22711.terms
def map_53_260 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image23044 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23044 : InImage map_53_260 image23044 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23044 : Bundle := named_bundle% "RealMapCertificates/relations/basis23044.json"
theorem reductionProof23044 : EqualModuloRelations reduction23044.relations reduction23044.input reduction23044.output := by lin_cert using reduction23044.terms
theorem substitutionProof23044 : IsMapEvaluation generatorImages reduction23044.relations [8,8,8,138,257] reduction23044.output := by lin_cert using reduction23044.terms
def image23045 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23045 : InImage map_53_260 image23045 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23045 : Bundle := named_bundle% "RealMapCertificates/relations/basis23045.json"
theorem reductionProof23045 : EqualModuloRelations reduction23045.relations reduction23045.input reduction23045.output := by lin_cert using reduction23045.terms
theorem substitutionProof23045 : IsMapEvaluation generatorImages reduction23045.relations [8,8,8,8,17,623] reduction23045.output := by lin_cert using reduction23045.terms
def image23046 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23046 : InImage map_53_260 image23046 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23046 : Bundle := named_bundle% "RealMapCertificates/relations/basis23046.json"
theorem reductionProof23046 : EqualModuloRelations reduction23046.relations reduction23046.input reduction23046.output := by lin_cert using reduction23046.terms
theorem substitutionProof23046 : IsMapEvaluation generatorImages reduction23046.relations [8,8,8,8,8,8,8,8,247] reduction23046.output := by lin_cert using reduction23046.terms
def map_53_261 : Matrix 3 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image23484 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23484 : InImage map_53_261 image23484 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction23484 : Bundle := named_bundle% "RealMapCertificates/relations/basis23484.json"
theorem reductionProof23484 : EqualModuloRelations reduction23484.relations reduction23484.input reduction23484.output := by lin_cert using reduction23484.terms
theorem substitutionProof23484 : IsMapEvaluation generatorImages reduction23484.relations [64,64,403] reduction23484.output := by lin_cert using reduction23484.terms
def image23485 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23485 : InImage map_53_261 image23485 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction23485 : Bundle := named_bundle% "RealMapCertificates/relations/basis23485.json"
theorem reductionProof23485 : EqualModuloRelations reduction23485.relations reduction23485.input reduction23485.output := by lin_cert using reduction23485.terms
theorem substitutionProof23485 : IsMapEvaluation generatorImages reduction23485.relations [8,8,8,8,17,637] reduction23485.output := by lin_cert using reduction23485.terms
def image23486 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation23486 : InImage map_53_261 image23486 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction23486 : Bundle := named_bundle% "RealMapCertificates/relations/basis23486.json"
theorem reductionProof23486 : EqualModuloRelations reduction23486.relations reduction23486.input reduction23486.output := by lin_cert using reduction23486.terms
theorem substitutionProof23486 : IsMapEvaluation generatorImages reduction23486.relations [8,8,8,8,8,8,8,8,8,9,13,51] reduction23486.output := by lin_cert using reduction23486.terms
def image23487 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23487 : InImage map_53_261 image23487 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction23487 : Bundle := named_bundle% "RealMapCertificates/relations/basis23487.json"
theorem reductionProof23487 : EqualModuloRelations reduction23487.relations reduction23487.input reduction23487.output := by lin_cert using reduction23487.terms
theorem substitutionProof23487 : IsMapEvaluation generatorImages reduction23487.relations [8,8,8,8,8,8,8,8,8,8,118] reduction23487.output := by lin_cert using reduction23487.terms
def image23488 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation23488 : InImage map_53_261 image23488 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction23488 : Bundle := named_bundle% "RealMapCertificates/relations/basis23488.json"
theorem reductionProof23488 : EqualModuloRelations reduction23488.relations reduction23488.input reduction23488.output := by lin_cert using reduction23488.terms
theorem substitutionProof23488 : IsMapEvaluation generatorImages reduction23488.relations [0,16,64,725] reduction23488.output := by lin_cert using reduction23488.terms
def map_54_54 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image289 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation289 : InImage map_54_54 image289 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction289 : Bundle := named_bundle% "RealMapCertificates/relations/basis289.json"
theorem reductionProof289 : EqualModuloRelations reduction289.relations reduction289.input reduction289.output := by lin_cert using reduction289.terms
theorem substitutionProof289 : IsMapEvaluation generatorImages reduction289.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction289.output := by lin_cert using reduction289.terms
def map_54_160 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4839 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4839 : InImage map_54_160 image4839 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4839 : Bundle := named_bundle% "RealMapCertificates/relations/basis4839.json"
theorem reductionProof4839 : EqualModuloRelations reduction4839.relations reduction4839.input reduction4839.output := by lin_cert using reduction4839.terms
theorem substitutionProof4839 : IsMapEvaluation generatorImages reduction4839.relations [1,622] reduction4839.output := by lin_cert using reduction4839.terms
def map_54_161 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image4919 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation4919 : InImage map_54_161 image4919 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction4919 : Bundle := named_bundle% "RealMapCertificates/relations/basis4919.json"
theorem reductionProof4919 : EqualModuloRelations reduction4919.relations reduction4919.input reduction4919.output := by lin_cert using reduction4919.terms
theorem substitutionProof4919 : IsMapEvaluation generatorImages reduction4919.relations [0,641] reduction4919.output := by lin_cert using reduction4919.terms
def map_54_164 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5207 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5207 : InImage map_54_164 image5207 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5207 : Bundle := named_bundle% "RealMapCertificates/relations/basis5207.json"
theorem reductionProof5207 : EqualModuloRelations reduction5207.relations reduction5207.input reduction5207.output := by lin_cert using reduction5207.terms
theorem substitutionProof5207 : IsMapEvaluation generatorImages reduction5207.relations [0,0,661] reduction5207.output := by lin_cert using reduction5207.terms
def map_54_165 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5309 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5309 : InImage map_54_165 image5309 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5309 : Bundle := named_bundle% "RealMapCertificates/relations/basis5309.json"
theorem reductionProof5309 : EqualModuloRelations reduction5309.relations reduction5309.input reduction5309.output := by lin_cert using reduction5309.terms
theorem substitutionProof5309 : IsMapEvaluation generatorImages reduction5309.relations [0,0,0,0,0,0,0,0,0,606] reduction5309.output := by lin_cert using reduction5309.terms
end RealMapCertificates
