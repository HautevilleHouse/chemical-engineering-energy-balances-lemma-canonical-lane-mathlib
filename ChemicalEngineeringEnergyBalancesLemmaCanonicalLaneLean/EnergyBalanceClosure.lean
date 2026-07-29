import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

def ConstrainedEnergyBalanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_energy_balance_endgame (A : AdmissibleClass) :
    ConstrainedEnergyBalanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse