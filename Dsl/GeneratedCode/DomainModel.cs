﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
namespace Company.FamilyTree
{
	/// <summary>
	/// DomainModel FamilyTreeDomainModel
	/// Description for Company.FamilyTree.FamilyTree
	/// </summary>
	[DslDesign::DisplayNameResource("Company.FamilyTree.FamilyTreeDomainModel.DisplayName", typeof(global::Company.FamilyTree.FamilyTreeDomainModel), "Company.FamilyTree.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("Company.FamilyTree.FamilyTreeDomainModel.Description", typeof(global::Company.FamilyTree.FamilyTreeDomainModel), "Company.FamilyTree.GeneratedCode.DomainModelResx")]
	[global::System.CLSCompliant(true)]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.CoreDomainModel))]
	[DslModeling::DependsOnDomainModel(typeof(global::Microsoft.VisualStudio.Modeling.Diagrams.CoreDesignSurfaceDomainModel))]
	[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
	[DslModeling::DomainObjectId("48e54e0b-f999-4334-8b0a-677deb7d7a67")]
	public partial class FamilyTreeDomainModel : DslModeling::DomainModel
	{
		#region Constructor, domain model Id
	
		/// <summary>
		/// FamilyTreeDomainModel domain model Id.
		/// </summary>
		public static readonly global::System.Guid DomainModelId = new global::System.Guid(0x48e54e0b, 0xf999, 0x4334, 0x8b, 0x0a, 0x67, 0x7d, 0xeb, 0x7d, 0x7a, 0x67);
	
		/// <summary>
		/// Constructor.
		/// </summary>
		/// <param name="store">Store containing the domain model.</param>
		public FamilyTreeDomainModel(DslModeling::Store store)
			: base(store, DomainModelId)
		{
			// Call the partial method to allow any required serialization setup to be done.
			this.InitializeSerialization(store);		
		}
		
	
		///<Summary>
		/// Defines a partial method that will be called from the constructor to
		/// allow any necessary serialization setup to be done.
		///</Summary>
		///<remarks>
		/// For a DSL created with the DSL Designer wizard, an implementation of this 
		/// method will be generated in the GeneratedCode\SerializationHelper.cs class.
		///</remarks>
		partial void InitializeSerialization(DslModeling::Store store);
	
	
		#endregion
		#region Domain model reflection
			
		/// <summary>
		/// Gets the list of generated domain model types (classes, rules, relationships).
		/// </summary>
		/// <returns>List of types.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override global::System.Type[] GetGeneratedDomainModelTypes()
		{
			return new global::System.Type[]
			{
				typeof(FamilyTreeModel),
				typeof(Person),
				typeof(Town),
				typeof(Nationality),
				typeof(FamilyTreeModelHasPeople),
				typeof(PersonReferencesChildren),
				typeof(FamilyTreeModelHasTowns),
				typeof(Residence),
				typeof(FamilyTreeModelHasNationalities),
				typeof(NationalityReferencesPersons),
				typeof(FamilyTreeDiagram),
				typeof(ExampleConnector),
				typeof(TownConnector),
				typeof(nAtionalityConnector),
				typeof(ExampleShape),
				typeof(TownShape),
				typeof(NationalityShape),
				typeof(global::Company.FamilyTree.FixUpDiagram),
				typeof(global::Company.FamilyTree.ConnectorRolePlayerChanged),
			};
		}
		/// <summary>
		/// Gets the list of generated domain properties.
		/// </summary>
		/// <returns>List of property data.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		protected sealed override DomainMemberInfo[] GetGeneratedDomainProperties()
		{
			return new DomainMemberInfo[]
			{
				new DomainMemberInfo(typeof(Person), "Name", Person.NameDomainPropertyId, typeof(Person.NamePropertyHandler)),
				new DomainMemberInfo(typeof(Person), "BirthYear", Person.BirthYearDomainPropertyId, typeof(Person.BirthYearPropertyHandler)),
				new DomainMemberInfo(typeof(Person), "DeathYear", Person.DeathYearDomainPropertyId, typeof(Person.DeathYearPropertyHandler)),
				new DomainMemberInfo(typeof(Person), "Male", Person.MaleDomainPropertyId, typeof(Person.MalePropertyHandler)),
				new DomainMemberInfo(typeof(Person), "DecoratorControl", Person.DecoratorControlDomainPropertyId, typeof(Person.DecoratorControlPropertyHandler)),
				new DomainMemberInfo(typeof(Town), "Name", Town.NameDomainPropertyId, typeof(Town.NamePropertyHandler)),
				new DomainMemberInfo(typeof(Nationality), "Name", Nationality.NameDomainPropertyId, typeof(Nationality.NamePropertyHandler)),
			};
		}
		/// <summary>
		/// Gets the list of generated domain roles.
		/// </summary>
		/// <returns>List of role data.</returns>
		protected sealed override DomainRolePlayerInfo[] GetGeneratedDomainRoles()
		{
			return new DomainRolePlayerInfo[]
			{
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasPeople), "FamilyTreeModel", FamilyTreeModelHasPeople.FamilyTreeModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasPeople), "Element", FamilyTreeModelHasPeople.ElementDomainRoleId),
				new DomainRolePlayerInfo(typeof(PersonReferencesChildren), "Source", PersonReferencesChildren.SourceDomainRoleId),
				new DomainRolePlayerInfo(typeof(PersonReferencesChildren), "Target", PersonReferencesChildren.TargetDomainRoleId),
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasTowns), "FamilyTreeModel", FamilyTreeModelHasTowns.FamilyTreeModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasTowns), "Town", FamilyTreeModelHasTowns.TownDomainRoleId),
				new DomainRolePlayerInfo(typeof(Residence), "Town", Residence.TownDomainRoleId),
				new DomainRolePlayerInfo(typeof(Residence), "Person", Residence.PersonDomainRoleId),
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasNationalities), "FamilyTreeModel", FamilyTreeModelHasNationalities.FamilyTreeModelDomainRoleId),
				new DomainRolePlayerInfo(typeof(FamilyTreeModelHasNationalities), "Nationality", FamilyTreeModelHasNationalities.NationalityDomainRoleId),
				new DomainRolePlayerInfo(typeof(NationalityReferencesPersons), "Nationality", NationalityReferencesPersons.NationalityDomainRoleId),
				new DomainRolePlayerInfo(typeof(NationalityReferencesPersons), "Person", NationalityReferencesPersons.PersonDomainRoleId),
			};
		}
		#endregion
		#region Factory methods
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementMap;
	
		/// <summary>
		/// Creates an element of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementType">Element type which belongs to this domain model.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]	
		public sealed override DslModeling::ModelElement CreateElement(DslModeling::Partition partition, global::System.Type elementType, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementType == null) throw new global::System.ArgumentNullException("elementType");
	
			if (createElementMap == null)
			{
				createElementMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(11);
				createElementMap.Add(typeof(FamilyTreeModel), 0);
				createElementMap.Add(typeof(Person), 1);
				createElementMap.Add(typeof(Town), 2);
				createElementMap.Add(typeof(Nationality), 3);
				createElementMap.Add(typeof(FamilyTreeDiagram), 4);
				createElementMap.Add(typeof(ExampleConnector), 5);
				createElementMap.Add(typeof(TownConnector), 6);
				createElementMap.Add(typeof(nAtionalityConnector), 7);
				createElementMap.Add(typeof(ExampleShape), 8);
				createElementMap.Add(typeof(TownShape), 9);
				createElementMap.Add(typeof(NationalityShape), 10);
			}
			int index;
			if (!createElementMap.TryGetValue(elementType, out index))
			{
				// construct exception error message		
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.FamilyTree.FamilyTreeDomainModel.SingletonResourceManager.GetString("UnrecognizedElementType"),
								elementType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementType");
			}
			switch (index)
			{
				case 0: return new FamilyTreeModel(partition, propertyAssignments);
				case 1: return new Person(partition, propertyAssignments);
				case 2: return new Town(partition, propertyAssignments);
				case 3: return new Nationality(partition, propertyAssignments);
				case 4: return new FamilyTreeDiagram(partition, propertyAssignments);
				case 5: return new ExampleConnector(partition, propertyAssignments);
				case 6: return new TownConnector(partition, propertyAssignments);
				case 7: return new nAtionalityConnector(partition, propertyAssignments);
				case 8: return new ExampleShape(partition, propertyAssignments);
				case 9: return new TownShape(partition, propertyAssignments);
				case 10: return new NationalityShape(partition, propertyAssignments);
				default: return null;
			}
		}
	
		private static global::System.Collections.Generic.Dictionary<global::System.Type, int> createElementLinkMap;
	
		/// <summary>
		/// Creates an element link of specified type.
		/// </summary>
		/// <param name="partition">Partition where element is to be created.</param>
		/// <param name="elementLinkType">Element link type which belongs to this domain model.</param>
		/// <param name="roleAssignments">List of relationship role assignments for the new link.</param>
		/// <param name="propertyAssignments">New element property assignments.</param>
		/// <returns>Created element link.</returns>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
		public sealed override DslModeling::ElementLink CreateElementLink(DslModeling::Partition partition, global::System.Type elementLinkType, DslModeling::RoleAssignment[] roleAssignments, DslModeling::PropertyAssignment[] propertyAssignments)
		{
			if (elementLinkType == null) throw new global::System.ArgumentNullException("elementLinkType");
			if (roleAssignments == null) throw new global::System.ArgumentNullException("roleAssignments");
	
			if (createElementLinkMap == null)
			{
				createElementLinkMap = new global::System.Collections.Generic.Dictionary<global::System.Type, int>(6);
				createElementLinkMap.Add(typeof(FamilyTreeModelHasPeople), 0);
				createElementLinkMap.Add(typeof(PersonReferencesChildren), 1);
				createElementLinkMap.Add(typeof(FamilyTreeModelHasTowns), 2);
				createElementLinkMap.Add(typeof(Residence), 3);
				createElementLinkMap.Add(typeof(FamilyTreeModelHasNationalities), 4);
				createElementLinkMap.Add(typeof(NationalityReferencesPersons), 5);
			}
			int index;
			if (!createElementLinkMap.TryGetValue(elementLinkType, out index))
			{
				// construct exception error message
				string exceptionError = string.Format(
								global::System.Globalization.CultureInfo.CurrentCulture,
								global::Company.FamilyTree.FamilyTreeDomainModel.SingletonResourceManager.GetString("UnrecognizedElementLinkType"),
								elementLinkType.Name);
				throw new global::System.ArgumentException(exceptionError, "elementLinkType");
			
			}
			switch (index)
			{
				case 0: return new FamilyTreeModelHasPeople(partition, roleAssignments, propertyAssignments);
				case 1: return new PersonReferencesChildren(partition, roleAssignments, propertyAssignments);
				case 2: return new FamilyTreeModelHasTowns(partition, roleAssignments, propertyAssignments);
				case 3: return new Residence(partition, roleAssignments, propertyAssignments);
				case 4: return new FamilyTreeModelHasNationalities(partition, roleAssignments, propertyAssignments);
				case 5: return new NationalityReferencesPersons(partition, roleAssignments, propertyAssignments);
				default: return null;
			}
		}
		#endregion
		#region Resource manager
		
		private static global::System.Resources.ResourceManager resourceManager;
		
		/// <summary>
		/// The base name of this model's resources.
		/// </summary>
		public const string ResourceBaseName = "Company.FamilyTree.GeneratedCode.DomainModelResx";
		
		/// <summary>
		/// Gets the DomainModel's ResourceManager. If the ResourceManager does not already exist, then it is created.
		/// </summary>
		public override global::System.Resources.ResourceManager ResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				return FamilyTreeDomainModel.SingletonResourceManager;
			}
		}
	
		/// <summary>
		/// Gets the Singleton ResourceManager for this domain model.
		/// </summary>
		public static global::System.Resources.ResourceManager SingletonResourceManager
		{
			[global::System.Diagnostics.DebuggerStepThrough]
			get
			{
				if (FamilyTreeDomainModel.resourceManager == null)
				{
					FamilyTreeDomainModel.resourceManager = new global::System.Resources.ResourceManager(ResourceBaseName, typeof(FamilyTreeDomainModel).Assembly);
				}
				return FamilyTreeDomainModel.resourceManager;
			}
		}
		#endregion
		#region Copy/Remove closures
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter copyClosure;
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter removeClosure;
		/// <summary>
		/// Returns an IElementVisitorFilter that corresponds to the ClosureType.
		/// </summary>
		/// <param name="type">closure type</param>
		/// <param name="rootElements">collection of root elements</param>
		/// <returns>IElementVisitorFilter or null</returns>
		public override DslModeling::IElementVisitorFilter GetClosureFilter(DslModeling::ClosureType type, global::System.Collections.Generic.ICollection<DslModeling::ModelElement> rootElements)
		{
			switch (type)
			{
				case DslModeling::ClosureType.CopyClosure:
					return FamilyTreeDomainModel.CopyClosure;
				case DslModeling::ClosureType.DeleteClosure:
					return FamilyTreeDomainModel.DeleteClosure;
			}
			return base.GetClosureFilter(type, rootElements);
		}
		/// <summary>
		/// CopyClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter CopyClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (FamilyTreeDomainModel.copyClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter copyFilter = new DslModeling::ChainingElementVisitorFilter();
					copyFilter.AddFilter(new FamilyTreeCopyClosure());
					copyFilter.AddFilter(new DslModeling::CoreCopyClosure());
					copyFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceCopyClosure());
					
					FamilyTreeDomainModel.copyClosure = copyFilter;
				}
				return FamilyTreeDomainModel.copyClosure;
			}
		}
		/// <summary>
		/// DeleteClosure cache
		/// </summary>
		private static DslModeling::IElementVisitorFilter DeleteClosure
		{
			get
			{
				// Incorporate all of the closures from the models we extend
				if (FamilyTreeDomainModel.removeClosure == null)
				{
					DslModeling::ChainingElementVisitorFilter removeFilter = new DslModeling::ChainingElementVisitorFilter();
					removeFilter.AddFilter(new FamilyTreeDeleteClosure());
					removeFilter.AddFilter(new DslModeling::CoreDeleteClosure());
					removeFilter.AddFilter(new DslDiagrams::CoreDesignSurfaceDeleteClosure());
		
					FamilyTreeDomainModel.removeClosure = removeFilter;
				}
				return FamilyTreeDomainModel.removeClosure;
			}
		}
		#endregion
		#region Diagram rule helpers
		/// <summary>
		/// Enables rules in this domain model related to diagram fixup for the given store.
		/// If diagram data will be loaded into the store, this method should be called first to ensure
		/// that the diagram behaves properly.
		/// </summary>
		public static void EnableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.EnableRule(typeof(global::Company.FamilyTree.FixUpDiagram));
			ruleManager.EnableRule(typeof(global::Company.FamilyTree.ConnectorRolePlayerChanged));
		}
		
		/// <summary>
		/// Disables rules in this domain model related to diagram fixup for the given store.
		/// </summary>
		public static void DisableDiagramRules(DslModeling::Store store)
		{
			if(store == null) throw new global::System.ArgumentNullException("store");
			
			DslModeling::RuleManager ruleManager = store.RuleManager;
			ruleManager.DisableRule(typeof(global::Company.FamilyTree.FixUpDiagram));
			ruleManager.DisableRule(typeof(global::Company.FamilyTree.ConnectorRolePlayerChanged));
		}
		#endregion
	}
		
	#region Copy/Remove closure classes
	/// <summary>
	/// Remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class FamilyTreeDeleteClosure : FamilyTreeDeleteClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public FamilyTreeDeleteClosure() : base()
		{
		}
	}
	
	/// <summary>
	/// Base class for remove closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class FamilyTreeDeleteClosureBase : DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary domainRoles;
		/// <summary>
		/// Constructor
		/// </summary>
		public FamilyTreeDeleteClosureBase()
		{
			#region Initialize DomainData Table
			DomainRoles.Add(global::Company.FamilyTree.FamilyTreeModelHasPeople.ElementDomainRoleId, true);
			DomainRoles.Add(global::Company.FamilyTree.FamilyTreeModelHasTowns.TownDomainRoleId, true);
			DomainRoles.Add(global::Company.FamilyTree.FamilyTreeModelHasNationalities.NationalityDomainRoleId, true);
			#endregion
		}
		/// <summary>
		/// Called to ask the filter if a particular relationship from a source element should be included in the traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="sourceRoleInfo">DomainRoleInfo of the role that the source element is playing in the relationship</param>
		/// <param name="domainRelationshipInfo">DomainRelationshipInfo for the ElementLink in question</param>
		/// <param name="targetRelationship">Relationship in question</param>
		/// <returns>Yes if the relationship should be traversed</returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRelationship(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::DomainRoleInfo sourceRoleInfo, DslModeling::DomainRelationshipInfo domainRelationshipInfo, DslModeling::ElementLink targetRelationship)
		{
			return DslModeling::VisitorFilterResult.Yes;
		}
		/// <summary>
		/// Called to ask the filter if a particular role player should be Visited during traversal
		/// </summary>
		/// <param name="walker">ElementWalker that is traversing the model</param>
		/// <param name="sourceElement">Model Element playing the source role</param>
		/// <param name="elementLink">Element Link that forms the relationship to the role player in question</param>
		/// <param name="targetDomainRole">DomainRoleInfo of the target role</param>
		/// <param name="targetRolePlayer">Model Element that plays the target role in the relationship</param>
		/// <returns></returns>
		public virtual DslModeling::VisitorFilterResult ShouldVisitRolePlayer(DslModeling::ElementWalker walker, DslModeling::ModelElement sourceElement, DslModeling::ElementLink elementLink, DslModeling::DomainRoleInfo targetDomainRole, DslModeling::ModelElement targetRolePlayer)
		{
			if (targetDomainRole == null) throw new global::System.ArgumentNullException("targetDomainRole");
			return this.DomainRoles.Contains(targetDomainRole.Id) ? DslModeling::VisitorFilterResult.Yes : DslModeling::VisitorFilterResult.DoNotCare;
		}
		/// <summary>
		/// DomainRoles
		/// </summary>
		private global::System.Collections.Specialized.HybridDictionary DomainRoles
		{
			get
			{
				if (this.domainRoles == null)
				{
					this.domainRoles = new global::System.Collections.Specialized.HybridDictionary();
				}
				return this.domainRoles;
			}
		}
	
	}
	/// <summary>
	/// Copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class FamilyTreeCopyClosure : FamilyTreeCopyClosureBase, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public FamilyTreeCopyClosure() : base()
		{
		}
	}
	/// <summary>
	/// Base class for copy closure visitor filter
	/// </summary>
	[global::System.CLSCompliant(true)]
	public partial class FamilyTreeCopyClosureBase : DslModeling::CopyClosureFilter, DslModeling::IElementVisitorFilter
	{
		/// <summary>
		/// Constructor
		/// </summary>
		public FamilyTreeCopyClosureBase():base()
		{
		}
	}
	#endregion
		
}

