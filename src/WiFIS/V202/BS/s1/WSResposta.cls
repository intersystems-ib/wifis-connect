/// Created from: c:/temp/wifis_2.0.1_latest/wsdl/wifis_comu.xsd
/// Modificado manualmente para heredar de Ens.Response
Class WiFIS.V202.BS.s1.WSResposta Extends Ens.Response [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://pdm.isalut.gencat.net/";

Parameter XMLNAME = "WSResposta";

Parameter XMLSEQUENCE = 1;

Property LlistaMissatges As list Of WiFIS.V202.BS.s1.WSMissatge(XMLITEMNAME = "Missatge", XMLNAME = "LlistaMissatges", XMLPROJECTION = "COLLECTION");

Storage Default
{
<Data name="WSRespostaDefaultData">
<Subscript>"WSResposta"</Subscript>
<Value name="1">
<Value>LlistaMissatges</Value>
</Value>
</Data>
<DefaultData>WSRespostaDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
