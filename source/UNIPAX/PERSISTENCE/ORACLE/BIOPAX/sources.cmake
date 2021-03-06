SET(SOURCES_LIST
BindingFeature-odb.cxx
BioSource-odb.cxx
BiochemicalPathwayStep-odb.cxx
BiochemicalReaction-odb.cxx
Catalysis-odb.cxx
CellVocabulary-odb.cxx
CellularLocationVocabulary-odb.cxx
ChemicalStructure-odb.cxx
Complex-odb.cxx
ComplexAssembly-odb.cxx
Control-odb.cxx
ControlledVocabulary-odb.cxx
Conversion-odb.cxx
CovalentBindingFeature-odb.cxx
Degradation-odb.cxx
DeltaG-odb.cxx
Dna-odb.cxx
DnaReference-odb.cxx
DnaRegion-odb.cxx
DnaRegionReference-odb.cxx
Entity-odb.cxx
EntityFeature-odb.cxx
EntityReference-odb.cxx
EntityReferenceTypeVocabulary-odb.cxx
Evidence-odb.cxx
EvidenceCodeVocabulary-odb.cxx
ExperimentalForm-odb.cxx
ExperimentalFormVocabulary-odb.cxx
FragmentFeature-odb.cxx
Gene-odb.cxx
GeneticInteraction-odb.cxx
Interaction-odb.cxx
InteractionVocabulary-odb.cxx
KPrime-odb.cxx
ModificationFeature-odb.cxx
Modulation-odb.cxx
MolecularInteraction-odb.cxx
Pathway-odb.cxx
PathwayStep-odb.cxx
PhenotypeVocabulary-odb.cxx
PhysicalEntity-odb.cxx
Protein-odb.cxx
ProteinReference-odb.cxx
Provenance-odb.cxx
PublicationXref-odb.cxx
RelationshipTypeVocabulary-odb.cxx
RelationshipXref-odb.cxx
Rna-odb.cxx
RnaReference-odb.cxx
RnaRegion-odb.cxx
RnaRegionReference-odb.cxx
Score-odb.cxx
SequenceInterval-odb.cxx
SequenceLocation-odb.cxx
SequenceModificationVocabulary-odb.cxx
SequenceRegionVocabulary-odb.cxx
SequenceSite-odb.cxx
SmallMolecule-odb.cxx
SmallMoleculeReference-odb.cxx
Stoichiometry-odb.cxx
TemplateReaction-odb.cxx
TemplateReactionRegulation-odb.cxx
Thing-odb.cxx
TissueVocabulary-odb.cxx
Transport-odb.cxx
TransportWithBiochemicalReaction-odb.cxx
UnificationXref-odb.cxx
UtilityClass-odb.cxx
Xref-odb.cxx
)

ADD_UNIPAX_SOURCES("PERSISTENCE/ORACLE/BIOPAX" "${SOURCES_LIST}")
