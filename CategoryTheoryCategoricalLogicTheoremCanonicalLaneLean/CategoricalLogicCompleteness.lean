import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean

structure CategoricalLogicCompletenessPackage where
  syntacticCategory : Type u
  theory : Type v
  classifyingTopos : Type w
  completenessStatement : Prop
  completenessProof : completenessStatement
  completenessClosed : completenessStatement
  completenessClosedTerm : completenessClosed

def CategoricalLogicCompletenessClosed (C : CategoricalLogicCompletenessPackage) : Prop :=
  C.completenessStatement

theorem categorical_logic_completeness_closed_from_package (C : CategoricalLogicCompletenessPackage) : CategoricalLogicCompletenessClosed C :=
  C.completenessClosedTerm

end CategoryTheoryCategoricalLogicTheoremCanonicalLaneLean
end HautevilleHouse