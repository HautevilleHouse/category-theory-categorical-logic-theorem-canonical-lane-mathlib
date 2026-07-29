import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.YonedaLemmaClosure

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure Adjunction where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  homSetIso : Prop
  naturalityLeft : Prop
  naturalityRight : Prop
  homSetIsoTerm : homSetIso
  naturalityLeftTerm : naturalityLeft
  naturalityRightTerm : naturalityRight

def AdjunctionClosed (A : Adjunction) : Prop :=
  A.homSetIso ∧ A.naturalityLeft ∧ A.naturalityRight

theorem adjunction_closed_from_adjunction (A : Adjunction) : AdjunctionClosed A := by
  exact And.intro A.homSetIsoTerm (And.intro A.naturalityLeftTerm A.naturalityRightTerm)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse