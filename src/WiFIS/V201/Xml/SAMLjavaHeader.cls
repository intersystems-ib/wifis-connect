Class WiFIS.V201.Xml.SAMLjavaHeader Extends (%SOAP.Header, %XML.Adaptor)
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/Xml/SAMLjavaHeader.xml#1 $";

Parameter XMLNAME = "Security";

Parameter NAMESPACE = "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";

/// the XML Raw content for this SOAP Header
Property content As %String(CONTENT = "MIXED", XMLPROJECTION = "content");

/// The XMLPREFIX parameter controls the prefix to be used for the XML namespace that 
/// is given by the NAMESPACE parameter.
Parameter XMLPREFIX As STRING = "wsse";

/// ELEMENTQUALIFIED controls the format of exported XML.  
/// The ELEMENTQUALIFIED specification should be based on the elementFormDefault attribute of the
/// schema that defines the type. 
/// To maintain compatibility, ELEMENTQUALIFIED will default to 1 (true) for literal format export
/// and will default to 0 (false) for encoded or encoded12 format export.  
/// These were the values always previously assumed for the elementFormDefault attribute.
/// NOTE:  Direct use of XMLExport method does not support the ELEMENTQUALIFIED.  The export must be
/// done using %XML.Writer or SOAP support.
Parameter ELEMENTQUALIFIED As BOOLEAN = 0;

}
