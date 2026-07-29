import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure ReactorEnergyBalancePackage where
  systemBoundary : Prop
  accumulationTerm : Prop
  convectiveFlowTerm : Prop
  heatTransferTerm : Prop
  workTerm : Prop
  reactionEnthalpyTerm : Prop

structure ReactorEnergyBalanceEvidence (R : ReactorEnergyBalancePackage) where
  systemBoundaryClosed : R.systemBoundary
  accumulationTermClosed : R.accumulationTerm
  convectiveFlowTermClosed : R.convectiveFlowTerm
  heatTransferTermClosed : R.heatTransferTerm
  workTermClosed : R.workTerm
  reactionEnthalpyTermClosed : R.reactionEnthalpyTerm

def ReactorEnergyBalanceClosed (R : ReactorEnergyBalancePackage) : Prop :=
  R.systemBoundary ∧ R.accumulationTerm ∧
  R.convectiveFlowTerm ∧ R.heatTransferTerm ∧
  R.workTerm ∧ R.reactionEnthalpyTerm

theorem reactor_energy_balance_closed_from_evidence
    (R : ReactorEnergyBalancePackage) (E : ReactorEnergyBalanceEvidence R) :
    ReactorEnergyBalanceClosed R := by
  exact And.intro E.systemBoundaryClosed
    (And.intro E.accumulationTermClosed
      (And.intro E.convectiveFlowTermClosed
        (And.intro E.heatTransferTermClosed
          (And.intro E.workTermClosed E.reactionEnthalpyTermClosed))))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse
