import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure EnergyBalanceEquationPackage where
  accumulationTerm : Prop
  convectionTerm : Prop
  conductionTerm : Prop
  reactionHeatTerm : Prop
  workTerm : Prop
  steadyStateCondition : Prop

structure EnergyBalanceEquationEvidence (E : EnergyBalanceEquationPackage) where
  accumulationTermClosed : E.accumulationTerm
  convectionTermClosed : E.convectionTerm
  conductionTermClosed : E.conductionTerm
  reactionHeatTermClosed : E.reactionHeatTerm
  workTermClosed : E.workTerm
  steadyStateConditionClosed : E.steadyStateCondition

def EnergyBalanceEquationClosed (E : EnergyBalanceEquationPackage) : Prop :=
  E.accumulationTerm ∧ E.convectionTerm ∧
  E.conductionTerm ∧ E.reactionHeatTerm ∧
  E.workTerm ∧ E.steadyStateCondition

theorem energy_balance_equation_closed_from_evidence (E : EnergyBalanceEquationPackage)
    (Ev : EnergyBalanceEquationEvidence E) : EnergyBalanceEquationClosed E := by
  exact And.intro Ev.accumulationTermClosed
    (And.intro Ev.convectionTermClosed
      (And.intro Ev.conductionTermClosed
        (And.intro Ev.reactionHeatTermClosed
          (And.intro Ev.workTermClosed
            Ev.steadyStateConditionClosed))))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse