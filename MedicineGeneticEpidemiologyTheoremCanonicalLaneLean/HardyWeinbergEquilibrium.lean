import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure HardyWeinbergLocus where
  genotypeFrequencies : Type u
  alleleFrequencies : Type v
  hweProportion : Prop
  hweDeviation : Prop

structure HardyWeinbergEvidence (L : HardyWeinbergLocus) where
  hweProportionClosed : L.hweProportion
  hweDeviationClosed : L.hweDeviation

def HardyWeinbergClosed (L : HardyWeinbergLocus) : Prop :=
  L.hweProportion ∧ L.hweDeviation

theorem hardy_weinberg_closed_from_evidence (L : HardyWeinbergLocus) (E : HardyWeinbergEvidence L) :
    HardyWeinbergClosed L := by
  exact And.intro E.hweProportionClosed E.hweDeviationClosed

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
