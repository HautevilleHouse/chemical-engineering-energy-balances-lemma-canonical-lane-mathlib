import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.ThermodynamicConstitutiveRelations

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpressions : Prop
  equilibriumConstants : Prop
  conversionLimits : Prop
  heatOfReaction : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateExpressionsClosed : R.rateExpressions
  equilibriumConstantsClosed : R.equilibriumConstants
  conversionLimitsClosed : R.conversionLimits
  heatOfReactionClosed : R.heatOfReaction

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateExpressions ∧ R.equilibriumConstants ∧ R.conversionLimits ∧ R.heatOfReaction

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateExpressionsClosed
    (And.intro E.equilibriumConstantsClosed
      (And.intro E.conversionLimitsClosed E.heatOfReactionClosed))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse