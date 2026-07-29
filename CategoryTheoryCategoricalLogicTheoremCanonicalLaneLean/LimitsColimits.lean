import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure LimitsColimitsPackage where
  limitExists : Prop
  colimitExists : Prop
  limitUniversal : Prop
  colimitUniversal : Prop

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.limitUniversal ∧ L.colimitUniversal

theorem limits_colimits_closed (L : LimitsColimitsPackage) : LimitsColimitsClosed L :=
  And.intro L.limitExists (And.intro L.colimitExists (And.intro L.limitUniversal L.colimitUniversal))

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse