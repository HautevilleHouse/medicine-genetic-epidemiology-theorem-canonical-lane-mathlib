import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure PopulationStructurePackage where
  samples : Type u
  genotypeMatrix : Prop
  principalComponents : Prop
  admixtureProportions : Prop
  populationClusters : Prop

structure PopulationStructureEvidence (P : PopulationStructurePackage) where
  genotypeMatrixClosed : P.genotypeMatrix
  principalComponentsClosed : P.principalComponents
  admixtureProportionsClosed : P.admixtureProportions
  populationClustersClosed : P.populationClusters

def PopulationStructureClosed (P : PopulationStructurePackage) : Prop :=
  P.genotypeMatrix ∧ P.principalComponents ∧ P.admixtureProportions ∧ P.populationClusters

theorem population_structure_closed_from_evidence
    (P : PopulationStructurePackage) (E : PopulationStructureEvidence P) :
    PopulationStructureClosed P := by
  exact And.intro E.genotypeMatrixClosed
    (And.intro E.principalComponentsClosed
      (And.intro E.admixtureProportionsClosed E.populationClustersClosed))

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse