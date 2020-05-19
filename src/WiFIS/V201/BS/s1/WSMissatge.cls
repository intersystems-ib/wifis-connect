/// Created from: c:/temp/wifis_2.0.1_latest/wsdl/wifis_comu.xsd
/// Modificado manualmente para heredar de %SerialObject
Class WiFIS.V201.BS.s1.WSMissatge Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/BS/s1/WSMissatge.xml#3 $";

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://pdm.isalut.gencat.net/";

Parameter XMLNAME = "WSMissatge";

Parameter XMLSEQUENCE = 1;

Property codi As %String(MAXLEN = "", XMLNAME = "codi");

Property descripcio As %String(MAXLEN = "", XMLNAME = "descripcio");

Property IDFlux As %String(MAXLEN = "", XMLNAME = "IDFlux");

Storage Default
{
<Data name="WSMissatgeState">
<Value name="1">
<Value>codi</Value>
</Value>
<Value name="2">
<Value>descripcio</Value>
</Value>
<Value name="3">
<Value>IDFlux</Value>
</Value>
</Data>
<State>WSMissatgeState</State>
<StreamLocation>^WiFIS.V201.BS.s1.WSMissatgeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
