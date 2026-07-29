import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.MassAndEnergyBalances

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ThermodynamicConstitutivePackage where
  stateEquations : Prop
  enthalpyModels : Prop
  heatCapacityDefined : Prop
  phaseEquilibria : Prop
  transportProperties : Prop

structure ThermodynamicConstitutiveEvidence (T : ThermodynamicConstitutivePackage) where
  stateEquationsClosed : T.stateEquations
  enthalpyModelsClosed : T.enthalpyModels
  heatCapacityDefinedClosed : T.heatCapacityDefined
  phaseEquilibriaClosed : T.phaseEquilibria
  transportPropertiesClosed : T.transportProperties

def ThermodynamicConstitutiveClosed (T : ThermodynamicConstitutivePackage) : Prop :=
  T.stateEquations ∧ T.enthalpyModels ∧ T.heatCapacityDefined ∧ T.phaseEquilibria ∧ T.transportProperties

theorem thermodynamic_constitutive_closed_from_evidence
    (T : ThermodynamicConstitutivePackage) (E : ThermodynamicConstitutiveEvidence T) :
    ThermodynamicConstitutiveClosed T := by
  exact And.intro E.stateEquationsClosed
    (And.intro E.enthalpyModelsClosed
      (And.intro E.heatCapacityDefinedClosed
        (And.intro E.phaseEquilibriaClosed E.transportPropertiesClosed)))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse