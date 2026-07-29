import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure Limit where
  cone : Type u
  universalProperty : Prop
  universalPropertyTerm : universalProperty

structure Colimit where
  cocone : Type u
  universalProperty : Prop
  universalPropertyTerm : universalProperty

def LimitClosed (L : Limit) : Prop :=
  L.universalProperty

def ColimitClosed (C : Colimit) : Prop :=
  C.universalProperty

theorem limit_closed (L : Limit) : LimitClosed L := L.universalPropertyTerm
theorem colimit_closed (C : Colimit) : ColimitClosed C := C.universalPropertyTerm

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse