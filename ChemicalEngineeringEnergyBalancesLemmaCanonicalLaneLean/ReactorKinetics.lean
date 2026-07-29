import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.EnergyBalanceEquation

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ReactionPackage {E : EnergyBalancePackage} where
  reactionRate : ℝ → ℝ → ℝ
  enthalpyOfReaction : ℝ
  heatGeneration : ℝ → ℝ := λ t => reactionRate t 298 * enthalpyOfReaction
  energyCoupling : ∀ t, heatGeneration t + E.heatTransfer t = E.accumulation t - E.shaftWork t

structure ReactionEvidence {E : EnergyBalancePackage} (R : ReactionPackage E) where
  energyCouplingClosed : ∀ t, R.energyCoupling t

def ReactionClosed {E : EnergyBalancePackage} (R : ReactionPackage E) : Prop :=
  ∀ t, R.energyCoupling t

theorem reaction_closed_from_evidence {E : EnergyBalancePackage} (R : ReactionPackage E) (ev : ReactionEvidence R) : ReactionClosed R :=
  ev.energyCouplingClosed

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse
