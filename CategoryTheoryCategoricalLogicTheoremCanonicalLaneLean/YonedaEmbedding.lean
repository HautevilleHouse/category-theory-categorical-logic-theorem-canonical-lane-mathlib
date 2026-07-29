import HautevilleHouse.CanopyCategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CategoryTheoryCategoricalLogicAdmittedObject where
  category : Type u
  categoryStructure : Prop
  internalLogic : Prop
  yonedaFullFaithful : Prop
  conclusion : yonedaFullFaithful

def YonedaEmbeddingClosed (O : CategoryTheoryCategoricalLogicAdmittedObject) : Prop :=
  O.yonedaFullFaithful

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse