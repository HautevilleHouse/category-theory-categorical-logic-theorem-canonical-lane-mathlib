import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CategoricalLogicPackage where
  syntacticCategory : Type u
  modelCategory : Type v
  interpretationFunctor : syntacticCategory → modelCategory
  soundness : Prop
  completeness : Prop
  internalLogic : Prop

structure CategoricalLogicEvidence (L : CategoricalLogicPackage) where
  soundnessClosed : L.soundness
  completenessClosed : L.completeness

def CategoricalLogicClosed (L : CategoricalLogicPackage) : Prop :=
  L.soundness ∧ L.completeness

theorem categorical_logic_closed_from_evidence (L : CategoricalLogicPackage) (E : CategoricalLogicEvidence L) :
    CategoricalLogicClosed L := by
  exact And.intro E.soundnessClosed E.completenessClosed

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse
