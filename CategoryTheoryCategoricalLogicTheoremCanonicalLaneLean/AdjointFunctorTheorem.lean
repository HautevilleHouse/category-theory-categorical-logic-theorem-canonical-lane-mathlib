import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorLeft : sourceCategory ⥤ targetCategory
  functorRight : targetCategory ⥤ sourceCategory
  bijectionOnHoms : Prop
  unitCounitNatural : Prop
  adjunctionExists : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  bijectionOnHomsClosed : A.bijectionOnHoms
  unitCounitNaturalClosed : A.unitCounitNatural
  adjunctionExistsClosed : A.adjunctionExists

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.bijectionOnHoms ∧ A.unitCounitNatural ∧ A.adjunctionExists

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.bijectionOnHomsClosed (And.intro E.unitCounitNaturalClosed E.adjunctionExistsClosed)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse