import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure AssociationStudyPackage where
  caseControlData : Type u
  genotypeMatrix : Type v
  associationTest : Prop
  oddsRatio : Prop
  significanceThreshold : Prop

structure AssociationStudyEvidence (A : AssociationStudyPackage) where
  associationTestClosed : A.associationTest
  oddsRatioClosed : A.oddsRatio
  significanceThresholdClosed : A.significanceThreshold

def AssociationStudyClosed (A : AssociationStudyPackage) : Prop :=
  A.associationTest ∧ A.oddsRatio ∧ A.significanceThreshold

theorem association_study_closed_from_evidence (A : AssociationStudyPackage) (E : AssociationStudyEvidence A) : AssociationStudyClosed A := by
  exact And.intro E.associationTestClosed (And.intro E.oddsRatioClosed E.significanceThresholdClosed)

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse