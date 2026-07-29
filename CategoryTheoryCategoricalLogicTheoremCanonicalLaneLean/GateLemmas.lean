import HautevilleHouse.CanopyCategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse