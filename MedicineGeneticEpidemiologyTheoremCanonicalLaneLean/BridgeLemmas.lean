import MedicineGeneticEpidemiologyTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedicineGeneticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse