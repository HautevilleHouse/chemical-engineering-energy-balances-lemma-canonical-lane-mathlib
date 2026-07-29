import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

def ConstrainedChemicalEngineeringEnergyBalancesLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_engineering_energy_balances_lemma_endgame (A : AdmissibleClass) :
    ConstrainedChemicalEngineeringEnergyBalancesLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse