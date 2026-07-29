import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type
  rightAdjoint : Type
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities

theorem adjoint_functor_closed (A : AdjointFunctorPackage) : AdjointFunctorClosed A :=
  And.intro A.unit (And.intro A.counit A.triangleIdentities)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse