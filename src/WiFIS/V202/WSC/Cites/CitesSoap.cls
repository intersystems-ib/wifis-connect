Class WiFIS.V202.WSC.Cites.CitesSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConfirmarAccio","AplicacioConfirmacio").Invoke($this,"http://pdm.isalut.gencat.net/Cites/ConfirmarAccio",.any)
}

Method DemanarDisponibilitat(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaPeticioDisponibilitatResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarDisponibilitat","CitaPeticioDisponibilitat").Invoke($this,"http://pdm.isalut.gencat.net/Cites/DemanarDisponibilitat",.any)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarNova","CitaPeticioNova").Invoke($this,"http://pdm.isalut.gencat.net/Cites/DemanarNova",.any)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarCancelacio","CitaNotificacioCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Cites/NotificarCancelacio",.any)
}

Method NotificarNoPresentacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaNotificacioNoPresentacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarNoPresentacio","CitaNotificacioNoPresentacio").Invoke($this,"http://pdm.isalut.gencat.net/Cites/NotificarNoPresentacio",.any)
}

Method NotificarProgramacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaNotificacioProgramacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarProgramacio","CitaNotificacioProgramacio").Invoke($this,"http://pdm.isalut.gencat.net/Cites/NotificarProgramacio",.any)
}

Method NotificarReprogramacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaNotificacioReprogramacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarReprogramacio","CitaNotificacioReprogramacio").Invoke($this,"http://pdm.isalut.gencat.net/Cites/NotificarReprogramacio",.any)
}

Method RespondreDisponibilitat(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaPeticioDisponibilitatResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreDisponibilitat","CitaRespostaDisponibilitat").Invoke($this,"http://pdm.isalut.gencat.net/Cites/RespondreDisponibilitat",.any)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="CitaRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreNova","CitaRespostaNova").Invoke($this,"http://pdm.isalut.gencat.net/Cites/RespondreNova",.any)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/WiFISIntegration/services/Cites.asmx";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "Cites";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Cites";

}
