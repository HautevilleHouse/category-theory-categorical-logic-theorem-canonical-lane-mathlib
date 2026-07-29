import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CategoricalLogicPackage where
  internalLanguage : Prop
  soundness : Prop
  completeness : Prop

def CategoricalLogicClosed (C : CategoricalLogicPackage) : Prop :=
  C.internalLanguage ∧ C.soundness ∧ C.completeness

theorem categorical_logic_closed (C : CategoricalLogicPackage) : CategoricalLogicClosed C :=
  And.intro C.internalLanguage (And.intro C.soundness C.completeness)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse