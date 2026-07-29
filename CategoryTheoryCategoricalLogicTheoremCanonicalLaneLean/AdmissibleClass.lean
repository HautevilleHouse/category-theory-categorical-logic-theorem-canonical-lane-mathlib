import HautevilleHouse.CanopyCategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryTheoryCategoricalLogicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  YonedaEmbeddingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse