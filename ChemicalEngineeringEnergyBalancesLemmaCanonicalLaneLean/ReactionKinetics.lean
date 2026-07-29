import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : Prop
  rateExpression : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  concentrationDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  reactionRateConstantClosed : R.reactionRateConstant
  rateExpressionClosed : R.rateExpression
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  concentrationDependenceClosed : R.concentrationDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.reactionRateConstant ∧ R.rateExpression ∧
  R.activationEnergy ∧ R.temperatureDependence ∧
  R.concentrationDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.reactionRateConstantClosed
    (And.intro E.rateExpressionClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.temperatureDependenceClosed
          E.concentrationDependenceClosed)))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse