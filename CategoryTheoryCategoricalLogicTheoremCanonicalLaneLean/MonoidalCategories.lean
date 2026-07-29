import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure MonoidalCategory where
  tensorProduct : Type u → Type u → Type u
  unitObject : Type u
  associator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  coherence : Prop
  associatorTerm : associator
  leftUnitorTerm : leftUnitor
  rightUnitorTerm : rightUnitor
  coherenceTerm : coherence

def MonoidalClosed (M : MonoidalCategory) : Prop :=
  M.associator ∧ M.leftUnitor ∧ M.rightUnitor ∧ M.coherence

theorem monoidal_closed (M : MonoidalCategory) : MonoidalClosed M := by
  exact And.intro M.associatorTerm (And.intro M.leftUnitorTerm (And.intro M.rightUnitorTerm M.coherenceTerm))

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse