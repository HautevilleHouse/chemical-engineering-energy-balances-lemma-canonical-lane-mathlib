import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Pow

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EnergyBalanceSystem where
  carrier : Type
  topology : TopologicalSpace carrier

structure EnergyBalanceAdmittedObject where
  system : EnergyBalanceSystem
  massBalanceEquations : Prop
  energyBalanceEquations : Prop
  boundaryConditions : Prop
  solutionExists : Prop
  conclusion : solutionExists

structure EnergyBalanceEndgameState where
  object : EnergyBalanceAdmittedObject

def EnergyBalanceWitnessClosed (O : EnergyBalanceAdmittedObject) : Prop :=
  O.solutionExists

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse