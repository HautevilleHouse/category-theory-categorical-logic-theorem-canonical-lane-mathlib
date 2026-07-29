import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure YonedaEmbedding where
  presheafCategory : Type u
  representableFunctors : Prop
  naturalTransformations : Prop

structure YonedaLemma where
  embedding : YonedaEmbedding
  bijection : Prop
  naturality : Prop
  bijectionTerm : bijection
  naturalityTerm : naturality

def YonedaClosed (Y : YonedaLemma) : Prop :=
  Y.bijection ∧ Y.naturality

theorem yoneda_closed_from_lemma (Y : YonedaLemma) : YonedaClosed Y := by
  exact And.intro Y.bijectionTerm Y.naturalityTerm

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse