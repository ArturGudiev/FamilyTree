<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="48e54e0b-f999-4334-8b0a-677deb7d7a67" Description="Description for Company.FamilyTree.FamilyTree" Name="FamilyTree" DisplayName="FamilyTree" Namespace="Company.FamilyTree" ProductName="FamilyTree" CompanyName="Company" PackageGuid="c43d6173-97a5-43dd-a2cb-29146c5c09bd" PackageNamespace="Company.FamilyTree" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="e3d1d856-a96c-4702-9887-44c4f0c5ac3e" Description="The root in which all other elements are embedded. Appears as a diagram." Name="FamilyTreeModel" DisplayName="Family Tree Model" Namespace="Company.FamilyTree">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Person" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FamilyTreeModelHasPeople.People</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Town" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FamilyTreeModelHasTowns.Towns</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Nationality" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FamilyTreeModelHasNationalities.Nationalities</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="2088beac-8520-447b-aba0-767a8052626c" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Person" DisplayName="Person" Namespace="Company.FamilyTree">
      <Properties>
        <DomainProperty Id="cc48828b-6971-4a18-9f79-4dd0a0389628" Description="Description for Company.FamilyTree.Person.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="900194b0-9b17-4d9e-8f37-1effa8096776" Description="Description for Company.FamilyTree.Person.Birth Year" Name="BirthYear" DisplayName="Birth Year">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9bb2b829-765b-4c28-99d5-aed0037ebdc1" Description="Description for Company.FamilyTree.Person.Death Year" Name="DeathYear" DisplayName="Death Year">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="f954a0aa-20f0-49c6-844d-e35da02d5c83" Description="Description for Company.FamilyTree.Person.Male" Name="Male" DisplayName="Male">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9a8a82fb-1116-4344-8f55-0927d4617015" Description="Description for Company.FamilyTree.Person.Decorator Control" Name="DecoratorControl" DisplayName="Decorator Control" Kind="Calculated" IsBrowsable="false">
          <Type>
            <ExternalTypeMoniker Name="/System/Boolean" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="4eb9e2ce-e785-4b48-8c4d-4e80d9eeb831" Description="Description for Company.FamilyTree.Town" Name="Town" DisplayName="Town" Namespace="Company.FamilyTree">
      <Properties>
        <DomainProperty Id="3e0721e5-e0f5-4cca-b227-488db1e2c9d6" Description="Description for Company.FamilyTree.Town.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="463b27c2-410a-44de-93de-b1d2d3943213" Description="Description for Company.FamilyTree.Nationality" Name="Nationality" DisplayName="Nationality" Namespace="Company.FamilyTree">
      <Properties>
        <DomainProperty Id="c868d376-0ddb-4774-b336-72cfd7f16156" Description="Description for Company.FamilyTree.Nationality.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="a9a7b929-6ed7-4362-ba59-dd04719c5d64" Description="Embedding relationship between the Model and Elements" Name="FamilyTreeModelHasPeople" DisplayName="Family Tree Model Has People" Namespace="Company.FamilyTree" IsEmbedding="true">
      <Source>
        <DomainRole Id="90bd59b9-3c89-4468-ac10-f41b6987ec8a" Description="" Name="FamilyTreeModel" DisplayName="Family Tree Model" PropertyName="People" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="People">
          <RolePlayer>
            <DomainClassMoniker Name="FamilyTreeModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="180cda13-6e6b-451e-8796-72e0739e6a23" Description="" Name="Element" DisplayName="Element" PropertyName="FamilyTreeModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Family Tree Model">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="6e9b7214-4cbf-430a-ad02-89badf30079e" Description="Reference relationship between Elements." Name="PersonReferencesChildren" DisplayName="Person References Children" Namespace="Company.FamilyTree">
      <Source>
        <DomainRole Id="fc0a3c0a-63c3-4f82-acf8-60643e3c2e16" Description="Description for Company.FamilyTree.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Children" PropertyDisplayName="Children">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fb4c84f8-3062-4800-8d2c-b21680e83a3d" Description="Description for Company.FamilyTree.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Parents" PropertyDisplayName="Parents">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a541dbe1-3b7e-4d08-817c-398fb7281760" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns" Name="FamilyTreeModelHasTowns" DisplayName="Family Tree Model Has Towns" Namespace="Company.FamilyTree" IsEmbedding="true">
      <Source>
        <DomainRole Id="8a6d92a9-cf70-42d4-9931-d8eaffcfa407" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns.FamilyTreeModel" Name="FamilyTreeModel" DisplayName="Family Tree Model" PropertyName="Towns" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Towns">
          <RolePlayer>
            <DomainClassMoniker Name="FamilyTreeModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="92a058d5-0a36-47da-9df1-cffe92be1e42" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns.Town" Name="Town" DisplayName="Town" PropertyName="FamilyTreeModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Family Tree Model">
          <RolePlayer>
            <DomainClassMoniker Name="Town" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="dbb9973b-a018-4aaf-8806-6176015727ac" Description="Description for Company.FamilyTree.Residence" Name="Residence" DisplayName="Residence" Namespace="Company.FamilyTree">
      <Source>
        <DomainRole Id="c06b4268-2047-4158-8b01-289168e3ae12" Description="Description for Company.FamilyTree.Residence.Town" Name="Town" DisplayName="Town" PropertyName="Residents" PropertyDisplayName="Residents">
          <RolePlayer>
            <DomainClassMoniker Name="Town" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4944f110-d564-4c74-91b6-a4fd0b278f66" Description="Description for Company.FamilyTree.Residence.Person" Name="Person" DisplayName="Person" PropertyName="Town" Multiplicity="ZeroOne" PropertyDisplayName="Town">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8e41d523-38f9-4887-ad87-9acc8f1fcd78" Description="Description for Company.FamilyTree.FamilyTreeModelHasNationalities" Name="FamilyTreeModelHasNationalities" DisplayName="Family Tree Model Has Nationalities" Namespace="Company.FamilyTree" IsEmbedding="true">
      <Source>
        <DomainRole Id="3dde5e62-bd84-43f3-86ec-42d06985d517" Description="Description for Company.FamilyTree.FamilyTreeModelHasNationalities.FamilyTreeModel" Name="FamilyTreeModel" DisplayName="Family Tree Model" PropertyName="Nationalities" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Nationalities">
          <RolePlayer>
            <DomainClassMoniker Name="FamilyTreeModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b11ca844-ee54-4442-97fc-cf843b228b19" Description="Description for Company.FamilyTree.FamilyTreeModelHasNationalities.Nationality" Name="Nationality" DisplayName="Nationality" PropertyName="FamilyTreeModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Family Tree Model">
          <RolePlayer>
            <DomainClassMoniker Name="Nationality" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d49bd10f-bea8-4751-b055-9b9aff468cd9" Description="Description for Company.FamilyTree.NationalityReferencesPersons" Name="NationalityReferencesPersons" DisplayName="Nationality References Persons" Namespace="Company.FamilyTree">
      <Source>
        <DomainRole Id="1abd8a98-8790-4d01-bf9c-12bd21f8ff23" Description="Description for Company.FamilyTree.NationalityReferencesPersons.Nationality" Name="Nationality" DisplayName="Nationality" PropertyName="Persons" PropertyDisplayName="Persons">
          <RolePlayer>
            <DomainClassMoniker Name="Nationality" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9fe8aa40-3523-4fdc-a535-800c3924a54e" Description="Description for Company.FamilyTree.NationalityReferencesPersons.Person" Name="Person" DisplayName="Person" PropertyName="Nationalities" PropertyDisplayName="Nationalities">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="dd810985-8194-4d67-9521-a0f02620dc1b" Description="Shape used to represent ExampleElements on a Diagram." Name="ExampleShape" DisplayName="Example Shape" Namespace="Company.FamilyTree" FixedTooltipText="Example Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DeathDecorator" DisplayName="Death Decorator" DefaultText="DeathDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="BirthDecorator" DisplayName="Birth Decorator" DefaultText="BirthDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="FemaleIcon" DisplayName="Female Icon" DefaultIcon="Resources\female.bmp" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="MaleIcon" DisplayName="Male Icon" DefaultIcon="Resources\gender.bmp" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerMiddleRight" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="NewMaleIcon" DisplayName="New Male Icon" DefaultIcon="Resources\gender.bmp" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="9e12eae0-2fd1-4fe9-b975-32b01ff4b84b" Description="Description for Company.FamilyTree.TownShape" Name="TownShape" DisplayName="Town Shape" Namespace="Company.FamilyTree" FixedTooltipText="Town Shape" FillColor="Red" InitialHeight="1" Geometry="Ellipse">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="06d904dd-a2f5-4c00-8736-59fe30338387" Description="Description for Company.FamilyTree.NationalityShape" Name="NationalityShape" DisplayName="Nationality Shape" Namespace="Company.FamilyTree" FixedTooltipText="Nationality Shape" FillColor="DarkRed" InitialHeight="1" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="dd34ee7a-8533-4d8c-9c99-706d8f0743a6" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.FamilyTree" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
    <Connector Id="1e0ef462-fa19-4c34-98c4-1e83ad1f2672" Description="Description for Company.FamilyTree.TownConnector" Name="TownConnector" DisplayName="Town Connector" Namespace="Company.FamilyTree" FixedTooltipText="Town Connector" Color="DarkRed" />
    <Connector Id="da4b7408-2572-44b5-bc44-cd68bd436cde" Description="Description for Company.FamilyTree.nAtionalityConnector" Name="nAtionalityConnector" DisplayName="NAtionality Connector" Namespace="Company.FamilyTree" FixedTooltipText="NAtionality Connector" Color="DarkRed" />
  </Connectors>
  <XmlSerializationBehavior Name="FamilyTreeSerializationBehavior" Namespace="Company.FamilyTree">
    <ClassData>
      <XmlClassData TypeName="FamilyTreeModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelMoniker" ElementName="familyTreeModel" MonikerTypeName="FamilyTreeModelMoniker">
        <DomainClassMoniker Name="FamilyTreeModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="people">
            <DomainRelationshipMoniker Name="FamilyTreeModelHasPeople" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="towns">
            <DomainRelationshipMoniker Name="FamilyTreeModelHasTowns" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="nationalities">
            <DomainRelationshipMoniker Name="FamilyTreeModelHasNationalities" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Person" MonikerAttributeName="name" SerializeId="true" MonikerElementName="personMoniker" ElementName="person" MonikerTypeName="PersonMoniker">
        <DomainClassMoniker Name="Person" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Person/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="children">
            <DomainRelationshipMoniker Name="PersonReferencesChildren" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="birthYear">
            <DomainPropertyMoniker Name="Person/BirthYear" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="deathYear">
            <DomainPropertyMoniker Name="Person/DeathYear" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="male">
            <DomainPropertyMoniker Name="Person/Male" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="decoratorControl" Representation="Ignore">
            <DomainPropertyMoniker Name="Person/DecoratorControl" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeModelHasPeople" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelHasPeopleMoniker" ElementName="familyTreeModelHasPeople" MonikerTypeName="FamilyTreeModelHasPeopleMoniker">
        <DomainRelationshipMoniker Name="FamilyTreeModelHasPeople" />
      </XmlClassData>
      <XmlClassData TypeName="PersonReferencesChildren" MonikerAttributeName="" SerializeId="true" MonikerElementName="personReferencesChildrenMoniker" ElementName="personReferencesChildren" MonikerTypeName="PersonReferencesChildrenMoniker">
        <DomainRelationshipMoniker Name="PersonReferencesChildren" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleShapeMoniker" ElementName="exampleShape" MonikerTypeName="ExampleShapeMoniker">
        <GeometryShapeMoniker Name="ExampleShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeDiagramMoniker" ElementName="familyTreeDiagram" MonikerTypeName="FamilyTreeDiagramMoniker">
        <DiagramMoniker Name="FamilyTreeDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeModelHasTowns" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelHasTownsMoniker" ElementName="familyTreeModelHasTowns" MonikerTypeName="FamilyTreeModelHasTownsMoniker">
        <DomainRelationshipMoniker Name="FamilyTreeModelHasTowns" />
      </XmlClassData>
      <XmlClassData TypeName="Town" MonikerAttributeName="" SerializeId="true" MonikerElementName="townMoniker" ElementName="town" MonikerTypeName="TownMoniker">
        <DomainClassMoniker Name="Town" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Town/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="residents">
            <DomainRelationshipMoniker Name="Residence" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Residence" MonikerAttributeName="" SerializeId="true" MonikerElementName="residenceMoniker" ElementName="residence" MonikerTypeName="ResidenceMoniker">
        <DomainRelationshipMoniker Name="Residence" />
      </XmlClassData>
      <XmlClassData TypeName="TownShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="townShapeMoniker" ElementName="townShape" MonikerTypeName="TownShapeMoniker">
        <GeometryShapeMoniker Name="TownShape" />
      </XmlClassData>
      <XmlClassData TypeName="TownConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="townConnectorMoniker" ElementName="townConnector" MonikerTypeName="TownConnectorMoniker">
        <ConnectorMoniker Name="TownConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeModelHasNationalities" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelHasNationalitiesMoniker" ElementName="familyTreeModelHasNationalities" MonikerTypeName="FamilyTreeModelHasNationalitiesMoniker">
        <DomainRelationshipMoniker Name="FamilyTreeModelHasNationalities" />
      </XmlClassData>
      <XmlClassData TypeName="Nationality" MonikerAttributeName="" SerializeId="true" MonikerElementName="nationalityMoniker" ElementName="nationality" MonikerTypeName="NationalityMoniker">
        <DomainClassMoniker Name="Nationality" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Nationality/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="persons">
            <DomainRelationshipMoniker Name="NationalityReferencesPersons" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="NationalityReferencesPersons" MonikerAttributeName="" SerializeId="true" MonikerElementName="nationalityReferencesPersonsMoniker" ElementName="nationalityReferencesPersons" MonikerTypeName="NationalityReferencesPersonsMoniker">
        <DomainRelationshipMoniker Name="NationalityReferencesPersons" />
      </XmlClassData>
      <XmlClassData TypeName="NationalityShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="nationalityShapeMoniker" ElementName="nationalityShape" MonikerTypeName="NationalityShapeMoniker">
        <GeometryShapeMoniker Name="NationalityShape" />
      </XmlClassData>
      <XmlClassData TypeName="NAtionalityConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="nAtionalityConnectorMoniker" ElementName="nAtionalityConnector" MonikerTypeName="NAtionalityConnectorMoniker">
        <ConnectorMoniker Name="nAtionalityConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="FamilyTreeExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="PersonReferencesChildrenBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PersonReferencesChildren" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ResidenceBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Residence" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Town" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="NationalityReferencesPersonsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="NationalityReferencesPersons" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Nationality" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="f751ddd3-8ffb-4a30-9733-d6086bdd582e" Description="Description for Company.FamilyTree.FamilyTreeDiagram" Name="FamilyTreeDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.FamilyTree">
    <Class>
      <DomainClassMoniker Name="FamilyTreeModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Person" />
        <ParentElementPath>
          <DomainPath>FamilyTreeModelHasPeople.FamilyTreeModel/!FamilyTreeModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/DeathDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/DeathYear" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ExampleShape/BirthDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/BirthYear" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="ExampleShape/FemaleIcon" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="Person/Male" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="False" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="ExampleShape/MaleIcon" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="Person/Male" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="True" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="ExampleShape/NewMaleIcon" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="Person/DecoratorControl" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="True" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <GeometryShapeMoniker Name="ExampleShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Town" />
        <ParentElementPath>
          <DomainPath>FamilyTreeModelHasTowns.FamilyTreeModel/!FamilyTreeModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TownShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Town/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="TownShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Nationality" />
        <ParentElementPath>
          <DomainPath>FamilyTreeModelHasNationalities.FamilyTreeModel/!FamilyTreeModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="NationalityShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Nationality/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="NationalityShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="PersonReferencesChildren" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="TownConnector" />
        <DomainRelationshipMoniker Name="Residence" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="nAtionalityConnector" />
        <DomainRelationshipMoniker Name="NationalityReferencesPersons" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="mydsl1" EditorGuid="0e496977-77cb-49b5-9678-4e74c9138360">
    <RootClass>
      <DomainClassMoniker Name="FamilyTreeModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="FamilyTreeSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="FamilyTree">
      <ElementTool Name="Person2" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Person2" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Person" />
      </ElementTool>
      <ConnectionTool Name="ParentLink" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="Parent Link" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="FamilyTree/PersonReferencesChildrenBuilder" />
      </ConnectionTool>
      <ElementTool Name="TownTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="TownTool" Tooltip="Town Tool" HelpKeyword="TownTool">
        <DomainClassMoniker Name="Town" />
      </ElementTool>
      <ConnectionTool Name="ResidenceConnection" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="ResidenceConnection" Tooltip="Residence Connection" HelpKeyword="ResidenceConnection">
        <ConnectionBuilderMoniker Name="FamilyTree/ResidenceBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="NationalityConnector" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="NationalityConnector" Tooltip="Nationality Connector" HelpKeyword="NationalityConnector">
        <ConnectionBuilderMoniker Name="FamilyTree/NationalityReferencesPersonsBuilder" />
      </ConnectionTool>
      <ElementTool Name="NationalityTool" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="NationalityTool" Tooltip="Nationality Tool" HelpKeyword="CreateNationalityClassF1Keyword">
        <DomainClassMoniker Name="Nationality" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="FamilyTreeDiagram" />
  </Designer>
  <Explorer ExplorerGuid="23043cf1-17d1-4e15-b7e6-e21c60f65ffc" Title="FamilyTree Explorer">
    <ExplorerBehaviorMoniker Name="FamilyTree/FamilyTreeExplorer" />
  </Explorer>
</Dsl>