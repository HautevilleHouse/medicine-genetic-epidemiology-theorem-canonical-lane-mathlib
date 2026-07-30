import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure GeneticEpidemiologySpace where
  carrier : Type
  geneticDistance : carrier → carrier → ℝ

structure GeneticEpidemiologyAdmittedObject where
  space : GeneticEpidemiologySpace
  genotypeData : Prop
  phenotypeData : Prop
  associationFound : Prop
  conclusion : associationFound

def GeneticEpidemiologyWitnessClosed (O : GeneticEpidemiologyAdmittedObject) : Prop :=
  O.associationFound

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse