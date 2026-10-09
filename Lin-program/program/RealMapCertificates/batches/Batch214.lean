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
  | 16 => [[4,6]]
  | 17 => [[4,7]]
  | 20 => [[5,6]]
  | 31 => [[4,4,6]]
  | 40 => [[4,5,6]]
  | 49 => [[4,4,4,6]]
  | 50 => [[4,4,4,7]]
  | 56 => [[4,4,5,6]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 224 => []
  | 237 => []
  | 245 => [[4,4,7,7,12]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 297 => []
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 402 => []
  | 403 => [[0,4,4,4,4,4,6,12]]
  | 431 => [[4,4,4,4,4,4,4,4,4,4,6]]
  | 432 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 553 => [[4,4,4,4,4,4,4,4,4,4,4,6]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 555 => []
  | 578 => [[4,4,4,4,4,4,4,4,4,4,4,8]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 661 => [[4,4,4,4,4,4,4,4,4,4,4,4,6]]
  | 662 => []
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 723 => [[4,4,4,4,4,5,5,8,12]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 872 => [[4,4,4,4,4,4,5,5,8,12]]
  | 886 => [[4,4,4,4,4,4,4,4,4,4,4,5,5,7]]
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1031 => [[4,4,4,4,4,4,4,5,5,8,12]]
  | 1033 => []
  | 1076 => []
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1240 => [[4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1301 => []
  | 1314 => [[0,0,4,4,4,4,4,4,8,12,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1469 => [[4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1471 => []
  | 1499 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1566 => []
  | 1589 => []
  | 1591 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1734 => []
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1749 => [[0,0,4,4,4,4,4,4,4,4,8,12,12]]
  | 1829 => [[0,0,4,4,4,4,4,4,4,4,9,12,12]]
  | 1830 => [[0,0,4,4,4,4,4,4,4,5,8,12,12]]
  | _ => []
def map_54_166 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5433 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation5433 : InImage map_54_166 image5433 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5433 : Bundle := named_bundle% "RealMapCertificates/relations/basis5433.json"
theorem reductionProof5433 : EqualModuloRelations reduction5433.relations reduction5433.input reduction5433.output := by lin_cert using reduction5433.terms
theorem substitutionProof5433 : IsMapEvaluation generatorImages reduction5433.relations [1,1,661] reduction5433.output := by lin_cert using reduction5433.terms
def map_54_167 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5533 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5533 : InImage map_54_167 image5533 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5533 : Bundle := named_bundle% "RealMapCertificates/relations/basis5533.json"
theorem reductionProof5533 : EqualModuloRelations reduction5533.relations reduction5533.input reduction5533.output := by lin_cert using reduction5533.terms
theorem substitutionProof5533 : IsMapEvaluation generatorImages reduction5533.relations [0,0,700] reduction5533.output := by lin_cert using reduction5533.terms
def map_54_170 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5858 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5858 : InImage map_54_170 image5858 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5858 : Bundle := named_bundle% "RealMapCertificates/relations/basis5858.json"
theorem reductionProof5858 : EqualModuloRelations reduction5858.relations reduction5858.input reduction5858.output := by lin_cert using reduction5858.terms
theorem substitutionProof5858 : IsMapEvaluation generatorImages reduction5858.relations [0,0,8,553] reduction5858.output := by lin_cert using reduction5858.terms
def map_54_173 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image6196 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation6196 : InImage map_54_173 image6196 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6196 : Bundle := named_bundle% "RealMapCertificates/relations/basis6196.json"
theorem reductionProof6196 : EqualModuloRelations reduction6196.relations reduction6196.input reduction6196.output := by lin_cert using reduction6196.terms
theorem substitutionProof6196 : IsMapEvaluation generatorImages reduction6196.relations [0,0,8,578] reduction6196.output := by lin_cert using reduction6196.terms
def map_54_176 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image6532 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation6532 : InImage map_54_176 image6532 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6532 : Bundle := named_bundle% "RealMapCertificates/relations/basis6532.json"
theorem reductionProof6532 : EqualModuloRelations reduction6532.relations reduction6532.input reduction6532.output := by lin_cert using reduction6532.terms
theorem substitutionProof6532 : IsMapEvaluation generatorImages reduction6532.relations [0,0,8,8,431] reduction6532.output := by lin_cert using reduction6532.terms
def map_54_180 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7008 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7008 : InImage map_54_180 image7008 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7008 : Bundle := named_bundle% "RealMapCertificates/relations/basis7008.json"
theorem reductionProof7008 : EqualModuloRelations reduction7008.relations reduction7008.input reduction7008.output := by lin_cert using reduction7008.terms
theorem substitutionProof7008 : IsMapEvaluation generatorImages reduction7008.relations [17,554] reduction7008.output := by lin_cert using reduction7008.terms
def map_54_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7164 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7164 : InImage map_54_181 image7164 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7164 : Bundle := named_bundle% "RealMapCertificates/relations/basis7164.json"
theorem reductionProof7164 : EqualModuloRelations reduction7164.relations reduction7164.input reduction7164.output := by lin_cert using reduction7164.terms
theorem substitutionProof7164 : IsMapEvaluation generatorImages reduction7164.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7164.output := by lin_cert using reduction7164.terms
def map_54_182 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7250 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation7250 : InImage map_54_182 image7250 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7250 : Bundle := named_bundle% "RealMapCertificates/relations/basis7250.json"
theorem reductionProof7250 : EqualModuloRelations reduction7250.relations reduction7250.input reduction7250.output := by lin_cert using reduction7250.terms
theorem substitutionProof7250 : IsMapEvaluation generatorImages reduction7250.relations [1,886] reduction7250.output := by lin_cert using reduction7250.terms
def map_54_183 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7373 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7373 : InImage map_54_183 image7373 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7373 : Bundle := named_bundle% "RealMapCertificates/relations/basis7373.json"
theorem reductionProof7373 : EqualModuloRelations reduction7373.relations reduction7373.input reduction7373.output := by lin_cert using reduction7373.terms
theorem substitutionProof7373 : IsMapEvaluation generatorImages reduction7373.relations [17,579] reduction7373.output := by lin_cert using reduction7373.terms
def map_54_186 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7732 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7732 : InImage map_54_186 image7732 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7732 : Bundle := named_bundle% "RealMapCertificates/relations/basis7732.json"
theorem reductionProof7732 : EqualModuloRelations reduction7732.relations reduction7732.input reduction7732.output := by lin_cert using reduction7732.terms
theorem substitutionProof7732 : IsMapEvaluation generatorImages reduction7732.relations [16,17,296] reduction7732.output := by lin_cert using reduction7732.terms
def map_54_187 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7875 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7875 : InImage map_54_187 image7875 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7875 : Bundle := named_bundle% "RealMapCertificates/relations/basis7875.json"
theorem reductionProof7875 : EqualModuloRelations reduction7875.relations reduction7875.input reduction7875.output := by lin_cert using reduction7875.terms
theorem substitutionProof7875 : IsMapEvaluation generatorImages reduction7875.relations [0,0,0,0,916] reduction7875.output := by lin_cert using reduction7875.terms
def map_54_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7953 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7953 : InImage map_54_188 image7953 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7953 : Bundle := named_bundle% "RealMapCertificates/relations/basis7953.json"
theorem reductionProof7953 : EqualModuloRelations reduction7953.relations reduction7953.input reduction7953.output := by lin_cert using reduction7953.terms
theorem substitutionProof7953 : IsMapEvaluation generatorImages reduction7953.relations [0,0,0,0,0,917] reduction7953.output := by lin_cert using reduction7953.terms
def map_54_189 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8084 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8084 : InImage map_54_189 image8084 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8084 : Bundle := named_bundle% "RealMapCertificates/relations/basis8084.json"
theorem reductionProof8084 : EqualModuloRelations reduction8084.relations reduction8084.input reduction8084.output := by lin_cert using reduction8084.terms
theorem substitutionProof8084 : IsMapEvaluation generatorImages reduction8084.relations [8,17,470] reduction8084.output := by lin_cert using reduction8084.terms
def map_54_192 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image8453 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation8453 : InImage map_54_192 image8453 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8453 : Bundle := named_bundle% "RealMapCertificates/relations/basis8453.json"
theorem reductionProof8453 : EqualModuloRelations reduction8453.relations reduction8453.input reduction8453.output := by lin_cert using reduction8453.terms
theorem substitutionProof8453 : IsMapEvaluation generatorImages reduction8453.relations [8,8,17,296] reduction8453.output := by lin_cert using reduction8453.terms
def map_54_194 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8706 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation8706 : InImage map_54_194 image8706 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8706 : Bundle := named_bundle% "RealMapCertificates/relations/basis8706.json"
theorem reductionProof8706 : EqualModuloRelations reduction8706.relations reduction8706.input reduction8706.output := by lin_cert using reduction8706.terms
theorem substitutionProof8706 : IsMapEvaluation generatorImages reduction8706.relations [0,0,0,0,0,0,969] reduction8706.output := by lin_cert using reduction8706.terms
def map_54_195 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8855 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8855 : InImage map_54_195 image8855 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8855 : Bundle := named_bundle% "RealMapCertificates/relations/basis8855.json"
theorem reductionProof8855 : EqualModuloRelations reduction8855.relations reduction8855.input reduction8855.output := by lin_cert using reduction8855.terms
theorem substitutionProof8855 : IsMapEvaluation generatorImages reduction8855.relations [8,8,17,326] reduction8855.output := by lin_cert using reduction8855.terms
def map_54_198 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image9291 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9291 : InImage map_54_198 image9291 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9291 : Bundle := named_bundle% "RealMapCertificates/relations/basis9291.json"
theorem reductionProof9291 : EqualModuloRelations reduction9291.relations reduction9291.input reduction9291.output := by lin_cert using reduction9291.terms
theorem substitutionProof9291 : IsMapEvaluation generatorImages reduction9291.relations [1141] reduction9291.output := by lin_cert using reduction9291.terms
def image9292 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9292 : InImage map_54_198 image9292 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9292 : Bundle := named_bundle% "RealMapCertificates/relations/basis9292.json"
theorem reductionProof9292 : EqualModuloRelations reduction9292.relations reduction9292.input reduction9292.output := by lin_cert using reduction9292.terms
theorem substitutionProof9292 : IsMapEvaluation generatorImages reduction9292.relations [8,8,16,17,183] reduction9292.output := by lin_cert using reduction9292.terms
def map_54_199 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9475 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9475 : InImage map_54_199 image9475 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9475 : Bundle := named_bundle% "RealMapCertificates/relations/basis9475.json"
theorem reductionProof9475 : EqualModuloRelations reduction9475.relations reduction9475.input reduction9475.output := by lin_cert using reduction9475.terms
theorem substitutionProof9475 : IsMapEvaluation generatorImages reduction9475.relations [0,1142] reduction9475.output := by lin_cert using reduction9475.terms
def map_54_201 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image9782 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation9782 : InImage map_54_201 image9782 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction9782 : Bundle := named_bundle% "RealMapCertificates/relations/basis9782.json"
theorem reductionProof9782 : EqualModuloRelations reduction9782.relations reduction9782.input reduction9782.output := by lin_cert using reduction9782.terms
theorem substitutionProof9782 : IsMapEvaluation generatorImages reduction9782.relations [8,916] reduction9782.output := by lin_cert using reduction9782.terms
def image9783 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9783 : InImage map_54_201 image9783 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction9783 : Bundle := named_bundle% "RealMapCertificates/relations/basis9783.json"
theorem reductionProof9783 : EqualModuloRelations reduction9783.relations reduction9783.input reduction9783.output := by lin_cert using reduction9783.terms
theorem substitutionProof9783 : IsMapEvaluation generatorImages reduction9783.relations [8,8,8,17,253] reduction9783.output := by lin_cert using reduction9783.terms
def map_54_202 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image9950 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation9950 : InImage map_54_202 image9950 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9950 : Bundle := named_bundle% "RealMapCertificates/relations/basis9950.json"
theorem reductionProof9950 : EqualModuloRelations reduction9950.relations reduction9950.input reduction9950.output := by lin_cert using reduction9950.terms
theorem substitutionProof9950 : IsMapEvaluation generatorImages reduction9950.relations [0,8,917] reduction9950.output := by lin_cert using reduction9950.terms
def map_54_204 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image10271 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10271 : InImage map_54_204 image10271 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction10271 : Bundle := named_bundle% "RealMapCertificates/relations/basis10271.json"
theorem reductionProof10271 : EqualModuloRelations reduction10271.relations reduction10271.input reduction10271.output := by lin_cert using reduction10271.terms
theorem substitutionProof10271 : IsMapEvaluation generatorImages reduction10271.relations [8,952] reduction10271.output := by lin_cert using reduction10271.terms
def image10272 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10272 : InImage map_54_204 image10272 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction10272 : Bundle := named_bundle% "RealMapCertificates/relations/basis10272.json"
theorem reductionProof10272 : EqualModuloRelations reduction10272.relations reduction10272.input reduction10272.output := by lin_cert using reduction10272.terms
theorem substitutionProof10272 : IsMapEvaluation generatorImages reduction10272.relations [8,8,8,8,17,183] reduction10272.output := by lin_cert using reduction10272.terms
def image10273 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10273 : InImage map_54_204 image10273 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction10273 : Bundle := named_bundle% "RealMapCertificates/relations/basis10273.json"
theorem reductionProof10273 : EqualModuloRelations reduction10273.relations reduction10273.input reduction10273.output := by lin_cert using reduction10273.terms
theorem substitutionProof10273 : IsMapEvaluation generatorImages reduction10273.relations [1,5,969] reduction10273.output := by lin_cert using reduction10273.terms
def map_54_205 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image10475 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10475 : InImage map_54_205 image10475 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10475 : Bundle := named_bundle% "RealMapCertificates/relations/basis10475.json"
theorem reductionProof10475 : EqualModuloRelations reduction10475.relations reduction10475.input reduction10475.output := by lin_cert using reduction10475.terms
theorem substitutionProof10475 : IsMapEvaluation generatorImages reduction10475.relations [0,8,953] reduction10475.output := by lin_cert using reduction10475.terms
def image10476 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10476 : InImage map_54_205 image10476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10476 : Bundle := named_bundle% "RealMapCertificates/relations/basis10476.json"
theorem reductionProof10476 : EqualModuloRelations reduction10476.relations reduction10476.input reduction10476.output := by lin_cert using reduction10476.terms
theorem substitutionProof10476 : IsMapEvaluation generatorImages reduction10476.relations [0,0,1239] reduction10476.output := by lin_cert using reduction10476.terms
def map_54_207 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image10823 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10823 : InImage map_54_207 image10823 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10823 : Bundle := named_bundle% "RealMapCertificates/relations/basis10823.json"
theorem reductionProof10823 : EqualModuloRelations reduction10823.relations reduction10823.input reduction10823.output := by lin_cert using reduction10823.terms
theorem substitutionProof10823 : IsMapEvaluation generatorImages reduction10823.relations [8,16,635] reduction10823.output := by lin_cert using reduction10823.terms
def image10824 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10824 : InImage map_54_207 image10824 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10824 : Bundle := named_bundle% "RealMapCertificates/relations/basis10824.json"
theorem reductionProof10824 : EqualModuloRelations reduction10824.relations reduction10824.input reduction10824.output := by lin_cert using reduction10824.terms
theorem substitutionProof10824 : IsMapEvaluation generatorImages reduction10824.relations [8,8,8,8,17,200] reduction10824.output := by lin_cert using reduction10824.terms
def map_54_208 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image10995 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10995 : InImage map_54_208 image10995 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10995 : Bundle := named_bundle% "RealMapCertificates/relations/basis10995.json"
theorem reductionProof10995 : EqualModuloRelations reduction10995.relations reduction10995.input reduction10995.output := by lin_cert using reduction10995.terms
theorem substitutionProof10995 : IsMapEvaluation generatorImages reduction10995.relations [0,8,16,636] reduction10995.output := by lin_cert using reduction10995.terms
def image10996 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10996 : InImage map_54_208 image10996 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10996 : Bundle := named_bundle% "RealMapCertificates/relations/basis10996.json"
theorem reductionProof10996 : EqualModuloRelations reduction10996.relations reduction10996.input reduction10996.output := by lin_cert using reduction10996.terms
theorem substitutionProof10996 : IsMapEvaluation generatorImages reduction10996.relations [0,0,8,969] reduction10996.output := by lin_cert using reduction10996.terms
def map_54_210 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image11332 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11332 : InImage map_54_210 image11332 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11332 : Bundle := named_bundle% "RealMapCertificates/relations/basis11332.json"
theorem reductionProof11332 : EqualModuloRelations reduction11332.relations reduction11332.input reduction11332.output := by lin_cert using reduction11332.terms
theorem substitutionProof11332 : IsMapEvaluation generatorImages reduction11332.relations [8,8,805] reduction11332.output := by lin_cert using reduction11332.terms
def image11333 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation11333 : InImage map_54_210 image11333 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11333 : Bundle := named_bundle% "RealMapCertificates/relations/basis11333.json"
theorem reductionProof11333 : EqualModuloRelations reduction11333.relations reduction11333.input reduction11333.output := by lin_cert using reduction11333.terms
theorem substitutionProof11333 : IsMapEvaluation generatorImages reduction11333.relations [8,8,8,8,16,17,111] reduction11333.output := by lin_cert using reduction11333.terms
def map_54_211 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image11543 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation11543 : InImage map_54_211 image11543 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11543 : Bundle := named_bundle% "RealMapCertificates/relations/basis11543.json"
theorem reductionProof11543 : EqualModuloRelations reduction11543.relations reduction11543.input reduction11543.output := by lin_cert using reduction11543.terms
theorem substitutionProof11543 : IsMapEvaluation generatorImages reduction11543.relations [0,8,8,806] reduction11543.output := by lin_cert using reduction11543.terms
def map_54_212 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image11676 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11676 : InImage map_54_212 image11676 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11676 : Bundle := named_bundle% "RealMapCertificates/relations/basis11676.json"
theorem reductionProof11676 : EqualModuloRelations reduction11676.relations reduction11676.input reduction11676.output := by lin_cert using reduction11676.terms
theorem substitutionProof11676 : IsMapEvaluation generatorImages reduction11676.relations [1396] reduction11676.output := by lin_cert using reduction11676.terms
def map_54_213 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image11909 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11909 : InImage map_54_213 image11909 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction11909 : Bundle := named_bundle% "RealMapCertificates/relations/basis11909.json"
theorem reductionProof11909 : EqualModuloRelations reduction11909.relations reduction11909.input reduction11909.output := by lin_cert using reduction11909.terms
theorem substitutionProof11909 : IsMapEvaluation generatorImages reduction11909.relations [8,8,8,635] reduction11909.output := by lin_cert using reduction11909.terms
def image11910 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11910 : InImage map_54_213 image11910 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction11910 : Bundle := named_bundle% "RealMapCertificates/relations/basis11910.json"
theorem reductionProof11910 : EqualModuloRelations reduction11910.relations reduction11910.input reduction11910.output := by lin_cert using reduction11910.terms
theorem substitutionProof11910 : IsMapEvaluation generatorImages reduction11910.relations [8,8,8,8,8,17,153] reduction11910.output := by lin_cert using reduction11910.terms
def image11911 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11911 : InImage map_54_213 image11911 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction11911 : Bundle := named_bundle% "RealMapCertificates/relations/basis11911.json"
theorem reductionProof11911 : EqualModuloRelations reduction11911.relations reduction11911.input reduction11911.output := by lin_cert using reduction11911.terms
theorem substitutionProof11911 : IsMapEvaluation generatorImages reduction11911.relations [0,1397] reduction11911.output := by lin_cert using reduction11911.terms
def map_54_214 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image12119 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12119 : InImage map_54_214 image12119 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12119 : Bundle := named_bundle% "RealMapCertificates/relations/basis12119.json"
theorem reductionProof12119 : EqualModuloRelations reduction12119.relations reduction12119.input reduction12119.output := by lin_cert using reduction12119.terms
theorem substitutionProof12119 : IsMapEvaluation generatorImages reduction12119.relations [1,1397] reduction12119.output := by lin_cert using reduction12119.terms
def image12120 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation12120 : InImage map_54_214 image12120 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12120 : Bundle := named_bundle% "RealMapCertificates/relations/basis12120.json"
theorem reductionProof12120 : EqualModuloRelations reduction12120.relations reduction12120.input reduction12120.output := by lin_cert using reduction12120.terms
theorem substitutionProof12120 : IsMapEvaluation generatorImages reduction12120.relations [0,8,8,8,636] reduction12120.output := by lin_cert using reduction12120.terms
def map_54_215 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12281 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12281 : InImage map_54_215 image12281 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12281 : Bundle := named_bundle% "RealMapCertificates/relations/basis12281.json"
theorem reductionProof12281 : EqualModuloRelations reduction12281.relations reduction12281.input reduction12281.output := by lin_cert using reduction12281.terms
theorem substitutionProof12281 : IsMapEvaluation generatorImages reduction12281.relations [1469] reduction12281.output := by lin_cert using reduction12281.terms
def map_54_216 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image12476 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12476 : InImage map_54_216 image12476 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12476 : Bundle := named_bundle% "RealMapCertificates/relations/basis12476.json"
theorem reductionProof12476 : EqualModuloRelations reduction12476.relations reduction12476.input reduction12476.output := by lin_cert using reduction12476.terms
theorem substitutionProof12476 : IsMapEvaluation generatorImages reduction12476.relations [8,8,8,662] reduction12476.output := by lin_cert using reduction12476.terms
def image12477 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12477 : InImage map_54_216 image12477 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12477 : Bundle := named_bundle% "RealMapCertificates/relations/basis12477.json"
theorem reductionProof12477 : EqualModuloRelations reduction12477.relations reduction12477.input reduction12477.output := by lin_cert using reduction12477.terms
theorem substitutionProof12477 : IsMapEvaluation generatorImages reduction12477.relations [8,8,8,8,8,8,17,111] reduction12477.output := by lin_cert using reduction12477.terms
def map_54_218 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image12828 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation12828 : InImage map_54_218 image12828 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12828 : Bundle := named_bundle% "RealMapCertificates/relations/basis12828.json"
theorem reductionProof12828 : EqualModuloRelations reduction12828.relations reduction12828.input reduction12828.output := by lin_cert using reduction12828.terms
theorem substitutionProof12828 : IsMapEvaluation generatorImages reduction12828.relations [49,686] reduction12828.output := by lin_cert using reduction12828.terms
def map_54_219 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image13058 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13058 : InImage map_54_219 image13058 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13058 : Bundle := named_bundle% "RealMapCertificates/relations/basis13058.json"
theorem reductionProof13058 : EqualModuloRelations reduction13058.relations reduction13058.input reduction13058.output := by lin_cert using reduction13058.terms
theorem substitutionProof13058 : IsMapEvaluation generatorImages reduction13058.relations [8,8,8,16,402] reduction13058.output := by lin_cert using reduction13058.terms
def image13059 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13059 : InImage map_54_219 image13059 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13059 : Bundle := named_bundle% "RealMapCertificates/relations/basis13059.json"
theorem reductionProof13059 : EqualModuloRelations reduction13059.relations reduction13059.input reduction13059.output := by lin_cert using reduction13059.terms
theorem substitutionProof13059 : IsMapEvaluation generatorImages reduction13059.relations [8,8,8,8,8,8,17,117] reduction13059.output := by lin_cert using reduction13059.terms
def image13060 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13060 : InImage map_54_219 image13060 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13060 : Bundle := named_bundle% "RealMapCertificates/relations/basis13060.json"
theorem reductionProof13060 : EqualModuloRelations reduction13060.relations reduction13060.input reduction13060.output := by lin_cert using reduction13060.terms
theorem substitutionProof13060 : IsMapEvaluation generatorImages reduction13060.relations [0,0,0,0,1471] reduction13060.output := by lin_cert using reduction13060.terms
def map_54_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13247 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13247 : InImage map_54_220 image13247 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13247 : Bundle := named_bundle% "RealMapCertificates/relations/basis13247.json"
theorem reductionProof13247 : EqualModuloRelations reduction13247.relations reduction13247.input reduction13247.output := by lin_cert using reduction13247.terms
theorem substitutionProof13247 : IsMapEvaluation generatorImages reduction13247.relations [0,0,0,1499] reduction13247.output := by lin_cert using reduction13247.terms
def map_54_221 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13400 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13400 : InImage map_54_221 image13400 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13400 : Bundle := named_bundle% "RealMapCertificates/relations/basis13400.json"
theorem reductionProof13400 : EqualModuloRelations reduction13400.relations reduction13400.input reduction13400.output := by lin_cert using reduction13400.terms
theorem substitutionProof13400 : IsMapEvaluation generatorImages reduction13400.relations [8,1240] reduction13400.output := by lin_cert using reduction13400.terms
def map_54_222 : Matrix 5 2 := fun i j => ([false,true,false,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image13607 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13607 : InImage map_54_222 image13607 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13607 : Bundle := named_bundle% "RealMapCertificates/relations/basis13607.json"
theorem reductionProof13607 : EqualModuloRelations reduction13607.relations reduction13607.input reduction13607.output := by lin_cert using reduction13607.terms
theorem substitutionProof13607 : IsMapEvaluation generatorImages reduction13607.relations [8,8,8,8,555] reduction13607.output := by lin_cert using reduction13607.terms
def image13608 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation13608 : InImage map_54_222 image13608 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13608 : Bundle := named_bundle% "RealMapCertificates/relations/basis13608.json"
theorem reductionProof13608 : EqualModuloRelations reduction13608.relations reduction13608.input reduction13608.output := by lin_cert using reduction13608.terms
theorem substitutionProof13608 : IsMapEvaluation generatorImages reduction13608.relations [8,8,8,8,8,8,16,17,50] reduction13608.output := by lin_cert using reduction13608.terms
def map_54_224 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image13945 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation13945 : InImage map_54_224 image13945 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13945 : Bundle := named_bundle% "RealMapCertificates/relations/basis13945.json"
theorem reductionProof13945 : EqualModuloRelations reduction13945.relations reduction13945.input reduction13945.output := by lin_cert using reduction13945.terms
theorem substitutionProof13945 : IsMapEvaluation generatorImages reduction13945.relations [8,31,686] reduction13945.output := by lin_cert using reduction13945.terms
def image13946 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation13946 : InImage map_54_224 image13946 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13946 : Bundle := named_bundle% "RealMapCertificates/relations/basis13946.json"
theorem reductionProof13946 : EqualModuloRelations reduction13946.relations reduction13946.input reduction13946.output := by lin_cert using reduction13946.terms
theorem substitutionProof13946 : IsMapEvaluation generatorImages reduction13946.relations [0,0,64,635] reduction13946.output := by lin_cert using reduction13946.terms
def map_54_225 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14177 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14177 : InImage map_54_225 image14177 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14177 : Bundle := named_bundle% "RealMapCertificates/relations/basis14177.json"
theorem reductionProof14177 : EqualModuloRelations reduction14177.relations reduction14177.input reduction14177.output := by lin_cert using reduction14177.terms
theorem substitutionProof14177 : IsMapEvaluation generatorImages reduction14177.relations [8,8,8,8,8,402] reduction14177.output := by lin_cert using reduction14177.terms
def image14178 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14178 : InImage map_54_225 image14178 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14178 : Bundle := named_bundle% "RealMapCertificates/relations/basis14178.json"
theorem reductionProof14178 : EqualModuloRelations reduction14178.relations reduction14178.input reduction14178.output := by lin_cert using reduction14178.terms
theorem substitutionProof14178 : IsMapEvaluation generatorImages reduction14178.relations [8,8,8,8,8,8,8,17,78] reduction14178.output := by lin_cert using reduction14178.terms
def image14179 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14179 : InImage map_54_225 image14179 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14179 : Bundle := named_bundle% "RealMapCertificates/relations/basis14179.json"
theorem reductionProof14179 : EqualModuloRelations reduction14179.relations reduction14179.input reduction14179.output := by lin_cert using reduction14179.terms
theorem substitutionProof14179 : IsMapEvaluation generatorImages reduction14179.relations [0,0,0,64,636] reduction14179.output := by lin_cert using reduction14179.terms
def map_54_226 : Matrix 3 2 := fun i j => ([false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image14365 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14365 : InImage map_54_226 image14365 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14365 : Bundle := named_bundle% "RealMapCertificates/relations/basis14365.json"
theorem reductionProof14365 : EqualModuloRelations reduction14365.relations reduction14365.input reduction14365.output := by lin_cert using reduction14365.terms
theorem substitutionProof14365 : IsMapEvaluation generatorImages reduction14365.relations [1,1,64,635] reduction14365.output := by lin_cert using reduction14365.terms
def image14366 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation14366 : InImage map_54_226 image14366 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14366 : Bundle := named_bundle% "RealMapCertificates/relations/basis14366.json"
theorem reductionProof14366 : EqualModuloRelations reduction14366.relations reduction14366.input reduction14366.output := by lin_cert using reduction14366.terms
theorem substitutionProof14366 : IsMapEvaluation generatorImages reduction14366.relations [0,0,0,0,0,17,1033] reduction14366.output := by lin_cert using reduction14366.terms
def map_54_227 : Matrix 1 3 := fun i j => ([true,false,false] : List Bool)[i.val*3+j.val]!
def image14519 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14519 : InImage map_54_227 image14519 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14519 : Bundle := named_bundle% "RealMapCertificates/relations/basis14519.json"
theorem reductionProof14519 : EqualModuloRelations reduction14519.relations reduction14519.input reduction14519.output := by lin_cert using reduction14519.terms
theorem substitutionProof14519 : IsMapEvaluation generatorImages reduction14519.relations [8,8,1031] reduction14519.output := by lin_cert using reduction14519.terms
def image14520 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14520 : InImage map_54_227 image14520 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14520 : Bundle := named_bundle% "RealMapCertificates/relations/basis14520.json"
theorem reductionProof14520 : EqualModuloRelations reduction14520.relations reduction14520.input reduction14520.output := by lin_cert using reduction14520.terms
theorem substitutionProof14520 : IsMapEvaluation generatorImages reduction14520.relations [0,0,0,0,0,1591] reduction14520.output := by lin_cert using reduction14520.terms
def image14521 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14521 : InImage map_54_227 image14521 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14521 : Bundle := named_bundle% "RealMapCertificates/relations/basis14521.json"
theorem reductionProof14521 : EqualModuloRelations reduction14521.relations reduction14521.input reduction14521.output := by lin_cert using reduction14521.terms
theorem substitutionProof14521 : IsMapEvaluation generatorImages reduction14521.relations [0,0,0,0,0,1589] reduction14521.output := by lin_cert using reduction14521.terms
def map_54_228 : Matrix 2 3 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image14743 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14743 : InImage map_54_228 image14743 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14743 : Bundle := named_bundle% "RealMapCertificates/relations/basis14743.json"
theorem reductionProof14743 : EqualModuloRelations reduction14743.relations reduction14743.input reduction14743.output := by lin_cert using reduction14743.terms
theorem substitutionProof14743 : IsMapEvaluation generatorImages reduction14743.relations [8,8,8,8,8,432] reduction14743.output := by lin_cert using reduction14743.terms
def image14744 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation14744 : InImage map_54_228 image14744 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14744 : Bundle := named_bundle% "RealMapCertificates/relations/basis14744.json"
theorem reductionProof14744 : EqualModuloRelations reduction14744.relations reduction14744.input reduction14744.output := by lin_cert using reduction14744.terms
theorem substitutionProof14744 : IsMapEvaluation generatorImages reduction14744.relations [8,8,8,8,8,8,8,8,17,50] reduction14744.output := by lin_cert using reduction14744.terms
def image14745 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation14745 : InImage map_54_228 image14745 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14745 : Bundle := named_bundle% "RealMapCertificates/relations/basis14745.json"
theorem reductionProof14745 : EqualModuloRelations reduction14745.relations reduction14745.input reduction14745.output := by lin_cert using reduction14745.terms
theorem substitutionProof14745 : IsMapEvaluation generatorImages reduction14745.relations [0,0,0,0,0,0,0,1566] reduction14745.output := by lin_cert using reduction14745.terms
def map_54_230 : Matrix 4 2 := fun i j => ([false,true,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image15110 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation15110 : InImage map_54_230 image15110 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15110 : Bundle := named_bundle% "RealMapCertificates/relations/basis15110.json"
theorem reductionProof15110 : EqualModuloRelations reduction15110.relations reduction15110.input reduction15110.output := by lin_cert using reduction15110.terms
theorem substitutionProof15110 : IsMapEvaluation generatorImages reduction15110.relations [1734] reduction15110.output := by lin_cert using reduction15110.terms
def image15111 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation15111 : InImage map_54_230 image15111 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15111 : Bundle := named_bundle% "RealMapCertificates/relations/basis15111.json"
theorem reductionProof15111 : EqualModuloRelations reduction15111.relations reduction15111.input reduction15111.output := by lin_cert using reduction15111.terms
theorem substitutionProof15111 : IsMapEvaluation generatorImages reduction15111.relations [8,8,16,686] reduction15111.output := by lin_cert using reduction15111.terms
def map_54_231 : Matrix 2 4 := fun i j => ([false,false,true,false,true,false,false,false] : List Bool)[i.val*4+j.val]!
def image15362 : Vec 2 := fun i => ([false,true] : List Bool)[i.val]!
theorem evaluation15362 : InImage map_54_231 image15362 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction15362 : Bundle := named_bundle% "RealMapCertificates/relations/basis15362.json"
theorem reductionProof15362 : EqualModuloRelations reduction15362.relations reduction15362.input reduction15362.output := by lin_cert using reduction15362.terms
theorem substitutionProof15362 : IsMapEvaluation generatorImages reduction15362.relations [1749] reduction15362.output := by lin_cert using reduction15362.terms
def image15363 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15363 : InImage map_54_231 image15363 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction15363 : Bundle := named_bundle% "RealMapCertificates/relations/basis15363.json"
theorem reductionProof15363 : EqualModuloRelations reduction15363.relations reduction15363.input reduction15363.output := by lin_cert using reduction15363.terms
theorem substitutionProof15363 : IsMapEvaluation generatorImages reduction15363.relations [8,8,8,8,8,16,224] reduction15363.output := by lin_cert using reduction15363.terms
def image15364 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation15364 : InImage map_54_231 image15364 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction15364 : Bundle := named_bundle% "RealMapCertificates/relations/basis15364.json"
theorem reductionProof15364 : EqualModuloRelations reduction15364.relations reduction15364.input reduction15364.output := by lin_cert using reduction15364.terms
theorem substitutionProof15364 : IsMapEvaluation generatorImages reduction15364.relations [8,8,8,8,8,8,8,8,17,56] reduction15364.output := by lin_cert using reduction15364.terms
def image15365 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation15365 : InImage map_54_231 image15365 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction15365 : Bundle := named_bundle% "RealMapCertificates/relations/basis15365.json"
theorem reductionProof15365 : EqualModuloRelations reduction15365.relations reduction15365.input reduction15365.output := by lin_cert using reduction15365.terms
theorem substitutionProof15365 : IsMapEvaluation generatorImages reduction15365.relations [0,0,0,0,64,685] reduction15365.output := by lin_cert using reduction15365.terms
def map_54_232 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image15582 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15582 : InImage map_54_232 image15582 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15582 : Bundle := named_bundle% "RealMapCertificates/relations/basis15582.json"
theorem reductionProof15582 : EqualModuloRelations reduction15582.relations reduction15582.input reduction15582.output := by lin_cert using reduction15582.terms
theorem substitutionProof15582 : IsMapEvaluation generatorImages reduction15582.relations [0,0,0,0,0,138,452] reduction15582.output := by lin_cert using reduction15582.terms
def map_54_233 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image15765 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15765 : InImage map_54_233 image15765 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15765 : Bundle := named_bundle% "RealMapCertificates/relations/basis15765.json"
theorem reductionProof15765 : EqualModuloRelations reduction15765.relations reduction15765.input reduction15765.output := by lin_cert using reduction15765.terms
theorem substitutionProof15765 : IsMapEvaluation generatorImages reduction15765.relations [8,1471] reduction15765.output := by lin_cert using reduction15765.terms
def image15766 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15766 : InImage map_54_233 image15766 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15766 : Bundle := named_bundle% "RealMapCertificates/relations/basis15766.json"
theorem reductionProof15766 : EqualModuloRelations reduction15766.relations reduction15766.input reduction15766.output := by lin_cert using reduction15766.terms
theorem substitutionProof15766 : IsMapEvaluation generatorImages reduction15766.relations [8,8,8,872] reduction15766.output := by lin_cert using reduction15766.terms
def map_54_234 : Matrix 5 3 := fun i j => ([false,false,true,true,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image16007 : Vec 5 := fun i => ([false,true,false,false,false] : List Bool)[i.val]!
theorem evaluation16007 : InImage map_54_234 image16007 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16007 : Bundle := named_bundle% "RealMapCertificates/relations/basis16007.json"
theorem reductionProof16007 : EqualModuloRelations reduction16007.relations reduction16007.input reduction16007.output := by lin_cert using reduction16007.terms
theorem substitutionProof16007 : IsMapEvaluation generatorImages reduction16007.relations [1829] reduction16007.output := by lin_cert using reduction16007.terms
def image16008 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16008 : InImage map_54_234 image16008 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16008 : Bundle := named_bundle% "RealMapCertificates/relations/basis16008.json"
theorem reductionProof16008 : EqualModuloRelations reduction16008.relations reduction16008.input reduction16008.output := by lin_cert using reduction16008.terms
theorem substitutionProof16008 : IsMapEvaluation generatorImages reduction16008.relations [8,8,8,8,8,8,297] reduction16008.output := by lin_cert using reduction16008.terms
def image16009 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation16009 : InImage map_54_234 image16009 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16009 : Bundle := named_bundle% "RealMapCertificates/relations/basis16009.json"
theorem reductionProof16009 : EqualModuloRelations reduction16009.relations reduction16009.input reduction16009.output := by lin_cert using reduction16009.terms
theorem substitutionProof16009 : IsMapEvaluation generatorImages reduction16009.relations [8,8,8,8,8,8,8,8,16,17,17] reduction16009.output := by lin_cert using reduction16009.terms
def map_54_236 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16426 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16426 : InImage map_54_236 image16426 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16426 : Bundle := named_bundle% "RealMapCertificates/relations/basis16426.json"
theorem reductionProof16426 : EqualModuloRelations reduction16426.relations reduction16426.input reduction16426.output := by lin_cert using reduction16426.terms
theorem substitutionProof16426 : IsMapEvaluation generatorImages reduction16426.relations [8,1514] reduction16426.output := by lin_cert using reduction16426.terms
def image16427 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16427 : InImage map_54_236 image16427 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16427 : Bundle := named_bundle% "RealMapCertificates/relations/basis16427.json"
theorem reductionProof16427 : EqualModuloRelations reduction16427.relations reduction16427.input reduction16427.output := by lin_cert using reduction16427.terms
theorem substitutionProof16427 : IsMapEvaluation generatorImages reduction16427.relations [8,8,8,8,686] reduction16427.output := by lin_cert using reduction16427.terms
def image16428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16428 : InImage map_54_236 image16428 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16428 : Bundle := named_bundle% "RealMapCertificates/relations/basis16428.json"
theorem reductionProof16428 : EqualModuloRelations reduction16428.relations reduction16428.input reduction16428.output := by lin_cert using reduction16428.terms
theorem substitutionProof16428 : IsMapEvaluation generatorImages reduction16428.relations [1,1830] reduction16428.output := by lin_cert using reduction16428.terms
def map_54_237 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16679 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16679 : InImage map_54_237 image16679 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16679 : Bundle := named_bundle% "RealMapCertificates/relations/basis16679.json"
theorem reductionProof16679 : EqualModuloRelations reduction16679.relations reduction16679.input reduction16679.output := by lin_cert using reduction16679.terms
theorem substitutionProof16679 : IsMapEvaluation generatorImages reduction16679.relations [8,1534] reduction16679.output := by lin_cert using reduction16679.terms
def image16680 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16680 : InImage map_54_237 image16680 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16680 : Bundle := named_bundle% "RealMapCertificates/relations/basis16680.json"
theorem reductionProof16680 : EqualModuloRelations reduction16680.relations reduction16680.input reduction16680.output := by lin_cert using reduction16680.terms
theorem substitutionProof16680 : IsMapEvaluation generatorImages reduction16680.relations [8,8,8,8,8,8,8,224] reduction16680.output := by lin_cert using reduction16680.terms
def image16681 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16681 : InImage map_54_237 image16681 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16681 : Bundle := named_bundle% "RealMapCertificates/relations/basis16681.json"
theorem reductionProof16681 : EqualModuloRelations reduction16681.relations reduction16681.input reduction16681.output := by lin_cert using reduction16681.terms
theorem substitutionProof16681 : IsMapEvaluation generatorImages reduction16681.relations [8,8,8,8,8,8,8,8,8,17,40] reduction16681.output := by lin_cert using reduction16681.terms
def image16682 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16682 : InImage map_54_237 image16682 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16682 : Bundle := named_bundle% "RealMapCertificates/relations/basis16682.json"
theorem reductionProof16682 : EqualModuloRelations reduction16682.relations reduction16682.input reduction16682.output := by lin_cert using reduction16682.terms
theorem substitutionProof16682 : IsMapEvaluation generatorImages reduction16682.relations [0,17,1301] reduction16682.output := by lin_cert using reduction16682.terms
def map_54_238 : Matrix 3 1 := fun i j => ([false,false,false] : List Bool)[i.val*1+j.val]!
def image16909 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation16909 : InImage map_54_238 image16909 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16909 : Bundle := named_bundle% "RealMapCertificates/relations/basis16909.json"
theorem reductionProof16909 : EqualModuloRelations reduction16909.relations reduction16909.input reduction16909.output := by lin_cert using reduction16909.terms
theorem substitutionProof16909 : IsMapEvaluation generatorImages reduction16909.relations [0,0,0,0,0,0,149,452] reduction16909.output := by lin_cert using reduction16909.terms
def map_54_239 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image17117 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17117 : InImage map_54_239 image17117 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17117 : Bundle := named_bundle% "RealMapCertificates/relations/basis17117.json"
theorem reductionProof17117 : EqualModuloRelations reduction17117.relations reduction17117.input reduction17117.output := by lin_cert using reduction17117.terms
theorem substitutionProof17117 : IsMapEvaluation generatorImages reduction17117.relations [8,16,1033] reduction17117.output := by lin_cert using reduction17117.terms
def image17118 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17118 : InImage map_54_239 image17118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17118 : Bundle := named_bundle% "RealMapCertificates/relations/basis17118.json"
theorem reductionProof17118 : EqualModuloRelations reduction17118.relations reduction17118.input reduction17118.output := by lin_cert using reduction17118.terms
theorem substitutionProof17118 : IsMapEvaluation generatorImages reduction17118.relations [8,8,8,8,723] reduction17118.output := by lin_cert using reduction17118.terms
def map_54_240 : Matrix 2 4 := fun i j => ([false,false,true,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17380 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17380 : InImage map_54_240 image17380 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17380 : Bundle := named_bundle% "RealMapCertificates/relations/basis17380.json"
theorem reductionProof17380 : EqualModuloRelations reduction17380.relations reduction17380.input reduction17380.output := by lin_cert using reduction17380.terms
theorem substitutionProof17380 : IsMapEvaluation generatorImages reduction17380.relations [8,138,403] reduction17380.output := by lin_cert using reduction17380.terms
def image17381 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17381 : InImage map_54_240 image17381 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17381 : Bundle := named_bundle% "RealMapCertificates/relations/basis17381.json"
theorem reductionProof17381 : EqualModuloRelations reduction17381.relations reduction17381.input reduction17381.output := by lin_cert using reduction17381.terms
theorem substitutionProof17381 : IsMapEvaluation generatorImages reduction17381.relations [8,8,8,8,8,8,8,237] reduction17381.output := by lin_cert using reduction17381.terms
def image17382 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17382 : InImage map_54_240 image17382 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17382 : Bundle := named_bundle% "RealMapCertificates/relations/basis17382.json"
theorem reductionProof17382 : EqualModuloRelations reduction17382.relations reduction17382.input reduction17382.output := by lin_cert using reduction17382.terms
theorem substitutionProof17382 : IsMapEvaluation generatorImages reduction17382.relations [8,8,8,8,8,8,8,8,8,8,17,17] reduction17382.output := by lin_cert using reduction17382.terms
def image17383 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation17383 : InImage map_54_240 image17383 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17383 : Bundle := named_bundle% "RealMapCertificates/relations/basis17383.json"
theorem reductionProof17383 : EqualModuloRelations reduction17383.relations reduction17383.input reduction17383.output := by lin_cert using reduction17383.terms
theorem substitutionProof17383 : IsMapEvaluation generatorImages reduction17383.relations [0,8,17,1033] reduction17383.output := by lin_cert using reduction17383.terms
def map_54_242 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image17878 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17878 : InImage map_54_242 image17878 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17878 : Bundle := named_bundle% "RealMapCertificates/relations/basis17878.json"
theorem reductionProof17878 : EqualModuloRelations reduction17878.relations reduction17878.input reduction17878.output := by lin_cert using reduction17878.terms
theorem substitutionProof17878 : IsMapEvaluation generatorImages reduction17878.relations [64,871] reduction17878.output := by lin_cert using reduction17878.terms
def image17879 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17879 : InImage map_54_242 image17879 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17879 : Bundle := named_bundle% "RealMapCertificates/relations/basis17879.json"
theorem reductionProof17879 : EqualModuloRelations reduction17879.relations reduction17879.input reduction17879.output := by lin_cert using reduction17879.terms
theorem substitutionProof17879 : IsMapEvaluation generatorImages reduction17879.relations [8,8,1301] reduction17879.output := by lin_cert using reduction17879.terms
def image17880 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17880 : InImage map_54_242 image17880 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17880 : Bundle := named_bundle% "RealMapCertificates/relations/basis17880.json"
theorem reductionProof17880 : EqualModuloRelations reduction17880.relations reduction17880.input reduction17880.output := by lin_cert using reduction17880.terms
theorem substitutionProof17880 : IsMapEvaluation generatorImages reduction17880.relations [8,8,8,8,49,245] reduction17880.output := by lin_cert using reduction17880.terms
def image17881 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation17881 : InImage map_54_242 image17881 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17881 : Bundle := named_bundle% "RealMapCertificates/relations/basis17881.json"
theorem reductionProof17881 : EqualModuloRelations reduction17881.relations reduction17881.input reduction17881.output := by lin_cert using reduction17881.terms
theorem substitutionProof17881 : IsMapEvaluation generatorImages reduction17881.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction17881.output := by lin_cert using reduction17881.terms
def map_54_243 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image18164 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18164 : InImage map_54_243 image18164 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18164 : Bundle := named_bundle% "RealMapCertificates/relations/basis18164.json"
theorem reductionProof18164 : EqualModuloRelations reduction18164.relations reduction18164.input reduction18164.output := by lin_cert using reduction18164.terms
theorem substitutionProof18164 : IsMapEvaluation generatorImages reduction18164.relations [8,8,1314] reduction18164.output := by lin_cert using reduction18164.terms
def image18165 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18165 : InImage map_54_243 image18165 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18165 : Bundle := named_bundle% "RealMapCertificates/relations/basis18165.json"
theorem reductionProof18165 : EqualModuloRelations reduction18165.relations reduction18165.input reduction18165.output := by lin_cert using reduction18165.terms
theorem substitutionProof18165 : IsMapEvaluation generatorImages reduction18165.relations [8,8,8,8,8,8,8,16,137] reduction18165.output := by lin_cert using reduction18165.terms
def image18166 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18166 : InImage map_54_243 image18166 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18166 : Bundle := named_bundle% "RealMapCertificates/relations/basis18166.json"
theorem reductionProof18166 : EqualModuloRelations reduction18166.relations reduction18166.input reduction18166.output := by lin_cert using reduction18166.terms
theorem substitutionProof18166 : IsMapEvaluation generatorImages reduction18166.relations [8,8,8,8,8,8,8,8,8,8,17,20] reduction18166.output := by lin_cert using reduction18166.terms
def image18167 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18167 : InImage map_54_243 image18167 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18167 : Bundle := named_bundle% "RealMapCertificates/relations/basis18167.json"
theorem reductionProof18167 : EqualModuloRelations reduction18167.relations reduction18167.input reduction18167.output := by lin_cert using reduction18167.terms
theorem substitutionProof18167 : IsMapEvaluation generatorImages reduction18167.relations [0,8,17,1076] reduction18167.output := by lin_cert using reduction18167.terms
def image18168 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18168 : InImage map_54_243 image18168 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18168 : Bundle := named_bundle% "RealMapCertificates/relations/basis18168.json"
theorem reductionProof18168 : EqualModuloRelations reduction18168.relations reduction18168.input reduction18168.output := by lin_cert using reduction18168.terms
theorem substitutionProof18168 : IsMapEvaluation generatorImages reduction18168.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,1735] reduction18168.output := by lin_cert using reduction18168.terms
def map_54_244 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image18407 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18407 : InImage map_54_244 image18407 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction18407 : Bundle := named_bundle% "RealMapCertificates/relations/basis18407.json"
theorem reductionProof18407 : EqualModuloRelations reduction18407.relations reduction18407.input reduction18407.output := by lin_cert using reduction18407.terms
theorem substitutionProof18407 : IsMapEvaluation generatorImages reduction18407.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction18407.output := by lin_cert using reduction18407.terms
end RealMapCertificates
