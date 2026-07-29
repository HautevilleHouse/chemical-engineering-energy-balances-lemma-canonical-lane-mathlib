import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure MaxwellRelations where
  temperaturePressureDerivative : Prop
  entropyVolumeDerivative : Prop
  helmholtzEnergy : Prop
  gibbsEnergy : Prop

structure EnthalpyDefinition where
  internalEnergy : Prop
  pressureVolumeWork : Prop
  enthalpyDefined : Prop

def thermodynamicRelationsClosed (M : MaxwellRelations) (E : EnthalpyDefinition) : Prop :=
  M.temperaturePressureDerivative ∧ M.entropyVolumeDerivative ∧ M.helmholtzEnergy ∧ M.gibbsEnergy ∧ E.enthalpyDefined

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse