import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure OpenSystemEnergyBalance where
  system : EnergyBalanceSystem
  kineticEnergyChange : Prop
  potentialEnergyChange : Prop
  internalEnergyChange : Prop
  flowWork : Prop

def openSystemEnergyBalanceClosed (O : OpenSystemEnergyBalance) : Prop :=
  O.kineticEnergyChange ∧ O.potentialEnergyChange ∧ O.internalEnergyChange ∧ O.flowWork ∧ EnergyBalanceSystemClosed O.system

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse