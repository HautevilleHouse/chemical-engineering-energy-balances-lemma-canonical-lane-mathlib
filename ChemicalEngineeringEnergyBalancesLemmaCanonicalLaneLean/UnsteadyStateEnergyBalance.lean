import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure UnsteadyStateEnergyBalance where
  accumulation : Float
  inletEnthalpy : Float
  outletEnthalpy : Float
  heatAdded : Float
  workDone : Float
  balanceClosed : Prop

structure UnsteadyStateEnergyBalanceEvidence (U : UnsteadyStateEnergyBalance) where
  balanceClosed : U.balanceClosed

def UnsteadyStateEnergyBalanceClosed (U : UnsteadyStateEnergyBalance) : Prop :=
  U.balanceClosed

theorem unsteady_state_energy_balance_closed_from_evidence
    (U : UnsteadyStateEnergyBalance) (E : UnsteadyStateEnergyBalanceEvidence U) :
    UnsteadyStateEnergyBalanceClosed U := by
  exact E.balanceClosed

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse