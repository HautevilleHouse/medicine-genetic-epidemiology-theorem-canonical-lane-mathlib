import MedicineGeneticEpidemiologyTheoremCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  sequenceData : Type v
  treeTopology : Prop
  branchLengths : Prop
  evolutionaryModel : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  evolutionaryModelClosed : P.evolutionaryModel

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.evolutionaryModel

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed
    (And.intro E.branchLengthsClosed E.evolutionaryModelClosed)

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse