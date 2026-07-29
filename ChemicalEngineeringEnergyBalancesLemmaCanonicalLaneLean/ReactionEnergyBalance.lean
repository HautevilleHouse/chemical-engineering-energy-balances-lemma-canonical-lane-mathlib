import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ReactionEnergyBalance where
  stoichiometricCoefficients : List ℝ
  enthalpyOfReaction : ℝ
  temperatureDependence : Prop
  heatOfReaction : ℝ

def reactionEnergyBalanceClosed (R : ReactionEnergyBalance) : Prop :=
  R.temperatureDependence ∧ (R.enthalpyOfReaction = R.heatOfReaction)

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse