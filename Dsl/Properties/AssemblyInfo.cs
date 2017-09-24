#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Company")]
[assembly: AssemblyProduct(@"FamilyTree")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"Company.FamilyTree.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100D902E5B85A969EF14AD39AFECC811E3BC5D597263C50145365B9F4C8442C70782A19B2C096C85578D8A8A5CEFFC3594C6D7547FA79FD8CC22B792F0FA5DBCD5B90F10BDB54FC48CC1CEE2D6001FC1D34F3635E31ED2ECD39E03273B05CB6663C48FCEC70B0BBCF35B9CCE118D247AB8CFE1D215DE18438B130B10CBCC47735D2")]