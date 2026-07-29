import ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean.ReactionKineticsAndEquilibrium

namespace HautevilleHouse
namespace ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean

structure TransportPhenomenaPackage where
  momentumTransfer : Prop
  heatTransfer : Prop
  massTransfer : Prop
  boundaryLayerModels : Prop
  closureLaws : Prop

structure TransportPhenomenaEvidence (T : TransportPhenomenaPackage) where
  momentumTransferClosed : T.momentumTransfer
  heatTransferClosed : T.heatTransfer
  massTransferClosed : T.massTransfer
  boundaryLayerModelsClosed : T.boundaryLayerModels
  closureLawsClosed : T.closureLaws

def TransportPhenomenaClosed (T : TransportPhenomenaPackage) : Prop :=
  T.momentumTransfer ∧ T.heatTransfer ∧ T.massTransfer ∧ T.boundaryLayerModels ∧ T.closureLaws

theorem transport_phenomena_closed_from_evidence
    (T : TransportPhenomenaPackage) (E : TransportPhenomenaEvidence T) :
    TransportPhenomenaClosed T := by
  exact And.intro E.momentumTransferClosed
    (And.intro E.heatTransferClosed
      (And.intro E.massTransferClosed
        (And.intro E.boundaryLayerModelsClosed E.closureLawsClosed)))

end ChemicalEngineeringEnergyBalancesLemmaCanonicalLaneLean
end HautevilleHouse