import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure LimitColimitPackage where
  diagramCategory : Type u
  ambientCategory : Type v
  limitExists : Prop
  colimitExists : Prop
  universalProperty : Prop
  limitColimitRelationship : Prop

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalPropertyClosed : L.universalProperty
  limitColimitRelationshipClosed : L.limitColimitRelationship

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalProperty ∧ L.limitColimitRelationship

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed (And.intro E.universalPropertyClosed E.limitColimitRelationshipClosed))

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse