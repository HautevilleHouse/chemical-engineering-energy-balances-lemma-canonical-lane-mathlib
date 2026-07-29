import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.ReactorKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ThermodynamicPackage {E : EnergyBalancePackage} {R : ReactionPackage E} where
  specificHeat : ℝ → ℝ
  phaseChangeEnthalpy : ℝ
  temperatureProfile : ℝ → ℝ
  thermodynamicConsistency : ∀ t, E.accumulation t = specificHeat (temperatureProfile t) * derivative temperatureProfile t

structure ThermodynamicEvidence {E : EnergyBalancePackage} {R : ReactionPackage E} (T : ThermodynamicPackage E R) where
  thermodynamicConsistencyClosed : ∀ t, T.thermodynamicConsistency t

def ThermodynamicClosed {E : EnergyBalancePackage} {R : ReactionPackage E} (T : ThermodynamicPackage E R) : Prop :=
  ∀ t, T.thermodynamicConsistency t

theorem thermodynamic_closed_from_evidence {E : EnergyBalancePackage} {R : ReactionPackage E} (T : ThermodynamicPackage E R) (ev : ThermodynamicEvidence T) : ThermodynamicClosed T :=
  ev.thermodynamicConsistencyClosed

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse
