import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure LinkageStudy where
  pedigreeData : Type u
  markerMap : Type v
  recombinationFraction : Prop
  lodScore : Prop

structure LinkageEvidence (S : LinkageStudy) where
  recombinationFractionClosed : S.recombinationFraction
  lodScoreClosed : S.lodScore

def LinkageClosed (S : LinkageStudy) : Prop :=
  S.recombinationFraction ∧ S.lodScore

theorem linkage_closed_from_evidence (S : LinkageStudy) (E : LinkageEvidence S) :
    LinkageClosed S := by
  exact And.intro E.recombinationFractionClosed E.lodScoreClosed

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
