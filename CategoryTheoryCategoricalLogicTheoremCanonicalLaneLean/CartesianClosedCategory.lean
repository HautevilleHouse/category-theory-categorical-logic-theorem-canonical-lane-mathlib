import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CartesianClosedCategoryPackage where
  category : Type u
  terminalObject : Type v
  productFunctor : Type v → Type v → Type v
  exponentialFunctor : Type v → Type v → Type v
  evaluationMap : Prop
  currying : Prop
  adjunction : Prop

structure CartesianClosedCategoryEvidence (C : CartesianClosedCategoryPackage) where
  evaluationMapClosed : C.evaluationMap
  curryingClosed : C.currying
  adjunctionClosed : C.adjunction

def CartesianClosedCategoryClosed (C : CartesianClosedCategoryPackage) : Prop :=
  C.evaluationMap ∧ C.currying ∧ C.adjunction

theorem cartesian_closed_category_closed_from_evidence (C : CartesianClosedCategoryPackage) (E : CartesianClosedCategoryEvidence C) :
    CartesianClosedCategoryClosed C := by
  exact And.intro E.evaluationMapClosed (And.intro E.curryingClosed E.adjunctionClosed)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse
