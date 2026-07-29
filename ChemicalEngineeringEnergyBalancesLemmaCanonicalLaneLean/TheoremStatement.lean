import HautevilleHouse.ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure EnergyBalanceAdmittedObject where
  system : Type
  energyBalanceEquation : Prop
  boundaryConditions : Prop
  solutionConverges : Prop
  conclusion : solutionConverges

def EnergyBalanceWitnessClosed (O : EnergyBalanceAdmittedObject) : Prop :=
  O.solutionConverges

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse