Class WiFIS.V201.WSC.Laboratori.LaboratoriSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConfirmarAccio","AplicacioConfirmacio").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/ConfirmarAccio",.any)
}

Method DemanarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriPeticioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarCancelacio","LaboratoriPeticioCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/DemanarCancelacio",.any)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarNova","LaboratoriPeticioNova").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/DemanarNova",.any)
}

Method NotificarAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriNotificacioAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarAddicional","LaboratoriNotificacioAddicional").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/NotificarAddicional",.any)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarCancelacio","LaboratoriNotificacioCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/NotificarCancelacio",.any)
}

Method NotificarResultats(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriNotificacioResultatsResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarResultats","LaboratoriNotificacioResultats").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/NotificarResultats",.any)
}

Method RebreMostres(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriRecepcioMostresResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RebreMostres","LaboratoriRecepcioMostres").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/RebreMostres",.any)
}

Method RespondreAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriRespostaAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreAddicional","LaboratoriRespostaAddicional").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/RespondreAddicional",.any)
}

Method RespondreCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriRespostaCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreCancelacio","LaboratoriRespostaCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/RespondreCancelacio",.any)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.WSC.s1.WSResposta(XMLNAME="LaboratoriRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreNova","LaboratoriRespostaNova").Invoke($this,"http://pdm.isalut.gencat.net/Laboratori/RespondreNova",.any)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/WiFISIntegration/services/Laboratori.asmx";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "Laboratori";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/WSC/Laboratori/LaboratoriSoap.xml#2 $";

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Laboratori";

}
