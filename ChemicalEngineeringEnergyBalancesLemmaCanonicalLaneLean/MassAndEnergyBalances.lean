import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure MassAndEnergyBalancePackage where
  totalMassBalance : Prop
  componentMassBalances : Prop
  energyBalanceEquation : Prop
  closureConditions : Prop

structure MassAndEnergyBalanceEvidence (P : MassAndEnergyBalancePackage) where
  totalMassBalanceClosed : P.totalMassBalance
  componentMassBalancesClosed : P.componentMassBalances
  energyBalanceEquationClosed : P.energyBalanceEquation
  closureConditionsClosed : P.closureConditions

def MassAndEnergyBalanceClosed (P : MassAndEnergyBalancePackage) : Prop :=
  P.totalMassBalance ∧ P.componentMassBalances ∧ P.energyBalanceEquation ∧ P.closureConditions

theorem mass_and_energy_balance_closed_from_evidence
    (P : MassAndEnergyBalancePackage) (E : MassAndEnergyBalanceEvidence P) :
    MassAndEnergyBalanceClosed P := by
  exact And.intro E.totalMassBalanceClosed
    (And.intro E.componentMassBalancesClosed
      (And.intro E.energyBalanceEquationClosed E.closureConditionsClosed))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse