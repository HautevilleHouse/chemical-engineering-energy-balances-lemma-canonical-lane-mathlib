import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ThermodynamicsStatePackage where
  internalEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  gibbsFreeEnergy : Prop
  helmholtzFreeEnergy : Prop
  equationOfState : Prop

structure ThermodynamicsStateEvidence (T : ThermodynamicsStatePackage) where
  internalEnergyClosed : T.internalEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  helmholtzFreeEnergyClosed : T.helmholtzFreeEnergy
  equationOfStateClosed : T.equationOfState

def ThermodynamicsStateClosed (T : ThermodynamicsStatePackage) : Prop :=
  T.internalEnergy ∧ T.enthalpy ∧
  T.entropy ∧ T.gibbsFreeEnergy ∧
  T.helmholtzFreeEnergy ∧ T.equationOfState

theorem thermodynamics_state_closed_from_evidence (T : ThermodynamicsStatePackage)
    (E : ThermodynamicsStateEvidence T) : ThermodynamicsStateClosed T := by
  exact And.intro E.internalEnergyClosed
    (And.intro E.enthalpyClosed
      (And.intro E.entropyClosed
        (And.intro E.gibbsFreeEnergyClosed
          (And.intro E.helmholtzFreeEnergyClosed
            E.equationOfStateClosed))))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse