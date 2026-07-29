import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure InternalLogicPackage where
  category : Type u
  subobjectFunctor : category → Type v
  truthValue : category
  conjunction : category → category → category
  implication : category → category → category
  internalLogicDefined : Prop
  soundnessTheorem : Prop
  internalLogicClosed : internalLogicDefined ∧ soundnessTheorem
  internalLogicClosedTerm : internalLogicClosed

def InternalLogicClosed (I : InternalLogicPackage) : Prop :=
  I.internalLogicDefined ∧ I.soundnessTheorem

theorem internal_logic_closed_from_package (I : InternalLogicPackage) : InternalLogicClosed I :=
  I.internalLogicClosedTerm

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse