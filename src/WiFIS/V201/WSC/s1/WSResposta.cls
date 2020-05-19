/// Created from: c:/temp/wifis_2.0.1_latest/wsdl/wifis_comu.xsd
/// Modificado manualmente para heredar de Ens.Response
Class WiFIS.V201.WSC.s1.WSResposta Extends Ens.Response [ ProcedureBlock ]
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/WSC/s1/WSResposta.xml#2 $";

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://pdm.isalut.gencat.net/";

Parameter XMLNAME = "WSResposta";

Parameter XMLSEQUENCE = 1;

Property LlistaMissatges As list Of WiFIS.V201.WSC.s1.WSMissatge(XMLITEMNAME = "Missatge", XMLNAME = "LlistaMissatges", XMLPROJECTION = "COLLECTION");

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
