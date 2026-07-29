import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ChemicalAdmittedObject where
  system : Type
  inletStreams : List (String × Float)
  outletStreams : List (String × Float)
  accumulation : Float
  energyBalanceEquation : Prop
  conclusion : energyBalanceEquation

structure AdmissibleClass where
  object : ChemicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse