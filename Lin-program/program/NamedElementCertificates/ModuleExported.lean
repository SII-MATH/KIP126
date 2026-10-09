import NamedElementCertificates.ModuleImport

namespace NamedElementCertificates.ModuleExpressions
def exported : Wire := module_bundle% "NamedElementCertificates/module-exported.json"
example : exported.Valid := by lin_cert using ()
end NamedElementCertificates.ModuleExpressions
