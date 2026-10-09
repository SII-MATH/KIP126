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
  | 60 => [[4,5,5,7]]
  | 64 => []
  | 78 => [[4,4,4,5,6]]
  | 111 => [[4,4,4,4,4,7]]
  | 117 => [[4,4,4,4,5,6]]
  | 137 => []
  | 138 => [[0,4,6,12]]
  | 147 => [[0,4,8,12]]
  | 149 => [[4,9,12]]
  | 185 => [[0,4,4,8,12]]
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
  | 556 => [[0,4,4,4,4,4,4,8,12]]
  | 595 => [[4,4,4,4,4,6,8,12]]
  | 606 => []
  | 635 => []
  | 636 => [[0,4,4,4,4,4,4,4,6,12]]
  | 663 => [[0,4,4,4,4,4,4,4,8,12]]
  | 685 => [[4,4,4,4,4,4,4,9,12]]
  | 721 => [[3,4,4,4,4,4,4,4,4,4,4,4,4,4]]
  | 722 => [[4,4,4,4,4,4,6,8,12]]
  | 725 => []
  | 806 => [[0,4,4,4,4,4,4,4,4,8,12]]
  | 871 => [[4,4,4,4,4,4,4,6,8,12]]
  | 1033 => []
  | 1059 => []
  | 1076 => []
  | 1301 => []
  | 1471 => []
  | 1514 => []
  | 1534 => [[0,0,4,4,4,4,4,4,4,8,12,12]]
  | 1566 => []
  | 1567 => []
  | 1589 => []
  | 1591 => []
  | 1620 => []
  | 1686 => [[4,4,4,9,12,12,12]]
  | 1734 => []
  | 1735 => [[0,0,4,4,5,8,12,12,12]]
  | 1736 => []
  | 1737 => []
  | 1749 => [[0,0,4,4,4,4,4,4,4,4,8,12,12]]
  | 1812 => []
  | 1829 => [[0,0,4,4,4,4,4,4,4,4,9,12,12]]
  | 1891 => []
  | 2161 => []
  | 2276 => []
  | 2330 => []
  | 2435 => [[4,4,4,4,4,4,4,5,7,9,12,12]]
  | 2537 => []
  | 2579 => [[4,4,4,4,4,4,4,5,5,10,12,12]]
  | 2738 => [[4,4,4,4,4,4,4,5,7,10,12,12]]
  | _ => []
def map_55_222 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image13605 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation13605 : InImage map_55_222 image13605 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction13605 : Bundle := named_bundle% "RealMapCertificates/relations/basis13605.json"
theorem reductionProof13605 : EqualModuloRelations reduction13605.relations reduction13605.input reduction13605.output := by lin_cert using reduction13605.terms
theorem substitutionProof13605 : IsMapEvaluation generatorImages reduction13605.relations [17,17,663] reduction13605.output := by lin_cert using reduction13605.terms
def image13606 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13606 : InImage map_55_222 image13606 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction13606 : Bundle := named_bundle% "RealMapCertificates/relations/basis13606.json"
theorem reductionProof13606 : EqualModuloRelations reduction13606.relations reduction13606.input reduction13606.output := by lin_cert using reduction13606.terms
theorem substitutionProof13606 : IsMapEvaluation generatorImages reduction13606.relations [8,8,8,8,8,8,8,8,111] reduction13606.output := by lin_cert using reduction13606.terms
def map_55_224 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image13944 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation13944 : InImage map_55_224 image13944 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction13944 : Bundle := named_bundle% "RealMapCertificates/relations/basis13944.json"
theorem reductionProof13944 : EqualModuloRelations reduction13944.relations reduction13944.input reduction13944.output := by lin_cert using reduction13944.terms
theorem substitutionProof13944 : IsMapEvaluation generatorImages reduction13944.relations [16,17,685] reduction13944.output := by lin_cert using reduction13944.terms
def map_55_225 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image14174 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14174 : InImage map_55_225 image14174 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction14174 : Bundle := named_bundle% "RealMapCertificates/relations/basis14174.json"
theorem reductionProof14174 : EqualModuloRelations reduction14174.relations reduction14174.input reduction14174.output := by lin_cert using reduction14174.terms
theorem substitutionProof14174 : IsMapEvaluation generatorImages reduction14174.relations [8,42,635] reduction14174.output := by lin_cert using reduction14174.terms
def image14175 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14175 : InImage map_55_225 image14175 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction14175 : Bundle := named_bundle% "RealMapCertificates/relations/basis14175.json"
theorem reductionProof14175 : EqualModuloRelations reduction14175.relations reduction14175.input reduction14175.output := by lin_cert using reduction14175.terms
theorem substitutionProof14175 : IsMapEvaluation generatorImages reduction14175.relations [8,8,8,8,8,8,8,8,117] reduction14175.output := by lin_cert using reduction14175.terms
def image14176 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14176 : InImage map_55_225 image14176 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction14176 : Bundle := named_bundle% "RealMapCertificates/relations/basis14176.json"
theorem reductionProof14176 : EqualModuloRelations reduction14176.relations reduction14176.input reduction14176.output := by lin_cert using reduction14176.terms
theorem substitutionProof14176 : IsMapEvaluation generatorImages reduction14176.relations [0,0,0,64,635] reduction14176.output := by lin_cert using reduction14176.terms
def map_55_226 : Matrix 1 1 := fun i j => ([false] : List Bool)[i.val*1+j.val]!
def image14364 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14364 : InImage map_55_226 image14364 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14364 : Bundle := named_bundle% "RealMapCertificates/relations/basis14364.json"
theorem reductionProof14364 : EqualModuloRelations reduction14364.relations reduction14364.input reduction14364.output := by lin_cert using reduction14364.terms
theorem substitutionProof14364 : IsMapEvaluation generatorImages reduction14364.relations [0,0,0,0,64,636] reduction14364.output := by lin_cert using reduction14364.terms
def map_55_227 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image14518 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation14518 : InImage map_55_227 image14518 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction14518 : Bundle := named_bundle% "RealMapCertificates/relations/basis14518.json"
theorem reductionProof14518 : EqualModuloRelations reduction14518.relations reduction14518.input reduction14518.output := by lin_cert using reduction14518.terms
theorem substitutionProof14518 : IsMapEvaluation generatorImages reduction14518.relations [8,17,871] reduction14518.output := by lin_cert using reduction14518.terms
def map_55_228 : Matrix 1 4 := fun i j => ([false,true,false,false] : List Bool)[i.val*4+j.val]!
def image14739 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14739 : InImage map_55_228 image14739 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction14739 : Bundle := named_bundle% "RealMapCertificates/relations/basis14739.json"
theorem reductionProof14739 : EqualModuloRelations reduction14739.relations reduction14739.input reduction14739.output := by lin_cert using reduction14739.terms
theorem substitutionProof14739 : IsMapEvaluation generatorImages reduction14739.relations [8,17,17,556] reduction14739.output := by lin_cert using reduction14739.terms
def image14740 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation14740 : InImage map_55_228 image14740 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction14740 : Bundle := named_bundle% "RealMapCertificates/relations/basis14740.json"
theorem reductionProof14740 : EqualModuloRelations reduction14740.relations reduction14740.input reduction14740.output := by lin_cert using reduction14740.terms
theorem substitutionProof14740 : IsMapEvaluation generatorImages reduction14740.relations [8,8,8,8,8,8,8,8,16,50] reduction14740.output := by lin_cert using reduction14740.terms
def image14741 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14741 : InImage map_55_228 image14741 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction14741 : Bundle := named_bundle% "RealMapCertificates/relations/basis14741.json"
theorem reductionProof14741 : EqualModuloRelations reduction14741.relations reduction14741.input reduction14741.output := by lin_cert using reduction14741.terms
theorem substitutionProof14741 : IsMapEvaluation generatorImages reduction14741.relations [0,0,0,0,0,0,1591] reduction14741.output := by lin_cert using reduction14741.terms
def image14742 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation14742 : InImage map_55_228 image14742 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction14742 : Bundle := named_bundle% "RealMapCertificates/relations/basis14742.json"
theorem reductionProof14742 : EqualModuloRelations reduction14742.relations reduction14742.input reduction14742.output := by lin_cert using reduction14742.terms
theorem substitutionProof14742 : IsMapEvaluation generatorImages reduction14742.relations [0,0,0,0,0,0,1589] reduction14742.output := by lin_cert using reduction14742.terms
def map_55_229 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image14962 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14962 : InImage map_55_229 image14962 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction14962 : Bundle := named_bundle% "RealMapCertificates/relations/basis14962.json"
theorem reductionProof14962 : EqualModuloRelations reduction14962.relations reduction14962.input reduction14962.output := by lin_cert using reduction14962.terms
theorem substitutionProof14962 : IsMapEvaluation generatorImages reduction14962.relations [5,1471] reduction14962.output := by lin_cert using reduction14962.terms
def image14963 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation14963 : InImage map_55_229 image14963 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction14963 : Bundle := named_bundle% "RealMapCertificates/relations/basis14963.json"
theorem reductionProof14963 : EqualModuloRelations reduction14963.relations reduction14963.input reduction14963.output := by lin_cert using reduction14963.terms
theorem substitutionProof14963 : IsMapEvaluation generatorImages reduction14963.relations [0,0,0,0,0,0,0,0,1566] reduction14963.output := by lin_cert using reduction14963.terms
def map_55_230 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image15109 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15109 : InImage map_55_230 image15109 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction15109 : Bundle := named_bundle% "RealMapCertificates/relations/basis15109.json"
theorem reductionProof15109 : EqualModuloRelations reduction15109.relations reduction15109.input reduction15109.output := by lin_cert using reduction15109.terms
theorem substitutionProof15109 : IsMapEvaluation generatorImages reduction15109.relations [8,8,17,685] reduction15109.output := by lin_cert using reduction15109.terms
def map_55_231 : Matrix 5 3 := fun i j => ([false,true,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image15359 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15359 : InImage map_55_231 image15359 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction15359 : Bundle := named_bundle% "RealMapCertificates/relations/basis15359.json"
theorem reductionProof15359 : EqualModuloRelations reduction15359.relations reduction15359.input reduction15359.output := by lin_cert using reduction15359.terms
theorem substitutionProof15359 : IsMapEvaluation generatorImages reduction15359.relations [8,8,17,17,403] reduction15359.output := by lin_cert using reduction15359.terms
def image15360 : Vec 5 := fun i => ([true,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15360 : InImage map_55_231 image15360 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction15360 : Bundle := named_bundle% "RealMapCertificates/relations/basis15360.json"
theorem reductionProof15360 : EqualModuloRelations reduction15360.relations reduction15360.input reduction15360.output := by lin_cert using reduction15360.terms
theorem substitutionProof15360 : IsMapEvaluation generatorImages reduction15360.relations [8,8,8,8,8,8,8,8,8,78] reduction15360.output := by lin_cert using reduction15360.terms
def image15361 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation15361 : InImage map_55_231 image15361 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction15361 : Bundle := named_bundle% "RealMapCertificates/relations/basis15361.json"
theorem reductionProof15361 : EqualModuloRelations reduction15361.relations reduction15361.input reduction15361.output := by lin_cert using reduction15361.terms
theorem substitutionProof15361 : IsMapEvaluation generatorImages reduction15361.relations [0,1734] reduction15361.output := by lin_cert using reduction15361.terms
def map_55_232 : Matrix 0 2 := fun i j => ([] : List Bool)[i.val*2+j.val]!
def image15580 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15580 : InImage map_55_232 image15580 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15580 : Bundle := named_bundle% "RealMapCertificates/relations/basis15580.json"
theorem reductionProof15580 : EqualModuloRelations reduction15580.relations reduction15580.input reduction15580.output := by lin_cert using reduction15580.terms
theorem substitutionProof15580 : IsMapEvaluation generatorImages reduction15580.relations [0,1749] reduction15580.output := by lin_cert using reduction15580.terms
def image15581 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation15581 : InImage map_55_232 image15581 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15581 : Bundle := named_bundle% "RealMapCertificates/relations/basis15581.json"
theorem reductionProof15581 : EqualModuloRelations reduction15581.relations reduction15581.input reduction15581.output := by lin_cert using reduction15581.terms
theorem substitutionProof15581 : IsMapEvaluation generatorImages reduction15581.relations [0,0,0,0,0,64,685] reduction15581.output := by lin_cert using reduction15581.terms
def map_55_233 : Matrix 1 2 := fun i j => ([true,false] : List Bool)[i.val*2+j.val]!
def image15763 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation15763 : InImage map_55_233 image15763 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction15763 : Bundle := named_bundle% "RealMapCertificates/relations/basis15763.json"
theorem reductionProof15763 : EqualModuloRelations reduction15763.relations reduction15763.input reduction15763.output := by lin_cert using reduction15763.terms
theorem substitutionProof15763 : IsMapEvaluation generatorImages reduction15763.relations [8,8,17,722] reduction15763.output := by lin_cert using reduction15763.terms
def image15764 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation15764 : InImage map_55_233 image15764 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction15764 : Bundle := named_bundle% "RealMapCertificates/relations/basis15764.json"
theorem reductionProof15764 : EqualModuloRelations reduction15764.relations reduction15764.input reduction15764.output := by lin_cert using reduction15764.terms
theorem substitutionProof15764 : IsMapEvaluation generatorImages reduction15764.relations [0,0,0,0,0,0,138,452] reduction15764.output := by lin_cert using reduction15764.terms
def map_55_234 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image16004 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16004 : InImage map_55_234 image16004 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction16004 : Bundle := named_bundle% "RealMapCertificates/relations/basis16004.json"
theorem reductionProof16004 : EqualModuloRelations reduction16004.relations reduction16004.input reduction16004.output := by lin_cert using reduction16004.terms
theorem substitutionProof16004 : IsMapEvaluation generatorImages reduction16004.relations [8,8,17,17,433] reduction16004.output := by lin_cert using reduction16004.terms
def image16005 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16005 : InImage map_55_234 image16005 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction16005 : Bundle := named_bundle% "RealMapCertificates/relations/basis16005.json"
theorem reductionProof16005 : EqualModuloRelations reduction16005.relations reduction16005.input reduction16005.output := by lin_cert using reduction16005.terms
theorem substitutionProof16005 : IsMapEvaluation generatorImages reduction16005.relations [8,8,8,8,8,8,8,8,8,8,50] reduction16005.output := by lin_cert using reduction16005.terms
def image16006 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16006 : InImage map_55_234 image16006 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction16006 : Bundle := named_bundle% "RealMapCertificates/relations/basis16006.json"
theorem reductionProof16006 : EqualModuloRelations reduction16006.relations reduction16006.input reduction16006.output := by lin_cert using reduction16006.terms
theorem substitutionProof16006 : IsMapEvaluation generatorImages reduction16006.relations [0,8,1471] reduction16006.output := by lin_cert using reduction16006.terms
def map_55_235 : Matrix 4 1 := fun i j => ([false,false,false,false] : List Bool)[i.val*1+j.val]!
def image16246 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation16246 : InImage map_55_235 image16246 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16246 : Bundle := named_bundle% "RealMapCertificates/relations/basis16246.json"
theorem reductionProof16246 : EqualModuloRelations reduction16246.relations reduction16246.input reduction16246.output := by lin_cert using reduction16246.terms
theorem substitutionProof16246 : IsMapEvaluation generatorImages reduction16246.relations [0,1829] reduction16246.output := by lin_cert using reduction16246.terms
def map_55_236 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image16425 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16425 : InImage map_55_236 image16425 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction16425 : Bundle := named_bundle% "RealMapCertificates/relations/basis16425.json"
theorem reductionProof16425 : EqualModuloRelations reduction16425.relations reduction16425.input reduction16425.output := by lin_cert using reduction16425.terms
theorem substitutionProof16425 : IsMapEvaluation generatorImages reduction16425.relations [8,8,16,17,452] reduction16425.output := by lin_cert using reduction16425.terms
def map_55_237 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image16675 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16675 : InImage map_55_237 image16675 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction16675 : Bundle := named_bundle% "RealMapCertificates/relations/basis16675.json"
theorem reductionProof16675 : EqualModuloRelations reduction16675.relations reduction16675.input reduction16675.output := by lin_cert using reduction16675.terms
theorem substitutionProof16675 : IsMapEvaluation generatorImages reduction16675.relations [64,806] reduction16675.output := by lin_cert using reduction16675.terms
def image16676 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16676 : InImage map_55_237 image16676 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction16676 : Bundle := named_bundle% "RealMapCertificates/relations/basis16676.json"
theorem reductionProof16676 : EqualModuloRelations reduction16676.relations reduction16676.input reduction16676.output := by lin_cert using reduction16676.terms
theorem substitutionProof16676 : IsMapEvaluation generatorImages reduction16676.relations [8,8,8,42,402] reduction16676.output := by lin_cert using reduction16676.terms
def image16677 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation16677 : InImage map_55_237 image16677 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction16677 : Bundle := named_bundle% "RealMapCertificates/relations/basis16677.json"
theorem reductionProof16677 : EqualModuloRelations reduction16677.relations reduction16677.input reduction16677.output := by lin_cert using reduction16677.terms
theorem substitutionProof16677 : IsMapEvaluation generatorImages reduction16677.relations [8,8,8,8,8,8,8,8,8,8,56] reduction16677.output := by lin_cert using reduction16677.terms
def image16678 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16678 : InImage map_55_237 image16678 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction16678 : Bundle := named_bundle% "RealMapCertificates/relations/basis16678.json"
theorem reductionProof16678 : EqualModuloRelations reduction16678.relations reduction16678.input reduction16678.output := by lin_cert using reduction16678.terms
theorem substitutionProof16678 : IsMapEvaluation generatorImages reduction16678.relations [0,8,1514] reduction16678.output := by lin_cert using reduction16678.terms
def map_55_238 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image16907 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16907 : InImage map_55_238 image16907 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction16907 : Bundle := named_bundle% "RealMapCertificates/relations/basis16907.json"
theorem reductionProof16907 : EqualModuloRelations reduction16907.relations reduction16907.input reduction16907.output := by lin_cert using reduction16907.terms
theorem substitutionProof16907 : IsMapEvaluation generatorImages reduction16907.relations [0,8,1534] reduction16907.output := by lin_cert using reduction16907.terms
def image16908 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation16908 : InImage map_55_238 image16908 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction16908 : Bundle := named_bundle% "RealMapCertificates/relations/basis16908.json"
theorem reductionProof16908 : EqualModuloRelations reduction16908.relations reduction16908.input reduction16908.output := by lin_cert using reduction16908.terms
theorem substitutionProof16908 : IsMapEvaluation generatorImages reduction16908.relations [0,0,17,1301] reduction16908.output := by lin_cert using reduction16908.terms
def map_55_239 : Matrix 4 1 := fun i j => ([true,false,false,false] : List Bool)[i.val*1+j.val]!
def image17116 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation17116 : InImage map_55_239 image17116 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17116 : Bundle := named_bundle% "RealMapCertificates/relations/basis17116.json"
theorem reductionProof17116 : EqualModuloRelations reduction17116.relations reduction17116.input reduction17116.output := by lin_cert using reduction17116.terms
theorem substitutionProof17116 : IsMapEvaluation generatorImages reduction17116.relations [8,8,8,17,595] reduction17116.output := by lin_cert using reduction17116.terms
def map_55_240 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image17376 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17376 : InImage map_55_240 image17376 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction17376 : Bundle := named_bundle% "RealMapCertificates/relations/basis17376.json"
theorem reductionProof17376 : EqualModuloRelations reduction17376.relations reduction17376.input reduction17376.output := by lin_cert using reduction17376.terms
theorem substitutionProof17376 : IsMapEvaluation generatorImages reduction17376.relations [8,64,636] reduction17376.output := by lin_cert using reduction17376.terms
def image17377 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17377 : InImage map_55_240 image17377 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction17377 : Bundle := named_bundle% "RealMapCertificates/relations/basis17377.json"
theorem reductionProof17377 : EqualModuloRelations reduction17377.relations reduction17377.input reduction17377.output := by lin_cert using reduction17377.terms
theorem substitutionProof17377 : IsMapEvaluation generatorImages reduction17377.relations [8,8,8,17,17,298] reduction17377.output := by lin_cert using reduction17377.terms
def image17378 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation17378 : InImage map_55_240 image17378 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction17378 : Bundle := named_bundle% "RealMapCertificates/relations/basis17378.json"
theorem reductionProof17378 : EqualModuloRelations reduction17378.relations reduction17378.input reduction17378.output := by lin_cert using reduction17378.terms
theorem substitutionProof17378 : IsMapEvaluation generatorImages reduction17378.relations [8,8,8,8,8,8,8,8,8,8,16,17] reduction17378.output := by lin_cert using reduction17378.terms
def image17379 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17379 : InImage map_55_240 image17379 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction17379 : Bundle := named_bundle% "RealMapCertificates/relations/basis17379.json"
theorem reductionProof17379 : EqualModuloRelations reduction17379.relations reduction17379.input reduction17379.output := by lin_cert using reduction17379.terms
theorem substitutionProof17379 : IsMapEvaluation generatorImages reduction17379.relations [0,8,16,1033] reduction17379.output := by lin_cert using reduction17379.terms
def map_55_241 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image17670 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17670 : InImage map_55_241 image17670 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction17670 : Bundle := named_bundle% "RealMapCertificates/relations/basis17670.json"
theorem reductionProof17670 : EqualModuloRelations reduction17670.relations reduction17670.input reduction17670.output := by lin_cert using reduction17670.terms
theorem substitutionProof17670 : IsMapEvaluation generatorImages reduction17670.relations [5,64,685] reduction17670.output := by lin_cert using reduction17670.terms
def image17671 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation17671 : InImage map_55_241 image17671 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction17671 : Bundle := named_bundle% "RealMapCertificates/relations/basis17671.json"
theorem reductionProof17671 : EqualModuloRelations reduction17671.relations reduction17671.input reduction17671.output := by lin_cert using reduction17671.terms
theorem substitutionProof17671 : IsMapEvaluation generatorImages reduction17671.relations [0,0,8,17,1033] reduction17671.output := by lin_cert using reduction17671.terms
def map_55_242 : Matrix 2 1 := fun i j => ([true,false] : List Bool)[i.val*1+j.val]!
def image17877 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation17877 : InImage map_55_242 image17877 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction17877 : Bundle := named_bundle% "RealMapCertificates/relations/basis17877.json"
theorem reductionProof17877 : EqualModuloRelations reduction17877.relations reduction17877.input reduction17877.output := by lin_cert using reduction17877.terms
theorem substitutionProof17877 : IsMapEvaluation generatorImages reduction17877.relations [8,8,8,8,17,452] reduction17877.output := by lin_cert using reduction17877.terms
def map_55_243 : Matrix 4 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image18159 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18159 : InImage map_55_243 image18159 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18159 : Bundle := named_bundle% "RealMapCertificates/relations/basis18159.json"
theorem reductionProof18159 : EqualModuloRelations reduction18159.relations reduction18159.input reduction18159.output := by lin_cert using reduction18159.terms
theorem substitutionProof18159 : IsMapEvaluation generatorImages reduction18159.relations [8,64,663] reduction18159.output := by lin_cert using reduction18159.terms
def image18160 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18160 : InImage map_55_243 image18160 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18160 : Bundle := named_bundle% "RealMapCertificates/relations/basis18160.json"
theorem reductionProof18160 : EqualModuloRelations reduction18160.relations reduction18160.input reduction18160.output := by lin_cert using reduction18160.terms
theorem substitutionProof18160 : IsMapEvaluation generatorImages reduction18160.relations [8,8,8,8,17,17,225] reduction18160.output := by lin_cert using reduction18160.terms
def image18161 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation18161 : InImage map_55_243 image18161 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18161 : Bundle := named_bundle% "RealMapCertificates/relations/basis18161.json"
theorem reductionProof18161 : EqualModuloRelations reduction18161.relations reduction18161.input reduction18161.output := by lin_cert using reduction18161.terms
theorem substitutionProof18161 : IsMapEvaluation generatorImages reduction18161.relations [8,8,8,8,8,8,8,8,8,8,8,40] reduction18161.output := by lin_cert using reduction18161.terms
def image18162 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18162 : InImage map_55_243 image18162 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18162 : Bundle := named_bundle% "RealMapCertificates/relations/basis18162.json"
theorem reductionProof18162 : EqualModuloRelations reduction18162.relations reduction18162.input reduction18162.output := by lin_cert using reduction18162.terms
theorem substitutionProof18162 : IsMapEvaluation generatorImages reduction18162.relations [0,8,8,1301] reduction18162.output := by lin_cert using reduction18162.terms
def image18163 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation18163 : InImage map_55_243 image18163 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18163 : Bundle := named_bundle% "RealMapCertificates/relations/basis18163.json"
theorem reductionProof18163 : EqualModuloRelations reduction18163.relations reduction18163.input reduction18163.output := by lin_cert using reduction18163.terms
theorem substitutionProof18163 : IsMapEvaluation generatorImages reduction18163.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1686] reduction18163.output := by lin_cert using reduction18163.terms
def map_55_244 : Matrix 1 2 := fun i j => ([false,false] : List Bool)[i.val*2+j.val]!
def image18405 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18405 : InImage map_55_244 image18405 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction18405 : Bundle := named_bundle% "RealMapCertificates/relations/basis18405.json"
theorem reductionProof18405 : EqualModuloRelations reduction18405.relations reduction18405.input reduction18405.output := by lin_cert using reduction18405.terms
theorem substitutionProof18405 : IsMapEvaluation generatorImages reduction18405.relations [0,0,8,17,1076] reduction18405.output := by lin_cert using reduction18405.terms
def image18406 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18406 : InImage map_55_244 image18406 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction18406 : Bundle := named_bundle% "RealMapCertificates/relations/basis18406.json"
theorem reductionProof18406 : EqualModuloRelations reduction18406.relations reduction18406.input reduction18406.output := by lin_cert using reduction18406.terms
theorem substitutionProof18406 : IsMapEvaluation generatorImages reduction18406.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,1735] reduction18406.output := by lin_cert using reduction18406.terms
def map_55_245 : Matrix 1 3 := fun i j => ([false,true,false] : List Bool)[i.val*3+j.val]!
def image18623 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18623 : InImage map_55_245 image18623 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction18623 : Bundle := named_bundle% "RealMapCertificates/relations/basis18623.json"
theorem reductionProof18623 : EqualModuloRelations reduction18623.relations reduction18623.input reduction18623.output := by lin_cert using reduction18623.terms
theorem substitutionProof18623 : IsMapEvaluation generatorImages reduction18623.relations [2161] reduction18623.output := by lin_cert using reduction18623.terms
def image18624 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18624 : InImage map_55_245 image18624 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction18624 : Bundle := named_bundle% "RealMapCertificates/relations/basis18624.json"
theorem reductionProof18624 : EqualModuloRelations reduction18624.relations reduction18624.input reduction18624.output := by lin_cert using reduction18624.terms
theorem substitutionProof18624 : IsMapEvaluation generatorImages reduction18624.relations [8,8,8,8,17,488] reduction18624.output := by lin_cert using reduction18624.terms
def image18625 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18625 : InImage map_55_245 image18625 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction18625 : Bundle := named_bundle% "RealMapCertificates/relations/basis18625.json"
theorem reductionProof18625 : EqualModuloRelations reduction18625.relations reduction18625.input reduction18625.output := by lin_cert using reduction18625.terms
theorem substitutionProof18625 : IsMapEvaluation generatorImages reduction18625.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1736] reduction18625.output := by lin_cert using reduction18625.terms
def map_55_246 : Matrix 1 5 := fun i j => ([false,false,true,false,false] : List Bool)[i.val*5+j.val]!
def image18909 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18909 : InImage map_55_246 image18909 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction18909 : Bundle := named_bundle% "RealMapCertificates/relations/basis18909.json"
theorem reductionProof18909 : EqualModuloRelations reduction18909.relations reduction18909.input reduction18909.output := by lin_cert using reduction18909.terms
theorem substitutionProof18909 : IsMapEvaluation generatorImages reduction18909.relations [8,16,64,403] reduction18909.output := by lin_cert using reduction18909.terms
def image18910 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18910 : InImage map_55_246 image18910 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction18910 : Bundle := named_bundle% "RealMapCertificates/relations/basis18910.json"
theorem reductionProof18910 : EqualModuloRelations reduction18910.relations reduction18910.input reduction18910.output := by lin_cert using reduction18910.terms
theorem substitutionProof18910 : IsMapEvaluation generatorImages reduction18910.relations [8,8,8,8,17,17,238] reduction18910.output := by lin_cert using reduction18910.terms
def image18911 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation18911 : InImage map_55_246 image18911 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction18911 : Bundle := named_bundle% "RealMapCertificates/relations/basis18911.json"
theorem reductionProof18911 : EqualModuloRelations reduction18911.relations reduction18911.input reduction18911.output := by lin_cert using reduction18911.terms
theorem substitutionProof18911 : IsMapEvaluation generatorImages reduction18911.relations [8,8,8,8,8,8,8,8,8,8,8,8,17] reduction18911.output := by lin_cert using reduction18911.terms
def image18912 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18912 : InImage map_55_246 image18912 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction18912 : Bundle := named_bundle% "RealMapCertificates/relations/basis18912.json"
theorem reductionProof18912 : EqualModuloRelations reduction18912.relations reduction18912.input reduction18912.output := by lin_cert using reduction18912.terms
theorem substitutionProof18912 : IsMapEvaluation generatorImages reduction18912.relations [0,8,8,8,1033] reduction18912.output := by lin_cert using reduction18912.terms
def image18913 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation18913 : InImage map_55_246 image18913 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction18913 : Bundle := named_bundle% "RealMapCertificates/relations/basis18913.json"
theorem reductionProof18913 : EqualModuloRelations reduction18913.relations reduction18913.input reduction18913.output := by lin_cert using reduction18913.terms
theorem substitutionProof18913 : IsMapEvaluation generatorImages reduction18913.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1737] reduction18913.output := by lin_cert using reduction18913.terms
def map_55_247 : Matrix 5 1 := fun i j => ([false,false,false,false,false] : List Bool)[i.val*1+j.val]!
def image19204 : Vec 5 := fun i => ([false,false,false,false,false] : List Bool)[i.val]!
theorem evaluation19204 : InImage map_55_247 image19204 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction19204 : Bundle := named_bundle% "RealMapCertificates/relations/basis19204.json"
theorem reductionProof19204 : EqualModuloRelations reduction19204.relations reduction19204.input reduction19204.output := by lin_cert using reduction19204.terms
theorem substitutionProof19204 : IsMapEvaluation generatorImages reduction19204.relations [0,0,8,16,17,725] reduction19204.output := by lin_cert using reduction19204.terms
def map_55_248 : Matrix 1 2 := fun i j => ([false,true] : List Bool)[i.val*2+j.val]!
def image19423 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19423 : InImage map_55_248 image19423 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction19423 : Bundle := named_bundle% "RealMapCertificates/relations/basis19423.json"
theorem reductionProof19423 : EqualModuloRelations reduction19423.relations reduction19423.input reduction19423.output := by lin_cert using reduction19423.terms
theorem substitutionProof19423 : IsMapEvaluation generatorImages reduction19423.relations [2276] reduction19423.output := by lin_cert using reduction19423.terms
def image19424 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19424 : InImage map_55_248 image19424 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction19424 : Bundle := named_bundle% "RealMapCertificates/relations/basis19424.json"
theorem reductionProof19424 : EqualModuloRelations reduction19424.relations reduction19424.input reduction19424.output := by lin_cert using reduction19424.terms
theorem substitutionProof19424 : IsMapEvaluation generatorImages reduction19424.relations [8,8,8,8,16,17,244] reduction19424.output := by lin_cert using reduction19424.terms
def map_55_249 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image19729 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19729 : InImage map_55_249 image19729 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction19729 : Bundle := named_bundle% "RealMapCertificates/relations/basis19729.json"
theorem reductionProof19729 : EqualModuloRelations reduction19729.relations reduction19729.input reduction19729.output := by lin_cert using reduction19729.terms
theorem substitutionProof19729 : IsMapEvaluation generatorImages reduction19729.relations [8,8,64,556] reduction19729.output := by lin_cert using reduction19729.terms
def image19730 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation19730 : InImage map_55_249 image19730 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction19730 : Bundle := named_bundle% "RealMapCertificates/relations/basis19730.json"
theorem reductionProof19730 : EqualModuloRelations reduction19730.relations reduction19730.input reduction19730.output := by lin_cert using reduction19730.terms
theorem substitutionProof19730 : IsMapEvaluation generatorImages reduction19730.relations [8,8,8,8,8,42,224] reduction19730.output := by lin_cert using reduction19730.terms
def image19731 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation19731 : InImage map_55_249 image19731 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction19731 : Bundle := named_bundle% "RealMapCertificates/relations/basis19731.json"
theorem reductionProof19731 : EqualModuloRelations reduction19731.relations reduction19731.input reduction19731.output := by lin_cert using reduction19731.terms
theorem substitutionProof19731 : IsMapEvaluation generatorImages reduction19731.relations [8,8,8,8,8,8,8,8,8,8,8,8,20] reduction19731.output := by lin_cert using reduction19731.terms
def map_55_251 : Matrix 3 5 := fun i j => ([false,false,false,false,true,false,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image20230 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20230 : InImage map_55_251 image20230 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction20230 : Bundle := named_bundle% "RealMapCertificates/relations/basis20230.json"
theorem reductionProof20230 : EqualModuloRelations reduction20230.relations reduction20230.input reduction20230.output := by lin_cert using reduction20230.terms
theorem substitutionProof20230 : IsMapEvaluation generatorImages reduction20230.relations [246,402] reduction20230.output := by lin_cert using reduction20230.terms
def image20231 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20231 : InImage map_55_251 image20231 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction20231 : Bundle := named_bundle% "RealMapCertificates/relations/basis20231.json"
theorem reductionProof20231 : EqualModuloRelations reduction20231.relations reduction20231.input reduction20231.output := by lin_cert using reduction20231.terms
theorem substitutionProof20231 : IsMapEvaluation generatorImages reduction20231.relations [60,1033] reduction20231.output := by lin_cert using reduction20231.terms
def image20232 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20232 : InImage map_55_251 image20232 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction20232 : Bundle := named_bundle% "RealMapCertificates/relations/basis20232.json"
theorem reductionProof20232 : EqualModuloRelations reduction20232.relations reduction20232.input reduction20232.output := by lin_cert using reduction20232.terms
theorem substitutionProof20232 : IsMapEvaluation generatorImages reduction20232.relations [59,1033] reduction20232.output := by lin_cert using reduction20232.terms
def image20233 : Vec 3 := fun i => ([false,false,false] : List Bool)[i.val]!
theorem evaluation20233 : InImage map_55_251 image20233 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction20233 : Bundle := named_bundle% "RealMapCertificates/relations/basis20233.json"
theorem reductionProof20233 : EqualModuloRelations reduction20233.relations reduction20233.input reduction20233.output := by lin_cert using reduction20233.terms
theorem substitutionProof20233 : IsMapEvaluation generatorImages reduction20233.relations [8,1812] reduction20233.output := by lin_cert using reduction20233.terms
def image20234 : Vec 3 := fun i => ([true,false,false] : List Bool)[i.val]!
theorem evaluation20234 : InImage map_55_251 image20234 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction20234 : Bundle := named_bundle% "RealMapCertificates/relations/basis20234.json"
theorem reductionProof20234 : EqualModuloRelations reduction20234.relations reduction20234.input reduction20234.output := by lin_cert using reduction20234.terms
theorem substitutionProof20234 : IsMapEvaluation generatorImages reduction20234.relations [8,8,8,8,8,17,343] reduction20234.output := by lin_cert using reduction20234.terms
def map_55_252 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image20532 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20532 : InImage map_55_252 image20532 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction20532 : Bundle := named_bundle% "RealMapCertificates/relations/basis20532.json"
theorem reductionProof20532 : EqualModuloRelations reduction20532.relations reduction20532.input reduction20532.output := by lin_cert using reduction20532.terms
theorem substitutionProof20532 : IsMapEvaluation generatorImages reduction20532.relations [8,8,8,64,403] reduction20532.output := by lin_cert using reduction20532.terms
def image20533 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20533 : InImage map_55_252 image20533 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction20533 : Bundle := named_bundle% "RealMapCertificates/relations/basis20533.json"
theorem reductionProof20533 : EqualModuloRelations reduction20533.relations reduction20533.input reduction20533.output := by lin_cert using reduction20533.terms
theorem substitutionProof20533 : IsMapEvaluation generatorImages reduction20533.relations [8,8,8,8,8,17,17,185] reduction20533.output := by lin_cert using reduction20533.terms
def image20534 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation20534 : InImage map_55_252 image20534 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction20534 : Bundle := named_bundle% "RealMapCertificates/relations/basis20534.json"
theorem reductionProof20534 : EqualModuloRelations reduction20534.relations reduction20534.input reduction20534.output := by lin_cert using reduction20534.terms
theorem substitutionProof20534 : IsMapEvaluation generatorImages reduction20534.relations [8,8,8,8,8,8,8,8,8,8,8,8,22] reduction20534.output := by lin_cert using reduction20534.terms
def image20535 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation20535 : InImage map_55_252 image20535 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction20535 : Bundle := named_bundle% "RealMapCertificates/relations/basis20535.json"
theorem reductionProof20535 : EqualModuloRelations reduction20535.relations reduction20535.input reduction20535.output := by lin_cert using reduction20535.terms
theorem substitutionProof20535 : IsMapEvaluation generatorImages reduction20535.relations [0,0,2330] reduction20535.output := by lin_cert using reduction20535.terms
def map_55_254 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image21059 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21059 : InImage map_55_254 image21059 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction21059 : Bundle := named_bundle% "RealMapCertificates/relations/basis21059.json"
theorem reductionProof21059 : EqualModuloRelations reduction21059.relations reduction21059.input reduction21059.output := by lin_cert using reduction21059.terms
theorem substitutionProof21059 : IsMapEvaluation generatorImages reduction21059.relations [42,1301] reduction21059.output := by lin_cert using reduction21059.terms
def image21060 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21060 : InImage map_55_254 image21060 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction21060 : Bundle := named_bundle% "RealMapCertificates/relations/basis21060.json"
theorem reductionProof21060 : EqualModuloRelations reduction21060.relations reduction21060.input reduction21060.output := by lin_cert using reduction21060.terms
theorem substitutionProof21060 : IsMapEvaluation generatorImages reduction21060.relations [8,1891] reduction21060.output := by lin_cert using reduction21060.terms
def image21061 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21061 : InImage map_55_254 image21061 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction21061 : Bundle := named_bundle% "RealMapCertificates/relations/basis21061.json"
theorem reductionProof21061 : EqualModuloRelations reduction21061.relations reduction21061.input reduction21061.output := by lin_cert using reduction21061.terms
theorem substitutionProof21061 : IsMapEvaluation generatorImages reduction21061.relations [8,8,8,8,8,8,17,244] reduction21061.output := by lin_cert using reduction21061.terms
def image21062 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation21062 : InImage map_55_254 image21062 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction21062 : Bundle := named_bundle% "RealMapCertificates/relations/basis21062.json"
theorem reductionProof21062 : EqualModuloRelations reduction21062.relations reduction21062.input reduction21062.output := by lin_cert using reduction21062.terms
theorem substitutionProof21062 : IsMapEvaluation generatorImages reduction21062.relations [0,2435] reduction21062.output := by lin_cert using reduction21062.terms
def map_55_255 : Matrix 4 3 := fun i j => ([false,false,true,false,false,false,false,false,false,false,false,false] : List Bool)[i.val*3+j.val]!
def image21408 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21408 : InImage map_55_255 image21408 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction21408 : Bundle := named_bundle% "RealMapCertificates/relations/basis21408.json"
theorem reductionProof21408 : EqualModuloRelations reduction21408.relations reduction21408.input reduction21408.output := by lin_cert using reduction21408.terms
theorem substitutionProof21408 : IsMapEvaluation generatorImages reduction21408.relations [8,8,8,64,433] reduction21408.output := by lin_cert using reduction21408.terms
def image21409 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation21409 : InImage map_55_255 image21409 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction21409 : Bundle := named_bundle% "RealMapCertificates/relations/basis21409.json"
theorem reductionProof21409 : EqualModuloRelations reduction21409.relations reduction21409.input reduction21409.output := by lin_cert using reduction21409.terms
theorem substitutionProof21409 : IsMapEvaluation generatorImages reduction21409.relations [8,8,8,8,8,8,17,17,138] reduction21409.output := by lin_cert using reduction21409.terms
def image21410 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation21410 : InImage map_55_255 image21410 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction21410 : Bundle := named_bundle% "RealMapCertificates/relations/basis21410.json"
theorem reductionProof21410 : EqualModuloRelations reduction21410.relations reduction21410.input reduction21410.output := by lin_cert using reduction21410.terms
theorem substitutionProof21410 : IsMapEvaluation generatorImages reduction21410.relations [8,8,8,8,8,8,8,8,8,8,8,8,29] reduction21410.output := by lin_cert using reduction21410.terms
def map_55_256 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image21700 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation21700 : InImage map_55_256 image21700 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction21700 : Bundle := named_bundle% "RealMapCertificates/relations/basis21700.json"
theorem reductionProof21700 : EqualModuloRelations reduction21700.relations reduction21700.input reduction21700.output := by lin_cert using reduction21700.terms
theorem substitutionProof21700 : IsMapEvaluation generatorImages reduction21700.relations [2579] reduction21700.output := by lin_cert using reduction21700.terms
def map_55_257 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image22006 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22006 : InImage map_55_257 image22006 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction22006 : Bundle := named_bundle% "RealMapCertificates/relations/basis22006.json"
theorem reductionProof22006 : EqualModuloRelations reduction22006.relations reduction22006.input reduction22006.output := by lin_cert using reduction22006.terms
theorem substitutionProof22006 : IsMapEvaluation generatorImages reduction22006.relations [8,42,1033] reduction22006.output := by lin_cert using reduction22006.terms
def image22007 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22007 : InImage map_55_257 image22007 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction22007 : Bundle := named_bundle% "RealMapCertificates/relations/basis22007.json"
theorem reductionProof22007 : EqualModuloRelations reduction22007.relations reduction22007.input reduction22007.output := by lin_cert using reduction22007.terms
theorem substitutionProof22007 : IsMapEvaluation generatorImages reduction22007.relations [8,8,1567] reduction22007.output := by lin_cert using reduction22007.terms
def image22008 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation22008 : InImage map_55_257 image22008 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction22008 : Bundle := named_bundle% "RealMapCertificates/relations/basis22008.json"
theorem reductionProof22008 : EqualModuloRelations reduction22008.relations reduction22008.input reduction22008.output := by lin_cert using reduction22008.terms
theorem substitutionProof22008 : IsMapEvaluation generatorImages reduction22008.relations [8,8,8,8,8,8,17,257] reduction22008.output := by lin_cert using reduction22008.terms
def image22009 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation22009 : InImage map_55_257 image22009 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction22009 : Bundle := named_bundle% "RealMapCertificates/relations/basis22009.json"
theorem reductionProof22009 : EqualModuloRelations reduction22009.relations reduction22009.input reduction22009.output := by lin_cert using reduction22009.terms
theorem substitutionProof22009 : IsMapEvaluation generatorImages reduction22009.relations [0,0,0,64,1033] reduction22009.output := by lin_cert using reduction22009.terms
def map_55_258 : Matrix 2 5 := fun i j => ([false,false,true,false,false,false,false,false,false,false] : List Bool)[i.val*5+j.val]!
def image22362 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22362 : InImage map_55_258 image22362 := by lin_cert using (fun j : Fin 5 => decide (j.val = 0))
def reduction22362 : Bundle := named_bundle% "RealMapCertificates/relations/basis22362.json"
theorem reductionProof22362 : EqualModuloRelations reduction22362.relations reduction22362.input reduction22362.output := by lin_cert using reduction22362.terms
theorem substitutionProof22362 : IsMapEvaluation generatorImages reduction22362.relations [8,8,8,16,64,225] reduction22362.output := by lin_cert using reduction22362.terms
def image22363 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22363 : InImage map_55_258 image22363 := by lin_cert using (fun j : Fin 5 => decide (j.val = 1))
def reduction22363 : Bundle := named_bundle% "RealMapCertificates/relations/basis22363.json"
theorem reductionProof22363 : EqualModuloRelations reduction22363.relations reduction22363.input reduction22363.output := by lin_cert using reduction22363.terms
theorem substitutionProof22363 : IsMapEvaluation generatorImages reduction22363.relations [8,8,8,8,8,8,17,17,147] reduction22363.output := by lin_cert using reduction22363.terms
def image22364 : Vec 2 := fun i => ([true,false] : List Bool)[i.val]!
theorem evaluation22364 : InImage map_55_258 image22364 := by lin_cert using (fun j : Fin 5 => decide (j.val = 2))
def reduction22364 : Bundle := named_bundle% "RealMapCertificates/relations/basis22364.json"
theorem reductionProof22364 : EqualModuloRelations reduction22364.relations reduction22364.input reduction22364.output := by lin_cert using reduction22364.terms
theorem substitutionProof22364 : IsMapEvaluation generatorImages reduction22364.relations [8,8,8,8,8,8,8,8,8,8,8,8,32] reduction22364.output := by lin_cert using reduction22364.terms
def image22365 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22365 : InImage map_55_258 image22365 := by lin_cert using (fun j : Fin 5 => decide (j.val = 3))
def reduction22365 : Bundle := named_bundle% "RealMapCertificates/relations/basis22365.json"
theorem reductionProof22365 : EqualModuloRelations reduction22365.relations reduction22365.input reduction22365.output := by lin_cert using reduction22365.terms
theorem substitutionProof22365 : IsMapEvaluation generatorImages reduction22365.relations [0,0,64,1059] reduction22365.output := by lin_cert using reduction22365.terms
def image22366 : Vec 2 := fun i => ([false,false] : List Bool)[i.val]!
theorem evaluation22366 : InImage map_55_258 image22366 := by lin_cert using (fun j : Fin 5 => decide (j.val = 4))
def reduction22366 : Bundle := named_bundle% "RealMapCertificates/relations/basis22366.json"
theorem reductionProof22366 : EqualModuloRelations reduction22366.relations reduction22366.input reduction22366.output := by lin_cert using reduction22366.terms
theorem substitutionProof22366 : IsMapEvaluation generatorImages reduction22366.relations [0,0,0,0,138,725] reduction22366.output := by lin_cert using reduction22366.terms
def map_55_259 : Matrix 4 2 := fun i j => ([true,false,false,false,false,false,false,false] : List Bool)[i.val*2+j.val]!
def image22705 : Vec 4 := fun i => ([true,false,false,false] : List Bool)[i.val]!
theorem evaluation22705 : InImage map_55_259 image22705 := by lin_cert using (fun j : Fin 2 => decide (j.val = 0))
def reduction22705 : Bundle := named_bundle% "RealMapCertificates/relations/basis22705.json"
theorem reductionProof22705 : EqualModuloRelations reduction22705.relations reduction22705.input reduction22705.output := by lin_cert using reduction22705.terms
theorem substitutionProof22705 : IsMapEvaluation generatorImages reduction22705.relations [2738] reduction22705.output := by lin_cert using reduction22705.terms
def image22706 : Vec 4 := fun i => ([false,false,false,false] : List Bool)[i.val]!
theorem evaluation22706 : InImage map_55_259 image22706 := by lin_cert using (fun j : Fin 2 => decide (j.val = 1))
def reduction22706 : Bundle := named_bundle% "RealMapCertificates/relations/basis22706.json"
theorem reductionProof22706 : EqualModuloRelations reduction22706.relations reduction22706.input reduction22706.output := by lin_cert using reduction22706.terms
theorem substitutionProof22706 : IsMapEvaluation generatorImages reduction22706.relations [0,0,0,0,2537] reduction22706.output := by lin_cert using reduction22706.terms
def map_55_260 : Matrix 1 4 := fun i j => ([false,false,true,false] : List Bool)[i.val*4+j.val]!
def image23037 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23037 : InImage map_55_260 image23037 := by lin_cert using (fun j : Fin 4 => decide (j.val = 0))
def reduction23037 : Bundle := named_bundle% "RealMapCertificates/relations/basis23037.json"
theorem reductionProof23037 : EqualModuloRelations reduction23037.relations reduction23037.input reduction23037.output := by lin_cert using reduction23037.terms
theorem substitutionProof23037 : IsMapEvaluation generatorImages reduction23037.relations [8,42,1076] reduction23037.output := by lin_cert using reduction23037.terms
def image23038 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23038 : InImage map_55_260 image23038 := by lin_cert using (fun j : Fin 4 => decide (j.val = 1))
def reduction23038 : Bundle := named_bundle% "RealMapCertificates/relations/basis23038.json"
theorem reductionProof23038 : EqualModuloRelations reduction23038.relations reduction23038.input reduction23038.output := by lin_cert using reduction23038.terms
theorem substitutionProof23038 : IsMapEvaluation generatorImages reduction23038.relations [8,8,1620] reduction23038.output := by lin_cert using reduction23038.terms
def image23039 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23039 : InImage map_55_260 image23039 := by lin_cert using (fun j : Fin 4 => decide (j.val = 2))
def reduction23039 : Bundle := named_bundle% "RealMapCertificates/relations/basis23039.json"
theorem reductionProof23039 : EqualModuloRelations reduction23039.relations reduction23039.input reduction23039.output := by lin_cert using reduction23039.terms
theorem substitutionProof23039 : IsMapEvaluation generatorImages reduction23039.relations [8,8,8,8,8,8,16,17,149] reduction23039.output := by lin_cert using reduction23039.terms
def image23040 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23040 : InImage map_55_260 image23040 := by lin_cert using (fun j : Fin 4 => decide (j.val = 3))
def reduction23040 : Bundle := named_bundle% "RealMapCertificates/relations/basis23040.json"
theorem reductionProof23040 : EqualModuloRelations reduction23040.relations reduction23040.input reduction23040.output := by lin_cert using reduction23040.terms
theorem substitutionProof23040 : IsMapEvaluation generatorImages reduction23040.relations [0,0,0,64,1076] reduction23040.output := by lin_cert using reduction23040.terms
def map_55_261 : Matrix 1 3 := fun i j => ([false,false,true] : List Bool)[i.val*3+j.val]!
def image23477 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23477 : InImage map_55_261 image23477 := by lin_cert using (fun j : Fin 3 => decide (j.val = 0))
def reduction23477 : Bundle := named_bundle% "RealMapCertificates/relations/basis23477.json"
theorem reductionProof23477 : EqualModuloRelations reduction23477.relations reduction23477.input reduction23477.output := by lin_cert using reduction23477.terms
theorem substitutionProof23477 : IsMapEvaluation generatorImages reduction23477.relations [8,8,8,8,64,298] reduction23477.output := by lin_cert using reduction23477.terms
def image23478 : Vec 1 := fun i => ([false] : List Bool)[i.val]!
theorem evaluation23478 : InImage map_55_261 image23478 := by lin_cert using (fun j : Fin 3 => decide (j.val = 1))
def reduction23478 : Bundle := named_bundle% "RealMapCertificates/relations/basis23478.json"
theorem reductionProof23478 : EqualModuloRelations reduction23478.relations reduction23478.input reduction23478.output := by lin_cert using reduction23478.terms
theorem substitutionProof23478 : IsMapEvaluation generatorImages reduction23478.relations [8,8,8,8,8,8,8,42,137] reduction23478.output := by lin_cert using reduction23478.terms
def image23479 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation23479 : InImage map_55_261 image23479 := by lin_cert using (fun j : Fin 3 => decide (j.val = 2))
def reduction23479 : Bundle := named_bundle% "RealMapCertificates/relations/basis23479.json"
theorem reductionProof23479 : EqualModuloRelations reduction23479.relations reduction23479.input reduction23479.output := by lin_cert using reduction23479.terms
theorem substitutionProof23479 : IsMapEvaluation generatorImages reduction23479.relations [8,8,8,8,8,8,8,8,8,8,8,9,32] reduction23479.output := by lin_cert using reduction23479.terms
def map_56_56 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image312 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation312 : InImage map_56_56 image312 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction312 : Bundle := named_bundle% "RealMapCertificates/relations/basis312.json"
theorem reductionProof312 : EqualModuloRelations reduction312.relations reduction312.input reduction312.output := by lin_cert using reduction312.terms
theorem substitutionProof312 : IsMapEvaluation generatorImages reduction312.relations [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] reduction312.output := by lin_cert using reduction312.terms
def map_56_167 : Matrix 0 1 := fun i j => ([] : List Bool)[i.val*1+j.val]!
def image5531 : Vec 0 := fun i => ([] : List Bool)[i.val]!
theorem evaluation5531 : InImage map_56_167 image5531 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5531 : Bundle := named_bundle% "RealMapCertificates/relations/basis5531.json"
theorem reductionProof5531 : EqualModuloRelations reduction5531.relations reduction5531.input reduction5531.output := by lin_cert using reduction5531.terms
theorem substitutionProof5531 : IsMapEvaluation generatorImages reduction5531.relations [0,0,0,0,0,0,0,0,0,0,0,606] reduction5531.output := by lin_cert using reduction5531.terms
def map_56_169 : Matrix 1 1 := fun i j => ([true] : List Bool)[i.val*1+j.val]!
def image5768 : Vec 1 := fun i => ([true] : List Bool)[i.val]!
theorem evaluation5768 : InImage map_56_169 image5768 := by lin_cert using (fun j : Fin 1 => decide (j.val = 0))
def reduction5768 : Bundle := named_bundle% "RealMapCertificates/relations/basis5768.json"
theorem reductionProof5768 : EqualModuloRelations reduction5768.relations reduction5768.input reduction5768.output := by lin_cert using reduction5768.terms
theorem substitutionProof5768 : IsMapEvaluation generatorImages reduction5768.relations [1,721] reduction5768.output := by lin_cert using reduction5768.terms
end RealMapCertificates
