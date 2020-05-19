/// Created from: c:/temp/wifis_2.0.1_latest/wsdl/wifis_comu.xsd
/// Modificado manualmente para heredar de %SerialObject
Class WiFIS.V202.WSC.s1.WSMissatge Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

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
<StreamLocation>^WiFIS.V202.WSC.s1.WSMissatgeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
