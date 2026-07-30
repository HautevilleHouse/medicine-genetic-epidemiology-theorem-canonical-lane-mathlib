import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure PhylogeneticTree where
  taxa : Type u
  treeStructure : Type v
  branchLengths : Prop
  topologySupport : Prop

structure PhylogeneticEvidence (T : PhylogeneticTree) where
  branchLengthsClosed : T.branchLengths
  topologySupportClosed : T.topologySupport

def PhylogeneticClosed (T : PhylogeneticTree) : Prop :=
  T.branchLengths ∧ T.topologySupport

theorem phylogenetic_closed_from_evidence (T : PhylogeneticTree) (E : PhylogeneticEvidence T) :
    PhylogeneticClosed T := by
  exact And.intro E.branchLengthsClosed E.topologySupportClosed

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
