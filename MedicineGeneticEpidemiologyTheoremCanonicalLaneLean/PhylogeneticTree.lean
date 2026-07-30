import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineGeneticEpidemiologyTheoremCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : Type u
  distanceMatrix : Prop
  treeBuildingMethod : Prop
  treeTopology : Prop
  branchLengths : Prop
  bootstrapSupport : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  distanceMatrixClosed : P.distanceMatrix
  treeBuildingMethodClosed : P.treeBuildingMethod
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  bootstrapSupportClosed : P.bootstrapSupport

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.distanceMatrix ∧ P.treeBuildingMethod ∧ P.treeTopology ∧ P.branchLengths ∧ P.bootstrapSupport

theorem phylogenetic_tree_closed_from_evidence
    (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.distanceMatrixClosed
    (And.intro E.treeBuildingMethodClosed
      (And.intro E.treeTopologyClosed
        (And.intro E.branchLengthsClosed E.bootstrapSupportClosed)))

end MedicineGeneticEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse