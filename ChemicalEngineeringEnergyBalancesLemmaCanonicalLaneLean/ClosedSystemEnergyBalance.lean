import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ClosedSystemEnergyBalance where
  internalEnergyChange : Prop
  heatAdded : Prop
  workDone : Prop
  noMassTransfer : Prop

def closedSystemEnergyBalanceClosed (C : ClosedSystemEnergyBalance) : Prop :=
  C.internalEnergyChange ∧ C.heatAdded ∧ C.workDone ∧ C.noMassTransfer

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse