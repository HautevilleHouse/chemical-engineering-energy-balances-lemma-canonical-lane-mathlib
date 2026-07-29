import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  orbitalEnergies : Prop
  linearCombination : Prop
  overlapIntegral : Prop
  hamiltonianMatrix : Prop
  electronDensity : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalTheoryPackage) where
  orbitalEnergiesClosed : M.orbitalEnergies
  linearCombinationClosed : M.linearCombination
  overlapIntegralClosed : M.overlapIntegral
  hamiltonianMatrixClosed : M.hamiltonianMatrix
  electronDensityClosed : M.electronDensity

def MolecularOrbitalClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.orbitalEnergies ∧ M.linearCombination ∧
  M.overlapIntegral ∧ M.hamiltonianMatrix ∧
  M.electronDensity

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.orbitalEnergiesClosed
    (And.intro E.linearCombinationClosed
      (And.intro E.overlapIntegralClosed
        (And.intro E.hamiltonianMatrixClosed
          E.electronDensityClosed)))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse