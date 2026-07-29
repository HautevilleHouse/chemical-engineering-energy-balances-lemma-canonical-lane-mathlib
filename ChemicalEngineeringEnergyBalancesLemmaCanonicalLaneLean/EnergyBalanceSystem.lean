import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure EnergyBalanceSystem where
  controlVolume : Type
  inletStreams : Nat
  outletStreams : Nat
  energyAccumulation : Prop
  netEnergyTransfer : Prop
  workInteraction : Prop
  heatInteraction : Prop

structure EnergyBalanceSystemEvidence (S : EnergyBalanceSystem) where
  energyAccumulationClosed : S.energyAccumulation
  netEnergyTransferClosed : S.netEnergyTransfer
  workInteractionClosed : S.workInteraction
  heatInteractionClosed : S.heatInteraction

def EnergyBalanceSystemClosed (S : EnergyBalanceSystem) : Prop :=
  S.energyAccumulation ∧ S.netEnergyTransfer ∧ S.workInteraction ∧ S.heatInteraction

theorem energy_balance_system_closed_from_evidence (S : EnergyBalanceSystem) (E : EnergyBalanceSystemEvidence S) :
    EnergyBalanceSystemClosed S := by
  exact And.intro E.energyAccumulationClosed
    (And.intro E.netEnergyTransferClosed
      (And.intro E.workInteractionClosed E.heatInteractionClosed))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse