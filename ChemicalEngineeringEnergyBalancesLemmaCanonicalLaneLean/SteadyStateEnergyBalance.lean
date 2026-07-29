import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure SteadyStateEnergyBalancePackage where
  inletEnthalpy : Prop
  outletEnthalpy : Prop
  heatInput : Prop
  shaftWork : Prop
  steadyStateCondition : Prop

structure SteadyStateEnergyBalanceEvidence (S : SteadyStateEnergyBalancePackage) where
  inletEnthalpyClosed : S.inletEnthalpy
  outletEnthalpyClosed : S.outletEnthalpy
  heatInputClosed : S.heatInput
  shaftWorkClosed : S.shaftWork
  steadyStateConditionClosed : S.steadyStateCondition

def SteadyStateEnergyBalanceClosed (S : SteadyStateEnergyBalancePackage) : Prop :=
  S.inletEnthalpy ∧ S.outletEnthalpy ∧
  S.heatInput ∧ S.shaftWork ∧ S.steadyStateCondition

theorem steady_state_energy_balance_closed_from_evidence
    (S : SteadyStateEnergyBalancePackage) (E : SteadyStateEnergyBalanceEvidence S) :
    SteadyStateEnergyBalanceClosed S := by
  exact And.intro E.inletEnthalpyClosed
    (And.intro E.outletEnthalpyClosed
      (And.intro E.heatInputClosed
        (And.intro E.shaftWorkClosed E.steadyStateConditionClosed)))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse
