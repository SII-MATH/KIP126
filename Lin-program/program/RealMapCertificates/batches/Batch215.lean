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
  | 31 => [[4,4,6]]
  | 45 => [[5,5,8]]
  | 59 => []
  | 64 => []
  | 111 => [[4,4,4,4,4,7]]
  | 112 => []
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 146 => []
  | 149 => [[4,9,12]]
  | 153 => [[4,4,4,4,4,5,6]]
  | 183 => [[4,4,4,4,4,4,4,7]]
  | 184 => []
  | 200 => [[4,4,4,4,4,4,5,6]]
  | 225 => [[0,4,4,4,6,12]]
  | 245 => [[4,4,7,7,12]]
  | 253 => [[4,4,4,4,4,4,4,5,6]]
  | 296 => [[4,4,4,4,4,4,4,4,4,7]]
  | 324 => []
  | 326 => [[4,4,4,4,4,4,4,4,5,6]]
  | 344 => [[4,4,5,5,8,12]]
  | 402 => []
  | 452 => [[4,4,4,4,4,9,12]]
  | 470 => [[4,4,4,4,4,4,4,4,4,5,6]]
  | 488 => [[4,4,4,4,6,8,12]]
  | 489 => [[4,4,4,5,5,8,12]]
  | 554 => [[4,4,4,4,4,4,4,4,4,4,4,7]]
  | 579 => [[4,4,4,4,4,4,4,4,4,4,5,6]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 596 => [[4,4,4,4,5,5,8,12]]
  | 606 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 641 => [[2,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 686 => [[4,4,4,4,4,4,7,7,12]]
  | 700 => [[4,4,4,4,4,4,4,4,4,4,4,4,8]]
  | 701 => [[4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 721 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 759 => []
  | 778 => [[0,0,4,4,4,8,12,12]]
  | 804 => [[4,4,4,4,4,4,4,4,4,4,4,4,4,7]]
  | 805 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 852 => [[4,4,4,4,4,4,4,4,4,4,4,4,5,6]]
  | 896 => []
  | 916 => []
  | 917 => [[0,4,4,4,4,4,4,4,4,4,6,12]]
  | 918 => [[0,0,4,4,4,4,8,12,12]]
  | 952 => []
  | 953 => [[0,4,4,4,4,4,4,4,4,4,8,12]]
  | 954 => [[0,0,4,4,4,4,9,12,12]]
  | 969 => [[4,4,4,4,4,4,4,4,4,9,12]]
  | 1030 => [[4,4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1093 => [[0,0,4,4,4,4,4,8,12,12]]
  | 1141 => []
  | 1142 => [[0,4,4,4,4,4,4,4,4,4,4,8,12]]
  | 1239 => [[4,4,4,4,4,4,4,4,4,6,8,12]]
  | 1362 => [[0,0,4,4,4,4,4,4,9,12,12]]
  | 1396 => [[4,4,4,4,4,4,4,4,4,4,7,7,12]]
  | 1397 => []
  | 1469 => [[4,4,4,4,4,4,4,4,4,5,5,8,12]]
  | 1471 => []
  | 1499 => []
  | 1737 => []
  | 2036 => [[4,4,4,4,4,4,5,7,9,12,12]]
  | 2330 => []
  | 2435 => [[4,4,4,4,4,4,4,5,7,9,12,12]]
  | 2537 => []
  | _ => []
def map_54_245 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image18626 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18626 : InImage map_54_245 image18626 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18626 : Bundle := named_bundle% "RealMapCertificates/relations/basis18626.json"
theorem reductionProof18626 : EqualModuloRelations reduction18626.relations reduction18626.input reduction18626.output := by lin_cert using reduction18626.terms
theorem substitutionProof18626 : IsMapEvaluation generatorImages reduction18626.relations [8,64,685] reduction18626.output := by lin_cert using reduction18626.terms
def image18627 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18627 : InImage map_54_245 image18627 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18627 : Bundle := named_bundle% "RealMapCertificates/relations/basis18627.json"
theorem reductionProof18627 : EqualModuloRelations reduction18627.relations reduction18627.input reduction18627.output := by lin_cert using reduction18627.terms
theorem substitutionProof18627 : IsMapEvaluation generatorImages reduction18627.relations [8,8,8,1033] reduction18627.output := by lin_cert using reduction18627.terms
def image18628 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18628 : InImage map_54_245 image18628 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18628 : Bundle := named_bundle% "RealMapCertificates/relations/basis18628.json"
theorem reductionProof18628 : EqualModuloRelations reduction18628.relations reduction18628.input reduction18628.output := by lin_cert using reduction18628.terms
theorem substitutionProof18628 : IsMapEvaluation generatorImages reduction18628.relations [8,8,8,8,8,596] reduction18628.output := by lin_cert using reduction18628.terms
def image18629 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18629 : InImage map_54_245 image18629 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18629 : Bundle := named_bundle% "RealMapCertificates/relations/basis18629.json"
theorem reductionProof18629 : EqualModuloRelations reduction18629.relations reduction18629.input reduction18629.output := by lin_cert using reduction18629.terms
theorem substitutionProof18629 : IsMapEvaluation generatorImages reduction18629.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction18629.output := by lin_cert using reduction18629.terms
def map_54_246 : Matrix 4 4 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*4+j.val]!
def image18914 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18914 : InImage map_54_246 image18914 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction18914 : Bundle := named_bundle% "RealMapCertificates/relations/basis18914.json"
theorem reductionProof18914 : EqualModuloRelations reduction18914.relations reduction18914.input reduction18914.output := by lin_cert using reduction18914.terms
theorem substitutionProof18914 : IsMapEvaluation generatorImages reduction18914.relations [8,8,1362] reduction18914.output := by lin_cert using reduction18914.terms
def image18915 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18915 : InImage map_54_246 image18915 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction18915 : Bundle := named_bundle% "RealMapCertificates/relations/basis18915.json"
theorem reductionProof18915 : EqualModuloRelations reduction18915.relations reduction18915.input reduction18915.output := by lin_cert using reduction18915.terms
theorem substitutionProof18915 : IsMapEvaluation generatorImages reduction18915.relations [8,8,8,8,8,8,8,8,184] reduction18915.output := by lin_cert using reduction18915.terms
def image18916 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation18916 : InImage map_54_246 image18916 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction18916 : Bundle := named_bundle% "RealMapCertificates/relations/basis18916.json"
theorem reductionProof18916 : EqualModuloRelations reduction18916.relations reduction18916.input reduction18916.output := by lin_cert using reduction18916.terms
theorem substitutionProof18916 : IsMapEvaluation generatorImages reduction18916.relations [8,8,8,8,8,8,8,8,8,8,16,23] reduction18916.output := by lin_cert using reduction18916.terms
def image18917 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18917 : InImage map_54_246 image18917 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction18917 : Bundle := named_bundle% "RealMapCertificates/relations/basis18917.json"
theorem reductionProof18917 : EqualModuloRelations reduction18917.relations reduction18917.input reduction18917.output := by lin_cert using reduction18917.terms
theorem substitutionProof18917 : IsMapEvaluation generatorImages reduction18917.relations [0,8,16,17,725] reduction18917.output := by lin_cert using reduction18917.terms
def map_54_248 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image19425 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19425 : InImage map_54_248 image19425 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction19425 : Bundle := named_bundle% "RealMapCertificates/relations/basis19425.json"
theorem reductionProof19425 : EqualModuloRelations reduction19425.relations reduction19425.input reduction19425.output := by lin_cert using reduction19425.terms
theorem substitutionProof19425 : IsMapEvaluation generatorImages reduction19425.relations [8,64,722] reduction19425.output := by lin_cert using reduction19425.terms
def image19426 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19426 : InImage map_54_248 image19426 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction19426 : Bundle := named_bundle% "RealMapCertificates/relations/basis19426.json"
theorem reductionProof19426 : EqualModuloRelations reduction19426.relations reduction19426.input reduction19426.output := by lin_cert using reduction19426.terms
theorem substitutionProof19426 : IsMapEvaluation generatorImages reduction19426.relations [8,8,8,1076] reduction19426.output := by lin_cert using reduction19426.terms
def image19427 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19427 : InImage map_54_248 image19427 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction19427 : Bundle := named_bundle% "RealMapCertificates/relations/basis19427.json"
theorem reductionProof19427 : EqualModuloRelations reduction19427.relations reduction19427.input reduction19427.output := by lin_cert using reduction19427.terms
theorem substitutionProof19427 : IsMapEvaluation generatorImages reduction19427.relations [8,8,8,8,8,31,245] reduction19427.output := by lin_cert using reduction19427.terms
def image19428 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19428 : InImage map_54_248 image19428 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction19428 : Bundle := named_bundle% "RealMapCertificates/relations/basis19428.json"
theorem reductionProof19428 : EqualModuloRelations reduction19428.relations reduction19428.input reduction19428.output := by lin_cert using reduction19428.terms
theorem substitutionProof19428 : IsMapEvaluation generatorImages reduction19428.relations [1,5,149,452] reduction19428.output := by lin_cert using reduction19428.terms
def map_54_249 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image19732 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19732 : InImage map_54_249 image19732 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19732 : Bundle := named_bundle% "RealMapCertificates/relations/basis19732.json"
theorem reductionProof19732 : EqualModuloRelations reduction19732.relations reduction19732.input reduction19732.output := by lin_cert using reduction19732.terms
theorem substitutionProof19732 : IsMapEvaluation generatorImages reduction19732.relations [8,8,8,1093] reduction19732.output := by lin_cert using reduction19732.terms
def image19733 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19733 : InImage map_54_249 image19733 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19733 : Bundle := named_bundle% "RealMapCertificates/relations/basis19733.json"
theorem reductionProof19733 : EqualModuloRelations reduction19733.relations reduction19733.input reduction19733.output := by lin_cert using reduction19733.terms
theorem substitutionProof19733 : IsMapEvaluation generatorImages reduction19733.relations [8,8,8,8,8,8,8,8,8,137] reduction19733.output := by lin_cert using reduction19733.terms
def image19734 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19734 : InImage map_54_249 image19734 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19734 : Bundle := named_bundle% "RealMapCertificates/relations/basis19734.json"
theorem reductionProof19734 : EqualModuloRelations reduction19734.relations reduction19734.input reduction19734.output := by lin_cert using reduction19734.terms
theorem substitutionProof19734 : IsMapEvaluation generatorImages reduction19734.relations [8,8,8,8,8,8,8,8,8,8,8,45] reduction19734.output := by lin_cert using reduction19734.terms
def map_54_251 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image20235 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20235 : InImage map_54_251 image20235 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20235 : Bundle := named_bundle% "RealMapCertificates/relations/basis20235.json"
theorem reductionProof20235 : EqualModuloRelations reduction20235.relations reduction20235.input reduction20235.output := by lin_cert using reduction20235.terms
theorem substitutionProof20235 : IsMapEvaluation generatorImages reduction20235.relations [8,16,64,452] reduction20235.output := by lin_cert using reduction20235.terms
def image20236 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20236 : InImage map_54_251 image20236 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20236 : Bundle := named_bundle% "RealMapCertificates/relations/basis20236.json"
theorem reductionProof20236 : EqualModuloRelations reduction20236.relations reduction20236.input reduction20236.output := by lin_cert using reduction20236.terms
theorem substitutionProof20236 : IsMapEvaluation generatorImages reduction20236.relations [8,8,8,16,725] reduction20236.output := by lin_cert using reduction20236.terms
def image20237 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20237 : InImage map_54_251 image20237 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20237 : Bundle := named_bundle% "RealMapCertificates/relations/basis20237.json"
theorem reductionProof20237 : EqualModuloRelations reduction20237.relations reduction20237.input reduction20237.output := by lin_cert using reduction20237.terms
theorem substitutionProof20237 : IsMapEvaluation generatorImages reduction20237.relations [8,8,8,8,8,8,489] reduction20237.output := by lin_cert using reduction20237.terms
def image20238 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20238 : InImage map_54_251 image20238 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20238 : Bundle := named_bundle% "RealMapCertificates/relations/basis20238.json"
theorem reductionProof20238 : EqualModuloRelations reduction20238.relations reduction20238.input reduction20238.output := by lin_cert using reduction20238.terms
theorem substitutionProof20238 : IsMapEvaluation generatorImages reduction20238.relations [0,2330] reduction20238.output := by lin_cert using reduction20238.terms
def map_54_252 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image20536 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20536 : InImage map_54_252 image20536 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20536 : Bundle := named_bundle% "RealMapCertificates/relations/basis20536.json"
theorem reductionProof20536 : EqualModuloRelations reduction20536.relations reduction20536.input reduction20536.output := by lin_cert using reduction20536.terms
theorem substitutionProof20536 : IsMapEvaluation generatorImages reduction20536.relations [8,8,8,138,225] reduction20536.output := by lin_cert using reduction20536.terms
def image20537 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20537 : InImage map_54_252 image20537 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20537 : Bundle := named_bundle% "RealMapCertificates/relations/basis20537.json"
theorem reductionProof20537 : EqualModuloRelations reduction20537.relations reduction20537.input reduction20537.output := by lin_cert using reduction20537.terms
theorem substitutionProof20537 : IsMapEvaluation generatorImages reduction20537.relations [8,8,8,8,8,8,8,8,8,146] reduction20537.output := by lin_cert using reduction20537.terms
def image20538 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20538 : InImage map_54_252 image20538 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20538 : Bundle := named_bundle% "RealMapCertificates/relations/basis20538.json"
theorem reductionProof20538 : EqualModuloRelations reduction20538.relations reduction20538.input reduction20538.output := by lin_cert using reduction20538.terms
theorem substitutionProof20538 : IsMapEvaluation generatorImages reduction20538.relations [8,8,8,8,8,8,8,8,8,8,8,8,23] reduction20538.output := by lin_cert using reduction20538.terms
def image20539 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20539 : InImage map_54_252 image20539 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20539 : Bundle := named_bundle% "RealMapCertificates/relations/basis20539.json"
theorem reductionProof20539 : EqualModuloRelations reduction20539.relations reduction20539.input reduction20539.output := by lin_cert using reduction20539.terms
theorem substitutionProof20539 : IsMapEvaluation generatorImages reduction20539.relations [1,2330] reduction20539.output := by lin_cert using reduction20539.terms
def map_54_253 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image20815 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20815 : InImage map_54_253 image20815 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction20815 : Bundle := named_bundle% "RealMapCertificates/relations/basis20815.json"
theorem reductionProof20815 : EqualModuloRelations reduction20815.relations reduction20815.input reduction20815.output := by lin_cert using reduction20815.terms
theorem substitutionProof20815 : IsMapEvaluation generatorImages reduction20815.relations [2435] reduction20815.output := by lin_cert using reduction20815.terms
def map_54_254 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21063 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21063 : InImage map_54_254 image21063 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21063 : Bundle := named_bundle% "RealMapCertificates/relations/basis21063.json"
theorem reductionProof21063 : EqualModuloRelations reduction21063.relations reduction21063.input reduction21063.output := by lin_cert using reduction21063.terms
theorem substitutionProof21063 : IsMapEvaluation generatorImages reduction21063.relations [8,8,64,595] reduction21063.output := by lin_cert using reduction21063.terms
def image21064 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21064 : InImage map_54_254 image21064 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21064 : Bundle := named_bundle% "RealMapCertificates/relations/basis21064.json"
theorem reductionProof21064 : EqualModuloRelations reduction21064.relations reduction21064.input reduction21064.output := by lin_cert using reduction21064.terms
theorem substitutionProof21064 : IsMapEvaluation generatorImages reduction21064.relations [8,8,8,8,896] reduction21064.output := by lin_cert using reduction21064.terms
def image21065 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21065 : InImage map_54_254 image21065 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21065 : Bundle := named_bundle% "RealMapCertificates/relations/basis21065.json"
theorem reductionProof21065 : EqualModuloRelations reduction21065.relations reduction21065.input reduction21065.output := by lin_cert using reduction21065.terms
theorem substitutionProof21065 : IsMapEvaluation generatorImages reduction21065.relations [8,8,8,8,8,8,16,245] reduction21065.output := by lin_cert using reduction21065.terms
def map_54_255 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image21411 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21411 : InImage map_54_255 image21411 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21411 : Bundle := named_bundle% "RealMapCertificates/relations/basis21411.json"
theorem reductionProof21411 : EqualModuloRelations reduction21411.relations reduction21411.input reduction21411.output := by lin_cert using reduction21411.terms
theorem substitutionProof21411 : IsMapEvaluation generatorImages reduction21411.relations [8,8,8,8,918] reduction21411.output := by lin_cert using reduction21411.terms
def image21412 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21412 : InImage map_54_255 image21412 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21412 : Bundle := named_bundle% "RealMapCertificates/relations/basis21412.json"
theorem reductionProof21412 : EqualModuloRelations reduction21412.relations reduction21412.input reduction21412.output := by lin_cert using reduction21412.terms
theorem substitutionProof21412 : IsMapEvaluation generatorImages reduction21412.relations [8,8,8,8,8,8,8,8,8,16,64] reduction21412.output := by lin_cert using reduction21412.terms
def image21413 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21413 : InImage map_54_255 image21413 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21413 : Bundle := named_bundle% "RealMapCertificates/relations/basis21413.json"
theorem reductionProof21413 : EqualModuloRelations reduction21413.relations reduction21413.input reduction21413.output := by lin_cert using reduction21413.terms
theorem substitutionProof21413 : IsMapEvaluation generatorImages reduction21413.relations [8,8,8,8,8,8,8,8,8,8,8,9,23] reduction21413.output := by lin_cert using reduction21413.terms
def map_54_256 : Matrix 2 2 := fun i j => ([true,false,false,false] : List Bool)[i.val*2+j.val]!
def image21701 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation21701 : InImage map_54_256 image21701 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction21701 : Bundle := named_bundle% "RealMapCertificates/relations/basis21701.json"
theorem reductionProof21701 : EqualModuloRelations reduction21701.relations reduction21701.input reduction21701.output := by lin_cert using reduction21701.terms
theorem substitutionProof21701 : IsMapEvaluation generatorImages reduction21701.relations [149,686] reduction21701.output := by lin_cert using reduction21701.terms
def image21702 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation21702 : InImage map_54_256 image21702 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction21702 : Bundle := named_bundle% "RealMapCertificates/relations/basis21702.json"
theorem reductionProof21702 : EqualModuloRelations reduction21702.relations reduction21702.input reduction21702.output := by lin_cert using reduction21702.terms
theorem substitutionProof21702 : IsMapEvaluation generatorImages reduction21702.relations [0,0,64,1033] reduction21702.output := by lin_cert using reduction21702.terms
def map_54_257 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22010 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22010 : InImage map_54_257 image22010 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22010 : Bundle := named_bundle% "RealMapCertificates/relations/basis22010.json"
theorem reductionProof22010 : EqualModuloRelations reduction22010.relations reduction22010.input reduction22010.output := by lin_cert using reduction22010.terms
theorem substitutionProof22010 : IsMapEvaluation generatorImages reduction22010.relations [8,8,8,64,452] reduction22010.output := by lin_cert using reduction22010.terms
def image22011 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22011 : InImage map_54_257 image22011 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22011 : Bundle := named_bundle% "RealMapCertificates/relations/basis22011.json"
theorem reductionProof22011 : EqualModuloRelations reduction22011.relations reduction22011.input reduction22011.output := by lin_cert using reduction22011.terms
theorem substitutionProof22011 : IsMapEvaluation generatorImages reduction22011.relations [8,8,8,8,8,725] reduction22011.output := by lin_cert using reduction22011.terms
def image22012 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22012 : InImage map_54_257 image22012 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22012 : Bundle := named_bundle% "RealMapCertificates/relations/basis22012.json"
theorem reductionProof22012 : EqualModuloRelations reduction22012.relations reduction22012.input reduction22012.output := by lin_cert using reduction22012.terms
theorem substitutionProof22012 : IsMapEvaluation generatorImages reduction22012.relations [8,8,8,8,8,8,8,344] reduction22012.output := by lin_cert using reduction22012.terms
def image22013 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22013 : InImage map_54_257 image22013 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22013 : Bundle := named_bundle% "RealMapCertificates/relations/basis22013.json"
theorem reductionProof22013 : EqualModuloRelations reduction22013.relations reduction22013.input reduction22013.output := by lin_cert using reduction22013.terms
theorem substitutionProof22013 : IsMapEvaluation generatorImages reduction22013.relations [0,64,1059] reduction22013.output := by lin_cert using reduction22013.terms
def image22014 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22014 : InImage map_54_257 image22014 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22014 : Bundle := named_bundle% "RealMapCertificates/relations/basis22014.json"
theorem reductionProof22014 : EqualModuloRelations reduction22014.relations reduction22014.input reduction22014.output := by lin_cert using reduction22014.terms
theorem substitutionProof22014 : IsMapEvaluation generatorImages reduction22014.relations [0,0,0,138,725] reduction22014.output := by lin_cert using reduction22014.terms
def map_54_258 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22367 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22367 : InImage map_54_258 image22367 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22367 : Bundle := named_bundle% "RealMapCertificates/relations/basis22367.json"
theorem reductionProof22367 : EqualModuloRelations reduction22367.relations reduction22367.input reduction22367.output := by lin_cert using reduction22367.terms
theorem substitutionProof22367 : IsMapEvaluation generatorImages reduction22367.relations [8,8,8,8,954] reduction22367.output := by lin_cert using reduction22367.terms
def image22368 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22368 : InImage map_54_258 image22368 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22368 : Bundle := named_bundle% "RealMapCertificates/relations/basis22368.json"
theorem reductionProof22368 : EqualModuloRelations reduction22368.relations reduction22368.input reduction22368.output := by lin_cert using reduction22368.terms
theorem substitutionProof22368 : IsMapEvaluation generatorImages reduction22368.relations [8,8,8,8,8,8,8,8,8,8,112] reduction22368.output := by lin_cert using reduction22368.terms
def image22369 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation22369 : InImage map_54_258 image22369 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22369 : Bundle := named_bundle% "RealMapCertificates/relations/basis22369.json"
theorem reductionProof22369 : EqualModuloRelations reduction22369.relations reduction22369.input reduction22369.output := by lin_cert using reduction22369.terms
theorem substitutionProof22369 : IsMapEvaluation generatorImages reduction22369.relations [8,8,8,8,8,8,8,8,8,8,8,13,23] reduction22369.output := by lin_cert using reduction22369.terms
def image22370 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22370 : InImage map_54_258 image22370 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22370 : Bundle := named_bundle% "RealMapCertificates/relations/basis22370.json"
theorem reductionProof22370 : EqualModuloRelations reduction22370.relations reduction22370.input reduction22370.output := by lin_cert using reduction22370.terms
theorem substitutionProof22370 : IsMapEvaluation generatorImages reduction22370.relations [1,1,64,1033] reduction22370.output := by lin_cert using reduction22370.terms
def image22371 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22371 : InImage map_54_258 image22371 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22371 : Bundle := named_bundle% "RealMapCertificates/relations/basis22371.json"
theorem reductionProof22371 : EqualModuloRelations reduction22371.relations reduction22371.input reduction22371.output := by lin_cert using reduction22371.terms
theorem substitutionProof22371 : IsMapEvaluation generatorImages reduction22371.relations [0,0,0,2537] reduction22371.output := by lin_cert using reduction22371.terms
def map_54_259 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image22707 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22707 : InImage map_54_259 image22707 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22707 : Bundle := named_bundle% "RealMapCertificates/relations/basis22707.json"
theorem reductionProof22707 : EqualModuloRelations reduction22707.relations reduction22707.input reduction22707.output := by lin_cert using reduction22707.terms
theorem substitutionProof22707 : IsMapEvaluation generatorImages reduction22707.relations [8,2036] reduction22707.output := by lin_cert using reduction22707.terms
def image22708 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22708 : InImage map_54_259 image22708 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22708 : Bundle := named_bundle% "RealMapCertificates/relations/basis22708.json"
theorem reductionProof22708 : EqualModuloRelations reduction22708.relations reduction22708.input reduction22708.output := by lin_cert using reduction22708.terms
theorem substitutionProof22708 : IsMapEvaluation generatorImages reduction22708.relations [0,0,64,1076] reduction22708.output := by lin_cert using reduction22708.terms
def map_54_260 : Matrix 2 3 := fun i j => ([false,false,true,false,false,false] : List Bool)[i.val*3+j.val]!
def image23041 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23041 : InImage map_54_260 image23041 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23041 : Bundle := named_bundle% "RealMapCertificates/relations/basis23041.json"
theorem reductionProof23041 : EqualModuloRelations reduction23041.relations reduction23041.input reduction23041.output := by lin_cert using reduction23041.terms
theorem substitutionProof23041 : IsMapEvaluation generatorImages reduction23041.relations [8,8,8,64,488] reduction23041.output := by lin_cert using reduction23041.terms
def image23042 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation23042 : InImage map_54_260 image23042 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23042 : Bundle := named_bundle% "RealMapCertificates/relations/basis23042.json"
theorem reductionProof23042 : EqualModuloRelations reduction23042.relations reduction23042.input reduction23042.output := by lin_cert using reduction23042.terms
theorem substitutionProof23042 : IsMapEvaluation generatorImages reduction23042.relations [8,8,8,8,8,759] reduction23042.output := by lin_cert using reduction23042.terms
def image23043 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation23043 : InImage map_54_260 image23043 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23043 : Bundle := named_bundle% "RealMapCertificates/relations/basis23043.json"
theorem reductionProof23043 : EqualModuloRelations reduction23043.relations reduction23043.input reduction23043.output := by lin_cert using reduction23043.terms
theorem substitutionProof23043 : IsMapEvaluation generatorImages reduction23043.relations [8,8,8,8,8,8,8,8,245] reduction23043.output := by lin_cert using reduction23043.terms
def map_54_261 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image23480 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23480 : InImage map_54_261 image23480 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23480 : Bundle := named_bundle% "RealMapCertificates/relations/basis23480.json"
theorem reductionProof23480 : EqualModuloRelations reduction23480.relations reduction23480.input reduction23480.output := by lin_cert using reduction23480.terms
theorem substitutionProof23480 : IsMapEvaluation generatorImages reduction23480.relations [64,64,402] reduction23480.output := by lin_cert using reduction23480.terms
def image23481 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23481 : InImage map_54_261 image23481 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23481 : Bundle := named_bundle% "RealMapCertificates/relations/basis23481.json"
theorem reductionProof23481 : EqualModuloRelations reduction23481.relations reduction23481.input reduction23481.output := by lin_cert using reduction23481.terms
theorem substitutionProof23481 : IsMapEvaluation generatorImages reduction23481.relations [8,8,8,8,8,778] reduction23481.output := by lin_cert using reduction23481.terms
def image23482 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23482 : InImage map_54_261 image23482 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23482 : Bundle := named_bundle% "RealMapCertificates/relations/basis23482.json"
theorem reductionProof23482 : EqualModuloRelations reduction23482.relations reduction23482.input reduction23482.output := by lin_cert using reduction23482.terms
theorem substitutionProof23482 : IsMapEvaluation generatorImages reduction23482.relations [8,8,8,8,8,8,8,8,8,8,9,13,23] reduction23482.output := by lin_cert using reduction23482.terms
def image23483 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23483 : InImage map_54_261 image23483 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23483 : Bundle := named_bundle% "RealMapCertificates/relations/basis23483.json"
theorem reductionProof23483 : EqualModuloRelations reduction23483.relations reduction23483.input reduction23483.output := by lin_cert using reduction23483.terms
theorem substitutionProof23483 : IsMapEvaluation generatorImages reduction23483.relations [8,8,8,8,8,8,8,8,8,8,8,64] reduction23483.output := by lin_cert using reduction23483.terms
def map_55_55 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image302 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation302 : InImage map_55_55 image302 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction302 : Bundle := named_bundle% "RealMapCertificates/relations/basis302.json"
theorem reductionProof302 : EqualModuloRelations reduction302.relations reduction302.input reduction302.output := by lin_cert using reduction302.terms
theorem substitutionProof302 : IsMapEvaluation generatorImages reduction302.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction302.output := by lin_cert using reduction302.terms
def map_55_162 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5008 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5008 : InImage map_55_162 image5008 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5008 : Bundle := named_bundle% "RealMapCertificates/relations/basis5008.json"
theorem reductionProof5008 : EqualModuloRelations reduction5008.relations reduction5008.input reduction5008.output := by lin_cert using reduction5008.terms
theorem substitutionProof5008 : IsMapEvaluation generatorImages reduction5008.relations [0,0,641] reduction5008.output := by lin_cert using reduction5008.terms
def map_55_166 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5432 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5432 : InImage map_55_166 image5432 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5432 : Bundle := named_bundle% "RealMapCertificates/relations/basis5432.json"
theorem reductionProof5432 : EqualModuloRelations reduction5432.relations reduction5432.input reduction5432.output := by lin_cert using reduction5432.terms
theorem substitutionProof5432 : IsMapEvaluation generatorImages reduction5432.relations [0,0,0,0,0,0,0,0,0,0,606] reduction5432.output := by lin_cert using reduction5432.terms
def map_55_167 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image5532 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation5532 : InImage map_55_167 image5532 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5532 : Bundle := named_bundle% "RealMapCertificates/relations/basis5532.json"
theorem reductionProof5532 : EqualModuloRelations reduction5532.relations reduction5532.input reduction5532.output := by lin_cert using reduction5532.terms
theorem substitutionProof5532 : IsMapEvaluation generatorImages reduction5532.relations [721] reduction5532.output := by lin_cert using reduction5532.terms
def map_55_168 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5625 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5625 : InImage map_55_168 image5625 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5625 : Bundle := named_bundle% "RealMapCertificates/relations/basis5625.json"
theorem reductionProof5625 : EqualModuloRelations reduction5625.relations reduction5625.input reduction5625.output := by lin_cert using reduction5625.terms
theorem substitutionProof5625 : IsMapEvaluation generatorImages reduction5625.relations [0,0,0,700] reduction5625.output := by lin_cert using reduction5625.terms
def map_55_174 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6292 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6292 : InImage map_55_174 image6292 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6292 : Bundle := named_bundle% "RealMapCertificates/relations/basis6292.json"
theorem reductionProof6292 : EqualModuloRelations reduction6292.relations reduction6292.input reduction6292.output := by lin_cert using reduction6292.terms
theorem substitutionProof6292 : IsMapEvaluation generatorImages reduction6292.relations [804] reduction6292.output := by lin_cert using reduction6292.terms
def map_55_177 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image6650 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation6650 : InImage map_55_177 image6650 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction6650 : Bundle := named_bundle% "RealMapCertificates/relations/basis6650.json"
theorem reductionProof6650 : EqualModuloRelations reduction6650.relations reduction6650.input reduction6650.output := by lin_cert using reduction6650.terms
theorem substitutionProof6650 : IsMapEvaluation generatorImages reduction6650.relations [852] reduction6650.output := by lin_cert using reduction6650.terms
def map_55_180 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7007 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7007 : InImage map_55_180 image7007 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7007 : Bundle := named_bundle% "RealMapCertificates/relations/basis7007.json"
theorem reductionProof7007 : EqualModuloRelations reduction7007.relations reduction7007.input reduction7007.output := by lin_cert using reduction7007.terms
theorem substitutionProof7007 : IsMapEvaluation generatorImages reduction7007.relations [16,554] reduction7007.output := by lin_cert using reduction7007.terms
def map_55_181 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7163 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7163 : InImage map_55_181 image7163 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7163 : Bundle := named_bundle% "RealMapCertificates/relations/basis7163.json"
theorem reductionProof7163 : EqualModuloRelations reduction7163.relations reduction7163.input reduction7163.output := by lin_cert using reduction7163.terms
theorem substitutionProof7163 : IsMapEvaluation generatorImages reduction7163.relations [0,17,554] reduction7163.output := by lin_cert using reduction7163.terms
def map_55_182 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7249 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7249 : InImage map_55_182 image7249 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7249 : Bundle := named_bundle% "RealMapCertificates/relations/basis7249.json"
theorem reductionProof7249 : EqualModuloRelations reduction7249.relations reduction7249.input reduction7249.output := by lin_cert using reduction7249.terms
theorem substitutionProof7249 : IsMapEvaluation generatorImages reduction7249.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324] reduction7249.output := by lin_cert using reduction7249.terms
def map_55_183 : Matrix 6 1 := fun i j => ([false,true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image7372 : Vec 6 := fun i => ([false,true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation7372 : InImage map_55_183 image7372 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7372 : Bundle := named_bundle% "RealMapCertificates/relations/basis7372.json"
theorem reductionProof7372 : EqualModuloRelations reduction7372.relations reduction7372.input reduction7372.output := by lin_cert using reduction7372.terms
theorem substitutionProof7372 : IsMapEvaluation generatorImages reduction7372.relations [8,701] reduction7372.output := by lin_cert using reduction7372.terms
def map_55_184 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7516 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7516 : InImage map_55_184 image7516 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7516 : Bundle := named_bundle% "RealMapCertificates/relations/basis7516.json"
theorem reductionProof7516 : EqualModuloRelations reduction7516.relations reduction7516.input reduction7516.output := by lin_cert using reduction7516.terms
theorem substitutionProof7516 : IsMapEvaluation generatorImages reduction7516.relations [0,17,579] reduction7516.output := by lin_cert using reduction7516.terms
def map_55_186 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image7731 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation7731 : InImage map_55_186 image7731 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7731 : Bundle := named_bundle% "RealMapCertificates/relations/basis7731.json"
theorem reductionProof7731 : EqualModuloRelations reduction7731.relations reduction7731.input reduction7731.output := by lin_cert using reduction7731.terms
theorem substitutionProof7731 : IsMapEvaluation generatorImages reduction7731.relations [8,8,554] reduction7731.output := by lin_cert using reduction7731.terms
def map_55_188 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image7952 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation7952 : InImage map_55_188 image7952 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction7952 : Bundle := named_bundle% "RealMapCertificates/relations/basis7952.json"
theorem reductionProof7952 : EqualModuloRelations reduction7952.relations reduction7952.input reduction7952.output := by lin_cert using reduction7952.terms
theorem substitutionProof7952 : IsMapEvaluation generatorImages reduction7952.relations [0,0,0,0,0,916] reduction7952.output := by lin_cert using reduction7952.terms
def map_55_189 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image8082 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8082 : InImage map_55_189 image8082 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction8082 : Bundle := named_bundle% "RealMapCertificates/relations/basis8082.json"
theorem reductionProof8082 : EqualModuloRelations reduction8082.relations reduction8082.input reduction8082.output := by lin_cert using reduction8082.terms
theorem substitutionProof8082 : IsMapEvaluation generatorImages reduction8082.relations [8,8,579] reduction8082.output := by lin_cert using reduction8082.terms
def image8083 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation8083 : InImage map_55_189 image8083 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction8083 : Bundle := named_bundle% "RealMapCertificates/relations/basis8083.json"
theorem reductionProof8083 : EqualModuloRelations reduction8083.relations reduction8083.input reduction8083.output := by lin_cert using reduction8083.terms
theorem substitutionProof8083 : IsMapEvaluation generatorImages reduction8083.relations [0,0,0,0,0,0,917] reduction8083.output := by lin_cert using reduction8083.terms
def map_55_192 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image8452 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation8452 : InImage map_55_192 image8452 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8452 : Bundle := named_bundle% "RealMapCertificates/relations/basis8452.json"
theorem reductionProof8452 : EqualModuloRelations reduction8452.relations reduction8452.input reduction8452.output := by lin_cert using reduction8452.terms
theorem substitutionProof8452 : IsMapEvaluation generatorImages reduction8452.relations [8,8,16,296] reduction8452.output := by lin_cert using reduction8452.terms
def map_55_195 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image8854 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation8854 : InImage map_55_195 image8854 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction8854 : Bundle := named_bundle% "RealMapCertificates/relations/basis8854.json"
theorem reductionProof8854 : EqualModuloRelations reduction8854.relations reduction8854.input reduction8854.output := by lin_cert using reduction8854.terms
theorem substitutionProof8854 : IsMapEvaluation generatorImages reduction8854.relations [8,8,8,470] reduction8854.output := by lin_cert using reduction8854.terms
def map_55_197 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9132 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9132 : InImage map_55_197 image9132 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9132 : Bundle := named_bundle% "RealMapCertificates/relations/basis9132.json"
theorem reductionProof9132 : EqualModuloRelations reduction9132.relations reduction9132.input reduction9132.output := by lin_cert using reduction9132.terms
theorem substitutionProof9132 : IsMapEvaluation generatorImages reduction9132.relations [5,916] reduction9132.output := by lin_cert using reduction9132.terms
def map_55_198 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9290 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9290 : InImage map_55_198 image9290 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9290 : Bundle := named_bundle% "RealMapCertificates/relations/basis9290.json"
theorem reductionProof9290 : EqualModuloRelations reduction9290.relations reduction9290.input reduction9290.output := by lin_cert using reduction9290.terms
theorem substitutionProof9290 : IsMapEvaluation generatorImages reduction9290.relations [8,8,8,8,296] reduction9290.output := by lin_cert using reduction9290.terms
def map_55_199 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image9474 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation9474 : InImage map_55_199 image9474 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9474 : Bundle := named_bundle% "RealMapCertificates/relations/basis9474.json"
theorem reductionProof9474 : EqualModuloRelations reduction9474.relations reduction9474.input reduction9474.output := by lin_cert using reduction9474.terms
theorem substitutionProof9474 : IsMapEvaluation generatorImages reduction9474.relations [0,1141] reduction9474.output := by lin_cert using reduction9474.terms
def map_55_200 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9597 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9597 : InImage map_55_200 image9597 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9597 : Bundle := named_bundle% "RealMapCertificates/relations/basis9597.json"
theorem reductionProof9597 : EqualModuloRelations reduction9597.relations reduction9597.input reduction9597.output := by lin_cert using reduction9597.terms
theorem substitutionProof9597 : IsMapEvaluation generatorImages reduction9597.relations [0,0,1142] reduction9597.output := by lin_cert using reduction9597.terms
def map_55_201 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image9781 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation9781 : InImage map_55_201 image9781 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9781 : Bundle := named_bundle% "RealMapCertificates/relations/basis9781.json"
theorem reductionProof9781 : EqualModuloRelations reduction9781.relations reduction9781.input reduction9781.output := by lin_cert using reduction9781.terms
theorem substitutionProof9781 : IsMapEvaluation generatorImages reduction9781.relations [8,8,8,8,326] reduction9781.output := by lin_cert using reduction9781.terms
def map_55_202 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image9949 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation9949 : InImage map_55_202 image9949 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction9949 : Bundle := named_bundle% "RealMapCertificates/relations/basis9949.json"
theorem reductionProof9949 : EqualModuloRelations reduction9949.relations reduction9949.input reduction9949.output := by lin_cert using reduction9949.terms
theorem substitutionProof9949 : IsMapEvaluation generatorImages reduction9949.relations [0,8,916] reduction9949.output := by lin_cert using reduction9949.terms
def map_55_203 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10090 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation10090 : InImage map_55_203 image10090 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10090 : Bundle := named_bundle% "RealMapCertificates/relations/basis10090.json"
theorem reductionProof10090 : EqualModuloRelations reduction10090.relations reduction10090.input reduction10090.output := by lin_cert using reduction10090.terms
theorem substitutionProof10090 : IsMapEvaluation generatorImages reduction10090.relations [0,0,8,917] reduction10090.output := by lin_cert using reduction10090.terms
def map_55_204 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image10270 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation10270 : InImage map_55_204 image10270 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10270 : Bundle := named_bundle% "RealMapCertificates/relations/basis10270.json"
theorem reductionProof10270 : EqualModuloRelations reduction10270.relations reduction10270.input reduction10270.output := by lin_cert using reduction10270.terms
theorem substitutionProof10270 : IsMapEvaluation generatorImages reduction10270.relations [8,8,8,8,16,183] reduction10270.output := by lin_cert using reduction10270.terms
def map_55_205 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10474 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10474 : InImage map_55_205 image10474 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10474 : Bundle := named_bundle% "RealMapCertificates/relations/basis10474.json"
theorem reductionProof10474 : EqualModuloRelations reduction10474.relations reduction10474.input reduction10474.output := by lin_cert using reduction10474.terms
theorem substitutionProof10474 : IsMapEvaluation generatorImages reduction10474.relations [0,8,952] reduction10474.output := by lin_cert using reduction10474.terms
def map_55_206 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image10615 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10615 : InImage map_55_206 image10615 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction10615 : Bundle := named_bundle% "RealMapCertificates/relations/basis10615.json"
theorem reductionProof10615 : EqualModuloRelations reduction10615.relations reduction10615.input reduction10615.output := by lin_cert using reduction10615.terms
theorem substitutionProof10615 : IsMapEvaluation generatorImages reduction10615.relations [0,0,8,953] reduction10615.output := by lin_cert using reduction10615.terms
def image10616 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation10616 : InImage map_55_206 image10616 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction10616 : Bundle := named_bundle% "RealMapCertificates/relations/basis10616.json"
theorem reductionProof10616 : EqualModuloRelations reduction10616.relations reduction10616.input reduction10616.output := by lin_cert using reduction10616.terms
theorem substitutionProof10616 : IsMapEvaluation generatorImages reduction10616.relations [0,0,0,1239] reduction10616.output := by lin_cert using reduction10616.terms
def map_55_207 : Matrix 5 1 := fun i j => ([true,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image10822 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation10822 : InImage map_55_207 image10822 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10822 : Bundle := named_bundle% "RealMapCertificates/relations/basis10822.json"
theorem reductionProof10822 : EqualModuloRelations reduction10822.relations reduction10822.input reduction10822.output := by lin_cert using reduction10822.terms
theorem substitutionProof10822 : IsMapEvaluation generatorImages reduction10822.relations [8,8,8,8,8,253] reduction10822.output := by lin_cert using reduction10822.terms
def map_55_208 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image10994 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation10994 : InImage map_55_208 image10994 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction10994 : Bundle := named_bundle% "RealMapCertificates/relations/basis10994.json"
theorem reductionProof10994 : EqualModuloRelations reduction10994.relations reduction10994.input reduction10994.output := by lin_cert using reduction10994.terms
theorem substitutionProof10994 : IsMapEvaluation generatorImages reduction10994.relations [0,8,16,635] reduction10994.output := by lin_cert using reduction10994.terms
def map_55_209 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11145 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11145 : InImage map_55_209 image11145 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11145 : Bundle := named_bundle% "RealMapCertificates/relations/basis11145.json"
theorem reductionProof11145 : EqualModuloRelations reduction11145.relations reduction11145.input reduction11145.output := by lin_cert using reduction11145.terms
theorem substitutionProof11145 : IsMapEvaluation generatorImages reduction11145.relations [0,0,8,16,636] reduction11145.output := by lin_cert using reduction11145.terms
def map_55_210 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image11331 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation11331 : InImage map_55_210 image11331 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11331 : Bundle := named_bundle% "RealMapCertificates/relations/basis11331.json"
theorem reductionProof11331 : EqualModuloRelations reduction11331.relations reduction11331.input reduction11331.output := by lin_cert using reduction11331.terms
theorem substitutionProof11331 : IsMapEvaluation generatorImages reduction11331.relations [8,8,8,8,8,8,183] reduction11331.output := by lin_cert using reduction11331.terms
def map_55_211 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image11542 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation11542 : InImage map_55_211 image11542 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11542 : Bundle := named_bundle% "RealMapCertificates/relations/basis11542.json"
theorem reductionProof11542 : EqualModuloRelations reduction11542.relations reduction11542.input reduction11542.output := by lin_cert using reduction11542.terms
theorem substitutionProof11542 : IsMapEvaluation generatorImages reduction11542.relations [0,8,8,805] reduction11542.output := by lin_cert using reduction11542.terms
def map_55_212 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image11675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11675 : InImage map_55_212 image11675 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction11675 : Bundle := named_bundle% "RealMapCertificates/relations/basis11675.json"
theorem reductionProof11675 : EqualModuloRelations reduction11675.relations reduction11675.input reduction11675.output := by lin_cert using reduction11675.terms
theorem substitutionProof11675 : IsMapEvaluation generatorImages reduction11675.relations [0,0,8,8,806] reduction11675.output := by lin_cert using reduction11675.terms
def map_55_213 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image11907 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation11907 : InImage map_55_213 image11907 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction11907 : Bundle := named_bundle% "RealMapCertificates/relations/basis11907.json"
theorem reductionProof11907 : EqualModuloRelations reduction11907.relations reduction11907.input reduction11907.output := by lin_cert using reduction11907.terms
theorem substitutionProof11907 : IsMapEvaluation generatorImages reduction11907.relations [8,8,8,8,8,8,200] reduction11907.output := by lin_cert using reduction11907.terms
def image11908 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation11908 : InImage map_55_213 image11908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction11908 : Bundle := named_bundle% "RealMapCertificates/relations/basis11908.json"
theorem reductionProof11908 : EqualModuloRelations reduction11908.relations reduction11908.input reduction11908.output := by lin_cert using reduction11908.terms
theorem substitutionProof11908 : IsMapEvaluation generatorImages reduction11908.relations [0,1396] reduction11908.output := by lin_cert using reduction11908.terms
def map_55_214 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image12117 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12117 : InImage map_55_214 image12117 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12117 : Bundle := named_bundle% "RealMapCertificates/relations/basis12117.json"
theorem reductionProof12117 : EqualModuloRelations reduction12117.relations reduction12117.input reduction12117.output := by lin_cert using reduction12117.terms
theorem substitutionProof12117 : IsMapEvaluation generatorImages reduction12117.relations [0,8,8,8,635] reduction12117.output := by lin_cert using reduction12117.terms
def image12118 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation12118 : InImage map_55_214 image12118 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12118 : Bundle := named_bundle% "RealMapCertificates/relations/basis12118.json"
theorem reductionProof12118 : EqualModuloRelations reduction12118.relations reduction12118.input reduction12118.output := by lin_cert using reduction12118.terms
theorem substitutionProof12118 : IsMapEvaluation generatorImages reduction12118.relations [0,0,1397] reduction12118.output := by lin_cert using reduction12118.terms
def map_55_215 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image12280 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation12280 : InImage map_55_215 image12280 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12280 : Bundle := named_bundle% "RealMapCertificates/relations/basis12280.json"
theorem reductionProof12280 : EqualModuloRelations reduction12280.relations reduction12280.input reduction12280.output := by lin_cert using reduction12280.terms
theorem substitutionProof12280 : IsMapEvaluation generatorImages reduction12280.relations [0,0,8,8,8,636] reduction12280.output := by lin_cert using reduction12280.terms
def map_55_216 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image12474 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12474 : InImage map_55_216 image12474 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction12474 : Bundle := named_bundle% "RealMapCertificates/relations/basis12474.json"
theorem reductionProof12474 : EqualModuloRelations reduction12474.relations reduction12474.input reduction12474.output := by lin_cert using reduction12474.terms
theorem substitutionProof12474 : IsMapEvaluation generatorImages reduction12474.relations [8,8,8,8,8,8,16,111] reduction12474.output := by lin_cert using reduction12474.terms
def image12475 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation12475 : InImage map_55_216 image12475 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction12475 : Bundle := named_bundle% "RealMapCertificates/relations/basis12475.json"
theorem reductionProof12475 : EqualModuloRelations reduction12475.relations reduction12475.input reduction12475.output := by lin_cert using reduction12475.terms
theorem substitutionProof12475 : IsMapEvaluation generatorImages reduction12475.relations [0,1469] reduction12475.output := by lin_cert using reduction12475.terms
def map_55_218 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image12827 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation12827 : InImage map_55_218 image12827 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction12827 : Bundle := named_bundle% "RealMapCertificates/relations/basis12827.json"
theorem reductionProof12827 : EqualModuloRelations reduction12827.relations reduction12827.input reduction12827.output := by lin_cert using reduction12827.terms
theorem substitutionProof12827 : IsMapEvaluation generatorImages reduction12827.relations [17,969] reduction12827.output := by lin_cert using reduction12827.terms
def map_55_219 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image13055 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13055 : InImage map_55_219 image13055 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction13055 : Bundle := named_bundle% "RealMapCertificates/relations/basis13055.json"
theorem reductionProof13055 : EqualModuloRelations reduction13055.relations reduction13055.input reduction13055.output := by lin_cert using reduction13055.terms
theorem substitutionProof13055 : IsMapEvaluation generatorImages reduction13055.relations [59,635] reduction13055.output := by lin_cert using reduction13055.terms
def image13056 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation13056 : InImage map_55_219 image13056 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction13056 : Bundle := named_bundle% "RealMapCertificates/relations/basis13056.json"
theorem reductionProof13056 : EqualModuloRelations reduction13056.relations reduction13056.input reduction13056.output := by lin_cert using reduction13056.terms
theorem substitutionProof13056 : IsMapEvaluation generatorImages reduction13056.relations [17,17,636] reduction13056.output := by lin_cert using reduction13056.terms
def image13057 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation13057 : InImage map_55_219 image13057 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction13057 : Bundle := named_bundle% "RealMapCertificates/relations/basis13057.json"
theorem reductionProof13057 : EqualModuloRelations reduction13057.relations reduction13057.input reduction13057.output := by lin_cert using reduction13057.terms
theorem substitutionProof13057 : IsMapEvaluation generatorImages reduction13057.relations [8,8,8,8,8,8,8,153] reduction13057.output := by lin_cert using reduction13057.terms
def map_55_220 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image13246 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation13246 : InImage map_55_220 image13246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13246 : Bundle := named_bundle% "RealMapCertificates/relations/basis13246.json"
theorem reductionProof13246 : EqualModuloRelations reduction13246.relations reduction13246.input reduction13246.output := by lin_cert using reduction13246.terms
theorem substitutionProof13246 : IsMapEvaluation generatorImages reduction13246.relations [0,0,0,0,0,1471] reduction13246.output := by lin_cert using reduction13246.terms
def map_55_221 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image13398 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13398 : InImage map_55_221 image13398 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13398 : Bundle := named_bundle% "RealMapCertificates/relations/basis13398.json"
theorem reductionProof13398 : EqualModuloRelations reduction13398.relations reduction13398.input reduction13398.output := by lin_cert using reduction13398.terms
theorem substitutionProof13398 : IsMapEvaluation generatorImages reduction13398.relations [17,1030] reduction13398.output := by lin_cert using reduction13398.terms
def image13399 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13399 : InImage map_55_221 image13399 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13399 : Bundle := named_bundle% "RealMapCertificates/relations/basis13399.json"
theorem reductionProof13399 : EqualModuloRelations reduction13399.relations reduction13399.input reduction13399.output := by lin_cert using reduction13399.terms
theorem substitutionProof13399 : IsMapEvaluation generatorImages reduction13399.relations [0,0,0,0,1499] reduction13399.output := by lin_cert using reduction13399.terms
end RealMapCertificates
