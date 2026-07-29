import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure EnthalpyAndHeatCapacity where
  specificEnthalpy : Float
  heatCapacity : Float
  temperature : Float
  enthalpyDefined : Prop

structure EnthalpyAndHeatCapacityEvidence (E : EnthalpyAndHeatCapacity) where
  enthalpyDefined : E.enthalpyDefined

def EnthalpyAndHeatCapacityClosed (E : EnthalpyAndHeatCapacity) : Prop :=
  E.enthalpyDefined

theorem enthalpy_and_heat_capacity_closed_from_evidence
    (E : EnthalpyAndHeatCapacity) (Ev : EnthalpyAndHeatCapacityEvidence E) :
    EnthalpyAndHeatCapacityClosed E := by
  exact Ev.enthalpyDefined

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse