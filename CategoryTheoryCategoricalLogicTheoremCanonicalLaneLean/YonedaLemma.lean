import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure YonedaLemmaPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functor : sourceCategory ⟹ (Type u → Type v) ?
  naturalIsomorphism : Prop
  embeddingFullFaithful : Prop
  presheafRepresentability : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalIsomorphismClosed : Y.naturalIsomorphism
  embeddingFullFaithfulClosed : Y.embeddingFullFaithful
  presheafRepresentabilityClosed : Y.presheafRepresentability

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalIsomorphism ∧ Y.embeddingFullFaithful ∧ Y.presheafRepresentability

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.naturalIsomorphismClosed (And.intro E.embeddingFullFaithfulClosed E.presheafRepresentabilityClosed)

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse