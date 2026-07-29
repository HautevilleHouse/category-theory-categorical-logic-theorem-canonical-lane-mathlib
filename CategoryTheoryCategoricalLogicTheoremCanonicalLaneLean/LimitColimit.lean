import HautevilleHouse.CanopyCategoryTheoryCategoricalLogicTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure LimitColimitPackage where
  smallLimitExists : Prop
  smallColimitExists : Prop
  limitColimitCommutingMorphisms : Prop
  completenessCocomplete : Prop

def LimitColimitClosed (P : LimitColimitPackage) : Prop :=
  P.smallLimitExists ∧ P.smallColimitExists ∧ P.limitColimitCommutingMorphisms ∧ P.completenessCocomplete

theorem limit_colimit_closed (P : LimitColimitPackage) : LimitColimitClosed P :=
  And.intro P.smallLimitExists (And.intro P.smallColimitExists (And.intro P.limitColimitCommutingMorphisms P.completenessCocomplete))

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse