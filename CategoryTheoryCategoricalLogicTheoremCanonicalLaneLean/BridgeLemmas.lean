import HautevilleHouse.CanopyCategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.YonedaEmbedding

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  YonedaEmbeddingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse