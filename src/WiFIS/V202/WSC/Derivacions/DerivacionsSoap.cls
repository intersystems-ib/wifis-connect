Class WiFIS.V202.WSC.Derivacions.DerivacionsSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("ConfirmarAccio","AplicacioConfirmacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/ConfirmarAccio",.any)
}

Method DemanarAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioPeticioAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarAddicional","DerivacioPeticioAddicional").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/DemanarAddicional",.any)
}

Method DemanarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioPeticioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarCancelacio","DerivacioPeticioCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/DemanarCancelacio",.any)
}

Method DemanarModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioPeticioModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarModificacio","DerivacioPeticioModificacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/DemanarModificacio",.any)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("DemanarNova","DerivacioPeticioNova").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/DemanarNova",.any)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarCancelacio","DerivacioNotificacioCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/NotificarCancelacio",.any)
}

Method NotificarFinalitzacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioNotificacioFinalitzacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarFinalitzacio","DerivacioNotificacioFinalitzacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/NotificarFinalitzacio",.any)
}

Method NotificarModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioNotificacioModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarModificacio","DerivacioNotificacioModificacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/NotificarModificacio",.any)
}

Method NotificarResultats(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioNotificacioResultatsResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("NotificarResultats","DerivacioNotificacioResultats").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/NotificarResultats",.any)
}

Method RespondreAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioRespostaAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreAddicional","DerivacioRespostaAddicional").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/RespondreAddicional",.any)
}

Method RespondreCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioRespostaCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreCancelacio","DerivacioRespostaCancelacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/RespondreCancelacio",.any)
}

Method RespondreModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioRespostaModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreModificacio","DerivacioRespostaModificacio").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/RespondreModificacio",.any)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V202.WSC.s1.WSResposta(XMLNAME="DerivacioRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("RespondreNova","DerivacioRespostaNova").Invoke($this,"http://pdm.isalut.gencat.net/Derivacions/RespondreNova",.any)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost/WiFISIntegration/services/Derivacions.asmx";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://tempuri.org/";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "Derivacions";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "http://pdm.isalut.gencat.net/Derivacions";

}
