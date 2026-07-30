import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure PopulationGeneticsPackage where
  population : Type u
  genotypes : population → List (List (Char))
  alleleFrequencies : population → (Char → ℝ)
  heterozygosity : ℝ
  fisCoefficient : ℝ
  hweDeviationsAccounted : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hweDeviationsAccountedClosed : P.hweDeviationsAccounted

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hweDeviationsAccounted

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P :=
  E.hweDeviationsAccountedClosed

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse