import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.AdjointFunctors

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CartesianClosedCategory where
  finiteProducts : Prop
  exponential : Type u → Type u → Type u
  evaluation : Prop
  currying : Prop
  finiteProductsTerm : finiteProducts
  evaluationTerm : evaluation
  curryingTerm : currying

def CartesianClosedClosed (C : CartesianClosedCategory) : Prop :=
  C.finiteProducts ∧ C.evaluation ∧ C.currying

theorem cartesian_closed_closed (C : CartesianClosedCategory) : CartesianClosedClosed C := by
  exact And.intro C.finiteProductsTerm (And.intro C.evaluationTerm C.curryingTerm)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse