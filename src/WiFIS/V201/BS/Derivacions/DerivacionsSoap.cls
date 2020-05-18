Class WiFIS.V201.BS.Derivacions.DerivacionsSoap Extends WiFIS.V201.BS.Service [ ProcedureBlock ]
{

/// Location and Revision of this file in Perforce (Auto-updating)
Parameter SrcVer = "$Id: //custom_ccrs/_common/tools/Iberia/WiFIS/latest/cls/WiFIS/V201/BS/Derivacions/DerivacionsSoap.xml#3 $";

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

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Method ConfirmarAccio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="AplicacioConfirmacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/ConfirmarAccio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = AplicacioConfirmacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method DemanarAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioPeticioAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/DemanarAddicional", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioPeticioAddicionalResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method DemanarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioPeticioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/DemanarCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioPeticioCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method DemanarModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioPeticioModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/DemanarModificacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioPeticioModificacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method DemanarNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioPeticioNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/DemanarNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioPeticioNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method NotificarCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioNotificacioCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/NotificarCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioNotificacioCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method NotificarFinalitzacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioNotificacioFinalitzacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/NotificarFinalitzacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioNotificacioFinalitzacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method NotificarModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioNotificacioModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/NotificarModificacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioNotificacioModificacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method NotificarResultats(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioNotificacioResultatsResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/NotificarResultats", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioNotificacioResultatsResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method RespondreAddicional(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioRespostaAddicionalResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/RespondreAddicional", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioRespostaAddicionalResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method RespondreCancelacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioRespostaCancelacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/RespondreCancelacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioRespostaCancelacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method RespondreModificacio(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioRespostaModificacioResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/RespondreModificacio", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioRespostaModificacioResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

Method RespondreNova(any As %XML.GlobalCharacterStream(XMLPROJECTION="any")) As WiFIS.V201.BS.s1.WSResposta(XMLNAME="DerivacioRespostaNovaResponseResult") [ Final, ProcedureBlock = 1, SoapAction = "http://pdm.isalut.gencat.net/Derivacions/RespondreNova", SoapBindingStyle = document, SoapBodyUse = literal, SoapMessageName = DerivacioRespostaNovaResponse, WebMethod ]
{
 quit ..Forward(any,"Derivacions",$$$CurrentMethod)
}

}
